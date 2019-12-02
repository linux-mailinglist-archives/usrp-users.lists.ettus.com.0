Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0A010F2F2
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2019 23:50:11 +0100 (CET)
Received: from [::1] (port=36336 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ibuW3-0004dP-Fm; Mon, 02 Dec 2019 17:50:03 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:37267)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ibuW1-0004YP-CO
 for usrp-users@lists.ettus.com; Mon, 02 Dec 2019 17:50:01 -0500
Received: by mail-ot1-f50.google.com with SMTP id k14so1130408otn.4
 for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2019 14:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N+m2sfh2n8uplV2Afs1S1MB+5lVUb+phF2Y5zfPB7bk=;
 b=BfFffQFl5muupDzYIgO7HdcREZ2uN5AU1NemlN4h3V9aT9vbmNdtUbVYiE8E9ihn3E
 mwX0GovHZFFLyGFpryuxI2lHtMXqXNcI1zh44XhTE4Q40Q7NOpUpKu3H4sdaX53lmLm0
 VWwWsIguMxZO2gvAvxIkzqZmz657NtZsnzw3u5P5xSY+bVPFey+CDA4TxrFySIsf2qAC
 NwuSpur7p722ZWRs1EWka/wnx5Lm6asSeu/zXhxEBEpm3+yeqbKX9rwMlOffk5TMqlqW
 E6SqLV5AurJTdHmR487mIqJWu7hOR7aLdyDRDf15m9oD5Atb9b5iZbtjBErZl9TQC9v2
 rnpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N+m2sfh2n8uplV2Afs1S1MB+5lVUb+phF2Y5zfPB7bk=;
 b=uaCMRt5n0IQkhL6FI9/NKtsOqXQWQ16t+zGY2PzZa+DWHgQquW//7XxiBFkhAzymuk
 OOq0NUbKlA8Se9pEt+/G+HqRchmidzSavcNllo3nRxAYKIyOJJ/s4b9NQbj/R6wS6biT
 8l9GMklCIMdsGIS65L8rI1NysgMw39my/kx+HAX378Xxc3/jsy2sFm47I2VdNTU9Svhi
 wtvktnqMxz7AWze06OMy+lcYb/Vzevc7ioEukKbbXbaiu2h1UFjNW65+79JIfByfV6z2
 YihOsByoQ9BfIJo5fJG4T6OVPCbtR7EA6VceEZirw+f2RVzL+8nXmnlq17nODMhfcXhe
 8Jug==
X-Gm-Message-State: APjAAAUF7kyOh78XsqDsQCrXEfqV3buk7lU7nAACG2BTdl/LOaTNF3hu
 4TlTxeJuZpEIL5mK53nOo9/AaTVxhWaII67qX09vEy2rLjDKjA==
X-Google-Smtp-Source: APXvYqwLLNvw1OOQU6TV6q5QJH4bmKakd/T3uDTZqLqZjXwwjixbz+M8EV3Jm6rg7I/4AyBUHP2nLbFuqTrzR1RG1aw=
X-Received: by 2002:a9d:861:: with SMTP id 88mr1154124oty.258.1575326960400;
 Mon, 02 Dec 2019 14:49:20 -0800 (PST)
MIME-Version: 1.0
References: <CAM-VyLj5FE32V_+z=yS5amYfHv8p6azfaSm_mkzJcw3yO-FAsA@mail.gmail.com>
In-Reply-To: <CAM-VyLj5FE32V_+z=yS5amYfHv8p6azfaSm_mkzJcw3yO-FAsA@mail.gmail.com>
Date: Mon, 2 Dec 2019 14:50:22 -0800
Message-ID: <CAL263iyjLXO06h_Vdec8x6jZR=7wjHO9J0-G_N-FYOz7xcKC7A@mail.gmail.com>
To: Bisma Amjad <msee17016@itu.edu.pk>
Subject: Re: [USRP-users] UHD and FPGA Image mismatch error
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3325025563116478595=="
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

--===============3325025563116478595==
Content-Type: multipart/alternative; boundary="000000000000e152680598c06329"

--000000000000e152680598c06329
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bisma,

You should download the FPGA images for your installed version of UHD (with
uhd_images_downloader) and then write a new FPGA image to the E320 using
the uhd_image_loader utility.

UHD will work on Ubuntu 19.x.

Regards,
Nate Temple

On Wed, Nov 6, 2019 at 2:38 AM Bisma Amjad via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi there,
>
>
> =C2=B7         I have installed GNU Radio using PyBombs from
> http://ecee.colorado.edu/~mathys/ecen4652/SDRsoftware/GNURadioInstall.htm=
l
>
>
>
> =C2=B7         UHD was installed from
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux
>
>
>
> =C2=B7         GNU Radio works fine. I=E2=80=99ve created an FM Radio app=
lication on
> it.  USRP E320 is also detected on the system. However, when the flowgrap=
h
> is executed on GNU Radio, following error shows up:
>
>
>
> *RuntimeError: FPGA component =E2=80=98noc_shell=E2=80=99 is revision 2 a=
nd UHD supports
> revision 3. Please either upgrade the FPGA image (Recommended) or downgra=
de
> UHD.*
>
> *Troubleshooting:*
>
> =C2=B7As indicated by few web sources, Pybombs could=E2=80=99ve created i=
ssues during
> GNU Radio installation. So, I re-installed GNU radio and UHD without usin=
g
> pybombs (from
> https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolcha=
in_(UHD_and_GNU_Radio)_on_Linux)
> .
>
>  But the error still persists.
>
>
>
> *RuntimeError: FPGA component =E2=80=98noc_shell=E2=80=99 is revision 2 a=
nd UHD supports
> revision 6. Please either upgrade the FPGA image (Recommended) or downgra=
de
> UHD.*
>
>
>
>
>
> =C2=B7Moreover, the required installation libraries for UHD are supported=
 for
