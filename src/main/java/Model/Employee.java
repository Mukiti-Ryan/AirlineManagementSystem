package Model;

public class Employee {
    private int employeeId;
    private int brand_Id;
    private int employeeRole;
    private String firstName;
    private String lastName;

    public int getBrand_Id() {
        return brand_Id;
    }

    public void setBrand_Id(int brand_Id) {
        this.brand_Id = brand_Id;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public int getEmployeeRole() {
        return employeeRole;
    }

    public void setEmployeeRole(int employeeRole) {
        this.employeeRole = employeeRole;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
