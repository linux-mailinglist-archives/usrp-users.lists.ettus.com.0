Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A744BE1EF7
	for <lists+usrp-users@lfdr.de>; Thu, 16 Oct 2025 09:33:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8537385D7F
	for <lists+usrp-users@lfdr.de>; Thu, 16 Oct 2025 03:33:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760600023; bh=NVbkLI8MxNGSiM2UjZq5RiXXAQtA8ifxHRyy6FyTImQ=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UcpZdqxxEJu5ngmWpdyb4sbiNZfFtbINwSrB5ozsc/T31oZG7d+bcWsF2HkVs8EGD
	 4BVdeFjF/DmHzYKa9XSIfQogOTOrFmMbjJHkd5lRGPwoakTxbaZd3RTRSglAH3zG/C
	 XSbIYKxSKRmWPFdjb9X14mhbwRiQyAgu/m3H/ZMilsumSErk1FqLfvIPKMHYLKWRbc
	 YYIvAczzH4bykx1ZI0LV5hPiEGP9ysamzzQT1bupT9R+Em0OXSlp2qn+aMQT15d5vi
	 fCbE5A5Q0uQWPgtk8uVszILTSDMbII6RHFWLGQLWVT9jp7ggYvvaIk5B7hbwqQTPIu
	 /gha45m/fWU+g==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 51B31385FAF
	for <usrp-users@lists.ettus.com>; Thu, 16 Oct 2025 03:33:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="zmEAHv64";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-63bdc7d939fso777903a12.0
        for <usrp-users@lists.ettus.com>; Thu, 16 Oct 2025 00:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1760599997; x=1761204797; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CQFmMeaZAKrYBMKjVsYKPMGcz+SPmliNnMfkHC+yBc8=;
        b=zmEAHv64ID00zvpl34jKlcwqWT/jPArDFbbruYrm8t7IFVzJWwAK6FBXOt3C6hFuMJ
         jWcDEp1BruqLN8//Hb3ZIDXNBNy0CwL55yQ/cbIuc1Iu8Oweju9nfq5eud2m2a/8xMGW
         7KtJ8st16tcKC0nNODXhO3xcT3dSx27bU0tjsN9XpGI88Vu+HiXPB1SZAuxLu7Dps9uz
         jOpmnQ1Vf+bjZypBVYAVnwftaVEjII+uEDQkqKC8GMCoR/f1T8OTEthLLgMxwlHHBTbf
         yIQo8garvN/XUgitvxqOa1TS1TVY70H15t9MRHymfjo0y5R/1shudGNsKoI+/oirr2Rs
         ypIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760599997; x=1761204797;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CQFmMeaZAKrYBMKjVsYKPMGcz+SPmliNnMfkHC+yBc8=;
        b=VZKBzY+zA1DNPkgWlNUXYxC21qt5pEQ37nAHo+oxst8cdJJorrju33S/qaWHyau28g
         xWltYkNaEje38p5u7eUokSff1OrfpkRDeQnfeSMQfB4jY6HBYxAYOJCb0VT+x/PMXAq+
         dxow/3qSlgUDr64gYFv+PVOkVZBqItuE45btJyHruBPKnEE1o1pkLWy5IaYSLzbnED5D
         blecG4NwCEzZdsxdg9Iw+t3JWrUeuS81QszLuHFK+43SzazzQLH3HbyucbsyoX3Tr/u8
         gbTg55KgfCD2SzjpXgOcU+61NL1Ow+ZRL7DWCUa7NpTM9LB4p3z3tpbsNdD2hQ4Z8eDG
         tXWg==
X-Gm-Message-State: AOJu0YyAgET4AofSBKeJYekSdbsg3xABSNpgbd2vPY1ykRVI9Mm6FYa5
	VrM21yX4E/6iX9BXC9qiQKQeJwHkHr8agN7G92l8qCFufxe1CeBoo5X0f/JaUE2/2iAVDyWuhJo
	7kLXrb9pq25BR2NpQUmnADiYsvtjLD7c4aWvNVN3B3MFbbbVMGKofOiWdGw==
