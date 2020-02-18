Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 429721629E1
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 16:54:01 +0100 (CET)
Received: from [::1] (port=52642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j45C5-00083s-Ec; Tue, 18 Feb 2020 10:53:53 -0500
Received: from mail-lj1-f177.google.com ([209.85.208.177]:34292)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1j45C1-0007z0-Er
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 10:53:49 -0500
Received: by mail-lj1-f177.google.com with SMTP id x7so23538794ljc.1
 for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2020 07:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kHUwtylJEt9jsAC+mXQTDZJ3LlsmFxtobkyG341T5EQ=;
 b=0oo5JDKXwyLHBDhZ67TB+1I6US7NzfFeH+qZ68KH5qopSkaEdBrD/QwDzMuIA6sY/T
 LN2DajHJDV+Jx+SMzLDIgmX4aOtZMRA3Vme/0fYF5vWEuadltsnMTs0Gd6og6ofTLr78
 gb5HqEfJTZs5qr59XpU4PKo/KgT/h4koox1lNn0cQUhb6K5x1oqdw0pvQHrI7GsgG9i4
 pkFCkI7pYz5RQlejxRGQcNiRVTcv4WOLfjuNW9FgMK4V/NAXVrmx3JRqRIMEMXIAuThY
 +sB36xei12awo1TUq1twSSoecuE+DX2Lfz69je0gXv8XJGOWFM7thkK+UH+Icdsxgs5l
 0Kug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kHUwtylJEt9jsAC+mXQTDZJ3LlsmFxtobkyG341T5EQ=;
 b=PXoWloIOan8tOA1XXCDFsb2VpOlJXSnPxVniIZn9Kt1d+fHx8WFExW/l8pAGwMsfu6
 bWRTcXPhlFt7Oj654CVMKORokldpCSiUtmEXot151NQ2mjXb2UnuxrVXtznLJg+LZjIm
 sdah5qcLJl7GcJH4RzMb4+5r/UiGaGBo538ZztAit3sMrcTGY7FQD3aI9zXBjE0n2M9U
 Pr9vfGbUf5tq/pTGQM2zbT9u4wQP5dWdS/7fYnPlBwQmow7VRxKRcIOKrYH4U12WUW0J
 DVsAv0h82Zjwk6SBKqRRGTBXYA4v+UGo/4etpxaYYm8NOIpSw9oxIWlRsRXuti5YE1fD
 ARYg==
X-Gm-Message-State: APjAAAXwhZ1bhtGNV5r0o56x3kyEvZIrO1NN/iD64p/lbwtCX1zzqoe1
 qbQFy24xiGMOR4wr3eXnSy2cQincjdko84LsgO4XnHgey/+xvg==
X-Google-Smtp-Source: APXvYqxQqkObHqZSTLXKZoxC4dhOnCRcGRDFieDvGMYmbRjSpDep3nuFR6jo5xs3crylrqkDXF+Z7EvGWyZhCqxyKYs=
X-Received: by 2002:a2e:8699:: with SMTP id l25mr12699208lji.137.1582041188080; 
 Tue, 18 Feb 2020 07:53:08 -0800 (PST)
MIME-Version: 1.0
References: <007501d5e316$e8f05d70$bad11850$@sdr-radio.com>
In-Reply-To: <007501d5e316$e8f05d70$bad11850$@sdr-radio.com>
Date: Tue, 18 Feb 2020 09:52:57 -0600
Message-ID: <CANf970YT7r8mwaEzdQ-pJhHr1xRLobPwMbBsLrE1bgqONMLZGA@mail.gmail.com>
To: simon@sdr-radio.com
Subject: Re: [USRP-users] Clock Source
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3254054556161448421=="
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

--===============3254054556161448421==
Content-Type: multipart/alternative; boundary="000000000000092bab059edbabff"

--000000000000092bab059edbabff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Simon,

You should be able to call:

get_clock_source()
<https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1e7f6=
79b2f273f7d38eeb1d92e801796>

and verify that the returned value is 'external'.

Sam Reiter

On Fri, Feb 14, 2020 at 3:13 AM Simon G4ELI via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
>
>
> If I set the clock source on the B200 to =E2=80=98external=E2=80=99 how c=
an I verify that
> the B200 has indeed locked to the external reference? The lo_locked senso=
r
> always returns true, even when no external reference is connected.
>
>
>
> Simon Brown, G4ELI
>
> https://www.sdr-radio.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000092bab059edbabff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Simon,</div><div><br></div><div>You should be able to=
 call:</div><div><br></div><div><a href=3D"https://files.ettus.com/manual/c=
lassuhd_1_1usrp_1_1multi__usrp.html#a1e7f679b2f273f7d38eeb1d92e801796">get_=
clock_source()</a></div><div><br></div><div>and verify that the returned va=
lue is &#39;external&#39;. <br></div><div><br></div><div><div><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr">Sam Reiter<br></div></div></div></div></div>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Fri, Feb 14, 2020 at 3:13 AM Simon G4ELI via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=
=3D"EN-GB"><div class=3D"gmail-m_-7539455485811746102WordSection1"><p class=
=3D"MsoNormal">Hi,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u>=
</u></p><p class=3D"MsoNormal">If I set the clock source on the B200 to =E2=
=80=98external=E2=80=99 how can I verify that the B200 has indeed locked to=
 the external reference? The lo_locked sensor always returns true, even whe=
n no external reference is connected.<u></u><u></u></p><p class=3D"MsoNorma=
l"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span>Simon Brown, G4ELI<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span><a href=3D"https://www=
.sdr-radio.com" target=3D"_blank">https://www.sdr-radio.com</a><u></u><u></=
u></span></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div>___=
____________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000092bab059edbabff--


--===============3254054556161448421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3254054556161448421==--

