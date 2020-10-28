package point.vender.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.google.appengine.api.datastore.Query.SortDirection;

import point.vender.web.dto.ProductDto;

public class ProductDao implements IProductDao{

	@Override
	public void addDao(String key,  Map<String, String[]> values) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Entity post = new Entity("Product", key);
		
		for(String attribute : ProductDto.attrList) {
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
	public List<Entity> listDao() {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Query q = new Query("Product").addSort("name", SortDirection.DESCENDING);
		PreparedQuery pq = datastore.prepare(q);
		return pq.asList(FetchOptions.Builder.withDefaults());
	}
	
	@Override
	public void writeDao(String key, Map<String, String[]> values) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Entity post = new Entity("Product", key);

		for(String attribute : ProductDto.attrList) {
			if(values.containsKey(attribute) && values.get(attribute).length>0) {
				post.setProperty(attribute, values.get(attribute)[0]);
			}
		}

		try {
			datastore.put(post);
		} catch (DatastoreFailureException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Entity getDao(String key) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Key k1 = KeyFactory.createKey("Product", key);
		Entity product = null;
		try {
			product = datastore.get(k1);
		} catch (EntityNotFoundException e) {
			e.printStackTrace();
		}
		return product;
	}



	@Override
	public void deleteDao(String key) {
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Key k1 = KeyFactory.createKey("Product", key);
		datastore.delete(k1);
	}
}
