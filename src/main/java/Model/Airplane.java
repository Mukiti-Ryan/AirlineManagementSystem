package Model;

import java.sql.Timestamp;

public class Airplane {
    private int airplaneId;
    private int registrationNumber;
    private int modelNumber;
    private int capacity;
    private boolean active;
    private Timestamp lastFlown;

    public Timestamp getLastFlown() {
        return lastFlown;
    }

    public void setLastFlown(Timestamp lastFlown) {
        this.lastFlown = lastFlown;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public int getAirplaneId() {
        return airplaneId;
    }

    public void setAirplaneId(int airplaneId) {
        this.airplaneId = airplaneId;
    }

    public int getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(int registrationNumber) {
        this.registrationNumber = registrationNumber;
    }

    public int getModelNumber() {
        return modelNumber;
    }

    public void setModelNumber(int modelNumber) {
        this.modelNumber = modelNumber;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public int flightCapacity(){

        return 0;
    }
}
