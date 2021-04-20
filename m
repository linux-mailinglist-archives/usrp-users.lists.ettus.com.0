Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 167AD3658FD
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 14:33:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55C8D384965
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 08:33:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="jSzGGZKD";
	dkim-atps=neutral
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
	by mm2.emwd.com (Postfix) with ESMTPS id BCEB3384134
	for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 08:32:17 -0400 (EDT)
Received: by mail-ua1-f51.google.com with SMTP id v23so11979828uaq.13
        for <USRP-users@lists.ettus.com>; Tue, 20 Apr 2021 05:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6eg4zy/hDnhSHgqNnJAm23erFXx3IxB8VJfjlH4z+VY=;
        b=jSzGGZKDWZZ7EHdJKsCw89Hd85W6Ja6aiJqGL8kB/B9teh+ilGvbaI7naCzb363q8+
         jBjtppDPn9/6QOVkkWClMgWYywZ1HOG0iCPpTOf2sZAhIs7E2fwwlBU/BUj4RpU9ydNY
         y8Vp46XtP6Pgj70VUOS/PnAsk37s5zLXxOifYlsRBb6LdWv+7U1i11fAJmVPdZHRHSzy
         3qtKP1/3VAjxCWQ1HBby5t9bUBtseJF7TR2SQsdCkxP4bNTp4YuLj2mg9o923M8CK2qQ
         HkMD1DUcTGDq8t+5YyTcJwhtHtQdUKmy/gAhUjTAybtq0nhsC60ZY1OI/CB7d/gfcdCt
         RcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6eg4zy/hDnhSHgqNnJAm23erFXx3IxB8VJfjlH4z+VY=;
        b=j37czCwZ4UaFdd9NQsdAZfIMv7mC7gCH7leOedvQdWmeK/Fej+eYfE2rhE4jyDgCdN
         jRrJNRPdHSSwvxVxgT0CwXzgEna0LU5br9uGAksjNYJDSRky5q/a97OhgeFH5Gw1i1Ds
         LbDJJvVG4Y4VEnzpgjpJtEBnIsHvd0+ujQroP/4GzvdWuOkiTWIfc5Egs6ucWr6BxGBe
         IWhIcAk2QrplyXaw1zNEFd9qQksnJufVpjEHONsPF41JknjE9suHNjppZv/qH4fxyH5E
         6y1kNDx22+CC95PazaRF8fOlUjaxJb6xa6YPiVEmdFn48iajfMKpLCXLK2pyR6BjBl5y
         NVWQ==
X-Gm-Message-State: AOAM532MZpJX3F8mGBSi/uCwQxHCZCzjVF3T6CNOW3Tfr0YTlqdx83X1
	I5lmHI4V6aeWFVQzeD921zGC1pwRen5LLbJdeu8GlnM0YEPDZRUi
X-Google-Smtp-Source: ABdhPJzJlWphteiltof4RbpqrDxauipwozUrRX+FMflHtVnIV69w7zZ0cJe7AxaBMLnhQvZgYgaZjkCsq5KpbRTXq80=
X-Received: by 2002:a9f:3f09:: with SMTP id h9mr11945232uaj.139.1618921937149;
 Tue, 20 Apr 2021 05:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <CALNMZ8V_1+PC-GdxwFY6iDT6WqGpOqzWbwN=XJQ4EjY-yfcfVg@mail.gmail.com>
 <ECB67390-D400-4F40-9C5B-2A014A1B6585@gmail.com>
In-Reply-To: <ECB67390-D400-4F40-9C5B-2A014A1B6585@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 20 Apr 2021 22:32:06 +1000
Message-ID: <CALNMZ8X8EqnLbnyRBz5j_h9OERsX75cZbux7o3GyeqNw936Awg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: A3MERCCN5ZA3YWUF4VB55ZZ6ATP3TVB6
X-Message-ID-Hash: A3MERCCN5ZA3YWUF4VB55ZZ6ATP3TVB6
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3MERCCN5ZA3YWUF4VB55ZZ6ATP3TVB6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2225260673388005568=="

--===============2225260673388005568==
Content-Type: multipart/alternative; boundary="000000000000fbb0dc05c066a2fb"

--000000000000fbb0dc05c066a2fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My OS version is Ubuntu 18.04.5 LTS.

