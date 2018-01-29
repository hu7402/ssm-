package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.mysql.fabric.xmlrpc.base.Data;
import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import model.Holiday;
import model.Mail;
import model.User;

import service.inter.IUserService;

@Controller
@RequestMapping(value = "/user", produces = "plain/text;charset=UTF-8")
public class UserAction {
	@Autowired
	IUserService iservice;

	// 转到登录页面
	@RequestMapping(value = "/tologin.do")
	public String tologin() {
		return "login";
	}

	// 登录
	@RequestMapping(value = "/login.do")
	@ResponseBody
	public String dologin(User user, HttpSession session) {
		User sessionUser = iservice.findByName(user);
		if (sessionUser != null) {
			if (sessionUser.getPassword().equals(user.getPassword())) {
				session.setAttribute("sessionUser", sessionUser);
				return "1";
			} else {
				return "0";
			}
		}
		return "0";
	}

	// 返回首页
	@RequestMapping(value = "/toindex.do")
	public String index() {
		return "index";
	}

	// 转到编辑页面
	@RequestMapping(value = "/userinfo.do")
	public String userinfo(User user, HttpSession session) {
		return "userinfo";
	}

	// 编辑个人信息
	@RequestMapping(value = "/saveinfo.do")
	public String saveinfo(User user, HttpSession session) {
		iservice.updateUser(user);
		/* System.out.println(user.getNickname()); */
		Integer id = user.getId();
		User sessionUser = iservice.getById(id);
		session.setAttribute("sessionUser", sessionUser);
		return "index";
	}

	// 转到发送邮件页面
	@RequestMapping(value = "/tosendMail")
	public String saveMail(Mail mail, HttpSession session) {
		List<User> userlist = iservice.findAllUser();
		session.setAttribute("userlist", userlist);
		return "sendMail";
	}

	// 更新个人信息
	@RequestMapping(value = "/toselect.do")
	public String Mailselect(User user, HttpSession session) {
		User user2 = (User) session.getAttribute("sessionUser");
		Integer id = user2.getId();
		User sessionUser = iservice.getById(id);
		session.setAttribute("sessionUser", sessionUser);
		return "index";
	}

	// 发送邮件
	@RequestMapping(value = "/sendMail",produces="plain/text;charset=UTF-8")
	public String sendMail(String receiver,String sender, String subject, String content, 
			 @RequestParam("mailfile") MultipartFile file)
			throws IOException {
		Mail mail=new Mail();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String nowtime = sdf.format(date);
		
		mail.setSendtime(nowtime);
		mail.setIsread(0);
		mail.setIsshow(1);
		mail.setReceiver(receiver);
		mail.setSender(sender);
		mail.setSubject(subject);
		mail.setContent(content);
		String mailfile = null;
		if (!file.isEmpty()) {
			mailfile = file.getOriginalFilename();
			file.transferTo(new File("E:/updownFile/"+file.getOriginalFilename()));
			mail.setMailfile("E:/updownFile/"+file.getOriginalFilename());
			String filename = file.getOriginalFilename();
			mail.setFilename(filename);
		}
		
		iservice.save(mail);
		return "redirect:/user/tosendMail";
		
	}

	// 转到接收邮件页面
	@RequestMapping(value = "/receiverMail")
	public String receiverMail( Mail mail, HttpSession session) {
		User user = (User)session.getAttribute("sessionUser");
		String username=user.getUsername();
		List<Mail> mail2 = iservice.findMailByName(username);
		/* System.out.println(mail2); */
		session.setAttribute("mail2", mail2);
		return "receiverMail";
	}

	// 显示邮件详情页面
	@RequestMapping(value = "/mailDetail/{id}")
	public String findMailById(@PathVariable(value = "id") Integer id, Mail mail, HttpSession session) {
		Mail mail3 = iservice.findMailById(id);
		session.setAttribute("mail3", mail3);
		return "mailDetail";
	}

