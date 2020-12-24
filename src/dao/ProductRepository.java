package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product phone = new Product("P1234", "Galaxy Note20 Ultra 5G", 1450000);
		phone.setDescription("6.9-inch, Infinity O Display, " + "퀄컴 스냅드래곤 865+ SM8250 Platform, 후면 카메라 1억 800만 화소");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Samsung");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png"); // ch07

		Product notebook = new Product("P1235", "MacBook Air 13형 레티나 2018", 1100000);
		notebook.setDescription("13인치, CPU : 코어i5, SSD : 256GB, 램 : 8GB");
		notebook.setCategory("notebook");
		notebook.setManufacturer("Apple");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png"); // ch07

		Product tablet = new Product("P1236", "Galaxy Tab S3", 500000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png"); // ch07

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
		

	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}
