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
    
5 - Then, run: docker build -t gamma-progs .
    
6 - Then, in order run the programs inside the container easier, you should add to your .bashrc

    export UID
    export PATH=<path/to/your/dockerfile>:$PATH
    export CONTAINER_DIR=<path/to/your/dockerfile>
    
	alias 4dg8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs 4dg8r'
	alias 4play='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs 4play'
	alias Source='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs Source'
	alias adac='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs adac'
	alias addmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs addmat'
	alias algndiag='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs algndiag'
	alias branch='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs branch'
	alias calib_ascii='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs calib_ascii'
	alias ccf='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs ccf'
	alias charge='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs charge'
	alias chil='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs chil'
	alias cmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs cmat'
	alias combine='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs combine'
	alias damm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs damm'
	alias divide='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs divide'
	alias dixie_gls='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs dixie_gls'
	alias drawstr_ps='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs drawstr_ps'
	alias effit='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs effit'
	alias encal='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs encal'
	alias energy='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs energy'
	alias escl8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs escl8r'
	alias ex_diff='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs ex_diff'
	alias foldout='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs foldout'
	alias funkyfit='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs funkyfit'
	alias gf2='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs gf2'
	alias gf2x='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs gf2x'
	alias gls='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs gls'
	alias gls_conv='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs gls_conv'
	alias gsort='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs gsort'
	alias incub8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs incub8r'
	alias kineq='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs kineq'
	alias legft='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs legft'
	alias lemo='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs lemo'
	alias levit8r='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs levit8r'
	alias list_tape='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs list_tape'
	alias lufwhm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs lufwhm'
	alias make4cub='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs make4cub'
	alias mat_stop='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs mat_stop'
	alias normalizer='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs normalizer'
	alias pdeditx='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs pdeditx'
	alias pdplot='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs pdplot'
	alias plotdata='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs plotdata'
	alias plotspec='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs plotspec'
	alias pro3d='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs pro3d'
	alias pro4d='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs pro4d'
	alias pseditx='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs pseditx'
	alias pslice='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs pslice'
	alias psplot='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs psplot'
	alias rdm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs rdm'
	alias rdmfit='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs rdmfit'
	alias recal_cob='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs recal_cob'
	alias recal_corr='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs recal_corr'
	alias recal_diff='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs recal_diff'
	alias recal_doppl='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs doppl'
	alias recal_gain='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs recal_gain'
	alias recal_test='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs recal_test'
	alias recal_time='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs recal_time'
	alias sadd='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs sadd'
	alias scanlnk='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs scanlnk'
	alias scanu='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs scanu'
	alias sdgen='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs sdgen'
	alias slice='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs slice'
	alias spec_ascii='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs spec_ascii'
	alias split4cub='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs split4cub'
	alias statft='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs statft'
	alias stopp='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs stopp'
	alias stopx='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs stopx'
	alias subbgm2='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs subbgm2'
	alias subbgmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs subbgmat'
	alias symmat='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs symmat'
	alias tapetotape='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs tapetotape'
	alias tqdm='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs tqdm'
	alias tracking_simulated='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs tracking_simulated'
	alias unfold='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs unfold'
	alias unix2unix='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs unix2unix'
	alias vms2unix='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs vms2unix'
	alias win2tab='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs win2tab'
	alias xm4dg='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs xm4dg'
	alias xmesc='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs xmesc'
	alias xmgls='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs xmgls'
	alias xmlev='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs xmlev'
	alias xtrackn='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs xtrackn'
	alias Agata='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs Agata'
	alias root='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs root'
	alias Cubix='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs Cubix'

	alias dbls2k-2targ='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs dbls2k-2targ'
	alias dbls2k-orig='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs dbls2k-orig'
	alias histaver40-2targ='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs histaver40-2targ'
	alias histaver40-orig='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs histaver40-orig'
	alias dechistu-2targ='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs dechistu-2targ'
	alias dechistu-orig='docker run -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $CONTAINER_DIR:/dck -v $(pwd):/app --rm -it --user $(id -u) gamma-progs dechistu-orig'
  
######################################################################################
#IMPORTANT: You can also just clone this repository and just build the image localy.
