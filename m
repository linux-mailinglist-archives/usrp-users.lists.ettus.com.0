Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E4A8B9EE5
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 18:52:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A6C0385AF9
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2024 12:52:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1714668744; bh=TERHOnSLamo0Rwz7eI5jn2UHBm1GQmAw2RK/gfb5XaA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zcRIE7CjlDROKuWEx62jdXlOglJxsFkUuGGtP7DOlD1IGJliBtLNPbrP1miPUAZMa
	 TSIUxQMuUlIabOwDygwGyA5NKTaRuZ+z+MwoUuAnsAEV2wal5yR/i3V6tDQFB/juGY
	 aTaTlcd9LAxyVD5x+iYqaT3nlfvHdTwLMt5dAt8ZI0O8xDoM6q9Xnhqj+Kpbsa864p
	 Eu9smTWHrpaTDKscRXDZQiGpOGaW+1q7vQFUJ9vSDaumvYpqB1mB4kZJYlyZYV/6ul
	 P96KKkNy46LqTvjpxuQYiihI/w22OqJNkcUAXniva42TyOGHnAJ6XoDY5Vs853wFJG
	 TcTfcNM2KPCRw==
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 41B94385A88
	for <usrp-users@lists.ettus.com>; Thu,  2 May 2024 12:52:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="F6BmprHY";
	dkim-atps=neutral
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2dd6c160eaaso100217161fa.1
        for <usrp-users@lists.ettus.com>; Thu, 02 May 2024 09:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1714668731; x=1715273531; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZE3r7hDFHwxjrEw4TqZbloc2xKy+0e8PbB2JarKdOf8=;
        b=F6BmprHYCuxIgE18sVp4uyCC3Kw3UTN/PsHh6SdezBytP8zACSTLVKsx7kb9xa94UI
         n/bkXa3DTm7DuQv7VObLybriDU13Rpmt0LPth7jksSA41/fdZHYKgDetfr8vkzX8tdSl
         u+tGyIFoq7fI26GtvGJ0kCDZ1BhjWljjD29tq6Weu0rNQu+773VI+trNPV5P6kzz3leH
         hpDBpcGxKZLRlFZitgM/s3R4nZLKGmspR2jGkPmW4W3QtiYCezEuh6MR+97L92McaKft
         NTL6vBg2eJilU+MbPuP07yUi/oaFuF8P9CA2VYKakIMAseXDGZlwNxs5lK8KZBSVAyXA
         6SSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714668731; x=1715273531;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZE3r7hDFHwxjrEw4TqZbloc2xKy+0e8PbB2JarKdOf8=;
        b=C8R8gD3OVZd8Tps3C/OZqUvo1EHxVhQZe6k9pHMUxB6DRcrClUdWFOx5DgaQRwM4FN
         CLkz3eHkW4M3AiemI0eJ65oXUUPA1vpa1fNl3vphlftbv6dvPr31ktSFTUIXjlQGtg8X
         +J74lh+swhIPdDhM39qQO3t1wRk9HBX9bqQ8Wzh+5bxOf6NjZ4msxw7/wSl4Mxli3p3e
         MKWjO5kVFHS4dWJJsfX8cSQvaa5uQfOz7VDrjtRqf6nKGWKoXdQ+mef9kh+ZWfDzrVLF
         kzXUeffnkLglwrIw9AK2fR/9/4NOqGcJrknZVbms8rCkijqIhRyw6H+4LbyXK3+pT/9V
         D0gA==
X-Gm-Message-State: AOJu0YxO11vqIDVU/PA1M886I9hsUSekMA5t8JHhqQQlA/KEHLlqcrT6
	0/vA4aEC9WYTAvH3kSGvikEAgH1uBzPDT+Ocyk9o8w4PpJJQtPUSDwO/kkfuzisEHtSS2yWwBga
	bHEbXlBwQLDfwqlwI0zlcDNO4ICOq6TXi0g3FmvWxZO4OvcDCTD8=
X-Google-Smtp-Source: AGHT+IE6kPRlaRC0KMrla8EA8yenH41YROWQ5LoQE+K+FzRqbfDAB0w4YcoU/yBzd1JpJb+C3yqKa1KHPGkKBwu0qRQ=
X-Received: by 2002:a2e:9c49:0:b0:2e1:61de:9d03 with SMTP id
 t9-20020a2e9c49000000b002e161de9d03mr255614ljj.18.1714668731185; Thu, 02 May
 2024 09:52:11 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Thu, 2 May 2024 18:51:59 +0200
Message-ID: <CAKHaR3=gRRneYrOk9Gd1EXDXPgd41QZjvATPRVWXDDW66BVnVg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ULDXTR7HWCJKSDS6NPVQUXZ6NDRYTA7D
X-Message-ID-Hash: ULDXTR7HWCJKSDS6NPVQUXZ6NDRYTA7D
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rx-streamer buffering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ULDXTR7HWCJKSDS6NPVQUXZ6NDRYTA7D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7833076165557322076=="

--===============7833076165557322076==
Content-Type: multipart/alternative; boundary="000000000000a1556f06177b6c68"

--000000000000a1556f06177b6c68
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm working on a custom block and have an issue with rfnoc rx streamer: my
custom block outputs at quite low data rate and i found out that rx
streamer doesn't send out anything until it receives (in my case) 16384
items. this is causing quite a lot of latency. is there any way to reduce
this buffering or at least set a time limit (in msec) by when it will
propagate data anyway?

the issue seems to be related to the fact that in the work function code is
like this:

    const size_t num_items_recvd =
        d_streamer->recv(output_items, max_num_items_to_rx, d_metadata,
d_timeout);

and of course the recv function will wait until the d_timeout (which is set
to 1 without any API to change it) and until max_num_items are received
where that is basically nouput_items passed to the work function multiplied
by the vector length.
i don't seem to find any way to change that as there's no forecast function
and i don't seem to see any parameter to pass to the block to change this
behaviour...
thanks,

Dario Pennisi

--000000000000a1556f06177b6c68
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i&#39;m working on a custom block and have an issu=
e=C2=A0with rfnoc rx streamer: my custom block outputs at quite low data ra=
te and i found out that=C2=A0rx streamer doesn&#39;t send out anything unti=
l it receives (in my case) 16384 items. this is causing quite a lot of late=
ncy. is there any way to reduce this buffering or at least set a time limit=
 (in msec) by when it will propagate data anyway?</div><div><br></div><div>=
the issue seems to be related to the fact that in the work function code is=
 like this:<br><br>=C2=A0 =C2=A0 const size_t num_items_recvd =3D<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 d_streamer-&gt;recv(output_items, max_num_items_to_rx=
, d_metadata, d_timeout);</div><div><br></div><div>and of course the recv f=
unction will wait until the d_timeout (which is set to 1 without any API to=
 change it) and until max_num_items are received where that is basically no=
uput_items passed to the work function multiplied by the vector length.</di=
v><div>i don&#39;t seem to find any way to change that as there&#39;s no fo=
recast function and i don&#39;t seem to see any parameter to pass to the bl=
ock to change this behaviour...</div><div>thanks,</div><div><br><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-seri=
f;font-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);fo=
nt-family:Calibri,sans-serif;font-size:13.3333px"><br></div></div></div></d=
iv></div>

--000000000000a1556f06177b6c68--

--===============7833076165557322076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7833076165557322076==--
