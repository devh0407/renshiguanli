package renshi.dao;

import java.util.List;

import renshi.model.Jiaban;



public interface JiabanDao  {
	
	
	
	public void insertBean(Jiaban bean);
	
	public void deleteBean(Jiaban bean);
	
	public void updateBean(Jiaban bean);

	public Jiaban selectBean(String where);
	
	public List<Jiaban> selectBeanList(final int start, final int limit,final String where);
	
	public int selectBeanCount(final String where);
	
	
}
