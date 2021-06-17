Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F12593AB43F
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 15:04:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 448AC383E21
	for <lists+usrp-users@lfdr.de>; Thu, 17 Jun 2021 09:04:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WDfDNIlk";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id AF642383E21
	for <USRP-users@lists.ettus.com>; Thu, 17 Jun 2021 09:03:48 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id f70so2958473qke.13
        for <USRP-users@lists.ettus.com>; Thu, 17 Jun 2021 06:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=ZWal0oVa7a2jdOGOjr7WZ8AcLC0kfIYclylEsyRm55U=;
        b=WDfDNIlk7KKHOzo+kRuD0XBfeugl0MBzDWJ0mKJh73RXvDwHrML5ozO3rTrCkJXUrO
         rCQoe6kN9gRpbpgA7Ur3HJan18k3hLYbbNbWLWaBKTAgbtz+J9zdeFjGpSpWEnu/AoY+
         OjphcW15fOnpQLhsezorzNm4EbY4jjvOnl/ANZmkfiTIzrsVdkLlveqYlHgDcEquCaEz
         msdvx2eFH2u9zKso2CNU0UIgA2/Fo8xA7wknwwFvtcLgwvDxgT32p5WgcCrSpK0mcuiw
         lfethblv2V49RCvD3LnzUnSRmIPRu+p5aDM1osWNguW1rbUxLgRXLxGCnlK5Uz4Yy8Hu
         vlvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=ZWal0oVa7a2jdOGOjr7WZ8AcLC0kfIYclylEsyRm55U=;
        b=Ghvy4E0SJDQ1XQ70wM4RdhedlxXVa4gyL6+NT7Vz6GdjdlzdjsuCULT10Icn+IpiCZ
         +LdpzBxhjxY6M/EdDrBuggzzitYMRU0rz4KIIbSt9SiKO+SETu/lJvFhKjIr8mj0kUJL
         1FMj1EaGt+K2/BWoAIUE4+cW2TcYomV5anEF3AHLWob6sPJ6BHKSvxVMP6skxatBjfYL
         e97F0Lhkp+n3xAIvSzw3c9RdJdhjLi4tsJckEcuK7KkvxA25/VCk7FPrd+M64iBjNACV
         rDNmjSmTYtd0gHnPgT48P8WVD0GBKfgWgu1C0EdjWUqfpg1vEW3tfqII5kZFefFuMHON
         avGg==
X-Gm-Message-State: AOAM532W2BvDXRrZm0DPufAe66iILXKMu3CCzxp81z+QrfZgEWWaNxOG
	9E3YZjJxZYRqiZlKZVFWzyA=
X-Google-Smtp-Source: ABdhPJy8WaTJ2mqZlj4PmD7Dt6laad9qEHxnxO1caTjjdcjlQmnJiruq/JfrcX/a82TOf0vGMTnLVw==
X-Received: by 2002:a37:9244:: with SMTP id u65mr3704723qkd.46.1623935028193;
        Thu, 17 Jun 2021 06:03:48 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id g1sm1591569qkd.125.2021.06.17.06.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 06:03:46 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 17 Jun 2021 09:03:45 -0400
Message-Id: <F507F01E-0B1C-4B03-8357-E8EA98781D98@gmail.com>
References: <PO2av3sUZRGh6fK5mmcEZe8OTc5iT8xTvE6VzsBxjfc@lists.ettus.com>
In-Reply-To: <PO2av3sUZRGh6fK5mmcEZe8OTc5iT8xTvE6VzsBxjfc@lists.ettus.com>
To: dave_abel@bigpond.com
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: 53LVUJITQOHK2ISS7IDOWLVR2NTK6CBH
X-Message-ID-Hash: 53LVUJITQOHK2ISS7IDOWLVR2NTK6CBH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205mini 10 MHz reference
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/53LVUJITQOHK2ISS7IDOWLVR2NTK6CBH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8069732682672606554=="


--===============8069732682672606554==
Content-Type: multipart/alternative; boundary=Apple-Mail-E4D485CA-38DE-4740-B9F2-06B754E71B18
Content-Transfer-Encoding: 7bit


--Apple-Mail-E4D485CA-38DE-4740-B9F2-06B754E71B18
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

They=E2=80=99re not quoting RMS levels.=20

Stick to a 3.3 to 5V square wave and you=E2=80=99re golden.=20

Sent from my iPhone

> On Jun 17, 2021, at 12:21 AM, dave_abel@bigpond.com wrote:
>=20
> =EF=BB=BF
> I=E2=80=99m confused by the specs for the 10 MHz reference for the B205min=
i.
>=20
> In kb.ettus.com/B200/B210/B200mini/B205mini#Timing_Reference_Input, and in=
 the schematics, the minimum level is specified as 0/1.8V minimum and the ma=
ximum 0/5V. The limits are also given as 10 dBm to 27 dBm.
>=20
> 27 dBm into a 50 ohm load translates to 5Vrms, 7.07 V peak, 14.15 Vpp.
>=20
> 10 dBm translates to 0.7 Vrms, 0.99 Vpeak, 2.00 Vpp.
>=20
> A 17 dB difference in power (between 27 dBm and 10 dBm) indicates a voltag=
e ratio of about 7.
>=20
> What am I getting wrong, please?
>=20
> Thanks.
>=20
> Dave
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-E4D485CA-38DE-4740-B9F2-06B754E71B18
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">They=E2=80=99re not quoting RMS levels.&nbs=
p;<div><br></div><div>Stick to a 3.3 to 5V square wave and you=E2=80=99re go=
lden.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr=
"><br><blockquote type=3D"cite">On Jun 17, 2021, at 12:21 AM, dave_abel@bigp=
ond.com wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<p>I=E2=80=99m confused by the specs for the 10 MHz reference=
 for the B205mini.</p><p> In kb.ettus.com/B200/B210/B200mini/B205mini#Timing=
_Reference_Input, and in the schematics, the minimum level is specified as 0=
/1.8V minimum and the maximum 0/5V.   The limits are also given as 10 dBm to=
 27 dBm.</p><p>27 dBm into a 50 ohm load translates to 5Vrms, 7.07 V peak, 1=
4.15 Vpp.</p><p>10 dBm translates to 0.7 Vrms, 0.99 Vpeak, 2.00 Vpp.</p><p>A=
 17 dB difference in power (between 27 dBm and 10 dBm) indicates a voltage r=
atio of about 7.  </p><p>What am I getting wrong, please?</p><p>Thanks.</p><=
p>Dave</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-E4D485CA-38DE-4740-B9F2-06B754E71B18--

--===============8069732682672606554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8069732682672606554==--
