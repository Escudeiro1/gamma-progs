# gamma-progs
Set of programs for gamma-ray spectroscopy data analysis.

Simplified setup:

1 - Set up docker in your system;

2 - Create a directory to contain your Dockerfile

3 - Inside your created directory create a Dockerfile containing only this line:
    FROM escudeiro1/gamma-progs
    
4 - alongside with the Dockerfile, you should place an entry point file (saved as entry-point.sh and grant it executable permission) containing:
    
    #!/bin/bash
    set -e
    source /usr/cernroot/root/bin/thisroot.sh
    source /usr/gS/bin/Gw-env.sh
    source /usr/local/geant4.9.6.p04/build/geant4make.sh
    exec "$@"
    
5 - Then, run: docker build -t <label> .
6 - Then, in order run the programs inside the container easier, you should add to your .bashrc

    export UID
    export PATH=<path/to/your/dockerfile>:$PATH
    export CONTAINER_DIR=<path/to/your/dockerfile>
    
    alias 4dg8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs 4dg8r'
    alias 4play='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs 4play'
    alias Source='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs Source'
    alias adac='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs adac'
    alias addmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs addmat'
    alias algndiag='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs algndiag'
    alias branch='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs branch'
    alias calib_ascii='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs calib_ascii'
    alias ccf='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs ccf'
    alias charge='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs charge'
    alias chil='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs chil'
    alias cmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs cmat'
    alias combine='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs combine'
    alias damm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs damm'
    alias divide='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs divide'
    alias dixie_gls='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs dixie_gls'
    alias drawstr_ps='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs drawstr_ps'
    alias effit='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs effit'
    alias encal='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs encal'
    alias energy='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs energy'
    alias escl8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs escl8r'
    alias ex_diff='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs ex_diff'
    alias foldout='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs foldout'
    alias funkyfit='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs funkyfit'
    alias gf2='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs gf2'
    alias gf2x='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs gf2x'
    alias gls='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs gls'
    alias gls_conv='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs gls_conv'
    alias gsort='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs gsort'
    alias incub8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs incub8r'
    alias kineq='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs kineq'
    alias legft='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs legft'
    alias lemo='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs lemo'
    alias levit8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs levit8r'
    alias list_tape='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs list_tape'
    alias lufwhm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs lufwhm'
    alias make4cub='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs make4cub'
    alias mat_stop='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs mat_stop'
    alias normalizer='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs normalizer'
    alias pdeditx='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs pdeditx'
    alias pdplot='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs pdplot'
    alias plotdata='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs plotdata'
    alias plotspec='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs plotspec'
    alias pro3d='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs pro3d'
    alias pro4d='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs pro4d'
    alias pseditx='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs pseditx'
    alias pslice='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs pslice'
    alias psplot='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs psplot'
    alias rdm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs rdm'
    alias rdmfit='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs rdmfit'
    alias recal_cob='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs recal_cob'
    alias recal_corr='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs recal_corr'
    alias recal_diff='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs recal_diff'
    alias recal_doppl='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs doppl'
    alias recal_gain='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs recal_gain'
    alias recal_test='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs recal_test'
    alias recal_time='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs recal_time'
    alias sadd='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs sadd'
    alias scanlnk='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs scanlnk'
    alias scanu='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs scanu'
    alias sdgen='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs sdgen'
    alias slice='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs slice'
    alias spec_ascii='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs spec_ascii'
    alias split4cub='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs split4cub'
    alias statft='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs statft'
    alias stopp='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs stopp'
    alias stopx='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs stopx'
    alias subbgm2='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs subbgm2'
    alias subbgmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs subbgmat'
    alias symmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs symmat'
    alias tapetotape='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs tapetotape'
    alias tqdm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs tqdm'
    alias tracking_simulated='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs tracking_simulated'
    alias unfold='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs unfold'
    alias unix2unix='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs unix2unix'
    alias vms2unix='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs vms2unix'
    alias win2tab='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs win2tab'
    alias xm4dg='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs xm4dg'
    alias xmesc='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs xmesc'
    alias xmgls='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs xmgls'
    alias xmlev='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs xmlev'
    alias xtrackn='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs xtrackn'
    alias Agata='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs Agata'
    alias root='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs root'
    alias Cubix='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs Cubix'

    alias dbls2k-2targ='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs dbls2k-2targ'
    alias dbls2k-orig='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs dbls2k-orig'
    alias histaver40-2targ='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs histaver40-2targ'
    alias histaver40-orig='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs histaver40-orig'
    alias dechistu-2targ='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs dechistu-2targ'
    alias dechistu-orig='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) allprogs dechistu-orig'
  
######################################################################################
#IMPORTANT: You can also just clone this repository and just build the image localy.
