Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C231365860
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 14:06:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4298E3841DA
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 08:06:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N4EwOx1s";
	dkim-atps=neutral
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id E869D384134
	for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 08:05:18 -0400 (EDT)
Received: by mail-qt1-f177.google.com with SMTP id q4so70411qtn.5
        for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 05:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=YbF8zFk2v097660JSCUYcyuQZzEbg54DFh+zQxw3zm8=;
        b=N4EwOx1seW3VxRy7d5xn3N53uCMMDuGZM0zO1tFZYuUNhgsroEPCi0A6R3mci6I5ds
         0Tb35DGVTxXIcUsXJRUZPfrQZpn8CV9qKFvJdYT9Gczk49CeDlHi00zYv45MIRL84RDB
         5FC8ZzCJvzL3UrMPQrW1ls1ovvgWheD5CeMOFl8Ljlkc+TwWoreGuiHpeaS7Yko5VGrw
         6DFwg31nVzfi+BtIOUc6vL/EP32mFPSvUsQT/vd98SYW8L0HJaPq6mPGmTF3SLQGOKlB
         uaCP53V3whff0SSsXB0plw/n2lsImtTY1/THbhJv4k1nnqN9CY+6uHeF/NoY7Z5prTne
         9PLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=YbF8zFk2v097660JSCUYcyuQZzEbg54DFh+zQxw3zm8=;
        b=YtZToTYp+KaBSIkZH34fuQw+MKckZlzgEacnJdJ7YwkHjP91kHLSk5m8+QmDhsFSKY
         42XdqjL1JuOymoLQPQNVJn/tops6uNM32w87GEVMG2gY8npiAK6qzxbt8fQnbUjPsFSw
         q5Odq/yuyq3V9IuH3OGrVZ2cKIrNS4s9KT8ynR/ZUQ0e0IhQ/soV3STOjTbGMI4yAaHe
         LXZVoVLtNtQzqj9ZcsY8QxsZNz59gKbzuN8faII7TS82xWmbqY29SU33xNP699R/uCgu
         nZEvK1k84W7FhJh/Div36xZQls+s93RcJbj80L33crm8KDdSjCwe8BsS89axJfen4wRT
         wnWA==
X-Gm-Message-State: AOAM532VhmBjoS3FGWyA0IZnnBD9ADWqvvz+XYQCUCXRSHIfPfQuv0QV
	f5bxC8nYYUPkkATr9hNa05lN4tCXTiHsFg==
X-Google-Smtp-Source: ABdhPJyV7guXX+Xx5Q7GtKVRLCnfChwENwkRDsc4Ky40qvcmBOLocg8MJtdpWEOXQlrTtU88qA4Wgg==
X-Received: by 2002:ac8:4f03:: with SMTP id b3mr7395488qte.245.1618920317927;
        Tue, 20 Apr 2021 05:05:17 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id y6sm11989672qkd.106.2021.04.20.05.05.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 05:05:17 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 20 Apr 2021 08:05:16 -0400
Message-Id: <ECB67390-D400-4F40-9C5B-2A014A1B6585@gmail.com>
References: <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
In-Reply-To: <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: Y6M3JBD3REAINKOFEPR7NOUKSIXCROIM
X-Message-ID-Hash: Y6M3JBD3REAINKOFEPR7NOUKSIXCROIM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y6M3JBD3REAINKOFEPR7NOUKSIXCROIM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4421938848575106599=="


--===============4421938848575106599==
Content-Type: multipart/alternative; boundary=Apple-Mail-9871DB08-2ABF-4894-AF16-C4A452494CB8
Content-Transfer-Encoding: 7bit


--Apple-Mail-9871DB08-2ABF-4894-AF16-C4A452494CB8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Which OS is this?

Do you have a PPA installed for GnuRadio and/or UHD?

This looks like you=E2=80=99ve created a tangle of old and new by mixing var=
ious install mechanisms over time and not backing out of them cleanly before=
 starting a new one.=20



Sent from my iPhone

