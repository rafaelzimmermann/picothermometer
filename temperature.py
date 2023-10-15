import dht
import machine


class Temperature:

    def __init__(self, pin: int = 22):
        self.dht_sensor = dht.DHT11(machine.Pin(pin))

    def measure(self):
        return self.dht_sensor.measure()

    def temperature(self):
        return self.dht_sensor.temperature()
    
    def humidity(self):
        return self.dht_sensor.humidity()
