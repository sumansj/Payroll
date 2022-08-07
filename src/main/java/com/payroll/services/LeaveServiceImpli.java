package com.payroll.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.DAO.LeaveDAO;
import com.payroll.api.Leave;
@Service
public class LeaveServiceImpli implements LeaveService {

	@Autowired
	LeaveDAO leaveDao;
	
	@Autowired
	LeaveServiceImpli leaveUpdate;
	
	//fetching the leave details for particular id
	@Override
	public Leave getLeave(int id) {
		Leave theLeave = leaveDao.getLeave(id);
//		System.out.println(theLeave.getCasual_leave());
		return theLeave;
	}
	
	//To insert leave details 
	public void insertLeave(Leave leave) {
		leaveDao.insertLeave(leave);
	}
	
	
	//to insert leave details to the record
	@Override
	public void updateLeave(Leave leave) {
		
		int id = leave.getId();
		Leave updateLeave = leaveUpdate.getLeave(id);  // fetching the leave details from database and stroing it in updateLeave variable
//		System.out.println(updateLeave.getCasual_leave());
//		System.out.println(leave.getLeave_type());
//		System.out.println(leave.getCasual_leave());
		if(leave.getLeave_type().equals("Casual Leave")) {
			if(updateLeave.getCasual_leave() != 0) {
				leave.setCasual_leave(updateLeave.getCasual_leave() - 1);
				leave.setEarned_leave(updateLeave.getEarned_leave());
				leave.setSick_leave(updateLeave.getSick_leave());
				leave.setFlexi_leave(updateLeave.getFlexi_leave());
			}
		}
		else if(leave.getLeave_type().equals("Earned Leave")) {
			if(updateLeave.getEarned_leave() !=0) {
				leave.setCasual_leave(updateLeave.getCasual_leave());
				leave.setEarned_leave(updateLeave.getEarned_leave() - 1);
				leave.setSick_leave(updateLeave.getSick_leave());
				leave.setFlexi_leave(updateLeave.getFlexi_leave());
			}
		}
		else if(leave.getLeave_type().equals("Sick Leave")) {
			if(updateLeave.getSick_leave() !=0) {
				leave.setCasual_leave(updateLeave.getCasual_leave());
				leave.setEarned_leave(updateLeave.getEarned_leave());
				leave.setSick_leave(updateLeave.getSick_leave() - 1);
				leave.setFlexi_leave(updateLeave.getFlexi_leave());
			}
		}
		else if(leave.getLeave_type().equals("Flexi Leave")) {
			if(updateLeave.getFlexi_leave() !=0) {
				leave.setCasual_leave(updateLeave.getCasual_leave());
				leave.setEarned_leave(updateLeave.getEarned_leave());
				leave.setSick_leave(updateLeave.getSick_leave());
				leave.setFlexi_leave(updateLeave.getFlexi_leave() - 1);
			}
		}
		leave.setTotal_leave(leave.getCasual_leave() + leave.getEarned_leave() + leave.getSick_leave() + leave.getFlexi_leave());
		leaveDao.updateLeave(leave);
		leaveUpdate.insertLeave(leave);
	}
	
}
