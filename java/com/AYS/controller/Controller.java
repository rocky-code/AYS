package com.AYS.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.AYS.DAO.schemeDAO;
import com.AYS.entity.schemes;
/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }
/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String action = request.getParameter("action");
			if(action!=null) {
			System.out.println(action);
			String scheme = request.getParameter("scheme");
			if(scheme.equalsIgnoreCase("arogya lakshmi")) {
RequestDispatcher al = request.getRequestDispatcher("AL.html");
al.include(request, response);
			}
			else {
				String jsp = action+".jsp";
RequestDispatcher rd = request.getRequestDispatcher(jsp);
rd.include(request, response);
			}
			}else {
		
		Integer id=Integer.parseInt(request.getParameter("id"));
		schemeDAO sc = new schemeDAO();
		List<Object> scs = sc.List(id);
		request.setAttribute("scheme", scs);
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.include(request, response);
		
		}
	}

}
