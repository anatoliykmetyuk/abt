#!/bin/bash

# Set ABT and project home directory
export ABT_HOME=$(dirname "$0")
export PROJECT_HOME=$(pwd)

# Load bootpath and classpath
. "$ABT_HOME/classpaths.sh"

# Load project settings
. "$ABT_HOME/config/layout.sh"
if [[ -f "$PROJECT_HOME/$LAYOUT_BUILD" ]]; then . "$PROJECT_HOME/$LAYOUT_BUILD"; fi

# Find out the command and it's arguments
COMMAND=$1
ARGS="${*:2}"

# Launch the corresponding plugin's lifecycle
"$ABT_HOME/invoke_plugin.sh" "$COMMAND" "$ARGS"
