package point.vender.web.dao;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.slf4j.Logger;

import com.google.api.client.googleapis.util.Utils;
import com.google.appengine.api.datastore.DatastoreFailureException;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.EntityNotFoundException;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.SortDirection;
import com.google.appengine.api.datastore.Query.FilterPredicate;

import point.vender.web.Const;
import point.vender.web.dto.ProductDto;

public class ProductDao implements IProductDao{

	@Override
	public void addProduct(Map<String, String[]> values) {
		if(!values.containsKey(Const.PRODUCT_NAME) || values.get(Const.PRODUCT_NAME).length<1) {
			return;
		}
		
		String date = LocalDateTime.now().toString();		
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Entity post = new Entity(Const.PRODUCT_TABLE, date+values.get(Const.PRODUCT_NAME)[0]);
	
		post.setProperty(Const.PRODUCT_DATE, date);
		for(String attribute : Const.PRODUCT_ATTRIBUTE_LIST) {
			if(values.containsKey(attribute) && values.get(attribute).length>0) {
				post.setProperty(attribute, values.get(attribute)[0]);
			}else {
				post.setProperty(attribute, "");
			}
		}

		try {
			datastore.put(post);
		} catch (DatastoreFailureException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void deleteProduct(String key_str) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Key key = KeyFactory.createKey(Const.PRODUCT_TABLE, key_str);
		datastore.delete(key);
	}
	
	@Override
	public void updateProduct(String key_str, Map<String, String[]> values) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Key key = KeyFactory.createKey(Const.PRODUCT_TABLE, key_str);

		try {
			Entity product = datastore.get(key);
			for(String attribute : Const.PRODUCT_ATTRIBUTE_LIST) {
				if(values.containsKey(attribute) && values.get(attribute).length>0) {
					product.setProperty(attribute, values.get(attribute)[0]);
				}
			}
			datastore.put(product);
			
		} catch (EntityNotFoundException | DatastoreFailureException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public ProductDto getProduct(String key_str) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Key key = KeyFactory.createKey(Const.PRODUCT_TABLE, key_str);

		ProductDto product = null;
		try {
			Entity entity = datastore.get(key);
			if(entity!=null)
				product = entityToProduct(entity);
		} catch (EntityNotFoundException | DatastoreFailureException e) {
			e.printStackTrace();
		}
		return product;
	}
	
	@Override
	public List<ProductDto> listProduct() {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Query q = new Query("Product").addSort("name", SortDirection.DESCENDING);
		PreparedQuery pq = datastore.prepare(q);
		List<Entity> enList = pq.asList(FetchOptions.Builder.withDefaults());
		
		List<ProductDto> result = new ArrayList<ProductDto>();
		for(Entity en : enList) {
			result.add(entityToProduct(en));
		}
		return result;
	}
	
	@Override
	public List<ProductDto> searchProduct(String category, String keyword){
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Filter propertyFilter = new FilterPredicate(category, FilterOperator.EQUAL, keyword);
		Query q = new Query("Product").setFilter(propertyFilter);
		PreparedQuery pq = datastore.prepare(q);
		
		List<Entity> enList = pq.asList(FetchOptions.Builder.withDefaults());
		
		List<ProductDto> result = new ArrayList<ProductDto>();
		for(Entity en : enList) {
			result.add(entityToProduct(en));
		}
		return result;
	}

	private ProductDto entityToProduct(Entity entity) {
		return new ProductDto((String)entity.getProperty(Const.PRODUCT_DATE),
				(String)entity.getProperty(Const.PRODUCT_CODE1),(String)entity.getProperty(Const.PRODUCT_CODE2),
				(String)entity.getProperty(Const.PRODUCT_CATEGORY),(String)entity.getProperty(Const.PRODUCT_NAME),(String)entity.getProperty(Const.PRODUCT_OPTION),
				(String)entity.getProperty(Const.PRODUCT_STANDARD),(String)entity.getProperty(Const.PRODUCT_UNIT),(String)entity.getProperty(Const.PRODUCT_BARCODE),
				(String)entity.getProperty(Const.PRODUCT_INCOMING_PRICE),(String)entity.getProperty(Const.PRODUCT_OUTGOING_PRICE), (String)entity.getProperty(Const.PRODUCT_SELLING_PRICE),
				(String)entity.getProperty(Const.PRODUCT_IMAGE_PATH));
	}
}
