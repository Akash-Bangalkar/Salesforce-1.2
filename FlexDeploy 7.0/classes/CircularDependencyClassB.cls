public class CircularDependencyClassB {
    public static void methodB() {
        CircularDependencyClassC.methodC();
        System.debug('Method B');
    }
}