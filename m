Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7E8293949
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 12:39:42 +0200 (CEST)
Received: from [::1] (port=60042 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUp3M-0004Ob-Ed; Tue, 20 Oct 2020 06:39:40 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:37326)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1kUp3I-0004J9-P3
 for usrp-users@lists.ettus.com; Tue, 20 Oct 2020 06:39:36 -0400
Received: by mail-oi1-f193.google.com with SMTP id t77so1652894oie.4
 for <usrp-users@lists.ettus.com>; Tue, 20 Oct 2020 03:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ihOmRTcXBl9FWG4DC0AOq6DgggwYMYUOzlpiotEIZso=;
 b=FEh0LhbrivGjRqUUNQzWbaSHxQ85OeH9eolDlY16mK6DAu1+yqO2az82F8lu5UY1Hu
 80No6qnukk+9Xed05M3ccXifE3k63aYSwaPcWvQfZ9JtqD07n/eqLMyWSeIN4j8FXqHF
 xGLulbtP1Z+LO8fh0VzOpgkg0et5jkwXeznqJImsDgrT9r3xGcwiYadCw5Tk/E+wPW27
 K4CrSwFemBN0iElW4ffEXNPGBp2uUlXyYFGnhlbprNFu9W1wXAoUkcg7sTTlJuBOlAtc
 P33Ndc+EnDyOjIGKe9j1TSXIIW/qyOMYdnZTqSGHe/P8WO5BMLBGO8lNTGdjiNLhmvzy
 CTuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ihOmRTcXBl9FWG4DC0AOq6DgggwYMYUOzlpiotEIZso=;
 b=gopvUcbfxuFwmIzicWcqNA5vTKJegDblO32UIRQ9F8NhIYTKLnz9P9P0ikKM3km3AX
 2BpWfNNKAS9B8+ConzQy2dWExiSHL/ZAFehClIwOmPx6UOtK+nz9JkvsvTY6ujk1+wP7
 EWozCUYBKCy87oKme0B3MfU0/TvfeG97htrB0MDoHfdeHBcBm9yn03R4vrLps68Zzwaz
 NHtxbDPDtOV70k8Co5Q7QbrI+6D0KUW2LkCz6yii34eho0cT0M8+8UsHrOnFoppxrDws
 QP39ICwgf2QvZeOksfTTxawRmdFheTg+uFo/qvKvVRm8AFrBjS9EQJGP+6g1VxW9rcGn
 d+mQ==
X-Gm-Message-State: AOAM533TEN1GXoyYhht2I4W7UUPAwoT0Yw6ckQmBr+Sug/Iq0UO/UJ6A
 Ca+gD1Q7r7ffpLL/7QdW4gHF2Ntc2gXV1jab9ewJ+1kY+ElQvg==
X-Google-Smtp-Source: ABdhPJxoLjVmKw3IFOM2fUqaggNhUzliYl4qawLvpfc5oDVYVhOpZziLGvqypJ76ElK1p1S2rsUvYX5hjnaNHqjRdlo=
X-Received: by 2002:aca:4257:: with SMTP id p84mr1307489oia.68.1603190335450; 
 Tue, 20 Oct 2020 03:38:55 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 20 Oct 2020 12:38:44 +0200
Message-ID: <CAO38sJ6TeArL081VG7Qg4wzu_nQyhHi3MNk9+-Z9mNZKX-FMoA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] ltesoftmodem run error - OAI Software
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ashutosh Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Content-Type: multipart/mixed; boundary="===============4872733277959834801=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4872733277959834801==
Content-Type: multipart/alternative; boundary="00000000000073b0a605b217d61f"

--00000000000073b0a605b217d61f
Content-Type: text/plain; charset="UTF-8"

Hi team,
I have below package :

*root@yy212477:/home/lab_5g# dpkg -l | grep uhd*
ii  libuhd-dev                             3.14.1.1-0ubuntu1~bionic1
               amd64        universal hardware driver for Ettus Research
