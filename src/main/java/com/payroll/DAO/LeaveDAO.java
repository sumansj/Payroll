package com.payroll.DAO;

import com.payroll.api.Leave;

public interface LeaveDAO {

	Leave getLeave(int id);
	
	void updateLeave(Leave leave);
	
	void insertLeave(Leave leave);
	
}
