use inc::Module::Install;
  
# Define metadata
name           'Sys-Trace';
all_from       'lib/Sys/Trace.pm';
license        'wtfpl';
 
# Specific dependencies
requires       'Text::Balanced' => '0';
no_index       'directory'   => 't';
 
WriteAll;
