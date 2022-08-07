package com.payroll.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.payroll.api.Leave;

public class LeaveRowMapper implements RowMapper<Leave> {

	@Override
	public Leave mapRow(ResultSet rs, int rowNum) throws SQLException {
		
		Leave leave = new Leave();
		
		leave.setId(rs.getInt(1));
		leave.setName(rs.getString(2));
		leave.setOffice_location(rs.getString(3));
		leave.setRole(rs.getString(4));
		leave.setCasual_leave(rs.getInt(5));
		leave.setEarned_leave(rs.getInt(6));
		leave.setSick_leave(rs.getInt(7));
		leave.setFlexi_leave(rs.getInt(8));
		leave.setTotal_leave(rs.getInt(9));
		leave.setStart_date(rs.getDate(10));
		leave.setEnd_date(rs.getDate(11));
		
		return leave;
	}

}
