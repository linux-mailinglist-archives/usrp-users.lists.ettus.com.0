Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9458CB6BD
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2024 02:25:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7D9E3854BD
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2024 20:25:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716337512; bh=nd3AI4MOLZ/opINNjv6POhlUicz/DKKtPq2mONqCH6U=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=YRi34T7FTHpTPPH/p7PLq1grFReAm3e3zFxz1PNxI36WxcQhPeIRqwGwfBZxkuDej
	 +ZdqmZ+U4gkIimD4vN3xxrEkpbRO+9U4NRhZpHCGlcNLaSiiMv4/QxWXMUQaicYn+3
	 D7DZWPqGmG9JPWDTaDXWY8X6u0uLoX5H9Sy5ZaG0arx+xmrvof4B59xuy+v5OBC7Qk
	 f3mT32nvuixsIRqs4XVVaV9o6EcPlj0AoKjqY3bI4qIMTX5n5d9Al8lZbS2Z6zvyJ5
	 gVLAdOVm7SqPGmff/BAtLHPPC9PYHtv8FSLsqWMoKhrseUXAI460SIBqG05/XBUTR0
	 XMhvrj66OemFw==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 483B6385409
	for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 20:24:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=logitech.com header.i=@logitech.com header.b="B+S3hqNa";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a620a28e95cso205156466b.3
        for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 17:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=logitech.com; s=google; t=1716337482; x=1716942282; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xjuhqGyjDLOcfOHbzsjfqiB7Yc6qm6Qot5fMCMOJ7+s=;
        b=B+S3hqNaI5jdVYg8zRC4xKgvH8D2QpuY2ZEn7FVZeICqb0724SOyPOI6jIlpSM4Hwm
         +M7E3usT7Web+EMuFVhh+7rTbtkrqohTg2cDn4Op7qLOsGGbUvpdEkgXyhegL+Jcre5x
         Zy8/KaqAQy2XK5JSjIdrc/zc4N+r0XD09EnRMT0gGgjyGjOhykN0hDPGMxMsl+98GFki
         r2taUo+sblnGQ3oDBhCt6NS7v/uyz91/j7Iaa7b4d9DLxme2tIaml12G3jENYZLOfcc/
         YHgNYl1yzUtzCEdicR8gkot6TH/tc42kVu3C8u2ybwXbkP+1K8J7JDtKHY6VqC5vn0z1
         GadA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716337482; x=1716942282;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xjuhqGyjDLOcfOHbzsjfqiB7Yc6qm6Qot5fMCMOJ7+s=;
        b=J3spnPAV3HtUsDpOCN2V+/OE9PnhSEH4BunptDuzZiKW80kWEH7yPjAS0MQidjFUXb
         +dACpdvylYN0xcIwWKzW7cpgeMPTWRNz2urAaaogrD97ZKds7ByaMNlIlavTHVr6GlJo
         ij785CNqk9IM3ZwbJ52bVVY868BKWCdLa8GtujJPaNVIs9Ydgs9Xr+a0m/iJMEM5B8b/
         Qs0hsRFnAe4Q+nyriMJAeP0Mi5VrG9KxZWv8z+EmY6oD1c/HNCpSC0eeHhVPBdbWZ6e/
         tHWygvQdztpr7KoyoNvLCLaZ68/c+XJajV77lO/wyEoQw/FDBUEGlMyn0WGKZC8/dHAV
         9pyw==
X-Gm-Message-State: AOJu0Yz3ZGZ8t6Nom5r2G5rz0kcBhSxMC0mR7PYTB7td52yaEJqHzaDw
	VyxMJ0u6C6v+/pT4T1wyceL/32snnehg2gSHFHXUYnAOhfAShxVeWB1PHHTaT+BHOnnFK/57t9B
	bB8ArwcF7ww2k78BulnJ/H6pONaT36iqdvsnYrdgST+CwR1IlOg==
X-Google-Smtp-Source: AGHT+IFRqapbSaM6A5RE7Mj337ZG4amDXIK16ei86SpA4tFGjQ7SVp24cbXNhU3W3/UCYTjX26zWf0NT/Ir+N6W5qYI=
X-Received: by 2002:a17:906:4f0d:b0:a59:ad15:6142 with SMTP id
 a640c23a62f3a-a622814ff8amr13085966b.77.1716337481581; Tue, 21 May 2024
 17:24:41 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 21 May 2024 17:24:05 -0700
