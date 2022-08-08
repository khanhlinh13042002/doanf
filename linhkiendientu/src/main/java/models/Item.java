package models;

public class Item {
	private Product product;
	private int quantity;
	private Double price;
	
	public Item() {
		
	}
	public Item(Product product, int quantity, Double price) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	

}
