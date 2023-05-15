Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9A2702EE0
	for <lists+usrp-users@lfdr.de>; Mon, 15 May 2023 15:57:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCC24384AEC
	for <lists+usrp-users@lfdr.de>; Mon, 15 May 2023 09:57:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684159055; bh=+vmQ4QxX52I7vOwf4Nbg273XDbHmMf78oqLDXF3OUsQ=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=dl7HClA51OIsrqcZ8oa2dgg7+LUYmacUD4jFwOh+6V67QU3o+bR2PRkClYuy9vQ4J
	 UEUOlk5MYyueY1dtgrWWogqc6zaZ7sMDe/DZfSsAkSyRM3PZEOpnSgsttqxEIfxt6q
	 P0vtHFIZnXcNxms6UExGjyVK/zOQC6C2PV0Kq/o4YdgGjUr5bmX7nH0iHhYyYDyqRl
	 rm4cT8Ot01XIdwwwlLwE20E5F91YA1REnyswR4/Xj2vC6mnyTzzg+pB+0/8O7xvztG
	 BNA31pKUy3aXAkCHq7wRlfppWGOqklZ6ZMmdz8sIuQXnbSJB1jmAv+o4rxDhhiM7wT
	 1lWBGIxn/06gA==
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 72B72384B50
	for <usrp-users@lists.ettus.com>; Mon, 15 May 2023 09:47:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="KCFvYBQd";
	dkim-atps=neutral
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-643846c006fso13565911b3a.0
        for <usrp-users@lists.ettus.com>; Mon, 15 May 2023 06:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1684158443; x=1686750443;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i6Bu6yqoy/o0k57OJH+FtEjHXTEP04RnoEyTOi6jseo=;
        b=KCFvYBQdb2BmNAnxHp6h7c73QXhVryUQOFqbRkH1fmBRAZO8cdaT2cDcFevdVooHbm
         GSpvFFpzeI+/6sLOqMIh8FhI2pdmuqAg/6aK4OTt0nAD8L90JcnBvSRBxgURUGqGbads
         7wBWcSKiERC2LsLW0x76s7hVsRDvHZT0HuFY07FqKhRi7IBvJateLYOri3KwyKi8dfn1
         kEOfa+8jJyNgfwl0kCXfCKZ84bjy4Nf12hehIpjCYcf8ymD2HFzgMqxjMCA5XUvppcB/
         Z9ZWpWW+xyR44YwY3GjNrD5jakbg+gx40dKgubHGBKnfHzLP7zzt+bP+7TcsJgoxvvg5
         0ucg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684158443; x=1686750443;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i6Bu6yqoy/o0k57OJH+FtEjHXTEP04RnoEyTOi6jseo=;
        b=cHrVCOy6Arx5m90U5vofA4rVuM+jyaaYHd9QbQoi1SbZhTW+StvHgUUhRsM9LkTnb9
         ynQvgC9zzGN6bop+j9k4QPohhMIzYJbEhxkovXB5rugXPbLzc3Voftb8vchBvZcbi6ic
         eYsHqHEIhbVqawuderZGKckx+ja4/V98yrqQHxUrISzhIfWjU8/6YDZg6qZnuvjWXsXZ
         s3UdsHTjxI9vylZZ7ob9bmt2NtwRiIjrUK1qSDcJbIiG49oQIQV53u6gEtM73jtecBLp
         UBbmeeUAguCd8mXhPPjLq9IBUzu+89hrsLBAZRDihky9Hd0oZySy4KyaDNclsrus9Y16
         B/YQ==
X-Gm-Message-State: AC+VfDzTfHTana3nKAVy9X1pmfq7LHKWn9/6itd2pOqWNOOHIqn1ezaI
	QkfETUu6d+ajdwrSIBXGzRFn0sOBCJj4QPwlkjUUmFYBhRewAEZESLnYYw==
