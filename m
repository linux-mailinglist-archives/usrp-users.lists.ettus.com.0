Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7CC16EE60
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 19:51:24 +0100 (CET)
Received: from [::1] (port=51452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6fIg-0002Xa-6U; Tue, 25 Feb 2020 13:51:22 -0500
Received: from mail-lf1-f51.google.com ([209.85.167.51]:37693)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1j6fIb-0002Qd-U9
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 13:51:18 -0500
Received: by mail-lf1-f51.google.com with SMTP id b15so10547005lfc.4
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 10:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nfBCPbtsA2eMnwcOy3E5LZGnaW/tARMFh5off2u2ejo=;
 b=MsUnR8D5UWSg4Hqs2Ev7qgeHPHpGyJiWF4cryVxzG1JZWmTKryamXDlyaGw0O0SykV
 MMcgNX5N+dvt9hI2TJnw/CrbvRXBUvGLgkHvUwAAplDSsrVvdGmUg1byrcUkPpo2WEMS
 TOreGQ88WlugftR1QiLxKNSnPlFpg+Cmy+i+j7UWW00iia2zFUvAwA7PT78EGVRxrpby
 Di7riaca24nwCOEgNuSDwhQMQ8BDLjGsnvcZFhCSlIkLpmPSx62ylExptXZKt/t+vE4W
 gZvIzOM5AvMiIPU3g4crA4yBkpBoLhTHXSJidOqJiGt9saWoBLGj870TuVCN4XbXOHXu
 S+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nfBCPbtsA2eMnwcOy3E5LZGnaW/tARMFh5off2u2ejo=;
 b=OL3yw4MFAsP49v2Sl5o8QWiaV/5Tnjugd75HhTi6dGiR2QB2OpWHLdzNb2/F9BkvP3
 cFx+WgnPh6mkd8F1pq60uX/i9aWBcItIUmeGpcVA2JDiVLw1BJga9CxGU8/gVRkdxeNB
 kzjypBS9vaIHFhnLgVUIRdfAI6hiAomNj7Px109kfKcfbVIENK1nse7Yb/Dy9RVeuKbf
 w4A7kjYKOhk0MlUuGyOKNlrn83/ohn81L1K0x1PVrQ9h/2tr7UKkCh3nvoxiPwSoCGS0
 tJ41Vx3SFpNW2Nkt5gi0S2GTyZbyadTdPRsYYYessDMSeqwLpe3HRPdaOKSQ3GUFac0n
 cl1A==
X-Gm-Message-State: APjAAAXH/QG1WV3xy88n7FTqq6Qs2of573GjgE1mdkMCuZ5HiI2lMKlw
 D/d4zp0Iw086u+glvKNWBbQqhPOzxrISjcfRBs5Dl6JT
X-Google-Smtp-Source: APXvYqwYgciTMs1oYq2CSl3vbODkhLKi0z3lwuSTHURNaodCX7HvcFqD3k2cx/WAh7nqJxCuio43V3f6nMn42gVJz5w=
X-Received: by 2002:a19:4344:: with SMTP id m4mr131041lfj.140.1582656636693;
 Tue, 25 Feb 2020 10:50:36 -0800 (PST)
MIME-Version: 1.0
References: <CAKA0MUgBBu3m5cbL4J_Amy-97TNE=GBGThLPK35OARkV5mZxEg@mail.gmail.com>
In-Reply-To: <CAKA0MUgBBu3m5cbL4J_Amy-97TNE=GBGThLPK35OARkV5mZxEg@mail.gmail.com>
Date: Tue, 25 Feb 2020 13:50:00 -0500
Message-ID: <CAL7q81s_PahAkzJo9hMSseQQWymB1d3Cu3Gk3ZhSsKw_q2jAiw@mail.gmail.com>
To: Varban Metodiev <varban.metodiev@gmail.com>
Subject: Re: [USRP-users] Polling the "sample_rx" via a user defined
 register (B205mini)
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5173807840454253673=="
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

--===============5173807840454253673==
Content-Type: multipart/alternative; boundary="000000000000a1c75f059f6af633"

--000000000000a1c75f059f6af633
Content-Type: text/plain; charset="UTF-8"

Hi Varban,

I am now getting random 32-bit values when polling it from the UHD (instead
> of a constant that indicates a "zero" reception)


Even with the antenna disconnected you can expect some LSBs to toggle due
to inherent receiver noise.

1) How should I interpret the 32-variable?
>

