#!/bin/sh
#use LC_NUMERIC if you are using an European LC, else printf will not work because it expects an comma instead of a decimal point
LC_NUMERIC="en_US.UTF-8"

#Exit with 1 if $DISPLAY env isn't set. Helps when using the start up script below
[ -z "$DISPLAY" ] && exit 1;

# modify this path to the location of your backlight class
path=/sys/class/backlight/intel_backlight

read -r max < "$path"/max_brightness

luminance() {
    read -r level < "$path"/actual_brightness
    factor=$((max))
    new_brightness="$(bc -l <<< "scale = 2; $level / $factor")"
    printf '%f\n' $new_brightness
}

xrandr --output eDP-1 --brightness "$(luminance)"

inotifywait -me modify --format '' "$path"/actual_brightness | while read; do
    xrandr --output eDP-1 --brightness "$(luminance)"
done