X-Gm-Gg: ASbGncsv4g52PyLeGHodqdTP/BRxUahUoaILsd6bSS/GfuC+vo8Bzgd08aolEg1qecS
	4jYz//HhKI2NV20yDAq4QkU7rxlsJ8K3FV5oH1RdpUttW+b3d+lUoE7xoyPMEO0n1k+t8ovpPVV
	bbUTlUVInnu+5qtPE4nop8GMSzQOEXmknX2AxOyJ2xLJgLWsTvakxDjQBmko3CQyJzHX9WgA/mV
	QNiJYe9oApGQpQOaO58SX+isPoL9Fx4iTziY9QWgjlMX3K82cfE7m8P2rGsPz0P4TTZRuZh+PUB
	F+DYCFeel8N7fyg=
X-Google-Smtp-Source: AGHT+IEAF02cLSVvLXi5qnY3v5NO2RC43o7wuVMizcTBlWhqvjCpJz/POGYJsh56HI3CRDbWGSYUnQGoao0X8hpHEts=
X-Received: by 2002:a17:906:c1d1:b0:b50:b508:d0e9 with SMTP id
 a640c23a62f3a-b50b508d6d1mr2589915666b.46.1760599995970; Thu, 16 Oct 2025
 00:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <69f3a2d322da4e5cae4cbba6e0977f95@auden.com.tw>
In-Reply-To: <69f3a2d322da4e5cae4cbba6e0977f95@auden.com.tw>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 16 Oct 2025 09:33:04 +0200
X-Gm-Features: AS18NWA8-bS_8j1n7vUOYiTARksFfcM3PhTeVN5CQzPv5f0jhy71nqbt_1K57jI
Message-ID: <CAFOi1A5hJ4Xr2eDJG-3Zk7ER+VVBh+YoXomdezQMaW0rZu4OsA@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: IO6XBTDHXO5QXVDUJSVRQSFKXVEZFYYC
X-Message-ID-Hash: IO6XBTDHXO5QXVDUJSVRQSFKXVEZFYYC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [help] Inquiry about DSP Resource Optimization for 5G PSS Detector RFNoC Block on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IO6XBTDHXO5QXVDUJSVRQSFKXVEZFYYC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2394812592134028384=="

--===============2394812592134028384==
Content-Type: multipart/related; boundary="0000000000005c05ae064141a158"

--0000000000005c05ae064141a158
Content-Type: multipart/alternative; boundary="0000000000005c05ad064141a157"

--0000000000005c05ad064141a157
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,

did you remove other DSP blocks from the image before adding your block?
The resamplers are the most resource-intensive blocks outside of the RF
frontend (which unfortunately, can't be removed from the design (at least,
easily).

You probably need to keep at least one DDC to provide input data for your
block. However, if your block is running at 100MHz, then there's surely
ways to optimize DSP usage, like doubling the clock rate and using fewer
DSPs that way.

--M

On Wed, Oct 15, 2025 at 3:13=E2=80=AFAM Luca Chen <luca.chen@auden.com.tw> =
wrote:

> Hi all,
>
> I am currently working on building a *5G PSS Detector RFNoC Block* on the
> *X410* platform.
> While using the *RFNoC Image Builder tool* to integrate the RFNoC block,
> I encountered the following error:
>
> *[ERROR: [DRC UTLZ-1] Resource utilization: DSPs over-utilized in Top
> Level Design*
> This design requires more DSP cells than are available in the target
> device.
> This design requires 6179 DSP cells, but only 4272 compatible sites are
> available in the target device.
> Please analyze your synthesis results and constraints to ensure the desig=
n
> is mapped to Xilinx primitives as expected.
> If so, please consider targeting a larger device.]
>
> In this design, the *custom Vivado IP Core* used in the PSS detector
> performs extensive *correlation computations (FIR-based)*, which results
> in high DSP utilization.
> As a consequence, there are insufficient DSP resources available for
> integrating the RFNoC block.
> I would like to seek suggestions or best practices on *DSP resource
> optimization* for this kind of design.
>
> *System and Design Details:*
>
> =C2=B7       *FPGA:* xzcu28dr ffvg1517 1-e
>
> =C2=B7       *Vivado Version:* 2021.1_AR76780
>
> =C2=B7       *Resource Utilization (partial report):*
> =E2=80=93 Top-level DSP usage: 6179 (available: 4272)
> =E2=80=93 FIND_PSS_ID (5G PSS Detector RFNoC Block): ~3120 DSPs
> =E2=80=93 Other modules (excluding FIND_PSS_ID): ~3059 DSPs
>
> =C2=B7       *Parallelism / Clock:*
> =E2=80=93 Processing path: 1 channel
> =E2=80=93 Operating clock: 100 MHz
>
> Any recommendations on reducing DSP usage, optimizing FIR implementations=
,
> or other design trade-offs to fit within the device constraints would be
> greatly appreciated.
>
> Best regards,
> *Luca*
>
>
>
>
>
> *=E9=99=B3=E5=86=A0=E6=BA=A2 Luca Chen**=E2=9D=98**SMART LINK BUSINESS.*
>
> *A :* *=E8=80=80=E7=99=BB=E9=9B=86=E5=9C=98*=E2=9D=98*=E6=A1=83=E5=9C=92=
=E5=B8=82=E5=85=AB=E5=BE=B7=E5=8D=80=E5=92=8C=E5=B9=B3=E8=B7=AF772=E5=B7=B7=
19=E8=99=9F*
>
> *E :* *luca.chen@auden.com.tw* <http://luca.chen@auden.com.tw>=E2=9D=98*W=
 :*
