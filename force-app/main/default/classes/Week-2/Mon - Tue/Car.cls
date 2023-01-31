public class Car {
    //variables created directly in class are class variables.
    //class variables can have access modifiers.
    public string carColor = ''; //white
    public string carName; //polo

    //default is private
    integer maxSpeed = 140;

    private void testVariable(){
        System.debug(carColor);
        System.debug(carName);
    }
    
    public void switchOn(){
        system.debug('starting the car nowww!');
        drive();

       
    }

    private void drive(){
        system.debug('driving ' + carName);//will this work?
        driveAtMaxSpeed();
    }

    public void driveAtMaxSpeed(){
        //we can access public and private class varibles inside public method of the class.
        string description = 'driving ' + carName + ' with car color ' + carColor + ' at ' + maxSpeed + 'km/h';
        system.debug(description);
    }
}