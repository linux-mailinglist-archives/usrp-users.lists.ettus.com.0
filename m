Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C47758797AF
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 16:36:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C5013850DA
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 11:36:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710257767; bh=yYB2H/xr9KzG7vyNblFRGFAyNyJJxQPIthILtE8F9/E=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WbBh3hGbqbL02AaRqGMaSR67I3hHtbmZ7c6AAX6I+xD85kG5okx4tQbdH/1AoTc/M
	 BqdZayO/OFpV4LLfrf5+r/IIYZiBB8uUBd/dy0nMWzYhgY4MN0wO5QUgUnc0VLaj0Y
	 X0bl6k0og8HuG4qfCzkm4dP57PYrrUnQXe1BrRgiZZJd8MHXAxFTwNmgoF06ltgptq
	 Cx8TtQFVRQHv/aqG/PY+TSQvuzWlEbE7uMLMFopzt1gCXgvqTtU8xwJ9V2wxQVTsvz
	 WUyv3Y2WOV8LNKXVSnofkcM30C2p+lqwshvtWqcMz1LUiD861qGbdLBKg2hW2kaOlw
	 k6PeLw/CoBxUQ==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 15181385002
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 11:35:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fOdyOBMC";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56847d9b002so4102464a12.1
        for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 08:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710257729; x=1710862529; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=51zb4mpMVs3UseOOeA1p9r5INRy0gkcOLGc+XnU/A38=;
        b=fOdyOBMClNjUA+2sBZhJFbNF/HgW/M3oN/RVEszBczaRLdaJOf8u7BLonIsef6OJNu
         cHBqRvUu6CjiKRitVv630jS6YPS7y3pGSMRkxRCIFQmCh2aAxl6CFMjT0upFIyOFbMDb
         yVxHsQ53d14sA6EzMxc9JNzmFxm60y5Bs8Qw6BRnLpFYvJqZlGXXi2vL/neoXpvb9Ojs
         RQrXWw+Sgh2uYdizkLA7zYh17No41D6YItGbRKoCJCtFqBBuSva+xF32F/McJt7IMzPR
         I216tAv8hPcLYT63zuz/pRzfpBc/w/H23IN9ROQgmVrhjc/4wga5j87CtIe3LzegBk02
         gd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710257729; x=1710862529;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=51zb4mpMVs3UseOOeA1p9r5INRy0gkcOLGc+XnU/A38=;
        b=ROZkU5ijFASrPDwBL8QOr7wUh1UBz4pht/FoZ/6hV+nYcHvHR1lJfOVwUtQZgX9bI3
         xIAmt4rrXVzDV/r+07qujLQrz5QXYjDOpENTUkwDAB0kmRPOo/r2EV/XPJGU90LmFDQJ
         bQfXEtO6WGlprWmHXhjgM7g+yR0VU7QSBKrz2bgVgqscUrLzkwRfe3WbyROENlRjgzae
         S/W3/B4ynsfgdqaOpiLyf10CpKnZFz7kqfgh4/LheC9vLmHDe5A+s4U3dVXF8LlohTYk
         jXe2aSJjF0Iy3rKxqLHAQIL93Rolosng/fx7ozTzRjJB6G7DyzH2zaQtBP90xk2iRc5I
         tUFw==
X-Gm-Message-State: AOJu0Yx6VPc+tqXkVIyN4bKU/ns70O5SnIxNksqJTLpl/OaRBjmhhli5
	iZcv1VWlFsPiSqzXMEz2w3bA+lOqidui2ZOJTcHnxY8/iDntd8lSn2P2SqfJa94VLvemTk9n06W
	eo+gyN3BG2alRUPScq3gV8TvnaOuypZ3HLTvpoZSJ
X-Google-Smtp-Source: AGHT+IEo6X1g9OciiHmj3LQtKlAgfxJ+a4Gx8RcN65Ljlr4vdKGWAMWRQOfOD4cAD2lYz0WKi/GFH62N6dUotpzdZBE=
X-Received: by 2002:a17:906:49a:b0:a45:a98f:2cf7 with SMTP id
 f26-20020a170906049a00b00a45a98f2cf7mr548432eja.57.1710257728639; Tue, 12 Mar
 2024 08:35:28 -0700 (PDT)
MIME-Version: 1.0
From: Abhiram Prakash Alamuri <abhiramalamuri@gmail.com>
Date: Tue, 12 Mar 2024 16:35:17 +0100
Message-ID: <CAFQo7gS6tdWjzMzrWgmH=0uXaByaXxEunEAiFkBnCvcaKD8s8A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: MYFT3A6WIAMUNNZYNIDJI3A6EGLX3MYZ
X-Message-ID-Hash: MYFT3A6WIAMUNNZYNIDJI3A6EGLX3MYZ
X-MailFrom: abhiramalamuri@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Power related issues with the USRP X300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MYFT3A6WIAMUNNZYNIDJI3A6EGLX3MYZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4905840574396331444=="

--===============4905840574396331444==
Content-Type: multipart/alternative; boundary="00000000000063dbc40613786856"

--00000000000063dbc40613786856
Content-Type: text/plain; charset="UTF-8"

I've been using the USRP successfully for a while now but all of a sudden,
I receive the message, "RuntimeError: RuntimeError: Attempting to set power
for key x3xx_pwr_basicrx_rx_b, but no cal data available!".

Pretty much stuck at this point since I'm unable to proceed  with my
project.

Regards,
Abhiram

--00000000000063dbc40613786856
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;ve been using the USRP successfully for a while=
 now but all of a sudden, I receive the message, &quot;RuntimeError: Runtim=
eError: Attempting to set power for key x3xx_pwr_basicrx_rx_b, but no cal d=
ata available!&quot;.=C2=A0</div><div><br></div><div>Pretty much stuck at t=
his point since I&#39;m unable to proceed=C2=A0 with my project.</div><div>=
<br></div><div>Regards,</div><div>Abhiram<br></div></div>

--00000000000063dbc40613786856--

--===============4905840574396331444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4905840574396331444==--
