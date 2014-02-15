PLUGIN_NAME=$1
PLUGIN_ARGS=${*:2}

export PLUGIN_HOME="$ABT_HOME/plugins/$PLUGIN_NAME"  # Now plugin can access it's home directory

P_CONFIG="$PLUGIN_HOME/config.sh"             # All system-dependent configuration goes here
  P_INIT="$PLUGIN_HOME/init.sh"               # Plugin initialization
   P_RUN="$PLUGIN_HOME/run.sh"                # Run the plugin with arguments
  P_TERM="$PLUGIN_HOME/term.sh"               # Terminate plugin

if [[ -f $P_CONFIG ]]; then . "$P_CONFIG"            ; fi
if [[ -f $P_INIT   ]]; then . "$P_INIT"              ; fi
if [[ -f $P_RUN    ]]; then . "$P_RUN" "$PLUGIN_ARGS"; fi
if [[ -f $P_TERM   ]]; then . "$P_TERM"              ; fi