Message-ID: <CAKtd9vZ-PSEoxzJEd75a9+qi0G2KSS+mCFBONviF1vjNPi=xYQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZS4GZWB2I2FIVSBBVZDBURI36BC745JT
X-Message-ID-Hash: ZS4GZWB2I2FIVSBBVZDBURI36BC745JT
X-MailFrom: hniknami@logitech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Recording and playing back RF Activity
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZS4GZWB2I2FIVSBBVZDBURI36BC745JT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Hamid Niknami via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hamid Niknami <hniknami@logitech.com>
Content-Type: multipart/mixed; boundary="===============4144008164565169191=="

--===============4144008164565169191==
Content-Type: multipart/alternative; boundary="000000000000e7f17a0618fff53e"

--000000000000e7f17a0618fff53e
Content-Type: text/plain; charset="UTF-8"

Hi,

I am very new to SDR. I need a low cost solution to record all the
interferences in the 100MHz band of the 2.4GHz ISM band (created by
multiple WiFi and Bluetooth devices) and then play it back to emulate the
interference. I do not need to decode those signals. I am thinking of using
B200 for down converting to base band, recording on a SSD and then playing
back the recorded signal using the B200 for upconverting to 2.4GHz.
Considering the fact that B200 cannot cover the whole 100MHz BW, I am
thinking of using three B200 with synchronized triggers, each set to a
different band.

A few questions:

- Will such a scheme work?

- If yes, is there any GNU Radio Flow graph readily available for it?

- If yes, what issues/headaches shall I expect to be ready to deal with?

- Can multiple B200 be programmed to work in sync? If yes, what is the
recommended source for generating the synchronization pulse? (another
B200?) Any schematic for the needed HW connections for synchronization?

- If the above approach is not going to work, what other low cost solution
do you suggest?

Thanks.

--000000000000e7f17a0618fff53e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"box-sizing:border-box;margin-top:0px;color:rgb=
(53,60,65);font-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe U=
I&quot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&qu=
ot;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Hi,</p>=
<p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-ap=
ple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,s=
ans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Se=
goe UI Symbol&quot;;font-size:14px">I am very new to SDR. I need a low cost=
 solution to record all the interferences in the 100MHz band of the 2.4GHz =
ISM band (created by multiple WiFi and Bluetooth devices) and then play it =
back to emulate the interference. I do not need to decode those signals. I =
am thinking of using B200 for down converting to base band, recording on a =
SSD and then playing back the recorded signal using the B200 for upconverti=
ng to 2.4GHz. Considering the fact that B200 cannot cover the whole 100MHz =
BW, I am thinking of using three B200 with synchronized triggers, each set =
to a different band.</p><p style=3D"box-sizing:border-box;color:rgb(53,60,6=
5);font-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,=
Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe=
 UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">A few questions=
:</p><p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inte=
r,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Ar=
ial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&qu=
ot;Segoe UI Symbol&quot;;font-size:14px">- Will such a scheme work?</p><p s=
tyle=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-apple-=
system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,sans-=
serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe =
UI Symbol&quot;;font-size:14px">- If yes, is there any GNU Radio Flow graph=
 readily available for it?</p><p style=3D"box-sizing:border-box;color:rgb(5=
3,60,65);font-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&=
quot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot=
;Segoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">- If yes,=
 what issues/headaches shall I expect to be ready to deal with?</p><p style=
=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-apple-syst=
em,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,sans-seri=
f,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot;Segoe UI S=
ymbol&quot;;font-size:14px">- Can multiple B200 be programmed to work in sy=
nc? If yes, what is the recommended source for generating the synchronizati=
on pulse? (another B200?) Any schematic for the needed HW connections for s=
ynchronization?</p><p style=3D"box-sizing:border-box;color:rgb(53,60,65);fo=
nt-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Robot=
o,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">-=C2=A0If the above =
approach is not going to work, what other low cost solution do you suggest?=
=C2=A0</p><p style=3D"box-sizing:border-box;margin-bottom:0px;color:rgb(53,=
60,65);font-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&qu=
ot;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;S=
egoe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Thanks.</p>=
</div>

--000000000000e7f17a0618fff53e--

--===============4144008164565169191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4144008164565169191==--
