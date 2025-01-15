package servlet;

import model.Building;
import repository.BuildingRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.sql.Date;

@WebServlet(name = "BuildingServlet", urlPatterns = {"/buildings", "/addBuilding", "/editBuilding", "/deleteBuilding"})
public class BuildingServlet extends HttpServlet {
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Building> buildingList = BuildingRepository.getAllBuildings();
        buildingList.sort((b1, b2) -> Double.compare(b1.getArea(), b2.getArea()));
        request.setAttribute("buildings", buildingList);
        request.getRequestDispatcher("building-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        request.setCharacterEncoding("UTF-8");

        switch (action) {
            case "/addBuilding":
                addBuilding(request, response);
                break;
            case "/editBuilding":
                editBuilding(request, response);
                break;
            case "/deleteBuilding":
                deleteBuilding(request, response);
                break;
            default:
                response.sendRedirect("buildings");
                break;
        }
    }

    private void addBuilding(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            Building building = extractBuildingFromRequest(request);

            if (building.getArea() < 20 || building.getRentPrice() <= 1000000) {
                response.getWriter().println("Invalid area or rent price.");
                return;
            }

            if (!isValidDate(building.getStartDate()) || !isValidDate(building.getEndDate())) {
                response.getWriter().println("Invalid date format. Use yyyy-MM-dd.");
                return;
            }

            BuildingRepository.addBuilding(building);
            response.sendRedirect("buildings");
        } catch (Exception e) {
            response.getWriter().println("Error adding building.");
            e.printStackTrace();
        }
    }

    private void editBuilding(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Building building = extractBuildingFromRequest(request);
            building.setId(id);  // Update with the correct ID

            // Validate inputs
            if (building.getArea() < 20 || building.getRentPrice() <= 1000000) {
                response.getWriter().println("Invalid area or rent price.");
                return;
            }

            if (!isValidDate(building.getStartDate()) || !isValidDate(building.getEndDate())) {
                response.getWriter().println("Invalid date format. Use yyyy-MM-dd.");
                return;
            }

            BuildingRepository.updateBuilding(building);
            response.sendRedirect("buildings");
        } catch (Exception e) {
            response.getWriter().println("Error editing building.");
            e.printStackTrace();  // Optional: Log the exception for debugging purposes
        }
    }

    private void deleteBuilding(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            BuildingRepository.deleteBuilding(id);
            response.sendRedirect("buildings");
        } catch (Exception e) {
            response.getWriter().println("Error deleting building.");
            e.printStackTrace();
        }
    }

    private boolean isValidDate(Date date) {
        try {
            dateFormat.setLenient(false);
            dateFormat.parse(date.toString());
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private Building extractBuildingFromRequest(HttpServletRequest request) {
        String code = request.getParameter("code");
        String status = request.getParameter("status");
        double area = Double.parseDouble(request.getParameter("area"));
        int floor = Integer.parseInt(request.getParameter("floor"));
        String type = request.getParameter("type");
        double rentPrice = Double.parseDouble(request.getParameter("rentPrice"));
        String description = request.getParameter("description");
        Date startDate = Date.valueOf(request.getParameter("startDate"));
        Date endDate = Date.valueOf(request.getParameter("endDate"));

        return new Building(0, code, status, area, floor, type, rentPrice, description, startDate, endDate);
    }
}