products
ii  libuhd003:amd64                        3.13.0.1-0ubuntu1~bionic1
               amd64        hardware driver for Ettus Research products
ii  libuhd3.14.1:amd64                     3.14.1.1-0ubuntu1~bionic1
               amd64        hardware driver for Ettus Research products
ii  uhd-host                               3.14.1.1-0ubuntu1~bionic1
               amd64        hardware driver for Ettus Research products -
host apps

*UHD is installed following below commands :*
1-sudo apt-get install libboost-all-dev libusb-1.0-0-dev python-mako
doxygen python-docutils python-requests python3-pip cmake build-essential
2-pip3 install mako numpy
3-git clone git://github.com/EttusResearch/uhd.git
4-cd uhd; mkdir host/build; cd host/build
5-cmake -DCMAKE_INSTALL_PREFIX=/usr ..
6-make -j4
7-sudo make install
8-sudo ldconfig
9-sudo /usr/lib/uhd/utils/uhd_images_downloader.py


Also I have installed :

   sudo apt-get -y install git swig cmake doxygen build-essential
libboost-all-dev libtool libusb-1.0-0 libusb-1.0-0-dev libudev-dev
libncurses5-dev libfftw3-bin libfftw3-dev libfftw3-doc
libcppunit-1.14-0 libcppunit-dev libcppunit-doc ncurses-bin
cpufrequtils python-numpy python-numpy-doc python-numpy-dbg
python-scipy python-docutils qt4-bin-dbg qt4-default qt4-doc
libqt4-dev libqt4-dev-bin python-qt4 python-qt4-dbg python-qt4-dev
python-qt4-doc python-qt4-doc libqwt6abi1 libfftw3-bin libfftw3-dev
libfftw3-doc ncurses-bin libncurses5 libncurses5-dev libncurses5-dbg
libfontconfig1-dev libxrender-dev libpulse-dev swig g++ automake
autoconf libtool python-dev libfftw3-dev libcppunit-dev
libboost-all-dev libusb-dev libusb-1.0-0-dev fort77 libsdl1.2-dev
python-wxgtk3.0 git libqt4-dev python-numpy ccache python-opengl
libgsl-dev python-cheetah python-mako python-lxml doxygen qt4-default
qt4-dev-tools libusb-1.0-0-dev libqwtplot3d-qt5-dev pyqt4-dev-tools
python-qwt5-qt4 cmake git wget libxi-dev gtk2-engines-pixbuf
r-base-dev python-tk liborc-0.4-0 liborc-0.4-dev libasound2-dev
python-gtk2 libzmq3-dev libzmq5 python-requests python-sphinx
libcomedi-dev python-zmq libqwt-dev libqwt6abi1 python-six libgps-dev
libgps23 gpsd gpsd-clients python-gps python-setuptools


I just not have done below step:

Finally, make sure that the LD_LIBRARY_PATH environment variable is defined
and includes the folder under which UHD was installed. Most commonly, you
can add the line below to the end of your $HOME/.bashrc file:

   export LD_LIBRARY_PATH=/usr/local/lib



*I ran the below command with gdb and found the where out as below :*
*gdb -args ./lte-softmodem -O ../../../../opencells-mods/enb.10MHz.b200*

*backtrace shows below:*

Thread 1 "lte-softmodem" received signal SIGABRT, Aborted.
__GI_raise (sig=sig@entry=6) at ../sysdeps/unix/sysv/linux/raise.c:51
51      ../sysdeps/unix/sysv/linux/raise.c: No such file or directory.
(gdb) where
#0  __GI_raise (sig=sig@entry=6) at ../sysdeps/unix/sysv/linux/raise.c:51
#1  0x00007ffff593a8b1 in __GI_abort () at abort.c:79
#2  0x00007ffff592a42a in __assert_fail_base (
    fmt=0x7ffff5ab1a38 "%s%s%s:%u: %s%sAssertion `%s' failed.\n%n",
    assertion=assertion@entry=0x7fffdb76e537 "px != 0",
    file=file@entry=0x7fffdb76e360
