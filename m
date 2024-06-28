Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7207091BB71
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 11:27:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D93F385814
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 05:27:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719566834; bh=gp/tXKQ7gBVrQoQbUbtYQ43J0mwJHdnopiCAKM8euPg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=c/84wyz30WYzjY0Be4/xRARVI6TrUMAmYfjGdySqV8xud8R27/I9Z293biMxi4VUK
	 +QUSRrXx9YLBcayZH9CsasFhLtMVzfyPHRyhB2Ffbkd3yTYCgC5Tm+MlfYB4mRPaQ3
	 q3B9D9hy1ptuYzriWRRCkDmGEYu4TS9n2Ktwj50yxO6eG1tkSiUC2W0uIAMvgepK1w
	 RiihLrfuLw1zjV7UY7cQdiIKm+BB9lthrjo+wzY4LPoSlXcE7ymbvriVjuWKU3iH+L
	 zDuTwUjSI1oBDciUWypI0bkUhZrP4WHyZkos6NAU6o2kLIrzllXnGV0r9dufuouno2
	 aaCzXUVYmTkog==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E4CE385649
	for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2024 05:26:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="oei4ZsIm";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a72af03ebdfso50628166b.3
        for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2024 02:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719566807; x=1720171607; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dBfVoNy+dQ5l9W4CdJPEwSjxRsebLlDuoL06SmK5Rfs=;
        b=oei4ZsImxNYXoCtbG44X/KabAhxMQamBmRct3HndbMgmV9Drj5eVCF+RyibBXkHmez
         gVyW1+bNPY23ny24vlKt1UQAS8gafXSHCk9dcvtzp1ifeTCKOj0T6YsQHZpJ9PS4NmNK
         N0ssDcYEw0wYZPYDsvdrJyYeeFjlRQKcoBSQmOnaSfBq6G4rU3m9earb9/FjdquiKnua
         SgyFi7g7dwS4p/hEFAmznkImf4ponF6sAeKQa1/v1KSVfj2KafMskcGBA0w08ioyS9hm
         AGoGvccfEjq8YkmsEy7n8M8/20vls0VSJ40g8YXOkjMW0WlAlxSiPc1qaPQzmjQ+bXR/
         4OtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719566807; x=1720171607;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dBfVoNy+dQ5l9W4CdJPEwSjxRsebLlDuoL06SmK5Rfs=;
        b=GIuljNKAAk7shOiHZgiWH0e3IprdADaIo7yLX3eB0UseL3z+uwZYQyyvvlKx6qwdNS
         bxXOJ+uDY81DXIC8lgpFrviOtbMA8fBySI3JzI98GeH+JZM7gtifjKmS4MPLm9l8j2Um
         7mG0Tu+QCbW3TAr5R0YfF4DXZUl6KP5dEaKkRxvfGULkAsyELdwyuDkdPJvbbXDcLj5W
         gSHmwq/X4YQzODkwEXi4uLr0OMXcYi72ZHAxNUZsFRRrvRJL3mSRHQKqc5YS3nnuMzAP
         SDjXV6uIIEEckyyQrje28NLvizwAfTYSa8poC88ejwNjal5QrI3QLAjYXnknlHD4evLs
         NvXA==
X-Gm-Message-State: AOJu0Yya7JxXmXPUBkTS9H/VHQHzWQQA4aAAWetowFYnT4PAos8nXJcx
	Uj69aXVZSRkHvkwqqP4QEISd1A4EZRiZ9TvXwcCPAK5t9VgDZBK13hGw517fywo4TFNeC2g08ZR
	0VS2WGaYz9LAG/Ecuw5mMu8f94lRfvT4wTYHxL6M5WDgTtTvLKgI=
X-Google-Smtp-Source: AGHT+IEglA1tAKaNRpZOhYsxgYn/mMgtqy92WcaDwGmi/MED0A5y12zgLsFiog6LMog2w7AqZvj7fusSnQ6OguC/Qzo=
X-Received: by 2002:a17:907:1c22:b0:a72:9d25:8ad3 with SMTP id
 a640c23a62f3a-a729d258ff1mr351005266b.9.1719566806780; Fri, 28 Jun 2024
 02:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <DS0PR01MB79635F144100CD6C4EDE94E087D72@DS0PR01MB7963.prod.exchangelabs.com>
In-Reply-To: <DS0PR01MB79635F144100CD6C4EDE94E087D72@DS0PR01MB7963.prod.exchangelabs.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 28 Jun 2024 11:26:35 +0200
Message-ID: <CAFOi1A72R2wVz+i7qMLpxYw+1xAwLMhw55emCDQJvCnx3F6FHQ@mail.gmail.com>
To: Mark Rosenbaum <m_rosen@mit.edu>
Message-ID-Hash: VY44IBG7NKK4FGANK6SICLMDJ3C2Y4AS
X-Message-ID-Hash: VY44IBG7NKK4FGANK6SICLMDJ3C2Y4AS
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bricked B210 due to wiped EEPROM
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VY44IBG7NKK4FGANK6SICLMDJ3C2Y4AS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3972822474128710194=="

--===============3972822474128710194==
Content-Type: multipart/alternative; boundary="000000000000afd038061befd840"

--000000000000afd038061befd840
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

b2xx_fx3_utils --init-device is your friend. After you run that, you can
run `usrp_burn_mb_eeprom` again to configure serial number etc.

--M

On Thu, Jun 27, 2024 at 8:45=E2=80=AFPM Mark Rosenbaum <m_rosen@mit.edu> wr=
ote:

> Hi All,
> I was recently working on fixing an issue with my B210 and accidentally
> re-flashed the bootloader. In the process it seems to have fully wiped th=
e
> EEPROM and now when attempting to perform any action on the device I get
> the following error:
> "Error: RuntimeError: B200 unknown product code: 0xe3e0".
> Is there any way to go back and re-flash the original values?  I've tried
> to use the usrp_burn_mb_eeprom command with the recover_mb_eeprom but it
> still fails with the same error.
> Thanks,
> Mark
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000afd038061befd840
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mark,</div><div><br></div><div>b2xx_fx3_utils --in=
it-device is your friend. After you run that, you can run `usrp_burn_mb_eep=
rom` again to configure serial number etc.</div><div><br></div><div>--M<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Jun 27, 2024 at 8:45=E2=80=AFPM Mark Rosenbaum &lt;<a href=3D=
"mailto:m_rosen@mit.edu" target=3D"_blank">m_rosen@mit.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I was recently working on fixing an issue with my B210 and accidentally re-=
flashed the bootloader. In the process it seems to have fully wiped the EEP=
ROM and now when attempting to perform any action on the device I get the f=
ollowing error:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
&quot;Error: RuntimeError: B200 unknown product code: 0xe3e0&quot;.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there any way to go back and re-flash the original values?=C2=A0 I&#39;v=
e tried to use the usrp_burn_mb_eeprom command with the recover_mb_eeprom b=
ut it still fails with the same error.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Mark</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000afd038061befd840--

--===============3972822474128710194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3972822474128710194==--
