# opensim ossl example scripts for OpenSim 0.9.2 Dev

OpenSimulator OSSL examples as they can be seen on the OpenSimulator wiki http://opensimulator.org/wiki/Category:OSSL_Functions

Version 0.2.015 - 243 scripts

Test: opensim-0.9.2.0 Dev-1176 working

binary testfiles Ubuntu 18 + Scripts + Money + landtool:  https://www.mediafire.com/file/qvad9qhwtm5mtlf/opensim-0.9.2.1176.zip/file

**Copy the directories into your opensim/bin directory, restart opensim and clear your viewer cache.**

## Offline
    You can easily view and change the examples offline with your text editor.

## Inworld
    Open your OpenSim Viewer / Client.
    OpenSim Library - Scripts Library at the bottom of your inventory.
    Right click and copy Examples to your Scripts directory.
    Now you can work normally with the examples.


## Examples
    #!/bin/sh
    cd /opt/opensim
    git clone https://github.com/BigManzai/opensim-ossl-example-scripts
    cp -r /opt/opensim/opensim-ossl-example-scripts/assets /opt/opensim/bin/assets
    cp -r /opt/opensim/opensim-ossl-example-scripts/inventory/ScriptsLibrary /opt/opensim/bin/inventory

    #Win10 PowerShell
    cd C:/opensim
    git clone https://github.com/BigManzai/opensim-ossl-example-scripts
    cp -r /opensim/opensim-ossl-example-scripts/assets /opensim/bin/assets
    cp -r /opensim/opensim-ossl-example-scripts/inventory/ScriptsLibrary /opensim/bin/inventory
