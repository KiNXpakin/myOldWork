package com.example.demo2.servlets;

import com.example.demo2.entities.Office;
import com.example.demo2.repositories.OfficeRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "OfficeCityCountry", value = "/office-city-country")

public class OfficeCityCountry extends HttpServlet {
    OfficeRepository officeService = new OfficeRepository();

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        List<Office> offices;

        if (search != null && !search.isEmpty()) {
            offices = officeService.findByCityOrCountry(search);
        } else {
            offices = officeService.findAll();
        }

        request.setAttribute("offices", offices);

        request.getRequestDispatcher("office-city-country.jsp").forward(request, response);
    }
}