trigger AccountAddressTrigger on Account (before insert, before update) {
    // Account 업설트시
    // Match_Billing_Address__c 체크박스 값에 따라 
    // ShippingPostalCode 값을 BillingPostalCode 와 동일하게 만듬

    if (Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate))
    {
        for(Account chk : Trigger.new)
        {
            if(chk.Match_Billing_Address__c == true )
            {
                chk.ShippingPostalCode = chk.BillingPostalCode;
            }
        }
    }
    
}