It is a short complex int where the upper 16-bits are I and the lower
16-bits are Q.


> 2) Is the strobe_rx the correct signal that indicates new sample arrival?
>

Yes


> 2) Do I need new_rx_control?


No

Have I done this correctly in general, or there is something completely
> wrong in my approach?


What do you want to accomplish?

Jonathon

On Mon, Feb 17, 2020 at 5:03 AM Varban Metodiev via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> After exposing the *sample_rx* from radio_legacy.v
> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/radio_200/radio_legacy.v> to
> a user defined register and sampling it at rising edge of the *strobe_rx*,
> I am now getting random 32-bit values when polling it from the UHD (instead
> of a constant that indicates a "zero" reception). I am doing this with
> disconnected antenna using a modified rx_samples C++ example application.
>
> I have the following questions:
> 1) How should I interpret the 32-variable?
> 2) Is the strobe_rx the correct signal that indicates new sample arrival?
> 2) Do I need new_rx_control?
>
> Have I done this correctly in general, or there is something completely
> wrong in my approach?
>
> Thanks,
> Varban
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a1c75f059f6af633
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Varban,<div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">I am now getting random 32-bit values when polling it from=
 the UHD (instead of a constant that indicates a &quot;zero&quot; reception=
)</blockquote><div><br></div><div>Even with the antenna disconnected you ca=
n expect some LSBs to toggle due to inherent receiver noise.=C2=A0</div><di=
v><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">1) How should=
 I interpret the 32-variable?<br></blockquote><div><br></div><div>It is a s=
hort complex int where the upper 16-bits are I and the lower 16-bits are Q.=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">2)=
 Is the strobe_rx the correct signal that indicates new sample arrival?<br>=
</blockquote><div><br></div><div>Yes</div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">2) Do I need new_rx_control?</blockquote>=
<div><br></div><div>No</div><div><br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Have I done this correctly in general, or there is someth=
ing completely wrong in my approach?=C2=A0</blockquote><div><br></div><div>=
What do you want to accomplish?=C2=A0</div><div><br></div><div>Jonathon</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Feb 17, 2020 at 5:03 AM Varban Metodiev via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Dear all,<div><br></div><div>After exposing the <b><i>sample_rx</i=
></b> from=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/blob/master=
/fpga/usrp3/lib/radio_200/radio_legacy.v" target=3D"_blank">radio_legacy.v<=
/a>=C2=A0to a user defined register and sampling it at rising edge of the <=
span style=3D"color:rgb(36,41,46);font-family:SFMono-Regular,Consolas,&quot=
;Liberation Mono&quot;,Menlo,monospace;font-size:12px;white-space:pre-wrap"=
><i style=3D"font-weight:bold">strobe_rx</i>, I am now getting random 32-bi=
t values when polling it from the UHD (instead of a constant that indicates=
 a &quot;zero&quot; reception). I am doing this with disconnected antenna u=
sing a modified rx_samples C++ example application. </span></div><div><font=
 color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo=
, monospace"><span style=3D"font-size:12px;white-space:pre-wrap"><br></span=
></font></div><div><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas=
, Liberation Mono, Menlo, monospace"><span style=3D"font-size:12px;white-sp=
ace:pre-wrap">I have the following questions:</span></font></div><div><font=
 color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo=
, monospace"><span style=3D"font-size:12px;white-space:pre-wrap">1) How sho=
uld I interpret the 32-variable?</span></font></div><div><font color=3D"#24=
292e" face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, monospace">=
<span style=3D"font-size:12px;white-space:pre-wrap">2) Is the strobe_rx the=
 correct signal that indicates new sample arrival?</span></font></div><div>=
<div><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation M=
ono, Menlo, monospace"><span style=3D"font-size:12px;white-space:pre-wrap">=
2) Do I need </span></font><span style=3D"color:rgb(34,134,58);font-family:=
SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,monospace;font-si=
ze:12px;white-space:pre-wrap">new_rx_control</span><span style=3D"font-size=
:12px;white-space:pre-wrap;color:rgb(36,41,46);font-family:SFMono-Regular,C=
onsolas,&quot;Liberation Mono&quot;,Menlo,monospace">?</span></div><div></d=
iv></div><div><br></div><div>Have I done=C2=A0this correctly in general, or=
 there is something completely wrong in my approach?=C2=A0</div><div><br></=
div><div>Thanks,</div><div>Varban</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a1c75f059f6af633--


--===============5173807840454253673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5173807840454253673==--