> *www.auden.com.tw* <http://www.auden.com.tw/>
>
>
> =E6=9C=AC=E8=B3=87=E8=A8=8A=E5=8F=8A=E9=99=84=E4=BB=B6=E5=8F=AF=E8=83=BD=
=E6=B6=89=E5=8F=8A=E4=BF=9D=E5=AF=86=E6=80=A7,
> =E8=B2=A1=E7=94=A2=E6=AC=8A=E5=8F=8A=E7=89=B9=E8=A8=B1=E5=B0=88=E6=AC=8A=
=E7=9A=84=E5=85=A7=E5=AE=B9=EF=BC=8C=E6=88=96=E5=B7=B2=E5=8F=97=E6=99=BA=E6=
=85=A7=E8=B2=A1=E7=94=A2=E6=B3=95=E5=BE=8B=E4=BF=9D=E8=AD=B7=E7=9A=84=E5=B0=
=88=E5=88=A9=E5=8F=8A=E5=95=86=E6=A5=AD=E6=A9=9F=E5=AF=86=EF=BC=8C=E5=83=85=
=E4=BE=9B=E6=8C=87=E5=AE=9A=E4=B9=8B=E6=94=B6=E4=BB=B6=E4=BA=BA=E4=BD=BF=E7=
=94=A8=E3=80=82=E8=8B=A5=E6=82=A8=E4=B8=A6=E9=9D=9E=E8=A2=AB=E6=8C=87=E5=AE=
=9A=E4=B9=8B=E6=94=B6=E4=BF=A1=E4=BA=BA=EF=BC=8C=E8=AB=8B=E5=91=8A=E7=9F=A5=
=E5=8E=9F=E7=99=BC=E4=BF=A1=E4=BA=BA=EF=BC=9B=E4=BB=A5=E5=8F=8A=E8=AB=8B=E6=
=82=A8=E5=88=AA=E9=99=A4=E6=AD=A4=E4=BF=A1=E5=92=8C=E5=B7=B2=E5=88=97=E5=8D=
=B0=E7=9A=84=E6=96=87=E4=BB=B6=EF=BC=9B=E4=BA=A6=E8=AB=8B=E5=8B=BF=E6=8F=AD=
=E6=9B=89=E6=9C=AC=E4=BF=A1=E4=BB=B6=E5=85=A7=E5=AE=B9=E6=96=BC=E4=BB=BB=E4=
=BD=95=E4=BA=BA=E3=80=82=E8=AC=9D=E8=AC=9D=E6=82=A8=E7=9A=84=E5=90=88=E4=BD=
=9C=E3=80=82
>
> This information and any attachments may contain information that is
> confidential, proprietary, privileged or otherwise subject to protection =
of
> intellectual property laws for patents, commercial secrets and is for the
> use of the intended recipient only. If you are not the intended recipient=
,
> please notify the sender; delete the information and destroy the hard cop=
y;
> and do not disclose the contents to anyone. Thank you for your cooperatio=
n.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005c05ad064141a157
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Luca,</div><div><br></div><div>did you remove othe=
r DSP blocks from the image before adding your block? The resamplers are th=
e most resource-intensive blocks outside of the RF frontend (which unfortun=
ately, can&#39;t be removed from the design (at least, easily).</div><div><=
br></div><div>You probably need to keep at least one DDC to provide input=
=C2=A0data for your block. However, if your block is running at 100MHz, the=
n there&#39;s surely ways to optimize DSP usage, like doubling the clock ra=
te and using fewer DSPs that way.</div><div><br></div><div>--M</div></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Oct 15, 2025 at 3:13=E2=80=AFAM Luca Chen &lt;<a hr=
ef=3D"mailto:luca.chen@auden.com.tw">luca.chen@auden.com.tw</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"ms=
g-4940002971554306110">





<div lang=3D"ZH-TW">
<div class=3D"m_-4940002971554306110WordSection1">
<p><span lang=3D"EN-US">Hi all,<u></u><u></u></span></p>
<p><span lang=3D"EN-US">I am currently working on building a <strong><span =
style=3D"font-family:&quot;\0065b0\007d30\00660e\009ad4&quot;,serif">5G PSS=
 Detector RFNoC Block</span></strong> on the
<strong><span style=3D"font-family:&quot;\0065b0\007d30\00660e\009ad4&quot;=
,serif">X410</span></strong> platform.<br>
While using the <strong><span style=3D"font-family:&quot;\0065b0\007d30\006=
60e\009ad4&quot;,serif">RFNoC Image Builder tool</span></strong> to integra=
te the RFNoC block, I encountered the following error:<u></u><u></u></span>=
</p>
<p><strong><span lang=3D"EN-US" style=3D"font-family:&quot;\0065b0\007d30\0=
0660e\009ad4&quot;,serif">[ERROR: [DRC UTLZ-1] Resource utilization: DSPs o=
ver-utilized in Top Level Design</span></strong><span lang=3D"EN-US"><br>
This design requires more DSP cells than are available in the target device=
.<br>
This design requires 6179 DSP cells, but only 4272 compatible sites are ava=
ilable in the target device.<br>
Please analyze your synthesis results and constraints to ensure the design =
is mapped to Xilinx primitives as expected.<br>
If so, please consider targeting a larger device.]<u></u><u></u></span></p>
<p><span lang=3D"EN-US">In this design, the <strong><span style=3D"font-fam=
ily:&quot;\0065b0\007d30\00660e\009ad4&quot;,serif">custom Vivado IP Core</=
span></strong> used in the PSS detector performs extensive
<strong><span style=3D"font-family:&quot;\0065b0\007d30\00660e\009ad4&quot;=
,serif">correlation computations (FIR-based)</span></strong>, which results=
 in high DSP utilization.<br>