	// 通过改isread来显示邮件已读与未读
	@RequestMapping(value = "/updateIsread/{id}")
	public String updateMailById(@PathVariable(value = "id") Integer id, Mail mail, HttpSession session) {
		iservice.updateMail(mail);
		/*return "index";*/
		return "redirect:/user/receiverMail";
	}

	// 将isshow设为0，收件箱不可见，垃圾箱可见
	@RequestMapping(value = "/removeMail/{id}")
	@ResponseBody
	public void updateMailIsshow(@PathVariable(value = "id") Integer id, Mail mail, HttpSession session) {
		Mail mail2 = iservice.findMailById(id);
		iservice.updateMailIsshow(mail2);
		/*return "redirect:/user/receiverMail";*/
	}

	// 查看垃圾箱里的邮件
	@RequestMapping(value = "/rubMail")
	
	public String rubMail( Mail mail, HttpSession session) {
		User user = (User)session.getAttribute("sessionUser");
		String username=user.getUsername();
		List<Mail> mail2 = iservice.findMailIsshow(username);
		/* System.out.println(mail2); */
		session.setAttribute("mail2", mail2);
		return "rubMail";
	}

	// 将isshow设为1，收件箱可见
	@RequestMapping(value = "/updateRubMailIsshow/{id}")
	@ResponseBody
	public void updateRubMailIsshow(@PathVariable(value = "id") Integer id) {

		Mail mail3 = iservice.findAllMailById(id);

		iservice.updateRubMailIsshow(mail3);

	}
	
	//下载邮件
	@RequestMapping(value="/mailDownload",produces="plain/text;charset=UTF-8")
	
	public void  download(HttpServletRequest request,HttpServletResponse response,String filename,String filePath,Mail mail) throws Exception{
		//获得请求过来的请求参数中键是filename的值
			String realPath =filePath;
				//告诉浏览器要下载的文件的类型
				response.setContentType(request.getServletContext().getMimeType(filename));
				//告诉浏览器下载文件。
				
				response.setHeader("Content-Disposition","attachment;filename="+filename);
				FileInputStream fis = new FileInputStream(realPath);
				ServletOutputStream os = response.getOutputStream();
				int b=0;
				while((b = fis.read())!=-1){
					os.write(b);
				}
				os.close();
				fis.close();
				
		
		
	}

	// 彻底删除邮件
	@RequestMapping(value = "deleteMail/{id}")
	@ResponseBody
	public void deleteMailById(@PathVariable(value = "id") Integer id, Mail mail, HttpSession session) {
		Mail mail2 = iservice.findAllMailById(id);
		iservice.deleteMailById(id);
	}

	// 通过判断是否是管理员来显示请假信息
	/*@RequestMapping(value = "/sendHoliday/{username}")
	public String findHolidayByName(@PathVariable(value = "username") String username, Holiday holiday,
			HttpSession session) {
		User user = iservice.getByUsername(username);
		 System.out.println(user.getUsername()); 
		List<Holiday> holidays = null;
		// 普通用户
		if (user.getIsadmin() == 0) {
			holidays = iservice.findHolidayByApplyer(username);
		} else {
			holidays = iservice.findHolidayByAuditor(username);
		}
		session.setAttribute("holidays", holidays);
		return "holiday";
	}*/
	// 通过判断是否是管理员来显示请假信息
	@RequestMapping(value = "/sendHoliday")
	public String findHolidayByName(Holiday holiday,HttpSession session) {
		User user = (User)session.getAttribute("sessionUser");
		String username=user.getUsername();
		List<Holiday> holidays = null;
		// 普通用户
		if (user.getIsadmin() == 0) {
			holidays = iservice.findHolidayByApplyer(username);
		} else {
			holidays = iservice.findHolidayByAuditor(username);
		}
		session.setAttribute("holidays", holidays);
		return "holiday";
	}
	// 发送请假休息
	@RequestMapping(value = "/submitHoliday")
	public String sendHoliday(Holiday holiday, HttpSession session) {
		List<User> userlist = iservice.findUserIsadmin();
		session.setAttribute("userlist", userlist);
		return "holidayDetail";
	}

