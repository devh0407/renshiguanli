package renshi.dao;

import java.util.List;

import renshi.model.Jiangjin;



public interface JiangjinDao  {
	
	
	
	public void insertBean(Jiangjin bean);
	
	public void deleteBean(Jiangjin bean);
	
	public void updateBean(Jiangjin bean);

	public Jiangjin selectBean(String where);
	
	public List<Jiangjin> selectBeanList(final int start, final int limit,final String where);
	
	public int selectBeanCount(final String where);
	
	
}