As a consequence, there are insufficient DSP resources available for integr=
ating the RFNoC block.<br>
I would like to seek suggestions or best practices on <strong><span style=
=3D"font-family:&quot;\0065b0\007d30\00660e\009ad4&quot;,serif">DSP resourc=
e optimization</span></strong> for this kind of design.<u></u><u></u></span=
></p>
<p><strong><span lang=3D"EN-US" style=3D"font-family:&quot;\0065b0\007d30\0=
0660e\009ad4&quot;,serif">System and Design Details:</span></strong><span l=
ang=3D"EN-US"><u></u><u></u></span></p>
<p style=3D"margin-left:36pt"><u></u><span lang=3D"EN-US" style=3D"font-siz=
e:10pt;font-family:Symbol"><span>=C2=B7<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><strong><span lang=3D"EN-US" style=3D"font-fami=
ly:&quot;\0065b0\007d30\00660e\009ad4&quot;,serif">FPGA:</span></strong><sp=
an lang=3D"EN-US"> xzcu28dr ffvg1517 1-e<u></u><u></u></span></p>
<p style=3D"margin-left:36pt"><u></u><span lang=3D"EN-US" style=3D"font-siz=
e:10pt;font-family:Symbol"><span>=C2=B7<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><strong><span lang=3D"EN-US" style=3D"font-fami=
ly:&quot;\0065b0\007d30\00660e\009ad4&quot;,serif">Vivado Version:</span></=
strong><span lang=3D"EN-US"> 2021.1_AR76780<u></u><u></u></span></p>
<p style=3D"margin-left:36pt"><u></u><span lang=3D"EN-US" style=3D"font-siz=
e:10pt;font-family:Symbol"><span>=C2=B7<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><strong><span lang=3D"EN-US" style=3D"font-fami=
ly:&quot;\0065b0\007d30\00660e\009ad4&quot;,serif">Resource Utilization (pa=
rtial report):</span></strong><span lang=3D"EN-US"><br>
</span>=E2=80=82=E2=80=93<span lang=3D"EN-US"> Top-level DSP usage: 6179 (a=
vailable: 4272)<br>
</span>=E2=80=82=E2=80=93<span lang=3D"EN-US"> FIND_PSS_ID (5G PSS Detector=
 RFNoC Block): ~3120 DSPs<br>
