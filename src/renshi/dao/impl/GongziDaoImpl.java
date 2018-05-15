package renshi.dao.impl;

import java.sql.SQLException;
import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import renshi.dao.GongziDao;
import renshi.model.Gongzi;










public class GongziDaoImpl extends HibernateDaoSupport implements  GongziDao{


	public void deleteBean(Gongzi bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Gongzi bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Gongzi selectBean(String where) {
		List<Gongzi> list = this.getHibernateTemplate().find("from Gongzi " +where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public int selectBeanCount(String where) {
		long count = (Long)this.getHibernateTemplate().find("select count(*) from Gongzi "+where).get(0);
		return (int)count;
	}

	@SuppressWarnings("unchecked")
	public List<Gongzi> selectBeanList(final int start,final int limit,final String where) {
		return (List<Gongzi>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(final Session session)throws HibernateException, SQLException {				
				List<Gongzi> list = session.createQuery("from Gongzi "+where)
				.setFirstResult(start)
				.setMaxResults(limit)
				.list();
				return list;
			}
		});
	}

	public void updateBean(Gongzi bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
}
