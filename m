Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D0A3AA29B
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 19:45:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E6C3385231
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 13:45:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SqMg5oj9";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D0A9384A78
	for <USRP-users@lists.ettus.com>; Wed, 16 Jun 2021 13:44:33 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id j184so247283qkd.6
        for <USRP-users@lists.ettus.com>; Wed, 16 Jun 2021 10:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=qMLSdN4cUYTTE6hWrr7RYNQPPsBhcUbyk4SYII6w/fM=;
        b=SqMg5oj9FIEsLU8Gcah2gyl8xZFvYHITrqLDnI7fB7k4ht111LKlukaGxkdBbDGcdJ
         ngFT9TSa0Ci6tdMtjuu9KreXNkIW1caJ7ZB0hoMZS87/NgZybHkcRgVgTkwQkKjqs+Wr
         BsT87AQjr+lsfBnRAF++xJVo+nJnEnXCI5jSIq1X/QsUrufRRfWK5YZ9YD+qbv82BHa+
         9F3IGPXy7jsCcWWPNyFl2f8D00p5k3GdN/PXMgT2hoHSLfv8wrImRAgP1Yh6KMD+XuRF
         0pzjUwMy0Hl0ds4Iddp7AziOn2LYpMUuC5JzaSnT8XKVIO55oOK1mkIc/IPvlTFNd4jD
         SwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=qMLSdN4cUYTTE6hWrr7RYNQPPsBhcUbyk4SYII6w/fM=;
        b=PpFBMknu46pjL/WUEV8hiaPeCC1zvSUCihdTMfxcaVCjcQss7zcXNgPiMxflJkzyAR
         9Ul6nv03n8yOF2feQrw/EdZIQDPbOtZJps2EBUREOuIDxXP0SE+YZi2xXdEHOW/cA+YG
         HJilFAMXxqaRMpzMv2UCLfK4F8sKJr8pDcgKlLfaXsA8/VMHaeaGPy7MiP3uzeCNJAtN
         Tk7f8FClIzz71uNxF5iAxyw/FtEQOx3HViOU/glsA6TVGYYzZQotHlGycy3KoqI25Cre
         Hxifhhy6qwAdMbsPNm6LwK1tmw3+EuVQ1qzlSfGrSuiCiLgPbhjE/VJFrFDmJhljf7ne
         6ToQ==
X-Gm-Message-State: AOAM530Gc5JM2QKOsWvO0a46vBMIDKWOWbxGJjsZRtP9M03Hy7rWnP8A
	AahX3P19YvFJ0WwM2qC5EO+G5Fuu1Od54g==
X-Google-Smtp-Source: ABdhPJwQ34yv8itbdMG+WQiaYmWaqJUfQJuymnO0h0Ho0f8OE+ZI1+gHW/wyyH8icfuFyMUCA57ZRA==
X-Received: by 2002:a37:b7c1:: with SMTP id h184mr1253703qkf.65.1623865472784;
        Wed, 16 Jun 2021 10:44:32 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id m14sm1703695qti.12.2021.06.16.10.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 10:44:32 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 16 Jun 2021 13:44:31 -0400
Message-Id: <CCDC230C-80FB-4845-923C-A5138A0144BB@gmail.com>
References: <NtjmANHyQsfQc4DmyHKy3d3WOM83De97HMnMg2BxQ@lists.ettus.com>
In-Reply-To: <NtjmANHyQsfQc4DmyHKy3d3WOM83De97HMnMg2BxQ@lists.ettus.com>
To: paradis@kwesst.com
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: OMS2EMJTMDDYGHE47QHY3NDV76HM3GJ7
X-Message-ID-Hash: OMS2EMJTMDDYGHE47QHY3NDV76HM3GJ7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OMS2EMJTMDDYGHE47QHY3NDV76HM3GJ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3764379774937874283=="


