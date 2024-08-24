#!/bin/sh

FONT="Satoshi Medium"

ONSURFACE='#E0E4DAFF'
PRIMARY='#A3D397FF'
SURFACECONTAINERLOWEST='#0B0F0AFF'
ONPRIMARY='#0F380DFF'
TERTIARY='#A0CFD3FF'
ERROR='#BA1A1AFF'
TRANSPARENT='#00000000'

i3lock \
--nofork                     \
--screen 1                   \
--force-clock                \
--indicator                  \
\
--image="/home/$USER/.dotfiles/wallpapers/forest-mountain-cloudy-valley.png" \
--fill                       \
\
--keylayout 1                \
--layout-color=$ONSURFACE    \
--layout-font=$FONT          \
--layout-size=14             \
--layout-pos='x+32:h-10'     \
\
--greeter-text="Thomas Souchet" \
--greeter-color=$ONSURFACE   \
--greeter-font=$FONT         \
--greeter-size=24            \
--greeter-pos='w/2:h-32'     \
\
--date-str="%A %d %B %Y"     \
--date-color=$ONPRIMARY      \
--date-font=$FONT            \
--date-size=24               \
--date-pos='w/2:y+48'        \
\
--time-str="%H:%M"           \
--time-color=$ONSURFACE      \
--time-font=$FONT            \
--time-size=96               \
--time-pos='ix:iy+36'        \
\
--radius 175                 \
--ring-width 25.0            \
--line-uses-ring             \
--separator-color=$TRANSPARENT \
\
--inside-color=$SURFACECONTAINERLOWEST \
--insidever-color=$SURFACECONTAINERLOWEST \
--insidewrong-color=$SURFACECONTAINERLOWEST \
\
--ring-color=$PRIMARY        \
--ringver-color=$TERTIARY    \
--ringwrong-color=$ERROR     \
\
--keyhl-color=$ONPRIMARY     \
--bshl-color=$ERROR          \
\
--verif-text="Vérification..." \
--verif-color=$TERTIARY      \
--verif-font=$FONT           \
--verif-size=20              \
--verif-pos='ix:iy+80'       \
\
--wrong-text="Incorrect"     \
--wrong-color=$ERROR         \
--wrong-font=$FONT           \
--wrong-size=20              \
--wrong-pos='ix:iy+80'       \
\
--noinput-text=""            \
\
--lock-text="Vérrouillage"   \
\
--lockfailed-text="Échec du vérrouillage" \
\
--pass-media                 \
--pass-screen                \
--pass-power                 \
