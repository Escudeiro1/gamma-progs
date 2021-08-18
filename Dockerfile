FROM asagalo/cernroot-docker:latest

WORKDIR /usr
RUN mkdir progs
WORKDIR /usr/progs
RUN wget http://www.dfn.if.usp.br/~ribas/download/progs-1_i586_2017.tgz && tar -xzvf progs-1_i586_2017.tgz && dpkg --add-architecture i386 && apt update && apt upgrade -y && apt install -y elfutils && apt install -y libc6:i386 && apt install -y libx11-6:i386
WORKDIR /opt
RUN mkdir intel
WORKDIR /opt/intel
RUN mkdir lib
WORKDIR /opt/intel/lib
RUN ln -s /usr/lib/i386-linux-gnu/libX11.so.6 && ln -s /lib/i386-linux-gnu/libdl.so.2 && ln -s /lib/i386-linux-gnu/libgcc_s.so.1 && ln -s /lib/i386-linux-gnu/libc.so.6 && ln -s /lib/i386-linux-gnu/libm.so.6 && chmod +x /usr/progs/bin/stopx && chmod +x /usr/progs/bin/adac && chmod +x /usr/progs/bin/ccf && chmod +x /usr/progs/bin/charge && chmod +x /usr/progs/bin/chil && chmod +x /usr/progs/bin/damm && chmod +x /usr/progs/bin/funkyfit && chmod +x /usr/progs/bin/kineq && chmod +x /usr/progs/bin/lemo && chmod +x /usr/progs/bin/scanu && chmod +x /usr/progs/bin/scanlnk && chmod +x /usr/progs/bin/lemolnk && chmod +x /usr/progs/bin/stopx
WORKDIR /usr/local/bin

RUN ln -s /usr/progs/bin/stopx && ln -s /usr/progs/bin/adac && ln -s /usr/progs/bin/ccf && ln -s /usr/progs/bin/charge && ln -s /usr/progs/bin/chil && ln -s /usr/progs/bin/damm && ln -s /usr/progs/bin/funkyfit && ln -s /usr/progs/bin/kineq && ln -s /usr/progs/bin/lemo && ln -s /usr/progs/bin/scanu && ln -s /usr/progs/bin/scanlnk && ln -s /usr/progs/bin/lemolnk && ln -s /usr/progs/bin/lemo.hep && ln -s /usr/progs/bin/scan.hep && ln -s /usr/progs/bin/stopx.hep && ln -s /usr/progs/bin/funkyfit.hep && ln -s /usr/progs/bin/damm.hep && ln -s /usr/progs/bin/laser.init
WORKDIR /usr/local
RUN git clone https://github.com/Escudeiro1/GASPware-1.git
WORKDIR /usr/local/bin
RUN chmod +x /usr/local/GASPware-1/bin/xtrackn && chmod +x /usr/local/GASPware-1/bin/cmat && chmod +x /usr/local/GASPware-1/bin/gsort && chmod +x /usr/local/GASPware-1/bin/list_tape && chmod +x /usr/local/GASPware-1/bin/mat_stop && chmod +x /usr/local/GASPware-1/bin/recal_cob && chmod +x /usr/local/GASPware-1/bin/recal_corr && chmod +x /usr/local/GASPware-1/bin/recal_diff && chmod +x /usr/local/GASPware-1/bin/recal_doppl && chmod +x /usr/local/GASPware-1/bin/recal_gain && chmod +x /usr/local/GASPware-1/bin/recal_test && chmod +x /usr/local/GASPware-1/bin/recal_time && chmod +x /usr/local/GASPware-1/bin/sadd && chmod +x /usr/local/GASPware-1/bin/stopp && chmod +x /usr/local/GASPware-1/bin/tapetotape && ln -s /usr/local/GASPware-1/bin/xtrackn && ln -s /usr/local/GASPware-1/bin/cmat && ln -s /usr/local/GASPware-1/bin/gsort && ln -s /usr/local/GASPware-1/bin/list_tape && ln -s /usr/local/GASPware-1/bin/mat_stop && ln -s /usr/local/GASPware-1/bin/recal_cob && ln -s /usr/local/GASPware-1/bin/recal_corr && ln -s /usr/local/GASPware-1/bin/recal_diff && ln -s /usr/local/GASPware-1/bin/recal_doppl && ln -s /usr/local/GASPware-1/bin/recal_gain && ln -s /usr/local/GASPware-1/bin/recal_test && ln -s /usr/local/GASPware-1/bin/recal_time && ln -s /usr/local/GASPware-1/bin/sadd && ln -s /usr/local/GASPware-1/bin/stopp && ln -s /usr/local/GASPware-1/bin/tapetotape

