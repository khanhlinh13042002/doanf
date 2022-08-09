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

/**
 * Servlet implementation class Process
 */
@WebServlet("/process")
public class Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Process() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		Cart cart = null;
		Object o = session.getAttribute("cart");
		if(o != null) {
			cart = (Cart)o;
		}else {
			cart = new Cart();
		}
		 
		String soluong = request.getParameter("amount").trim();
		String id = request.getParameter("id");
		int amount, productID;
		try {
			amount = Integer.parseInt(soluong);
			productID = Integer.parseInt(id);
			if((amount == -1) && (cart.getQuantityById(productID) <= 1)) {
				cart.removeItem(productID);
			}else {
				
				DAO dao = new DAO();
				Product product = dao.getProductByID(productID);
				double price = product.getProductPrice();
				Item t = new Item(product,amount,price);
				cart.addItem(t);
			}
		}catch(NumberFormatException E) {
//			amount = 1;
			System.out.println(E);
		}
		 
		List<Item> list = cart.getItems();
		session.setAttribute("cart", cart);
		session.setAttribute("size", list.size());
		request.getRequestDispatcher("views/web/shoppingCart.jsp").forward(request, response);
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		Cart cart = null;
		Object o = session.getAttribute("cart");
		if(o != null) {
			cart = (Cart)o;
		}else {
			cart = new Cart();
		}
		 
		int id= Integer.parseInt(request.getParameter("id"));
		cart.removeItem(id);
		
		List<Item> list = cart.getItems();
		session.setAttribute("cart", cart);
		session.setAttribute("size", list.size());
		request.getRequestDispatcher("views/web/shoppingCart.jsp").forward(request, response);
	}
}


