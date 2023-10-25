Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CC37D7847
	for <lists+usrp-users@lfdr.de>; Thu, 26 Oct 2023 00:57:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5BF86385C0E
	for <lists+usrp-users@lfdr.de>; Wed, 25 Oct 2023 18:57:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698274677; bh=hPOJoIt3T/i+jCEjd2gDqHgyvGVqIlYgVEt7lypowIg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WuGEN/v9BoAv0ST2t4qijFCSCjgi17wfMSgvmbmlG3oDewFTL/34X92P4ie/t4jYw
	 MlZ/Ig4pIbkpwnjXGtpLKH6VRMsHa05PPweI1CGD8FmZSCxjvyiSa0gYwCWPKyFpd6
	 FgHF0N4rkoEgxjbOYUXK+aVk73UnlTkdd/pyTKyUg0dpC40RvWc4KMQC3vWbaGgIao
	 KTpp+z/PaOwSq8wo5I4sFSMd4u8kAiFp3OJbKIPlpk4FHDgvv0V2gzbKW5yCeenIAn
	 ysDvj6g3dSjMmwHV/MVgBeL80HH2T+mNekSyTMLf1dn6BkzABhWVy/nCym2BcukyHG
	 bI7t6MqHvZtKw==
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	by mm2.emwd.com (Postfix) with ESMTPS id AC445385BF5
	for <usrp-users@lists.ettus.com>; Wed, 25 Oct 2023 18:57:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="YPKv0CC8";
	dkim-atps=neutral
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-565334377d0so255486a12.2
        for <usrp-users@lists.ettus.com>; Wed, 25 Oct 2023 15:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1698274669; x=1698879469; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wVwHFRrJy1C2i3ntCL9DMbSewzC3+fl07QRmr2zMBRM=;
        b=YPKv0CC85nGfl8AIaVxlzihU68BIlsZCCj9nHTK/hcW2Xjm9edFq4xi6k/CcxUTuc0
         azNThZJ20Mk/FJwG1dbJ/55DBHHs4HEnY2hBx5aMC9xERIZxBR0JlyBNqGLhw9n7c6c1
         lG9WghoGhpcLrsBGglAub3aehru03HYiy78j8bX6Mg9iLaTHGpC8/py17cujWNOuu2hX
         /IgAPU831OtFIPeMxrTtbvEaGFQv/VG8yT1wbt9z+IJCgBZtGu/gb5Eko+IAxtWmWtTO
         YME9BjXrCs76FFmwhvWJEV1eJ9Vo0Un14DMkaRazIQA8mTt909KOKSx7EvoUZRdkwuQx
         nlCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698274669; x=1698879469;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wVwHFRrJy1C2i3ntCL9DMbSewzC3+fl07QRmr2zMBRM=;
        b=IxfwMMAjQHm0oRtWhDbiaEmE+/8K2eU0x+ViXSMo85NPQ2KZouPlXbeB7ETmfF3iKk
         8IeVMpW6ADSqb1GeVtsEHyazkSXPYz4fnVOv3sP+aozrf0NQx7+7z1hopgChRxtw+GSa
         QpZ78GSuztw2UGAjkc7cMKabXZ8CdsgR5rBCebziz5lP+pdKRmSTZUvLwVI4utEw5EaQ
         49bJ/6fXhFCieaqsHReZBeUay1koFykF+Kc3veVfGQTFiON122FzBfbEkuyYNkJUn4ME
         Ar2oQMlliitvN52zTwFASIYEn5ptzOBUyn97tfjt6cvxv5c7J6hAv4v/uAXBYpbnyzks
         C7UA==
X-Gm-Message-State: AOJu0YwMIa+a3g4o/jHmTiq1ZyPVnqdiFq58RHQcSyoR0WD0x1jJWYN5
	MNGvySbSHEnYRr1kXm0itf0YKq9CX2L0RpDmsu9HOpHuYF2fNRgJarY=
X-Google-Smtp-Source: AGHT+IHIuFtubkYhxtdWAgz23CYSNY/uDT+brvnGXraij+va9oS2ThR4tEgBmQNutFkX/J04mKRCittty0A73JDqRZg=
X-Received: by 2002:a17:90a:aa8d:b0:27e:22b:dce5 with SMTP id
 l13-20020a17090aaa8d00b0027e022bdce5mr15962330pjq.27.1698274669289; Wed, 25
 Oct 2023 15:57:49 -0700 (PDT)
MIME-Version: 1.0
From: Brian Hay <brian@chaosinc.com>
Date: Wed, 25 Oct 2023 15:57:38 -0700
Message-ID: <CAAEs_nQf2L0vo0cqs3XFZzW9jpb2cp5sPaTsFe65vT6tkKt2mA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RK3AEQUVXGNI6TWFSXQMELT5IYVL5BQ2
X-Message-ID-Hash: RK3AEQUVXGNI6TWFSXQMELT5IYVL5BQ2
X-MailFrom: brian@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 Remote Power On
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RK3AEQUVXGNI6TWFSXQMELT5IYVL5BQ2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3015038259201797031=="

--===============3015038259201797031==
Content-Type: multipart/alternative; boundary="00000000000064f909060892620d"

--00000000000064f909060892620d
Content-Type: text/plain; charset="UTF-8"

Hello,

Does anyone know if the N320 has a remote power on or Wake-on-LAN
capability? Or is the only way to turn it on by physically pushing the
power button?

Thanks,

Brian

--00000000000064f909060892620d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><table style=3D"font-family:&quot=
;Times New Roman&quot;;direction:ltr;border-collapse:collapse"><tbody><tr><=
td style=3D"font-size:0px;height:18px;line-height:0px"></td></tr><tr><td><b=
r></td></tr></tbody></table>Hello,=C2=A0</div><div dir=3D"ltr"><br></div><d=
iv>Does anyone know if the N320 has a remote power on or Wake-on-LAN capabi=
lity? Or is the only way to turn it on by physically pushing the power butt=
on?</div><div dir=3D"ltr"><br></div><div>Thanks,</div><div><br></div><div>B=
rian</div></div></div></div>

--00000000000064f909060892620d--

--===============3015038259201797031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3015038259201797031==--
