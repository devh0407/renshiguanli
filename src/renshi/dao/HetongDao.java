package renshi.dao;

import java.util.List;

import renshi.model.Hetong;



public interface HetongDao  {
	
	
	
	public void insertBean(Hetong bean);
	
	public void deleteBean(Hetong bean);
	
	public void updateBean(Hetong bean);

	public Hetong selectBean(String where);
	
	public List<Hetong> selectBeanList(final int start, final int limit,final String where);
	
	public int selectBeanCount(final String where);
	
	
}
