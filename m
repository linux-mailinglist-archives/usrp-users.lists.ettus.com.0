Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3270AA70AC7
	for <lists+usrp-users@lfdr.de>; Tue, 25 Mar 2025 20:52:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 022C5385D22
	for <lists+usrp-users@lfdr.de>; Tue, 25 Mar 2025 15:52:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742932368; bh=GYewQ6StHyrY9SGRYosvGlj04eYiJoWbQGQr+P5Yr6o=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=AOthvGi7k+acY5Gq2ADa3nMWh5AgTFD0XWQI7TpQCOrIWpUlits2L67bWoYbjFGhd
	 Operoh4ikYNgHWwuPqBRof1Q6aooZv4O7dOAHPkIG+TXNuycMY14VzzwgtTujuRKNF
	 MQ+t/PcszWspIlhXkvXlkMMjKT4VBJs5jArp+qoA22rv8neqZ8+0LHN0yVGHpqBQBv
	 0Tx4ckloQehgA8U5wYWku65uoDA5cXJWGcNjPSIG5TjdIjuipVtPFnqXEws/PtiOzS
	 fNXeKrxNei4P0cr82q9aUFGXukRg0nS94R3TIiX3YgKY+14CR/t4kb6n24aR+wdQrK
	 EPy6d4mkGe8Tg==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 7236F385439
	for <usrp-users@lists.ettus.com>; Tue, 25 Mar 2025 15:52:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="VeIbuC3I";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5dc89df7eccso10423577a12.3
        for <usrp-users@lists.ettus.com>; Tue, 25 Mar 2025 12:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1742932339; x=1743537139; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u2MceN+54aEO4HRJmpDctyD1Yn2jI02B04er2WYolRk=;
        b=VeIbuC3IghN/l/D6L1IoC3hmryS3Wq9pxdSoCw3naow8ZDTXvdoE5V9jNAzGw7BpO9
         9wXXZwlrxFooQ1TKQJ2QK17LO6uw6onuy4fWaEaasYoowxu9D8Tw8mHI3AjpWWK150hu
         md3oS8YGNln5J7NW2TPLsXbtd0V5VIrGLmqioLmSo4RGLfJoJ22BgWB8otDT+ivafImh
         0sz9VM+XlQocwKvy38WhR6bj/XiUN0ZRPu1uxtJwn8Cxl4R/IyRozyr4nqpXQ+TvfwD+
         GO+kCtWRyAWvDzb1dyXdPoc7cCs0dEhVm7vBQqB11NNCCQBWQevXzJGKUglgGtd1GrFc
         a9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742932339; x=1743537139;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u2MceN+54aEO4HRJmpDctyD1Yn2jI02B04er2WYolRk=;
        b=fSKzxzHi/kAOfcyeztZzU97q2PecCZjmTz6oVrH8gzPMeTdDIJt7z4ySolIAl7nc3n
         aVL6gmq2bzYyPwIQb8OVzWHVD9666l1roKp6OpIOKQAOekAexTafsvwzhlR0xowd9FIY
         l+zJyouY4ua7txnFh+HzBCZCCvAF1CICbVGLcDWCg7ekEBJnMfPQkVRyywZyK8/2D8Yq
         YqMFxWf5f3yZl1tzqDW8hG++HkyXJ/ReUkMOM1zJsyyOJRDWETuXh8Yz+QRf/w0Gy71P
         dvkl3cBoTM7aynrh5oUqs9a41PDZq9H7gXVPafc0BbVQw/QCqUNxYK7Vom01xBei7cW5
         y1Dw==
X-Gm-Message-State: AOJu0YzACwfxa0V49CaqaJ57F7QrCxu0PlKKF26JJ3Nh4ZgRYIgujzUc
	BDesGZ37huV1nkPF1XMEmNoFgEcG2exkMJvMpGayF6/3m5f2K8N8Ybfq5KSy3ZAJQF0DjJkmx8D
	xghy+tH+CvBHZspA2mL7dVS0X9uzKaIJJG3AEBkGz2vzpL3Q=
