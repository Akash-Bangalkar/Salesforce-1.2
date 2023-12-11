public class CircularDependencyClassB {
    public static void methodB() {
        CircularDependencyClassA.methodA();
        System.debug('Method B');
    }
}