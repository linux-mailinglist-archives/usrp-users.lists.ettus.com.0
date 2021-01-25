Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CF6302ABF
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 19:52:25 +0100 (CET)
Received: from [::1] (port=34358 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l46yM-00038X-F3; Mon, 25 Jan 2021 13:52:22 -0500
Received: from mail-lj1-f177.google.com ([209.85.208.177]:45611)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <hazelnutvt04@gmail.com>)
 id 1l46yH-0002xC-NV
 for usrp-users@lists.ettus.com; Mon, 25 Jan 2021 13:52:17 -0500
Received: by mail-lj1-f177.google.com with SMTP id f17so16600048ljg.12
 for <usrp-users@lists.ettus.com>; Mon, 25 Jan 2021 10:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=l45LEPLpzxkPSJYqXr/WAPhBEzy9rwRCsgWAAAtEIWc=;
 b=dj8u5a/371efIsGfWft8bxq5XoJuquHwkmlFvlFCnnC2qYl/xI/D7m1PTWmeOxcxkW
 ZEtVTtMZWTtSffii7GNoqity01yxS1PZQwvRPTpM5+hiUV2PjJEbwxJSWx/im/cCPsH5
 wnumt9mE2EtxO6rKPH4kKfcH9Lct+2kMKbHHtMs6kH0TuB/6CKdm7eL/q59kIBDRFEw3
 D+oA4s1UQtW9wc/c220RsLvx6OSqNl+Z093Zo3VBvp0HfaV00YRZkZNV3jrw6xtK15kb
 8Q2VwLXJ8fYtyZ03cuanqVXQKLRWHo5Px5WPdA7+xfPb6N//5nIavn1dLPJ7lmzAhLJW
 zVDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=l45LEPLpzxkPSJYqXr/WAPhBEzy9rwRCsgWAAAtEIWc=;
 b=ftaJhBIf2at5GBmPjxY/yt1yWsZIgmD3aofMwqbeKRY5hKl/aLb5pJJ5TSjITfnMED
 rzu8aI2C9IsaeWbnvV0F2zVceLSlc2Jz2CMOV1nqmenHAjtE7DXezdktY666TpnG+Fvf
 Gyd3CGFu8AMdKh52H20TGqP5Ib4sRiRk8SVsnOr0gIFeyCKxILMPOX+Exk1HGOe/N6vb
 TvsKxRuowgRR/VvEcXpiSGAQx3Cpd85uHCRcz7FkUULA/wAXJhTkub+kyqd5rPgvxORO
 kvBWavroc+7AGanfl7yG0YuUPjEqgFDhS2Ru3NLskLPr4bmEMBEFr1zafjZAMfeVxQ5r
 9Ozw==
X-Gm-Message-State: AOAM533JKebPYnYRadDER4a7iqnoLTNty94GvSOe3dEed3wwmUVdgVoV
 GdS1GT5Q7YRRCCjzqKiDy2LT+d/MaZzuoe6KCuTah7Le2WdQOg==
X-Google-Smtp-Source: ABdhPJxcKkbkCFlj/f0sex4rzm6JneJiSLm26+gIGJZTKBao8Nd+tyf++RGNw1f32y1hr5KWPclb9VTnzGUO1bCUGtc=
X-Received: by 2002:a2e:a58c:: with SMTP id m12mr885923ljp.444.1611600695972; 
 Mon, 25 Jan 2021 10:51:35 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 25 Jan 2021 13:51:25 -0500
Message-ID: <CABD0DOsdsyzgJY1m5oeecjogZwv_E9wapY4T_mM-6t4hN-nR7w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] N310 Questions
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
From: Glenn Hazelwood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Glenn Hazelwood <hazelnutvt04@gmail.com>
Content-Type: multipart/mixed; boundary="===============1746413304592625690=="
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

--===============1746413304592625690==
Content-Type: multipart/alternative; boundary="00000000000000d4e005b9be07e5"

--00000000000000d4e005b9be07e5
Content-Type: text/plain; charset="UTF-8"

Followup questions about the N310

> Currently, the tuning times are actually a bit slower than the B200/E310
> (~140 ms) because the frequency is adjusted via SW SPI commands to the
> AD9371 transceiver.   A future performance enhancement will be to
implement
> frequency tunes via GPIO lines from the FPGA.

Is the 'future performance enhancement' a matter of Ettus updating the N310
hardware or someone making a FPGA bitfile (or both)?

>The fastest that the device will be ever be capable of tuning
> without disabling this calibration is ~2 ms

