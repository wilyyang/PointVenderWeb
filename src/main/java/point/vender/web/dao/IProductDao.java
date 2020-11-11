package point.vender.web.dao;

import java.util.List;
import java.util.Map;

import point.vender.web.dto.ProductDto;

public interface IProductDao {
	public void addProduct(Map<String, String[]> values);
	public void deleteProduct(String key_str);
	public void updateProduct(String key_str, Map<String, String[]> values);
	public ProductDto getProduct(String key_str);
	public List<ProductDto> listProduct();
	public List<ProductDto> searchProduct(String category, String keyword);
}
