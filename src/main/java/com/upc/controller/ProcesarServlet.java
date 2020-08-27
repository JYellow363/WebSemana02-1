package com.upc.controller;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.upc.model.Persona;

@WebServlet("/ProcesarServlet")
public class ProcesarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("txtnombre");
		String edad = request.getParameter("txtedad");
		if( nombre.equals("") || edad.equals("") ) {
			request.getRequestDispatcher("errorcampos.jsp").forward(request, response);
		}
		else {
			try {
				@SuppressWarnings("unused")
				int ed = 0;
				ed = Integer.parseInt(edad);
			}
			catch(NumberFormatException ex) {
				request.getRequestDispatcher("errornumeros.jsp").forward(request, response);
			}
			
			Persona person = new Persona(nombre, edad);
			request.getSession().setAttribute("persona1", person);
			request.getRequestDispatcher("exito.jsp").forward(request, response);
		
		}
	}
}

