//트레일 이메일 클레스 샘플
public class MyEmail {
    
    public static void sendHello(List<String> Addresses){

        Messaging.reserveSingleEmailCapacity(2);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        String[] toAddresses = Addresses; 

        mail.setToAddresses(toAddresses);

        mail.setReplyTo('support@acme.com');
        

        mail.setSenderDisplayName('Salesforce Support');
        

        mail.setSubject('New Case Created : ' + case.Id);
        

        mail.setBccSender(false);
        
        mail.setUseSignature(false);
        
        mail.setPlainTextBody('Your Case: ' + case.Id +' has been created.');
        
        mail.setHtmlBody('Your case:<b> ' + case.Id +' </b>has been created.<p>'+
                         'To view your case <a href=https://MyDomainName.my.salesforce.com/'+case.Id+'>click here.</a>');
        
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        
        
        
    }
    
}