Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ED126B9BE
	for <lists+usrp-users@lfdr.de>; Wed, 16 Sep 2020 04:15:57 +0200 (CEST)
Received: from [::1] (port=44654 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIMzE-0006Gx-OF; Tue, 15 Sep 2020 22:15:56 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:43233)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kIMzB-000687-4v
 for USRP-users@lists.ettus.com; Tue, 15 Sep 2020 22:15:53 -0400
Received: by mail-qt1-f170.google.com with SMTP id g3so4960297qtq.10
 for <USRP-users@lists.ettus.com>; Tue, 15 Sep 2020 19:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=1BZslvkbVtBLcFJO9x4XkQESxxf3kuCgcuwbYhlNx5o=;
 b=nsZL6EPCtTrjuxW39qQ30SN/OVfWvV39cdI4xERI0WMwJgRjKLz2AQorNnKTLqwJGq
 AW1tRUcFQxvU9TMxy6aGzWhOloADNhpIjxBamKpfj6er7vKIBCVnb/2vbouu1RfWAj0S
 jVApu3i936NTMPDW366zeEAPDnQ2kUXtfkl0MtqqznhwIJuHaGQpDerGz/r5eNyna8Mp
 xPlzRz5p1h05Zr8DLFKXqwAmUId0qlsfOS2l7eRK45l+jCXTAkT/W1Ew6fy+1TfmlIkv
 lPqSCEw9oDe/GjL17PQr30WqDPXawvTD35PFQflwcgEeCXmb8eyEDT2EU0lV/FR00MfJ
 zXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=1BZslvkbVtBLcFJO9x4XkQESxxf3kuCgcuwbYhlNx5o=;
 b=Bi8n+SI9wmdO2if+1IluHAN255k3cBPl5UVm7LU19EHojHcp3iC92Tr7R+AGSU6xis
 ZCvMjwBmM8iHNshtN52Evmrq2OjxJoIu447RleLmGAR9zWsDleAUXPhJoDT1YtXXY7Xn
 NgENKM9PAGTcQBe0hnQA0GZyL9veVXYb2DNdWN9U42+19c5aQHRQ1HWPa9q0RLCWw3pD
 LUEX2hdELEsryEOtpijHMDQh/BHmjCNbpYu5wqbQVvrPMsnvbeATcGFy5Bnc9olBQqN5
 KYJG+moB15hB9iIwSmL/P0m6pFBI6f89FI6v2ul2hu8Vt9wDiJ9hbyQgtVRcZQvg2q61
 prqQ==
X-Gm-Message-State: AOAM532vNOBEvZB+4F0+dIdwpWfekKSL1i3UeaDtuGwh7Wwr0bZ/x8tC
 uSf3EMQker5l4jEHjMMpki8=
X-Google-Smtp-Source: ABdhPJxkg1Duat5jR2Lnpv5h337eQJy0jPjvQOEwN5BwioN7I1x1UWc+11pz6gZFMSOlBCsDSQx6Mg==
X-Received: by 2002:ac8:31d4:: with SMTP id i20mr21612616qte.179.1600222512540; 
 Tue, 15 Sep 2020 19:15:12 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id e90sm18173857qtd.4.2020.09.15.19.15.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Sep 2020 19:15:12 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 15 Sep 2020 22:15:11 -0400
Message-Id: <10D37CD6-BF5C-4542-BA82-B580AD65F260@gmail.com>
References: <BM1PR01MB2577AAF159C707359EF8716C90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB2577AAF159C707359EF8716C90210@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
X-Mailer: iPhone Mail (17H35)
Subject: Re: [USRP-users] 100 MSps in usrp 2955
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
Content-Type: multipart/mixed; boundary="===============4241840393743286866=="
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


--===============4241840393743286866==
Content-Type: multipart/alternative; boundary=Apple-Mail-032E6182-3C51-4447-8FD4-4F8B9AA252A6
Content-Transfer-Encoding: 7bit


--Apple-Mail-032E6182-3C51-4447-8FD4-4F8B9AA252A6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The clock architecture of the daughtercards in the 2955 restricts it to 100M=
sps or integer fractions thereof.=20



Sent from my iPhone

> On Sep 15, 2020, at 10:11 PM, Koyel Das (Vehere) via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> I read in the following link that it can be 120 MHz, 184.32 MHz or 200 MHz=
. Also attached the snapshot.
>=20
> http://ettus.80997.x6.nabble.com/USRP-users-X300-sample-rate-td8647.html
> <Image.jpeg>
>=20
>=20
> Get Outlook for iOS
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Martin B=
raun via USRP-users <usrp-users@lists.ettus.com>
> Sent: Tuesday, September 15, 2020 7:04:25 PM
> To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] 100 MSps in usrp 2955
> =20
> On 9/15/20 3:19 PM, Martin Braun wrote:
> > On 9/15/20 2:14 PM, Koyel Das (Vehere) via USRP-users wrote:
> >> Hi,
> >>
> >> When we set sample rate at 100 MSps in usrp 2955, is the actual sample
> >> rate 100 MSps only or 128 MSps?
> >=20
> > This USRP can do 100 Msps, 200 Msps, or 184.32 MHz. It can't do 122.88
> > or 128 Msps.
>=20
> ...minor correction: The 2955 (with the TwinRX boards) can do 100 MHz
> and integer fractions thereof. Not 184.32 or 200 Msps.
>=20
> --M
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-032E6182-3C51-4447-8FD4-4F8B9AA252A6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The clock architecture of the daughtercards=
 in the 2955 restricts it to 100Msps or integer fractions thereof.&nbsp;<div=
><br></div><div><br><div><br><div dir=3D"ltr">Sent from my iPhone</div><div d=
ir=3D"ltr"><br><blockquote type=3D"cite">On Sep 15, 2020, at 10:11 PM, Koyel=
 Das (Vehere) via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><b=
r></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=



<div dir=3D"ltr">
<div></div>
<div>
<div>I read in the following link that it can be 120 MHz, 184.32 MHz or 200 M=
Hz. Also attached the snapshot.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-X300=
-sample-rate-td8647.html">http://ettus.80997.x6.nabble.com/USRP-users-X300-s=
ample-rate-td8647.html<div>&lt;Image.jpeg&gt;</div></a><br>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">G=
et <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-use=
rs-bounces@lists.ettus.com&gt; on behalf of Martin Braun via USRP-users &lt;=
usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, September 15, 2020 7:04:25 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>=

<b>Subject:</b> Re: [USRP-users] 100 MSps in usrp 2955</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;"=
>
<div class=3D"PlainText">On 9/15/20 3:19 PM, Martin Braun wrote:<br>
&gt; On 9/15/20 2:14 PM, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; When we set sample rate at 100 MSps in usrp 2955, is the actual sam=
ple<br>
&gt;&gt; rate 100 MSps only or 128 MSps?<br>
&gt; <br>
&gt; This USRP can do 100 Msps, 200 Msps, or 184.32 MHz. It can't do 122.88<=
br>
&gt; or 128 Msps.<br>
<br>
...minor correction: The 2955 (with the TwinRX boards) can do 100 MHz<br>
and integer fractions thereof. Not 184.32 or 200 Msps.<br>
<br>
--M<br>
<br>
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
r></div></blockquote></div></div></body></html>=

--Apple-Mail-032E6182-3C51-4447-8FD4-4F8B9AA252A6--


--===============4241840393743286866==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4241840393743286866==--

