package com.demo.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.common.DBHelper;
import com.demo.dto.user;

public class UserController {
	public void createUser(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into user values(?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getUsername());
		pre.setString(3,  user.getPassword());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	public void addDoc1(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into doctor_anes values(?,?,?,?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getUsername());
		pre.setInt(3, user.getNmc());
		pre.setString(4,  user.getDegree());
		pre.setString(5,  user.getShift());
		pre.setLong(6, user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	public void addBill(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into bills values(?,?,?,?,?,?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getName());
		pre.setInt(3, user.getAge());
		pre.setString(4,  user.getAddress());
		pre.setString(5,  user.getArrival());
		pre.setLong(6, user.getPhone());
		pre.setInt(7, user.getAmount());
		pre.setString(8,user.getService());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void addPatient(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into patient values(?,?,?,?,?,?,?,?,?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getName());
		pre.setString(3,  user.getAddress());
		pre.setString(4, user.getArrival());
		pre.setString(5, user.getDischarge());
		pre.setLong(6, user.getPhone());
		pre.setString(7,  user.getHr());
		pre.setString(8,  user.getDvisited());
		pre.setString(9,  user.getDrappointed());
		pre.setInt(10, user.getWard());
		pre.setInt(11, user.getBed());
		
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void addAppointment(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into appointment values(?,?,?,?,?,?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getUsername());
		pre.setString(3,  user.getAddress());
		pre.setString(4, user.getSymtom());
		pre.setString(5, user.getShift());
		pre.setString(6,  user.getDepartment());
		pre.setString(7,  user.getArrival());
		pre.setLong(8, user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void addDoc2(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into doctor_bs values(?,?,?,?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getUsername());
		pre.setInt(3, user.getNmc());
		pre.setString(4,  user.getDegree());
		pre.setString(5,  user.getShift());
		pre.setLong(6, user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void addNs1(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into nurse_anes values(?,?,?,?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getUsername());
		pre.setInt(3, user.getNmc());
		pre.setString(4,  user.getDegree());
		pre.setString(5,  user.getShift());
		pre.setLong(6, user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void addNs2(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="insert into nurse_bs values(?,?,?,?,?,?)";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.setString(2,  user.getUsername());
		pre.setInt(3, user.getNmc());
		pre.setString(4,  user.getDegree());
		pre.setString(5,  user.getShift());
		pre.setLong(6, user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	
	public void updateUser(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="update user set username=?, password=? where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getUsername());
		pre.setString(2,  user.getPassword());
		pre.setInt(3,  user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	public void updatedoc_anes(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="update doctor_anes set username=?, nmc=?, degree=?, shift=?, phone=? where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getUsername());
		pre.setString(3, user.getDegree());
		pre.setString(4, user.getShift());	
		pre.setInt(6,  user.getId());
		pre.setInt(2,  user.getNmc());
		pre.setLong(5,  user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	public void update_app(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="update appointment set username=?, address=?, symtom=?, shift=?, department=?, arrival=?, phone=? where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getUsername());
		pre.setString(2, user.getAddress());
		pre.setString(3, user.getSymtom());	
		pre.setString(4, user.getShift());
		pre.setString(5, user.getDepartment());
		pre.setString(6, user.getArrival());
		pre.setLong(7,  user.getPhone());
		pre.setInt(8,  user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	
	public void updatedoc_bs(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="update doctor_bs set username=?, nmc=?, degree=?, shift=?, phone=? where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getUsername());
		pre.setString(3, user.getDegree());
		pre.setString(4, user.getShift());	
		pre.setInt(6,  user.getId());
		pre.setInt(2,  user.getNmc());
		pre.setLong(5,  user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	public void update_patient(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="update patient set name=?, address=?, arrival=?, discharge=?, phone=?, hr=?, dvisited=?, drappointed=?, ward=?, bed=? where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getName());
		pre.setString(2, user.getAddress());
		pre.setString(3, user.getArrival());
		pre.setString(4, user.getDischarge());
		pre.setString(6, user.getHr());	
		pre.setInt(11,  user.getId());
		pre.setString(7,  user.getDvisited());
		pre.setLong(5,  user.getPhone());
		pre.setString(8,  user.getDrappointed());
		pre.setInt(9,  user.getWard());
		pre.setInt(10,  user.getBed());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	public void updatens_anes(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="update nurse_anes set username=?, nmc=?, degree=?, shift=?, phone=? where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getUsername());
		pre.setString(3, user.getDegree());
		pre.setString(4, user.getShift());	
		pre.setInt(6,  user.getId());
		pre.setInt(2,  user.getNmc());
		pre.setLong(5,  user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void updatens_bs(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="update nurse_bs set username=?, nmc=?, degree=?, shift=?, phone=? where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getUsername());
		pre.setString(3, user.getDegree());
		pre.setString(4, user.getShift());	
		pre.setInt(6,  user.getId());
		pre.setInt(2,  user.getNmc());
		pre.setLong(5,  user.getPhone());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void deleteUser(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="delete from user where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	public void deleteDoc_anes(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="delete from doctor_anes where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	public void delete_app(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="delete from appointment where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	
	public void deletepat(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="delete from patient where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	
	public void deleteDoc_bs(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="delete from doctor_bs where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	public void deleteNs_anes(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="delete from nurse_anes where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	public void deleteNs_bs(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="delete from nurse_bs where id=?";
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setInt(1, user.getId());
		pre.executeUpdate();
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
	}
	
	public boolean validateUser(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select * from user where username=? and password=?";
		boolean success=false;
		try{
		PreparedStatement pre=con.prepareStatement(sql);
		pre.setString(1, user.getUsername());
		pre.setString(2, user.getPassword());
		ResultSet rs=pre.executeQuery();
		if(rs.next()){
			success=true;
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return success;
	}
	
	
		
	
	
	public List<user>getuser(){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from user";
		List<user> user=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user u=new user();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setPassword(rs.getString("password"));
			user.add(u);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user;
	}
	public List<user>getdoc_anes(){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from doctor_anes";
		List<user> user=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user u=new user();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setNmc(rs.getInt("nmc"));
			u.setDegree(rs.getString("degree"));
			u.setPhone(rs.getLong("phone"));
			u.setShift(rs.getString("shift"));
			user.add(u);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user;
	}
	
	public List<user>get_app(){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from appointment";
		List<user> user=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user u=new user();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setAddress(rs.getString("address"));
			u.setSymtom(rs.getString("symtom"));
			u.setShift(rs.getString("shift"));
			u.setDepartment(rs.getString("department"));
			u.setArrival(rs.getString("arrival"));
			u.setPhone(rs.getLong("phone"));
			user.add(u);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user;
	}
	
	
	
	
	public List<user> searchDocOpd(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from doctor_anes where upper(username) like '%"+user.getUsername().toUpperCase()+"%'"; 
		List<user> use=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			//pre.setString(1, "%"+user.getUsername()+"%");
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user user1=new user();
			user1.setId(rs.getInt("id"));
			user1.setUsername(rs.getString("username"));
			user1.setNmc(rs.getInt("nmc"));
			user1.setDegree(rs.getString("degree"));
			user1.setPhone(rs.getLong("phone"));
			user1.setShift(rs.getString("shift"));
			use.add(user1);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return use;
	}
	
	
	
	
	public List<user>getdoc_bs(){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from doctor_bs";
		List<user> user=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user u=new user();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setNmc(rs.getInt("nmc"));
			u.setDegree(rs.getString("degree"));
			u.setPhone(rs.getLong("phone"));
			u.setShift(rs.getString("shift"));
			user.add(u);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user;
	}
	
	
	
	public List<user>getns_anes(){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from nurse_anes";
		List<user> user=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user u=new user();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setNmc(rs.getInt("nmc"));
			u.setDegree(rs.getString("degree"));
			u.setPhone(rs.getLong("phone"));
			u.setShift(rs.getString("shift"));
			user.add(u);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user;
	}
	
	public List<user>get_patient(){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from patient";
		List<user> user=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user u=new user();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setAddress(rs.getString("address"));
			u.setArrival(rs.getString("arrival"));
			u.setPhone(rs.getLong("phone"));
			u.setHr(rs.getString("hr"));
			u.setDischarge(rs.getString("discharge"));
			u.setDvisited(rs.getString("dvisited"));
			u.setWard(rs.getInt("ward"));
			u.setDrappointed(rs.getString("drappointed"));
			u.setBed(rs.getInt("bed"));
			
			user.add(u);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user;
	}
	
	public List<user>getns_bs(){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from nurse_bs";
		List<user> user=new ArrayList<user>();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			ResultSet rs=pre.executeQuery();
		
		while(rs.next()){
			user u=new user();
			u.setId(rs.getInt("id"));
			u.setUsername(rs.getString("username"));
			u.setNmc(rs.getInt("nmc"));
			u.setDegree(rs.getString("degree"));
			u.setPhone(rs.getLong("phone"));
			u.setShift(rs.getString("shift"));
			user.add(u);
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user;
	}
	
	public user getuser(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from user where id=?";
		user user1=new user();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, user.getId());
			ResultSet rs=pre.executeQuery();
		
		if(rs.next()){
			user1.setId(rs.getInt("id"));
			user1.setUsername(rs.getString("username"));
			user1.setPassword(rs.getString("password"));
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user1;
	}
	public user getdoc_anes(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from doctor_anes where id=?";
		user user1=new user();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, user.getId());
			ResultSet rs=pre.executeQuery();
		
		if(rs.next()){
			user1.setId(rs.getInt("id"));
			user1.setUsername(rs.getString("username"));
			user1.setNmc(rs.getInt("nmc"));
			user1.setDegree(rs.getString("degree"));
			user1.setPhone(rs.getLong("phone"));
			user1.setShift(rs.getString("shift"));
			
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user1;
	}
	
	public user get_app(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from appointment where id=?";
		user user1=new user();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, user.getId());
			ResultSet rs=pre.executeQuery();
		
		if(rs.next()){
			user1.setId(rs.getInt("id"));
			user1.setUsername(rs.getString("username"));
			user1.setAddress(rs.getString("address"));
			user1.setSymtom(rs.getString("symtom"));
			user1.setShift(rs.getString("shift"));
			user1.setDepartment(rs.getString("department"));
			user1.setArrival(rs.getString("arrival"));
			user1.setPhone(rs.getLong("phone"));			
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user1;
	}
	
	
	
	public user getdoc_bs(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from doctor_bs where id=?";
		user user1=new user();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, user.getId());
			ResultSet rs=pre.executeQuery();
		
		if(rs.next()){
			user1.setId(rs.getInt("id"));
			user1.setUsername(rs.getString("username"));
			user1.setNmc(rs.getInt("nmc"));
			user1.setDegree(rs.getString("degree"));
			user1.setPhone(rs.getLong("phone"));
			user1.setShift(rs.getString("shift"));
			
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user1;
	}
	
	
	
	public user getns_anes(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from nurse_anes where id=?";
		user user1=new user();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, user.getId());
			ResultSet rs=pre.executeQuery();
		
		if(rs.next()){
			user1.setId(rs.getInt("id"));
			user1.setUsername(rs.getString("username"));
			user1.setNmc(rs.getInt("nmc"));
			user1.setDegree(rs.getString("degree"));
			user1.setPhone(rs.getLong("phone"));
			user1.setShift(rs.getString("shift"));
			
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user1;
	}
	public user getns_bs(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from nurse_bs where id=?";
		user user1=new user();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, user.getId());
			ResultSet rs=pre.executeQuery();
		
		if(rs.next()){
			user1.setId(rs.getInt("id"));
			user1.setUsername(rs.getString("username"));
			user1.setNmc(rs.getInt("nmc"));
			user1.setDegree(rs.getString("degree"));
			user1.setPhone(rs.getLong("phone"));
			user1.setShift(rs.getString("shift"));
			
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user1;
	}
	
	
	
	public user get_patient(user user){
		DBHelper db=new DBHelper();
		Connection con=db.getConnection();
		String sql="select *  from patient where id=?";
		user user1=new user();
		try{
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setInt(1, user.getId());
			ResultSet rs=pre.executeQuery();
		
		if(rs.next()){
			user1.setId(rs.getInt("id"));
			user1.setName(rs.getString("name"));
			user1.setAddress(rs.getString("address"));
			user1.setArrival(rs.getString("arrival"));
			user1.setPhone(rs.getLong("phone"));
			user1.setHr(rs.getString("hr"));
			user1.setDischarge(rs.getString("discharge"));
			user1.setDvisited(rs.getString("dvisited"));
			user1.setWard(rs.getInt("ward"));
			user1.setDrappointed(rs.getString("drappointed"));
			user1.setBed(rs.getInt("bed"));
			
			
		}
		pre.close();}
		catch(SQLException e){
			e.printStackTrace();
		}
		db.closeConnection(con);
		return user1;
	}
	
}


