package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;

public class BuyItemDAO {
	public BuyItemDTO getBuyItemInfo() {
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		BuyItemDTO buyItemDTO = new BuyItemDTO();

		String sql = "select id,item_name,item_price, item_stock from item_info_transaction";
//		商品情報を全て取得するSQL文を書きます。

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				buyItemDTO.setId(rs.getInt("id"));
				buyItemDTO.setItemName(rs.getString("item_name"));
				buyItemDTO.setItemPrice(rs.getString("item_price"));
				buyItemDTO.setItemStock(rs.getInt("item_stock"));
//				DBから取得した情報をDTOクラスに格納します。
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return buyItemDTO;
//		ActionクラスにDTOクラスを返す
	}

}
