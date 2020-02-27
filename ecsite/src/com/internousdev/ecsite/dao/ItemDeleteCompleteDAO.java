package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class ItemDeleteCompleteDAO {
	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public int deleteItem(String id) throws SQLException {
		String sql = "delete from item_info_transaction where id=?";
		int result = 0;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			result = ps.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return result;
	}
}
