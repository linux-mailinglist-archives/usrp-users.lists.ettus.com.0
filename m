Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C7E35361B
	for <lists+usrp-users@lfdr.de>; Sun,  4 Apr 2021 03:53:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0CEC3840AD
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 21:53:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="JvkvGO8v";
	dkim-atps=neutral
Received: from resqmta-po-11v.sys.comcast.net (resqmta-po-11v.sys.comcast.net [96.114.154.170])
	by mm2.emwd.com (Postfix) with ESMTPS id B4864383AC1
	for <usrp-users@lists.ettus.com>; Sat,  3 Apr 2021 21:52:58 -0400 (EDT)
Received: from resomta-po-19v.sys.comcast.net ([96.114.154.243])
	by resqmta-po-11v.sys.comcast.net with ESMTP
	id SrrxlCKHDGk1lSrwflg52W; Sun, 04 Apr 2021 01:52:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1617501177;
	bh=6RUDvOrmEiMX4mdlXoERoDAJrCW6q8oIYZSf6dzHRx4=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=JvkvGO8vUrYRyYYvrC6N5HHTwzxOw600TX0lIULjkXKrAx+lEQjELJMwElCiLTW1V
	 nyygdPIGAi1dkklPdK2xoDwYNHIC2P7x5Ze2fvC82Sx2idnvhw82vmXkYskkIh62bs
	 n6NQ88dFft4/V4qOOwBUGmJTnv6dH0vNqBU9j9/PH/Vnh6EL5K2pPL+rIhpiEk9K7Z
	 VhUcOUEVHn7RxXJIqfEKzmx9z8qQlTD171E/MwuRX5mF0jUhXdQL7dmkwcfXT2HLvr
	 ieTu38jakX7kokrL4FFVRqbZM9DB5V/hCBg2tlY5Q6RNnKvK+BjeDSdwmPaM/ITZ3c
	 j4u5F7h9SkBJw==
Received: from [IPv6:2601:647:4700:284:6539:c611:434a:281a]
 ([IPv6:2601:647:4700:284:6539:c611:434a:281a])
	by resomta-po-19v.sys.comcast.net with ESMTPSA
	id SrwelsfNNwUc1Srwflz7AJ; Sun, 04 Apr 2021 01:52:57 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <88b0297dc16541e896eb4bac4878105c@boeing.com>
 <CALNMZ8X3u9wXQu-_u-Cz9x6vrwGw7R8Vnj4xfo89FOeRxfX3Sw@mail.gmail.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <c1aea6c3-fec6-654b-0d44-14547ac126a6@comcast.net>
Date: Sat, 3 Apr 2021 18:52:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CALNMZ8X3u9wXQu-_u-Cz9x6vrwGw7R8Vnj4xfo89FOeRxfX3Sw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: XLWPA57Y4HRUXZVRC77A6OPAMLVOEA7U
X-Message-ID-Hash: XLWPA57Y4HRUXZVRC77A6OPAMLVOEA7U
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 to USRP B210 with Python API
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XLWPA57Y4HRUXZVRC77A6OPAMLVOEA7U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6455540684223743062=="

This is a multi-part message in MIME format.
--===============6455540684223743062==
Content-Type: multipart/alternative;
 boundary="------------4A746A6C225F9BA0C9477ED2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4A746A6C225F9BA0C9477ED2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

This is just a guess, but you could try:

-DCMAKE_SHARED_LINKER_FLAGS=3D"-latomic"

in addition.

Ron

