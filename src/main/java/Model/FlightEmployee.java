package Model;

import java.sql.Timestamp;

public class FlightEmployee {
    private int flight_Id;
    private int employee_Id;
    private Timestamp lastUpdate;

    public int getFlight_Id() {
        return flight_Id;
    }

    public void setFlight_Id(int flight_Id) {
        this.flight_Id = flight_Id;
    }

    public int getEmployee_Id() {
        return employee_Id;
    }

    public void setEmployee_Id(int employee_Id) {
        this.employee_Id = employee_Id;
    }

    public Timestamp getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(Timestamp lastUpdate) {
        this.lastUpdate = lastUpdate;
    }
}