> On Apr 20, 2021, at 2:02 AM, Brendan Horsfield <brendan.horsfield@vectalab=
s.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Progress update:  Still stuck, but perhaps with some new clues as to what i=
s going wrong.
>=20
> I have reinstalled both UHD and GNU Radio:  the former from source, the la=
tter from binaries as recommended on the GNU Radio website.  I then performe=
d the following checks:
> uhd_find_devices & uhd_usrp_probe:  OK
> PYTHONPATH manually set to /usr/local/lib/python3/dist-packages
> benchmark_rate & benchmark_rate.py:  OK
> In Python 3:  from gnuradio import uhd.  RESULT:  linux; GNU C++ version 7=
.3.0; Boost_106501; UHD_003.010.003.000-0-unknown  (WRONG! SHOULD BE UHD v4.=
0.0.0)
> In Python 3:  uhd.__file__.   RESULT:  /usr/lib/python3/dist-packages/gnur=
adio/uhd/__init__.py =20
> =46rom command prompt:  gnuradio-config-info -v.  RESULT:  error while loa=
ding shared libraries: libgnuradio-runtime.so.3.8.3git: cannot open shared o=
bject file: No such file or directory  (NOT A GOOD SIGN)
> Observation 1:  It really looks like the GNU Radio installer is ignoring m=
y existing, installed UHD driver, and adding its own, older UHD drivers to m=
y system.  See the following console output for details:
>=20
> The following NEW packages will be installed:
>   gnuradio gnuradio-dev libcodec2-0.7 libgnuradio-analog libgnuradio-audio=
 libgnuradio-blocks libgnuradio-channels libgnuradio-digital libgnuradio-dtv=
 libgnuradio-fec libgnuradio-fft libgnuradio-filter libgnuradio-pmt libgnura=
dio-qtgui libgnuradio-runtime libgnuradio-trellis libgnuradio-uhd libgnuradi=
o-video-sdl libgnuradio-vocoder libgnuradio-wavelet libgnuradio-zeromq libgs=
m1-dev libqwt-qt5-6 librtlsdr0 libuhd003.010.003 libuhd3.15.0 libvolk2-bin l=
ibvolk2-dev libvolk2.0 libvolk2.2 python3-networkx python3-zmq rtl-sdr uhd-h=
ost
> 0 to upgrade, 34 to newly install, 0 to remove and 20 not to upgrade.
> Need to get 2,310 kB/24.9 MB of archives.
> After this operation, 178 MB of additional disk space will be used.
> Do you want to continue? [Y/n] y
>=20
> Observation 2:  Post-installation, GNU Radio is clearly looking in the wro=
ng place for the FPGA images.  When I open GNU Radio and try to connect to a=
 UHD block, it is unable to locate the FPGA image for the block.  It then in=
structs me to run /usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.=
py (which incidentally is completely the wrong location for that utility):=20=

>=20
> UHD Warning:
>     EnvironmentError: IOError: Could not find path for image: usrp_b200_fw=
.hex
>     Using images directory: <no images directory located>
>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow t=
he below instructions to download the images package.
>     Please run:
>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>=20
> I have tried setting the environment variable UHD_IMAGES_DIR in my .bashrc=
 file as shown below, but it makes no difference:
> export UHD_IMAGES_DIR=3D/usr/local/share/uhd/images
> Any suggestions?  Should I try installing GNU Radio from source?  Or shoul=
d I perhaps direct my questions to the GNU Radio mailing list?
>=20
> Thanks,
> Brendan.
>=20
>=20
>  =20
>=20
>=20
>> On Tue, Apr 20, 2021 at 8:54 AM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>> On 04/19/2021 06:51 PM, Brendan Horsfield wrote:
>>> OK, I didn't realise that GNU Radio needed the Python UHD module to be i=
nstalled.  I deliberately excluded the Python API from my UHD driver build i=
n order to try out Christian's custom Python API.
>>>=20
>>> I will remove the custom API today, and install a "stock" UHD driver wit=
h the Ettus Python API.  Then I will give the GNU Radio installation another=
 try.
>>>=20
>>> Thanks,
>>> Brendan.
>> Gah.  Sorry.  Brain fart.
>>=20
>> Carry on.
>>=20
>> so you need to replicate what GR does for UHD in 3.8.  In GR3.7:
>>=20
>> from gnuradio import uhd
>> uhd.__file__
>>=20
>> And see where it's coming from (I don't off the top of my head know what G=
R 3.8 idiom is).
>>=20
>>=20
>>=20
>>=20
>>>=20
>>>=20
>>> On Tue, Apr 20, 2021 at 8:35 AM Marcus D. Leech <patchvonbraun@gmail.com=
> wrote:
>>>>> On 04/19/2021 06:21 PM, Brendan Horsfield wrote:
>>>>> Importing uhd in Python 3:  /usr/local/lib/python3.6/dist-packages/uhd=
-1.1.0-py3.6-linux-x86_64.egg/uhd.cpython-36m-x86_64-linux-gnu.so
>>>>>=20
>>>>> (Note that this is an alternative Python UHD module written by Christi=
an Hahn, which I have been evaluating for the last few days.)  =20
>>>>>=20
>>>>> Trying to import uhd in Python 2 (which I never use) returns an error:=