On 4/3/21 18:34, Brendan Horsfield wrote:
> Thanks Ken.=C2=A0 As you suggested, I added=20
> -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" to the CMake call.
>
> The good news is that the UHD build & installation process completed=20
> successfully.
>
> The bad news is that when I try to import the uhd module in Python3, I=20
> get=C2=A0the following error:
>
> pi@raspberrypi:~ $ python3
> Python 3.7.3 (default, Jan 22 2021, 20:04:44)
> [GCC 8.3.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>> import uhd
> Traceback (most recent call last):
> =C2=A0 File "<stdin>", line 1, in <module>
> =C2=A0 File "/usr/local/lib/python3/dist-packages/uhd/__init__.py", lin=
e=20
> 10, in <module>
> =C2=A0 =C2=A0 from . import types
> =C2=A0 File "/usr/local/lib/python3/dist-packages/uhd/types.py", line 1=
0,=20
> in <module>
> =C2=A0 =C2=A0 from . import libpyuhd as lib
> ImportError: /usr/local/lib/libuhd.so.4.0.0: undefined symbol:=20
> __atomic_fetch_add_8
> >>>
>
> Did you encounter this problem too?
>
> I guess the next step is to hack the "CMakeLists.txt" files as per the=20
> link you sent me.=C2=A0 Just to clarify one point first:=C2=A0 If I mod=
ify the=20
> CMakeLists.txt files, do I still need to include=20
> -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" in the CMake call?
>
> Thanks,
> Brendan.
>
>
> On Sat, Apr 3, 2021 at 10:29 PM Clark (US), Kenneth C=20
> <kenneth.c.clark2@boeing.com <mailto:kenneth.c.clark2@boeing.com>> wrot=
e:
>
>
>     I had the same problem build UHD on RPi4
>
>     Answer here:
>     https://gitlab.kitware.com/cmake/cmake/-/issues/21174
>
>     Add to CMake call:
>     -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"
>
>     Regards,
>
>     Ken
>
>
>     -----Original Message-----
>     From: usrp-users-request@lists.ettus.com
>     <mailto:usrp-users-request@lists.ettus.com>
>     [mailto:usrp-users-request@lists.ettus.com
>     <mailto:usrp-users-request@lists.ettus.com>]
>     Sent: Saturday, April 3, 2021 11:13
>     To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     Subject: [EXTERNAL] USRP-users Digest, Vol 128, Issue 7
>
>     EXT email: be mindful of links/attachments.
>
>
>
>     Send USRP-users mailing list submissions to
>     usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>
>     To subscribe or unsubscribe via email, send a message with subject
>     or body 'help' to
>     usrp-users-request@lists.ettus.com
>     <mailto:usrp-users-request@lists.ettus.com>
>
>     You can reach the person managing the list at
>     usrp-users-owner@lists.ettus.com
>     <mailto:usrp-users-owner@lists.ettus.com>
>
>     When replying, please edit your Subject line so it is more
>     specific than "Re: Contents of USRP-users digest..."
>
>     Today's Topics:
>
>     =C2=A0 =C2=A01. Re: Problem with interfacing Raspberry Pi 4 to USRP=
 B210
>     with Python API
>     =C2=A0 =C2=A0 =C2=A0 (Brendan Horsfield)
>     =C2=A0 =C2=A02. Re: Intermittent problem with GPS synchronization f=
or
>     multiple E310 units
>     =C2=A0 =C2=A0 =C2=A0 (Ofer Saferman)
>
>
>     -------------------------------------------------------------------=
---
>
>     Message: 1
>     Date: Sat, 3 Apr 2021 21:07:59 +1000
>     From: Brendan Horsfield <brendan.horsfield@vectalabs.com
>     <mailto:brendan.horsfield@vectalabs.com>>
>     Subject: [USRP-users] Re: Problem with interfacing Raspberry Pi 4 t=
o
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 USRP B210 with Python API
>     To: Marcus D Leech <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     Cc: USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     Message-ID:
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0
>     <CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gmail.com
>     <mailto:CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gm=
ail.com>>
>     Content-Type: multipart/alternative;
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 boundary=3D"000000000000dc3aeb05bf0f7ac=
e"
>
>     Hi Marcus,
>
>     I have tried your suggestion, but unfortunately without success:
>
>     Per your advice, I have edited the file "cmake.lwt" in the folder
>     /usr/local/lib/python3.7/dist-packages/pybombs/templates to
>     include the option "-DENABLE_PYTHON_API=3DON" in the calls to
>     cmake.=C2=A0 The modified commands are as follows:
>
>     configure: cmake .. -DENABLE_PYTHON_API=3DON
>     -DCMAKE_BUILD_TYPE=3D$cmakebuildtype -DCMAKE_INSTALL_PREFIX=3D$pref=
ix
>     $config_opt -Wno-dev
>     configure_static: cmake .. -DENABLE_PYTHON_API=3DON
>     -DCMAKE_BUILD_TYPE=3D$cmakebuildtype -DCMAKE_INSTALL_PREFIX=3D$pref=
ix
>     -DENABLE_STATIC_LIBS=3DTrue $config_opt
>
>     I removed the previous UHD installation and re-ran "pybombs
>     install uhd", but the end result was much the same:=C2=A0 the
>     installation process completed without errors, but the Python API
>     was not included in the installation.
>
>     QUESTION 1:=C2=A0 Can you tell me if PyBOMBS actually builds the UH=
D
>     driver from source, or does it simply copy a pre-compiled binary
>     onto my system?=C2=A0 The reason I ask is that PyBOMBS is quite qui=
ck
>     to install the UHD driver, whereas the non-PyBOMBS approach is
>     VERY slow (i.e. around 60 minutes to get to 53%, at which point it
>     crashes out with an error).
>
>     QUESTION 2:=C2=A0 This whole process feels more difficult than it
>     should be.
>     Why isn't the Python API installed with the UHD driver by
>     default?=C2=A0 Would I be better off using another language (like C=
++)
>     to control the USRP?
>
>     Thanks,
>     Brendan.
>
>
>
>     On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech
>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>     wrote:
>
>     > Perhaps look at the PyBombs recipe for your platform=E2=80=94ther=
e=E2=80=99s
>     probably
>     > a compiler flag that needs to be set that you=E2=80=99re missing,=
 but I
>     don=E2=80=99t
>     > know what that is.
>     >
>     > Also, in general, you don=E2=80=99t need to become root to compil=
e and build
>     > code=E2=80=94only needed during the =E2=80=9Cmake install=E2=80=9D
>     >
>     >
>     >
>     > Sent from my iPhone
>     >
>     > On Apr 2, 2021, at 7:19 AM, Brendan Horsfield <
>     > brendan.horsfield@vectalabs.com
>     <mailto:brendan.horsfield@vectalabs.com>> wrote:
>     >
>     > =EF=BB=BF
>     > Hi Folks,
>     >
>     > I would like to interface my Raspberry Pi 4 to a USRP B210 via th=
e
>     > Python API.=C2=A0 This requires the UHD driver to be built from s=
ource.
>     > Unfortunately, whenever I try this I encounter some errors that s=
top
>     > the build process in its tracks.
>     >
>     > Details of the error are as follows:
>     >
>     > [ 53%] Linking CXX executable test_clock_synch
>     > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>     > `__atomic_compare_exchange_8'
>     > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>     > `__atomic_load_8'
>     > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>     > `__atomic_store_8'
>     > /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference to
>     > `__atomic_fetch_add_8'
>     > collect2: error: ld returned 1 exit status
>     > make[2]: ***
>     [examples/CMakeFiles/test_clock_synch.dir/build.make:95:
>     > examples/test_clock_synch] Error 1
>     > make[1]: *** [CMakeFiles/Makefile2:1039:
>     > examples/CMakeFiles/test_clock_synch.dir/all] Error 2
>     > make: *** [Makefile:163: all] Error 2
>     >
>     > The process I have been using is as follows:
>     >
>     > STEP 1:=C2=A0 INSTALL DEPENDENCIES
>     > sudo apt-get install libboost-all-dev libusb-1.0-0-dev doxygen
>     > python3-docutils python3-mako python3-numpy python3-requests
>     > python3-ruamel.yaml python3-setuptools cmake build-essential
>     >
>     > STEP 2:=C2=A0 BUILD UHD DRIVER FROM SOURCE
>     > cd /home/pi
>     > mkdir workarea-uhd
>     > cd workarea-uhd
>     > git clone https://github.com/EttusResearch/uhd
>     > cd uhd
>     > git checkout v4.0.0.0
>     > cd host
>     > mkdir build
>     > cd build
>     > sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3DON ../
>     sudo make
>     > --->=C2=A0 (ERRORS OCCUR DURING "MAKE" PROCESS)
>     >
>     > My system configuration is as follows:
>     > Hardware: Raspberry Pi 4 Model B Rev 1.4
>     > OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l) Ettus USRP B2=
10
>     >
>     > Does anyone know what the problem could be, and how I can
>     resolve it?
>     >
>     > One final note:=C2=A0 Using PyBOMBS, I was able to successfully b=
uild &
>     > install the UHD driver and connect to the USRP. Unfortunately the
>     > PyBOMBS build does not include the Python API, which is what I
>     really
>     > want.=C2=A0 Is there a different version of the PyBOMBS build tha=
t
>     includes the Python API?
>     >
>     > Thanks & Regards,
>     > Brendan.
>     >
>     >
>     >
>     > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com> To unsubscribe
>     > send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>     >
>     >
>     -------------- next part --------------
>     A message part incompatible with plain text digests has been
>     removed ...
>     Name: not available
>     Type: text/html
>     Size: 5624 bytes
>     Desc: not available
>
>     ------------------------------
>
>     Message: 2
>     Date: Sat, 3 Apr 2021 14:12:35 +0300
>     From: Ofer Saferman <ofer@navigicom.com <mailto:ofer@navigicom.com>=
>
>     Subject: [USRP-users] Re: Intermittent problem with GPS
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 synchronization for multiple E310 units
>     To: usrp-users <usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>>
>     Message-ID:
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0
>     <CACDReSwXUvJ8_LimfVOn4StHQEGhNntY-nCSv0aYdBsX=3DAtV_w@mail.gmail.c=
om
>     <mailto:AtV_w@mail.gmail.com>>
>     Content-Type: multipart/alternative;
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 boundary=3D"000000000000566d1705bf0f8b0=
e"
>
>     Hello Philip,
>
>     Thank you for the explanation.
>     What would you suggest?
>     opkg exists. There must be a way to install ntpd without needing
>     to rebuild the image.
>     Maybe use pybombs or other methods?
>     git also works. Maybe download a different package manager and
>     compile it?
>
>     It seems that Marcus pointed out a great benefit of E310 units
>     running gpsd, but without ntpd system clock can't sync and it
>     seems that this feature can vastly simplify gps synchronization
>     among E310 units.
>
>     I would be very grateful if anybody can suggest a solution to
>     install ntpd on E310 units running UHD 3.15 SD-card image.
>
>     Regards,
>     Ofer Saferman.
>
>     On Sat, Apr 3, 2021 at 10:30 AM
>     <usrp-users-request@lists.ettus.com
>     <mailto:usrp-users-request@lists.ettus.com>> wrote:
>
>     > Send USRP-users mailing list submissions to
>     > usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     >
>     > To subscribe or unsubscribe via email, send a message with
>     subject or
>     > body 'help' to
>     > usrp-users-request@lists.ettus.com
>     <mailto:usrp-users-request@lists.ettus.com>
>     >
>     > You can reach the person managing the list at
>     > usrp-users-owner@lists.ettus.com
>     <mailto:usrp-users-owner@lists.ettus.com>
>     >
>     > When replying, please edit your Subject line so it is more specif=
ic
>     > than "Re: Contents of USRP-users digest..."Today's Topics:
>     >
>     >=C2=A0 =C2=A0 1. Re: Intermittent problem with GPS synchronization=
 for multiple
>     > E310 units
>     >=C2=A0 =C2=A0 =C2=A0 =C2=A0(Philip Balister)
>     >
>     >
>     >
>     > ---------- Forwarded message ----------
>     > From: Philip Balister <philip@balister.org
>     <mailto:philip@balister.org>>
>     > To: Ofer Saferman <ofer@navigicom.com
>     <mailto:ofer@navigicom.com>>, "Marcus D. Leech" <
>     > patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>     > Cc: Rob Kossler <rkossler@nd.edu <mailto:rkossler@nd.edu>>,
>     usrp-users
>     > <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     > Bcc:
>     > Date: Fri, 2 Apr 2021 10:09:43 -0400
>     > Subject: [USRP-users] Re: Intermittent problem with GPS
>     > synchronization for multiple E310 units On 4/2/21 7:17 AM, Ofer
>     > Saferman wrote:
>     > > Marcus Hi,
>     > >
>     > > Your suggestion below to install ntpd does not work.
>     > > The image does not include it. Although the old thread says
>     > > otherwise I think it refers to an older UHD release that did
>     include ntpd.
>     > > Any accurate instructions on how to install it anyway?
>     > > Maybe opkg should be configured to access another repository?
>     > > Doing: opkg list | grep ntpd, does not yield anything useful so=
 it
>     > > is not just a question of typing it correctly.
>     >
>     > As far as I know, no image has been setup to use package feeds.
>     >
>     > I know ntpd worked in release4 images, pretty sure the newer
>     image was
>     > redone and things have been left out that used to be there.
>     >
>     > Philip
>     >
>     > >
>     > > Regards,
>     > > Ofer Saferman
>     > >
>     > > On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech
>     > > <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>     > > wrote:
>     > >
>     > >> On 04/01/2021 06:00 AM, Ofer Saferman wrote:
>     > >>
>     > >> Hello Marcus,
>     > >>
>     > >> I am working on E310 with the latest UHD-3.15 SD card image.
>     > >> It seems not to include ntpd that is required to synchronize
>     system
>     > >> time to GPS time.
>     > >> Any idea how to install it on the E310?
>     > >>
>     > >> Regards,
>     > >> Ofer Saferman
>     > >>
>     > >> sudo opkg install ntpd
>     > >>
>     > >> should work, but it has been a while since I installed any
>     packages
>     > >> on
>     > my
>     > >> E310.
>     > >>
>     > >> The E310 is based on OpenEmbedded Linux, so all the info about
>     > installing
>     > >> and managing packages on OpenEmbedded apply.
>     > >>
>     > >>
>     > >>
>     > >> On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech <
>     > patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>     > >> wrote:
>     > >>
>     > >>> Just use gettimeofday() or any of the myriad subtle variants
>     > >>> available
>     > in
>     > >>> boost to get you the Linux system time, and use that in a
>     call to
>     > >>> set_time_next_pps().
>     > >>>
>     > >>> The fact that all your E310s will be running GPSD means
>     they=E2=80=99ll be
>     > >>> adjusting system time appropriately and they=E2=80=99ll all a=
gree on
>     what
>     > >>> time
>     > it
>     > >>> is, depending on the level of precision you need.
>     > >>>
>     > >>> Sent from my iPhone
>     > >>>
>     > >>> On Mar 31, 2021, at 3:50 PM, Ofer Saferman
>     <ofer@navigicom.com <mailto:ofer@navigicom.com>> wrote:
>     > >>>
>     > >>> =EF=BB=BF
>     > >>> Thank you Rob. Your suggestions are always helpful. I will lo=
ok
>     > >>> into using gps_gpgga.
>     > >>> Thank you Marcus. I am already adding one, per other examples
>     > >>> posted
>     > here
>     > >>> and sync_to_gps example. Can you please comment how I can
>     benefit
>     > >>> from
>     > the
>     > >>> fact that E310 units use gpsd in Linux?
>     > >>>
>     > >>> Regards,
>     > >>> Ofer Saferman
>     > >>>
>     > >>> On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech <
>     > patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>
>     > >>> wrote:
>     > >>>
>     > >>>>
>     > >>>>
>     > >>>> Sent from my iPhone
>     > >>>>
>     > >>>> On Mar 31, 2021, at 2:22 PM, Rob Kossler <rkossler@nd.edu
>     <mailto:rkossler@nd.edu>> wrote:
>     > >>>>
>     > >>>> =EF=BB=BF
>     > >>>> Hi Ofer,
>     > >>>> Take a look at the Ettus source code gps_ctrl.cpp.=C2=A0 In
>     > >>>> particular,
>     > look
>     > >>>> at the get_sentence() usage which in the case of "gps_time"
>     waits
>     > >>>> for
>     > the
>     > >>>> next occurrence (wait=3Dtrue),=C2=A0 but for the others does=
 not wait.
