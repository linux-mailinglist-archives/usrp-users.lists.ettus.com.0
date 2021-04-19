Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B62364D67
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 23:59:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 85908384BC6
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 17:59:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=vectalabs-com.20150623.gappssmtp.com header.i=@vectalabs-com.20150623.gappssmtp.com header.b="bkeYmnYT";
	dkim-atps=neutral
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
	by mm2.emwd.com (Postfix) with ESMTPS id CE81038472A
	for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 17:58:49 -0400 (EDT)
Received: by mail-vs1-f42.google.com with SMTP id k124so18417579vsk.3
        for <usrp-users@lists.ettus.com>; Mon, 19 Apr 2021 14:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sGWuPwqcVBeP6of2/nmEtO8QsHxj5xbn6Pl/EEB3GVo=;
        b=bkeYmnYTJemv7lwyXqfG5kP3RhE7TFWzhsQwmmQ03cCKcVlAr8CkR+UfxvPBcc9/sm
         cLx/mEQauv6mNkfUPUgr6/BaDBp6upiAJDqsz2gNknHMY0HfYwOzu6svqfzpbFSuq069
         eq7D60x6m0SbauQRP17WoHXvxpNyB7vRe8mfF2H2OaCeysNfCkcWkGnuIV/yKzp4hoHI
         Y3WqPtJ+zEixGNpDR6dk2SuNr+XRYpIcCDSBk+t8UjhBgfsA7P5RoPyh6eH8ESZ1snAv
         SDCvrsXEqsgpKU6bk6qY63OglcvPeX+WRMqiGxo+39sGETJiHZ5eAFQE2njtGlOTcB9w
         FHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sGWuPwqcVBeP6of2/nmEtO8QsHxj5xbn6Pl/EEB3GVo=;
        b=keBpMcB7SAfxt6Fdp4uLM2R6dsdGlysmNzYLg+j6U1RsPBAvIJdGrulctVBTQy8ZOu
         RLBAjPSQSnPY7L2dUwJDb3zZ7IlH+wGpXVkG54/PW4ErwMIPKGD0CpQ8CRUAYnf9pt18
         xZRVKxW/1dGH1g9Wjj/qyxL1+8QFamOVYFZfO99/2V9HV0MWBdMLj9GNKbJCcXkBNU+j
         bdYu6ofTTiUz9L5Rsa6uhoZwrEbpdzj1JhiH8T+Hs1apSxnS7hLYRaTYoJrNI+00RwwP
         k2cHvNM/FRtpjSwqcpWbU42ekc+vfqYOmXuSSaRHtpF6mhPPCBU/YJpaI5Q14yB9vrH6
         yWIQ==
X-Gm-Message-State: AOAM5321xd5Nv9QZTgl/BxS0qPwPZCm1lFTZoI81rwEQrZaBWvwDnXPy
	IeFFXoFdrJBIf4pEuT7IJAML0tb1eEwMK2/Zgw6qQQ==
X-Google-Smtp-Source: ABdhPJxjUgWx754naCjKX+DAxPypQ1rjWUd/yE4xJrOk2f+hYxlATzjBeG8E/pNjxY6cXesXUFPMKERK/9tN8rYWM/8=
X-Received: by 2002:a67:b447:: with SMTP id c7mr16984791vsm.30.1618869529283;
 Mon, 19 Apr 2021 14:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <quS4PFqCPNngCU28vqPL5sYNFbCdiqHiwVvmF3442s@lists.ettus.com> <607D8C43.8040206@gmail.com>
In-Reply-To: <607D8C43.8040206@gmail.com>
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 20 Apr 2021 07:58:38 +1000
Message-ID: <CALNMZ8X-Gd8--wvtxt+j+6uFbiG=BPXUC5OPuD-N22HbRMh1fQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6KQVFB7RUH6ZGA47H2E3ELEMDDTPZ7FA
X-Message-ID-Hash: 6KQVFB7RUH6ZGA47H2E3ELEMDDTPZ7FA
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6KQVFB7RUH6ZGA47H2E3ELEMDDTPZ7FA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1393587229229486191=="

--===============1393587229229486191==
Content-Type: multipart/alternative; boundary="0000000000003b250705c05a6fd8"

--0000000000003b250705c05a6fd8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Running gnuradio-config-info -v returns the following:
*v3.8.2.0-112-ge20ffa3c*

My PYTHONPATH is as follows:

/usr/local/lib/python3.6/dist-packages
/usr/lib/python2.7
/usr/lib/python2.7/plat-x86_64-linux-gnu
/usr/lib/python2.7/lib-tk
/usr/lib/python2.7/lib-old
/usr/lib/python2.7/lib-dynload
/usr/local/lib/python2.7/dist-packages
/usr/lib/python2.7/dist-packages
/usr/lib/python2.7/dist-packages/gtk-2.0
/usr/lib/python2.7/dist-packages/wx-3.0-gtk3