>>>>>=20
>>>>> Traceback (most recent call last):
>>>>>   File "<stdin>", line 1, in <module>
>>>>>   File "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py", line 1=
0, in <module>
>>>>>   File "/usr/local/lib/python2.7/dist-packages/uhd/types.py", line 10,=
 in <module>
>>>>>     # "__iter__" and "next" attributes instead.
>>>>> ImportError: cannot import name libpyuhd
>>>>>=20
>>>>> Brendan.
>>>>>=20
>>>> Given that gr-uhd wants a module called "uhd" to exist, and GR uses gr-=
uhd, i'm not sure what will happen with the
>>>>   name-space pollution that will result.
>>>>=20
>>>>=20
>>=20

--Apple-Mail-9871DB08-2ABF-4894-AF16-C4A452494CB8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Which OS is this?<div><br></div><div>Do you=
 have a PPA installed for GnuRadio and/or UHD?</div><div><br></div><div>This=
 looks like you=E2=80=99ve created a tangle of old and new by mixing various=
 install mechanisms over time and not backing out of them cleanly before sta=
rting a new one.&nbsp;</div><div><br></div><div><br><br><div dir=3D"ltr">Sen=
t from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 2=
0, 2021, at 2:02 AM, Brendan Horsfield &lt;brendan.horsfield@vectalabs.com&g=
t; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"lt=
r">=EF=BB=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Progress update:&=
nbsp; Still stuck, but perhaps with some new clues as to what is going wrong=
.</div><div><br></div><div>I have reinstalled both UHD and GNU Radio:&nbsp; t=
he former from source, the latter from binaries as recommended on the GNU Ra=
dio website.&nbsp; I then performed the following checks:</div><div><ul><li>=
uhd_find_devices &amp; uhd_usrp_probe:&nbsp; OK</li><li>PYTHONPATH manually s=
et to /usr/local/lib/python3/dist-packages</li><li>benchmark_rate &amp; benc=
hmark_rate.py:&nbsp; OK</li><li>In Python 3:&nbsp; from gnuradio import uhd.=
&nbsp; RESULT:&nbsp; linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010=
.003.000-0-unknown<b>&nbsp; (WRONG! SHOULD BE UHD v4.0.0.0)</b></li><li>In P=
ython 3:&nbsp; uhd.__file__.&nbsp; &nbsp;RESULT:&nbsp;&nbsp;/usr/lib/python3=
/dist-packages/gnuradio/uhd/__init__.py&nbsp;&nbsp;</li><li>=46rom command p=
rompt:&nbsp; gnuradio-config-info -v.&nbsp; RESULT:&nbsp;&nbsp;error while l=
oading shared libraries: libgnuradio-runtime.so.3.8.3git: cannot open shared=
 object file: No such file or directory&nbsp; <b>(NOT A GOOD SIGN)</b></li><=
/ul></div><div><b>Observation 1:&nbsp; </b>It really looks like the GNU Radi=
o installer is ignoring my existing, installed UHD driver, and adding its ow=
n, older UHD drivers to my system.&nbsp; See the following console output fo=
r details:<br></div><div><br></div><div><font face=3D"monospace">The followi=
ng NEW packages will be installed:<br>&nbsp; gnuradio gnuradio-dev libcodec2=
-0.7 libgnuradio-analog libgnuradio-audio libgnuradio-blocks libgnuradio-cha=
nnels libgnuradio-digital libgnuradio-dtv libgnuradio-fec libgnuradio-fft li=
bgnuradio-filter&nbsp;libgnuradio-pmt libgnuradio-qtgui libgnuradio-runtime l=
ibgnuradio-trellis libgnuradio-uhd libgnuradio-video-sdl libgnuradio-vocoder=
 libgnuradio-wavelet libgnuradio-zeromq libgsm1-dev libqwt-qt5-6 librtlsdr0&=
