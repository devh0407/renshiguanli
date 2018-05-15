package renshi.dao.impl;

import java.sql.SQLException;
import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import renshi.dao.JiangjinDao;
import renshi.model.Jiangjin;










public class JiangjinDaoImpl extends HibernateDaoSupport implements  JiangjinDao{


	public void deleteBean(Jiangjin bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Jiangjin bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Jiangjin selectBean(String where) {
		List<Jiangjin> list = this.getHibernateTemplate().find("from Jiangjin " +where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public int selectBeanCount(String where) {
		long count = (Long)this.getHibernateTemplate().find("select count(*) from Jiangjin "+where).get(0);
		return (int)count;
	}

	@SuppressWarnings("unchecked")
	public List<Jiangjin> selectBeanList(final int start,final int limit,final String where) {
		return (List<Jiangjin>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(final Session session)throws HibernateException, SQLException {				
				List<Jiangjin> list = session.createQuery("from Jiangjin "+where)
				.setFirstResult(start)
				.setMaxResults(limit)
				.list();
				return list;
			}
		});
	}

	public void updateBean(Jiangjin bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
}
