if [ "$1" = "dev" ]; then
    datetime=$(date +"%Y-%m-%d %H:%M:%S")
    sed -i -E "s/(^ +Version .+)/\1 (dev $datetime)/g" src/SmileySans.ttx
fi

if [ ! -d "build" ]; then
    mkdir build
fi

fontmake \
    -g src/SmileySans.glyphspackage \
    --output-dir build \
    --master-dir {tmp} \
    --timing

for ext in otf ttf
do
    ttx -m build/SmileySans-Oblique.$ext -o build/SmileySans-Oblique.$ext src/SmileySans.ttx
    python -c "from fontTools.ttLib import woff2; woff2.compress('build/SmileySans-Oblique.$ext', 'build/SmileySans-Oblique.$ext.woff2')"
done
