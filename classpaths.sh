. "$ABT_HOME/config/paths.sh"   # Load system-specific pathes
. "$ABT_HOME/buildvars.sh"      # Load system-agnistic pathes

# Set classpath and bootclasspath
BOOTPATH="$SCALA_REFLECT:$SCALA_LIB"

CLASSPATH="$CLASSPATH:$SUBSCRIPT_CLASSES:$SCALA_LIB_STD"
CLASSPATH="$CLASSPATH:$SWING:$SUBSCRIPT_DEPTS"

# Load project-specific libs
CUSTOM_LIBS=$(find "$PROJECT_HOME/$LAYOUT_LIBS" -name "*.jar" | tr "\n" ":")
CLASSPATH="$CLASSPATH:$CUSTOM_LIBS:."

export BOOTPATH
export CLASSPATH
