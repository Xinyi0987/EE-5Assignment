{

  Project: EE-5 Assignment
  Platform: Parallax Project USB Board
  Revision: 1.1
  Author: Teo Xin Yi
  Date: 26th Oct 2021
  Log:
        Date: Desc
        26/10/2021: Display & loop 0 to 9 on 7-segment LED
}

VAR

  'byte checkValue[9]

CON
        _clkmode = xtal1 + pll16x                                               'Standard clock mode * crystal frequency = 80 MHz
        _xinfreq = 5_000_000

OBJ

  Term : "FullDuplexSerial.spin"                                                'UART communication

PUB Main | i

  'Declaration & Initialization
  DIRA[0..7]~~                                                                 '<= Output
  OUTA[0..7]~                                                                  '<= Low = Voltage = 0/Gnd, High  => Voltage = 3.3v

  Term.Start(31, 30, 0, 115200)                                                 'Turn on terminal

  'checkValue[0] := 0
  'checkValue[1] := 1
  'checkValue[2] := 2
  'checkValue[3] := 3
  'checkValue[4] := 4
  'checkValue[5] := 5
  'checkValue[6] := 6
  'checkValue[7] := 7
  'checkValue[8] := 8
  'checkValue[9] := 9

  repeat                                                          ' Loop
    checkAndDisplayValue(0)
    waitcnt(cnt + (clkfreq / 10) * 3)                                       'clkfreq = 300 millisecond
    checkAndDisplayValue(1)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(2)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(3)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(4)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(5)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(6)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(7)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(8)
    waitcnt(cnt + (clkfreq / 10) * 3)
    checkAndDisplayValue(9)
    waitcnt(cnt + (clkfreq / 10) * 3)


PUB checkAndDisplayValue(parameter)

  case parameter
    0:
      OUTA[0..7] := %11111100                                                   'make P0 to P5 output high
    1:
      OUTA[0..7] := %01100000
    2:
      OUTA[0..7] := %11011010
    3:
      OUTA[0..7] := %11110010
    4:
      OUTA[0..7] := %01100110
    5:
      OUTA[0..7] := %10110110
    6:
      OUTA[0..7] := %10111110
    7:
      OUTA[0..7] := %11100000
    8:
      OUTA[0..7] := %11111110
    9:
      OUTA[0..7] := %11100110
    Other:
