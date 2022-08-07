package com.payroll.services;

import com.payroll.api.Leave;

public interface LeaveService {

	Leave getLeave(int id);
	
	void updateLeave(Leave leave);
}
