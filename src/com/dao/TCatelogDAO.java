package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TCatelog;

/**
 * Data access object (DAO) for domain model class TCatelog.
 * 
 * @see com.model.TCatelog
 * @author MyEclipse Persistence Tools
 */

public class TCatelogDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(TCatelogDAO.class);

	// property constants
	public static final String NAME = "name";

	public static final String DEL = "del";

	// protected void initDao()
	// {
	// // do nothing
	// }

	public void save(TCatelog transientInstance) {
		log.debug("saving TCatelog instance");
		try {
			getHibernateTemplate().save(transientInstance);//把临时状态的对象进行保存
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TCatelog persistentInstance) {
		log.debug("deleting TCatelog instance");
		try {
			getHibernateTemplate().delete(persistentInstance);//把持久化的对象进行删除
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TCatelog findById(java.lang.Integer id) {
		log.debug("getting TCatelog instance with id: " + id);
		try {
			TCatelog instance = (TCatelog) getHibernateTemplate().get(
					"com.model.TCatelog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TCatelog instance) {
		log.debug("finding TCatelog instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TCatelog instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TCatelog as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByDel(Object del) {
		return findByProperty(DEL, del);
	}

	public List findAll() {
		log.debug("finding all TCatelog instances");
		try {
			String queryString = "from TCatelog";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public TCatelog merge(TCatelog detachedInstance) {
		log.debug("merging TCatelog instance");
		try {
			//将传入的detached(分离的)状态的对象的属性复制到持久化对象中，并返回该持久化对象
			//merge()方法，会根据根据对象是否进行了实质性修改，
			//来决定是否执行相应的update/delete/update语句
			TCatelog result = (TCatelog) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TCatelog instance) {//方法是将之前的数据覆盖
		log.debug("attaching dirty TCatelog instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TCatelog instance) {
		log.debug("attaching clean TCatelog instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);//查询时进行加锁
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TCatelogDAO getFromApplicationContext(ApplicationContext ctx) {
		return (TCatelogDAO) ctx.getBean("TCatelogDAO");
	}
}