"/usr/include/boost/smart_ptr/shared_ptr.hpp",
    line=line@entry=734,
    function=function@entry=0x7fffdb7b7d20 "typename
boost::detail::sp_member_access<T>::type boost::shared_ptr<T>::operator->()
const [with T = uhd::property_tree; typename
boost::detail::sp_member_access<T>::type = uhd::property_tree*]") at
assert.c:92
#3  0x00007ffff592a4a2 in __GI___assert_fail (assertion=0x7fffdb76e537 "px
!= 0",
    file=0x7fffdb76e360 "/usr/include/boost/smart_ptr/shared_ptr.hpp",
line=734,
    function=0x7fffdb7b7d20 "typename
boost::detail::sp_member_access<T>::type boost::shared_ptr<T>::operator->()
const [with T = uhd::property_tree; typename
boost::detail::sp_member_access<T>::type = uhd::property_tree*]") at
assert.c:101
#4  0x00007fffdb166143 in ?? () from
/usr/lib/x86_64-linux-gnu/libuhd.so.3.14.1
#5  0x00007fffdb16dbf5 in ?? () from
/usr/lib/x86_64-linux-gnu/libuhd.so.3.14.1
#6  0x00007fffdb197c2f in ?? () from
/usr/lib/x86_64-linux-gnu/libuhd.so.3.14.1
#7  0x00007fffdbcb7f82 in device_init (device=<optimized out>,
openair0_cfg=<optimized out>)
    at
/home/lab_5g/openairinterface5g/targets/ARCH/USRP/USERSPACE/LIB/usrp_lib.cpp:1112
#8  0x000055555593661f in load_lib (device=device@entry=0x555556c7cd58,
    openair0_cfg=openair0_cfg@entry=0x555556c7cdf8, cfg=cfg@entry=0x0,
    flag=flag@entry=0 '\000')
    at /home/lab_5g/openairinterface5g/targets/ARCH/COMMON/common_lib.c:124
#9  0x0000555555936864 in openair0_device_load (device=device@entry
=0x555556c7cd58,
    openair0_cfg=openair0_cfg@entry=0x555556c7cdf8)
    at /home/lab_5g/openairinterface5g/targets/ARCH/COMMON/common_lib.c:134
#10 0x00005555559259c3 in init_RU_proc (ru=ru@entry=0x555556c7c900)
    at /home/lab_5g/openairinterface5g/targets/RT/USER/lte-ru.c:2260
#11 0x0000555555929dec in init_RU (rf_config_file=<optimized out>,
    clock_source=<optimized out>, time_source=<optimized out>,
send_dmrssync=<optimized out>)
    at /home/lab_5g/openairinterface5g/targets/RT/USER/lte-ru.c:2687
#12 0x00005555559032bb in main (argc=<optimized out>, argv=<optimized out>)
    at /home/lab_5g/openairinterface5g/targets/RT/USER/lte-softmodem.c:671




thanks
Ashutosh

--00000000000073b0a605b217d61f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><font size=3D"4">Hi team,</font><div><div=
 class=3D"gmail-gs" style=3D"margin:0px;padding:0px 0px 20px;width:1120px;f=
ont-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium">=
<div class=3D"gmail-"><div id=3D"gmail-:2uk" class=3D"gmail-ii gmail-gt gma=
il-adO" style=3D"margin:8px 0px 0px;padding:0px"><div id=3D"gmail-:2t3" cla=
ss=3D"gmail-a3s gmail-aiL"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div>I have below package :</div><div><b><br></b></div><div><d=
iv><font size=3D"4"><b>root@yy212477:/home/lab_5g# dpkg -l | grep uhd</b></=
font></div><div>ii=C2=A0 libuhd-dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03.14.1.1-=
0ubuntu1~bionic1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0amd64=C2=A0 =C2=A0 =C2=A0 =C2=A0 universal hardware=
 driver for Ettus Research products</div><div>ii=C2=A0 libuhd003:amd64=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 3.13.0.1-0ubuntu1~bionic1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64=C2=A0 =C2=A0 =C2=A0 =C2=A0 h=
