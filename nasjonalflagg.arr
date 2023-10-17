#lang pyret
include color

# Definerer blå og rød fra RGBA
flagRed = color(186, 12, 47, 1)
flagBlue = color(9, 32, 91, 1)

# Flaggets proposjoner er 22:16
# Jeg ganger proposjonene med 10 slik at flagget blir litt større i CPO

# Definerer flaggets lengde og høyde
flagLength = 22 * 10
flagHeight = 16 * 10

# Proposjonene til hvit og blå er 1 + 2 + 1 = 4
whiteWidth = 4 * 10

# Proposjonene til blå er 2
blueWidth = 2 * 10

# Her defineres bakgrunnen i rødt
background = rectangle(flagLength, flagHeight, "solid", flagRed)

# Definerer de hvite stripene
whiteLineOne = rectangle(flagLength, whiteWidth, "solid", "white")
whiteLineTwo = rectangle(whiteWidth, flagHeight, "solid", "white")

# Definerer de blå stripene
blueLineOne = rectangle(flagLength, blueWidth, "solid", flagBlue)
blueLineTwo = rectangle(blueWidth, flagHeight, "solid", flagBlue)

# Legger hvite striper oppå bakgrunnen
whiteOverlayOne = overlay-xy(whiteLineOne, 0, -60, background)
whiteOverlayTwo = overlay-xy(whiteLineTwo, -60, 0, whiteOverlayOne)

# Legger blå striper oppå flagget
blueOverlayOne = overlay-xy(blueLineOne, 0, -70, whiteOverlayTwo)
norwegianFlag = overlay-xy(blueLineTwo, -70, 0, blueOverlayOne)

# Resultatet
norwegianFlag
