package cn.edu.zhku.jsj.user.Ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.zhku.jsj.user.Service.AccountService;

import cn.edu.zhku.jsj.user.model.User;

public class AccountCtrl extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	AccountService as = new AccountService();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		int id= Integer.parseInt(request.getParameter("id"));
		User user=new User();
		user.setUserid(id);
		boolean checkResult = false ;
		RequestDispatcher rd = null;
		String msg = null;
      try{
			
			checkResult=as.checkDeleteUser(user);
			if(checkResult == true)
			{
				
				msg =id+"删除成功！";
				System.out.print(msg);
				rd = request.getRequestDispatcher("../account.jsp");
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
