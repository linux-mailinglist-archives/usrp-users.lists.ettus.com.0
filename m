Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 513214BD07B
	for <lists+usrp-users@lfdr.de>; Sun, 20 Feb 2022 18:54:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01B603848F0
	for <lists+usrp-users@lfdr.de>; Sun, 20 Feb 2022 12:54:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lSn6ULon";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B5403848F0
	for <USRP-users@lists.ettus.com>; Sun, 20 Feb 2022 12:53:44 -0500 (EST)
Received: by mail-qv1-f45.google.com with SMTP id n6so26253400qvk.13
        for <USRP-users@lists.ettus.com>; Sun, 20 Feb 2022 09:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=si3wRymUbVMj6LcMxHX6VwIOrQBHE52SyTTvFznl/U8=;
        b=lSn6ULonBUluY+7aJbd+MFVJUXlKJvQER9HLFmgXKIEJJrAxi/YfcOM8IdIXRu+Tzp
         PrU6rkHFoEkZXAjMPVs4JL6RDlyGBat2E6F5wHZO2KgsKnrzeUQPrXw38NHGH1MTP4X/
         8X9xNsR1uZctSrIrlrC51y38aKeWcGUMvw/Wz5kzbeGn/H5aYYVl6qGiN9CY+N9NmakG
         ljpF2lTLBwewnHdfesJ6r8Tm9bfn30sE8vKfxEtSk+BqIVnKce4a4Zx31McERj5W8Zcb
         7XEr3o0i2aPOBlOo5Vy8F1DFf20zJG+3OCNlMD/HY3G2GfxOf+1M63OTVIbwqHK3qYNj
         KSqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=si3wRymUbVMj6LcMxHX6VwIOrQBHE52SyTTvFznl/U8=;
        b=g02BXEKIPOvLNIKsV7MBZ7jJUOpdogxohPwJry44jtc6k0ASjiMpIXICmBAtT/fsvL
         dmI1VBsCFaMoT0d1chz+EXA+rV5oT8YBQyOhDhvjQQPBZrsV57szkwe35hIplT7QL2oa
         kTmBkIfIpEuSTrfgstp+hpRdF3HjYuPLSTH5w/amu2yTpIe3fDC0dbE6lXz9WKjzPEbO
         R0BX9amhnX39wHiRJEG/GDS+aS11fmK9Cq2NViTVpH6vd7k83KcdJ3CC+idIrIGdKMK+
         mFNmcaQVI+PLDJz0RuQmp0PkdeqIJQ8Osm77WAENYdVhCus8+hHrqQaQ4XWR5zLzZaRL
         cqNA==
X-Gm-Message-State: AOAM532DhvXawGmv+V8oKG+x2xwFfq4P2oFi9stLgU6QPMw/ELmsyEAt
	aWQi72v+bkZ6OLDEbBdqCJg=
X-Google-Smtp-Source: ABdhPJy1zqhWv0kiPnzF0y2DtNmGDFnhlz6WXj+AsirRzo4PcaJHYyOp5EHK37/2670NCbvRUVpYqw==
X-Received: by 2002:ad4:5849:0:b0:42d:517:dcab with SMTP id de9-20020ad45849000000b0042d0517dcabmr12743934qvb.15.1645379623743;
        Sun, 20 Feb 2022 09:53:43 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id c3sm21884832qkp.39.2022.02.20.09.53.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Feb 2022 09:53:43 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 20 Feb 2022 12:53:42 -0500
Message-Id: <A67785BA-3FE3-41A7-AA10-902E015204BF@gmail.com>
References: <TYCP286MB09911415D343ED9C49E64CEAFD399@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYCP286MB09911415D343ED9C49E64CEAFD399@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
To: pro jason <jason_proj@outlook.com>
X-Mailer: iPhone Mail (19D52)
Message-ID-Hash: S3X5XW4TMUTTBHOS3Q6WSISNATTYUXF5
X-Message-ID-Hash: S3X5XW4TMUTTBHOS3Q6WSISNATTYUXF5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 with UBX-160 and TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S3X5XW4TMUTTBHOS3Q6WSISNATTYUXF5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4699204681121143370=="


--===============4699204681121143370==
Content-Type: multipart/alternative; boundary=Apple-Mail-9505C660-DAE3-42D3-A06F-196336480D66
Content-Transfer-Encoding: 7bit


--Apple-Mail-9505C660-DAE3-42D3-A06F-196336480D66
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I believe that recent versions do, but older versions, due to the clocking r=
equirements of the TwinRx did not.=20

Sent from my iPhone

> On Feb 20, 2022, at 12:43 PM, pro jason <jason_proj@outlook.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> We plan to use a x310 with a UBX-160 and a TwinRX  to realize the system o=
f one TX channel and two RX channels. The TX channel is provided by UBX and t=
he two RX channels are provided by TwinRX. Does UHD driver support this conf=
iguration?
>=20
> Best regards,
> Jason
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-9505C660-DAE3-42D3-A06F-196336480D66
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I believe that recent versions do, but olde=
r versions, due to the clocking requirements of the TwinRx did not.&nbsp;<br=
><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockqu=
ote type=3D"cite">On Feb 20, 2022, at 12:43 PM, pro jason &lt;jason_proj@out=
look.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div=
 dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Hi all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
We plan to use a x310 with a UBX-160 and a TwinRX&nbsp; to realize the syste=
m of one TX channel and two RX channels. The TX
<span style=3D"background-color:rgb(255, 255, 255);display:inline !important=
">channel</span> is provided by UBX and the two RX
<span style=3D"background-color:rgb(255, 255, 255);display:inline !important=
">channels</span> are provided by
<span style=3D"background-color:rgb(255, 255, 255);display:inline !important=
">TwinRX</span>. Does UHD driver support this configuration?<br>
<span></span><span></span><span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Jason
<div></div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-9505C660-DAE3-42D3-A06F-196336480D66--

--===============4699204681121143370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4699204681121143370==--
