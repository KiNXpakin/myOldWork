package com.example.demo2.servlets;

import com.example.demo2.entities.Office;
import com.example.demo2.repositories.OfficeRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "OfficeUpdateServlet", value = "/OfficeUpdateServlet")

public class OfficeUpdateServlet extends HttpServlet {
    OfficeRepository office = new OfficeRepository();
    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Office newOffice = new Office();
        String officeCode = request.getParameter("officeCode");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String phone = request.getParameter("phone");
        String addressLine1 = request.getParameter("addressLine1");
        String postalCode = request.getParameter("postalCode");
        String territory = request.getParameter("territory");

        newOffice.setOfficeCode(officeCode);
        newOffice.setCity(city);
        newOffice.setCountry(country);
        newOffice.setPhone(phone);
        newOffice.setAddressLine1(addressLine1);
        newOffice.setPostalCode(postalCode);
        newOffice.setTerritory(territory);

        boolean success = office.update(newOffice);

        if (success) {
            response.sendRedirect("office-list");
        } else {
            response.sendRedirect("error.jsp");
        }


    }

}