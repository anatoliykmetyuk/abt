BINS_DIR="$PROJECT_HOME/$LAYOUT_BINS"
TEST_CLASSES=$@

cd $BINS_DIR
for class in $TEST_CLASSES
do
  $SUBSCRIPT_BIN/scala -classpath $CLASSPATH org.junit.runner.JUnitCore $class
done
