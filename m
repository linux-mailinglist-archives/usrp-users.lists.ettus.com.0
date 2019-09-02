Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DCCA4CF9
	for <lists+usrp-users@lfdr.de>; Mon,  2 Sep 2019 03:00:27 +0200 (CEST)
Received: from [::1] (port=47912 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i4ahk-0002gW-SS; Sun, 01 Sep 2019 21:00:24 -0400
Received: from mail-ot1-f70.google.com ([209.85.210.70]:37275)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikio@dolphinsystem.jp>)
 id 1i4ahg-0002ad-RI
 for usrp-users@lists.ettus.com; Sun, 01 Sep 2019 21:00:20 -0400
Received: by mail-ot1-f70.google.com with SMTP id x31so8009692ota.4
 for <usrp-users@lists.ettus.com>; Sun, 01 Sep 2019 18:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QzUKsb+swEuq6un+hJ5FXg9NvPYoAwP8r3rqw/S1RvA=;
 b=Ydd2sV0O6OST9o3WpacWMlv3VayQAnHEldtfUQNxchF2jJ6zOD9/ibUF0do4dg4xXz
 Mvz44kpZo3Ph6qAYerBMcW6baup7QUlqVRmIzKehObdUz7OOyl97pJj2mhaBvZoon6hu
 GniFZ6AmUUnTGJg4PkZIgyjfFVm/IM0NAKZnuV8t1g+p/BOugsmPVd/mMozkTVIVws1J
 +HwGLWF7xkuzsFOKT4xpWUqNBliXqTVXPcN7BQ5kbsr7Q8JZhiQobrU5Z1oXrUvbCOo7
 rXuhyqDURR4tkGCm01p7Jq141q0hGPK42bdkWDzzDtXCKavj/OQsU1xehGudKc7lGHOG
 hI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QzUKsb+swEuq6un+hJ5FXg9NvPYoAwP8r3rqw/S1RvA=;
 b=pP1xrG8E8TtOeayyTGNycJNury3KIjgxFZGjWMlJ6jFArEP4Mp7i3sHfVBO6/wi6tN
 mVFKF1kKMiKYipq0EX/B9Q6xwwj6vLNVHO/T/8Rao+v8ue/onCBy5tbhZ7AMuaz1ozCL
 cvuXm+BpIuSj++XcfrtPvp/J4u8aACSr9zeiAFnFwr/+c2xiBOYQiEsgLTRW5eyEOBiy
 klWtaQbHzdgI/3uQv4V8Dp6tYxl3qyAf2mG9oT3vTOMqHY0CEidVWuGORgnwarXNAo+b
 ChhVkZd4ZNZt7tRbUBEUIU8ZVecdlxjS8lbmGpcvrzA+QmDesvPhYuQsNqFv1bIOQw0Y
 FyqA==
X-Gm-Message-State: APjAAAVd+Ah7jW6i+LMk1fRmd1szSfQNs65F4BEH7JoAgL+iHbJnV07g
 Hcvz14Mvek81tuUH5b9WMsYryDHSY8sPLoeH8mKaUg==
X-Google-Smtp-Source: APXvYqzm7sziqdOBdaFuuewz8NEvsr865/4JnEnQhZj/bOF9MbhIciovVvXP+duszj+/i7C7FaUABuQ11aU2prbNstw=
X-Received: by 2002:a9d:4d14:: with SMTP id n20mr4267097otf.48.1567385979854; 
 Sun, 01 Sep 2019 17:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <CY4PR19MB0984A7F994845D4D0CE3B042A4BF0@CY4PR19MB0984.namprd19.prod.outlook.com>
In-Reply-To: <CY4PR19MB0984A7F994845D4D0CE3B042A4BF0@CY4PR19MB0984.namprd19.prod.outlook.com>
Date: Mon, 2 Sep 2019 09:59:06 +0900
Message-ID: <CABfZwccOcTJSnwDMygsyaz49F5d6wiJae33qXrGaAd750L=rBA@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] Starting from Scratch with a E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5378255282965025435=="
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

--===============5378255282965025435==
Content-Type: multipart/alternative; boundary="0000000000008e35dc0591877cdf"

--0000000000008e35dc0591877cdf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff
AN-311 is now expired.

New documentation is this.
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC=
_UHD_/_GNU_Radio_/_gr-ettus_from_Source

Regards,
Mikio


2019=E5=B9=B49=E6=9C=881=E6=97=A5(=E6=97=A5) 23:22 Jeff S via USRP-users <u=
srp-users@lists.ettus.com>:

> Has anyone recently started from scratch trying to install the E310 SDK o=
n
> a new install of Ubuntu 16.04 LTS and 18.04 LTS?  I started with 18.04 an=
d
> had some issues so I made a clean install of 16.04 and then followed the
> directions based on Application Number *AN-311*, located at:
>
>
>
> https://kb.ettus.com/Software_Development_on_the_E310_and_E312#Compiling_=
and_installing_UHD
>
> I had to add an install of python-pip and git-core before going through
> the pybombs commands, but when I get to the cmake command, I get the
> following:
>
> cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cmak=
e
> -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..
>
> CMake Error at CMakeLists.txt:13 (cmake_minimum_required):
>
> CMake 3.5.1 or higher is required.  You are running version 2.8.12.2
>
> That was the same error when I started with Ubuntu 18.04, so it seems lik=
e
> it has something to do when it installs cmake as part of the E310 SDK and
> sets a path to use the cmake installed with that.  Unfortunately, the
> CMakeLists.txt file seem to want a newer version.  The person who
> originally did some of the development for the E310 is no longer availabl=
e,
> and I'd like to document a repeatable process for getting our development
> back up and running so we can use the E310s we have.  Any suggestions for=
 a
