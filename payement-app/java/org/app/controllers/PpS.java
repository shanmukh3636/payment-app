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
import org.app.modal.PpM;
import org.app.services.PpServ;



/**
 * Servlet implementation class PpS
 */
public class PpS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PpS() {
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
		PpServ pps=new PpServ();
		ArrayList<PpM> arr=new ArrayList<PpM>();
		try {
			pps.fData(ut,arr);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String destination="prevp.jsp";
		RequestDispatcher rp=request.getRequestDispatcher(destination);
		request.setAttribute("arr", arr);
		rp.forward(request,response);
		}
		
		
	}


