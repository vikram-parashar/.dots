swww query
if [ $? -eq 1 ] ; then
    swww init
fi

randomImage=$(find ~/img/wall/ -maxdepth 1 | sort -R | head -n 1 )

while true; do
  swww img "$randomImage" --transition-bezier .43,1.19,1,.4 \
                    --transition-type random \
                    --transition-duration 4 \
                    --transition-fps 75 \
                    --invert-y \
                    --transition-pos "$( hyprctl cursorpos )"

  sleep 1800
done

