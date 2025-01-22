Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B745A19AE7
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 23:28:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BACD13857B1
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 17:28:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737584887; bh=i1Lp3d77i1Mk17Y6uo6yNPLEFs+oKyFYFxFBFRslobE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=c6VBfecDPi1m+AZ4tSlstaIh8qVb4kl4DDkf+LFKR88aBMoKGg7P1sOOAHLeSOf3K
	 qA4tblR+SS3olWbayGHweMsWJDipXp8iSmLmlEd+QTSRLU2i5Ne4KeKXl893SEAPy9
	 Fl6JXAwdwOeFYKrUU9TMn4JogtTL4JQi1EWDYgz220SM0Id4C3CCTVxMpnzsIIk3Aa
	 HEFmwRqyPg86jtBH6RYJo2iFVx+WzJxxxWf4EdeQh2OT12PdjlBr3kthZG4StMLcJl
	 AGjZJ5OisOapGfe1wp+S3OFWj6WB29qr682waZQodp/bSYUARJ5n6ODZc/JUrIWeME
	 7JR+WVkf+p8TA==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 41399384A30
	for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 17:27:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TURtaQF3";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5d3cf094768so584828a12.0
        for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 14:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1737584831; x=1738189631; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eOFHih3WmOFL+tK0m++F/hus984AyDoBxgpdfMRb4XE=;
        b=TURtaQF3VyaZ6ufIWDThuSkiCmyoSgaXe56M1K1paoCPtrluTpK98XivE5JYNIupka
         Nu7pDTdbC6A1vtY4im92hVjLJm4rcs6rD6O/5RWu5Nl+ML242eCX9x1K4JHXI06F+HRB
         AqtjYZ/SUHfDvoeGeiUW4yKbi5XuahZB3KDKCc8CqjApPLLlShDUWKG4H4m+kNn5pJtT
         axKthYouIy2ljtf1LIuWmOnM8jE89vPCXWBXZZ62+XMPTcAdvaG20honl5o0PBNngQiC
         wq5WqjEDufsYKj8BPnd9mioecFKns5xUpQEP9BB25FJMtUIyPV2IPUDqvwLqrAZIs27p
         im7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737584831; x=1738189631;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eOFHih3WmOFL+tK0m++F/hus984AyDoBxgpdfMRb4XE=;
        b=qWotJiV7miD/alAaDSHbhdXRyw1NuIRqysD/DTRqF08QyTIEwOAjxNE+hXToRlP4Y4
         Twe3WxWT1b1Zvs1beRxpLKa1jqx+0fzJz9OmZS+Y1hIe0mDECdu4hYGsgZsfBuJ4s4ar
         +tPM7nEIMA/eLKmRECtQQz3Uo+/Ddv4Wq0gD43SkbvffV8YlGHtTpWvx/znh8GGl0D9G
         9bEFuBN8nxId7p7j8AeBVoIdQUza9zOgJZfZh9N12qgOS/GzKdIsqhvRYO+fDsIvvctM
         36ybNYaeudiju2Zue6JZtRBOdZE4kxcnvJ2vOydZGU5eqG7gBkDHyqyJunzmZe1xTrhl
         AO6A==
X-Gm-Message-State: AOJu0YyfgB15b9VkZ9mxFOrR74VGnGYOoJqe7uh1PjutIT9at2oEFQMs
	WmxHTbs+wB+UhfQbH/F/Kzz/hOnkqAM35u72sULB7B9I3mxvV0jniR6YdBtuU1FvO27tde3A5MS
	pw4du6dN0TapznLWvJPSMFHoLb4rN8qa+LNAk5PC4xmaPsyE=
X-Gm-Gg: ASbGncujjACOQW6uEtZtaf2JvcjoXgIN2eA0uP/2DylAyuL+opRW64NM6mliuB8o865
	W7kWi3G8vavsf2qCa/zhwMZe1jrqufypdq2ofYK7XkpVfaKpSMw==
X-Google-Smtp-Source: AGHT+IGBcoKH54Awyt7G2xHUYY/W9/oG7beIKQdsscCJRg7Z7CqMe3kzEPuPTklLh7SYHXy7bHpWgLypljrTIpUZP90=
X-Received: by 2002:a05:6402:42ce:b0:5d0:8359:7a49 with SMTP id
 4fb4d7f45d1cf-5db7d100348mr22162386a12.0.1737584830393; Wed, 22 Jan 2025
 14:27:10 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTSP4LgeSaPBC_SC+dbugmX7v23jnEyv_qCUQLBANOSrig@mail.gmail.com>
In-Reply-To: <CAB__hTSP4LgeSaPBC_SC+dbugmX7v23jnEyv_qCUQLBANOSrig@mail.gmail.com>
Date: Wed, 22 Jan 2025 17:26:58 -0500
X-Gm-Features: AWEUYZka0Oa_yLKhJj6TiRZcpxxusgRwYaue1rHMzNq7oZ2Lm4c4O5DeC03kzlI
Message-ID: <CAB__hTRXqyUK6E-yM2P11acbgaTNkP0RbSTDwAH0-G43wNEsrQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: O5I34DLH37T56AM6OS7TIRKB7MCJLMKP
X-Message-ID-Hash: O5I34DLH37T56AM6OS7TIRKB7MCJLMKP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Update for AN-956, OAI Ref Arch 5G ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O5I34DLH37T56AM6OS7TIRKB7MCJLMKP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1479629295789107590=="

--===============1479629295789107590==
Content-Type: multipart/alternative; boundary="00000000000095b989062c52fed5"

--00000000000095b989062c52fed5
Content-Type: text/plain; charset="UTF-8"

I am wondering if there is an update in the near future for AN-956, OAI
Reference Architecture for 5G and 6G Research with USRP.  If there is
anything presently in draft form, I am wondering if you would be willing to
share it prior to release.  I am just starting to work with OAI software
and I noticed that the Ettus application note references older versions of
software (both OAI and UHD).

The latest OAI software seems to simplify some of the setup. For example,
perhaps Ubuntu 24.04 has built-in configurability of low-latency settings
such that installation of a low-latency kernel is not needed or even
recommended.  Additionally, the docker deployment for the OAI core network
appears to be simpler from the user installation & launching perspective.

Thanks.
Rob

--00000000000095b989062c52fed5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr"><div>I am wondering if there is an update in the near future for A=
N-956, OAI Reference Architecture for 5G and 6G Research with USRP.=C2=A0 I=
f there is anything presently in draft form, I am wondering if you would be=
 willing to share it prior to release.=C2=A0 I am just starting to work wit=
h OAI software and I noticed that the Ettus application note references old=
er versions of software (both OAI and UHD).=C2=A0</div><div><br></div><div>=
The latest OAI software seems to simplify some of the setup. For example, p=
erhaps Ubuntu 24.04 has built-in configurability of low-latency settings su=
ch that installation of a low-latency kernel is not needed or even recommen=
ded.=C2=A0 Additionally, the docker deployment for the OAI core network app=
ears to be simpler from the user installation &amp; launching perspective.<=
/div><div><br></div><div>Thanks.<br></div><div>Rob<br></div></div>
</div></div>

--00000000000095b989062c52fed5--

--===============1479629295789107590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1479629295789107590==--