ardware driver for Ettus Research products</div><div>ii=C2=A0 libuhd3.14.1:=
amd64=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A03.14.1.1-0ubuntu1~bionic1=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64=C2=A0 =C2=A0 =C2=A0 =C2=A0 h=
ardware driver for Ettus Research products</div><div>ii=C2=A0 uhd-host=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03.14.1.1-0ubuntu1~bionic1=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0amd64=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hardware driver for Ettus Research products - h=
ost apps</div></div><div><b><font size=3D"4"><br></font></b></div><div><b><=
font size=3D"4">UHD is installed following=C2=A0below commands=C2=A0:</font=
></b></div><div><div>1-sudo apt-get install libboost-all-dev libusb-1.0-0-d=
ev python-mako doxygen python-docutils python-requests python3-pip cmake bu=
ild-essential</div><div>2-pip3 install mako numpy</div><div>3-git clone git=
://<a href=3D"http://github.com/EttusResearch/uhd.git" target=3D"_blank">gi=
thub.com/EttusResearch/uhd.git</a></div><div>4-cd uhd; mkdir host/build; cd=
 host/build</div><div>5-cmake -DCMAKE_INSTALL_PREFIX=3D/usr ..</div><div>6-=
make -j4</div><div>7-sudo make install</div><div>8-sudo ldconfig</div><div>=
9-sudo /usr/lib/uhd/utils/uhd_images_downloader.py</div></div><div><br></di=
v><div><br></div><div>Also I have=C2=A0installed :</div><div><pre style=3D"=
font-family:monospace,Courier;color:rgb(0,0,0);background-color:rgb(249,249=
,249);border:1px solid rgb(221,221,221);padding:1em;line-height:1.3em;font-=
size:14px">   sudo apt-get -y install git swig cmake doxygen build-essentia=
l libboost-all-dev libtool libusb-1.0-0 libusb-1.0-0-dev libudev-dev libncu=
rses5-dev libfftw3-bin libfftw3-dev libfftw3-doc libcppunit-1.14-0 libcppun=
it-dev libcppunit-doc ncurses-bin cpufrequtils python-numpy python-numpy-do=
c python-numpy-dbg python-scipy python-docutils qt4-bin-dbg qt4-default qt4=
-doc libqt4-dev libqt4-dev-bin python-qt4 python-qt4-dbg python-qt4-dev pyt=
hon-qt4-doc python-qt4-doc libqwt6abi1 libfftw3-bin libfftw3-dev libfftw3-d=
oc ncurses-bin libncurses5 libncurses5-dev libncurses5-dbg libfontconfig1-d=
ev libxrender-dev libpulse-dev swig g++ automake autoconf libtool python-de=
v libfftw3-dev libcppunit-dev libboost-all-dev libusb-dev libusb-1.0-0-dev =
fort77 libsdl1.2-dev python-wxgtk3.0 git libqt4-dev python-numpy ccache pyt=
hon-opengl libgsl-dev python-cheetah python-mako python-lxml doxygen qt4-de=
fault qt4-dev-tools libusb-1.0-0-dev libqwtplot3d-qt5-dev pyqt4-dev-tools p=
ython-qwt5-qt4 cmake git wget libxi-dev gtk2-engines-pixbuf r-base-dev pyth=
on-tk liborc-0.4-0 liborc-0.4-dev libasound2-dev python-gtk2 libzmq3-dev li=
bzmq5 python-requests python-sphinx libcomedi-dev python-zmq libqwt-dev lib=
qwt6abi1 python-six libgps-dev libgps23 gpsd gpsd-clients python-gps python=
-setuptools</pre></div><div><b><br></b></div><div><div><font color=3D"#ff00=
00" size=3D"4">I just not have done below step:</font></div><div><p style=
=3D"margin:0.5em 0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot=
;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:1=
4px">Finally, make sure that the=C2=A0<code style=3D"font-family:monospace,=
Courier;background-color:rgb(249,249,249);border:1px solid rgb(221,221,221)=
;border-radius:2px;padding:1px 4px">LD_LIBRARY_PATH</code>=C2=A0environment=
 variable is defined and includes the folder under which UHD was installed.=
 Most commonly, you can add the line below to the end of your=C2=A0<code st=
