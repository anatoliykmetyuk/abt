abt
===

Alternative Build Tool

## Configuration
After downloading, you should configure ABT.
All configuration files are in the config/ directory. It is mandatory to edit "paths.sh" so, that "SUBSCRIPT" points to the Subscript installation and SCALA_STD - to the standard Scala 2.10 installation.
Also, you should add ABT home directory to your PATH environmental variable.

## Usage
ABT is used as follows:
`abt _plugin_ _arguments_`
where _plugin_ is the name of the plugin that should be used and _arguments_ are the arguments to that plugin

## Plugins
Plugins are scripts that actually do the desired job. All the plugins are under the _plugins_ directory. Names of the plugins are same as names of the directories. Each plugin directory may contain following lifecycle scripts:
_config.sh_ - configuration script. All system-dependent parameters go here.
_init.sh_   - initialization script. All system-independent initialization goes here.
_run.sh_    - script that does actual work. All the arguments to the plugin call will be passed to it
_term.sh_   - script that does clean-up.
Lifecycle scripts are executed in the order in which they are listed. All modifications to environmental variables made in one script are automatically available to subsequent scripts.

Before using a plugin, you should make sure that _config.sh_ is configured properly (if present).

## Environmental variables in plugins
All the plugins will have read-write access to following environmental variables in all their lifecycle methods:
**ABT_HOME** - the directory ABT resides in
**PROJECT_HOME** - the directory of the project from which ABT was called
**CLASSPATH** - classpath that can be passed to scalac -cp and that includes all libs necessary to compile and run trivial SubScript projects.
**BOOTPATH** - boot classpath. Use it with scalac -bootclasspath
**SUBSCRIPT** - path to the SubScript home directory
**LAYOUT_SOURCES**, **LAYOUT_BINS**, **LAYOUT_LIBS** - names of the project layout directories

Full list of available vars can be seen at files: buildvars.sh, config/layout.sh, config/paths.sh

## Project layout
By default, project consists from the following directories:
_src_ - sources go here
_bin_ - binaries are compiled here
_lib_ - additional libraries that should be on classpath go here (JAR files)
_build.abt_ - project-specific configurations file. It is a simple shell script that will be executed at each ABT call before any plugin is executed

## Core plugins
_compile_ - compilation plugin: `abt compile`. _ast_ - view abstract syntax tree of a source: `abt ast _source_`. _debug_ - open in a debugger: `abt debug _mainclass_`. _new_ - create project layout in a folder: `abt new`. _run_ - run main class: `abt run _mainclass_`. 

## Examples
In order to create a new project, make a new empty directory, cd into it and invoke
`abt new`
Then, write all your sources at "src", libraries at "lib". After that, invoke
`abt compile`
Your sources are compiled by now. Now invoke
`abt run _mainclass_`
where _mainclass_ is the full-qualified name of your main class.

To debug a class with a main method, run
`abt debug _mainclass_`
To see Abstract Syntax Tree of a source, invoke
`abt ast _source_`
_source_ - path to the source
