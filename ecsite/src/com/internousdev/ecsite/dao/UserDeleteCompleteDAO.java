package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;


public class UserDeleteCompleteDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public int deleteUserInfo(String loginId) throws SQLException {
		String sql = "delete from login_user_transaction where login_id=?";

		int result = 0;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, loginId);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return result;
	}
}
