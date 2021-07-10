Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 384C93C358F
	for <lists+usrp-users@lfdr.de>; Sat, 10 Jul 2021 18:37:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D9543843FF
	for <lists+usrp-users@lfdr.de>; Sat, 10 Jul 2021 12:37:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mfWzn6I8";
	dkim-atps=neutral
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 8AE85384377
	for <usrp-users@lists.ettus.com>; Sat, 10 Jul 2021 12:36:39 -0400 (EDT)
Received: by mail-ej1-f43.google.com with SMTP id c17so22869350ejk.13
        for <usrp-users@lists.ettus.com>; Sat, 10 Jul 2021 09:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=vzcW7lX2YRYf+9NUaYA4tJUhCMqbyM3P028KJfSWDeg=;
        b=mfWzn6I8Btwsy5L8BeheIUuo+Jhvy+SDzuhfBY+XpaL1lX4SOLmpvC3Ivmt61bMIPO
         9FfsZuKK14SJDAA3PXk7QPpPDfUek+5j2NYwwfDWZopnlnb3IDSXxrLr9ZosHXDgfVLE
         IuyJ0JHKLFP79xWojhDcYNyhy8rWs0NL8ZsOr3rK1HauGfy/lP+B/chefdfXujiu6nhX
         LxqX3iKqhpEyfEQi6MF5InipKBncyEcUpuNpbJhGfjnQJsmZzEMvRW+FIAnyXCn8Wtjk
         9tIAqpkJNFEVWNaXMrykHYnN6IthClS4I+bee9Wefr4u/x5mEagyWHSTgkM+xlrUI/n1
         tO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vzcW7lX2YRYf+9NUaYA4tJUhCMqbyM3P028KJfSWDeg=;
        b=J7jsncD7YeJxsj7LB1A7yP+f5PA5U8TVXmQwKFATqsLP9QH/WQWs62dXXpDm08Zt8N
         84A7TyQkFB8IXZxXjtTvi7mUpTaotpdR8wo6qKyFcGRsQZvKkpdOxMCAZlKAvjXoQq5u
         A5DqSLeWV8nFyZFgIs10fzVx0E/EkHpIPkXG/f/SeXr57pAwQf0ZsTdASbVtkRfh70LR
         gkjBqPYhtPQh/PAh6fes0p5FmrPiZya2wMxL3rsfvrQ8XzesqGbhlnFDjgMX30QFVkCw
         8FoUVTWhkoZTsp468I2gVZ+8rJyQcm1iGd1ViSB5k2TgzHlRbtKQQFtZZrW68tjB78gi
         1TjA==
X-Gm-Message-State: AOAM530AMoxYzaYJ21K76NqS7vF48SrbeK/JdGGSfpO4u5w+rbJnK99T
	RigziZ5UGTaB0ykVehy1hSesfkVafdSwx1mqpak31CwB90E=
X-Google-Smtp-Source: ABdhPJwCUZHNC8kInw+fIOlS7tJd21QWRXkNAnwf1dxQ1LykWxyPuVDArjCIaRsomiCnFBwBic6aQuK+NhM8HFy19A4=
X-Received: by 2002:a17:907:7608:: with SMTP id jx8mr21217638ejc.233.1625934998259;
 Sat, 10 Jul 2021 09:36:38 -0700 (PDT)
MIME-Version: 1.0
From: southindian sdrusergroup <southindiansdrusergroup@gmail.com>
Date: Sat, 10 Jul 2021 22:06:28 +0530
Message-ID: <CA+ZVCtXoYwEt53JK6jKFq665ZjvsPG0Pn_EM92HpyFRQTB73MA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: XHSXB2SJT3J7LZKBDGW4ZSXG7JRCB3WP
X-Message-ID-Hash: XHSXB2SJT3J7LZKBDGW4ZSXG7JRCB3WP
X-MailFrom: southindiansdrusergroup@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcing the inaugural event of the South Indian SDR User Group (SI-SDR-UG) on Saturday July 24
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XHSXB2SJT3J7LZKBDGW4ZSXG7JRCB3WP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7569400034953426321=="

