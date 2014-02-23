BINS_DIR="$PROJECT_HOME/$LAYOUT_BINS"
TEST_CLASSES=$@

cd $BINS_DIR
for class in $TEST_CLASSES
do
  $SUBSCRIPT_BIN/scala -classpath $CLASSPATH subscript.swing.GraphicalDebugger org.scalatest.run $class
#  $SUBSCRIPT_BIN/scala -classpath $CLASSPATH kvstore.StdoutDebugger org.scalatest.run $class
done
