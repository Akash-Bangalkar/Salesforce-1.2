public class CircularDependencyClassA {
    public static void methodA() {
        CircularDependencyClassB.methodB();
        System.debug('Method A');
    }
}