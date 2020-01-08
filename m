Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CAF134A4F
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 19:14:11 +0100 (CET)
Received: from [::1] (port=53360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipFqK-0000HI-PY; Wed, 08 Jan 2020 13:14:08 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:35654)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ipFqH-0000Dp-KB
 for USRP-users@lists.ettus.com; Wed, 08 Jan 2020 13:14:05 -0500
Received: by mail-qt1-f175.google.com with SMTP id e12so3574359qto.2
 for <USRP-users@lists.ettus.com>; Wed, 08 Jan 2020 10:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=aPkyY3Z176fLUvUKhGASNk3OgrPGXCw/1QMcqlC1560=;
 b=qtH2g/FAY6tOPj/Mq5a79lBvOotbbnrU7bVODQn5oSDoX3TEbRHU9vhg4WAowxYRw/
 PY0IGe//3S7IUJ2In9PectpT3deIT29DsqC/ekNfFtRE9VsCoIrCt7FoxRQAhaVDR3hX
 QW+BytYNzM8ww1HLdHyMZ2IkqjdVdcw+YAKjlT8XpFKJuUuqbJuXZZgwwe6nFYDR7KGs
 pwr+VuTHh/nZF4qtlAu7iIBWsXrcwXYVXH+9h3NMF86gI5EO6I+26mXTPNI/PwAJeqjc
 bFz+AUSewyWgwhUda15onbmVk3iM9KBPRQRFBbpVnApwMpOJdobpRp7u3tAHIplSqZyE
 SgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=aPkyY3Z176fLUvUKhGASNk3OgrPGXCw/1QMcqlC1560=;
 b=Tuk4dY1HgT1Hv0M7ljEfWy/XW4f/SMvcd0wVfWSNzllJgdngNVreKkONBtabBC2bXz
 ZPQmWEdTQ9kSfRy6iFRYxN1AhAxtTZ7zmMIabtO6E+vQWIgL07jLXqptCpaiUuxgq2fs
 JoW+VWEoC9oZFTkGhU0AFdHUmZfaOEYB4TjMOLebEVS7IGzlkhcmDdasM3IRs7ity3Wm
 hBzCEEF/WCI9RsF1iKIUS6urFO+E5VWTnYMZLqxdRyxqKGMO5mLhCfkrPj2bdtU73t96
 KjQGfbXa6eGCioeDtPFJ3IIzaXzzFx92Jp/r7S91Q+A+vW6XmR0qdEpaygmYCxn3bE1C
 bBBA==
X-Gm-Message-State: APjAAAUmNpxal31H/EA2MG7S95iaFUiQ782GNOJfHILsDlsNEpwNsdRa
 8hcaVarzX9Wr57skGIPuo4s=
X-Google-Smtp-Source: APXvYqwwZH+WAe73gZPHqKUezIuLD4P/EP6EsovThMWVlSs+QcueWr+WeWvi9A6SuF/QLk2INneSyA==
X-Received: by 2002:ac8:330e:: with SMTP id t14mr4809787qta.232.1578507205040; 
 Wed, 08 Jan 2020 10:13:25 -0800 (PST)
Received: from [192.168.0.198] ([24.146.32.18])
 by smtp.gmail.com with ESMTPSA id s91sm1928721qtd.50.2020.01.08.10.13.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 10:13:24 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 8 Jan 2020 13:13:23 -0500
Message-Id: <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
In-Reply-To: <1258262887.8487449.1578490158766@mail.yahoo.com>
To: voonna santosh <santu_voonna@yahoo.com>
X-Mailer: iPhone Mail (17C54)
Subject: Re: [USRP-users] tx_samples_from_file : Issue with repeat option
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8561321296997235423=="
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


--===============8561321296997235423==
Content-Type: multipart/alternative; boundary=Apple-Mail-631D9547-CB46-434F-84F6-510F14BA4AF1
Content-Transfer-Encoding: 7bit


--Apple-Mail-631D9547-CB46-434F-84F6-510F14BA4AF1
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Are you able to use a more recent UHD?

What device type?

Sent from my iPhone

> On Jan 8, 2020, at 8:30 AM, voonna santosh via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi There,
>    Good morning. I am experiencing an issue with tx_samples_from_file when=
 using option "--repeat". Everything looks alright when it TX the file, but o=
nce it reaches the end of the file, it prints S and nothing appears on analy=
zer soon after that.=20
>=20
> The command I am using: ./tx_samples_from_file --args addr=3D192.168.40.2 =
 --file /home/santoshvoonna/repo/test_files/test_file_SW_Samples_28G.bin   -=
-type short --spb 3640 --rate 50e6 --freq 60e6  --gain 0 --ant TX/RX --subde=
v A:0 --bw 40 --ref internal --delay 0 --repeat=20
>=20
> Git tag: release_003_010_001_000
>=20
>=20
> Thanks and Regards,
> Santosh
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-631D9547-CB46-434F-84F6-510F14BA4AF1
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Are you able to use a more recent UHD?<div>=
<br></div><div>What device type?<br><br><div dir=3D"ltr">Sent from my iPhone=
</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 8, 2020, at 8:30=
 AM, voonna santosh via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helv=
etica, Arial, sans-serif;font-size:16px;"><div dir=3D"ltr" data-setdir=3D"fa=
lse">Hi There,</div><div dir=3D"ltr" data-setdir=3D"false">&nbsp;&nbsp; Good=
 morning. I am experiencing an issue with <span>tx_samples_from_file when us=
ing option "--repeat". Everything looks alright when it TX the file, but onc=
e it reaches the end of the file, it prints S and nothing appears on analyze=
r soon after that. <br></span></div><div dir=3D"ltr" data-setdir=3D"false"><=
span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span>The comma=
nd I am using: <span>./tx_samples_from_file --args addr=3D192.168.40.2&nbsp;=
 --file /home/santoshvoonna/repo/test_files/test_file_SW_Samples_28G.bin&nbs=
p;&nbsp; --type short --spb 3640 --rate 50e6 --freq 60e6&nbsp; --gain 0 --an=
t TX/RX --subdev A:0 --bw 40 --ref internal --delay 0 --repeat <br></span></=
span><div><br></div><div dir=3D"ltr" data-setdir=3D"false">Git tag: <span>re=
lease_003_010_001_000</span><br></div><div><br></div><div><br></div><div dir=
=3D"ltr" data-setdir=3D"false">Thanks and Regards,</div><div dir=3D"ltr" dat=
a-setdir=3D"false">Santosh<br></div><span></span><br></div></div><span>_____=
__________________________________________</span><br><span>USRP-users mailin=
g list</span><br><span>USRP-users@lists.ettus.com</span><br><span>http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><br></div></b=
lockquote></div></body></html>=

--Apple-Mail-631D9547-CB46-434F-84F6-510F14BA4AF1--


--===============8561321296997235423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8561321296997235423==--

