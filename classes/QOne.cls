//큐어블 연습
public class QOne implements Queueable {
    Account acc;
    Integer points;
    //생성자
    public QOne(Account acc){
        this.acc = acc;
    }
    public QOne(Account acc, integer points){
        this.acc = acc;
        this.points = points;
    }    
    public void execute(QueueableContext context) {
		system.debug('QOne executed');
        system.debug('ACC' + acc + points);
        QTwo QTwo = new QTwo();
        ID jobID = System.enqueueJob(QTwo);
        //jobID 로 현황 추적가능
        system.debug('One Done');
    }
}