--===============7569400034953426321==
Content-Type: multipart/alternative; boundary="000000000000ffcc2705c6c77df4"

--000000000000ffcc2705c6c77df4
Content-Type: text/plain; charset="UTF-8"

We would like to announce the inaugural event of the South Indian SDR User
Group (SI-SDR-UG)!

The South Indian SDR User Group (SI-SDR-UG) was founded in January 2021,
and is a community of people, from novices to experts, spanning industry,
academia, and government, who are interested in the design and
implementation of Software-Defined Radio (SDR) technology and systems. This
includes such diverse areas such as RF, digital signal processing (DSP),
wireless communications, operating systems, computer networking, software
development and optimization, machine learning, and radio hardware. The
mission of our community is to facilitate the exchange of ideas and enable
greater collaboration within the SDR community in India. We host a regular
technical workshops and gatherings, and we also run a dedicated Slack
workspace for the community. We have a YouTube channel for recordings of
past events, and a GitHub page for any relevant code. Our Twitter feed
contains announcements about events and other news relevant to the
community. We are not focused or tied to any one single software tool,
hardware platform, commercial vendor, or specific technology. The SI-SDR-UG
is non-profit, and the people on the organizing committee are all
volunteers. We are based in Bangalore, but we invite people from all
throughout India, as well as from outside India, to join our community.
Our first event will be held on *** Saturday July 24 at 19:00 (India time)
***, and will be streamed live on our YouTube account.

We still have an open slot for one more presentation in the event, and we
would like to offer it to the community.  If you would be interested in
speaking at the event, on Saturday July 24, sometime between 19:00 and
23:00 (India time), then please get in touch with us, we would be very
interested in having you.

Please see our website for more information about the event agenda, as well
as links to our Slack workspace and YouTube account.

https://www.softwaredefinedradio.in/

We look forward to seeing you all at the event!

--000000000000ffcc2705c6c77df4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We would like to announce the inaugural event of the South=
 Indian SDR User Group (SI-SDR-UG)!<br><br>The South Indian SDR User Group =
(SI-SDR-UG) was founded in January 2021, and is a community of people, from=
 novices to experts, spanning industry, academia, and government, who are i=
nterested in the design and implementation of Software-Defined Radio (SDR) =
technology and systems. This includes such diverse areas such as RF, digita=
l signal processing (DSP), wireless communications, operating systems, comp=
uter networking, software development and optimization, machine learning, a=
nd radio hardware. The mission of our community is to facilitate the exchan=
ge of ideas and enable greater collaboration within the SDR community in In=
dia. We host a regular technical workshops and gatherings, and we also run =
a dedicated Slack workspace for the community. We have a YouTube channel fo=
r recordings of past events, and a GitHub page for any relevant code. Our T=
witter feed contains announcements about events and other news relevant to =
the community. We are not focused or tied to any one single software tool, =
hardware platform, commercial vendor, or specific technology. The SI-SDR-UG=
 is non-profit, and the people on the organizing committee are all voluntee=
rs. We are based in Bangalore, but we invite people from all throughout Ind=
ia, as well as from outside India, to join our community.<br>Our first even=
t will be held on *** Saturday July 24 at 19:00 (India time) ***, and will =
be streamed live on our YouTube account.<br><br>We still have an open slot =
for one more presentation in the event, and we would like to offer it to th=
e community.=C2=A0 If you would be interested in speaking at the event, on =
Saturday July 24, sometime between 19:00 and 23:00 (India time), then pleas=
e get in touch with us, we would be very interested in having you.<br><br>P=
lease see our website for more information about the event agenda, as well =
as links to our Slack workspace and YouTube account.<br><br><a href=3D"http=
s://www.softwaredefinedradio.in/">https://www.softwaredefinedradio.in/</a><=
br><br>We look forward to seeing you all at the event!<br></div>

--000000000000ffcc2705c6c77df4--

--===============7569400034953426321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7569400034953426321==--