>     > >>>> But
>     > this
>     > >>>> doesn't fully explain the behavior you are seeing.=C2=A0 If =
you
>     do the
>     > following:
>     > >>>> 1) wait for PPS time to change
>     > >>>> 2) read the "gps_time" sensor
>     > >>>> 3) set_time_next_pps (use the value you just read)
>     > >>>>
>     > >>>> Add 1 to the time you just read before calling
>     set_time_next_pps.
>     > >>>>
>     > >>>>
>     > >>>> It should still work because the "gps_time" command should j=
ust
>     > >>>> wait until the next PPS.=C2=A0 I guess it depends upon how
>     > >>>> "synchronized" are
>     > the
>     > >>>> received NMEA string with the PPS edge. Step 1 above waits f=
or
>     > >>>> the
>     > PPS
>     > >>>> edge, but maybe the NMEA string arrives 0.1 secs before or
>     after
>     > that.=C2=A0 I
>     > >>>> don't really know.=C2=A0 Perhaps you need to switch to using
>     "gps_gpgga"
>     > such
>     > >>>> that there is no additional wait added and also perhaps you
>     > >>>> should
>     > add step
>     > >>>> 1B which would be just a fixed delay of perhaps 0.4 secs so
>     that
>     > >>>> you
>     > will
>     > >>>> read the NMEA string in between the PPS edges.
>     > >>>> Rob
>     > >>>>
>     > >>>> On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler
>     <rkossler@nd.edu <mailto:rkossler@nd.edu>> wrote:
>     > >>>>
>     > >>>>> Hi Ofer,
>     > >>>>> I don't know why the "gps_time" sensor takes long to read.
>     But,
>     > >>>>> can
>     > you
>     > >>>>> try the other sensors (perhaps there is a "gps_gpgga"
>     sensor?)?
>     > >>>>> The
>     > time
>     > >>>>> is embedded in these as well.
>     > >>>>> Rob
>     > >>>>>
>     > >>>>>
>     > >>>>> On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman
>     > >>>>> <ofer@navigicom.com <mailto:ofer@navigicom.com>>
>     > >>>>> wrote:
>     > >>>>>
>     > >>>>>> Marcus Hi,
>     > >>>>>>
>     > >>>>>> If the gps_time "sensor" returns a value only once per sec=
ond
>     > >>>>>> how
>     > come
>     > >>>>>> I manage to read it sometimes in less than 1 second?
>     > >>>>>> In my code the situation is worse than the simple example
>     > >>>>>> below. It usually takes more than 1 sec. to read it and
>     > >>>>>> sometimes even 1.7 or
>     > 1.8
>     > >>>>>> seconds. I don't understand how the size or complexity of =
the
>     > >>>>>> code
>     > affects
>     > >>>>>> the time it takes to read gps_time.
>     > >>>>>>
>     > >>>>>> How to treat your comment about the use of GPSD and good
>     > >>>>>> synchronization as it relates to code?
>     > >>>>>> Should I not change the time source in code and go
>     through the
>     > >>>>>> whole process of synchronization using gps_time?
>     > >>>>>> Can I "assume" the systems are synced just by the effect t=
hey
>     > >>>>>> were connected enough time to a GPS antenna? and then just
>     > >>>>>> access their
>     > time -
>     > >>>>>> radio_ctrl->get_time_last_pps()?
>     > >>>>>> How to use this information programmatically?
>     > >>>>>>
>     > >>>>>> Regards,
>     > >>>>>> Ofer Saferman
>     > >>>>>>
>     > >>>>>>
>     > >>>>>> ---------- Forwarded message ----------
>     > >>>>>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     > >>>>>>> To: usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     > >>>>>>> Cc:
>     > >>>>>>> Bcc:
>     > >>>>>>> Date: Wed, 31 Mar 2021 09:19:20 -0400
>     > >>>>>>> Subject: [USRP-users] Re: Intermittent problem with GPS
>     > >>>>>>> synchronization for multiple E310 units On 03/31/2021 06:=
49
>     > >>>>>>> AM, Ofer Saferman wrote:
>     > >>>>>>>> Hello,
>     > >>>>>>>>
>     > >>>>>>>> I have a system that uses 4 USRP E310 units.
>     > >>>>>>>> Each unit is connected to a GPS antenna.
>     > >>>>>>>> Time source is set to gpsdo.
>     > >>>>>>>>
>     > >>>>>>>> I run the same software remotely on all 4 units from a P=
C.
>     > Software
>     > >>>>>>>> runs on the units themselves.
>     > >>>>>>>> I print out messages to show if the reference is locked =
and
>     > >>>>>>>> the
>     > GPS
>     > >>>>>>> is
>     > >>>>>>>> locked and also what is the GPS time that each unit was
>     > >>>>>>> synchronized to.
>     > >>>>>>>> In some cases the units synchronize to the same GPS
>     time and
>     > >>>>>>>> in
>     > >>>>>>> other
>     > >>>>>>>> cases there is 1 second difference between GPS time of
>     > >>>>>>>> different
>     > >>>>>>> units
>     > >>>>>>>> thus causing the units to be unsynchronized.
>     > >>>>>>>>
>     > >>>>>>>> I was wondering how this was possible.
>     > >>>>>>>> The synchronization process (documented by others in
>     the past
>     > >>>>>>>> on
>     > >>>>>>> the
>     > >>>>>>>> mailing list) is:
>     > >>>>>>>> * Wait for ref and GPS lock
>     > >>>>>>>> * Wait for a pps edge (get_time_last_pps)
>     > >>>>>>>> * Read gps_time value
>     > >>>>>>>> * Sync system clock to GPS clock on next PPS edge
>     > >>>>>>> (set_time_next_pps +
>     > >>>>>>>> 1.0 sec)
>     > >>>>>>>>
>     > >>>>>>>> Something similar is also implemented in the
>     sync_to_gps example.
>     > >>>>>>>>
>     > >>>>>>>> In order to debug the problem I decided to time the read=
ing
>     > >>>>>>>> of the gps_time sensor to see if there is a clue why
>     > >>>>>>>> different units miss
>     > >>>>>>> the
>     > >>>>>>>> PPS edge and lock to a time of the next second.
>     > >>>>>>>>
>     > >>>>>>>> I was very surprised to find out that it takes between
>     0.9 to
>     > >>>>>>>> 1.2 seconds to read the gps_time sensor.
>     > >>>>>>>> This explains exactly why it is difficult to synchronize
>     > >>>>>>>> multiple units to the same time instance because if one
>     unit
>     > >>>>>>>> takes 0.9
>     > >>>>>>> seconds
>     > >>>>>>>> to read the sensor and the other unit takes 1.2 seconds =
to
>     > >>>>>>>> read
>     > the
>     > >>>>>>>> sensor then each unit will lock on a different GPS time =
1
>     > >>>>>>>> second
>     > >>>>>>> apart.
>     > >>>>>>>>
>     > >>>>>>>> Here is a short software I wrote to time the gps_time
>     sensor
>     > >>>>>>> reading:
>     > >>>>>>>> --------------------------------------------------------=
-
>     > >>>>>>>> #include <uhd/utils/safe_main.hpp> #include
>     <uhd/device3.hpp>
>     > >>>>>>>> //#include <uhd/usrp/multi_usrp.hpp> #include
>     > >>>>>>>> <uhd/types/sensors.hpp> #include
>     <boost/program_options.hpp>
>     > >>>>>>>> #include <boost/format.hpp> #include <chrono> #include
>     > >>>>>>>> <iostream>
>     > >>>>>>>>
>     > >>>>>>>> namespace po =3D boost::program_options;
>     > >>>>>>>>
>     > >>>>>>>> int UHD_SAFE_MAIN(int argc, char *argv[]){
>     > >>>>>>>>
>     > >>>>>>>> std::string args;
>     > >>>>>>>>
>     > >>>>>>>> =C2=A0po::options_description desc("Allowed options");
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0desc.add_options()
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0("help", "help message"=
) ("args",
>     > >>>>>>>> po::value<std::string>(&args)->default_value(""), "devic=
e
>     > >>>>>>>> address args")
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0;
>     > >>>>>>>>
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0po::variables_map vm;
>     > >>>>>>>> =C2=A0po::store(po::parse_command_line(argc, argv, desc)=
, vm);
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0po::notify(vm);
>     > >>>>>>>>
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0//print the help message
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0if (vm.count("help")){
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0std::cout << boost::for=
mat("Timinig of
>     gps_time: %s")
>     > >>>>>>>> %
>     > >>>>>>> desc
>     > >>>>>>>> << std::endl;
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ~0;
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0}
>     > >>>>>>>>
>     > >>>>>>>> uhd::device3::sptr usrp =3D uhd::device3::make(args);
>     > >>>>>>>> //uhd::usrp::multi_usrp::sptr usrp =3D
>     > >>>>>>> uhd::usrp::multi_usrp::make(args);
>     > >>>>>>>>
>     > >>>>>>>> uhd::sensor_value_t gps_time =3D
>     > >>>>>>>>
>     > >>>>>>>
>     >
>     usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/g=
ps_
>     > usrp->time").get();
>     > >>>>>>>> //uhd::sensor_value_t gps_time =3D
>     > >>>>>>> usrp->get_mboard_sensor("gps_time", 0);
>     > >>>>>>>>
>     > >>>>>>>> std::chrono::steady_clock::time_point start_time, end_ti=
me;
>     > >>>>>>>> std::chrono::duration<double> time_diff; // Default
>     unit for
>     > >>>>>>> duration
>     > >>>>>>>> is seconds.
>     > >>>>>>>>
>     > >>>>>>>> for(int ii=3D0 ; ii<20 ; ii++)
>     > >>>>>>>> {
>     > >>>>>>>> start_time =3D std::chrono::steady_clock::now(); gps_tim=
e =3D
>     > >>>>>>>>
>     > >>>>>>>
>     >
>     usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/g=
ps_
>     > usrp->time").get();
>     > >>>>>>>> //gps_time =3D usrp->get_mboard_sensor("gps_time", 0);
>     end_time
>     > >>>>>>>> =3D std::chrono::steady_clock::now(); time_diff =3D end_=
time -
>     > >>>>>>>> start_time;
>     > >>>>>>>>
>     > >>>>>>>> std::cout << "gps_time[" << (boost::format("%02d") %
>     ii) << "]: "
>     > >>>>>>> <<
>     > >>>>>>>> int64_t(gps_time.to_int()) << ". Time to read
>     \"gps_time\": "
>     > >>>>>>>> <<
>     > >>>>>>>> (boost::format("%0.9f") % time_diff.count()) << "
>     seconds" <<
>     > >>>>>>> std::endl;
>     > >>>>>>>> }
>     > >>>>>>>>
>     > >>>>>>>>=C2=A0 =C2=A0 =C2=A0return 0;
>     > >>>>>>>> }
>     > >>>>>>>>
>     > >>>>>>>
>     >
>     -------------------------------------------------------------------=
---
>     > ----------
>     > >>>>>>>> Here are the results of one typical run:
>     > >>>>>>>> gps_time[00]: 1617183840. Time to read "gps_time":
>     > >>>>>>>> 0.884164380
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[01]: 1617183841. Time to read "gps_time":
>     > >>>>>>>> 0.877966469
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[02]: 1617183842. Time to read "gps_time":
>     > >>>>>>>> 1.170869661
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[03]: 1617183843. Time to read "gps_time":
>     > >>>>>>>> 0.882917987
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[04]: 1617183844. Time to read "gps_time":
>     > >>>>>>>> 1.172120154
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[05]: 1617183845. Time to read "gps_time":
>     > >>>>>>>> 0.879271985
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[06]: 1617183846. Time to read "gps_time":
>     > >>>>>>>> 0.878609099
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[07]: 1617183847. Time to read "gps_time":
>     > >>>>>>>> 1.115639282
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[08]: 1617183848. Time to read "gps_time":
>     > >>>>>>>> 1.125365551
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[09]: 1617183849. Time to read "gps_time":
>     > >>>>>>>> 0.843803231
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[10]: 1617183850. Time to read "gps_time":
>     > >>>>>>>> 1.125065740
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[11]: 1617183851. Time to read "gps_time":
>     > >>>>>>>> 0.847519817
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[12]: 1617183852. Time to read "gps_time":
>     > >>>>>>>> 1.121398945
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[13]: 1617183853. Time to read "gps_time":
>     > >>>>>>>> 0.844371533
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[14]: 1617183854. Time to read "gps_time":
>     > >>>>>>>> 1.124722726
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[15]: 1617183855. Time to read "gps_time":
>     > >>>>>>>> 0.845688380
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[16]: 1617183856. Time to read "gps_time":
>     > >>>>>>>> 1.129568096
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[17]: 1617183857. Time to read "gps_time":
>     > >>>>>>>> 0.882436229
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[18]: 1617183858. Time to read "gps_time":
>     > >>>>>>>> 1.168227593
>     > >>>>>>> seconds
>     > >>>>>>>> gps_time[19]: 1617183859. Time to read "gps_time":
>     > >>>>>>>> 0.881948247
>     > >>>>>>> seconds
>     > >>>>>>>>
>     > >>>>>>>
>     >
>     -------------------------------------------------------------------=
---
>     > -------------
>     > >>>>>>>> In the code you can find commented out the usual way to
>     > >>>>>>>> access the sensor using multi_usrp and
>     get_mboard_sensor. The
>     > >>>>>>>> results are
>     > >>>>>>> quite
>     > >>>>>>>> similar.
>     > >>>>>>>>
>     > >>>>>>>> I wonder if anybody encountered this issue before or
>     > >>>>>>>> addressed it
>     > >>>>>>> in
>     > >>>>>>>> any way.
>     > >>>>>>>> I wonder why it takes so much time to get the value of G=
PS
>     > >>>>>>>> time
>     > >>>>>>> when
>     > >>>>>>>> it is a simple parsing of an NMEA message coming from
>     the GPS
>     > >>>>>>> receiver.
>     > >>>>>>>>
>     > >>>>>>>> I am trying now various tricks to make the software robu=
st
>     > >>>>>>>> and
>     > >>>>>>> immune
>     > >>>>>>>> to this phenomenon. I can report my findings further if =
I
>     > >>>>>>>> succeed
>     > >>>>>>> to
>     > >>>>>>>> find a workaround if there is any interest.
>     > >>>>>>>>
>     > >>>>>>>> Can anyone comment on this? Can this be resolved so
>     that the
>     > >>>>>>> reading
>     > >>>>>>>> of gps_time will be much faster?
>     > >>>>>>>> Is there another way to get GPS time faster indirectly?
>     Maybe
>     > >>>>>>>> from parsing NMEA messages ourselves?
>     > >>>>>>>>
>     > >>>>>>>> Regards,
>     > >>>>>>>> Ofer Saferman
>     > >>>>>>>>
>     > >>>>>>> This probably has to do with the way that particular
>     "sensor"
>     > >>>>>>> works--the
>     > >>>>>>> NMEA time value is only emitted once per second, and the
>     > >>>>>>>=C2=A0 =C2=A0 code for that sensor has some heuristic for =
determining
>     > >>>>>>> "freshness"
>     > >>>>>>> of the value.
>     > >>>>>>>
>     > >>>>>>> I'll point out that on E310, the system is configured to =
use
>     > >>>>>>> GPSD,
>     > so
>     > >>>>>>> that the Linux system time across several systems that ha=
ve
>     > >>>>>>> all
>     > been
>     > >>>>>>>=C2=A0 =C2=A0 "listening" to GPS for a while will all be s=
ynchronized
>     > >>>>>>> quite
>     > well.
>     > >>>>>>>
>     > >>>>>>>
>     > >>>>>>>
>     > >>>>>>>
>     > >>>>>> --
>     > >>>>>> This message has been scanned for viruses and dangerous
>     content
>     > >>>>>> by *MailScanner* <http://www.mailscanner.info/>, and is
>     > >>>>>> believed to be clean.
>     > _______________________________________________
>     > >>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com> To
>     > >>>>>> unsubscribe send an email to
>     usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>     > >>>>>>
>     > >>>>> _______________________________________________
>     > >>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com> To
>     > >>>> unsubscribe send an email to
>     usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>     > >>>>
>     > >>>>
>     > >>> --
>     > >>> This message has been scanned for viruses and dangerous
>     content by
>     > >>> *MailScanner* <http://www.mailscanner.info/>, and is believed=
 to
>     > >>> be clean.
>     > >>>
>     > >>>
>     > >> --
>     > >> This message has been scanned for viruses and dangerous
>     content by
>     > >> *MailScanner* <http://www.mailscanner.info/>, and
>     > is
>     > >> believed to be clean.
>     > >>
>     > >>
>     > >>
>     > >
>     > >
>     > > _______________________________________________
>     > > USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com> To unsubscribe
>     > > send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>     > > _______________________________________________
>     > USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com> To unsubscribe
>     > send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>     >
>
>     --
>     This message has been scanned for viruses and dangerous content by
>     MailScanner, and is believed to be clean.
>
>     -------------- next part --------------
>     A message part incompatible with plain text digests has been
>     removed ...
>     Name: not available
>     Type: text/html
>     Size: 27834 bytes
>     Desc: not available
>
>     ------------------------------
>
>     Subject: Digest Footer
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com> To unsubscribe send an email
>     to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>
>
>     ------------------------------
>
>     End of USRP-users Digest, Vol 128, Issue 7
>     ******************************************
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------4A746A6C225F9BA0C9477ED2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>This is just a guess, but you could try:</p>
    <p>-DCMAKE_SHARED_LINKER_FLAGS=3D"-latomic"</p>
    <p>in addition.</p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/3/21 18:34, Brendan Horsfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALNMZ8X3u9wXQu-_u-Cz9x6vrwGw7R8Vnj4xfo89FOeRxfX3Sw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks Ken.=C2=A0 As you suggested, I added
        -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic" to the CMake call.=C2=A0=C2=
=A0
        <div><br>
        </div>
        <div>The good news is that the UHD build &amp; installation
          process completed successfully.
          <div>
            <div><br>
            </div>
            <div>The bad news is that when I try to import the uhd
              module in Python3, I get=C2=A0the following error:</div>
            <div><br>
            </div>
            <div>pi@raspberrypi:~ $ python3<br>
              Python 3.7.3 (default, Jan 22 2021, 20:04:44) <br>
              [GCC 8.3.0] on linux<br>
              Type "help", "copyright", "credits" or "license" for more
              information.<br>
              &gt;&gt;&gt; import uhd<br>
              Traceback (most recent call last):<br>
              =C2=A0 File "&lt;stdin&gt;", line 1, in &lt;module&gt;<br>
              =C2=A0 File
              "/usr/local/lib/python3/dist-packages/uhd/__init__.py",
              line 10, in &lt;module&gt;<br>
              =C2=A0 =C2=A0 from . import types<br>
              =C2=A0 File
              "/usr/local/lib/python3/dist-packages/uhd/types.py", line
              10, in &lt;module&gt;<br>
              =C2=A0 =C2=A0 from . import libpyuhd as lib<br>
              ImportError: /usr/local/lib/libuhd.so.4.0.0: undefined
              symbol: __atomic_fetch_add_8<br>
              &gt;&gt;&gt;=C2=A0<br>
            </div>
            <div><br>
            </div>
            <div>Did you encounter this problem too?</div>
            <div><br>
            </div>
            <div>I guess the next step is to hack the "CMakeLists.txt"
              files as per the link you sent me.=C2=A0 Just to clarify on=
e
              point first:=C2=A0 If I modify the CMakeLists.txt files, do=
 I
              still need to include -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"
              in the CMake call?</div>
            <div><br>
            </div>
            <div>Thanks,</div>
            <div>Brendan.</div>
            <div>=C2=A0=C2=A0</div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 3, 2021 at 10:2=
9
          PM Clark (US), Kenneth C &lt;<a
            href=3D"mailto:kenneth.c.clark2@boeing.com"
            moz-do-not-send=3D"true">kenneth.c.clark2@boeing.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<br>
          I had the same problem build UHD on RPi4<br>
          <br>
          Answer here:<br>
          <a
            href=3D"https://gitlab.kitware.com/cmake/cmake/-/issues/21174=
"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://gitlab.kitware.com/cmake/cmake/-/issues/21174</a><br>
          <br>
          Add to CMake call:<br>
          -DCMAKE_EXE_LINKER_FLAGS=3D"-latomic"<br>
          <br>
          Regards,<br>
          <br>
          Ken<br>
          <br>
          <br>
          -----Original Message-----<br>
          From: <a href=3D"mailto:usrp-users-request@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-request=
@lists.ettus.com</a>
          [mailto:<a href=3D"mailto:usrp-users-request@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-request=
@lists.ettus.com</a>]<br>
          Sent: Saturday, April 3, 2021 11:13<br>
          To: <a href=3D"mailto:usrp-users@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a><br>
          Subject: [EXTERNAL] USRP-users Digest, Vol 128, Issue 7<br>
          <br>
          EXT email: be mindful of links/attachments.<br>
          <br>
          <br>
          <br>
          Send USRP-users mailing list submissions to<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.=
ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a><br>
          <br>
          To subscribe or unsubscribe via email, send a message with
          subject or body 'help' to<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-reques=
t@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-request=
@lists.ettus.com</a><br>
          <br>
          You can reach the person managing the list at<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@=
lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-owner@l=
ists.ettus.com</a><br>
          <br>
          When replying, please edit your Subject line so it is more
          specific than "Re: Contents of USRP-users digest..."<br>
          <br>
          Today's Topics:<br>
          <br>
          =C2=A0 =C2=A01. Re: Problem with interfacing Raspberry Pi 4 to =
USRP B210
          with Python API<br>
          =C2=A0 =C2=A0 =C2=A0 (Brendan Horsfield)<br>
          =C2=A0 =C2=A02. Re: Intermittent problem with GPS synchronizati=
on for
          multiple E310 units<br>
          =C2=A0 =C2=A0 =C2=A0 (Ofer Saferman)<br>
          <br>
          <br>
----------------------------------------------------------------------<br=
>
          <br>
          Message: 1<br>
          Date: Sat, 3 Apr 2021 21:07:59 +1000<br>
          From: Brendan Horsfield &lt;<a
            href=3D"mailto:brendan.horsfield@vectalabs.com"
            target=3D"_blank" moz-do-not-send=3D"true">brendan.horsfield@=
vectalabs.com</a>&gt;<br>
          Subject: [USRP-users] Re: Problem with interfacing Raspberry
          Pi 4 to<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 USRP B210 with Python API<br>
          To: Marcus D Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;<br>
          Cc: <a href=3D"mailto:USRP-users@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">USRP-users@lists.e=
ttus.com</a><br>
          Message-ID:<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a
href=3D"mailto:CALNMZ8Wg3gQnkAomrhhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.g=
mail.com"
            target=3D"_blank" moz-do-not-send=3D"true">CALNMZ8Wg3gQnkAomr=
hhCBPAGtTfUbm3fkMzJhCWhUAgHrLuzyA@mail.gmail.com</a>&gt;<br>
          Content-Type: multipart/alternative;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 boundary=3D"000000000000dc3aeb05bf0=
f7ace"<br>
          <br>
          Hi Marcus,<br>
          <br>
          I have tried your suggestion, but unfortunately without
          success:<br>
          <br>
          Per your advice, I have edited the file "cmake.lwt" in the
          folder
          /usr/local/lib/python3.7/dist-packages/pybombs/templates to
          include the option "-DENABLE_PYTHON_API=3DON" in the calls to
          cmake.=C2=A0 The modified commands are as follows:<br>
          <br>
          configure: cmake .. -DENABLE_PYTHON_API=3DON
          -DCMAKE_BUILD_TYPE=3D$cmakebuildtype
          -DCMAKE_INSTALL_PREFIX=3D$prefix $config_opt -Wno-dev<br>
          configure_static: cmake .. -DENABLE_PYTHON_API=3DON
          -DCMAKE_BUILD_TYPE=3D$cmakebuildtype
          -DCMAKE_INSTALL_PREFIX=3D$prefix -DENABLE_STATIC_LIBS=3DTrue
          $config_opt<br>
          <br>
          I removed the previous UHD installation and re-ran "pybombs
          install uhd", but the end result was much the same:=C2=A0 the
          installation process completed without errors, but the Python
          API was not included in the installation.<br>
          <br>
          QUESTION 1:=C2=A0 Can you tell me if PyBOMBS actually builds th=
e
          UHD driver from source, or does it simply copy a pre-compiled
          binary onto my system?=C2=A0 The reason I ask is that PyBOMBS i=
s
          quite quick to install the UHD driver, whereas the non-PyBOMBS
          approach is VERY slow (i.e. around 60 minutes to get to 53%,
          at which point it crashes out with an error).<br>
          <br>
          QUESTION 2:=C2=A0 This whole process feels more difficult than =
it
          should be.<br>
          Why isn't the Python API installed with the UHD driver by
          default?=C2=A0 Would I be better off using another language (li=
ke
          C++) to control the USRP?<br>
          <br>
          Thanks,<br>
          Brendan.<br>
          <br>
          <br>
          <br>
          On Fri, Apr 2, 2021 at 11:25 PM Marcus D Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;<br>
          wrote:<br>
          <br>
          &gt; Perhaps look at the PyBombs recipe for your
          platform=E2=80=94there=E2=80=99s probably<br>
          &gt; a compiler flag that needs to be set that you=E2=80=99re m=
issing,
          but I don=E2=80=99t<br>
          &gt; know what that is.<br>
          &gt;<br>
          &gt; Also, in general, you don=E2=80=99t need to become root to
          compile and build<br>
          &gt; code=E2=80=94only needed during the =E2=80=9Cmake install=E2=
=80=9D<br>
          &gt;<br>
          &gt;<br>
          &gt;<br>
          &gt; Sent from my iPhone<br>
          &gt;<br>
          &gt; On Apr 2, 2021, at 7:19 AM, Brendan Horsfield &lt;<br>
          &gt; <a href=3D"mailto:brendan.horsfield@vectalabs.com"
            target=3D"_blank" moz-do-not-send=3D"true">brendan.horsfield@=
vectalabs.com</a>&gt;
          wrote:<br>
          &gt;<br>
          &gt; =EF=BB=BF<br>
          &gt; Hi Folks,<br>
          &gt;<br>
          &gt; I would like to interface my Raspberry Pi 4 to a USRP
          B210 via the<br>
          &gt; Python API.=C2=A0 This requires the UHD driver to be built
          from source.<br>
          &gt; Unfortunately, whenever I try this I encounter some
          errors that stop<br>
          &gt; the build process in its tracks.<br>
          &gt;<br>
          &gt; Details of the error are as follows:<br>
          &gt;<br>
          &gt; [ 53%] Linking CXX executable test_clock_synch<br>
          &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference
          to<br>
          &gt; `__atomic_compare_exchange_8'<br>
          &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference
          to<br>
          &gt; `__atomic_load_8'<br>
          &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference
          to<br>
          &gt; `__atomic_store_8'<br>
          &gt; /usr/bin/ld: ../lib/libuhd.so.4.0.0: undefined reference
          to<br>
          &gt; `__atomic_fetch_add_8'<br>
          &gt; collect2: error: ld returned 1 exit status<br>
          &gt; make[2]: ***
          [examples/CMakeFiles/test_clock_synch.dir/build.make:95:<br>
          &gt; examples/test_clock_synch] Error 1<br>
          &gt; make[1]: *** [CMakeFiles/Makefile2:1039:<br>
          &gt; examples/CMakeFiles/test_clock_synch.dir/all] Error 2<br>
          &gt; make: *** [Makefile:163: all] Error 2<br>
          &gt;<br>
          &gt; The process I have been using is as follows:<br>
          &gt;<br>
          &gt; STEP 1:=C2=A0 INSTALL DEPENDENCIES<br>
          &gt; sudo apt-get install libboost-all-dev libusb-1.0-0-dev
          doxygen<br>
          &gt; python3-docutils python3-mako python3-numpy
          python3-requests<br>
          &gt; python3-ruamel.yaml python3-setuptools cmake
          build-essential<br>
          &gt;<br>
          &gt; STEP 2:=C2=A0 BUILD UHD DRIVER FROM SOURCE<br>
          &gt; cd /home/pi<br>
          &gt; mkdir workarea-uhd<br>
          &gt; cd workarea-uhd<br>
          &gt; git clone <a href=3D"https://github.com/EttusResearch/uhd"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://github.com/EttusResearch/uhd</a><br>
          &gt; cd uhd<br>
          &gt; git checkout v4.0.0.0<br>
          &gt; cd host<br>
          &gt; mkdir build<br>
          &gt; cd build<br>
          &gt; sudo cmake -DNEON_SIMD_ENABLE=3DOFF -DENABLE_PYTHON_API=3D=
ON
          ../ sudo make<br>
          &gt; ---&gt;=C2=A0 (ERRORS OCCUR DURING "MAKE" PROCESS)<br>
          &gt;<br>
          &gt; My system configuration is as follows:<br>
          &gt; Hardware: Raspberry Pi 4 Model B Rev 1.4<br>
          &gt; OS: Raspbian GNU/Linux 10 (buster) (32-bit, armv7l) Ettus
          USRP B210<br>
          &gt;<br>
          &gt; Does anyone know what the problem could be, and how I can
          resolve it?<br>
          &gt;<br>
          &gt; One final note:=C2=A0 Using PyBOMBS, I was able to
          successfully build &amp;<br>
          &gt; install the UHD driver and connect to the USRP.=C2=A0
          Unfortunately the<br>
          &gt; PyBOMBS build does not include the Python API, which is
          what I really<br>
          &gt; want.=C2=A0 Is there a different version of the PyBOMBS bu=
ild
          that includes the Python API?<br>
          &gt;<br>
          &gt; Thanks &amp; Regards,<br>
          &gt; Brendan.<br>
          &gt;<br>
          &gt;<br>
          &gt;<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> To
          unsubscribe<br>
          &gt; send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
          &gt;<br>
          &gt;<br>
          -------------- next part --------------<br>
          A message part incompatible with plain text digests has been
          removed ...<br>
          Name: not available<br>
          Type: text/html<br>
          Size: 5624 bytes<br>
          Desc: not available<br>
          <br>
          ------------------------------<br>
          <br>
          Message: 2<br>
          Date: Sat, 3 Apr 2021 14:12:35 +0300<br>
          From: Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com"
            target=3D"_blank" moz-do-not-send=3D"true">ofer@navigicom.com=
</a>&gt;<br>
          Subject: [USRP-users] Re: Intermittent problem with GPS<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 synchronization for multiple E310 u=
nits<br>
          To: usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a>&gt;<br>
          Message-ID:<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CACDReSwXUvJ8_LimfVOn4StHQEGhNn=
tY-nCSv0aYdBsX=3D<a
            href=3D"mailto:AtV_w@mail.gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true">AtV_w@mail.gmail.com</a>&gt;<br>
          Content-Type: multipart/alternative;<br>
          =C2=A0 =C2=A0 =C2=A0 =C2=A0 boundary=3D"000000000000566d1705bf0=
f8b0e"<br>
          <br>
          Hello Philip,<br>
          <br>
          Thank you for the explanation.<br>
          What would you suggest?<br>
          opkg exists. There must be a way to install ntpd without
          needing to rebuild the image.<br>
          Maybe use pybombs or other methods?<br>
          git also works. Maybe download a different package manager and
          compile it?<br>
          <br>
          It seems that Marcus pointed out a great benefit of E310 units
          running gpsd, but without ntpd system clock can't sync and it
          seems that this feature can vastly simplify gps
          synchronization among E310 units.<br>
          <br>
          I would be very grateful if anybody can suggest a solution to
          install ntpd on E310 units running UHD 3.15 SD-card image.<br>
          <br>
          Regards,<br>
          Ofer Saferman.<br>
          <br>
          On Sat, Apr 3, 2021 at 10:30 AM &lt;<a
            href=3D"mailto:usrp-users-request@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-request=
@lists.ettus.com</a>&gt;
          wrote:<br>
          <br>
          &gt; Send USRP-users mailing list submissions to<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:usrp-us=
ers@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a><br>
          &gt;<br>
          &gt; To subscribe or unsubscribe via email, send a message
          with subject or<br>
          &gt; body 'help' to<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a
            href=3D"mailto:usrp-users-request@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-request=
@lists.ettus.com</a><br>
          &gt;<br>
          &gt; You can reach the person managing the list at<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:usrp-us=
ers-owner@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-owner@l=
ists.ettus.com</a><br>
          &gt;<br>
          &gt; When replying, please edit your Subject line so it is
          more specific<br>
          &gt; than "Re: Contents of USRP-users digest..."Today's
          Topics:<br>
          &gt;<br>
          &gt;=C2=A0 =C2=A0 1. Re: Intermittent problem with GPS synchron=
ization
          for multiple<br>
          &gt; E310 units<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0(Philip Balister)<br>
          &gt;<br>
          &gt;<br>
          &gt;<br>
          &gt; ---------- Forwarded message ----------<br>
          &gt; From: Philip Balister &lt;<a
            href=3D"mailto:philip@balister.org" target=3D"_blank"
            moz-do-not-send=3D"true">philip@balister.org</a>&gt;<br>
          &gt; To: Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com=
"
            target=3D"_blank" moz-do-not-send=3D"true">ofer@navigicom.com=
</a>&gt;,
          "Marcus D. Leech" &lt;<br>
          &gt; <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;<br>
          &gt; Cc: Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
            target=3D"_blank" moz-do-not-send=3D"true">rkossler@nd.edu</a=
>&gt;,
          usrp-users<br>
          &gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.e=
ttus.com</a>&gt;<br>
          &gt; Bcc:<br>
          &gt; Date: Fri, 2 Apr 2021 10:09:43 -0400<br>
          &gt; Subject: [USRP-users] Re: Intermittent problem with GPS<br=
>
          &gt; synchronization for multiple E310 units On 4/2/21 7:17
          AM, Ofer<br>
          &gt; Saferman wrote:<br>
          &gt; &gt; Marcus Hi,<br>
          &gt; &gt;<br>
          &gt; &gt; Your suggestion below to install ntpd does not work.<=
br>
          &gt; &gt; The image does not include it. Although the old
          thread says<br>
          &gt; &gt; otherwise I think it refers to an older UHD release
          that did include ntpd.<br>
          &gt; &gt; Any accurate instructions on how to install it
          anyway?<br>
          &gt; &gt; Maybe opkg should be configured to access another
          repository?<br>
          &gt; &gt; Doing: opkg list | grep ntpd, does not yield
          anything useful so it<br>
          &gt; &gt; is not just a question of typing it correctly.<br>
          &gt;<br>
          &gt; As far as I know, no image has been setup to use package
          feeds.<br>
          &gt;<br>
          &gt; I know ntpd worked in release4 images, pretty sure the
          newer image was<br>
          &gt; redone and things have been left out that used to be
          there.<br>
          &gt;<br>
          &gt; Philip<br>
          &gt;<br>
          &gt; &gt;<br>
          &gt; &gt; Regards,<br>
          &gt; &gt; Ofer Saferman<br>
          &gt; &gt;<br>
          &gt; &gt; On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech<br>
          &gt; &gt; &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            target=3D"_blank" moz-do-not-send=3D"true">patchvonbraun@gmai=
l.com</a>&gt;<br>
          &gt; &gt; wrote:<br>
          &gt; &gt;<br>
          &gt; &gt;&gt; On 04/01/2021 06:00 AM, Ofer Saferman wrote:<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; Hello Marcus,<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; I am working on E310 with the latest UHD-3.15 SD
          card image.<br>
          &gt; &gt;&gt; It seems not to include ntpd that is required to
          synchronize system<br>
          &gt; &gt;&gt; time to GPS time.<br>
          &gt; &gt;&gt; Any idea how to install it on the E310?<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; Regards,<br>
          &gt; &gt;&gt; Ofer Saferman<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; sudo opkg install ntpd<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; should work, but it has been a while since I
          installed any packages<br>
          &gt; &gt;&gt; on<br>
          &gt; my<br>
          &gt; &gt;&gt; E310.<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; The E310 is based on OpenEmbedded Linux, so all
          the info about<br>
          &gt; installing<br>
          &gt; &gt;&gt; and managing packages on OpenEmbedded apply.<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech
          &lt;<br>
          &gt; <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;<br>
          &gt; &gt;&gt; wrote:<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;&gt; Just use gettimeofday() or any of the myriad
          subtle variants<br>
          &gt; &gt;&gt;&gt; available<br>
          &gt; in<br>
          &gt; &gt;&gt;&gt; boost to get you the Linux system time, and
          use that in a call to<br>
          &gt; &gt;&gt;&gt; set_time_next_pps().<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; The fact that all your E310s will be running
          GPSD means they=E2=80=99ll be<br>
          &gt; &gt;&gt;&gt; adjusting system time appropriately and
          they=E2=80=99ll all agree on what<br>
          &gt; &gt;&gt;&gt; time<br>
          &gt; it<br>
          &gt; &gt;&gt;&gt; is, depending on the level of precision you
          need.<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; Sent from my iPhone<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; On Mar 31, 2021, at 3:50 PM, Ofer Saferman
          &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank"
            moz-do-not-send=3D"true">ofer@navigicom.com</a>&gt; wrote:<br=
>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; =EF=BB=BF<br>
          &gt; &gt;&gt;&gt; Thank you Rob. Your suggestions are always
          helpful. I will look<br>
          &gt; &gt;&gt;&gt; into using gps_gpgga.<br>
          &gt; &gt;&gt;&gt; Thank you Marcus. I am already adding one,
          per other examples<br>
          &gt; &gt;&gt;&gt; posted<br>
          &gt; here<br>
          &gt; &gt;&gt;&gt; and sync_to_gps example. Can you please
          comment how I can benefit<br>
          &gt; &gt;&gt;&gt; from<br>
          &gt; the<br>
          &gt; &gt;&gt;&gt; fact that E310 units use gpsd in Linux?<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; Regards,<br>
          &gt; &gt;&gt;&gt; Ofer Saferman<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; On Wed, Mar 31, 2021 at 10:13 PM Marcus D
          Leech &lt;<br>
          &gt; <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;<br>
          &gt; &gt;&gt;&gt; wrote:<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt; Sent from my iPhone<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt; On Mar 31, 2021, at 2:22 PM, Rob Kossler
          &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank"
            moz-do-not-send=3D"true">rkossler@nd.edu</a>&gt; wrote:<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt; =EF=BB=BF<br>
          &gt; &gt;&gt;&gt;&gt; Hi Ofer,<br>
          &gt; &gt;&gt;&gt;&gt; Take a look at the Ettus source code
          gps_ctrl.cpp.=C2=A0 In<br>
          &gt; &gt;&gt;&gt;&gt; particular,<br>
          &gt; look<br>
          &gt; &gt;&gt;&gt;&gt; at the get_sentence() usage which in the
          case of "gps_time" waits<br>
          &gt; &gt;&gt;&gt;&gt; for<br>
          &gt; the<br>
          &gt; &gt;&gt;&gt;&gt; next occurrence (wait=3Dtrue),=C2=A0 but =
for
          the others does not wait.<br>
          &gt; &gt;&gt;&gt;&gt; But<br>
          &gt; this<br>
          &gt; &gt;&gt;&gt;&gt; doesn't fully explain the behavior you
          are seeing.=C2=A0 If you do the<br>
          &gt; following:<br>
          &gt; &gt;&gt;&gt;&gt; 1) wait for PPS time to change<br>
          &gt; &gt;&gt;&gt;&gt; 2) read the "gps_time" sensor<br>
          &gt; &gt;&gt;&gt;&gt; 3) set_time_next_pps (use the value you
          just read)<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt; Add 1 to the time you just read before
          calling set_time_next_pps.<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt; It should still work because the
          "gps_time" command should just<br>
          &gt; &gt;&gt;&gt;&gt; wait until the next PPS.=C2=A0 I guess it
          depends upon how<br>
          &gt; &gt;&gt;&gt;&gt; "synchronized" are<br>
          &gt; the<br>
          &gt; &gt;&gt;&gt;&gt; received NMEA string with the PPS edge.=C2=
