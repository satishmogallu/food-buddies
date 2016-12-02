package com.hpe.ahold.tests;

import org.junit.Test;

import com.hpe.ahold.constants.MapUtil;

import junit.framework.TestCase;

public class MapTests extends TestCase {

	@Test
    public void GeoTest() {
		
            MapUtil mu = new MapUtil();

            double start_lat = 12.891787;
    		double start_long = 77.667254;
    		
    		double dest_lat = 12.845578;
    		double dest_long = 77.661975;
    		
    		System.out.println(mu.getGeoDistance(start_lat, dest_lat, start_long, dest_long));
    		
            // assert statements
            /*assertEquals("10 x 0 must be 0", 0, tester.multiply(10, 0));
            assertEquals("0 x 10 must be 0", 0, tester.multiply(0, 10));
            assertEquals("0 x 0 must be 0", 0, tester.multiply(0, 0));*/
    }
}
