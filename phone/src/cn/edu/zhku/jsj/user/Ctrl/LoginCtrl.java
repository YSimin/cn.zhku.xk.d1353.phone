package cn.edu.zhku.jsj.user.Ctrl;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.zhku.jsj.user.Service.LoginService;
import cn.edu.zhku.jsj.user.model.User;

public class LoginCtrl extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	LoginService ls = new LoginService();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
		//设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
        //		获得jsp页面参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		int account_id= Integer.parseInt(request.getParameter("user"));
//		System.out.println(username);
//		System.out.println(password);
//		System.out.println(account_id);
		//打包处理，形成一个user对象，以便于后面传递参数使用
		User user  = new User();
		user.setUserName(username);
		user.setUserPassword(password);
		user.setUserAccount_id(account_id);
		
		boolean checkResult = false ;
		String msg = null;
		
		RequestDispatcher rd = null;
		try{
			
			checkResult = ls.checkUserNameAndPassword(user);
			int id = ls.getAccountId(user);
			int count = ls.countOrderByAccount(id);

			if(checkResult == true){
				msg = "恭喜你，"+username+"，欢迎光临!";	
				request.getSession().setAttribute("user",account_id);
				request.getSession().setAttribute("id",id);
				request.getSession().setAttribute("count",count);
				if(account_id==1)
				{
					rd = request.getRequestDispatcher("../home/together.jsp");
				    rd.forward(request, response);
				}
				else if(account_id==2)
				{
					rd = request.getRequestDispatcher("../home/together.jsp");
				    rd.forward(request, response);
				}
				else{
				rd = request.getRequestDispatcher("../home/together.jsp");
				rd.forward(request, response);
				}
			}else{
				msg = "error";
				rd = request.getRequestDispatcher("../login/result.jsp");
				request.setAttribute("MSG", msg);
				rd.forward(request, response);
				
			}
			//System.out.println(msg);
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
