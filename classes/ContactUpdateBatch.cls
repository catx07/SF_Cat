// #1 커스텀 로그 코드 추가
public with sharing class ContactUpdateBatch implements Database.Batchable<sObject>{
    //start method logic here SOQL query 를 통해서 불러오고 싶은 레코드를 불러온다
    private static CustomLog appLogger = new CustomLog(ContactUpdateBatch.class.getName());
    
    public Database.QueryLocator start(Database.BatchableContext BC)
    {
        
        String query = 'SELECT Id, LastName, Phone FROM Contact WHERE LastName Like \'Kim%\'';


        return Database.getQueryLocator(query);
        // 스타트 메서드는 한번만 실행됨
    }
    
    public void execute(Database.BatchableContext BC, List<Contact> scope)
    {
        List<Contact> conList = new List<Contact>();
        for(Contact con: scope){
            Integer ph = Integer.valueOf(con.Phone); 
            ph = ph +1;
            String phStr = String.valueOf(ph);
            con.phone = phStr;
            system.debug('con.phone = ' + con.phone);
			system.debug('con = ' + con);
            conList.add(con);
            
        }
        update conList; //실제 데이터베이스 반영되는 statement 명령어.
    }
    
    public void finish(Database.BatchableContext BC)
    {
        //커스텀 로그 작성
        appLogger.push('Finish method entered');
        appLogger.push('234');
        appLogger.log();
    }
}