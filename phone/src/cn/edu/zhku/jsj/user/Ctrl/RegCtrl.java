package cn.edu.zhku.jsj.user.Ctrl;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.edu.zhku.jsj.user.Service.RegService;
import cn.edu.zhku.jsj.user.model.User;

public class RegCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	RegService rs = new RegService();
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//设定输入编码格式
				request.setCharacterEncoding("utf-8");
				//设定输出编码格式
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html");
//				PrintWriter out = response.getWriter();
				
		        //		获得jsp页面参数
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				int account_id= Integer.parseInt(request.getParameter("user"));
				System.out.println(username);
				System.out.println(password);
				System.out.println(account_id);
				//打包处理，形成一个user对象，以便于后面传递参数使用
				User user  = new User();
				user.setUserName(username);
				user.setUserPassword(password);
				user.setUserAccount_id(account_id);
				
				String msg=null;
				boolean checkResult=false;
				RequestDispatcher rd = null;
				try {
					checkResult=rs.checkUserNameAndPassword(user);
					 
			        if(checkResult==true)
			        {
			        	msg ="errors";
			        	request.setAttribute("MSG", msg);
			        	rd = request.getRequestDispatcher("../result.jsp");
			        	rd.forward(request, response);
			        	
			        }
			        else
			        { 
			        	checkResult=rs.addUserSuccess(user);
			        	 if(checkResult==true)
					        {
					        	msg ="注册成功！";
					        	request.getSession().setAttribute("username",username);
					        	if(account_id==1)
								{
									rd = request.getRequestDispatcher("../together.jsp");
								    rd.forward(request, response);
								}
								else if(account_id==2)
								{
									rd = request.getRequestDispatcher("../together.jsp");
								    rd.forward(request, response);
								}
								else{
								rd = request.getRequestDispatcher("../together.jsp");
								rd.forward(request, response);
								}
					        	
					        	
					        }
			        	 else{
			        		 msg ="抱歉，注册失败！";
			        		 request.setAttribute("MSG", msg);
			        		 rd = request.getRequestDispatcher("../result.jsp");
			        		 rd.forward(request, response);
			        	 }
			        	
			        	}
			        System.out.println(msg);
				} catch (Exception e) {
					
					e.printStackTrace();
				}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		this.doGet(request, response);
	}

}