=A0
          Step 1 above waits for<br>
          &gt; &gt;&gt;&gt;&gt; the<br>
          &gt; PPS<br>
          &gt; &gt;&gt;&gt;&gt; edge, but maybe the NMEA string arrives
          0.1 secs before or after<br>
          &gt; that.=C2=A0 I<br>
          &gt; &gt;&gt;&gt;&gt; don't really know.=C2=A0 Perhaps you need=
 to
          switch to using "gps_gpgga"<br>
          &gt; such<br>
          &gt; &gt;&gt;&gt;&gt; that there is no additional wait added
          and also perhaps you<br>
          &gt; &gt;&gt;&gt;&gt; should<br>
          &gt; add step<br>
          &gt; &gt;&gt;&gt;&gt; 1B which would be just a fixed delay of
          perhaps 0.4 secs so that<br>
          &gt; &gt;&gt;&gt;&gt; you<br>
          &gt; will<br>
          &gt; &gt;&gt;&gt;&gt; read the NMEA string in between the PPS
          edges.<br>
          &gt; &gt;&gt;&gt;&gt; Rob<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt; On Wed, Mar 31, 2021 at 1:22 PM Rob
          Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank=
"
            moz-do-not-send=3D"true">rkossler@nd.edu</a>&gt; wrote:<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt; Hi Ofer,<br>
          &gt; &gt;&gt;&gt;&gt;&gt; I don't know why the "gps_time"
          sensor takes long to read. But,<br>
          &gt; &gt;&gt;&gt;&gt;&gt; can<br>
          &gt; you<br>
          &gt; &gt;&gt;&gt;&gt;&gt; try the other sensors (perhaps there
          is a "gps_gpgga" sensor?)?<br>
          &gt; &gt;&gt;&gt;&gt;&gt; The<br>
          &gt; time<br>
          &gt; &gt;&gt;&gt;&gt;&gt; is embedded in these as well.<br>
          &gt; &gt;&gt;&gt;&gt;&gt; Rob<br>
          &gt; &gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt; On Wed, Mar 31, 2021 at 12:21 PM
          Ofer Saferman<br>
          &gt; &gt;&gt;&gt;&gt;&gt; &lt;<a
            href=3D"mailto:ofer@navigicom.com" target=3D"_blank"
            moz-do-not-send=3D"true">ofer@navigicom.com</a>&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt; wrote:<br>
          &gt; &gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; Marcus Hi,<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; If the gps_time "sensor" returns
          a value only once per second<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; how<br>
          &gt; come<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; I manage to read it sometimes in
          less than 1 second?<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; In my code the situation is
          worse than the simple example<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; below. It usually takes more
          than 1 sec. to read it and<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; sometimes even 1.7 or<br>
          &gt; 1.8<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; seconds. I don't understand how
          the size or complexity of the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; code<br>
          &gt; affects<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; the time it takes to read
          gps_time.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; How to treat your comment about
          the use of GPSD and good<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; synchronization as it relates to
          code?<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; Should I not change the time
          source in code and go through the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; whole process of synchronization
          using gps_time?<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; Can I "assume" the systems are
          synced just by the effect they<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; were connected enough time to a
          GPS antenna? and then just<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; access their<br>
          &gt; time -<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;
          radio_ctrl-&gt;get_time_last_pps()?<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; How to use this information
          programmatically?<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; Regards,<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; Ofer Saferman<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; ---------- Forwarded message
          ----------<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; From: "Marcus D. Leech" &lt;<=
