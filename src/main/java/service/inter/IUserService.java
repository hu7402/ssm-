package service.inter;

import java.util.List;

import model.Holiday;
import model.Mail;
import model.User;

public interface IUserService {
	User findByName(User user);
	void updateUser(User user);
	User getById(Integer id);
	User getByUsername(String username);
	List<User> findAllUser();
	//邮件
	void save(Mail mail);
	List<Mail> findMailByName(String receiver);
	Mail findMailById(Integer id);
	void updateMail(Mail mail);
	void updateMailIsshow(Mail mail);
	List<Mail> findMailIsshow(String receiver);
	void updateRubMailIsshow(Mail mail);
	Mail findAllMailById(Integer id);
	void deleteMailById(Integer id);
	//请假
	List<Holiday> findHolidayByApplyer(String applyer);
	List<Holiday> findHolidayByAuditor(String auditor);
	List<User> findUserIsadmin();
	void saveHoliday(Holiday holiday);
	Holiday findHolidayById(Integer id);
	void updateHoliday(Holiday holiday);
	void updateHolidayNo(Holiday holiday);
	//编辑用户信息
	void updateUserAccount(User user);
	void insertUser(User user);
	void deleteUser(Integer id);
	User checkUser(String username);
}
