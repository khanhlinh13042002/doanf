package models;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<Item> items;

	public Cart() {
		items = new ArrayList<>();
	}
	
	
	public List<Item> getItems() {
		return items;
	}


	public void setItems(List<Item> items) {
		this.items = items;
	}


	public Cart (List<Item> items) {
		this.items = items;
	}
	private Item getItemById(int productID) {
		for(Item i:items) {
			if(i.getProduct().getProductID()==productID) {
				return i;
			}
		}
		
		return null;
	}
	
	public int getQuantityById(int productID) {
		return getItemById(productID).getQuantity();
	}
	
	public void addItem(Item t) {
		//có ở cart rồi
		if(getItemById(t.getProduct().getProductID()) != null) {
			Item i = getItemById(t.getProduct().getProductID());
			i.setQuantity(i.getQuantity()+t.getQuantity());	
		}else {
			items.add(t);
		}
	}
	
	public void remove(int productID) {
		if(getItemById(productID)!=null) {
			items.remove(getItemById(productID));
		}
	}
	
	public float getTotalMoney(){
		float t = 0;
		for(Item i: items) {
			t+=	i.getQuantity()*i.getPrice();
		}
		return t;
	}


	
}
