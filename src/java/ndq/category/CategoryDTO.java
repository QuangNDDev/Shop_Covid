/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ndq.category;

/**
 *
 * @author Quang Nguyen
 */
public class CategoryDTO {
    private String categoryID,categoryName,image;

    public CategoryDTO() {
    }

    public CategoryDTO(String categoryID, String categoryName,String image) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.image=image;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
            
}
