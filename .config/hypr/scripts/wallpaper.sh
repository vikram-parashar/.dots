swww query
if [ $? -eq 1 ] ; then
    swww init
fi

while true; do
  swww img $(find ~/img/walls/ -maxdepth 1 | sort -R | head -n 1 ) --transition-bezier .43,1.19,1,.4 \
                    --transition-type random \
                    --transition-duration 4 \
                    --transition-fps 75 \
                    --invert-y \
                    --transition-pos "$( hyprctl cursorpos )"
  sleep 1800
done

