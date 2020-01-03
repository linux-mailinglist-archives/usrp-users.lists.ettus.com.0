Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C203E12FDFE
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 21:37:00 +0100 (CET)
Received: from [::1] (port=60298 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inTgp-0004In-NY; Fri, 03 Jan 2020 15:36:59 -0500
Received: from mail-lj1-f170.google.com ([209.85.208.170]:43800)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1inTgl-0004Bk-Um
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 15:36:56 -0500
Received: by mail-lj1-f170.google.com with SMTP id a13so45003672ljm.10
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 12:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bNiBHMnUIqhjE4If5GWHqJC3tig7eY2Ll+THwWFDVKE=;
 b=tj9WXLyjQ7FCz0ioAQbHAiqYuYJwDQWZbObdcrRaTm+VV7uCEMJE3G5OP/P1Mvvhvp
 nav3wjadgvqYtXyNDU47UBqq7v7GUFCgoxh8Z9m6aM/8LF/TUAbeQhSStysSpkD7AN2D
 jMaWQPKHLn3916ugHM9LQ0a3L2cZVniqad5jSvSTCRCYsrFO01BEkTF0Jp5xYRv4Je49
 ZFhnpoaROTsNLTXi3X0gQY7MmkD2DVL5ufVfPx46N8dcWhakGbvqOoyl/+hcmjJkK/fw
 47RJ12/+y2w4b7Mffw4vh8FEuHIK6rrnwMsAcqkJsr7NsaSR7BQsvLFmyDEE+c36Uh9a
 lUyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bNiBHMnUIqhjE4If5GWHqJC3tig7eY2Ll+THwWFDVKE=;
 b=ioaFvZPC5tySTPrG/HFXubS22z991XPP6+h4SFH5VaSYFQEFGXLutHV7KEcGgKgPtV
 eBwHEpkwIsCPwyHERszGkNmpsasado6nC6q1yxv6TfaBj63H/ahKVRibuijYGzeg3z6j
 pnjhyeyxVKyokmz3bbBzc7DlF7lapYzgnxcSwbsJ2jD1yroeFtvT6A4esE/owIMkFG66
 FN7BGhBRPAhPh8THDafFFlyYUZr6oR6UqoRNqvzo25OEE6XyXvO9zV/2glsY0VzDAtXW
 NS5AoAAY2izBaT7Ac4OsP8mlrq/iwum1QHBKjBGNTnDPkecfHBTOWCqnAzu5mtmfdYEn
 pH0A==
X-Gm-Message-State: APjAAAXoubGgT3N31hgwpOq4ZBGexEayrN1rP/MMalY8N1xPwrTZSEC8
 9AGtWP05QWsTFOf9KCOI37wLMEvTuS9uorlcuC9/AAdNCLo=
X-Google-Smtp-Source: APXvYqxcU6oDy+U1tfvmNcX0SC2tMvFnBwjbXZhhMDq3o1P0m8LSS9fLSm2hvT6bOYVcWjZCX621TAMK0IsL9d1J3fg=
X-Received: by 2002:a2e:5357:: with SMTP id t23mr53720483ljd.227.1578083774591; 
 Fri, 03 Jan 2020 12:36:14 -0800 (PST)
MIME-Version: 1.0
References: <1573152667302.33446@tuwien.ac.at>
In-Reply-To: <1573152667302.33446@tuwien.ac.at>
Date: Fri, 3 Jan 2020 14:36:05 -0600
Message-ID: <CANf970YWRygZtS9ONJbuQ0WKx9pj0P3FeCPBTJudrRCgsuNJTg@mail.gmail.com>
To: "Neunteufel, Daniel" <daniel.neunteufel@tuwien.ac.at>
Subject: Re: [USRP-users] TwinRX RX1 LO1 occasionally at wrong frequency
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7086573646688216901=="
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

--===============7086573646688216901==
Content-Type: multipart/alternative; boundary="000000000000cf8be5059b42429f"

--000000000000cf8be5059b42429f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Daniel,

This is tricky. Not only have I never seen this issue, but it sounds like
it happens intermittently for you as well. If this is something you're
still running into, I'd encourage you to email me at support@ettus.com
directly. We can cover some additional troubleshooting and potentially get
these boards sent in examination, if necessary.

Best,

Sam Reiter
Ettus Research

On Thu, Nov 7, 2019 at 12:51 PM Neunteufel, Daniel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
>
>
> I=E2=80=99m using two X310, each with two TwinRX daughterboards, connecte=
d to a
> host via two 10Gbit SFP+ links per X310. The host machine runs UHD 3.14.1=
.1
> using DPDK on ubuntu 18.04.
>
>
> When applying a CW (2.44 GHz) signal at the input of all 8 ports and
> running rx_samples_to_file for all channels, occasionally, the obtained I=
Q
> data does not contain the applied signal. This happens randomly, in about
> 50 % of the cases, only on the TwinRX RX1 channels and only on three out
> of four TwinRX daughterboards.
>
>
> I tried to debug the problem and it turns out that in those cases the LO1
> of the affected channels cannot be observed at 3.69 GHz as expected, but
> rather around 3.25 GHz.
>
> The UHD API, however, claims that everything is in best order when readin=
g
> back the LO values. Inserting delays after setting the frequency values a=
s
> recommended does not help, either.
> All LO sources are set to "internal".
>
>
> Any ideas what could be the issue here? Thanks!
>
>
> Regards,
> Daniel
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000cf8be5059b42429f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Daniel,<div><br></div><div>This is tricky. Not only have I=
 never seen this issue, but it sounds like it happens intermittently for yo=
u as well. If this is something you&#39;re still running=C2=A0into, I&#39;d=
 encourage you to email me at <a href=3D"mailto:support@ettus.com">support@=
ettus.com</a> directly. We can cover some additional=C2=A0troubleshooting a=
nd potentially get these boards sent in examination, if necessary.=C2=A0</d=
iv><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div>Best,</div><di=
v><br></div><div dir=3D"ltr">Sam Reiter=C2=A0<div>Ettus Research</div></div=
></div></div></div></div></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, Nov 7, 2019 at 12:51 PM Neunteufel, =
Daniel via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"gmail-m_-3618343704707278385WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m using two X310, eac=
h with two
<span class=3D"gmail-m_-3618343704707278385SpellE">TwinRX</span> daughterbo=
ards, connected to a host via two 10Gbit SFP+ links per X310. The host mach=
ine runs UHD 3.14.1.1 using DPDK on<span lang=3D"EN-US">=C2=A0ubuntu 18.04.=
</span><br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When applying a CW (<span lang=
=3D"EN-US">2.44 GHz</span>) signal at the input of all 8 ports and running =
rx_samples_to_file for all channels, occasionally, the obtained IQ data doe=
s not contain the applied
 signal. This happens randomly, in about 50 % of the cases, only<span lang=
=3D"EN-US">=C2=A0on the TwinRX RX1 channels=C2=A0and only=C2=A0on three out=
 of four TwinRX daughterboards.</span><br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tried to debug the problem an=
d it turns out that in=C2=A0those cases the LO1 of the affected channels ca=
nnot be observed at 3.69 GHz as expected, but rather around 3.25 GHz.<br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The UHD API, however, claims th=
at everything is in best order when reading back the LO values. Inserting d=
elays after setting the frequency values as recommended does not help, eith=
er.<br>
All LO sources are set to &quot;internal&quot;.<br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any=C2=A0ideas what=C2=A0could =
be the issue here? Thanks!<br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<br>
Daniel <br>
<br>
</span></p>
<p class=3D"MsoNormal"><br>
<span lang=3D"EN-US"></span></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000cf8be5059b42429f--


--===============7086573646688216901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7086573646688216901==--

