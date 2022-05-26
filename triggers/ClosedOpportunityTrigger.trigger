trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    // Stage 가 Closed Won 되면 기회와 연결된 Task 생성 
    
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate)) // AFTER - INSERT UPDATE
    {
        List<Opportunity> opps = [SELECT Id, StageName FROM Opportunity WHERE StageName = 'Closed Won' AND Id IN :Trigger.New];
        List<Task> tasks = new List<Task>(); //upsert 할 task 리스트
        
        for (Opportunity opp : opps )
        {
            Task tmp_tsk = New Task();
            tmp_tsk.Subject = 'Follow Up Test Task';
            tmp_tsk.WhatId = opp.Id;
            tmp_tsk.Priority = 'Normal';
            tmp_tsk.Status = 'Not Stated';
            tasks.add(tmp_tsk);
        }
        
        upsert tasks;        
    }
    
    
}