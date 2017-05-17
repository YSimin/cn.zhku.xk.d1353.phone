package cn.mani123.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.mani123.dao.AccountDao;
import cn.mani123.domain.Account;
import cn.mani123.domain.Cart;
import cn.mani123.domain.Order;
import cn.mani123.domain.Product;
import cn.mani123.service.AccountService;
import cn.mani123.service.CartService;
import cn.mani123.service.impl.CartServiceImpl;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AccountAction extends ActionSupport implements ModelDriven<Account>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private AccountDao accountDao;
	private AccountService accountService;
	Account account = new Account();
	
	//通过set方法使用spring进行传参
	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}	
	
	//获得模型驱动Account
	@Override
	public Account getModel() {
		return account;
	}
	
	//用户登录方法
	public String login(){		
		String temp = ServletActionContext.getRequest().getParameter("id") ; 
		if(temp==null){
			return "failure";
		}
		Integer id = (Integer.parseInt(temp));
		boolean flags = accountService.vaildId(id);
		if(flags==false){
			return "failure";
		}
		if(id==null){
			return "failure";
		}
		ActionContext.getContext().getSession().put("id", id);//传到value栈中
		int count = accountService.countOrderByAccount(id);
		ActionContext.getContext().getSession().put("count", count);//传到value栈中
		return "loginSuccess";
	}
	
	//获得用户信息，返回个人资料页面
	public String getUserInfo(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		account = accountService.getUserInfo(id);
		return "getUserInfo";
	}
	
	//更新个人资料信息
	public String update(){	
		accountService.update(account);
		return "update";
	}
	
	//个人中心页面
	public String perCenter(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		account = accountService.findById(id);
		return "perCenter";
	}	
	
	//我的订单视图
	public String myOrder(){		
		return "myOrder";
	}
	
	//首页
	public String index(){		
		return "index";
	}
	
	//评论视图
	public String comment(){		
		return "comment";
	}
	
	//评论视图
	public String waitComment(){		
		return "waitComment";
	}
	
	//评论视图
	public String commented(){		
		return "commented";
	}
	
	//评论视图
	public String commentClose(){		
		return "commentClose";
	}
	
	//我的消息视图
	public String news(){		
		return "news";
	}
	
	//优惠信息视图
	public String discount(){		
		return "discount";
	}
	
	//收货地址视图
	public String address(){		
		return "address";
	}
	
	//
	public String perInfo(){
		//this.getUserInfo(id);
		//
		return "perInfo";
	}
	
	//修改密码视图
	public String password(){
		return "password";
	}
	
	//修改密码-获取旧密码，判断密码是否正确
	public String passwordUpdate(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		boolean flags = accountService.findByIdAndPass(id,account.getPassword());
		if(flags==false){
			return "passwordError";
		}
		return "passwordUpdate";
	}
	
	//修改密码-获取新密码，对数据库中用户的信息进行修改
	public String passwordUpdate2(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		accountService.passwordUpdate(id,account.getPassword());		
		return "passwordUpdate2";
	}
	
	//待支付视图
	public String waitPay(){		
		return "waitPay";
	}
	
	//待确认收货视图
	public String waitConfirm(){		
		return "waitConfirm";
	}
	
	//已关闭视图
	public String closed(){		
		return "closed";
	}
	
	
}
