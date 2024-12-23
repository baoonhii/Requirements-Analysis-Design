import java.util.Date;

/*CompanyAdmin Class*/
public class CompanyAdmin {
    private String coAdminID;
    private String adminName;
    private String adminPassword;
    private String email;
    private String role;

    public CompanyAdmin (String coAdminID, String adminName, String adminPassword, String email, String role) {
        this.coAdminID = coAdminID;
        this.adminName = adminName;
        this.adminPassword = adminPassword;
        this.email = email;
        this.role = role;
    }

    public String getCoAdminID() {
        return coAdminID;
    }

    public String getCoAdminName() {
        return adminName;
    }

    public String getCoAdminPassword() {
        return adminPassword;
    }

    public String getCoEmail() {
        return email;
    }

    public String getRole() {
        return role;
    }

    public void createGoodsReceivedNote(String receivedID, Date date) {
        //Create a new Goods Received Note when import goods
    }

    public void enterNoteDetails(String receivedID, String productID, int quantity) {
        //Enter the details of Received Note
    }

    public void createGoodsDeliveryNote(String deliveryNoteID, Date date, String status, String deliveryAddress, String storeID) {
        //Create a new GoodsDeliveryNote when delivery goods to agents' retail store
    }

    public void enterDeliveryNoteDetails(String deliveryNoteID, String productID, int quantity) {
        //Enter the details of Delivery Note
    }
}

/*Product Class*/
public class Product {
    private String productID;
    private String coAdminID;
    private String barcode;
    private String productName;
    private int importPrice;
    private int retailPrice;
    private Date creationDate;
    private int quantity;
    private String category;

    public Product(String productID, String coAdminID, String barcode, String productName, int importPrice, int retailPrice, Date creationDate, int quantity, String category) {
        this.productID = productID;
        this.coAdminID = coAdminID;
        this.barcode = barcode;
        this.productName = productName;
        this.importPrice = importPrice;
        this.retailPrice = retailPrice;
        this.creationDate = creationDate;
        this.quantity = quantity;
        this.category = category;
    }

    public String getProductID() {
        return productID;
    }

    public String getBarcode() {
        return barcode;
    }

    public String getProductName() {
        return productName;
    }

    public int getImportPrice() {
        return importPrice;
    }

    public int getRetailPrice() {
        return retailPrice;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getCategory() {
        return category;
    }

    public void updateQuantity(String productID, int quantity) {
        //Update the quantity of product when company admin creates new goods received note
        //Update the quantity of product when company admin creates new goods delivery notes
    }
}

/*GoodReceive Class*/
public class GoodReceive {
    private String receivedID;
    private String coAdminID;
    private Date date;
    private int totalPrice;

    public GoodReceive (String receivedID, String coAdminID, Date date, int totalPrice) {
        this.receivedID = receivedID;
        this.coAdminID = coAdminID;
        this.date = date;
        this.totalPrice = totalPrice;
    }

    public String getReceivedID() {
        return receivedID;
    }

    public Date getDate() {
        return date;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public GoodReceive createGoodsReceivedNote(String receivedID, Date date) {
        //Create a new Goods Received Note and save it into database
    }
}

/*Receipt Class*/
public class Receipt {
    private String receivedID;
    private String productID;
    private int quantity;
    private int price;

    public Receipt(String receivedID, String productID, int quantity, int price) {
        this.receivedID = receivedID;
        this.productID = productID;
        this.quantity = quantity;
        this.price = price;
    }

    public String getReceivedID() {
        return receivedID;
    }

    public String getProductID() {
        return productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getPrice() {
        return price;
    }

    public Receipt enterNoteDetails(String receivedID, String productID, int quantity) {
        //Enter the details of the note and save it into the database
    }
}

/*DeliveryNote Class*/
public class DeliveryNote {
    private String deliveryNoteID;
    private String coAdminID;
    private Date date;
    private String status;
    private String deliveryAddress;
    private String storeID;

    public DeliveryNote(String deliveryNoteID, String coAdminID, Date date, String status, String deliveryAddress, String storeID) {
        this.deliveryNoteID = deliveryNoteID;
        this.coAdminID = coAdminID;
        this.date = date;
        this.status = status;
        this.deliveryAddress = deliveryAddress;
        this.storeID = storeID;
    }

    public String getDeliveryNoteID() {
        return deliveryNoteID;
    }

    public Date getDate() {
        return date;
    }

    public String getStatus() {
        return status;
    }

    public String getDeliveryAddress() {
        return deliveryAddress;
    }
    
    public DeliveryNote createGoodsDeliveryNote(String deliveryNoteID, Date date, String status, String deliveryAddress, String storeID) {
        //Create a delivery note to delivery to agents and save this into the database
    }
}

/*Note Class*/
public class Note {
    private String deliveryNoteID;
    private String productID;
    private int quantity;

    public Note(String deliveryNoteID, String productID, int quantity) {
        this.deliveryNoteID = deliveryNoteID;
        this.productID = productID;
        this.quantity = quantity;
    }

    public String getDeliveryNoteID() {
        return deliveryNoteID;
    }

    public String getProductID() {
        return productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public Note enterDeliveryNoteDetails(String deliveryNoteID, String productID, int quantity) {
        //Enter the details of Delivery Note and save it into database
    }
}

/*Inventory Class*/
public class Inventory {
    private String productID;
    private String storeID;
    private int quantity;

    public String getProductID() {
        return productID;
    }

    public String getStoreID() {
        return storeID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void updateInventory(String productID, String storeID, int quantity) {
        //Update the inventory of each agents' retail store when company admin creates a new Goods Delivery Note
    }
}