</span>=E2=80=82=E2=80=93<span lang=3D"EN-US"> Other modules (excluding FIN=
D_PSS_ID): ~3059 DSPs<u></u><u></u></span></p>
<p style=3D"margin-left:36pt"><u></u><span lang=3D"EN-US" style=3D"font-siz=
e:10pt;font-family:Symbol"><span>=C2=B7<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><strong><span lang=3D"EN-US" style=3D"font-fami=
ly:&quot;\0065b0\007d30\00660e\009ad4&quot;,serif">Parallelism / Clock:</sp=
an></strong><span lang=3D"EN-US"><br>
</span>=E2=80=82=E2=80=93<span lang=3D"EN-US"> Processing path: 1 channel<b=
r>
</span>=E2=80=82=E2=80=93<span lang=3D"EN-US"> Operating clock: 100 MHz<u><=
/u><u></u></span></p>
<p><span lang=3D"EN-US">Any recommendations on reducing DSP usage, optimizi=
ng FIR implementations, or other design trade-offs to fit within the device=
 constraints would be greatly appreciated.<u></u><u></u></span></p>
<p><span lang=3D"EN-US">Best regards,<br>
<strong><span style=3D"font-family:&quot;\0065b0\007d30\00660e\009ad4&quot;=
,serif;font-weight:normal">Luca</span></strong><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:6pt"><u></u><img width=3D"175=
" height=3D"166" src=3D"cid:ii_199ebe245e6692e331" align=3D"left" hspace=3D=
"12"><u></u><b><span style=3D"font-family:&quot;\005fae\008edf\006b63\009ed=
1\009ad4&quot;,sans-serif;color:rgb(237,125,49)">=E9=99=B3=E5=86=A0=E6=BA=
=A2<span lang=3D"EN-US">
 Luca Chen</span></span></b><b><span style=3D"font-family:&quot;MS Gothic&q=
uot;;color:rgb(59,56,56)">=E2=9D=98</span></b><b><span lang=3D"EN-US" style=
=3D"font-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-serif;=
color:rgb(59,56,56)">SMART LINK BUSINESS.</span></b><b><span lang=3D"EN-US"=
 style=3D"font-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-=
serif;color:rgb(237,125,49)"><u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-serif;color:rg=
b(237,125,49)">A :</span></b><b><span lang=3D"EN-US" style=3D"font-size:11p=
t;font-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-serif;co=
lor:rgb(59,56,56)">
</span></b><b><span style=3D"font-size:11pt;font-family:&quot;\005fae\008ed=
f\006b63\009ed1\009ad4&quot;,sans-serif;color:rgb(64,64,64)">=E8=80=80=E7=
=99=BB=E9=9B=86=E5=9C=98</span></b><span style=3D"font-size:11pt;font-famil=
y:&quot;MS Gothic&quot;;color:rgb(64,64,64)">=E2=9D=98</span><b><span style=
=3D"font-size:11pt;font-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&qu=
ot;,sans-serif;color:rgb(64,64,64)">=E6=A1=83=E5=9C=92=E5=B8=82=E5=85=AB=E5=
=BE=B7=E5=8D=80=E5=92=8C=E5=B9=B3=E8=B7=AF<span lang=3D"EN-US">772</span>=
=E5=B7=B7<span lang=3D"EN-US">19</span>=E8=99=9F<span lang=3D"EN-US"><u></u=
><u></u></span></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-serif;color:rg=
b(237,125,49)">E :</span></b><b><span lang=3D"EN-US" style=3D"font-size:11p=
t;font-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-serif">
</span></b><span lang=3D"EN-US"><a href=3D"http://luca.chen@auden.com.tw" t=
arget=3D"_blank"><b><span style=3D"font-size:11pt;font-family:&quot;\005fae=
\008edf\006b63\009ed1\009ad4&quot;,sans-serif;color:rgb(5,99,193)">luca.che=
n@auden.com.tw</span></b></a></span><span style=3D"font-size:11pt;font-fami=
ly:&quot;MS Gothic&quot;;color:rgb(64,64,64)">=E2=9D=98</span><b><span lang=
=3D"EN-US" style=3D"font-size:11pt;font-family:&quot;\005fae\008edf\006b63\=
009ed1\009ad4&quot;,sans-serif;color:rgb(237,125,49)">W
 :</span></b><b><span lang=3D"EN-US" style=3D"font-size:11pt;font-family:&q=
