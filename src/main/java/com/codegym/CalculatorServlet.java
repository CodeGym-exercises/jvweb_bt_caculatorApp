package com.codegym;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.text.NumberFormat;

public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        NumberFormat formatter = new DecimalFormat("0.00");
        double firstNumber = Double.parseDouble(request.getParameter("firstnumber"));
        double secondNumber = Double.parseDouble(request.getParameter("secondnumber"));
        String operator = request.getParameter("operator");
        String result = "";
        switch (operator){
            case "+":
                result = formatter.format(firstNumber+secondNumber);
                break;
            case "-":
                result = formatter.format(firstNumber-secondNumber);
                break;
            case "*":
                result = formatter.format(firstNumber*secondNumber);
                break;
            case "/":
                if(secondNumber!=0)
                    result = formatter.format(firstNumber+secondNumber);
                else
                    throw new RuntimeException("can't divise by zero");
                break;
        }

        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<!doctype html>\n" +
                "<html lang=\"en\">\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <meta name=\"viewport\"\n" +
                "          content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\">\n" +
                "    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n" +
                "    <title>Document</title>\n" +
                "</head>\n" +
                "<body>\n" +
                "    <h1>Result</h1>\n" +
                "    \n" + firstNumber +" "+ operator+" " + secondNumber + " = " + result +
                "</body>\n" +
                "</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }
}