--===============3764379774937874283==
Content-Type: multipart/alternative; boundary=Apple-Mail-0688A9A7-6348-495B-8423-01A8FFB72350
Content-Transfer-Encoding: 7bit


--Apple-Mail-0688A9A7-6348-495B-8423-01A8FFB72350
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Is your SBC Arm or X86? There=E2=80=99s no way libraries for
An X86 will run on an ARM.=20

Even among X86 there are incompatibilities like 64 vs 32 but libraries. In A=
RM land, it=E2=80=99s even worse, with different ARM architecture versions n=
ot having mutually-compatible libraries.=20



Sent from my iPhone

> On Jun 16, 2021, at 1:17 PM, paradis@kwesst.com wrote:
>=20
> =EF=BB=BF
> Hi everyone,
>=20
> In ubuntu=E2=80=99s package manager, the latest version of UHD is 3.15.
>=20
> For background, I=E2=80=99m running a laptop with Ubuntu 20.04 LTS, and bu=
ild UHD v4.0.0.0 from source and everything works find with my B210s.
>=20
> Now I=E2=80=99m trying to migrate to a Single-Board Computer, which is als=
o running Ubuntu 20.04 LTS, and build UHD from source isn=E2=80=99t really f=
easible.
>=20
> I tried following the instructions here:
>=20
> https://files.ettus.com/manual/page_install.html#install_linux
>=20
> To install from binaries, but it keeps giving an error about "libuhd003 pa=
ckage not found", and when it installs libuhd-dev, it's installing the 3.15 v=
ersions, not the 4.0 versions.
>=20
> I'm kind of dead in the water until I can get the UHD v4.0.0.0 on this SBC=
, but other than building from source there doesn't seem to be any way of do=
ing it, is that correct?
>=20
> Also, I tried just copying the uhd libs from my laptop to the SBC, but whe=
n I try to build and link my app, it says the libuhd.so is not compatible an=
d fails.
>=20
> Any help or information would be appreciated, thanks!
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-0688A9A7-6348-495B-8423-01A8FFB72350
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Is your SBC Arm or X86? There=E2=80=99s no w=
ay libraries for<div>An X86 will run on an ARM.&nbsp;</div><div><br></div><d=
iv>Even among X86 there are incompatibilities like 64 vs 32 but libraries. I=
n ARM land, it=E2=80=99s even worse, with different ARM architecture version=
s not having mutually-compatible libraries.&nbsp;</div><div><br></div><div><=
br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Jun 16, 2021, at 1:17 PM, paradis@kwesst.com wrote:<b=
r><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF=
<p>Hi everyone, </p><p>In ubuntu=E2=80=99s package manager, the latest versi=
on of UHD is 3.15.</p><p>For background, I=E2=80=99m running a laptop with U=
buntu 20.04 LTS, and build UHD v4.0.0.0 from source and everything works fin=
d with my B210s.</p><p>Now I=E2=80=99m trying to migrate to a Single-Board C=
omputer, which is also running Ubuntu 20.04 LTS, and build UHD from source i=
sn=E2=80=99t really feasible.</p><p>I tried following the instructions here:=
</p><p><a href=3D"https://files.ettus.com/manual/page_install.html#install_l=
inux">https://files.ettus.com/manual/page_install.html#install_linux</a></p>=
<p>To install from binaries, but it keeps giving an error about "libuhd003 p=
ackage not found", and when it installs libuhd-dev, it's installing the 3.15=
 versions, not the 4.0 versions.</p><p>I'm kind of dead in the water until I=
 can get the UHD v4.0.0.0 on this SBC, but other than building from source t=
here doesn't seem to be any way of doing it, is that correct?</p><p>Also, I t=
ried just copying the uhd libs from my laptop to the SBC, but when I try to b=
uild and link my app, it says the libuhd.so is not compatible and fails.</p>=
<p>Any help or information would be appreciated, thanks!</p>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-0688A9A7-6348-495B-8423-01A8FFB72350--

--===============3764379774937874283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3764379774937874283==--
