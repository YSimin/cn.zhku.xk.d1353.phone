package cn.mani123.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.mani123.dao.CartDao;
import cn.mani123.domain.Account;
import cn.mani123.domain.Product;
import cn.mani123.service.CartService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import javax.servlet.http.HttpServletResponse ;

public class CartAction extends ActionSupport implements ModelDriven<Account>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Account account = new Account();
	
	@Override
	//获取struts2模型驱动
	public Account getModel() {
		return account;
	}

	private CartService cartService;
	private CartDao cartDao;

	//通过set方法使用spring获得对象
	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}	
	
	//获取用户购物车信息
	public String get(){
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			return "error";
		}
		List<Product> product = cartService.getProduct(id);
		int count = cartService.countOrderByAccount(id);
		List<Integer> num = cartService.productNum(id,product);
		ActionContext.getContext().getValueStack().set("num", num);
		ActionContext.getContext().getSession().put("count", count);//传到value栈中
		ActionContext.getContext().getValueStack().set("product", product);
		return "get";
	}
	
	//结算购物车
	public String clear(){
		String product_id[] = ServletActionContext.getRequest().getParameterValues("product_id");
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("id"))) ;
			System.out.println("requestparameter clear get id!!!!");
		}
		if(id==null){
			return "error";
		}		
		if(product_id!=null&&id!=null){
			for (int i = 0; i < product_id.length; i++) {
				System.out.println("clear-----id=------"+product_id[i]+"---------product_id.lenght="+product_id.length+"-------------------");
				cartService.clear(product_id,id);
			}
			return "clear";
		}
		else return "error";
		
	}
	
	//删除购物车商品
	public String delete(){
		Integer product_id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("product_id")));
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("id"))) ;
			System.out.println("requestparameter delete get id!!!!");
		}
		if(id==null){
			return "error";
		}	
		System.out.println(id);
		if(product_id!=null&&id!=0){
				cartService.delete(product_id,id);
			return "delete";
		}
		else return "clear";		
	}
	
	//添加购物车	
	public String add(){
		Integer product_id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("product_id")));//需要修改！！！！
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		System.out.println("id========="+id);
		if(id==null){
			id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("id"))) ;
			System.out.println("requestparameter add get id!!!!");
		}
		if(id==null){
			return "error";
		}	
		if(product_id!=0&&id!=0){
			cartService.add(product_id,id);
			return "add";
		}
		else return "error";		
	}
	
	//发货视图
	public String pay(){
		Integer product_id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("product_id")));
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("id"))) ;
			System.out.println("requestparameter add get id!!!!");
		}
		if(id==null){
			return "error";
		}	
		if(product_id!=0&&id!=0){
			cartService.pay(id,product_id);
			return "pay";
		}
		else return "error";	
	}
	
	//收货视图
	public String confirm(){
		Integer product_id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("product_id")));
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		if(id==null){
			id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("id"))) ;
			System.out.println("requestparameter add get id!!!!");
		}
		if(id==null){
			return "error";
		}	
		if(product_id!=0&&id!=0){
			cartService.confirm(id,product_id);
			return "confirm";
		}
		else return "error";	
	}
	
	//评分视图
	public String comment(){
		Integer product_id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("product_id")));
		Integer id = (Integer)ActionContext.getContext().getSession().get("id");
		String score = ServletActionContext.getRequest().getParameter("score");
		if(id==null){
			id = (Integer.parseInt(ServletActionContext.getRequest().getParameter("id"))) ;
			System.out.println("requestparameter add get id!!!!");
		}
		if(id==null){
			return "error";
		}	
		int user = (Integer)ActionContext.getContext().getSession().get("user");
		if(user==1){//用户为管理员
			return "error";
		}
		else if(user==2){//用户为买家
			cartService.comment(id,product_id,score);
			return "comment";
		}
		else if(user==3){//用户为卖家
			return "shopComment";
		}
		else{
			return "error";
		}
	}
	
	
}
