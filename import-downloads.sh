rm project.sb3 -f
if [ -e ~/dl/project.sb3 ]; then mv ~/dl/project.sb3 ./project.sb3; fi
if [ -e ~/Downloads/project.sb3 ]; then mv ~/Downloads/project.sb3 ./project.sb3; fi
if [ -e ~/downloads/project.sb3 ]; then mv ~/downloads/project.sb3 ./project.sb3; fi
if [ -e ./project.sb3 ]; then ./unpack.sh; fi
