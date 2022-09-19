package com.example.homework0702karate.step01.getRequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class KarateTests {

    @Test
    public Karate runGetTest() {
        return Karate.run("getRequest","postRequest").relativeTo(getClass());
    }

    @Test
    public Karate runPostTest() {
        return Karate.run("postRequest").relativeTo(getClass());
    }



}
