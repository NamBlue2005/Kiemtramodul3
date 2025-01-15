package repository;

import model.Building;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BuildingRepository {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/quanlymatbang";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Namblue2005@";

    public static List<Building> getAllBuildings() {
        List<Building> buildings = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             Statement stmt = connection.createStatement()) {
            String sql = "SELECT * FROM mat_bang";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                Building building = new Building(
                        rs.getInt("id"),
                        rs.getString("ma_mat_bang"),
                        rs.getString("trang_thai"),
                        rs.getDouble("dien_tich"),
                        rs.getInt("tang"),
                        rs.getString("loai_mat_bang"),
                        rs.getDouble("gia_thue"),
                        rs.getString("mo_ta_chi_tiet"),
                        rs.getDate("ngay_bat_dau"),
                        rs.getDate("ngay_ket_thuc")
                );
                buildings.add(building);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return buildings;
    }

    public static void addBuilding(Building building) {
        String sql = "INSERT INTO mat_bang (ma_mat_bang, trang_thai, dien_tich, tang, loai_mat_bang, gia_thue, mo_ta_chi_tiet, ngay_bat_dau, ngay_ket_thuc) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, building.getCode());
            stmt.setString(2, building.getStatus());
            stmt.setDouble(3, building.getArea());
            stmt.setInt(4, building.getFloor());
            stmt.setString(5, building.getType());
            stmt.setDouble(6, building.getRentPrice());
            stmt.setString(7, building.getDescription());
            stmt.setDate(8, building.getStartDate());
            stmt.setDate(9, building.getEndDate());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();  // Log exception
        }
    }

    public static void updateBuilding(Building building) {
        String sql = "UPDATE mat_bang SET ma_mat_bang = ?, trang_thai = ?, dien_tich = ?, tang = ?, loai_mat_bang = ?, gia_thue = ?, mo_ta_chi_tiet = ?, ngay_bat_dau = ?, ngay_ket_thuc = ? WHERE id = ?";
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, building.getCode());
            stmt.setString(2, building.getStatus());
            stmt.setDouble(3, building.getArea());
            stmt.setInt(4, building.getFloor());
            stmt.setString(5, building.getType());
            stmt.setDouble(6, building.getRentPrice());
            stmt.setString(7, building.getDescription());
            stmt.setDate(8, building.getStartDate());
            stmt.setDate(9, building.getEndDate());
            stmt.setInt(10, building.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();  // Log exception
        }
    }

    public static void deleteBuilding(int id) {
        String sql = "DELETE FROM mat_bang WHERE id = ?";
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();  // Log exception
        }
    }
}