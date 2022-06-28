# Imports
import RPi.GPIO as GPIO
import time
#from time import sleep, time # Unsued import
import datetime

# GPIO Setup
GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

# Variablen Definition
LED_GREEN, LED_RED, LED_BLUE = 19, 13, 26 # Wrong Pins
MOTION_DETECTOR, PUSH_BUTTON = 23, 24 # Wrong Pins

# GPIO Pin Setup
GPIO.setup((LED_GREEN, LED_RED, LED_BLUE), GPIO.OUT)
GPIO.setup((MOTION_DETECTOR, PUSH_BUTTON), GPIO.IN)

# PWM Setup
pwm = GPIO.PWM(LED_RED, 50)


# Returns 0 at night and 1 at day
def get_daytime():
    if datetime.datetime.now().hour < 6 or datetime.datetime.now().hour > 18:
        return 0
    else:
        return 1

# Turn on LED
def turn_on_led():
    print("LED B")
    dc = 0.0 # Value in %
    pwm.start(dc) # Wrong in Green Section

    day = get_daytime()
    if day:
        dc = 100
        print("ON")
        #GPIO.output(LED_RED, GPIO.HIGH)
        pwm.ChangeDutyCycle(dc)
    else:
        dc = 20
        print("OFF")
        #GPIO.output(LED_RED, GPIO.LOW)
        pwm.ChangeDutyCycle(dc)
    time.sleep(5) # Replaced sleep() with time.sleep()
    pwm.stop()
    print("LED E")

def push_button_function(null):
    print("Button")
    turn_on_led()

def motion_detector_function(null):
    turn_on_led()
    print("BWM")

# GPIO event setup
GPIO.add_event_detect(PUSH_BUTTON, GPIO.FALLING, callback=push_button_function, bouncetime=200)
GPIO.add_event_detect(MOTION_DETECTOR, GPIO.RISING, callback=motion_detector_function)



try:
    print("Programmstart. STRG + C zum Abbruch")
    # Hauptprogrammschleife ab hier
    while True:
        time.sleep(0.2)

except KeyboardInterrupt:
    print("Programmabbruch.")
finally:
    GPIO.cleanup()