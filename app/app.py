import os.path
import sys
import time

class GPIO:

    def __init__(self, pin):
        self.pin = pin
        if not os.path.isdir("/sys/class/gpio/gpio%d" %(self.pin)):
            interface = open("/sys/class/gpio/export","w")
            interface.write(str(self.pin))
            interface.close()
        direction = open("/sys/class/gpio/gpio%d/direction" %(self.pin),"w")
        direction.write("out")
        direction.close()

    def setValue(self, value):
        value = open("/sys/class/gpio/gpio%d/value" %(self.pin),"w")
        value.write(value)
        
    def high(self):
        self.setValue(str(1))
        
    def low(self):
        self.setValue(str(0))

if __name__ == "__main__":
    LED = GPIO(8)
    while True:
        LED.high()
        time.sleep(.5)
        LED.low()
        time.sleep(.5)
