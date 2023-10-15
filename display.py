from machine import Pin, I2C
from lcd_i2c import LCD

I2C_ADDR = 0x27
NUM_ROWS = 2
NUM_COLS = 16

class Display:
    def __init__(self, scl: int = 17, sda: int = 16):
        i2c = I2C(0, scl=Pin(scl), sda=Pin(sda), freq=800000)
        self.lcd = LCD(addr=I2C_ADDR, cols=NUM_COLS, rows=NUM_ROWS, i2c=i2c)
        self.lcd.begin()

    def print(self, text: str):
        self.lcd.print(text)

    def new_line(self):
        self.lcd.set_cursor(0, 1)

    def clear(self):
        self.lcd.clear()
        self.lcd.set_cursor(0, 0)
    
    def home(self):
        self.lcd.home()

    