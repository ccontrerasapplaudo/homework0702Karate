package com.example.homework0702karate.step01.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class KarateTests {

    @Test
    public Karate getRoom() {
        return Karate.run("getRoom","postRetrieveToken","getRoom1N","postBooking1Room").relativeTo(getClass());
    }

//    @Test
//    public Karate postRetrieveToken() {
//        return Karate.run("postRetrieveToken").relativeTo(getClass());
//    }
//
//    @Test
//    public Karate getRoom1N() {
//        return Karate.run("getRoom1N").relativeTo(getClass());
//    }
//
//    @Test
//    public Karate postBooking1Room.feature() {
//        return Karate.run("postBooking1Room.feature").relativeTo(getClass());
//    }


}
