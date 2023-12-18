package com.example.demo2.servlets;

import com.example.demo2.repositories.OfficeRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "OfficeServlet", value = "/office-list")

public class OfficeServlet extends HttpServlet {

    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OfficeRepository officeRepository = new OfficeRepository();
        String deleteOfficeCode = request.getParameter("deleteOfficeCode");

        if (deleteOfficeCode != null) {
            officeRepository.delete(deleteOfficeCode);
            response.sendRedirect("office-list");
            return;
        }

        request.setAttribute("offices", officeRepository.findAll());
        String officeCode = request.getParameter("officeCode");
        if (officeCode != null) {
            request.setAttribute("selectedOffice", officeRepository.find(officeCode));
        }
        getServletContext().getRequestDispatcher("/office-list.jsp").forward(request, response);
    }
}