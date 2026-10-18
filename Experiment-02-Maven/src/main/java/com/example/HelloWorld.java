package com.example;

public class HelloWorld {
    public String getGreeting() {
        return "Hello, Maven DevOps Lab!";
    }

    public static void main(String[] args) {
        HelloWorld app = new HelloWorld();
        System.out.println(app.getGreeting());
    }
}
