Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC05B694B98
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 16:48:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFA66383F38
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 10:48:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676303311; bh=7xmjH73li8fz5ixFzdIt9eJ1DJAPzwXq7Z04gOpuRiU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=mEMoVPrQu/Bl0ZNjHM4r3ZPi/tq4C9N/u6irIVjSKrhkceH7+su0XWJRJG80crOcY
	 CghXz3KGrPilWAP+u9iRnjsJpRx3UdwSQ+UaUEmyyMYnRc9tHSlu1tzVxxYxqCvXui
	 O30AAQJ7hUUGLeONa+WaPmulyc7c9A06kXPmzb+wez0K2IGVr+ZU85p5D7o36azN24
	 NmlXfPP4CueeDWf0WAVPn5QMAeE7hIF517WkNnbPkKROdvG1o/bxahb6J8oYG5ho+9
	 y4JgyL7A9TfaUlvSH8lHHCl6OdFrQ5MwreWCbI4HZ0KofPc9oM2oiEaaaX0MMirk9v
	 cyvscRbZhlVoQ==
Received: from mail-oa1-f100.google.com (mail-oa1-f100.google.com [209.85.160.100])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A278383F38
	for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 10:48:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gotenna.com header.i=@gotenna.com header.b="Gz18l6sJ";
	dkim-atps=neutral
Received: by mail-oa1-f100.google.com with SMTP id 586e51a60fabf-16aa71c1600so15589727fac.11
        for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 07:48:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=83W7qwgTdxlojt5LvPt+xQ7yXJh8WYVc5bqpaErW5f4=;
        b=sRyPSNpZg0mWBncLleItojgH2P9hFzxYD8fEYwUursvd7ZZaOpcVy5mdV7LCpv5mfA
         Sjnq6id+wt+ZiWzuFbY+d05fe1scmYDlJa1ufsPetYo+fbDwLo6GIR3BSFHzxqRYb39N
         18/0yzRxxD2KgcrI59bCIK10PyIqyGAtiec5DdYHaJZBLfp5OtYpe/61KifpM78WtJcu
         tiqpnGQWEn9/lODwErHhulX3xzMwrFs47A8FKyJzeUwExulLutp+mWmZyaa01fCUIfd2
         MjkbfdOyMlaPoQDADf4dtXObNhCUZGrlmWJlof3NwKzmZUQU2SP/j4B7l/jXTb3W8P4d
         1V+A==
X-Gm-Message-State: AO0yUKX5Kh0q+GmVSEc3FhGpmbR8/w8RgN+6QoBdF/5KRk0aWQNbikS7
	WQ/ettZMDJKB7EsRu60PfUcrAKvm4t83n1E0jmMrFlW6g0rm5LR1wPA=
X-Google-Smtp-Source: AK7set9f/cDk/s32hplJFu44SiceXXzArwFpJ3lW1SxutSC9gy1j8qZ6uC1tE6bQy1oAQmngWpKBJaGquUUQ
X-Received: by 2002:a05:6870:ea89:b0:14c:7959:8c2e with SMTP id s9-20020a056870ea8900b0014c79598c2emr9105197oap.2.1676303304324;
        Mon, 13 Feb 2023 07:48:24 -0800 (PST)
Received: from us2.smtp.exclaimer.net (us2.smtp.exclaimer.net. [104.209.35.28])
        by smtp-relay.gmail.com with ESMTPS id t18-20020a056870e75200b0016deead247csm230764oak.12.2023.02.13.07.48.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Feb 2023 07:48:24 -0800 (PST)
X-Relaying-Domain: gotenna.com
Received: from mail-pj1-f72.google.com (209.85.216.72) by
	 us2.smtp.exclaimer.net (104.209.35.28) with Exclaimer Signature Manager
	 ESMTP Proxy us2.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA1); Mon, 13 Feb 2023 15:48:23 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 13157247
X-ExclaimerImprintLatency: 1099346
X-ExclaimerImprintAction: 4cd32000814648b58669f1c89415ba89
Received: by mail-pj1-f72.google.com with SMTP id y4-20020a17090a2b4400b002310ecae757so8947811pjc.1
        for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 07:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gotenna.com; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=83W7qwgTdxlojt5LvPt+xQ7yXJh8WYVc5bqpaErW5f4=;
        b=Gz18l6sJfoZwndghxFx2sR1y+01E/1DwH4q2kgpemaunP1y/i2AqqRWTUJo3FOpNVt
         zRwDfi70Q80GMQyq64fxwmX3e5KvifJtla9MxqWMQi0zDDCIqoB1XoS2tz5QYHCtfbuN
         HnuOkBaquQsNGuIwPbPPC85selzYGPe+Bz+hc30Agz4/Pvg09D4sk50tNeRRGEcETDuL
         9yYQZnI3DuLQeXRlFCGkJ8pqAVuMrywBtNfWFpADEjJKVe9QwR1v+/dh+I2YeA+Fk1cq
         bFhJYVHRNGbofdO2SYmIRr1XHmjPUk+SK9LfLquQRF2inMJX+grqV6uayq+IqfbZ2N0b
         i+2A==
