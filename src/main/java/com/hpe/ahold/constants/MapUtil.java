package com.hpe.ahold.constants;

import java.text.DecimalFormat;

public class MapUtil {

	private static final double m2miles__ = 1609.344;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		double start_lat = 12.891787;
		double start_long = 77.667254;
		
		double dest_lat = 12.845578;
		double dest_long = 77.661975;
		
		System.out.println(getGeoDistance(start_lat, dest_lat, start_long, dest_long));
	
	}

	/**
	 * The method will provide distance between two GeoCoordinates 
	 * @param lat1 latitude of first point
	 * @param lat2 latitude of second point
	 * @param lon1 longitude of first point
	 * @param lon2 longitude of second point
	 * @return the distance between two Geo points in kilometers
	 */
	public static synchronized double getGeoDistance(double lat1, double lat2, double lon1,
	        double lon2) {

	    final int R = 6371; // Radius of the earth

	    Double latDistance = Math.toRadians(lat2 - lat1);
	    Double lonDistance = Math.toRadians(lon2 - lon1);
	    Double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
	            + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
	            * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);
	    Double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	    double distance = R * c *1000; // convert to meters

	    distance = Math.pow(distance, 2);

	    DecimalFormat df = new DecimalFormat("#.#");
	    
	    double sqrt = Math.sqrt(distance);
	    
		return Double.valueOf(df.format(sqrt/m2miles__));
	}
	
	@SuppressWarnings("unused")
	private static double getGeoDistance(double lat1, double lat2, double lon1,
	        double lon2, double el1, double el2) {

	    final int radius = 6371; // Radius of the earth

	    Double latDistance = Math.toRadians(lat2 - lat1);
	    Double lonDistance = Math.toRadians(lon2 - lon1);
	    Double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
	            + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
	            * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);
	    Double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	    double distance = radius * c * 1000; // convert to meters

	    double height = el1 - el2;

	    distance = Math.pow(distance, 2) + Math.pow(height, 2);

	    return Math.sqrt(distance)/m2miles__;
	}
	
}