	// 将请假条保存到数据库
	@RequestMapping(value = "/holidayDetail")
	public String saveHolidayDetail(Holiday holiday) {
		iservice.saveHoliday(holiday);
		return "holidayDetail";
		
	}

	// 通过id得到请假信息来审核
	@RequestMapping(value = "/checkHoliday/{id}")
	public String checkHolidayById(@PathVariable(value = "id") Integer id, Holiday holiday, HttpSession session) {
		Holiday holidays = iservice.findHolidayById(id);
		session.setAttribute("holidays", holidays);
		return "checkHoliday";
	}

	// 审核通过
	@RequestMapping(value = "/updateHolidayPass/{id}")
	
	public String updateHoliday(@PathVariable(value = "id") Integer id, Holiday holiday, HttpSession session) {
		iservice.updateHoliday(holiday);
		
		return "redirect:/user/sendHoliday";
		
	}

	// 审核未通过
	@RequestMapping(value = "/updateHolidayNoPass/{id}")
	
	public String updateHolidayNo(@PathVariable(value = "id") Integer id, Holiday holiday, HttpSession session) {
		iservice.updateHolidayNo(holiday);
		
		return "redirect:/user/sendHoliday";
		
	}

	// 显示个人账户信息
	@RequestMapping(value = "/editUser")
	
	public String EditUser() {
		return "editUser";
	}

	// 显示个人账户信息
	@RequestMapping(value = "/userAccount")
	public String userAccount() {
		return "userAccount";
	}

	// 个人账户信息保存
	@RequestMapping(value = "/saveEditUser")
	public String saveEditUser(User user, HttpSession session) {
		iservice.updateUserAccount(user);
		User user3 = iservice.getById(user.getId());
		session.setAttribute("sessionUser", user3);
		return "userAccount";
	}

	// 显示管理账户页面
	@RequestMapping(value = "/manageUser")
	public String manageUser(User user, HttpSession session) {
		
		List<User> userlist =iservice.findAllUser();
		session.setAttribute("userlist", userlist);
		return "manageUser";
	}
	
	//显示管理账户页面，不显示登录者
	/*@RequestMapping(value = "/manageUser")
	public String manageUser(HttpSession session) {
		
		List<User> userlist =iservice.findAllUser();
		User user=(User) session.getAttribute("sessionUser");
		Iterator<User> iterator = userlist.iterator();
		while(iterator.hasNext()){
			User user1 = iterator.next();
			if(user1.getUsername().equals(user.getUsername())){
				iterator.remove();
			}
			if(user1.getIsadmin()==1){
				iterator.remove();
			}
		}
		session.setAttribute("userlist", userlist);
		return "manageUser";
	}
*/
	// 显示添加账户的页面
	@RequestMapping(value = "/addUser")
	public String addUser() {
		return "addUser";
	}

	// 添加账户到数据库
	@RequestMapping(value = "/saveAddUser")
	public String saveAddUser(User user) {
		iservice.insertUser(user);
		
		return "redirect:/user/manageUser";
	
	}
	//重复验证
	@RequestMapping(value = "/checkUser")
	@ResponseBody
	public void checkUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String username=request.getParameter("username");
		User user=null;
		try {
			user=iservice.checkUser(username);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Gson gson=new Gson();
		String json = gson.toJson(user);
		
		if (json!=null) {
			response.getWriter().write(json);
		}
	}
	// 删除账户
		@RequestMapping(value = "/deleteUser/{id}")
		@ResponseBody
		public void deleteUser(@PathVariable(value = "id")Integer id,User user) {
			
			
			iservice.deleteUser(id);
			
			/*return "redirect:/user/manageUser";*/
		
		}
	//注销
	@RequestMapping(value = "/loginOut")
	public String loginOut(HttpSession session){
		User user=new User();
		session.setAttribute("user", user);
		return "login";
	}
}
