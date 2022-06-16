//연습
public class StringArrayTest {
    public static String[] generateStringArray(integer n){
        List<String> result_list = new List<String>();
        for (integer i=0;i<n;i++){
            result_list.add('Test ' + String.valueOf(i) );
        }
        system.debug(result_list);
        //List = Array 구분하지 않는다.
        return result_list;
    }
}