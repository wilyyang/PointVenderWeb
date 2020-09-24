package point.vender.web.dto;

import java.util.ArrayList;

public class ProductDto {

	private String key;
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
	public static final String[] attrList = {"code1","code2","category","name","option","standard","unit","barcode","incomingPrice","outgoingPrice","sellingPrice"};
	
	public ProductDto(){}
	
	public ProductDto(String key, String code1, String code2, String category, String name, String option,
			String standard, String unit, String barcode, String incomingPrice, String outgoingPrice,
			String sellingPrice) {
		super();
		this.key = key;
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
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
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
}
