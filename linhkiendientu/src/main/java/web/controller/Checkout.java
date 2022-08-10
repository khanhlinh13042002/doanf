package web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import models.Cart;
import models.Item;
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
		HttpSession session = request.getSession(true);
		Cart cart = null;
		Object o = session.getAttribute("cart");
		if(o != null) {
			cart = (Cart)o;
		}else {
			cart = new Cart();
		}
		 
		String soluong = request.getParameter("amount");
		String id = request.getParameter("productID");
		int amount, productID;
		try {		
			amount = Integer.parseInt(soluong);
			productID = Integer.parseInt(id);
			DAO dao = new DAO();
			Product product = dao.getProductByID(productID);
			double price = product.getProductPrice();
			Item t = new Item(product,amount,price);
			cart.addItem(t);
		}catch(NumberFormatException E) {
			amount = 1;
			
		}
		 
		List<Item> list = cart.getItems();
		session.setAttribute("cart", cart);
		request.getRequestDispatcher("views/web/checkOut.jsp").forward(request, response);
		
	
	}

}