Is this ~2 ms for a small change in tuning frequency (~ 1 MHz)? Or for a
large change?

-Glenn


Robin Coxe via USRP-users Tue, 06 Mar 2018 12:28:33 -0800

Hi Dave.  The official product announcement of the USRP N310 was just
posted today.   The N310 is now orderable!

On Mon, Mar 5, 2018 at 2:11 PM, Dave NotTelling via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Just saw that the N310 is officially on the ettus.com website.  Curious
> about the following:
>
>    - The product pages says that it's not for fast tuning.  Should I
>    expect roughly the same tuning times as the B2x0 radios?
>
> Currently, the tuning times are actually a bit slower than the B200/E310
(~140 ms) because the frequency is adjusted via SW SPI commands to the
AD9371 transceiver.   A future performance enhancement will be to implement
frequency tunes via GPIO lines from the FPGA.   The AD9371 was not designed
for fast frequency hopping.  The AD9371 has an embedded ARM Cortex-M0
processor that orchestrates an on-chip quadrature error correction (i.e.,
I/Q imbalance calibration) that takes an appreciable amount of time to
converge.  The fastest that the device will be ever be capable of tuning
without disabling this calibration is ~2 ms.

-- 
Diftor heh smusma
-Famous Vulcan Phrase ;)

--00000000000000d4e005b9be07e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Followup questions about the N310</div><div><br></div=
><div>&gt; Currently, the tuning times are actually a bit slower than the B=
200/E310<br>&gt; (~140 ms) because the frequency is adjusted via SW SPI com=
mands to the<br>&gt; AD9371 transceiver. =C2=A0 A future performance enhanc=
ement will be to implement<br>&gt; frequency tunes via GPIO lines from the =
FPGA.<br></div><div><br></div><div>Is the &#39;future performance=C2=A0enha=
ncement&#39; a matter of Ettus updating the N310 hardware or someone making=
 a FPGA bitfile (or both)?=C2=A0</div><div><br></div><div>&gt;The fastest t=
hat the device will be ever be capable of tuning<br>&gt; without disabling =
this calibration is ~2 ms<br></div><div><br></div><div>Is this ~2 ms for a =
small change in tuning frequency (~ 1 MHz)? Or for a large change?</div><di=
v><br></div><div>-Glenn</div><div><br></div><div><br></div>Robin Coxe via U=
SRP-users Tue, 06 Mar 2018 12:28:33 -0800<br><br>Hi Dave.=C2=A0 The officia=
l product announcement of the USRP N310 was just<br>posted today. =C2=A0 Th=
e N310 is now orderable!<br><br>On Mon, Mar 5, 2018 at 2:11 PM, Dave NotTel=
ling via USRP-users &lt;<br><a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br><br>&gt; Just saw that the N310=
 is officially on the <a href=3D"http://ettus.com">ettus.com</a> website.=
=C2=A0 Curious<br>&gt; about the following:<br>&gt;<br>&gt; =C2=A0 =C2=A0- =
The product pages says that it&#39;s not for fast tuning.=C2=A0 Should I<br=
>&gt; =C2=A0 =C2=A0expect roughly the same tuning times as the B2x0 radios?=
<br>&gt;<br>&gt; Currently, the tuning times are actually a bit slower than=
 the B200/E310<br>(~140 ms) because the frequency is adjusted via SW SPI co=
mmands to the<br>AD9371 transceiver. =C2=A0 A future performance enhancemen=
t will be to implement<br>frequency tunes via GPIO lines from the FPGA. =C2=
=A0 The AD9371 was not designed<br>for fast frequency hopping.=C2=A0 The AD=
9371 has an embedded ARM Cortex-M0<br>processor that orchestrates an on-chi=
p quadrature error correction (i.e.,<br>I/Q imbalance calibration) that tak=
es an appreciable amount of time to<br>converge.=C2=A0 The fastest that the=
 device will be ever be capable of tuning<br>without disabling this calibra=
tion is ~2 ms.<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><span style=3D"line-height:19.046875px;background-colo=
r:rgb(255,255,255)"><font color=3D"#000000" face=3D"trebuchet ms, sans-seri=
f">Diftor heh smusma<br></font></span></div><div><span style=3D"line-height=
:19.046875px;background-color:rgb(255,255,255)"><font color=3D"#000000" fac=
e=3D"trebuchet ms, sans-serif">-Famous Vulcan Phrase ;)<br></font></span></=
div></div></div></div></div>

--00000000000000d4e005b9be07e5--


--===============1746413304592625690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1746413304592625690==--

