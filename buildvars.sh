# Helper paths
export SUBSCRIPT_BUILD="$SUBSCRIPT/build"
export   SUBSCRIPT_LIB="$SUBSCRIPT/lib/extra"
export   SUBSCRIPT_BIN="$SUBSCRIPT_BUILD/quick/bin"

# SubScript libraries
export     SCALA_REFLECT="$SUBSCRIPT_BUILD/quick/classes/reflect"
export         SCALA_LIB="$SUBSCRIPT_BUILD/pack/lib/scala-library.jar"
export SUBSCRIPT_CLASSES="$SUBSCRIPT_BUILD/quick/classes/subscript"
export             SWING="$SUBSCRIPT_BUILD/pack/lib/scala-swing.jar"

# Standard Scala libraries
export SCALA_LIB_STD="$SCALA_STD/lib/scala-library.jar"

# SubScript compile-time dependencies
export SUBSCRIPT_DEPTS=$(find $SUBSCRIPT_LIB -name "*.jar" | tr "\n" ":")
