Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 417A526237E
	for <lists+usrp-users@lfdr.de>; Wed,  9 Sep 2020 01:17:16 +0200 (CEST)
Received: from [::1] (port=54684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFmrO-0007g2-5x; Tue, 08 Sep 2020 19:17:10 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:41527)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kFmrJ-0006vd-QK
 for USRP-users@lists.ettus.com; Tue, 08 Sep 2020 19:17:05 -0400
Received: by mail-qk1-f171.google.com with SMTP id g72so794710qke.8
 for <USRP-users@lists.ettus.com>; Tue, 08 Sep 2020 16:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=wBRe7TkVm5cT5Yw9B2rURmPfNHQ63HBgNj2cukv2kdE=;
 b=lILBh+WIF6c5VwlkVNQiTtUqlI6tLNSh3ls0WavRoDYwpr4qPE+c13ALzDAGKVHzoI
 xFhhU3pWPe0C02F+OUx3kbAyvaiDgVK1yZ78TyO5C3vkOgsPS6h4RoCF/KPe0mDT7vXy
 NWrdVt+9VH27nhKf41I/DP6y2j4GNOcD/145H3C4ZJReTT4pb6KLSWqvqz8V5m77JH9J
 /883Txyih+Q0lVCzs0Nan/g7YDDC6h9NQJBi2ONqZVMUTRalxj1CVJIW8e1amY7hoCou
 LrYwnZdN3NH70Ajp0asvGrUQtzYa5b7Mqnu3RuRyzR9QlcQnS/eJmF14gNbedJuzQjWA
 ELrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=wBRe7TkVm5cT5Yw9B2rURmPfNHQ63HBgNj2cukv2kdE=;
 b=n77Nye6jVhzvIFy+HEOoAR0D0GWh/sphs5D01g2zJ8BXMh7jh5sMowlMXSgnatFruX
 XKoY9tcdMe7c5ELzTAph9kLX2NWzoW7D/+eZv5/vfTqLYyKTWhM6itXv7PXbE+xYqDBF
 uKBbwv7eBJdGnioORn7Mz/F6aDzr52P8BqHmbBKbAO4Q+EVGtiLp05QWrAcD9UMJ/9r4
 8jSEPXGATH/E/+N32bsRYWZXjyrjS4RjQ8N7qlmbc3tee3oxLTAyzLfJZa2baQLgWntZ
 H18nhqLWSsk4BYGnYxOGd6ixqYwOeFpPK5incSJavAAssc1tpBshe9fIu254LFD89xLr
 Lfhg==
X-Gm-Message-State: AOAM531vUVoEZxlb3w33RKhnRzfciyLGkn/Qflb4q9zBCzbVTy1uqU05
 IrqV2fc7fS18MUhGxw2aIF8=
X-Google-Smtp-Source: ABdhPJz03bECLsuBpbH1JwSAS3xJvpxaoxvpu1oRfWk3nHxSqkxQJo567CB+8pgfCtwpj8Kk0xFfxQ==
X-Received: by 2002:a37:6805:: with SMTP id d5mr878969qkc.116.1599606985121;
 Tue, 08 Sep 2020 16:16:25 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id x126sm757986qka.91.2020.09.08.16.16.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 16:16:24 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 8 Sep 2020 19:16:23 -0400
Message-Id: <67756EB6-9B3C-4C53-BE41-4F856F9DCAA7@gmail.com>
References: <BM1PR0101MB149191EDB483E8E0D9393EDB88290@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR0101MB149191EDB483E8E0D9393EDB88290@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
To: Snehasish Kar <snehasish.cse@live.com>
X-Mailer: iPhone Mail (17G80)
Subject: Re: [USRP-users] USRP sensitivity
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7156235110275659956=="
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


--===============7156235110275659956==
Content-Type: multipart/alternative; boundary=Apple-Mail-28B97CC7-DF17-40C7-87AA-769ED234BC2E
Content-Transfer-Encoding: 7bit


--Apple-Mail-28B97CC7-DF17-40C7-87AA-769ED234BC2E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You did need to use a known calibration source.=20