yle=3D"font-family:monospace,Courier;background-color:rgb(249,249,249);bord=
er:1px solid rgb(221,221,221);border-radius:2px;padding:1px 4px">$HOME/.bas=
hrc</code>=C2=A0file:</p><pre style=3D"font-family:monospace,Courier;color:=
rgb(0,0,0);background-color:rgb(249,249,249);border:1px solid rgb(221,221,2=
21);padding:1em;line-height:1.3em;font-size:14px">   export LD_LIBRARY_PATH=
=3D/usr/local/lib</pre></div></div><div><br></div><div><b><br></b></div><di=
v><b>I ran the below command with gdb and found the where out as below :</b=
></div><div><i>gdb -args ./lte-softmodem -O ../../../../opencells-mods/enb.=
10MHz.b200</i><br></div><div><i><br></i></div><div><b>backtrace shows below=
:</b></div><div><i><br></i></div><div><div>Thread 1 &quot;lte-softmodem&quo=
t; received signal SIGABRT, Aborted.</div><div>__GI_raise (sig=3Dsig@entry=
=3D6) at ../sysdeps/unix/sysv/linux/raise.c:51</div><div>51=C2=A0 =C2=A0 =
=C2=A0 ../sysdeps/unix/sysv/linux/raise.c: No such file or directory.</div>=
<div>(gdb) where</div><div>#0=C2=A0 __GI_raise (sig=3Dsig@entry=3D6) at ../=
sysdeps/unix/sysv/linux/raise.c:51</div><div>#1=C2=A0 0x00007ffff593a8b1 in=
 __GI_abort () at abort.c:79</div><div>#2=C2=A0 0x00007ffff592a42a in __ass=
