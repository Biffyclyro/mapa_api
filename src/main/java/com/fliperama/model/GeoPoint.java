package com.fliperama.model;

import lombok.Data;
import lombok.Value;

@Data
public class GeoPoint {
    private double lat;
    private double lng;

    public GeoPoint(double lat, double lng) {
        this.lat = lat;
        this.lng = lng;
    }
}