> Ubuntu version 18.10 or less. Whereas, our system has Ubuntu version 19.0=
.
> Could this be the possible reason for this issue? Should I downgrade Ubun=
tu
> to 18.10?
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e152680598c06329
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Bisma,<br><br>You should download the FPGA images fo=
r your installed version of UHD (with uhd_images_downloader) and then write=
 a new FPGA image to the E320 using the uhd_image_loader utility.<br></div>=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helvet=
ica,sans-serif">UHD will work on Ubuntu 19.x. <br></div><div class=3D"gmail=
_default" style=3D"font-family:arial,helvetica,sans-serif"><br>Regards,<br>=
Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Nov 6, 2019 at 2:38 AM Bisma Amjad via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hi there,<div><p class=3D"MsoNormal" style=3D"text-align:=
center;margin:0in 0in 8pt;line-height:107%;font-size:11pt;font-family:Calib=
ri,sans-serif" align=3D"center"><br></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%;font-family:Symbol">=C2=B7<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">I
have installed GNU Radio using PyBombs from </span><a href=3D"http://ecee.c=
olorado.edu/~mathys/ecen4652/SDRsoftware/GNURadioInstall.html" style=3D"col=
or:blue" target=3D"_blank"><span style=3D"font-size:12pt;line-height:107%">=
http://ecee.colorado.edu/~mathys/ecen4652/SDRsoftware/GNURadioInstall.html<=
/span></a><span style=3D"font-size:12pt;line-height:107%"></span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%">=C2=A0</span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%;font-family:Symbol">=C2=B7<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">UHD
was installed from </span><a href=3D"https://kb.ettus.com/Building_and_Inst=
alling_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" style=
=3D"color:blue" target=3D"_blank"><span style=3D"font-size:12pt;line-height=
:107%">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_To=
olchain_(UHD_and_GNU_Radio)_on_Linux</span></a><span style=3D"font-size:12p=
t;line-height:107%"></span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%">=C2=A0</span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%;font-family:Symbol">=C2=B7<span style=3D"font-variant-numeric:normal;fon=
t-variant-east-asian:normal;font-stretch:normal;font-size:7pt;line-height:n=
ormal;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
</span></span><span style=3D"font-size:12pt;line-height:107%">GNU
Radio works fine. I=E2=80=99ve created an FM Radio application on it.=C2=A0=
 USRP E320 is also detected on the system.
However, when the flowgraph is executed on GNU Radio, following error shows=
 up:</span></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-height:10=
7%">=C2=A0</span></p>

<p style=3D"margin:0in 0in 8pt 0.5in;line-height:107%;font-size:11pt;font-f=
amily:Calibri,sans-serif"><i><span style=3D"font-size:12pt;line-height:107%=
;color:red">RuntimeError: FPGA
component =E2=80=98noc_shell=E2=80=99 is revision 2 and UHD supports revisi=
on 3. Please either
upgrade the FPGA image (Recommended) or downgrade UHD.</span></i></p>

<p class=3D"MsoNormal" style=3D"text-align:justify;margin:0in 0in 8pt;line-=
height:107%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=
=3D"font-size:12pt;line-height:107%">Troubleshooting:</span></b></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:=
12pt;line-height:107%;font-family:Symbol">=C2=B7</span><span style=3D"font-=
size:12pt;line-height:107%">As
indicated by few web sources, Pybombs could=E2=80=99ve created issues durin=
g GNU Radio
installation. So, I re-installed GNU radio and UHD without using pybombs (f=
rom </span><a href=3D"https://kb.ettus.com/Building_and_Installing_the_USRP=
_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux)" style=3D"color:blue" =
target=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Ope=
n-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux)</a><span style=3D"font-siz=
e:12pt;line-height:107%">.<b></b></span></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:=
12pt;line-height:107%">=C2=A0But the error still persists.<b></b></span></p=
>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-si=
ze:12pt;line-height:107%">=C2=A0</span></b></p>

<p style=3D"margin:0in 0in 0.0001pt 0.5in;line-height:107%;font-size:11pt;f=
ont-family:Calibri,sans-serif"><i><span style=3D"font-size:12pt;line-height=
:107%;color:red">RuntimeError: FPGA
component =E2=80=98noc_shell=E2=80=99 is revision 2 and UHD supports revisi=
on 6. Please either
upgrade the FPGA image (Recommended) or downgrade UHD.</span></i></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-si=
ze:12pt;line-height:107%">=C2=A0</span></b></p>

<p style=3D"text-align:justify;margin:0in 0in 0.0001pt 0.5in;line-height:10=
7%;font-size:11pt;font-family:Calibri,sans-serif"><b><span style=3D"font-si=
ze:12pt;line-height:107%">=C2=A0</span></b></p>

<p style=3D"text-align:justify;margin:0in 0in 8pt 0.5in;line-height:107%;fo=
nt-size:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12pt;=
line-height:107%;font-family:Symbol">=C2=B7</span><span style=3D"font-size:=
12pt;line-height:107%">Moreover,
the required installation libraries for UHD are supported for Ubuntu versio=
n
18.10 or less. Whereas, our system has Ubuntu version 19.0. Could this be t=
he
possible reason for this issue? Should I downgrade Ubuntu to 18.10?<b></b><=
/span></p></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e152680598c06329--


--===============3325025563116478595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3325025563116478595==--

