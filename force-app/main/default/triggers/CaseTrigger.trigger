trigger CaseTrigger on Case (before insert, after insert, before update,before delete) {
    system.debug('isBefore ' + Trigger.isBefore);
    system.debug('isUpdate ' + Trigger.isUpdate);
    system.debug('isInsert ' + Trigger.isInsert);
    
    if(Trigger.isBefore && (Trigger.isUpdate || Trigger.isInsert|| Trigger.isdelete)){
		system.debug('old'+ Trigger.old);
        system.debug('new'+ Trigger.new);
        system.debug('oldmap' + Trigger.oldmap);
        system.debug('newmap' + Trigger.newmap);        
        
    }
}