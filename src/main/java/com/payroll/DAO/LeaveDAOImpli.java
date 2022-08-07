package com.payroll.DAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.payroll.api.Leave;
import com.payroll.rowmapper.LeaveRowMapper;
@Repository
public class LeaveDAOImpli implements LeaveDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public Leave getLeave(int id) {
		String sql = "select * from leave where id = ?";
		Leave theLeave = jdbcTemplate.queryForObject(sql, new LeaveRowMapper(), id);
		return theLeave;
	}

	
	//to insert leave details t=into records
	@Override
	public void updateLeave(Leave leave) {
		String sql = "update leave set id=?, name=?, office_location=?, role=?, casual_leave=?, earned_leave=?, sick_leave=?, flexi_leave=?, total_leave=?, start_date=?, end_date=? where id=?";
		Object[] param = { leave.getId(), leave.getName(), leave.getOffice_location(), leave.getRole(), leave.getCasual_leave(), leave.getEarned_leave(), leave.getSick_leave(), leave.getFlexi_leave(), leave.getTotal_leave(), leave.getStart_date(),leave.getEnd_date(), leave.getId() };
		
		jdbcTemplate.update(sql, param);
		
	}

	@Override
	public void insertLeave(Leave leave) {
		
		Object[] param = { leave.getId(), leave.getName(), leave.getOffice_location(), leave.getRole(), leave.getLeave_type(), leave.getStart_date(), leave.getEnd_date() };
		String sql ="insert into add_leave values(?,?,?,?,?,?,?)";
		
		jdbcTemplate.update(sql, param);
		
	}

}