a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; To: <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a><br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Cc:<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Bcc:<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Date: Wed, 31 Mar 2021
          09:19:20 -0400<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; Subject: [USRP-users] Re:
          Intermittent problem with GPS<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; synchronization for multiple
          E310 units On 03/31/2021 06:49<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; AM, Ofer Saferman wrote:<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello,<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I have a system that
          uses 4 USRP E310 units.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Each unit is connected
          to a GPS antenna.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Time source is set to
          gpsdo.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I run the same software
          remotely on all 4 units from a PC.<br>
          &gt; Software<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; runs on the units
          themselves.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I print out messages to
          show if the reference is locked and<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
          &gt; GPS<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; is<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; locked and also what is
          the GPS time that each unit was<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; synchronized to.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In some cases the units
          synchronize to the same GPS time and<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; in<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; other<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; cases there is 1 second
          difference between GPS time of<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; different<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; units<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; thus causing the units
          to be unsynchronized.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was wondering how this
          was possible.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The synchronization
          process (documented by others in the past<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; on<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; mailing list) is:<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Wait for ref and GPS
          lock<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Wait for a pps edge
          (get_time_last_pps)<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Read gps_time value<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Sync system clock to
          GPS clock on next PPS edge<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; (set_time_next_pps +<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.0 sec)<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Something similar is
          also implemented in the sync_to_gps example.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In order to debug the
          problem I decided to time the reading<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; of the gps_time sensor
          to see if there is a clue why<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; different units miss<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; PPS edge and lock to a
          time of the next second.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was very surprised to
          find out that it takes between 0.9 to<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.2 seconds to read the
          gps_time sensor.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This explains exactly
          why it is difficult to synchronize<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; multiple units to the
          same time instance because if one unit<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; takes 0.9<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to read the sensor and
          the other unit takes 1.2 seconds to<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; read<br>
          &gt; the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sensor then each unit
          will lock on a different GPS time 1<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; second<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; apart.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Here is a short software
          I wrote to time the gps_time sensor<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; reading:<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          ---------------------------------------------------------<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include
          &lt;uhd/utils/safe_main.hpp&gt; #include
          &lt;uhd/device3.hpp&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; //#include
          &lt;uhd/usrp/multi_usrp.hpp&gt; #include<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          &lt;uhd/types/sensors.hpp&gt; #include
          &lt;boost/program_options.hpp&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include
          &lt;boost/format.hpp&gt; #include &lt;chrono&gt; #include<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;iostream&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; namespace po =3D
          boost::program_options;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; int UHD_SAFE_MAIN(int
          argc, char *argv[]){<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; std::string args;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0
          =C2=A0po::options_description desc("Allowed options");<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0desc.a=
dd_options()<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0("help", "help
          message") ("args",<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          po::value&lt;std::string&gt;(&amp;args)-&gt;default_value(""),
          "device<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; address args")<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0po::va=
riables_map
          vm;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0
          =C2=A0po::store(po::parse_command_line(argc, argv, desc), vm);<=
br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0po::no=
tify(vm);<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0//prin=
t the help
          message<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0if
          (vm.count("help")){<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0std::cout
          &lt;&lt; boost::format("Timinig of gps_time: %s")<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; %<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; desc<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;&lt; std::endl;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return ~0;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; uhd::device3::sptr usrp
          =3D uhd::device3::make(args);<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          //uhd::usrp::multi_usrp::sptr usrp =3D<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
          uhd::usrp::multi_usrp::make(args);<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; uhd::sensor_value_t
          gps_time =3D<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sen=
sors/gps_<br>
          &gt; usrp-&gt;time").get();<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; //uhd::sensor_value_t
          gps_time =3D<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;
          usrp-&gt;get_mboard_sensor("gps_time", 0);<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          std::chrono::steady_clock::time_point start_time, end_time;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          std::chrono::duration&lt;double&gt; time_diff; // Default unit
          for<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; duration<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; is seconds.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; for(int ii=3D0 ; ii&lt;20
          ; ii++)<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; {<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; start_time =3D
          std::chrono::steady_clock::now(); gps_time =3D<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sen=
sors/gps_<br>
          &gt; usrp-&gt;time").get();<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; //gps_time =3D
          usrp-&gt;get_mboard_sensor("gps_time", 0); end_time<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; =3D
          std::chrono::steady_clock::now(); time_diff =3D end_time -<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; start_time;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; std::cout &lt;&lt;
          "gps_time[" &lt;&lt; (boost::format("%02d") % ii) &lt;&lt; "]:
          "<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;&lt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;
          int64_t(gps_time.to_int()) &lt;&lt; ". Time to read
          \"gps_time\": "<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;&lt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; (boost::format("%0.9f")
          % time_diff.count()) &lt;&lt; " seconds" &lt;&lt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; std::endl;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; }<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0return=
 0;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; }<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;
          ---------------------------------------------------------------=
-------<br>
          &gt; ----------<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Here are the results of
          one typical run:<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[00]:
          1617183840. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.884164380<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[01]:
          1617183841. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.877966469<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[02]:
          1617183842. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.170869661<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[03]:
          1617183843. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.882917987<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[04]:
          1617183844. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.172120154<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[05]:
          1617183845. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.879271985<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[06]:
          1617183846. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.878609099<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[07]:
          1617183847. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.115639282<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[08]:
          1617183848. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.125365551<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[09]:
          1617183849. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.843803231<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[10]:
          1617183850. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.125065740<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[11]:
          1617183851. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.847519817<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[12]:
          1617183852. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.121398945<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[13]:
          1617183853. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.844371533<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[14]:
          1617183854. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.124722726<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[15]:
          1617183855. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.845688380<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[16]:
          1617183856. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.129568096<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[17]:
          1617183857. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.882436229<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[18]:
          1617183858. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.168227593<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[19]:
          1617183859. Time to read "gps_time":<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 0.881948247<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt;
          ---------------------------------------------------------------=
-------<br>
          &gt; -------------<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In the code you can find
          commented out the usual way to<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; access the sensor using
          multi_usrp and get_mboard_sensor. The<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; results are<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; quite<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; similar.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wonder if anybody
          encountered this issue before or<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; addressed it<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; in<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; any way.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wonder why it takes so
          much time to get the value of GPS<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; time<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; when<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; it is a simple parsing
          of an NMEA message coming from the GPS<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; receiver.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am trying now various
          tricks to make the software robust<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; and<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; immune<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to this phenomenon. I
          can report my findings further if I<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; succeed<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; to<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; find a workaround if
          there is any interest.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Can anyone comment on
          this? Can this be resolved so that the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; reading<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; of gps_time will be much
          faster?<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is there another way to
          get GPS time faster indirectly? Maybe<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; from parsing NMEA
          messages ourselves?<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Regards,<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Ofer Saferman<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; This probably has to do with
          the way that particular "sensor"<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; works--the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; NMEA time value is only
          emitted once per second, and the<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 code for that se=
nsor has
          some heuristic for determining<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; "freshness"<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; of the value.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; I'll point out that on E310,
          the system is configured to use<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; GPSD,<br>
          &gt; so<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; that the Linux system time
          across several systems that have<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; all<br>
          &gt; been<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 "listening" to G=
PS for a
          while will all be synchronized<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt; quite<br>
          &gt; well.<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; --<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; This message has been scanned
          for viruses and dangerous content<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; by *MailScanner* &lt;<a
            href=3D"http://www.mailscanner.info/" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">http://www.mailsca=
nner.info/</a>&gt;,
          and is<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; believed to be clean.<br>
          &gt; _______________________________________________<br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> To<br=
>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt; unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
          &gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;&gt;
          _______________________________________________<br>
          &gt; &gt;&gt;&gt;&gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> To<br=
>
          &gt; &gt;&gt;&gt;&gt; unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; --<br>
          &gt; &gt;&gt;&gt; This message has been scanned for viruses
          and dangerous content by<br>
          &gt; &gt;&gt;&gt; *MailScanner* &lt;<a
            href=3D"http://www.mailscanner.info/" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">http://www.mailsca=
nner.info/</a>&gt;,
          and is believed to<br>
          &gt; &gt;&gt;&gt; be clean.<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt; --<br>
          &gt; &gt;&gt; This message has been scanned for viruses and
          dangerous content by<br>
          &gt; &gt;&gt; *MailScanner* &lt;<a
            href=3D"http://www.mailscanner.info/" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">http://www.mailsca=
nner.info/</a>&gt;,
          and<br>
          &gt; is<br>
          &gt; &gt;&gt; believed to be clean.<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;<br>
          &gt; &gt;<br>
          &gt; &gt; _______________________________________________<br>
          &gt; &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> To
          unsubscribe<br>
          &gt; &gt; send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
          &gt; &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> To
          unsubscribe<br>
          &gt; send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
          &gt;<br>
          <br>
          --<br>
          This message has been scanned for viruses and dangerous
          content by MailScanner, and is believed to be clean.<br>
          <br>
          -------------- next part --------------<br>
          A message part incompatible with plain text digests has been
          removed ...<br>
          Name: not available<br>
          Type: text/html<br>
          Size: 27834 bytes<br>
          Desc: not available<br>
          <br>
          ------------------------------<br>
          <br>
          Subject: Digest Footer<br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> To
          unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@l=
ists.ettus.com</a><br>
          <br>
          <br>
          ------------------------------<br>
          <br>
          End of USRP-users Digest, Vol 128, Issue 7<br>
          ******************************************<br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------4A746A6C225F9BA0C9477ED2--

--===============6455540684223743062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6455540684223743062==--
