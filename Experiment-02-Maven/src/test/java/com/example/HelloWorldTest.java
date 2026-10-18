package com.example;

import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class HelloWorldTest {
    @Test
    public void testGreeting() {
        HelloWorld app = new HelloWorld();
        assertEquals("Hello, Maven DevOps Lab!", app.getGreeting());
    }
}