WORKDIR /usr/local
RUN git clone https://github.com/Escudeiro1/rw05.git
WORKDIR /usr/local/rw05/bin
RUN chmod +x *

WORKDIR /usr/local/bin
RUN mv /usr/local/rw05/bin/* .

WORKDIR /usr/local
RUN git clone https://github.com/wkentaro/gdown.git && apt install -y python3-pip
WORKDIR /usr/local/gdown
RUN pip3 install gdown
WORKDIR /usr/local/
RUN mkdir fontgls
WORKDIR /usr/local/fontgls
RUN gdown https://drive.google.com/uc?id=1PfOTPuF4U8a7_WK223nEtTA8SSEddW2o && tar -xzvf fonts.tar.gz && cp -n -r /usr/local/fontgls/fonts/truetype /usr/share/fonts/truetype && cp -n -r /usr/local/fontgls/fonts/type1 /usr/share/fonts/type1 && cp -n -r /usr/local/fontgls/fonts/X11 /usr/share/fonts/X11 
WORKDIR /usr/share/poppler/cMap/Adobe-Japan1
RUN cp -n /usr/local/fontgls/fonts/cmap/adobe-japan1/* .
WORKDIR /usr/share/poppler/cMap/Adobe-Japan2
RUN cp -n /usr/local/fontgls/fonts/cmap/adobe-japan2/* . && cp -n -r /usr/local/fontgls/fonts/cmap/gs-cjk-resource /usr/share/fonts/cmap
WORKDIR /usr/local

RUN DEBIAN_FRONTEND=noninteractive apt install -y fontforge-common fontforge-nox fonts-ancient-scripts fonts-cantarell fonts-inconsolata fonts-lmodern fonts-symbola fonts-thai-tlwg fonts-tlwg-garuda fonts-tlwg-garuda-ttf fonts-tlwg-kinnari fonts-tlwg-kinnari-ttf fonts-tlwg-laksaman fonts-tlwg-laksaman-ttf fonts-tlwg-loma fonts-tlwg-loma-ttf fonts-tlwg-mono fonts-tlwg-mono-ttf fonts-tlwg-norasi fonts-tlwg-norasi-ttf fonts-tlwg-purisa fonts-tlwg-purisa-ttf fonts-tlwg-sawasdee fonts-tlwg-sawasdee-ttf fonts-tlwg-typewriter fonts-tlwg-typewriter-ttf fonts-tlwg-typist fonts-tlwg-typist-ttf fonts-tlwg-typo fonts-tlwg-typo-ttf fonts-tlwg-umpush fonts-tlwg-umpush-ttf fonts-tlwg-waree fonts-tlwg-waree-ttf gsfonts html2ps imagemagick-6-common libimage-magick-perl libimage-magick-q16-perl liblqr-1-0  libptexenc1 libqt5designer5 libqt5help5 libqt5sql5 libqt5sql5-sqlite libqt5test5 libqt5xml5 libsys-cpu-perl libtexluajit2 libtk8.6 libttfautohint1 libuninameslist1 libzzip-0-13 lmodern pcf2bdf perlmagick python3-libxml2 python3-pyqt5 python3-sip t1-xfree86-nonfree t1utils tcl tex-common texlive-base texlive-binaries texlive-latex-base tipa tk tk8.6 toilet toilet-fonts treeline trscripts ttf-aenigma ttf-ancient-fonts ttf-ancient-fonts-symbola ttf-anonymous-pro ttf-bitstream-vera ttf-denemo ttf-engadget ttf-sjfonts ttf-staypuft ttf-summersby ttf-tagbanwa ttf-ubuntu-font-family ttf-unifont ttf-xfree86-nonfree ttf-xfree86-nonfree-syriac ttf2ufm tv-fonts xfonts-100dpi-transcoded xfonts-75dpi-transcoded xfonts-biznet-100dpi xfonts-biznet-75dpi xfonts-biznet-base xfonts-efont-unicode xfonts-efont-unicode-ib xfonts-intl-european xfonts-intl-phonetic xfonts-mona xfonts-mplus xfonts-nexus xfonts-shinonome xfonts-terminus xfonts-terminus-dos xfonts-terminus-oblique xfonts-thai xfonts-thai-etl xfonts-thai-manop xfonts-thai-nectec xfonts-thai-poonlap xfonts-thai-vor xfonts-tipa xfonts-traditional xfonts-unifont xfonts-wqy xfonts-x3270-misc xfstt xgridfit xhtml2ps xorgxrdp xsltproc xfonts-100dpi xfonts-75dpi

ENV RADWARE_FONT_LOC=/usr/local/rw05/font/
ENV RADWARE_ICC_LOC=/usr/local/rw05/icc
ENV RADWARE_LIB_LOC=/usr/local/rw05/lib

WORKDIR /usr/local
RUN gdown https://drive.google.com/uc?id=1yiIVQ9kcTvyicRDOzsheS4-MCBnR0s97 && tar -xvf geant.tar.gz && rm -f geant.tar.gz && gdown https://drive.google.com/uc?id=1nGf9gYdt32SpAVEwTAeWNaxGwILBNLAf && tar -xzvf Agata.tar.gz && rm -f Agata.tar.gz && mv opt agata
WORKDIR /usr/local/geant4.9.6.p04/build
RUN apt install -y libxerces-c-dev && rm -rf *
RUN cmake -DGEANT4_BUILD_CXXSTD=c++11 -DGEANT4_INSTALL_DATA=ON -DGEANT4_USE_GDML=ON -L${libdir} -lxerces-c -I${includedir} -DCMAKE_INSTALL_PREFIX=/usr/local/geant4.9.6.p04/build /usr/local/geant4.9.6.p04
RUN make -j4
RUN make install
ENV GEANTDIST=/usr/local/geant4.9.6.p04
ENV G4WORKDIR=/usr/local/geant4.9.6.p04
ENV CMAKE_PREFIX_PATH=$GEANTDIST/build/lib/Geant4-9.6.4:$CMAKE_PREFIX_PATH
WORKDIR /usr/local/agata/AgataSimulation/branches/GANIL/trunk_old
RUN mkdir build
WORKDIR /usr/local/agata/AgataSimulation/branches/GANIL/trunk_old/build

ENV DYLD_LIBRARY_PATH=/usr/cernroot/root/lib:/usr/gS/lib
ENV ROOTSYS=/usr/cernroot/root
ENV CMAKE_PREFIX_PATH=/usr/cernroot/root:/usr/local/geant4.9.6.p04/build/lib/Geant4-9.6.4:
ENV JUPYTER_PATH=/usr/cernroot/root/etc/notebook
ENV SHLIB_PATH=/usr/cernroot/root/lib:/usr/gS/lib
ENV GWSYS=/usr/gS
ENV LIBPATH=/usr/cernroot/root/lib:/usr/gS/lib
ENV GEANTDIST=/usr/local/geant4.9.6.p04
ENV TERM=xterm
ENV SHLVL=1
ENV PYTHONPATH=/usr/cernroot/root/lib
ENV MANPATH=/usr/cernroot/root/man:/usr/local/man:/usr/local/share/man:/usr/share/man
ENV PATH=/usr/gS/bin:/usr/cernroot/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV CLING_STANDARD_PCH=none

RUN /bin/bash -c "source $GEANTDIST/build/share/Geant4-9.6.4/geant4make/geant4make.sh; cmake -DGeant4_DIR=/usr/local/geant4.9.6.p04/build/lib/Geant4-9.6.4 ../; make"
ENV PATH=/usr/local/agata/AgataSimulation/branches/GANIL/trunk_old/build:$PATH
ENTRYPOINT ["/dck/entry-point.sh"]

WORKDIR /usr/local
RUN gdown https://drive.google.com/uc?id=1eE-_48QxdfWqoR7L2dF45gQ7B1xas4M0 && tar -xvf smearing.tar.gz && rm smearing.tar.gz && mv escudeiro smearing
RUN ln -s /usr/local/smearing/smearing/tracking_simulated /usr/local/bin/tracking_simulated

WORKDIR /usr/local
RUN mkdir dbls2k-orig/ && mkdir dbls2k-2targ/
WORKDIR /usr/local/dbls2k-orig
RUN gdown https://drive.google.com/uc?id=1Ud1rJgxJrEPt6T28u9p9y_fCUDJ9UPKF && tar -xvf dbls-orig.tar.gz && rm dbls-orig.tar.gz
WORKDIR /usr/local/dbls2k-2targ
RUN gdown https://drive.google.com/uc?id=1FNIqmMAGNq6hcQiTlJ9c2ww8F372teZ9 && tar -xvf dbls2k_2targ.tar.gz && rm dbls2k_2targ.tar.gz
RUN ln -s /usr/local/dbls2k-orig/dbls2k /usr/local/bin/dbls2k-orig && ln -s /usr/local/dbls2k-orig/dechistu /usr/local/bin/dechistu-orig && ln -s /usr/local/dbls2k-orig/histaver40 /usr/local/bin/histaver40-orig && ln -s /usr/local/dbls2k-2targ/dbls2k /usr/local/bin/dbls2k-2targ && ln -s /usr/local/dbls2k-2targ/dechistu /usr/local/bin/dechistu-2targ && ln -s /usr/local/dbls2k-2targ/histaver40 /usr/local/bin/histaver40-2targ

WORKDIR /app
