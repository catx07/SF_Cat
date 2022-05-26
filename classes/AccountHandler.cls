public class AccountHandler {
    
    public static Account insertNewAccount(String acc_name){
        //전달받은 acc_name 를 Name 으로 하여 acc record 를 insert 함
        //오류시 NULL 반환

        Account acc = new Account(Name=acc_name);

        try {
            insert acc;
            return acc;
        } catch (DmlException e) {
            //오류 발생시 NULL 반환
            return NULL;
        }
        
    }
}