package Model;

import java.sql.Timestamp;

public class Airport {
    private int airportId;
    private String nameOfAirport;
    private boolean active;
    private Timestamp lastUpdate;

    public int getAirportId() {
        return airportId;
    }

    public void setAirportId(int airportId) {
        this.airportId = airportId;
    }

    public String getNameOfAirport() {
        return nameOfAirport;
    }

    public void setNameOfAirport(String nameOfAirport) {
        this.nameOfAirport = nameOfAirport;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Timestamp getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(Timestamp lastUpdate) {
        this.lastUpdate = lastUpdate;
    }
}
