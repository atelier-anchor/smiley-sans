mkdir -p temp/compare/v1
mkdir -p temp/compare/v2

text=$(cat temp/input.txt)

font_v1="release/smiley-sans-v1.1.1/SmileySans-Oblique.otf"
font_v2="release/smiley-sans-v2.0.0/SmileySans-Oblique.otf"

for (( i=0; i<${#text}; i++ )); do
    c="${text:$i:1}"
    hb-view $font_v1 --font-size=12 --text $c -o temp/compare/v1/$c.png
    hb-view $font_v2 --font-size=12 --text $c -o temp/compare/v2/$c.png
    # md5 file => MD5 (file) = ...
    md5_v1=$(md5 temp/compare/v1/$c.png | awk '{print $4}')
    md5_v2=$(md5 temp/compare/v2/$c.png | awk '{print $4}')
    if [ $md5_v1 != $md5_v2 ]; then
        echo $c
    else
        echo "$c x"
    fi
done

rm -rf temp/compare
