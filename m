Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7BE3658C5
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 14:16:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32179383D7A
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 08:16:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="GXlNVrzd";
	dkim-atps=neutral
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CD9C3841CC
	for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 08:15:44 -0400 (EDT)
Received: by mail-vs1-f49.google.com with SMTP id k19so6166184vsg.0
        for <usrp-users@lists.ettus.com>; Tue, 20 Apr 2021 05:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=pjK0utu2CpmwZstzh9J6Dq4pxHVMvjEUWsEWOagxiss=;
        b=GXlNVrzduLa0hTlRLChI7NYqWfySwvaiy6AiD2JqxNg7zP4FvrPvbcPFJAP74ri1Eo
         ZI7RkV5ctf/9wesW7cBhkGyt8UN2pAUlZfTwSz6/DSOWX1euGho+BnqI67aJwrjmLwif
         UlIbvWhcFyBDh/qfhC6icHpl09a8ygteNPymgv7MpM8bkWoCcmMqiSnBGiV1TyzsQtw3
         4YvLU5T2s3ce4jsW32NH//44O6pGgHf8ttxeWNNacJ9/GvqOyjPWfqHQCmR6747Z91QL
         W1gSTgD1ElUtzDpeKvhJVz6nycZoyw0iMPJoldcMHWd3gosgDzrLDDS+vcKPABcP6SY7
         NVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=pjK0utu2CpmwZstzh9J6Dq4pxHVMvjEUWsEWOagxiss=;
        b=o7TkWfNwXMUFJDjwJIXFwYW/W8VOMVg7rQpSvzfsuNjo2VSbhw6VImHGR9Hjwi8T99
         zcUHeoxQ3QwCVvsn70A5KKZ7zJnxRTN0Xnt363pbyfzmqPIdGafLEvoLrpQoqUf2JW8F
         VvmLjUlgtpmqZI4RkKRD8rL7YYusWFyKPSuLQd1JFX63KM+z+kzqXHhfOF3mBCT9LqIU
         r6I29jvnke6vh1OuQ3D8whC0jD0lqNHKDH4ZamtUz3b64xmb2CXmnT+n4FR1QY2sYLie
         F3l8NiPzEq5KB4ait1eeAp9t6JWNuyRj/46IkGZEXZC9Uo2ZqL4cbeQl3++kRe5ma93C
         bcLw==
X-Gm-Message-State: AOAM532VpfAhGTTE2wL400jnZdT60Wap05hZnRQjTfjfDL1uqJvH5i5Z
	5atUcL7rnvVzZr+N9IjHV3oHINkNQ+Dz1QACUfI5KA==
X-Google-Smtp-Source: ABdhPJzxePmE8yuKRSaZ6OWewnzUTdtG3MaBSRzAtswocTeO3oBtTYbOWsitHJdvNHoezCRcYxmcXFLt7k4kc5Bm+wc=
X-Received: by 2002:a05:6102:941:: with SMTP id a1mr8019587vsi.32.1618920943872;
 Tue, 20 Apr 2021 05:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com>
 <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com> <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
 <607E0593.1040807@gmail.com> <CALNMZ8U3m_oj3T67VqZYOV53J3sCb=7=NCat2E0TnMvEB1QEbg@mail.gmail.com>
 <607E0A1C.5050608@gmail.com> <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
 <20210420111632.lixq2x3mcryavb6d@barbe>
In-Reply-To: <20210420111632.lixq2x3mcryavb6d@barbe>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 20 Apr 2021 22:15:32 +1000
Message-ID: <CALNMZ8XW0Z3EnaLUvfHDZY3GP87R9F+i-e9xOi_BZiYof4c59w@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users@lists.ettus.com
Message-ID-Hash: JATBP6JNA5YZHY52MNE47VRXJRFIIX3P
X-Message-ID-Hash: JATBP6JNA5YZHY52MNE47VRXJRFIIX3P
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JATBP6JNA5YZHY52MNE47VRXJRFIIX3P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5778877162059910450=="

--===============5778877162059910450==
Content-Type: multipart/alternative; boundary="000000000000c78a0805c06667b9"

