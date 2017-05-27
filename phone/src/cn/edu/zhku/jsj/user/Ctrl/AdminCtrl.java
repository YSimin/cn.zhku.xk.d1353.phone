package cn.edu.zhku.jsj.user.Ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.zhku.jsj.user.Service.AdminService;

import cn.edu.zhku.jsj.user.model.Shop;

public class AdminCtrl  extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	AdminService as = new AdminService();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		int id= Integer.parseInt(request.getParameter("id"));
		Shop shop=new Shop();
		shop.setId(id);
		boolean checkResult = false ;
		RequestDispatcher rd = null;
		String msg = null;
      try{
			
			checkResult=as.checkDeleteShop(shop);
			if(checkResult == true)
			{
				
				msg =id+"删除成功！";
				//System.out.print(msg);
				rd = request.getRequestDispatcher("../admin.jsp");
			    rd.forward(request, response);
			}
      }catch(Exception e){
			e.printStackTrace();
			
		}
				
		

}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
