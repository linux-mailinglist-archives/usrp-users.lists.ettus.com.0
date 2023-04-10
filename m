Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E61A56DC8A0
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 17:39:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 99078384859
	for <lists+usrp-users@lfdr.de>; Mon, 10 Apr 2023 11:39:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681141195; bh=0PXGVHRqIGi4FwdQrUmDqh4uwCFfhSzB9ieUCJZTnog=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ah5+dC1c84x6mgFcb2nvY8fkEcbi6WI0FSsAGHLru4dIeKhcAGCXmQNS/ymBZ9uXY
	 s5h+6zyEztL7vdMzkl+SzQ5LjAkND4x6+s3QSR3/+QuVm0vR/0DFW/JoXf8ns3fqsX
	 FFzNRP/heVsXLz7AgGiodcBbLfzAh7KAhQVfdXH8kev6qofFUipaig6j3n2nfogXas
	 wME7+fw1CUBeiaQTA8yReNToSPIiSJLlLu7bKWgNkZMEdEW95VecBVFc3pCp8ffTPO
	 FL4uzlOJ3Lk5wyWBZTxlybObg/mCaKWsj/0aC/Iu0cGc2em/oxK9Mb84CmHDCDnsgD
	 DSVkps+SBocUQ==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id B2BA4384785
	for <USRP-users@lists.ettus.com>; Mon, 10 Apr 2023 11:39:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dHyUasNI";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id bt17so2246894qvb.7
        for <USRP-users@lists.ettus.com>; Mon, 10 Apr 2023 08:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681141163; x=1683733163;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tecUFk6oWL20jdXwM2YTqGIKoBSlP50VfzT2/sRsm4E=;
        b=dHyUasNIGnI5BMUQNDRVOKH3UPS2Wymzf8nAD+apVTKEa7h+RD2yUfVaoJ4QFGTQUe
         Ldz+7SOzouzr2xtB+yV6uUPqfDiab5lxyY+fQ9mKwp29bIM/+cZLlkeB6Gjs5crXuxU2
         RdJ5fJg+bJQOdYfa6OxjZbzucqpB+nH+kGhwLLwx4RXTr8I4XlNY7aXs/RGgweWaw9Zx
         jZLjuZt1w0hjN/o7ibrbYNj3E5CkOQgcNUdVSIG9MFFl9VZlRdh/WkNubcZJvmC+Ztyp
         850yAKAJtTsP4GJrsnhBk+4iBtxO0Vi3Fst+TOy/M0/Ax5aIB4BXxVwjZm31aXwukRP9
         YAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681141163; x=1683733163;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tecUFk6oWL20jdXwM2YTqGIKoBSlP50VfzT2/sRsm4E=;
        b=x/kr9kx8Aw9U0l6Mvjmg65q549+VdFwGaEDvt11aHVVnz2jvLdQCHIHQoWz6ZDKc36
         qBz9YEqX2rKpORBTYb/8nqCVm1Z9di2Su2CdMZvIYdv+X2cxwqvBttRdso6vgm/9bu8o
         BIQNAOUT0uhuqOOvsaMn2Lb4cL+Mp4um4xn5JVmuYFEUJVoD6ZuD+kOhfFrY85K4hG9B
         o9rgahySxKRK9assafprmwYTL6m5Wr1JmZPx/E8Ov9y0wry1lHCRPB70/4bllkli/xDl
         DNvu5DSUN0ZoXrglasDKq7gKU2uxHs8oEWDxjZFI1AFZjPyqu5ad5XWOEgPqkqNDv99a
         nudg==
X-Gm-Message-State: AAQBX9chVvaHOQz49an2SyV47tsMHQvPpu928DzWs7CqPYDHFn3Iemky
	5cb1b439sd0OeMMR0FAgaSJigJVzoW4=
X-Google-Smtp-Source: AKy350Z2gUPSuzsts7ZfaIND6OaWTlyarAUXpo+d3n3ruQNuCLAJP/3l0uXobuu9z7qLze2aAZk5oA==
X-Received: by 2002:a05:6214:c43:b0:5ba:168d:d3fc with SMTP id r3-20020a0562140c4300b005ba168dd3fcmr1643313qvj.4.1681141163027;
        Mon, 10 Apr 2023 08:39:23 -0700 (PDT)
Received: from smtpclient.apple (bras-base-otwaon0812w-grc-27-76-71-35-146.dsl.bell.ca. [76.71.35.146])
        by smtp.gmail.com with ESMTPSA id cn19-20020ad44a73000000b005e88377d97asm840280qvb.88.2023.04.10.08.39.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 08:39:22 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 10 Apr 2023 11:39:11 -0400