nbsp;<b><u>libuhd003.010.003</u> <u>libuhd3.15.0</u></b> libvolk2-bin libvol=
k2-dev libvolk2.0 libvolk2.2 python3-networkx python3-zmq rtl-sdr uhd-host<b=
r>0 to upgrade, 34 to newly install, 0 to remove and 20 not to upgrade.<br>N=
eed to get 2,310 kB/24.9 MB of archives.<br>After this operation, 178 MB of a=
dditional disk space will be used.<br>Do you want to continue? [Y/n] y</font=
><br></div><div><br></div><div><b>Observation 2:&nbsp; </b>Post-installation=
,&nbsp;GNU Radio is clearly looking in the&nbsp;wrong place for the FPGA ima=
ges.&nbsp;&nbsp;When I open GNU Radio and try to connect to a UHD block, it i=
s unable to locate&nbsp;the FPGA image for the block.&nbsp; It then instruct=
s me to run&nbsp;<b>/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloade=
r.py </b>(which incidentally is completely the wrong location for that utili=
ty):&nbsp;</div><div><br></div><div><font face=3D"monospace">UHD Warning:<br=
>&nbsp; &nbsp; EnvironmentError: IOError: Could not find path for image: usr=
p_b200_fw.hex<br>&nbsp; &nbsp; Using images directory: &lt;no images directo=
ry located&gt;<br>&nbsp; &nbsp; Set the environment variable 'UHD_IMAGES_DIR=
' appropriately or follow the below instructions to download the images pack=
age.<br>&nbsp; &nbsp; Please run:<br>&nbsp; &nbsp; &nbsp;"/usr/lib/x86_64-li=
nux-gnu/uhd/utils/uhd_images_downloader.py"</font><br></div><div><br></div><=
div>I have tried setting the environment variable UHD_IMAGES_DIR in my .bash=
rc file as shown below, but it makes no difference:</div><div><ul><li><span s=
tyle=3D"font-family:monospace">export UHD_IMAGES_DIR=3D/usr/local/share/uhd/=
images</span></li></ul></div><div>Any suggestions?&nbsp; Should I try instal=
ling GNU Radio from source?&nbsp; Or should I perhaps direct my questions to=
 the GNU Radio mailing list?</div><div><br></div><div>Thanks,</div><div>Bren=
dan.</div><div><br></div><div><br></div><div>&nbsp;&nbsp;<br></div><div><br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Apr 20, 2021 at 8:54 AM Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 06:51 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">OK, I didn't realise that GNU Radio needed the
        Python UHD module to be installed.&nbsp; I deliberately excluded the=

        Python API from my UHD driver build in order to try out
        Christian's custom Python API.
        <div><br>
        </div>
        <div>I will remove the custom API today, and install a "stock"
          UHD driver with the Ettus Python API.&nbsp; Then I will give the
          GNU Radio installation another try.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Brendan.</div>
      </div>
    </blockquote>
    Gah.&nbsp; Sorry.&nbsp; Brain fart.<br>
    <br>
    Carry on.<br>
    <br>
    so you need to replicate what GR does for UHD in 3.8.&nbsp; In GR3.7:<br=
>
    <br>
    from gnuradio import uhd<br>
    uhd.__file__<br>
    <br>
    And see where it's coming from (I don't off the top of my head know
    what GR 3.8 idiom is).<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 8:35
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 04/19/2021 06:21 PM, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Importing uhd in Python 3:&nbsp;
                /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux=
-x86_64.egg/<a href=3D"http://uhd.cpython-36m-x86_64-linux-gnu.so" target=3D=
"_blank">uhd.cpython-36m-x86_64-linux-gnu.so</a>
                <div><br>
                </div>
                <div>(Note that this is an alternative Python UHD module
                  written by Christian Hahn, which I have been
                  evaluating for the last few days.)&nbsp; &nbsp;</div>
                <div><br>
                </div>
                <div>Trying to import uhd in Python 2 (which I never
                  use) returns an error:</div>
                <div><br>
                </div>
                <div>Traceback (most recent call last):<br>
                  &nbsp; File "&lt;stdin&gt;", line 1, in &lt;module&gt;<br>=

                  &nbsp; File
                  "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py",
                  line 10, in &lt;module&gt;<br>
                  &nbsp; File
                  "/usr/local/lib/python2.7/dist-packages/uhd/types.py",
                  line 10, in &lt;module&gt;<br>
                  &nbsp; &nbsp; # "__iter__" and "next" attributes instead.<=
br>
                  ImportError: cannot import name libpyuhd<br>
                </div>
                <div><br>
                </div>
                <div>Brendan.</div>
                <br>
              </div>
            </blockquote>
            Given that gr-uhd wants a module called "uhd" to exist, and
            GR uses gr-uhd, i'm not sure what will happen with the<br>
            &nbsp; name-space pollution that will result.<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-9871DB08-2ABF-4894-AF16-C4A452494CB8--

--===============4421938848575106599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4421938848575106599==--
