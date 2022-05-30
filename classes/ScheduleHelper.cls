global class ScheduleHelper {
    @InvocableMethod //flow 에서 사용할 수 있게함
    public static void enqueueSchJob() {
        ScheduleContacts m = new ScheduleContacts();
      //Cron Expression : 
        String sch = '0 41 22 8 4 ? 2022';
        String jobID = system.schedule('Schedule Job', sch, m);
    }
}