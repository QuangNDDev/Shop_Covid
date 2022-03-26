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
public class AddProductError {
    private String productIDError,productNameError,statusError,quantityError,priceError;

    public AddProductError() {
    }

    public AddProductError(String productIDError, String productNameError, String statusError, String quantityError, String priceError) {
        this.productIDError = productIDError;
        this.productNameError = productNameError;
        this.statusError = statusError;
        this.quantityError = quantityError;
        this.priceError = priceError;
    }

    public String getProductIDError() {
        return productIDError;
    }

    public void setProductIDError(String productIDError) {
        this.productIDError = productIDError;
    }

    public String getProductNameError() {
        return productNameError;
    }

    public void setProductNameError(String productNameError) {
        this.productNameError = productNameError;
    }

    public String getStatusError() {
        return statusError;
    }

    public void setStatusError(String statusError) {
        this.statusError = statusError;
    }

    public String getQuantityError() {
        return quantityError;
    }

    public void setQuantityError(String quantityError) {
        this.quantityError = quantityError;
    }

    public String getPriceError() {
        return priceError;
    }

    public void setPriceError(String priceError) {
        this.priceError = priceError;
    }
    
}
