package cn.mani123.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import cn.mani123.dao.AccountDao;
import cn.mani123.domain.Account;

public class AccountDaoImpl extends HibernateDaoSupport implements AccountDao {

	@Override
	public Account getUserInfo(int id) {
		
		return this.getHibernateTemplate().get(Account.class, id);
	}

	@Override
	public Account findById(Integer id) {
		return this.getHibernateTemplate().get(Account.class, id);
	}

	@Override
	public void update(Account account) {
		this.getHibernateTemplate().update(account);
		
	}


	@Override
	public void passwordUpdate(Account account) {
		this.getHibernateTemplate().update(account);
		
	}

	@Override
	public boolean findIdAndPass(int id, String password) {
		String hql = "from Account where id = " + id + "and password = " + password;
		List<Account> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			System.out.println(list.get(0).getUsername());
			return true;
		}
		System.out.println("list is null");
		return false;
	}

	@Override
	public int countOrderByAccount(Integer id) {
		String hql = "select count(*) from Order where account = " + id;
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}
	
}
