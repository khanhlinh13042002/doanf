package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import dao.OrderDAO;
import models.Cart;
import models.Product;
import models.User;

/**
 * Servlet implementation class Checkout
 */
@WebServlet("/checkout")
public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		DAO d = new DAO();
		OrderDAO dao = new OrderDAO();
		List<Product> list = d.getAllProduct();
		Cookie[] arr = request.getCookies();
		String txt = "";
		if (arr != null) {
			for (Cookie o : arr) {
				if (o.getName().equals("cart")) {
					txt += o.getValue();
					
				}
			}
		}

		Cart cart = new Cart(txt, list);
		HttpSession session= request.getSession()	;
		User a= (User)session.getAttribute("user");
		if (a==null) {
			response.sendRedirect("dang-nhap");
		}else {			
			dao.addOrder(cart, a);
			Cookie c = new Cookie("cart","");
			c.setMaxAge(0);
			response.addCookie(c);
			request.getRequestDispatcher("showCart").forward(request, response);
		}
	}

}
