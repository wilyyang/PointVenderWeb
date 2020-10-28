package point.vender.web;

import com.google.appengine.api.datastore.Entity;

import point.vender.web.dto.ProductDto;

public class Util {

	public static ProductDto getProduct(Entity en) {
		return new ProductDto((String)en.getProperty("key"),(String)en.getProperty(ProductDto.attrList[0]),(String)en.getProperty(ProductDto.attrList[1]),
				(String)en.getProperty(ProductDto.attrList[2]),(String)en.getProperty(ProductDto.attrList[3]),(String)en.getProperty(ProductDto.attrList[4]),
				(String)en.getProperty(ProductDto.attrList[5]),(String)en.getProperty(ProductDto.attrList[6]),(String)en.getProperty(ProductDto.attrList[7]),
				(String)en.getProperty(ProductDto.attrList[8]),(String)en.getProperty(ProductDto.attrList[9]), (String)en.getProperty(ProductDto.attrList[10]));
	}
}
