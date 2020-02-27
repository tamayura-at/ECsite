package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserListDeleteCompleteDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public int deleteUserList() throws SQLException {

		String sql = "delete from login_user_transaction where admin_flg is null or admin_flg <> '1'" ;

		int result = 0;

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return result;
	}

}
