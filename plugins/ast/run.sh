if [[ -z "$2" ]]; then PHASE=1; else PHASE="$2"; fi

$SUBSCRIPT_BIN/scalac -bootclasspath "$BOOTPATH" -classpath "$CLASSPATH" -Ybrowse:$PHASE -d /tmp $1
# -Xprint:typer -Yshow-trees-compact -Ytyper-debug
