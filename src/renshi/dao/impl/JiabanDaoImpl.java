package renshi.dao.impl;

import java.sql.SQLException;
import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import renshi.dao.JiabanDao;
import renshi.model.Jiaban;










public class JiabanDaoImpl extends HibernateDaoSupport implements  JiabanDao{


	public void deleteBean(Jiaban bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Jiaban bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Jiaban selectBean(String where) {
		List<Jiaban> list = this.getHibernateTemplate().find("from Jiaban " +where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public int selectBeanCount(String where) {
		long count = (Long)this.getHibernateTemplate().find("select count(*) from Jiaban "+where).get(0);
		return (int)count;
	}

	@SuppressWarnings("unchecked")
	public List<Jiaban> selectBeanList(final int start,final int limit,final String where) {
		return (List<Jiaban>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(final Session session)throws HibernateException, SQLException {				
				List<Jiaban> list = session.createQuery("from Jiaban "+where)
				.setFirstResult(start)
				.setMaxResults(limit)
				.list();
				return list;
			}
		});
	}

	public void updateBean(Jiaban bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
}
