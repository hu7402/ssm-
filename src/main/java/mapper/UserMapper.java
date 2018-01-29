package mapper;

import java.util.List;

import model.Holiday;
import model.Mail;
import model.User;

public interface UserMapper {
	//个人信息
	User selectByName(User user);
	void update(User user);
	User selectById(Integer id);
	User selectByUsername(String username);
	List<User> selectAllUser();
	//发送与接收邮件
	void insert(Mail mail);
	List<Mail> getMailByName(String receiver);
	Mail selectMailById(Integer id);
	void updateMail(Mail mail);
	List<Mail> getMailIsshow(String receiver);
	void updateMailIsshow(Mail mail);
	void updateRubMailIsshow(Mail mail);
	Mail selectAllMailById(Integer id);
	void deleteMailById(Integer id);
	//请假
	List<Holiday> getHolidayByApplyer(String applyer);
	List<Holiday> getHolidayByAuditor(String auditor);
	List<User> selectUserIsadmin();
	void insertHoliday(Holiday holiday);
	Holiday selectHolidayById(Integer id);
	void updateHoliday(Holiday holiday);
	void updateHolidayNo(Holiday holiday);
	//编辑用户
	void updateUserAccount(User user);
	void insertUser(User user);
	void deleteUser(Integer id);
	User checkUser(String  username);
}
