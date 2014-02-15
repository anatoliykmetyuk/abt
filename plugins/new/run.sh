if [[ ! -d "$LAYOUT_SOURCES" ]]; then mkdir "$LAYOUT_SOURCES"; fi
if [[ ! -d "$LAYOUT_BINS"    ]]; then mkdir "$LAYOUT_BINS"   ; fi
if [[ ! -d "$LAYOUT_LIBS"    ]]; then mkdir "$LAYOUT_LIBS"   ; fi

if [[ ! -f "$LAYOUT_BUILD"   ]]
then
  touch "$LAYOUT_BUILD"
  chmod +x "$LAYOUT_BUILD"
fi
