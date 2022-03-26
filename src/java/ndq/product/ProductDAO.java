/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ndq.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import ndq.category.CategoryDAO;
import ndq.utils.DBHelper;

/**
 *
 * @author Quang Nguyen
 */
public class ProductDAO {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public List<ProductDTO> getAllProductUser() throws Exception {

        List<ProductDTO> result = null;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "SELECT productID,productName,image,categoryID,status,price,quantity FROM Products where status='Active' and quantity>0";

                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String image = rs.getString("image");
                    String categoryID = rs.getString("categoryID");
                    String status = rs.getString("status");
                    float price = rs.getFloat("price");
                    int quantity = rs.getInt("quantity");
                    ProductDTO product = new ProductDTO(productID, productName, image, categoryID, status, quantity, price);
                    if (result == null) {
                        result = new ArrayList<>();
                    }
                    result.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return result;
    }

    public List<ProductDTO> getAllProductAdmin() throws Exception {

        List<ProductDTO> result = null;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "SELECT productID,productName,image,categoryID,status,price,quantity FROM Products ";

                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String image = rs.getString("image");
                    String categoryID = rs.getString("categoryID");
                    String status = rs.getString("status");
                    float price = rs.getFloat("price");
                    int quantity = rs.getInt("quantity");
                    CategoryDAO categoryDAO = new CategoryDAO();
                    ProductDTO product = new ProductDTO(productID, productName, image, categoryDAO.getNameByID(categoryID), status, quantity, price);
                    if (result == null) {
                        result = new ArrayList<>();
                    }
                    result.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return result;
    }

    public List<ProductDTO> getProductByCateID(String cateID) throws Exception {

        List<ProductDTO> result = null;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "SELECT productID,productName,image,categoryID,status,price,quantity FROM Products WHERE categoryID=? and status='Active' and quantity>0";

                ps = con.prepareStatement(sql);
                ps.setString(1, cateID);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String image = rs.getString("image");
                    String categoryID = rs.getString("categoryID");
                    String status = rs.getString("status");
                    float price = rs.getFloat("price");
                    int quantity = rs.getInt("quantity");
                    ProductDTO product = new ProductDTO(productID, productName, image, categoryID, status, quantity, price);
                    if (result == null) {
                        result = new ArrayList<>();
                    }
                    result.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return result;
    }

    public ProductDTO getProductByID(String productID) throws Exception {

        ProductDTO result = null;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "SELECT productID,productName,image,categoryID,status,price,quantity FROM Products WHERE productID=? ";

                ps = con.prepareStatement(sql);
                ps.setString(1, productID);
                rs = ps.executeQuery();
                while (rs.next()) {

                    String productName = rs.getString("productName");
                    String image = rs.getString("image");
                    String categoryID = rs.getString("categoryID");
                    String status = rs.getString("status");
                    float price = rs.getFloat("price");
                    int quantity = rs.getInt("quantity");
                    result = new ProductDTO(productID, productName, image, categoryID, status, quantity, price);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return result;
    }

    public int getQuantityByID(String productID) throws Exception {
        int quantity = 0;
        String sql = "select quantity from Products where productID=?";
        try {
            con = DBHelper.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {
                quantity = rs.getInt("quantity");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return quantity;
    }

    public boolean updateQuantity(String productID, int quantity) throws Exception {
        boolean check = false;
        try {
            con = new DBHelper().getConnection();
            if (con != null) {
                String sql = "update Products set quantity=? where productID=?";
                ps = con.prepareStatement(sql);
                ps.setInt(1, quantity);
                ps.setString(2, productID);
                check = ps.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return check;
    }

    public List<ProductDTO> pagingProduct(int index) throws Exception {
        List<ProductDTO> list = new ArrayList<>();
        String sql = "SELECT productID,productName,image,categoryID,status,price,quantity from Products \n"
                + "ORDER BY productID\n"
                + "OFFSET ? rows FETCH next 9 rows only";
        try {
            con = new DBHelper().getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                String productID = rs.getString("productID");
                String productName = rs.getString("productName");
                String image = rs.getString("image");
                String categoryID = rs.getString("categoryID");
                String status = rs.getString("status");
                float price = rs.getFloat("price");
                int quantity = rs.getInt("quantity");
                CategoryDAO categoryDAO = new CategoryDAO();
                ProductDTO product = new ProductDTO(productID, productName, image, categoryDAO.getNameByID(categoryID), status, quantity, price);
                if (list == null) {
                    list = new ArrayList<>();
                }
                list.add(product);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return list;
    }

    public boolean deleteProduct(String productID) throws Exception {
        boolean check = false;
        try {
            con = new DBHelper().getConnection();
            if (con != null) {
                String sql = "update Products set status=? where productID=?";
                ps = con.prepareStatement(sql);
                ps.setString(1, "Inactive");
                ps.setString(2, productID);
                check = ps.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return check;
    }

    public boolean checkProductID(String productID) throws Exception {
        boolean check = false;
        String sql = "select productName from Products where productID=?";
        try {
            con = DBHelper.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            if (rs.next()) {
                check = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return check;
    }

    public boolean addNewProduct(ProductDTO product) throws Exception {

        boolean check = false;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "insert into Products(productID,productName,image,categoryID,status,price,quantity) values(?,?,?,?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, product.getProductID());
                ps.setString(2, product.getProductName());
                ps.setString(3, product.getImage());
                ps.setString(4, product.getCategoryID());
                ps.setString(5, product.getStatus());
                ps.setFloat(6, product.getPrice());

                ps.setInt(7, product.getQuantity());

                check = ps.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return check;
    }

    public boolean updateProduct(ProductDTO product) throws Exception {
        boolean check = false;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "update Products set productName=?,image=?,categoryID=?,status=?,price=?,quantity=? where productID=? ";
                ps = con.prepareStatement(sql);

                ps.setString(1, product.getProductName());
                ps.setString(2, product.getImage());
                ps.setString(3, product.getCategoryID());
                ps.setString(4, product.getStatus());
                ps.setFloat(5, product.getPrice());
                ps.setInt(6, product.getQuantity());
                ps.setString(7, product.getProductID());
                check = ps.executeUpdate() > 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return check;
    }

    public List<ProductDTO> getProductByName(String name) throws Exception {

        List<ProductDTO> result = null;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "SELECT productID,productName,image,categoryID,status,price,quantity FROM Products where productName like ?";

                ps = con.prepareStatement(sql);
                ps.setString(1, "%" + name + "%");
                rs = ps.executeQuery();
                while (rs.next()) {
                    String productID = rs.getString("productID");
                    String productName = rs.getString("productName");
                    String image = rs.getString("image");
                    String categoryID = rs.getString("categoryID");
                    String status = rs.getString("status");
                    float price = rs.getFloat("price");
                    int quantity = rs.getInt("quantity");
                    ProductDTO product = new ProductDTO(productID, productName, image, categoryID, status, quantity, price);
                    if (result == null) {
                        result = new ArrayList<>();
                    }
                    result.add(product);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeConnection(rs, ps, con);
        }
        return result;
    }
}
