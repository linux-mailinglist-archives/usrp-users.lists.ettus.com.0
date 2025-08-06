Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF59AB1CD79
	for <lists+usrp-users@lfdr.de>; Wed,  6 Aug 2025 22:30:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91752385DBE
	for <lists+usrp-users@lfdr.de>; Wed,  6 Aug 2025 16:30:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754512233; bh=o0trCUpYGPgXe9BtP21s69PsvFR6YgAzIOJzzlJDrKo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Gg8jtXaohgf500sivHxY3Wa+hA6iO6ArJqertrawrryl0w4CgYmQfdg7kWooeiku3
	 ZMgdOh4fGHsR8LdP/l7Fxphomp3IKtgO2sLjL7PxcKe1ri+k0SKpIXlz8MKnH/c7Pu
	 IdXJXIFWxuNZHsllK5MY2/YC5haxIXZJqIoGCusADyomaNcv0cxj8JeVaXN1j2c9+o
	 1gCEbZWPvqs3XvM90dCloEyE1EqVNCKQ6QDO88ePngDzaZ8FF9ZA2XxFJClIsu7NGC
	 2eEWDFGJoTWWHgEAbJ+3RT2FDrypHmj6gHhuRANS7Do7uS9X6/KgNzc+caDFaj2D3S
	 wMbGo23NlpdMQ==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 11DA1385CC4
	for <usrp-users@lists.ettus.com>; Wed,  6 Aug 2025 16:29:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NlyB15NB";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-617b36cc489so563235a12.0
        for <usrp-users@lists.ettus.com>; Wed, 06 Aug 2025 13:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754512183; x=1755116983; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fE0kqztJKkVBBI19YRugEuDAVbb6eOrizjkJ8wjKBuk=;
        b=NlyB15NBc7MY0BWImdf4YcArDvoVu7/K+ttH3DR4HaZRhf4XGCwHdP2tXyxCerhv4A
         emTjSGcOMNkuTQl7iKXE6ZBr9+BAfPoQ0/iaWbwcXj3Nm6qdcdFcXtYB1Rinr1PCmihd
         VRqLcSC9Y2C8shur/amqJWf5izOhl6xEIiAANc+Lst759OEnyKBhmgi/vFmJVQ0MQ7yc
         NSHsoG5DmFUC+y3aQ7nQPHgS/IVZurTkRviIiASJOo9cXf1IQkRC4SQo2TUox5A2t9Yy
         QLZKxivi7eNXO70bPX+iWVs0TGtoAVX3sWIvux54acG2btXcqrhrf2AZhRlQWKO2/skt
         mDqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754512183; x=1755116983;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fE0kqztJKkVBBI19YRugEuDAVbb6eOrizjkJ8wjKBuk=;
        b=Wno48D2wRAjLA9xR5+NKSUXW+khYyrLhO9U1AIgdTaQUlHUOVHsmzIIqZWBSSlbhMC
         Gq3/1yGrhHE4gU/s1tR4DFynFgPzF2xKmVJATuav4KMIBKPyl5QQCayJkkPrykZM6qBe
         OLkauHkaSXYKC4f6f4+AH4pU940VptbZheQkNh+5NqUoylmMhdXGzQGIht7v5G1eixns
         3oYoHe7pBCeEDYy18Di9LtEimZzS3UkFQ/lYIq1p/u6QlEbv6RKFI+uPDzzkCCilP8pf
         pYSRhoxrvUyLnaAq+eFNaBhhdKwb116saf9BMakW0atYAJ0k6Vx04hzRwMWGB4X0FQnW
         2E3Q==
X-Gm-Message-State: AOJu0YzwW+bExnb0EfhZxgTXA+VUpPSLOSS+dxnwyNQ9HFSHCr6czQSw
	0fXmfzxIks6b89J/r4jLC3IKFb/H3F5VdP3QL1AuY715sNW5Ke4NIa8AsnOuGZv79fsG+xtgwmN
	OEohx++yzH5aDPga0TWzm+WPaGAs5ruHRpw==
X-Gm-Gg: ASbGncsOyUa+PAL1tfMUkS0AXpq1N33E/LcNHWKWa+zn0jwI/AA/NXv5o4e4+kiTWRB
	YIFG7I+sFIIS0DmLFCrMxGEmJHm5Q1lvwQbyuLdXfV50zC3dlgeC87bR0oII239GE0ETa+cGPyy
	HuJWmTjsTxY2JWTxWPu8kPnvTO/fAprsMmyD66eK5MTLwMtbYiJ5o1xbuHHkMQXSYVF22F8oXEa
	xo1m3PPhd54K5dWMA==
X-Google-Smtp-Source: AGHT+IEqk/IfsS5B0mX/xRUA8Wf+FxIBnHBVT1e0MLpz+GD0HWj8287Cao9llZOjXxtCCnGjG74l2+hpfIO7UWann/0=
X-Received: by 2002:a17:906:c10b:b0:af9:3116:e0f6 with SMTP id
 a640c23a62f3a-af9904baf22mr414480766b.53.1754512183431; Wed, 06 Aug 2025
 13:29:43 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 6 Aug 2025 16:29:32 -0400
X-Gm-Features: Ac12FXw8ZzOSnP065_D-2TuNYQiIZpMkvfdta9_EwAHWz-ChSPsG9m9T1GGHA3k
Message-ID: <CAEXYVK7rTUg-C9fsxZyueKMzqckYkwYZzb5XSETJpUwq4nQfCQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: IXBPTJPIZ6CPUYIGAQWIHNBGA2WNB6WD
X-Message-ID-Hash: IXBPTJPIZ6CPUYIGAQWIHNBGA2WNB6WD
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issue Stream Command to Radio without 1:1 Endpoint
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IXBPTJPIZ6CPUYIGAQWIHNBGA2WNB6WD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5255726794569204061=="

--===============5255726794569204061==
Content-Type: multipart/alternative; boundary="00000000000072972c063bb8335c"

--00000000000072972c063bb8335c
Content-Type: text/plain; charset="UTF-8"

In my application, I have a transform that I do at the radio block such
that the 4 RX ports turn into a single stream of data.

I want to issue a stream command to each of the 4 RX ports, but I only have
a single streamer that it'll be outputting to.

Is this paradigm possible with RFNoC, or do I need an EP for every RF port
such that I can connect to the endpoint and create an RX streamer?

Thanks,
Brian

--00000000000072972c063bb8335c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In my application, I have a transform=C2=A0that I do at th=
e radio block such that the 4 RX ports turn into a single stream of data.<d=
iv><br></div><div>I want to issue a stream command to each of the 4 RX port=
s, but I only have a single streamer that it&#39;ll be outputting to.</div>=
<div><br></div><div>Is this paradigm possible with RFNoC, or do I need an E=
P for every RF port such that I can connect to the endpoint and create an R=
X streamer?</div><div><br></div><div>Thanks,</div><div>Brian</div></div>

--00000000000072972c063bb8335c--

--===============5255726794569204061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5255726794569204061==--
