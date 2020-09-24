package point.vender.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.google.appengine.api.datastore.Entity;

public interface IProductDao {
	public void addDao(String key, Map<String, String[]> values);
	public void writeDao(String key, Map<String, String[]> values);
	public List<Entity> listDao();
	public Entity getDao(String key);
	public void deleteDao(String key);
}
