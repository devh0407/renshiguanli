package renshi.dao;

import java.util.List;

import renshi.model.Kaoqin;



public interface KaoqinDao  {
	
	
	
	public void insertBean(Kaoqin bean);
	
	public void deleteBean(Kaoqin bean);
	
	public void updateBean(Kaoqin bean);

	public Kaoqin selectBean(String where);
	
	public List<Kaoqin> selectBeanList(final int start, final int limit,final String where);
	
	public int selectBeanCount(final String where);
	
	
}
