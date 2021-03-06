trigger HelloEmail on Contact (after insert) {
    // 새로운 Contact Record 추가시 환영메일 전송
    // 이메일 주소가 공란이면 전송하지 않는다.
    // 
    if(Trigger.isAfter && Trigger.isInsert) //After Insert
    {
        List<String> toMailList = new List<String>(); //이메일 리스트 초기화
        for(Contact con : Trigger.new)
        {
            if(con.Email.length() != NULL){ toMailList.add(con.Email) ;}
        }
        if (toMailList.size() != 0){
            MyEmail.sendHello(toMailList);     
        }
    }
    
}