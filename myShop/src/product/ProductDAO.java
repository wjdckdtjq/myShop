package product;

import java.sql.*;
import java.util.ArrayList;


public class ProductDAO {

	DBConnectionMgr pool;
	Connection con;

	public ProductDAO() {
		// TODO Auto-generated constructor stub
		pool = DBConnectionMgr.getInstance();
	}

	public ProductDTO getInfo(String pId) throws Exception {
		con = pool.getConnection();

	
		String sql = "select * from product where pId = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, pId);

		
		ResultSet rs = ps.executeQuery();
		ProductDTO dto = new ProductDTO();
		while (rs.next()) {
			dto.setpId(rs.getString("pId"));
			dto.setName(rs.getString("name"));
			dto.setEx(rs.getString("ex"));
			dto.setPrice(rs.getString("price"));
			
		
		}
		pool.freeConnection(con, ps, rs);
		return dto;

	}


	public ArrayList<ProductDTO> getInfoALL() throws Exception {
		con = pool.getConnection();

		String sql = "select * from product";
		PreparedStatement ps = con.prepareStatement(sql);


		ResultSet rs = ps.executeQuery();
		ArrayList<ProductDTO> list = new ArrayList<>();
		while (rs.next()) {
			ProductDTO dto = new ProductDTO();
			dto.setpId(rs.getString("pId"));
			dto.setName(rs.getString("name"));
			dto.setEx(rs.getString("ex"));
			dto.setPrice(rs.getString("price"));
			list.add(dto);
		}
		pool.freeConnection(con, ps, rs);
		return list;

	}

	
	
	   public void addProduct(ProductDTO dto) throws Exception {
		   
		   String sql = "insert into product values(?,?,?,?)";
		   
		   con = pool.getConnection();
		   PreparedStatement pstmt = con.prepareStatement(sql);
		   	   
		   pstmt.setString(1, dto.getpId());
		   pstmt.setString(2, dto.getName());
		   pstmt.setString(3, dto.getEx());
		   pstmt.setString(4, dto.getPrice());
		  
		   
		   pstmt.executeUpdate();
		   
		   pool.freeConnection(con, pstmt);
	   }
	   
	   public void updateProduct(ProductDTO dto) throws Exception {
		   
		   String sql = "update product set name=?, ex=?, price=? where pId=?";
		   
		   con = pool.getConnection();
		   PreparedStatement pstmt = con.prepareStatement(sql);

		   pstmt.setString(1, dto.getName());
		   pstmt.setString(2, dto.getEx());
		   pstmt.setString(3, dto.getPrice());
		   pstmt.setString(4, dto.getpId());
		   pstmt.executeUpdate();
		   
		   pool.freeConnection(con, pstmt);
	   }
	   
	   public void deleteProduct(String pId) throws Exception {
		   
		   String sql = "delete from product where pId='" + pId + "'";
		   
		   con = pool.getConnection();
		   PreparedStatement pstmt = con.prepareStatement(sql);
		   
		   pstmt.executeUpdate();
		   
		   pool.freeConnection(con, pstmt);
	   }
	   
		
		public ArrayList<ProductDTO> getCheckOutInfo(String pId) throws Exception {
			con = pool.getConnection();

			
			String sql = "select * from product where pid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pId);
			ResultSet rs = ps.executeQuery();
			ArrayList<ProductDTO> list = new ArrayList<>();
			while (rs.next()) {
				
				ProductDTO dto = new ProductDTO();
				dto.setpId(rs.getString("pid"));
				dto.setName(rs.getString("name"));
				dto.setEx(rs.getString("ex"));
				dto.setPrice(rs.getString("price"));
				list.add(dto);
			}
			pool.freeConnection(con, ps, rs);
			return list;

		}
	
}
