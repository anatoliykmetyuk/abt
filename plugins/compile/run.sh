SOURCES_DIR="$PROJECT_HOME/$LAYOUT_SOURCES"
BINS_DIR="$PROJECT_HOME/$LAYOUT_BINS"

SOURCE_FILES=$(find "$SOURCES_DIR" -name "*.scala" -or -name "*.java" | tr "\n" " ")

echo "Cleaning $LAYOUT_BINS"
rm -r "$BINS_DIR/"*
echo "Done"

echo "Compiling into $LAYOUT_BINS"
$SUBSCRIPT_BIN/scalac -feature -bootclasspath "$BOOTPATH" -classpath "$CLASSPATH" -d "$BINS_DIR" $SOURCE_FILES
echo "Done"