X-Received: by 2002:a63:3e01:0:b0:4fb:c63e:ec4d with SMTP id l1-20020a633e01000000b004fbc63eec4dmr332762pga.110.1676303302125;
        Mon, 13 Feb 2023 07:48:22 -0800 (PST)
X-Received: by 2002:a63:3e01:0:b0:4fb:c63e:ec4d with SMTP id
 l1-20020a633e01000000b004fbc63eec4dmr332761pga.110.1676303301872; Mon, 13 Feb
 2023 07:48:21 -0800 (PST)
MIME-Version: 1.0
From: Maxim Belotserkovsky <maxim@gotenna.com>
Date: Mon, 13 Feb 2023 09:48:08 -0600
Message-ID: <CA+7S2fZ8Zn-eAWGeM-V_8Ns=LbXV-X0UpurpbjXut9NDE0KFzw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZRFWT6VJPRJZ56O32GQCRONQDARIB5MF
X-Message-ID-Hash: ZRFWT6VJPRJZ56O32GQCRONQDARIB5MF
X-MailFrom: maxim@gotenna.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question about using E-series radio in Windows under WSL
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZRFWT6VJPRJZ56O32GQCRONQDARIB5MF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0339522316475625523=="

--===============0339522316475625523==
Content-Type: multipart/alternative; boundary="000000000000d8286505f496c6b6"

--000000000000d8286505f496c6b6
Content-Type: text/plain; charset="UTF-8"

Have plans to take a GR flowgraff and port the design to the on-board FPGA
in one of the Ettus product (most likely E320). Currently, the GR flowgraff
has been developed inside a Docker desktop that uses WSL under windows. The
concern is that it may be non-trivial/impossible to use RFNoC to
incorporate HW acceleration because communication from GNU flowgraph to
FPGA and back via UHD is not supported. So far have been unable to find
clear answers on Ettus site etc. Any comments? Thanks

-- 
Maxim Belotserkovsky
maxim@gotenna.com
<https://gotenna.com/>

--000000000000d8286505f496c6b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have plans to take a GR flowgraff and port the design to t=
he on-board FPGA in one of the Ettus product (most likely E320). Currently,=
 the GR flowgraff has been developed inside a Docker desktop that uses WSL =
under windows. The concern is that it may be non-trivial/impossible to use =
RFNoC to incorporate HW acceleration because communication from GNU flowgra=
ph to FPGA and back via UHD is not supported. So far have been unable to fi=
nd clear answers on Ettus site etc. Any comments? Thanks<br clear=3D"all"><=
div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr" style=3D"font-size:1px;direction:l=
tr"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"width:=
100%;font-size:1px"><tbody><tr style=3D"font-size:0"><td align=3D"left" sty=
le=3D"vertical-align:top"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" style=3D"width:0;font-size:0"><tbody><tr style=3D"font-size:0"><td a=
lign=3D"left"><table cellpadding=3D"0" cellspacing=3D"0" border=3D"0" style=
=3D"font-size:0;color:#000001;font-style:normal;font-weight:700;white-space=
:nowrap"><tbody><tr style=3D"font-size:13.33px"><td align=3D"left" style=3D=
"vertical-align:top;font-family:Arial">Maxim=C2=A0Belotserkovsky<span style=
=3D"font-family:remialcxesans;font-size:1px;color:#ffffff;line-height:1px">=
<span style=3D"font-family:&#39;template-aLaXcd5FEeqLAwANOhMLNA&#39;"></spa=
n><span style=3D"font-family:&#39;zone-1&#39;"></span><span style=3D"font-f=
amily:&#39;zones-AQ&#39;"></span></span></td></tr></tbody></table></td></tr=
></tbody></table></td></tr><tr style=3D"font-size:0"><td align=3D"left" sty=
le=3D"vertical-align:top"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" style=3D"font-size:0"><tbody><tr style=3D"font-size:0"><td align=3D"=
left" style=3D"padding:0 0 0.7px;vertical-align:top"><table cellpadding=3D"=
0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;color:#939598;font-s=
tyle:normal;font-weight:400;white-space:nowrap"><tbody><tr style=3D"font-si=
ze:13.33px"><td align=3D"left" style=3D"vertical-align:top;font-family:Aria=
l"><a href=3D"mailto:maxim@gotenna.com" target=3D"_blank">maxim@gotenna.com=
</a></td></tr></tbody></table></td></tr></tbody></table></td></tr><tr style=
=3D"font-size:0"><td align=3D"left" style=3D"vertical-align:top"><table cel=
lpadding=3D"0" cellspacing=3D"0" border=3D"0" style=3D"font-size:0;line-hei=
ght:normal"><tbody><tr style=3D"font-size:0"><td align=3D"left" style=3D"pa=
dding:1px 0 0;vertical-align:top"><a href=3D"https://gotenna.com/" style=3D=
"text-decoration:none" target=3D"_blank"><img src=3D"https://gotenna-market=
ing-files.s3.amazonaws.com/gotenna-email-signature.png" height=3D"34" borde=
r=3D"0" alt=3D"" style=3D"height:34px;min-height:34px;max-height:34px;font-=
size:0"></a></td></tr></tbody></table></td></tr></tbody></table></div></div=
></div>

--000000000000d8286505f496c6b6--

--===============0339522316475625523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0339522316475625523==--
