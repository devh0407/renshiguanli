package renshi.dao;

import java.util.List;

import renshi.model.Qingjia;



public interface QingjiaDao  {
	
	
	
	public void insertBean(Qingjia bean);
	
	public void deleteBean(Qingjia bean);
	
	public void updateBean(Qingjia bean);

	public Qingjia selectBean(String where);
	
	public List<Qingjia> selectBeanList(final int start, final int limit,final String where);
	
	public int selectBeanCount(final String where);
	
	
}