uot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-serif">
</span></b><span lang=3D"EN-US"><a href=3D"http://www.auden.com.tw/" target=
=3D"_blank"><b><span style=3D"font-size:11pt;font-family:&quot;\005fae\008e=
df\006b63\009ed1\009ad4&quot;,sans-serif;color:rgb(5,99,193)">www.auden.com=
.tw</span></b></a></span><b><span lang=3D"EN-US" style=3D"font-size:11pt;fo=
nt-family:&quot;\005fae\008edf\006b63\009ed1\009ad4&quot;,sans-serif;color:=
rgb(64,64,64)"><u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
</div>

=E6=9C=AC=E8=B3=87=E8=A8=8A=E5=8F=8A=E9=99=84=E4=BB=B6=E5=8F=AF=E8=83=BD=E6=
=B6=89=E5=8F=8A=E4=BF=9D=E5=AF=86=E6=80=A7, =E8=B2=A1=E7=94=A2=E6=AC=8A=E5=
=8F=8A=E7=89=B9=E8=A8=B1=E5=B0=88=E6=AC=8A=E7=9A=84=E5=85=A7=E5=AE=B9=EF=BC=
=8C=E6=88=96=E5=B7=B2=E5=8F=97=E6=99=BA=E6=85=A7=E8=B2=A1=E7=94=A2=E6=B3=95=
=E5=BE=8B=E4=BF=9D=E8=AD=B7=E7=9A=84=E5=B0=88=E5=88=A9=E5=8F=8A=E5=95=86=E6=
=A5=AD=E6=A9=9F=E5=AF=86=EF=BC=8C=E5=83=85=E4=BE=9B=E6=8C=87=E5=AE=9A=E4=B9=
=8B=E6=94=B6=E4=BB=B6=E4=BA=BA=E4=BD=BF=E7=94=A8=E3=80=82=E8=8B=A5=E6=82=A8=
=E4=B8=A6=E9=9D=9E=E8=A2=AB=E6=8C=87=E5=AE=9A=E4=B9=8B=E6=94=B6=E4=BF=A1=E4=
=BA=BA=EF=BC=8C=E8=AB=8B=E5=91=8A=E7=9F=A5=E5=8E=9F=E7=99=BC=E4=BF=A1=E4=BA=
=BA=EF=BC=9B=E4=BB=A5=E5=8F=8A=E8=AB=8B=E6=82=A8=E5=88=AA=E9=99=A4=E6=AD=A4=
=E4=BF=A1=E5=92=8C=E5=B7=B2=E5=88=97=E5=8D=B0=E7=9A=84=E6=96=87=E4=BB=B6=EF=
=BC=9B=E4=BA=A6=E8=AB=8B=E5=8B=BF=E6=8F=AD=E6=9B=89=E6=9C=AC=E4=BF=A1=E4=BB=
=B6=E5=85=A7=E5=AE=B9=E6=96=BC=E4=BB=BB=E4=BD=95=E4=BA=BA=E3=80=82=E8=AC=9D=
=E8=AC=9D=E6=82=A8=E7=9A=84=E5=90=88=E4=BD=9C=E3=80=82
<br>=20
This information and any attachments may contain information that is confid=
ential, proprietary, privileged or otherwise subject to protection of intel=
lectual property laws for patents, commercial secrets and is for the use of=
 the intended recipient only.  If you are not the intended recipient, pleas=
e notify the sender; delete the information and destroy the hard copy; and =
do not disclose the contents to anyone.  Thank you for your cooperation.
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000005c05ad064141a157--

--0000000000005c05ae064141a158
Content-Type: image/png; name="image003.png"
Content-Disposition: inline; filename="image003.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_199ebe245e6692e331>
X-Attachment-Id: ii_199ebe245e6692e331

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
AAAAAElFTkSuQmCC
--0000000000005c05ae064141a158--

--===============2394812592134028384==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2394812592134028384==--