I should also mention that my approach to date has been to use PyBOMBS to
install GNU Radio, after installing UHD driver v3.15.0.0 from source.
However, both times I have attempted this, the PyBOMBS installer has asked
me whether I want to rebuild UHD from source or keep the existing binary.
When I choose "keep existing", the installer crashes out with an error
message (both times).

Brendan.



On Mon, Apr 19, 2021 at 11:58 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/19/2021 03:15 AM, brendan.horsfield@vectalabs.com wrote:
>
> Hi All,
>
> I have just upgraded my laptop to the latest version of GNU Radio
> Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying to use it to
> monitor a block of spectrum with my USRP B210. Unfortunately the flowgrap=
h
> won=E2=80=99t run (even though it ran in my old GNU Radio setup), and ins=
tead
> prints the following message to the console:
>
> linux; GNU C++ version 7.3.0; Boost_106501; UHD_003.010.003.000-0-unknown
>
> UHD Warning:
>
> EnvironmentError: IOError: Could not find path for image: usrp_b200_fw.he=
x
>
> Using images directory: <no images directory located>
>
> Set the environment variable 'UHD_IMAGES_DIR' appropriately or follow the
> below instructions to download the images package.
>
> Please run:
>
> "/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>
> Traceback (most recent call last):
>
> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 244, i=
n
> <module>
>
> main()
>
> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 220, i=
n
> main
>
> tb =3D top_block_cls()
>
> File "/home/anyone/Documents/Brendan/GNU-Radio/top_block.py", line 87, in
> __init__
>
> channels=3Dlist(range(0,1)),
>
> File "/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py", line 125,
> in constructor_interceptor
>
> return old_constructor(*args)
>
> File "/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py", line 3259=
,
> in make
>
> return _uhd_swig.usrp_source_make(device_addr, stream_args,
> issue_stream_cmd_on_start)
>
> RuntimeError: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> serial: 318425D
>
> The above message suggests GRC is calling version *003.010.003.000-0* of
> the UHD driver. This is weird, as last week I installed version *3.15.0.0=
*
> of the UHD driver on my laptop, after first uninstalling the old driver (=
or
> so I thought=E2=80=A6).
>
> However, if I run uhd_usrp_probe or uhd_find_devices, I get a message
> confirming that I am indeed running v3.15.0.0 of the UHD driver:
>
>    -
>
>    linux; GNU C++ version 7.5.0; Boost_106501;
>    *UHD_3.15.0.HEAD-0-gaea0e2de*
>
> If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=9D, I f=
ind the files
> *libuhd.so.003.010.003* and *libuhd.so.3.15.0* are both present =E2=80=94=
 but I
> am pretty sure there should only be one of them present!
>
> This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly common amo=
ng USRP/GNU Radio
> users, but so far I haven=E2=80=99t found any actual solutions.
>
> There is also a second error message in the above console output: *=E2=80=
=9CEnvironmentError:
> IOError: Could not find path for image: usrp_b200_fw.hex=E2=80=9D*. This =
is
> baffling, as I have run the script
> =E2=80=9C/usr/local/lib/uhd/utils/uhd_images_downloader.py=E2=80=9C three=
 times, and am
> confident that the FPGA images have downloaded successfully (for the
> record, they are in /usr/local/share/uhd/images).
>
> If anyone can tell me how to resolve these problems, I would be very
> grateful!
>
> Regards,
>
> Brendan.
>
> That means that the version of Gnu Radio you used to produce whatever app
> you have is linked against UHD 3.10.3, whereas all
>   your UHD *utilities* are linked against the newer version.
>
> What happens when you run:
>
> gnuradio-config-info -v
>
> What is in your PYTHONPATH?  Is it perhaps pointing to older python code,
> and you're picking up older (very older) python modules that
>   are themselves linked against both an older GR and older UHD?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003b250705c05a6fd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Marcus,<div><br></div><div>Running gnuradio-config=
-info -v returns the following:=C2=A0=C2=A0<b>v3.8.2.0-112-ge20ffa3c</b><br=
></div><div><br></div><div>My PYTHONPATH is as follows:</div><div><br></div=
><div>/usr/local/lib/python3.6/dist-packages<br>/usr/lib/python2.7<br>/usr/=
lib/python2.7/plat-x86_64-linux-gnu<br>/usr/lib/python2.7/lib-tk<br>/usr/li=
b/python2.7/lib-old<br>/usr/lib/python2.7/lib-dynload<br>/usr/local/lib/pyt=
hon2.7/dist-packages<br>/usr/lib/python2.7/dist-packages<br>/usr/lib/python=
2.7/dist-packages/gtk-2.0<br>/usr/lib/python2.7/dist-packages/wx-3.0-gtk3<b=
r></div><div><br></div><div>I should also mention that my approach to date =
has been to use=C2=A0PyBOMBS to install GNU Radio, after installing UHD dri=
ver v3.15.0.0 from source.=C2=A0 However, both times I have attempted this,=
 the PyBOMBS installer has asked me whether I want to rebuild UHD from sour=
