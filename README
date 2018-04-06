# Make Prompts for Cisco Unified Contact Center

# Overview

The MakePrompt utility uses the standard MacOS Text-To-Speech application to convert input text files into UCCX compatible .wav files. To make the whole process even simpler it creates an archive to be downloaded to UCCX server.

## Prerequisites

- OSX
- SoX

## Input File Format

```
# This is a comment
# The text from the beginning of the string is the text to be spoken.
# After the ";" sign goes the name of the file
The special closing message has been enabled
;spec_clos_msg_hb_en
The default closing message has been enabled
;def_clos_msg_hb_en
```

## Usage

`make all` -  processes "numerals.in", "callcenter.in" and "controlcenter.in"
`make numerals` - processes "numerals.in"
`make callcenter` - processes "callcenter.in"
`make controlcenter` - processes "controlcenter.in"
`make clean` - removes all voice files from every directory

## Links

1. SoX - Sound eXchange - http://sox.sourceforge.net/
