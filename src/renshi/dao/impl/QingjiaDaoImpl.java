package renshi.dao.impl;

import java.sql.SQLException;
import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import renshi.dao.QingjiaDao;
import renshi.model.Qingjia;










public class QingjiaDaoImpl extends HibernateDaoSupport implements  QingjiaDao{


	public void deleteBean(Qingjia bean) {
		this.getHibernateTemplate().delete(bean);
		
	}

	public void insertBean(Qingjia bean) {
		this.getHibernateTemplate().save(bean);
		
	}

	@SuppressWarnings("unchecked")
	public Qingjia selectBean(String where) {
		List<Qingjia> list = this.getHibernateTemplate().find("from Qingjia " +where);
		if(list.size()==0){
			return null;
		}
		return list.get(0);
	}

	public int selectBeanCount(String where) {
		long count = (Long)this.getHibernateTemplate().find("select count(*) from Qingjia "+where).get(0);
		return (int)count;
	}

	@SuppressWarnings("unchecked")
	public List<Qingjia> selectBeanList(final int start,final int limit,final String where) {
		return (List<Qingjia>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(final Session session)throws HibernateException, SQLException {				
				List<Qingjia> list = session.createQuery("from Qingjia "+where)
				.setFirstResult(start)
				.setMaxResults(limit)
				.list();
				return list;
			}
		});
	}

	public void updateBean(Qingjia bean) {
		this.getHibernateTemplate().update(bean);
		
	}
	
	
}