Message-Id: <15820636-B0CB-4B9D-98DA-76820042D215@gmail.com>
References: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
In-Reply-To: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
To: "Shenk, Trey E" <trey.shenk@pnnl.gov>
X-Mailer: iPhone Mail (20B101)
Message-ID-Hash: 266L3LGYNTTJ5KKEYG6CZKLYY2UNLELH
X-Message-ID-Hash: 266L3LGYNTTJ5KKEYG6CZKLYY2UNLELH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Harmonic Distortion with B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/266L3LGYNTTJ5KKEYG6CZKLYY2UNLELH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7136954443862372831=="


--===============7136954443862372831==
Content-Type: multipart/alternative; boundary=Apple-Mail-2EB8CB46-BFF0-4512-AAB9-4828B311B46C
Content-Transfer-Encoding: 7bit


--Apple-Mail-2EB8CB46-BFF0-4512-AAB9-4828B311B46C
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Turn down the RF gain a bit as well as the baseband amplitude. Does this mak=
e any difference?



Sent from my iPhone

> On Apr 10, 2023, at 9:41 AM, Shenk, Trey E via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> I'm using a B205mini to transmit signals. When transmitting, I can see cop=
ies of the SOI at harmonics of the center frequency. I ran some measurements=
 of total harmonic distortion, and found it to range from 39% with a 100MHz t=
o 23% with a 1GHz carrier. The second harmonic is <-50dBc, but the third har=
monic is usually around -10dBc.
>=20
> My main concern is for the lower frequency carriers, like 100MHz, because m=
ultiple harmonics will show up on a spectrum analyzer set to a wideband. I'v=
e looked at putting an RF filter at the output, but I need the system to be a=
ble to switch transmit center frequencies in a range from 100MHz to 5GHz.
>=20
> Is it possible to reduce the harmonics by some hardware setting (driving w=
ith gnruadio)?=20
>=20
> Thanks,
> Trey
>=20
> =20
> <carrier_freqsweep_fc0200M_gain55.png>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-2EB8CB46-BFF0-4512-AAB9-4828B311B46C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Turn down the RF gain a bit as well as the b=
aseband amplitude. Does this make any difference?<div><br></div><div><br><br=
><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Apr 10, 2023, at 9:41 AM, Shenk, Trey E via USRP-users &lt;u=
srp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style>@font-face { font-family: "Cambria Math"; }
@font-face { font-family: Calibri; }
@font-face { font-family: "Segoe UI"; }
p.MsoNormal, li.MsoNormal, div.MsoNormal { margin: 0in; font-size: 11pt; fon=
t-family: Calibri, sans-serif; }
span.EmailStyle17 { font-family: Calibri, sans-serif; color: windowtext; }
.MsoChpDefault { font-family: Calibri, sans-serif; }
@page WordSection1 { size: 8.5in 11in; margin: 1in; }
div.WordSection1 { page: WordSection1; }</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p style=3D"background:white"><span style=3D"font-size:10.5pt;font-family:&q=
uot;Segoe UI&quot;,sans-serif;color:#353C41">I'm using a B205mini to transmi=
t signals. When transmitting, I can see copies of the SOI at harmonics of th=
e center frequency. I ran some measurements
 of total harmonic distortion, and found it to range from 39% with a 100MHz t=
o 23% with a 1GHz carrier.&nbsp;The second harmonic is &lt;-50dBc, but the t=
hird harmonic is usually around -10dBc.
<o:p></o:p></span></p>
<p style=3D"background:white;box-sizing: border-box;font-variant-ligatures: n=
ormal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webki=
t-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#353C41">My main concern is for the lower frequency carriers, like 100=
MHz, because multiple harmonics will show up on a spectrum analyzer set to a=
 wideband. I've looked at putting an RF filter
 at the output, but I need the system to be able to switch transmit center f=
requencies in a range from 100MHz to 5GHz.<o:p></o:p></span></p>
<p style=3D"background:white;box-sizing: border-box;font-variant-ligatures: n=
ormal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webki=
t-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#353C41">Is it possible to reduce the harmonics by some hardware setti=
ng (driving with gnruadio)?&nbsp;<o:p></o:p></span></p>
<p style=3D"background:white;box-sizing: border-box;font-variant-ligatures: n=
ormal;font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webki=
t-text-stroke-width: 0px;text-decoration-thickness: initial;text-decoration-=
style: initial;text-decoration-color: initial;word-spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif;=
color:#353C41">Thanks,<br>
Trey<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>


<div>&lt;carrier_freqsweep_fc0200M_gain55.png&gt;</div><span>_______________=
________________________________</span><br><span>USRP-users mailing list -- u=
srp-users@lists.ettus.com</span><br><span>To unsubscribe send an email to us=
rp-users-leave@lists.ettus.com</span><br></div></blockquote></div></body></h=
tml>=

--Apple-Mail-2EB8CB46-BFF0-4512-AAB9-4828B311B46C--

--===============7136954443862372831==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7136954443862372831==--