You=E2=80=99d need to build a calibration table over your expected operating=
 parameter space, including:

Frequency
Gain
Sample rate
Analog bandwidth setting (if applicable)

The I/Q samples will be linearly proportional over a goodly chunk of the inp=
ut dynamic range. They will differ from linear at the bottom and top of the r=
ange.=20

Lab instruments line spectrum analysers typically have this done at the fact=
ory, using expensive calibration sources. They must be recalibrated regularl=
y.


Sent from my iPhone

> On Sep 8, 2020, at 5:08 PM, Snehasish Kar via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello Marcus
>=20
> Just had a query in this context, how do we calculate the Power or Receive=
d signal strength then from the IQ samples.
>=20
> Regards=20
> Snehasish
>=20
> Get Outlook for iOS
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Martin B=
raun via USRP-users <usrp-users@lists.ettus.com>
> Sent: Tuesday, September 8, 2020 8:53:57 PM
> To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] USRP sensitivity
> =20
> On 9/5/20 4:59 PM, Koyel Das (Vehere) via USRP-users wrote:
> > NI told me magnitude of IQ samples received in usrp is the voltage in vo=
lts.
>=20
> Can you point us to where you got that information?
>=20
> For the list archives: UHD 4.0 will have the ability to map digital
> signals to power levels for X3x0 and B200 series, if you can provide
> your own calibrated gear.
>=20
> --M
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-28B97CC7-DF17-40C7-87AA-769ED234BC2E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You did need to use a known calibration sou=
rce.&nbsp;<div><br></div><div>You=E2=80=99d need to build a calibration tabl=
e over your expected operating parameter space, including:</div><div><br></d=
iv><div>Frequency</div><div>Gain</div><div>Sample rate</div><div>Analog band=
width setting (if applicable)</div><div><br></div><div>The I/Q samples will b=
e linearly proportional over a goodly chunk of the input dynamic range. They=
 will differ from linear at the bottom and top of the range.&nbsp;</div><div=
><br></div><div>Lab instruments line spectrum analysers typically have this d=
one at the factory, using expensive calibration sources. They must be recali=
brated regularly.</div><div><br></div><div><br><div dir=3D"ltr">Sent from my=
 iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Sep 8, 2020, a=
t 5:08 PM, Snehasish Kar via USRP-users &lt;usrp-users@lists.ettus.com&gt; w=
rote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=



<div dir=3D"ltr">
<div></div>
<div>
<div>
<div style=3D"direction: ltr;">Hello Marcus</div>
</div>
<div style=3D"direction: ltr;" dir=3D"ltr"><br>
</div>
<div style=3D"direction: ltr;" dir=3D"ltr">Just had a query in this context,=
 how do we calculate the Power or Received signal strength then from the IQ s=
amples.</div>
<div style=3D"direction: ltr;" dir=3D"ltr"><br>
</div>
<div style=3D"direction: ltr;" dir=3D"ltr">Regards&nbsp;</div>
<div style=3D"direction: ltr;" dir=3D"ltr">Snehasish</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature">Get <a href=3D"https://aka.ms/o0ukef=
">Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-use=
rs-bounces@lists.ettus.com&gt; on behalf of Martin Braun via USRP-users &lt;=
usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, September 8, 2020 8:53:57 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>=

<b>Subject:</b> Re: [USRP-users] USRP sensitivity</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;"=
>
<div class=3D"PlainText">On 9/5/20 4:59 PM, Koyel Das (Vehere) via USRP-user=
s wrote:<br>
&gt; NI told me magnitude of IQ samples received in usrp is the voltage in v=
olts.<br>
<br>
Can you point us to where you got that information?<br>
<br>
For the list archives: UHD 4.0 will have the ability to map digital<br>
signals to power levels for X3x0 and B200 series, if you can provide<br>
your own calibrated gear.<br>
<br>
--M<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br=
>
</div>
</span></font></div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-28B97CC7-DF17-40C7-87AA-769ED234BC2E--


--===============7156235110275659956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7156235110275659956==--