> novice, or is there other information I can provide to make it more clear
> of what I'm doing?  The only thing I changed going through AN-311 was to
> have "prefix" named "e310" (maybe that's the problem?), although I called
> it "prefix" when using 18.04.
>
> The E310 seems to work as I can use the serial port and ssh to it and run
> a sample program.  I'm really just trying to get a development environmen=
t
> working with it.
>
> Regards,
> Jeff
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
 =E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)
 =E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)

=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=
=B1=A0=E8=A2=8B=EF=BC=92=EF=BC=8D=EF=BC=94=EF=BC=95=EF=BC=8D=EF=BC=91
=E3=82=A2=E3=83=BC=E3=82=AF=E3=82=B7=E3=83=86=E3=82=A3=E6=B1=A0=E8=A2=8B =
=EF=BC=96=EF=BC=90=EF=BC=91

Mail: mikio@dolphinsystem.jp
URL : http://www.dolphinsystem.jp/
TEL/FAX : 03-6658-4949
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

--0000000000008e35dc0591877cdf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff<div>AN-311 is now expired.</div><div><br></div><di=
v>New documentation is this.</div><div><a href=3D"https://kb.ettus.com/Soft=
ware_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ett=
us_from_Source">https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_=
-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a><br></div><div><=
br></div><div>Regards,</div><div>Mikio</div><div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">2019=E5=B9=B49=
=E6=9C=881=E6=97=A5(=E6=97=A5) 23:22 Jeff S via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Has anyone recently started from scratch trying to install the E310 SDK on =
a new install of Ubuntu 16.04 LTS and 18.04 LTS?=C2=A0 I started with 18.04=
 and had some issues so I made a clean install of 16.04 and then followed t=
he directions based on Application Number
<b>AN-311</b>, located at:
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<div style=3D"margin-top:0px;margin-bottom:0px"><a href=3D"https://kb.ettus=
.com/Software_Development_on_the_E310_and_E312#Compiling_and_installing_UHD=
" id=3D"gmail-m_-806703171907369402LPlnk156374" target=3D"_blank">https://k=
b.ettus.com/Software_Development_on_the_E310_and_E312#Compiling_and_install=
ing_UHD</a><br>
</div>
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I had to add an install of python-pip and git-core before going through the=
 pybombs commands, but when I get to the cmake command, I get the following=
:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<div>
<blockquote>cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_=
cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..<br>
</blockquote>
<blockquote>CMake Error at CMakeLists.txt:13 (cmake_minimum_required):<br>
</blockquote>
<blockquote>CMake 3.5.1 or higher is required.=C2=A0 You are running versio=
n 2.8.12.2</blockquote>
</div>
That was the same error when I started with Ubuntu 18.04, so it seems like =
it has something to do when it installs cmake as part of the E310 SDK and s=
ets a path to use the cmake installed with that.=C2=A0 Unfortunately, the C=
MakeLists.txt file seem to want a newer
 version.=C2=A0 The person who originally did some of the development for t=
he E310 is no longer available, and I&#39;d like to document a repeatable p=
rocess for getting our development back up and running so we can use the E3=
10s we have.=C2=A0 Any suggestions for a novice,
 or is there other information I can provide to make it more clear of what =
I&#39;m doing?=C2=A0 The only thing I changed going through AN-311 was to h=
ave &quot;prefix&quot; named &quot;e310&quot; (maybe that&#39;s the problem=
?), although I called it &quot;prefix&quot; when using 18.04.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
The E310 seems to work as I can use the serial port and ssh to it and run a=
 sample program.=C2=A0 I&#39;m really just trying to get a development envi=
ronment working with it.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards,<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div>=C2=A0<br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>=
=C2=A0=E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=
=A0=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)</div=
><div><br></div><div>=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=
=E5=B3=B6=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=92=EF=BC=8D=EF=BC=94=EF=BC=95=EF=
=BC=8D=EF=BC=91</div><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=
=80=80=E3=82=A2=E3=83=BC=E3=82=AF=E3=82=B7=E3=83=86=E3=82=A3=E6=B1=A0=E8=A2=
=8B =EF=BC=96=EF=BC=90=EF=BC=91</div><div><br></div><div>Mail: <a href=3D"m=
ailto:mikio@dolphinsystem.jp" target=3D"_blank">mikio@dolphinsystem.jp</a><=
/div><div>URL : <a href=3D"http://www.dolphinsystem.jp/" target=3D"_blank">=
http://www.dolphinsystem.jp/</a></div><div>TEL/FAX : 03-6658-4949</div><div=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></div></div></div></div></div>

--0000000000008e35dc0591877cdf--


--===============5378255282965025435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5378255282965025435==--