ce or keep the existing binary.=C2=A0 When I choose &quot;keep existing&quo=
t;, the installer crashes out with an error message (both times).</div><div=
><br></div><div>Brendan.</div><div>=C2=A0 =C2=A0</div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Apr 19, 2021 at 11:58 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/19/2021 03:15 AM,
      <a href=3D"mailto:brendan.horsfield@vectalabs.com" target=3D"_blank">=
brendan.horsfield@vectalabs.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <p>Hi All,</p>
      <p>I have just upgraded my laptop to the latest version of GNU
        Radio Companion (ver 3.8.2.0 (Python 3.6.9)), and am now trying
        to use it to monitor a block of spectrum with my USRP B210.
        Unfortunately the flowgraph won=E2=80=99t run (even though it ran i=
n my
        old GNU Radio setup), and instead prints the following message
        to the console:</p>
      <p>linux; GNU C++ version 7.3.0; Boost_106501;
        UHD_003.010.003.000-0-unknown</p>
      <p>UHD Warning:</p>
      <p> EnvironmentError: IOError: Could not find path for image:
        usrp_b200_fw.hex</p>
      <p> Using images directory: &lt;no images directory located&gt;</p>
      <p> Set the environment variable &#39;UHD_IMAGES_DIR&#39; appropriate=
ly or
        follow the below instructions to download the images package.</p>
      <p> Please run:</p>
      <p> &quot;/usr/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.p=
y&quot;</p>
      <p>Traceback (most recent call last):</p>
      <p> File &quot;/home/anyone/Documents/Brendan/GNU-Radio/top_block.py&=
quot;,
        line 244, in &lt;module&gt;</p>
      <p> main()</p>
      <p> File &quot;/home/anyone/Documents/Brendan/GNU-Radio/top_block.py&=
quot;,
        line 220, in main</p>
      <p> tb =3D top_block_cls()</p>
      <p> File &quot;/home/anyone/Documents/Brendan/GNU-Radio/top_block.py&=
quot;,
        line 87, in __init__</p>
      <p> channels=3Dlist(range(0,1)),</p>
      <p> File
        &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/__init__.py&quot;=
, line
        125, in constructor_interceptor</p>
      <p> return old_constructor(*args)</p>
      <p> File
        &quot;/usr/lib/python3/dist-packages/gnuradio/uhd/uhd_swig.py&quot;=
, line
        3259, in make</p>
      <p> return _uhd_swig.usrp_source_make(device_addr, stream_args,
        issue_stream_cmd_on_start)</p>
      <p>RuntimeError: LookupError: KeyError: No devices found for
        -----&gt;</p>
      <p>Device Address:</p>
      <p> serial: 318425D</p>
      <p>The above message suggests GRC is calling version <strong>003.010.=
003.000-0</strong>
        of the UHD driver. This is weird, as last week I installed
        version <strong>3.15.0.0</strong> of the UHD driver on my
        laptop, after first uninstalling the old driver (or so I
        thought=E2=80=A6). </p>
      <p>However, if I run uhd_usrp_probe or uhd_find_devices, I get a
        message confirming that I am indeed running v3.15.0.0 of the UHD
        driver:</p>
      <ul>
        <li>
          <p>linux; GNU C++ version 7.5.0; Boost_106501; <strong>UHD_3.15.0=
.HEAD-0-gaea0e2de</strong></p>
        </li>
      </ul>
      <p>If I look in the folder =E2=80=9C/usr/lib/x86_64-linux-gnu/=E2=80=
=9D, I find
        the files <strong>libuhd.so.003.010.003</strong> and <strong>libuhd=
.so.3.15.0</strong>
        are both present =E2=80=94 but I am pretty sure there should only b=
e one
        of them present!</p>
      <p>This =E2=80=9Cdual-install=E2=80=9D problem seems to be fairly com=
mon among
        USRP/GNU Radio users, but so far I haven=E2=80=99t found any actual
        solutions. </p>
      <p>There is also a second error message in the above console
        output: <strong>=E2=80=9CEnvironmentError: IOError: Could not find =
path
          for image: usrp_b200_fw.hex=E2=80=9D</strong>. This is baffling, =
as I
        have run the script
        =E2=80=9C/usr/local/lib/uhd/utils/uhd_images_downloader.py=E2=80=9C=
 three times,
        and am confident that the FPGA images have downloaded
        successfully (for the record, they are in
        /usr/local/share/uhd/images).</p>
      <p>If anyone can tell me how to resolve these problems, I would be
        very grateful!</p>
      <p>Regards,</p>
      <p>Brendan. </p>
      <br>
    </blockquote>
    That means that the version of Gnu Radio you used to produce
    whatever app you have is linked against UHD 3.10.3, whereas all<br>
    =C2=A0 your UHD *utilities* are linked against the newer version.<br>
    <br>
    What happens when you run:<br>
    <br>
    gnuradio-config-info -v<br>
    <br>
    What is in your PYTHONPATH?=C2=A0 Is it perhaps pointing to older pytho=
n
    code, and you&#39;re picking up older (very older) python modules that<=
br>
    =C2=A0 are themselves linked against both an older GR and older UHD?<br=
>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003b250705c05a6fd8--

--===============1393587229229486191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1393587229229486191==--
