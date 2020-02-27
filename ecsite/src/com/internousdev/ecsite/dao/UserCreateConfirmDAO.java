package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.util.DBConnector;

public class UserCreateConfirmDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public boolean isExistUser(String loginUserId) {
		String sql = "select count(*) as count from login_user_transaction where login_id=?";
//		where以後の条件に引っかかるものをcountという名前をつけて数(件数)として持ってくる。
		boolean result = false;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginUserId);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				if(rs.getInt("count") > 0) {
					result = true;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
