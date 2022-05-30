global class ScheduleContacts implements Schedulable {
    global void execute(SchedulableContext SC) {
        Id batchJobId = Database.executeBatch(new ContactUpdateBatch(), 200); // 15
        
    }
}