--000000000000c78a0805c06667b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,

I have uninstalled the binary version of GNU Radio and replaced it with
version 3.9.0.0, which I built from source as per the instructions on the
following web pages:

   - https://wiki.gnuradio.org/index.php/InstallingGR#From_Source
   -
   https://wiki.gnuradio.org/index.php/ModuleNotFoundError#B._Finding_the_P=
ython_library


I have verified the installation as follows:

   - $ gnuradio-config-info --version  -->  returns '3.9.0.0'
   - $ gnuradio-config-info --prefix  -->  returns '/usr/local'
   - $ find /usr/local -name gnuradio | grep "packages"  -->  returns
   '/usr/local/lib/python3/dist-packages/gnuradio' and
   '/usr/local/lib/python2.7/dist-packages/gnuradio'
   - Python3 interpreter:  from gnuradio import uhd  -->  uhd.__file__
   -->  returns '/usr/local/lib/python3/dist-packages/gnuradio/uhd/__init__=
.py'
   - Reinstalled GNU Radio Companion via Ubuntu Software & Updates utility

Next, I opened GNU Radio Companion and tried to connect to a UHD source
like before.  Result:  Exactly the same problem as before!  GRC is still
pulling in UHD 3.10, even though I did not install that version of UHD:

linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown

UHD Warning:
    EnvironmentError: IOError: Could not find path for image:
usrp_b200_fw.hex
    Using images directory: <no images directory located>
    Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
the below instructions to download the images package.
    Please run:
     "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
Traceback (most recent call last):
  File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 212,
in <module>
    main()
  File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 188,
in main
    tb =3D top_block_cls()
  File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 88, in
__init__
    channels=3Dlist(range(0,1)),
  File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 125,
in constructor_interceptor
    return old_constructor(*args)
  File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line
3259, in make
    return _uhd_swig.usrp_source_make(device_addr, stream_args,
issue_stream_cmd_on_start)
RuntimeError: LookupError: KeyError: No devices found for ----->
Device Address:
    serial: 318425D

There is also a new problem:  When I try to play an old waveform recording
from file (my "Hello World" flowgraph), GRC throws an error regarding the
Frequency Sink block:

   - AttributeError: 'freq_sink_c_sptr' object has no attribute
   'set_fft_window_normalized'

Brendan.


