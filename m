Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ECD3D12AE
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jul 2021 17:41:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE6473849D7
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jul 2021 11:41:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dj4Ylwg9";
	dkim-atps=neutral
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 68429384947
	for <usrp-users@lists.ettus.com>; Wed, 21 Jul 2021 11:40:20 -0400 (EDT)
Received: by mail-ed1-f45.google.com with SMTP id w14so2944184edc.8
        for <usrp-users@lists.ettus.com>; Wed, 21 Jul 2021 08:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=SHUl4PnBA0muPak9HIQUQIzQIbbX3/I2R6MwwdnS4t8=;
        b=dj4Ylwg9YKq7uHBa3AM5XoflfKsRBbSlv9bwc3FhIQukGgS56C3jQDyQMyseVKp50B
         D2qM/QdmKKEIO5s96ImQ96dNKma/A0q4r4ckLKcsfqS8ZucHThrEj03B8PvGfH5W1ca2
         Rmza9bV56Lgl3UxCAkbq/eojZ+S05aNM7VTjJkgQtozQ7YjrKJoDF1vi7KsXVZkfawhU
         2/4WNzWfyw32sGF3o6Ru6pKnCLNtyEyuNKO9LZSOi7Xa7cTWoKXPZYNjhpiTNeU0VimU
         +PLQR1DQUhKUjL2l00bbss5XDtFcSnbX6KUWqTLN+90CBt25P3sT6wK5yt/Bz0wJQvb0
         5O8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=SHUl4PnBA0muPak9HIQUQIzQIbbX3/I2R6MwwdnS4t8=;
        b=hY8GIr2896O10v7kXGHfBOiPh/Q+S5nMzXtErFz3Ya46uSljRayZCgSye91FOshRR2
         hm+P4ZgcAy8V9eMOeNDVt1qOk30Vwh2Im8nPoj53V30zDeACQFq7PClwa2WFeqcNfw0U
         wcKv4HhmvpJA9iAzyq17m2IE7qIiT2E8dTANbJ+NDMPYXSLLwJ6Sinxy6nBgNSfpNTNw
         NKi8+SDQD6TfgcwGz1vIFeFV6F2B9I9LpJ292CrFPzm68GiI+KnS6J5+lR5jUN/SZEGn
         Z/cvLYfM268qS20l7z1xU5JEdYvTs5399k4OHYp1qUz5cYqu0f6bsm4+vyNJhLg/MYx9
         8l5g==
X-Gm-Message-State: AOAM532h1VrkB04BWJuFEOu9woICihjAiwe9U3p/uedD59TTc38G+gpm
	p9EVy92K/mM29YQSnu+/KME8VMc43PmINdhepMBZqWrcyY4=
X-Google-Smtp-Source: ABdhPJyoqXVGu9vbalc3rAE/VouquULkwFHPgGyaMwp9WAxkxz1XJjvYj8w7y24lD/bq/z12IgkJV+cfiFM3iIWUiBc=
X-Received: by 2002:a05:6402:1d86:: with SMTP id dk6mr49442208edb.136.1626882019214;
 Wed, 21 Jul 2021 08:40:19 -0700 (PDT)
MIME-Version: 1.0
From: southindian sdrusergroup <southindiansdrusergroup@gmail.com>
Date: Wed, 21 Jul 2021 21:10:20 +0530
Message-ID: <CA+ZVCtXGCSnctVVs0o80t_6JemcUJ3a+ymZhuACetacDC6dj3A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2ZLMNWUYBXGR4EGZUYTVL6SNJQXPMGG7
X-Message-ID-Hash: 2ZLMNWUYBXGR4EGZUYTVL6SNJQXPMGG7
X-MailFrom: southindiansdrusergroup@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcing the inaugural event of the South Indian SDR User Group this Saturday July 24
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ZLMNWUYBXGR4EGZUYTVL6SNJQXPMGG7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2537231106878219711=="

--===============2537231106878219711==
Content-Type: multipart/alternative; boundary="000000000000d8c9f005c7a3fc6f"

--000000000000d8c9f005c7a3fc6f
Content-Type: text/plain; charset="UTF-8"

We would like to announce the inaugural event of the South Indian SDR
User Group (SI-SDR-UG)!

The South Indian SDR User Group (SI-SDR-UG) was founded in January
2021, and is a community of people, from novices to experts, spanning
industry, academia, and government, who are interested in the design
and implementation of Software-Defined Radio (SDR) technology and
systems. This includes such diverse areas such as RF, digital signal
processing (DSP), wireless communications, operating systems, computer
networking, software development and optimization, machine learning,
and radio hardware. The mission of our community is to facilitate the
exchange of ideas and enable greater collaboration within the SDR
community in India. We host regular technical workshops and
gatherings, and we also run a dedicated Slack workspace for the
community. We have a YouTube channel for recordings of past events,
and a GitHub page for any relevant code. Our Twitter feed contains
announcements about events and other news relevant to the community.
We are not focused or tied to any one single software tool, hardware
platform, commercial vendor, or specific technology. The SI-SDR-UG is
non-profit, and the people on the organizing committee are all
volunteers. We are based in Bangalore, but we invite people from all
throughout India, as well as from outside India, to join our
community.