X-Gm-Gg: ASbGncssgl+B2P2HXQ+e9K71gJ+yRtrPsKGwqNXZhkjyn1Ne0Bnxw0N98wNdDWOSZrs
	9G0XSO1+0M46VwgGmE5wHhOot/XxbD4RfWwW1jCyTQ8zYXQe+gb3RdEUP5H3dehgJ/ZwesrVQED
	3XTsQqwQOgMM1lY3g+Rz0wwi3XEg==
X-Google-Smtp-Source: AGHT+IHbEevSlYpinnyM1RTgttoUD0tSOyaGPmrI9JwRVgsLEa/spb5td/T3GeeMS0PpyBuwg1vet/+cP9oXgoqzE4k=
X-Received: by 2002:a05:6402:13d6:b0:5de:aa54:dc30 with SMTP id
 4fb4d7f45d1cf-5ebcd40b7d9mr14571818a12.5.1742932339457; Tue, 25 Mar 2025
 12:52:19 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 25 Mar 2025 15:52:05 -0400
X-Gm-Features: AQ5f1JqHku7rdZMJqEH9dkbhMFBozSpJ-xFK1SQqQ4YcQBJ3l16pjOltOhR_dbc
Message-ID: <CAB__hTTmZsHLPee4V5TGR5S77Z0ZwA5WhFrKJ6YYMAgFGaFBZQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: PJT4UXFE5VZOWKKFKTJNMEKOB7UL76XO
X-Message-ID-Hash: PJT4UXFE5VZOWKKFKTJNMEKOB7UL76XO
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 100Gb NIC for X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PJT4UXFE5VZOWKKFKTJNMEKOB7UL76XO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5475236899702707111=="

--===============5475236899702707111==
Content-Type: multipart/alternative; boundary="000000000000f629420631300e3e"

--000000000000f629420631300e3e
Content-Type: text/plain; charset="UTF-8"

Hi,
I am in the process of purchasing a 100Gb NIC for use with the X410 and
have seen documentation and previous posts indicating that the ConnectX
NICs are preferred. But I did note in the DPDK knowledge base article that
the Intel E810 could also work.  I prefer the E810 because it seems to be
less expensive and can be configured for 4x10Gb, but I don't want to create
a headache for myself.  Let me know if you have had success or issues with
the E810 using a 100Gb link (or two 100Gb links) to the X410.

I am also confused about the E810 which comes in a couple of 100Gb models:
CQDA2 and 2CQDA2, where they both have two 100Gb QSFP28 ports, but the
former can only handle aggregate 100Gb whereas the latter can handle
aggregate 200Gb.  My confusion is "why does it matter for the X410?".  With
4 channels at 500 MS/s, the aggregate bit rate is only 64Gb/s so why does
it matter if the E810 CQDA2 only supports aggregate 100Gb?  It seems to me
that either model supports the maximum rate of the X410.

Thanks.
Rob

--000000000000f629420631300e3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am in the process of purchasing a 100Gb NIC for =
use with the X410 and have seen documentation and previous posts indicating=
=C2=A0that the ConnectX NICs are preferred. But I did note in the DPDK know=
ledge base article that the Intel E810 could also work.=C2=A0 I prefer the =
E810 because it seems to be less expensive and can be configured for 4x10Gb=
, but I don&#39;t want to create a headache for myself.=C2=A0 Let me know i=
f you have had success or issues with the E810 using a 100Gb link (or two 1=
00Gb links) to the X410.</div><div><br></div><div>I am also confused about =
the E810 which comes in a couple of 100Gb models: CQDA2 and 2CQDA2, where t=
hey both have two 100Gb QSFP28 ports, but the former can only handle aggreg=
ate 100Gb whereas the latter can handle aggregate 200Gb.=C2=A0 My confusion=
 is &quot;why does it matter for the X410?&quot;.=C2=A0 With 4 channels at =
500 MS/s, the aggregate bit rate is only 64Gb/s so why does it matter if th=
e E810 CQDA2 only supports aggregate 100Gb?=C2=A0 It seems to me that eithe=
r model supports the maximum rate of the X410.</div><div><br></div><div>Tha=
nks.</div><div>Rob</div></div>

--000000000000f629420631300e3e--

--===============5475236899702707111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5475236899702707111==--
