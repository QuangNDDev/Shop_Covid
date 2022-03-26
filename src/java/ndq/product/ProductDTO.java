/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ndq.product;

/**
 *
 * @author Quang Nguyen
 */
public class ProductDTO {

    private String productID, productName, image, categoryID, status;
    private int quantity;
    private float price;

    public ProductDTO() {
    }

    public ProductDTO(String productID, String productName, String image, String categoryID, String status, int quantity, float price) {
        this.productID = productID;
        this.productName = productName;
        this.image = image;
        this.categoryID = categoryID;
        this.status = status;
        this.quantity = quantity;
        this.price = price;
    }

    public ProductDTO(String productID, String productName, String image, String status) {
        this.productID = productID;
        this.productName = productName;
        this.image = image;
        this.status = status;
    }

    public ProductDTO(String productID, String productName) {
        this.productID = productID;
        this.productName = productName;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
