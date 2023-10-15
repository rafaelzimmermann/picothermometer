import time

from temperature import Temperature
from display import Display

temp = Temperature(pin=22)
display = Display(scl=17, sda=16)
while(True):
    temp.measure()
    display.clear()
    display.print(f"Temperature: {str(temp.temperature())}C")
    display.new_line()
    display.print(f"Humidity:    {str(temp.humidity())}%")
    time.sleep(10)