I don't know what a PPA is, unless you are referring to the command "sudo
add-apt-repository ppa:gnuradio/gnuradio-releases", which I used as part of
my latest installation attempt.

Yes, I have tried installing GNU Radio several times in several different
ways.  We had an older version of GRC running successfully on my laptop
until recently, but unfortunately that version stopped working when I
upgraded the UHD driver to v4.0.0.0.

I have noticed that there are files containing the strings "uhd" and
"gnuradio" scattered all over my hard drive.  Each time I reinstall GNU
Radio, I have to hunt these files down manually and delete them by hand.
Even so, those old versions of UHD keep reappearing.

From my online research, it appears that I am not alone in this -- many
other users have reported exactly the same problem as me, some going back
several years.

Brendan.



On Tue, Apr 20, 2021 at 10:05 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Which OS is this?
>
> Do you have a PPA installed for GnuRadio and/or UHD?
>
> This looks like you=E2=80=99ve created a tangle of old and new by mixing =
various
> install mechanisms over time and not backing out of them cleanly before
> starting a new one.
>
>
>
> Sent from my iPhone
>
> On Apr 20, 2021, at 2:02 AM, Brendan Horsfield <
> brendan.horsfield@vectalabs.com> wrote:
>
> =EF=BB=BF
> Hi Marcus,
>
> Progress update:  Still stuck, but perhaps with some new clues as to what
> is going wrong.
>
> I have reinstalled both UHD and GNU Radio:  the former from source, the
> latter from binaries as recommended on the GNU Radio website.  I then
> performed the following checks:
>
>    - uhd_find_devices & uhd_usrp_probe:  OK
>    - PYTHONPATH manually set to /usr/local/lib/python3/dist-packages
>    - benchmark_rate & benchmark_rate.py:  OK
>    - In Python 3:  from gnuradio import uhd.  RESULT:  linux; GNU C++
>    version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown*  (WRONG!
>    SHOULD BE UHD v4.0.0.0)*
>    - In Python 3:  uhd.__file__.
>     RESULT:  /usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py
>    - From command prompt:  gnuradio-config-info -v.  RESULT:  error while
>    loading shared libraries: libgnuradio-runtime.so.3.8.3git: cannot open
>    shared object file: No such file or directory  *(NOT A GOOD SIGN)*
>
> *Observation 1:  *It really looks like the GNU Radio installer is
> ignoring my existing, installed UHD driver, and adding its own, older UHD
> drivers to my system.  See the following console output for details:
>
> The following NEW packages will be installed:
>   gnuradio gnuradio-dev libcodec2-0.7 libgnuradio-analog libgnuradio-audi=
o
> libgnuradio-blocks libgnuradio-channels libgnuradio-digital libgnuradio-d=
tv
> libgnuradio-fec libgnuradio-fft libgnuradio-filter libgnuradio-pmt
> libgnuradio-qtgui libgnuradio-runtime libgnuradio-trellis libgnuradio-uhd
> libgnuradio-video-sdl libgnuradio-vocoder libgnuradio-wavelet
> libgnuradio-zeromq libgsm1-dev libqwt-qt5-6 librtlsdr0 *libuhd003.010.003
> libuhd3.15.0* libvolk2-bin libvolk2-dev libvolk2.0 libvolk2.2
> python3-networkx python3-zmq rtl-sdr uhd-host
> 0 to upgrade, 34 to newly install, 0 to remove and 20 not to upgrade.
> Need to get 2,310 kB/24.9 MB of archives.
> After this operation, 178 MB of additional disk space will be used.
> Do you want to continue? [Y/n] y
>
> *Observation 2:  *Post-installation, GNU Radio is clearly looking in
> the wrong place for the FPGA images.  When I open GNU Radio and try to
> connect to a UHD block, it is unable to locate the FPGA image for the
> block.  It then instructs me to run */usr/lib/x86_64-linux-gnu/uhd/utils/=
uhd_images_downloader.py
> *(which incidentally is completely the wrong location for that utility):
>
> UHD Warning:
>     EnvironmentError: IOError: Could not find path for image:
> usrp_b200_fw.hex
>     Using images directory: <no images directory located>
>     Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow
> the below instructions to download the images package.
>     Please run:
>      "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>
> I have tried setting the environment variable UHD_IMAGES_DIR in my .bashr=
c
> file as shown below, but it makes no difference:
>
>    - export UHD_IMAGES_DIR=3D/usr/local/share/uhd/images
>
> Any suggestions?  Should I try installing GNU Radio from source?  Or
> should I perhaps direct my questions to the GNU Radio mailing list?
>
> Thanks,
> Brendan.
>
>
>
>
>
> On Tue, Apr 20, 2021 at 8:54 AM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 04/19/2021 06:51 PM, Brendan Horsfield wrote:
>>
>> OK, I didn't realise that GNU Radio needed the Python UHD module to be
>> installed.  I deliberately excluded the Python API from my UHD driver bu=
ild
>> in order to try out Christian's custom Python API.
>>
>> I will remove the custom API today, and install a "stock" UHD driver wit=
h
>> the Ettus Python API.  Then I will give the GNU Radio installation anoth=
er
>> try.
>>
>> Thanks,
>> Brendan.
>>
>> Gah.  Sorry.  Brain fart.
>>
>> Carry on.
>>
>> so you need to replicate what GR does for UHD in 3.8.  In GR3.7:
>>
>> from gnuradio import uhd
>> uhd.__file__
>>
>> And see where it's coming from (I don't off the top of my head know what
>> GR 3.8 idiom is).
>>
>>
>>
>>
>>
>>
>> On Tue, Apr 20, 2021 at 8:35 AM Marcus D. Leech <patchvonbraun@gmail.com=
>
>> wrote:
>>
>>> On 04/19/2021 06:21 PM, Brendan Horsfield wrote:
>>>
>>> Importing uhd in Python 3:
>>> /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_64.egg=
/
>>> uhd.cpython-36m-x86_64-linux-gnu.so
>>>
>>> (Note that this is an alternative Python UHD module written by Christia=
n
>>> Hahn, which I have been evaluating for the last few days.)
>>>
>>> Trying to import uhd in Python 2 (which I never use) returns an error:
>>>
>>> Traceback (most recent call last):
>>>   File "<stdin>", line 1, in <module>
>>>   File "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py", line
>>> 10, in <module>
>>>   File "/usr/local/lib/python2.7/dist-packages/uhd/types.py", line 10,
>>> in <module>
>>>     # "__iter__" and "next" attributes instead.
>>> ImportError: cannot import name libpyuhd
>>>
>>> Brendan.
>>>
>>> Given that gr-uhd wants a module called "uhd" to exist, and GR uses
>>> gr-uhd, i'm not sure what will happen with the
>>>   name-space pollution that will result.
>>>
>>>
>>>
>>

