//QOne 이 완료되면
public class QTwo implements Queueable {
    public void execute(QueueableContext context) {
		system.debug('QTwo executed');
        QThree QThree = new QThree();
        ID jobID = System.enqueueJob(QThree);
    }
}