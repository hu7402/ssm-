package service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mapper.UserMapper;
import model.Holiday;
import model.Mail;
import model.User;
import service.inter.IUserService;

@Service
public class UserService implements IUserService {
	@Autowired
	UserMapper mapper;

	public User findByName(User user) {
		return mapper.selectByName(user);
	}

	public void updateUser(User user) {
		mapper.update(user);
	}

	public User getById(Integer id) {
		return mapper.selectById(id);
	}

	public User getByUsername(String username) {
		return mapper.selectByUsername(username);
	}

	public List<User> findAllUser() {
		return mapper.selectAllUser();
	}

	// 邮件
	public void save(Mail mail) {
		
		mapper.insert(mail);
	}

	public List<Mail> findMailByName(String receiver) {
		return mapper.getMailByName(receiver);
	}

	public Mail findMailById(Integer id) {
		return mapper.selectMailById(id);
	}

	public void updateMail(Mail mail) {
		mail.setIsread(1);
		mapper.updateMail(mail);
	}

	public void updateMailIsshow(Mail mail) {
		mail.setIsshow(0);
		mapper.updateMailIsshow(mail);
	}

	public List<Mail> findMailIsshow(String receiver) {
		return mapper.getMailIsshow(receiver);
	}

	public void updateRubMailIsshow(Mail mail) {
		mail.setIsshow(1);
		mapper.updateRubMailIsshow(mail);
	}

	public Mail findAllMailById(Integer id) {
		return mapper.selectAllMailById(id);
	}

	public void deleteMailById(Integer id) {
		mapper.deleteMailById(id);
	}
	//请假
	public List<Holiday> findHolidayByApplyer(String applyer) {
		return mapper.getHolidayByApplyer(applyer);
	}

	public List<Holiday> findHolidayByAuditor(String auditor) {
		return mapper.getHolidayByAuditor(auditor);
	}

	public List<User> findUserIsadmin() {
		return mapper.selectUserIsadmin();
	}

	public void saveHoliday(Holiday holiday) {
		holiday.setChecks(0);
		mapper.insertHoliday(holiday);
	}

	public Holiday findHolidayById(Integer id) {
		return mapper.selectHolidayById(id);
	}

	// 审核通过
	public void updateHoliday(Holiday holiday) {
		holiday.setChecks(1);
		mapper.updateHoliday(holiday);
	}

	// 审核未通过
	public void updateHolidayNo(Holiday holiday) {
		holiday.setChecks(2);
		mapper.updateHolidayNo(holiday);
	}
	//编辑用户信息
	public void updateUserAccount(User user){
		mapper.updateUserAccount(user);
	}
	//添加用户信息
	public void insertUser(User user){
		user.setIsadmin(0);
		mapper.insertUser(user);
	}
	public void deleteUser(Integer id) {
		mapper.deleteUser(id);
	}
	public User checkUser(String username){
		return mapper.checkUser(username);
	}
}
