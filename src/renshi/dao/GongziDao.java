package renshi.dao;

import java.util.List;

import renshi.model.Gongzi;



public interface GongziDao  {
	
	
	
	public void insertBean(Gongzi bean);
	
	public void deleteBean(Gongzi bean);
	
	public void updateBean(Gongzi bean);

	public Gongzi selectBean(String where);
	
	public List<Gongzi> selectBeanList(final int start, final int limit,final String where);
	
	public int selectBeanCount(final String where);
	
	
}
