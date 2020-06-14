package com.AYS.DAO;
import java.util.*;
public interface aysInterface {
	
	public Boolean save(Object obj);
	public Boolean Update(Object obj);
	public Boolean Delete(Object obj);
	public Object get(Integer id);
	public Object get(String scname);
	public List<Object> List();

}