ert_fail_base (</div><div>=C2=A0 =C2=A0 fmt=3D0x7ffff5ab1a38 &quot;%s%s%s:%=
u: %s%sAssertion `%s&#39; failed.\n%n&quot;,</div><div>=C2=A0 =C2=A0 assert=
ion=3Dassertion@entry=3D0x7fffdb76e537 &quot;px !=3D 0&quot;,</div><div>=C2=
=A0 =C2=A0 file=3Dfile@entry=3D0x7fffdb76e360 &quot;/usr/include/boost/smar=
t_ptr/shared_ptr.hpp&quot;,</div><div>=C2=A0 =C2=A0 line=3Dline@entry=3D734=
,</div><div>=C2=A0 =C2=A0 function=3Dfunction@entry=3D0x7fffdb7b7d20 &quot;=
typename boost::detail::sp_member_access&lt;T&gt;::type boost::shared_ptr&l=
t;T&gt;::operator-&gt;() const [with T =3D uhd::property_tree; typename boo=
st::detail::sp_member_access&lt;T&gt;::type =3D uhd::property_tree*]&quot;)=
 at assert.c:92</div><div>#3=C2=A0 0x00007ffff592a4a2 in __GI___assert_fail=
 (assertion=3D0x7fffdb76e537 &quot;px !=3D 0&quot;,</div><div>=C2=A0 =C2=A0=
 file=3D0x7fffdb76e360 &quot;/usr/include/boost/smart_ptr/shared_ptr.hpp&qu=
ot;, line=3D734,</div><div>=C2=A0 =C2=A0 function=3D0x7fffdb7b7d20 &quot;ty=
pename boost::detail::sp_member_access&lt;T&gt;::type boost::shared_ptr&lt;=
T&gt;::operator-&gt;() const [with T =3D uhd::property_tree; typename boost=
::detail::sp_member_access&lt;T&gt;::type =3D uhd::property_tree*]&quot;) a=
t assert.c:101</div><div>#4=C2=A0 0x00007fffdb166143 in ?? () from /usr/lib=
/x86_64-linux-gnu/libuhd.so.3.14.1</div><div>#5=C2=A0 0x00007fffdb16dbf5 in=
 ?? () from /usr/lib/x86_64-linux-gnu/libuhd.so.3.14.1</div><div>#6=C2=A0 0=
x00007fffdb197c2f in ?? () from /usr/lib/x86_64-linux-gnu/libuhd.so.3.14.1<=
/div><div>#7=C2=A0 0x00007fffdbcb7f82 in device_init (device=3D&lt;optimize=
d out&gt;, openair0_cfg=3D&lt;optimized out&gt;)</div><div>=C2=A0 =C2=A0 at=
 /home/lab_5g/openairinterface5g/targets/ARCH/USRP/USERSPACE/LIB/usrp_lib.c=
pp:1112</div><div>#8=C2=A0 0x000055555593661f in load_lib (device=3Ddevice@=
entry=3D0x555556c7cd58,</div><div>=C2=A0 =C2=A0 openair0_cfg=3Dopenair0_cfg=
@entry=3D0x555556c7cdf8, cfg=3Dcfg@entry=3D0x0,</div><div>=C2=A0 =C2=A0 fla=
g=3Dflag@entry=3D0 &#39;\000&#39;)</div><div>=C2=A0 =C2=A0 at /home/lab_5g/=
openairinterface5g/targets/ARCH/COMMON/common_lib.c:124</div><div>#9=C2=A0 =
0x0000555555936864 in openair0_device_load (device=3Ddevice@entry=3D0x55555=
6c7cd58,</div><div>=C2=A0 =C2=A0 openair0_cfg=3Dopenair0_cfg@entry=3D0x5555=
56c7cdf8)</div><div>=C2=A0 =C2=A0 at /home/lab_5g/openairinterface5g/target=
s/ARCH/COMMON/common_lib.c:134</div><div>#10 0x00005555559259c3 in init_RU_=
proc (ru=3Dru@entry=3D0x555556c7c900)</div><div>=C2=A0 =C2=A0 at /home/lab_=
5g/openairinterface5g/targets/RT/USER/lte-ru.c:2260</div><div>#11 0x0000555=
555929dec in init_RU (rf_config_file=3D&lt;optimized out&gt;,</div><div>=C2=
=A0 =C2=A0 clock_source=3D&lt;optimized out&gt;, time_source=3D&lt;optimize=
d out&gt;, send_dmrssync=3D&lt;optimized out&gt;)</div><div>=C2=A0 =C2=A0 a=
t /home/lab_5g/openairinterface5g/targets/RT/USER/lte-ru.c:2687</div><div>#=
12 0x00005555559032bb in main (argc=3D&lt;optimized out&gt;, argv=3D&lt;opt=
imized out&gt;)</div><div>=C2=A0 =C2=A0 at /home/lab_5g/openairinterface5g/=
targets/RT/USER/lte-softmodem.c:671</div></div><div><br></div><div><br></di=
v><div><br></div><div><br></div><div>thanks</div><font color=3D"#888888">As=
hutosh</font></div></div></div></div></div></div></div></div><div class=3D"=
gmail-yj6qo gmail-ajU" style=3D"margin:2px 0px 0px"><div id=3D"gmail-:2uw" =
class=3D"gmail-ajR" tabindex=3D"0"><img class=3D"gmail-ajT" src=3D"https://=
ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif" style=3D"background-i=
mage: url(&quot;https://www.gstatic.com/images/icons/material/system/1x/mor=
e_horiz_black_20dp.png&quot;); background-size: 20px;"></div><div><br></div=
></div></div></div><div class=3D"gmail-hi"></div></div></div></div></div></=
div>

--00000000000073b0a605b217d61f--


--===============4872733277959834801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4872733277959834801==--