On Tue, Apr 20, 2021 at 9:17 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 20/04/21 16:02, Brendan Horsfield wrote:
> > I have reinstalled both UHD and GNU Radio: [...], the
> > latter from binaries as recommended on the GNU Radio website.
>
> Do you mean the binaries from your distribution repo
> (eg. Ubuntu bionic: https://packages.ubuntu.com/bionic/gnuradio)?
>
> If yes, it cannot work.
> The dependency graph pulls "libuhd003.010.003".
>
> I guess most GNU Radio binaries won't work
> because they are built with other versions of UHD
> and hence pull specific versions.
>
> > The following NEW packages will be installed:
> >   gnuradio gnuradio-dev libcodec2-0.7 libgnuradio-analog
> libgnuradio-audio
> > libgnuradio-blocks libgnuradio-channels libgnuradio-digital
> libgnuradio-dtv
> > libgnuradio-fec libgnuradio-fft libgnuradio-filter libgnuradio-pmt
> > libgnuradio-qtgui libgnuradio-runtime libgnuradio-trellis libgnuradio-u=
hd
> > libgnuradio-video-sdl libgnuradio-vocoder libgnuradio-wavelet
> > libgnuradio-zeromq libgsm1-dev libqwt-qt5-6 librtlsdr0 *libuhd003.010.0=
03
> > libuhd3.15.0* libvolk2-bin libvolk2-dev libvolk2.0 libvolk2.2
> > python3-networkx python3-zmq rtl-sdr uhd-host
> > 0 to upgrade, 34 to newly install, 0 to remove and 20 not to upgrade.
> > Need to get 2,310 kB/24.9 MB of archives.
> > After this operation, 178 MB of additional disk space will be used.
> > Do you want to continue? [Y/n] y
>
> Strange, I do not see "libgnuradio-uhd" there.
> It pulls libuhd3.10, but also libuhd3.15. What was the command?
>
> > Any suggestions?  Should I try installing GNU Radio from source?  Or
> should
> > I perhaps direct my questions to the GNU Radio mailing list?
>
> IMO, the "easiest path" is building from source.
> That way, you are sure it will link with the correct UHD version.
> Using binaries are ok as long as UHD and linked UHD to GNU Radio versions
> stay sync.
>
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c78a0805c06667b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi C=C3=A9dric,<div><br></div><div>I have uninstalled the =
binary version of GNU Radio and replaced it with version 3.9.0.0, which I b=
uilt from source as per the instructions on the following web pages:</div><=
div><ul><li><a href=3D"https://wiki.gnuradio.org/index.php/InstallingGR#Fro=
m_Source">https://wiki.gnuradio.org/index.php/InstallingGR#From_Source</a><=
/li><li><a href=3D"https://wiki.gnuradio.org/index.php/ModuleNotFoundError#=
B._Finding_the_Python_library">https://wiki.gnuradio.org/index.php/ModuleNo=
tFoundError#B._Finding_the_Python_library</a>=C2=A0</li></ul><div>I have ve=
rified the installation as follows:</div></div><div><ul><li>$=C2=A0gnuradio=
-config-info --version=C2=A0 --&gt;=C2=A0 returns &#39;3.9.0.0&#39;</li><li=
>$=C2=A0gnuradio-config-info --prefix=C2=A0 --&gt;=C2=A0 returns &#39;/usr/=
local&#39;</li><li>$=C2=A0find /usr/local -name gnuradio | grep &quot;packa=
ges&quot;=C2=A0 --&gt;=C2=A0 returns &#39;/usr/local/lib/python3/dist-packa=
ges/gnuradio&#39; and &#39;/usr/local/lib/python2.7/dist-packages/gnuradio&=
#39;</li><li>Python3=C2=A0interpreter:=C2=A0 from gnuradio import uhd=C2=A0=
 --&gt;=C2=A0 uhd.__file__=C2=A0 --&gt;=C2=A0 returns &#39;/usr/local/lib/p=
ython3/dist-packages/gnuradio/uhd/__init__.py&#39;<br></li><li>Reinstalled =
GNU Radio Companion via Ubuntu Software &amp; Updates utility</li></ul><div=
>Next, I opened GNU Radio Companion and tried to connect to a UHD source li=
ke before.=C2=A0 Result:=C2=A0 Exactly the same problem as before!=C2=A0 GR=
C is still pulling in UHD 3.10, even though I did not install that version =
of UHD:</div><div><br></div><div><font face=3D"monospace">linux; GNU C++ ve=
rsion 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown<br><br>UHD Warning=
:<br>=C2=A0 =C2=A0 EnvironmentError: IOError: Could not find path for image=
: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 Using images directory: &lt;no images d=
irectory located&gt;<br>=C2=A0 =C2=A0 Set the environment variable &#39;UHD=
_IMAGES_DIR&#39; appropriately or follow the below instructions to download=
 the images package.<br>=C2=A0 =C2=A0 Please run:<br>=C2=A0 =C2=A0 =C2=A0&q=
uot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quot;<br>T=
raceback (most recent call last):<br>=C2=A0 File &quot;/home/anyone/Documen=
ts/Brendan/GNU-Radio/top_block.py&quot;, line 212, in &lt;module&gt;<br>=C2=
=A0 =C2=A0 main()<br>=C2=A0 File &quot;/home/anyone/Documents/Brendan/GNU-R=
adio/top_block.py&quot;, line 188, in main<br>=C2=A0 =C2=A0 tb =3D top_bloc=
k_cls()<br>=C2=A0 File &quot;/home/anyone/Documents/Brendan/GNU-Radio/top_b=
lock.py&quot;, line 88, in __init__<br>=C2=A0 =C2=A0 channels=3Dlist(range(=
0,1)),<br>=C2=A0 File &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/__i=
nit__.py&quot;, line 125, in constructor_interceptor<br>=C2=A0 =C2=A0 retur=
n old_constructor(*args)<br>=C2=A0 File &quot;/usr/lib/python3/dist-package=
s/gnuradio/uhd/uhd_swig.py&quot;, line 3259, in make<br>=C2=A0 =C2=A0 retur=
n _uhd_swig.usrp_source_make(device_addr, stream_args, issue_stream_cmd_on_=
start)<br>RuntimeError: LookupError: KeyError: No devices found for -----&g=
t;<br>Device Address:<br>=C2=A0 =C2=A0 serial: 318425D<br></font></div><div=
><br></div><div>There is also a new problem:=C2=A0 When I try to play an ol=
d waveform recording from file (my &quot;Hello World&quot; flowgraph), GRC =
throws an error regarding the Frequency Sink block:</div><div><ul><li>Attri=
buteError: &#39;freq_sink_c_sptr&#39; object has no attribute &#39;set_fft_=
window_normalized&#39;</li></ul></div><div>Brendan.<br></div></div><div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Apr 20, 2021 at 9:17 PM C=C3=A9dric Hannotier via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 20/04/21 16:02, Brendan Horsfield wrote:<br>
&gt; I have reinstalled both UHD and GNU Radio: [...], the<br>
&gt; latter from binaries as recommended on the GNU Radio website.<br>
<br>
Do you mean the binaries from your distribution repo <br>
(eg. Ubuntu bionic: <a href=3D"https://packages.ubuntu.com/bionic/gnuradio"=
 rel=3D"noreferrer" target=3D"_blank">https://packages.ubuntu.com/bionic/gn=
uradio</a>)?<br>
<br>
If yes, it cannot work.<br>
The dependency graph pulls &quot;libuhd003.010.003&quot;.<br>
<br>
I guess most GNU Radio binaries won&#39;t work<br>
because they are built with other versions of UHD<br>
and hence pull specific versions.<br>
<br>
&gt; The following NEW packages will be installed:<br>
&gt;=C2=A0 =C2=A0gnuradio gnuradio-dev libcodec2-0.7 libgnuradio-analog lib=
gnuradio-audio<br>
&gt; libgnuradio-blocks libgnuradio-channels libgnuradio-digital libgnuradi=
o-dtv<br>
&gt; libgnuradio-fec libgnuradio-fft libgnuradio-filter libgnuradio-pmt<br>
&gt; libgnuradio-qtgui libgnuradio-runtime libgnuradio-trellis libgnuradio-=
uhd<br>
&gt; libgnuradio-video-sdl libgnuradio-vocoder libgnuradio-wavelet<br>
&gt; libgnuradio-zeromq libgsm1-dev libqwt-qt5-6 librtlsdr0 *libuhd003.010.=
003<br>
&gt; libuhd3.15.0* libvolk2-bin libvolk2-dev libvolk2.0 libvolk2.2<br>
&gt; python3-networkx python3-zmq rtl-sdr uhd-host<br>
&gt; 0 to upgrade, 34 to newly install, 0 to remove and 20 not to upgrade.<=
br>
&gt; Need to get 2,310 kB/24.9 MB of archives.<br>
&gt; After this operation, 178 MB of additional disk space will be used.<br=
>
&gt; Do you want to continue? [Y/n] y<br>
<br>
Strange, I do not see &quot;libgnuradio-uhd&quot; there.<br>
It pulls libuhd3.10, but also libuhd3.15. What was the command?<br>
<br>
&gt; Any suggestions?=C2=A0 Should I try installing GNU Radio from source?=
=C2=A0 Or should<br>
&gt; I perhaps direct my questions to the GNU Radio mailing list?<br>
<br>
IMO, the &quot;easiest path&quot; is building from source.<br>
That way, you are sure it will link with the correct UHD version.<br>
Using binaries are ok as long as UHD and linked UHD to GNU Radio versions s=
tay sync.<br>
<br>
--<br>
<br>
C=C3=A9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c78a0805c06667b9--

--===============5778877162059910450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5778877162059910450==--
