package product;

public class ProductDTO {
	
	private String pId;
	private String name;
	private String ex;
	private String price;

	
	public ProductDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ProductDTO(String pId, String name, String explanation, String price, String sizeS, String sizeM,
			String sizeL, String sizeXL, String category) {
		super();
		this.pId = pId;
		this.name = name;
		this.price = price;
	
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEx() {
		return ex;
	}

	public void setEx(String ex) {
		this.ex = ex;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}



	

}
