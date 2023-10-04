package com.staff;

public class Staff {
    private int id; // id of the staff
    private String name; // name of the staff
    private String email; // email address of the staff
    private int workhours; // number of work hours for the staff
    private double basicsalary; // basic salary of the staff
    private double tax; // tax amount for the staff
    private double salary; // final salary of the staff

    // Constructor to initialize the Staff object
    public Staff(int id, String name, String email, int workhours, double basicsalary, double tax, double salary) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.workhours = workhours;
        this.basicsalary = basicsalary;
        this.tax = tax;
        this.salary = salary;
    }

    // Getter method for retrieving the id of the staff
    public int getId() {
        return id;
    }

    // Getter method for retrieving the name of the staff
    public String getName() {
        return name;
    }

    // Getter method for retrieving the email of the staff
    public String getEmail() {
        return email;
    }

    // Getter method for retrieving the work hours of the staff
    public int getWorkhours() {
        return workhours;
    }

    // Getter method for retrieving the basic salary of the staff
    public double getBasicsalary() {
        return basicsalary;
    }

    // Getter method for retrieving the tax amount for the staff
    public double getTax() {
        return tax;
    }

    // Getter method for retrieving the final salary of the staff
    public double getSalary() {
        return salary;
    }
}
