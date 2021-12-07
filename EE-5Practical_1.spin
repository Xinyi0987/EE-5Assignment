{

  Project: EE-5 Practical 1
  Platform: Parallax Project USB Board
  Revision: 1.1
  Author: Teo Xin Yi
  Date: 25th Oct 2021
  Log:
        Date: Desc
        25/10/2021: Adding 2 LEDs
}


CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

OBJ

  Term : "FullDuplexSerial.spin" 'UART communication

PUB Main

  ' Declaration & Initialization
  DIRA[20..21]~~ '<= Output
  OUTA[20..21]~  '<= Low = Voltage = 0/Gnd, High  => Voltage = 3.3v

  Term.Start(31, 30, 0, 115200) ' Turn on terminal

  repeat  ' Loop
    waitcnt(cnt + clkfreq) ' clkfreq = 1 sec, clkfreq/2
    !OUTA[20..21] ' => inverse => OUTA[20..21]~~
    Term.Str(String("Hello"))

