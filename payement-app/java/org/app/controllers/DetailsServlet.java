package org.app.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.app.modal.LogM;
import org.app.services.DetailsServ;

/**
 * Servlet implementation class DetailsServlet
 */
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		LogM lml=null;
		lml=(LogM)session.getAttribute("userdetails");
		String ut=lml.getId();
		DetailsServ ds=new DetailsServ();
	
		String id=null;
		String name=null;
	    double balance=0;
	    ArrayList a = new ArrayList();
	   

	    
		try {
			ds.fData(ut,a);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		id=(String)a.get(0);
		name=(String)a.get(1);
		balance=(Double)a.get(2);
		
		String destination="det.jsp";
		RequestDispatcher rp=request.getRequestDispatcher(destination);
		request.setAttribute("id",id);
		request.setAttribute("name",name);
		request.setAttribute("balance",balance);
		
		rp.forward(request,response);
	}

}
