package repository;

import connect.BaseRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/addBuilding")
public class AddBuildingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("code");
        String status = request.getParameter("status");
        double area = Double.parseDouble(request.getParameter("area"));
        int floor = Integer.parseInt(request.getParameter("floor"));
        String type = request.getParameter("type");
        double rentPrice = Double.parseDouble(request.getParameter("rentPrice"));
        String description = request.getParameter("description");
        java.sql.Date startDate = java.sql.Date.valueOf(request.getParameter("startDate"));
        java.sql.Date endDate = java.sql.Date.valueOf(request.getParameter("endDate"));

        try (Connection conn = BaseRepository.getConnection()) {
            String sql = "INSERT INTO mat_bang (ma_mat_bang, trang_thai, dien_tich, tang, loai_mat_bang, gia_thue, mo_ta_chi_tiet, ngay_bat_dau, ngay_ket_thuc) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, code);
                stmt.setString(2, status);
                stmt.setDouble(3, area);
                stmt.setInt(4, floor);
                stmt.setString(5, type);
                stmt.setDouble(6, rentPrice);
                stmt.setString(7, description);
                stmt.setDate(8, startDate);
                stmt.setDate(9, endDate);

                stmt.executeUpdate();
                response.sendRedirect("successPage.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}