BINS_DIR="$PROJECT_HOME/$LAYOUT_BINS"
MAIN_CLASS="$1"

cd $BINS_DIR
$SUBSCRIPT_BIN/scala -classpath $CLASSPATH subscript.swing.GraphicalDebugger $MAIN_CLASS