*Our first event will be held on Saturday July 24 at 19:00 (India
time)*, and will be streamed live on our YouTube account.

*We still have an open slot for one more presentation in the event*,
and we would like to offer it to the community.  You can reply to this
email with an abstract of your talk, it should not exceed 30 minutes
of duration followed by a 15 minute Q&A section. If you would be
interested in speaking at the event, on Saturday July 24, sometime
between 19:00 and 23:00 (India time), then please get in touch with
us, we would be very interested in having you.

Please see our website for more information about the event agenda, as
well as links to our Slack workspace and YouTube account.

https://www.softwaredefinedradio.in/

You can watch our first event on our YouTube channel at:
https://www.youtube.com/channel/UCy04XwXPMDVUucWYYvwg-Yg

Join our Slack workspace to ask questions and interact with other attendees:
http://si-sdr-ug.slack.com/

We look forward to seeing you all on Saturday July 24!

Thanks and regards,

Rohan Sundar

Organizing Committee SI-SDR-UG

--000000000000d8c9f005c7a3fc6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-c-mrkdwn__pre" style=3D"box-sizing:inh=
erit;margin-top:4px;margin-bottom:4px;padding:8px;font-size:12px;line-heigh=
t:1.50001;font-variant-ligatures:none;white-space:pre-wrap;word-break:norma=
l;border-radius:4px;color:rgb(29,28,29)"><font face=3D"tahoma, sans-serif">=
We would like to announce the inaugural event of the South Indian SDR User =
Group (SI-SDR-UG)!<br><br>The South Indian SDR User Group (SI-SDR-UG) was f=
ounded in January 2021, and is a community of people, from novices to exper=
ts, spanning industry, academia, and government, who are interested in the =
design and implementation of Software-Defined Radio (SDR) technology and sy=
stems. This includes such diverse areas such as RF, digital signal processi=
ng (DSP), wireless communications, operating systems, computer networking, =
software development and optimization, machine learning, and radio hardware=
. The mission of our community is to facilitate the exchange of ideas and e=
nable greater collaboration within the SDR community in India. We host regu=
lar technical workshops and gatherings, and we also run a dedicated Slack w=
orkspace for the community. We have a YouTube channel for recordings of pas=
t events, and a GitHub page for any relevant code. Our Twitter feed contain=
s announcements about events and other news relevant to the community. We a=
re not focused or tied to any one single software tool, hardware platform, =
commercial vendor, or specific technology. The SI-SDR-UG is non-profit, and=
 the people on the organizing committee are all volunteers. We are based in=
 Bangalore, but we invite people from all throughout India, as well as from=
 outside India, to join our community.<br><br><b>Our first event will be he=
ld on Saturday July 24 at 19:00 (India time)</b>, and will be streamed live=
 on our YouTube account.<br><br><b>We still have an open slot for one more =
presentation in the event</b>, and we would like to offer it to the communi=
ty.=C2=A0 You can reply to this email with an abstract of your talk, it sho=
uld not exceed 30 minutes of duration followed by a 15 minute Q&amp;A secti=
on. If you would be interested in speaking at the event, on Saturday July 2=
4, sometime between 19:00 and 23:00 (India time), then please get in touch =
with us, we would be very interested in having you.<br><br>Please see our w=
ebsite for more information about the event agenda, as well as links to our=
 Slack workspace and YouTube account.<br><br><a href=3D"https://www.softwar=
edefinedradio.in/">https://www.softwaredefinedradio.in/</a><br><br>You can =
watch our first event on our YouTube channel at:<br><a href=3D"https://www.=
youtube.com/channel/UCy04XwXPMDVUucWYYvwg-Yg">https://www.youtube.com/chann=
el/UCy04XwXPMDVUucWYYvwg-Yg</a><br><br>Join our Slack workspace to ask ques=
tions and interact with other attendees:<br><a href=3D"http://si-sdr-ug.sla=
ck.com/">http://si-sdr-ug.slack.com/</a><br><br>We look forward to seeing y=
ou all on Saturday July 24!<br><br>Thanks and regards,<br><br>Rohan Sundar<=
br><br>Organizing Committee SI-SDR-UG</font><font face=3D"Monaco, Menlo, Co=
nsolas, Courier New, monospace"><br></font></pre></div>

--000000000000d8c9f005c7a3fc6f--

--===============2537231106878219711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2537231106878219711==--