X-Google-Smtp-Source: ACHHUZ6yb1GO9Ui3A5vexLIEttbo4DZHRA5IcdntCuU5ZfvFnyqoa/tLWxuFD5GMiN+z+fk4vWPSUTNY/B4KE0sI3tE=
X-Received: by 2002:a05:6a20:7f83:b0:d5:73ad:87c2 with SMTP id
 d3-20020a056a207f8300b000d573ad87c2mr39149605pzj.56.1684158442723; Mon, 15
 May 2023 06:47:22 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 15 May 2023 08:46:46 -0500
Message-ID: <CACaXmv8Hi1zgdJwY24rX3+M2O=yW=OCk4kjzzSP_XpvW5+CXdw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6IS5Z2NMYJIN6GI3MGU6KD4SSLI3U4KB
X-Message-ID-Hash: 6IS5Z2NMYJIN6GI3MGU6KD4SSLI3U4KB
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR 2023 on Friday June 2 at WPI in Worcester, MA (in less than 3 weeks!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6IS5Z2NMYJIN6GI3MGU6KD4SSLI3U4KB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0164574592334270950=="

--===============0164574592334270950==
Content-Type: multipart/alternative; boundary="000000000000b971df05fbbbb1ae"

--000000000000b971df05fbbbb1ae
Content-Type: text/plain; charset="UTF-8"

The New England Workshop on Software Defined Radio (NEWSDR) will be hosted
in-person at Worcester Polytechnic Institute (WPI) in Unity Hall on Friday
June 2, in Worcester, Massachusetts.

There will be great sponsorship from MathWorks, NI (National Instruments),
TMY Technology, and Red Wire Technologies, awesome invited speakers Muriel
Medard (Massachusetts Institute of Technology (MIT)) and Tommaso Melodia
(Northeastern University (NEU), Institute for the Wireless Internet of
Things (WIoT)), a great line-up of afternoon breakout sessions on ChatGPT
for software radio development, and prototyping with latest software tools,
and spectrum discussions from a science perspective, and exciting tutorials
sessions scheduled the evening before on Thursday June 1.

Please note that NEWSDR will not be recorded or live-streamed this year.

The event is free, but advance registration is required.

We are still looking for poster presentations for the networking sessions.

Please visit our website at the link below to see the full event agenda as
well as to register for free.

http://newsdr.org/workshops/newsdr2023/

--000000000000b971df05fbbbb1ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The New England Workshop on Software Defined Radio (NEWSDR=
) will be hosted in-person at Worcester Polytechnic Institute (WPI) in Unit=
y Hall on Friday June 2, in Worcester, Massachusetts.</font></div><font fac=
e=3D"verdana, sans-serif"><br>There will be great sponsorship from MathWork=
s, NI (National Instruments), TMY Technology, and Red Wire Technologies, aw=
esome invited speakers Muriel Medard (Massachusetts Institute of Technology=
 (MIT)) and Tommaso Melodia (Northeastern University (NEU), Institute for t=
he Wireless Internet of Things (WIoT)), a great line-up of afternoon breako=
ut sessions on ChatGPT for software radio development, and prototyping with=
 latest software tools, and spectrum discussions from a science perspective=
, and exciting tutorials sessions scheduled the evening before on Thursday =
June 1.<br><br>Please note that NEWSDR will not be recorded or live-streame=
d this year.</font><span style=3D"font-family:verdana,sans-serif"></span><f=
ont face=3D"verdana, sans-serif"><br></font><font face=3D"verdana, sans-ser=
if"><br>The event is free, but advance registration is required.<br><br>We =
are still looking for poster presentations for the networking sessions.<br>=
<br>Please visit our website at the link below to see the full event agenda=
 as well as to register for free.<br><br><a href=3D"http://newsdr.org/works=
hops/newsdr2023/">http://newsdr.org/workshops/newsdr2023/</a><br></font><di=
v class=3D"gmail_default" style=3D""><br></div></div>

--000000000000b971df05fbbbb1ae--

--===============0164574592334270950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0164574592334270950==--
