public class AwesomeProductController {
	@AuraEnabled
    public static List<Product2> getProducts() {
        return [SELECT Id, Name, ProductCode, Description, Family, ExternalId FROM Product2];
    }
    
    @AuraEnabled
    public static Product2 getProductByName(String name) {
        return [SELECT Id, Name, ProductCode, Description, Family, ExternalId 
                FROM Product2 
                where Name = :name];
    }
}