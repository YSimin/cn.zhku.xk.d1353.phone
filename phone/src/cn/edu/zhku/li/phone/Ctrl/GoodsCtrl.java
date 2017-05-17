package cn.edu.zhku.li.phone.Ctrl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.zhku.li.phone.Dao.GoodsDao;
import cn.edu.zhku.li.phone.Service.GoodsService;
import cn.edu.zhku.li.phone.User.GoodsUser;

public class GoodsCtrl extends HttpServlet {

	GoodsService gs=new GoodsService();
	GoodsDao gd=new GoodsDao();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//设定输入编码格式
		request.setCharacterEncoding("utf-8");
	    //设定输出编码格式
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String useId = (String)request.getParameter("id");
		
		GoodsUser user =new GoodsUser();
		user.setId(useId);
		
		boolean checkResult =false;
		String msg=null;
		GoodsUser newuser=new GoodsUser();
		try {
			newuser=gd.getUserById(user);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		String name=newuser.getName();
		String version=newuser.getVersion();
		String color=newuser.getColor();
		String memory=newuser.getMemory();
		String weight=newuser.getWeight();
		String camera=newuser.getCamera();
		String cpu=newuser.getCpu();
		String size=newuser.getSize();
		String detail=newuser.getDetail();
		String internet=newuser.getDetail();
		
		
		RequestDispatcher rd=null;
		try{
			checkResult =gs.checkId(user);
			if(checkResult==true){
				
		       System.out.println("恭喜你");
			}else{
				msg="对不起";
				System.out.println(msg);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			rd=request.getRequestDispatcher("/jsp/goods.jsp");
			
			
			request.setAttribute("name", name);
			request.setAttribute("version", version);
			request.setAttribute("color", color);
			request.setAttribute("memory", memory);
			request.setAttribute("weight", weight);
			request.setAttribute("camera", camera);
			request.setAttribute("cpu", cpu);
			request.setAttribute("size", size);
			request.setAttribute("detail", detail);
			request.setAttribute("", detail);
			request.setAttribute("detail", detail);
			request.setAttribute("detail", detail);
			
			
			
			rd.forward(request, response);
		}
		out.flush();
		out.close();
		
		
	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