--000000000000fbb0dc05c066a2fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My OS version is=C2=A0Ubuntu 18.04.5 LTS.=C2=A0=C2=A0<div>=
<br></div><div>I don&#39;t know what a PPA is, unless you are referring to =
the command &quot;<span style=3D"background-color:rgb(249,249,249);color:rg=
b(0,0,0);font-family:monospace,Courier;font-size:14px;white-space:pre-wrap"=
>sudo add-apt-repository ppa:gnuradio/gnuradio-releases</span>&quot;, which=
 I used as part of my latest installation attempt.=C2=A0</div><div><div><br=
></div><div>Yes, I have tried installing GNU Radio several times in several=
 different ways.=C2=A0 We had an older version of GRC running successfully =
on my laptop until recently, but unfortunately that version stopped working=
 when I upgraded the UHD driver to v4.0.0.0.</div></div><div><br></div><div=
>I have noticed that there are files containing the strings &quot;uhd&quot;=
 and &quot;gnuradio&quot; scattered all over my hard drive.=C2=A0 Each time=
 I reinstall GNU Radio, I have to hunt these files down manually and delete=
 them by hand.=C2=A0 Even so, those old versions of UHD keep reappearing.</=
div><div><br></div><div>From my online research, it appears that I am not a=
lone in this --=C2=A0many other users have reported exactly the same proble=
m as me,=C2=A0some going back several years.</div><div><br></div><div>Brend=
an.</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 20, 2021 at 10:05 PM Mar=
cus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"auto">Which OS is this?<div><br></div><div>Do you have a=
 PPA installed for GnuRadio and/or UHD?</div><div><br></div><div>This looks=
 like you=E2=80=99ve created a tangle of old and new by mixing various inst=
