package Model;

import java.sql.Timestamp;

public class Flight {
    private int flightId;
    private int flightNumber;
    private int flight_Price;
    private Timestamp departureTime;
    private Timestamp arrivalTime;
    private String flight_Type;
    private String departureCountry;
    private String arrivalCountry;

    public int getFlightId() {
        return flightId;
    }

    public void setFlightId(int flightId) {
        this.flightId = flightId;
    }

    public int getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(int flightNumber) {
        this.flightNumber = flightNumber;
    }

    public int getFlight_Price() {
        return flight_Price;
    }

    public void setFlight_Price(int flight_Price) {
        this.flight_Price = flight_Price;
    }

    public Timestamp getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(Timestamp departureTime) {
        this.departureTime = departureTime;
    }

    public Timestamp getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(Timestamp arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public String getFlight_Type() {
        return flight_Type;
    }

    public void setFlight_Type(String flight_Type) {
        this.flight_Type = flight_Type;
    }

    public String getDepartureCountry() {
        return departureCountry;
    }

    public void setDepartureCountry(String departureCountry) {
        this.departureCountry = departureCountry;
    }

    public String getArrivalCountry() {
        return arrivalCountry;
    }

    public void setArrivalCountry(String arrivalCountry) {
        this.arrivalCountry = arrivalCountry;
    }
}
