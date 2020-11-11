package point.vender.web.dto;

import point.vender.web.Const;

public class ProductDto {

	private String date;
	private String code1;
	private String code2;
	private String category;
	private String name;
	private String option;
	private String standard;
	private String unit;
	private String barcode;
	private String incomingPrice;
	private String outgoingPrice;
	private String sellingPrice;
	
	private String imagePath;

	public ProductDto(){}
	
	public ProductDto(String date, String code1, String code2, String category, String name, String option,
			String standard, String unit, String barcode, String incomingPrice, String outgoingPrice,
			String sellingPrice, String imagePath) {
		super();
		this.date = date;
		this.code1 = code1;
		this.code2 = code2;
		this.category = category;
		this.name = name;
		this.option = option;
		this.standard = standard;
		this.unit = unit;
		this.barcode = barcode;
		this.incomingPrice = incomingPrice;
		this.outgoingPrice = outgoingPrice;
		this.sellingPrice = sellingPrice;
		this.imagePath = imagePath;
	}

	
	
	@Override
	public String toString() {
		String temp = Const.PRODUCT_TABLE + "[ date:"+this.date+" , " +
				Const.PRODUCT_CODE1+":"+this.code1+" , " +
				Const.PRODUCT_CODE2+":"+this.code2+" , " +
				Const.PRODUCT_CATEGORY+":"+this.category+" , " +
				Const.PRODUCT_NAME+":"+this.name+" , " +
				Const.PRODUCT_OPTION+":"+this.option+" , " +
				Const.PRODUCT_STANDARD+":"+this.standard+" , " +
				Const.PRODUCT_UNIT+":"+this.unit+" , " +
				Const.PRODUCT_BARCODE+":"+this.barcode+" , " +
				Const.PRODUCT_INCOMING_PRICE+":"+this.incomingPrice+" , " +
				Const.PRODUCT_OUTGOING_PRICE+":"+this.outgoingPrice+" , " +
				Const.PRODUCT_SELLING_PRICE+":"+this.sellingPrice+" , " +
				Const.PRODUCT_IMAGE_PATH+":"+this.imagePath+" , " +
				" ]";
		
		return temp;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCode1() {
		return code1;
	}

	public void setCode1(String code1) {
		this.code1 = code1;
	}

	public String getCode2() {
		return code2;
	}

	public void setCode2(String code2) {
		this.code2 = code2;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public String getIncomingPrice() {
		return incomingPrice;
	}

	public void setIncomingPrice(String incomingPrice) {
		this.incomingPrice = incomingPrice;
	}

	public String getOutgoingPrice() {
		return outgoingPrice;
	}

	public void setOutgoingPrice(String outgoingPrice) {
		this.outgoingPrice = outgoingPrice;
	}

	public String getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(String sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
}
