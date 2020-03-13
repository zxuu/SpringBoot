package net.sppan.base.entity;

public class Track {
    private String loc_time;
    private String entity_name;
    private String latitude;
    private String longitude;

    private double speed;
    private String coord_type_input;
    private String person_name;
    private String person_phone;

    public Track() {
    }

    public Track(String loc_time, String entity_name, String latitude, String longitude, double speed, String coord_type_input, String person_name, String person_phone) {
        this.loc_time = loc_time;
        this.entity_name = entity_name;
        this.latitude = latitude;
        this.longitude = longitude;
        this.speed = speed;
        this.coord_type_input = coord_type_input;
        this.person_name = person_name;
        this.person_phone = person_phone;
    }

    public String getLoc_time() {
        return loc_time;
    }

    public void setLoc_time(String loc_time) {
        this.loc_time = loc_time;
    }

    public String getEntity_name() {
        return entity_name;
    }

    public void setEntity_name(String entity_name) {
        this.entity_name = entity_name;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public double getSpeed() {
        return speed;
    }

    public void setSpeed(double speed) {
        this.speed = speed;
    }

    public String getCoor_type_input() {
        return coord_type_input;
    }

    public void setCoor_type_input(String coor_type_input) {
        this.coord_type_input = coor_type_input;
    }

    public String getPerson_name() {
        return person_name;
    }

    public void setPerson_name(String person_name) {
        this.person_name = person_name;
    }

    public String getPerson_phone() {
        return person_phone;
    }

    public void setPerson_phone(String person_phone) {
        this.person_phone = person_phone;
    }
}
