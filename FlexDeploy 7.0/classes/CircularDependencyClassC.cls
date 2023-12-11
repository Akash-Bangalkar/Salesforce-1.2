public class CircularDependencyClassC {
    public static void methodC() {
        CircularDependencyClassA.methodA();
        System.debug('Method C');
    }
}