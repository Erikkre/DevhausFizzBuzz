import org.junit.Test;
import static junit.framework.TestCase.assertEquals;

class DevhausFizzBuzz {

    static String outputtedString = "", currentString = "";

    public static void main(String[] args) {
        for (int i=1; i<=105;i++) {
            if (i%3==0 && i%5==0 && i%7==0) {
                currentString="Devhaus Learning Model";
            } else if (i%3==0 && i%7==0) {
                currentString="Devhaus Model";
            } else if (i%3==0 && i%5==0) {
                currentString="Devhaus Learning";
            } else if (i%7==0) {
                currentString="Model";
            } else if (i%5==0) {
                currentString="Learning";
            } else if (i%3==0) {
                currentString="Devhaus";
            } else {
                currentString=Integer.toString(i);
            }
            System.out.println(currentString);
            outputtedString += currentString+"\n";
        }
        testLast8LinesOfFizzBuzz();
    }

    @Test
    static void testLast8LinesOfFizzBuzz(){
        String[] outputs = outputtedString.split("\\R");
        assertEquals("Devhaus Learning Model", outputs[104]);
        assertEquals("104", outputs[103]);
        assertEquals("103", outputs[102]);
        assertEquals("Devhaus", outputs[101]);
        assertEquals("101", outputs[100]);
        assertEquals("Learning", outputs[99]);
        assertEquals("Devhaus", outputs[98]);
        assertEquals("Model", outputs[97]);
    }
}
