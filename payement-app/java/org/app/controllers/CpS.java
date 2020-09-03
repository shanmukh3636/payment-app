package org.app.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.app.modal.LogM;
import org.app.services.CpServ;

/**
 * Servlet implementation class CpS
 */
public class CpS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CpS() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double toobal=0,forex;
		forex=0;
		String toid=request.getParameter("toid");
		double amount=Double.parseDouble(request.getParameter("amount"));
		String tcurrency=request.getParameter("tcurrency");
		HttpSession session=request.getSession();
		LogM lm=null;
		lm=(LogM)session.getAttribute("userdetails");
		 String fromtable=lm.getId();
		System.out.println(tcurrency);
		System.out.println(fromtable);
		CpServ dps=new CpServ();
		boolean result=false;
		try {
			result=dps.pData(toid,amount,tcurrency,fromtable,toobal,forex);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(result==true)
		{
			String destination="Scpr.jsp";
			RequestDispatcher r1=request.getRequestDispatcher(destination);
			request.setAttribute("toid",toid);
			request.setAttribute("am",amount);
			request.setAttribute("tc",tcurrency);
			r1.forward(request, response);
			
		}
		if(result==false)
		{ 
			String destination="Fcpr.jsp";
			RequestDispatcher r2=request.getRequestDispatcher(destination);
			r2.forward(request, response);
		}
	}
	
}


