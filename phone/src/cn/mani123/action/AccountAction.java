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
		account = accountService.getUserInfo(id);//获取account对象，把对象通过modeldriver传到jsp页面中
		ActionContext.getContext().getSession().put("id", id);//传到value栈中
		int count = accountService.countOrderByAccount(id);
		ActionContext.getContext().getSession().put("count", count);//传到value栈中		
		int user = accountService.getUser(id);
		ActionContext.getContext().getSession().put("user", user);//传到value栈中
		if(user==1){//用户为管理员
			return "failure";
		}
		else if(user==2){//用户为买家
			return "loginSuccess";
		}
		else if(user==3){//用户为卖家
			return "shopLoginSuccess";
		}
		else{
			return "failure";
		}
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
		int user = (Integer)ActionContext.getContext().getSession().get("user");
		if(id==null){
			return "failure";
		}
		account = accountService.findById(id);

		if(user==1){//用户为管理员
			return "failure";
		}
		else if(user==2){//用户为买家
			return "perCenter";
		}
		else if(user==3){//用户为卖家
			return "shopPerCenter";
		}
		else{
			return "failure";
		}
	}	
		
	//首页
	public String index(){		
		return "index";
	}
	
	//评论视图
	public String comment(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		List<Product> product = accountService.getWaitComment(id);
		ActionContext.getContext().getValueStack().set("product", product);
		int user = (Integer)ActionContext.getContext().getSession().get("user");
		if(user==1){//用户为管理员
			return "failure";
		}
		else if(user==2){//用户为买家
			return "comment";
		}
		else if(user==3){//用户为卖家
			return "shopComment";
		}
		else{
			return "failure";
		}
	}
	
	//待评论视图
	public String waitComment(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		List<Product> product = accountService.getWaitComment(id);
		ActionContext.getContext().getValueStack().set("product", product);
		return "waitComment";
	}
	
	//已评论视图
	public String commented(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		List<Product> product = accountService.getCommented(id);
		ActionContext.getContext().getValueStack().set("product", product);
		int user = (Integer)ActionContext.getContext().getSession().get("user");
		
		if(user==1){//用户为管理员
			return "failure";
		}
		else if(user==2){//用户为买家
			return "commented";
		}
		else if(user==3){//用户为卖家
			return "shopCommented";
		}
		else{
			return "failure";
		}
	}
	
	//已关闭评论视图
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
	
	//我的订单视图
	public String myOrder(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		List<Product> product = accountService.getOrder(id);
		ActionContext.getContext().getValueStack().set("product", product);
		//判断用户视图
		int user = (Integer)ActionContext.getContext().getSession().get("user");		
		if(user==1){//用户为管理员
			return "failure";
		}
		else if(user==2){//用户为买家
			return "myOrder";
		}
		else if(user==3){//用户为卖家
			return "shopMyOrder";
		}
		else{
			return "failure";
		}
	}
	
	//买家-待发货视图
	public String waitPay(){	
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		List<Product> product = accountService.getWaitPayProduct(id);
		ActionContext.getContext().getValueStack().set("product", product);
		//判断用户视图
		int user = (Integer)ActionContext.getContext().getSession().get("user");		
		if(user==1){//用户为管理员
			return "failure";
		}
		else if(user==2){//用户为买家
			return "waitPay";
		}
		else if(user==3){//用户为卖家
			return "shopWaitPay";
		}
		else{
			return "failure";
		}
	}
	
	//待确认收货视图
	public String waitConfirm(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "failure";
		}
		List<Product> product = accountService.getWaitConfirm(id);
		ActionContext.getContext().getValueStack().set("product", product);
		//判断用户视图
		int user = (Integer)ActionContext.getContext().getSession().get("user");		
		if(user==1){//用户为管理员
			return "failure";
		}
		else if(user==2){//用户为买家
			return "waitConfirm";
		}
		else if(user==3){//用户为卖家
			return "shopWaitConfirm";
		}
		else{
			return "failure";
		}
	}

	//已关闭视图
	public String closed(){		
		return "closed";
	}
	
	
}
