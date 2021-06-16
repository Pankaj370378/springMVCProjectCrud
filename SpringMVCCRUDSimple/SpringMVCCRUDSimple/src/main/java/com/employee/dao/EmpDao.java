package com.employee.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.employee.beans.Emp;

public class EmpDao {
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Emp p) {
		String sql = "insert into company(first_name,last_name,salary,department,position,email_address,contact_number) values('"
				+ p.getFirst_name() + "','" + p.getLast_name() + "','" + p.getSalary() + "','" + p.getDepartment()
				+ "','" + p.getPosition() + "','" + p.getEmail_address() + "','" + p.getContact_number() + "')";
		return template.update(sql);
	}

	public int update(Emp p) {
		String sql = "update company set first_name='" + p.getFirst_name() + "',last_name='" + p.getLast_name()
				+ "', salary='" + p.getSalary() + "',department='" + p.getDepartment() + "',position='"
				+ p.getPosition() + "',email_address='" + p.getEmail_address() + "',contact_number='"
				+ p.getContact_number() + "' where id=" + p.getId() + "";
		return template.update(sql);
	}

	public int delete(int id) {
		String sql = "delete from company where id=" + id + "";
		return template.update(sql);
	}

	public Emp getEmpById(int id) {
		String sql = "select * from company where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Emp>(Emp.class));
	}

	public List<Emp> getEmployees() {
		return template.query("select * from company", new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int row) throws SQLException {
				Emp e = new Emp();
				e.setId(rs.getInt(1));
				e.setFirst_name(rs.getString(2));
				e.setLast_name(rs.getString(3));
				e.setSalary(rs.getFloat(4));
				e.setDepartment(rs.getString(5));
				e.setPosition(rs.getString(6));
				e.setEmail_address(rs.getString(7));
				e.setContact_number(rs.getString(8));
				// e.setImage(rs.getBytes(9));
				return e;
			}
		});
	}

	public List<Emp> getEmployeespage(int pageid, int total) {

		String sql = "select * from company limit " + (pageid - 1) + "," + total;
		return template.query(sql, new RowMapper<Emp>() {
			public Emp mapRow(ResultSet rs, int row) throws SQLException {

				Emp e = new Emp();
				e.setId(rs.getInt(1));
				e.setFirst_name(rs.getString(2));
				e.setLast_name(rs.getString(3));
				e.setSalary(rs.getFloat(4));
				e.setDepartment(rs.getString(5));
				e.setPosition(rs.getString(6));
				e.setEmail_address(rs.getString(7));
				e.setContact_number(rs.getString(8));
				return e;

			}
		});
	}

}
