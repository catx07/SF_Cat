//에러 복구용 임시 클레스
global class gg {
   @InvocableMethod
   public static List<String> getAccountIds(List<String> names) {
      List<Id> accountIds = new List<Id>();
      List<Account> accounts = [SELECT Id FROM Account WHERE Name in :names];
      for (Account account : accounts) {
         accountIds.add(account.Id);
      }
      return accountIds;
   }
}