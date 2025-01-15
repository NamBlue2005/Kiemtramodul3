package model;

import java.sql.Date;

public class Building {
    private int id;
    private String code;
    private String status;
    private double area;
    private int floor;
    private String type;
    private double rentPrice;
    private String description;
    private Date startDate;
    private Date endDate;

    // Constructor
    public Building(int id, String code, String status, double area, int floor, String type, double rentPrice,
                    String description, Date startDate, Date endDate) {
        this.id = id;
        this.code = code;
        this.status = status;
        this.area = area;
        this.floor = floor;
        this.type = type;
        this.rentPrice = rentPrice;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getCode() { return code; }
    public void setCode(String code) { this.code = code; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public double getArea() { return area; }
    public void setArea(double area) { this.area = area; }

    public int getFloor() { return floor; }
    public void setFloor(int floor) { this.floor = floor; }

    public String getType() { return type; }
    public void setType(String type) { this.type = type; }

    public double getRentPrice() { return rentPrice; }
    public void setRentPrice(double rentPrice) { this.rentPrice = rentPrice; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public Date getStartDate() { return startDate; }
    public void setStartDate(Date startDate) { this.startDate = startDate; }

    public Date getEndDate() { return endDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate; }
}