all mechanisms over time and not backing out of them cleanly before startin=
g a new one.=C2=A0</div><div><br></div><div><br><br><div dir=3D"ltr">Sent f=
rom my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 20=
, 2021, at 2:02 AM, Brendan Horsfield &lt;<a href=3D"mailto:brendan.horsfie=
ld@vectalabs.com" target=3D"_blank">brendan.horsfield@vectalabs.com</a>&gt;=
 wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr=
">=EF=BB=BF<div dir=3D"ltr">Hi Marcus,<div><br></div><div>Progress update:=
=C2=A0 Still stuck, but perhaps with some new clues as to what is going wro=
ng.</div><div><br></div><div>I have reinstalled both UHD and GNU Radio:=C2=
=A0 the former from source, the latter from binaries as recommended on the =
GNU Radio website.=C2=A0 I then performed the following checks:</div><div><=
ul><li>uhd_find_devices &amp; uhd_usrp_probe:=C2=A0 OK</li><li>PYTHONPATH m=
anually set to /usr/local/lib/python3/dist-packages</li><li>benchmark_rate =
&amp; benchmark_rate.py:=C2=A0 OK</li><li>In Python 3:=C2=A0 from gnuradio =
import uhd.=C2=A0 RESULT:=C2=A0 linux; GNU C++ version 7.3.0; Boost_106501;=
 UHD_003.010.003.000-0-unknown<b>=C2=A0 (WRONG! SHOULD BE UHD v4.0.0.0)</b>=
</li><li>In Python 3:=C2=A0 uhd.__file__.=C2=A0 =C2=A0RESULT:=C2=A0=C2=A0/u=
sr/lib/python3/dist-packages/gnuradio/uhd/__init__.py=C2=A0=C2=A0</li><li>F=
rom command prompt:=C2=A0 gnuradio-config-info -v.=C2=A0 RESULT:=C2=A0=C2=
=A0error while loading shared libraries: libgnuradio-runtime.so.3.8.3git: c=
annot open shared object file: No such file or directory=C2=A0 <b>(NOT A GO=
OD SIGN)</b></li></ul></div><div><b>Observation 1:=C2=A0 </b>It really look=
s like the GNU Radio installer is ignoring my existing, installed UHD drive=
r, and adding its own, older UHD drivers to my system.=C2=A0 See the follow=
ing console output for details:<br></div><div><br></div><div><font face=3D"=
monospace">The following NEW packages will be installed:<br>=C2=A0 gnuradio=
 gnuradio-dev libcodec2-0.7 libgnuradio-analog libgnuradio-audio libgnuradi=
o-blocks libgnuradio-channels libgnuradio-digital libgnuradio-dtv libgnurad=
io-fec libgnuradio-fft libgnuradio-filter=C2=A0libgnuradio-pmt libgnuradio-=
qtgui libgnuradio-runtime libgnuradio-trellis libgnuradio-uhd libgnuradio-v=
ideo-sdl libgnuradio-vocoder libgnuradio-wavelet libgnuradio-zeromq libgsm1=
-dev libqwt-qt5-6 librtlsdr0=C2=A0<b><u>libuhd003.010.003</u> <u>libuhd3.15=
.0</u></b> libvolk2-bin libvolk2-dev libvolk2.0 libvolk2.2 python3-networkx=
 python3-zmq rtl-sdr uhd-host<br>0 to upgrade, 34 to newly install, 0 to re=
move and 20 not to upgrade.<br>Need to get 2,310 kB/24.9 MB of archives.<br=
>After this operation, 178 MB of additional disk space will be used.<br>Do =
you want to continue? [Y/n] y</font><br></div><div><br></div><div><b>Observ=
ation 2:=C2=A0 </b>Post-installation,=C2=A0GNU Radio is clearly looking in =
the=C2=A0wrong place for the FPGA images.=C2=A0=C2=A0When I open GNU Radio =
and try to connect to a UHD block, it is unable to locate=C2=A0the FPGA ima=
ge for the block.=C2=A0 It then instructs me to run=C2=A0<b>/usr/lib/x86_64=
-linux-gnu/uhd/utils/uhd_images_downloader.py </b>(which incidentally is co=
mpletely the wrong location for that utility):=C2=A0</div><div><br></div><d=
iv><font face=3D"monospace">UHD Warning:<br>=C2=A0 =C2=A0 EnvironmentError:=
 IOError: Could not find path for image: usrp_b200_fw.hex<br>=C2=A0 =C2=A0 =
