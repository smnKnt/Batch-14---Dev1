public class Cat {
    public string name;
    public string color;

    public integer publicCount = 0;
    public static integer staticCount = 0;

    public Cat() {
        System.debug('cat non-parameterized constructor called');
        System.debug(publicCount);
        System.debug(staticCount);
        publicCount ++;
        staticCount ++;
    }

    public Cat(string n, string clr) {
        System.debug('cat parameterized constructor called');
        name = n;
        color = clr;
        sleeping();
    }
    public void sleeping() {
        System.debug(name + ' is sleeping.');
    }

    public static void methodTest(){
        System.debug('static method');
    }
}
