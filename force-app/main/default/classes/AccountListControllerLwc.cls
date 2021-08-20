public  class AccountListControllerLwc {
 

    public AccountListControllerLwc() {
 

    }
 

    @AuraEnabled (cacheable = true)
 

    public static List<Account> queryAccountsByRevenue(Decimal annualRevenue){
 

        return [Select Id,Name,annualRevenue from account where annualRevenue >=: annualRevenue];
 

    }
 

}