Using images directory: &lt;no images directory located&gt;<br>=C2=A0 =C2=
=A0 Set the environment variable &#39;UHD_IMAGES_DIR&#39; appropriately or =
follow the below instructions to download the images package.<br>=C2=A0 =C2=
=A0 Please run:<br>=C2=A0 =C2=A0 =C2=A0&quot;/usr/lib/x86_64-linux-gnu/uhd/=
utils/uhd_images_downloader.py&quot;</font><br></div><div><br></div><div>I =
have tried setting the environment variable UHD_IMAGES_DIR in my .bashrc fi=
le as shown below, but it makes no difference:</div><div><ul><li><span styl=
e=3D"font-family:monospace">export UHD_IMAGES_DIR=3D/usr/local/share/uhd/im=
ages</span></li></ul></div><div>Any suggestions?=C2=A0 Should I try install=
ing GNU Radio from source?=C2=A0 Or should I perhaps direct my questions to=
 the GNU Radio mailing list?</div><div><br></div><div>Thanks,</div><div>Bre=
ndan.</div><div><br></div><div><br></div><div>=C2=A0=C2=A0<br></div><div><b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Apr 20, 2021 at 8:54 AM Marcus D. Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 06:51 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">OK, I didn&#39;t realise that GNU Radio needed the
        Python UHD module to be installed.=C2=A0 I deliberately excluded th=
e
        Python API from my UHD driver build in order to try out
        Christian&#39;s custom Python API.
        <div><br>
        </div>
        <div>I will remove the custom API today, and install a &quot;stock&=
quot;
          UHD driver with the Ettus Python API.=C2=A0 Then I will give the
          GNU Radio installation another try.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Brendan.</div>
      </div>
    </blockquote>
    Gah.=C2=A0 Sorry.=C2=A0 Brain fart.<br>
    <br>
    Carry on.<br>
    <br>
    so you need to replicate what GR does for UHD in 3.8.=C2=A0 In GR3.7:<b=
r>
    <br>
    from gnuradio import uhd<br>
    uhd.__file__<br>
    <br>
    And see where it&#39;s coming from (I don&#39;t off the top of my head =
know
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
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 04/19/2021 06:21 PM, Brendan Horsfield wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Importing uhd in Python 3:=C2=A0
                /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linu=
x-x86_64.egg/<a href=3D"http://uhd.cpython-36m-x86_64-linux-gnu.so" target=
=3D"_blank">uhd.cpython-36m-x86_64-linux-gnu.so</a>
                <div><br>
                </div>
                <div>(Note that this is an alternative Python UHD module
                  written by Christian Hahn, which I have been
                  evaluating for the last few days.)=C2=A0 =C2=A0</div>
                <div><br>
                </div>
                <div>Trying to import uhd in Python 2 (which I never
                  use) returns an error:</div>
                <div><br>
                </div>
                <div>Traceback (most recent call last):<br>
                  =C2=A0 File &quot;&lt;stdin&gt;&quot;, line 1, in &lt;mod=
ule&gt;<br>
                  =C2=A0 File
                  &quot;/usr/local/lib/python2.7/dist-packages/uhd/__init__=
.py&quot;,
                  line 10, in &lt;module&gt;<br>
                  =C2=A0 File
                  &quot;/usr/local/lib/python2.7/dist-packages/uhd/types.py=
&quot;,
                  line 10, in &lt;module&gt;<br>
                  =C2=A0 =C2=A0 # &quot;__iter__&quot; and &quot;next&quot;=
 attributes instead.<br>
                  ImportError: cannot import name libpyuhd<br>
                </div>
                <div><br>
                </div>
                <div>Brendan.</div>
                <br>
              </div>
            </blockquote>
            Given that gr-uhd wants a module called &quot;uhd&quot; to exis=
t, and
            GR uses gr-uhd, i&#39;m not sure what will happen with the<br>
            =C2=A0 name-space pollution that will result.<br>
            <br>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</div></blockquote></div></div></blockquote></div>

--000000000000fbb0dc05c066a2fb--

--===============2225260673388005568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2225260673388005568==--
