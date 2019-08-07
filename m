Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CCE84FE1
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 17:28:57 +0200 (CEST)
Received: from [::1] (port=60858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvNry-0004l8-Ry; Wed, 07 Aug 2019 11:28:54 -0400
Received: from mail-lj1-f171.google.com ([209.85.208.171]:38561)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bhilburn@gnuradio.org>)
 id 1hvNrv-0004g7-4w
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 11:28:51 -0400
Received: by mail-lj1-f171.google.com with SMTP id r9so85872102ljg.5
 for <usrp-users@lists.ettus.com>; Wed, 07 Aug 2019 08:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gnuradio-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=6TAv24Fz367q0hcB0CVUWDbtpZKkztxAEfuuN4N++co=;
 b=iSCmiHTEhOG/hVG2yozygSsdiu3ViXiuqDmUY2PNkTn00TdFFFGE9DNW67m3ugTYyl
 BCbdEneigVDO8rRuV0gGCpVJqUXbEcfkHhGl/cCXzCYM0bSqoELH6UOgTbxpxccmBgxq
 g2QGWAnRo9LUIRsIlRmi2lCIgleHEvx1ZwsHwm4A3i/5CHEy1S4zERojWXkGG0JbU+91
 bZdLD2m83HSk8BRIqi9b4MqaO4MjqGh+3SZpJNk0wBelZwDbChYLyaUa2A050BKOC1gM
 YuaW5yB+HxpXGxWxKo9JYb6/aqiOqGyWAE9aaPRPjO0QvV8zJBUVtQgGIHbMkpLp5Q4x
 hiDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6TAv24Fz367q0hcB0CVUWDbtpZKkztxAEfuuN4N++co=;
 b=TrUmETYyfllwhnVb7KAkh7dfvXaQVTu97mLL8ER4A0IQ8LK3Rl0rN1TMyfpZlFFcYW
 awpMyoS6ZYN01H0aFlrA5ZQZNWp10I/I/tiUS1YO8YtSp71HDew/YL4kLaKvH0hzeko3
 D2iUVj/qu7oUzLiPGAKdxLjrjCf3id/IpSklDM0LzUkbiyPfUIT50pD8DP1pKrIZpdxo
 HQIHJhxPHC+9FZlkAwZsMD3CRqFeAX4h7mV3IAlsouVL2esSV9nectPjendkLk7XDz7Y
 FsdxfZGjugfcmtGGWKtRY6pYL23c9DtsS+9jUdKPqVubpCGIp7+nR+pZhLeQj6P6onJc
 5tSg==
X-Gm-Message-State: APjAAAWxUDoVA5ekkQ6ScHtPuL/Hk7sesgxgT041A5uoJH6z7gD4nVxj
 q8nnz5eiQjBYImFs8hlCtAIn4NG6NL+lCR9tHsYaEOAjNuA2KA==
X-Google-Smtp-Source: APXvYqyIUjkybP+znmPpHz6xOXcfvQDabGOSspJNXjXojXqYhgbegwOJvfeJ82kOzw3frpNUrIMLjq5xyWmOEKhrX+s=
X-Received: by 2002:a2e:814e:: with SMTP id t14mr5433575ljg.167.1565191688743; 
 Wed, 07 Aug 2019 08:28:08 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 7 Aug 2019 11:27:57 -0400
Message-ID: <CAJH_qMEyt1qC0HHpE40oDFaU=B2V3W+Viki6q+90nWyZhVsy1Q@mail.gmail.com>
To: GNURadio Discussion List <discuss-gnuradio@gnu.org>,
 USRP-Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] GRCon19 Schedule is Live
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ben Hilburn via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Hilburn <bhilburn@gnuradio.org>
Content-Type: multipart/mixed; boundary="===============2585705435736045251=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============2585705435736045251==
Content-Type: multipart/alternative; boundary="0000000000009cfdd3058f8896cc"

--0000000000009cfdd3058f8896cc
Content-Type: text/plain; charset="UTF-8"

Hi all -

If you haven't seen it, yet, the schedule for GRon19 is live! You can find
it here:

https://openconf.org/GRCon19/modules/request.php?module=oc_program&action=program.php&p=program

The talk schedule for GRCon is full, but posters and papers can still be
submitted & accepted for the program. If you have any questions, just let
us know!

Reminder for authors who have already had your paper accepted - please have
your camera-ready draft uploaded a week before GRCon.

Registrations for GRCon can be purchased here:

https://tickets.gnuradio.org/grcon19/

And, as always, thank you to our sponsors for making GRCon possible!

https://www.gnuradio.org/grcon/grcon19/sponsors/

We look forward to seeing everyone in Huntsville next month.

Cheers,
The GRCon Team

--0000000000009cfdd3058f8896cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all -</div><div><br></div><div>If you haven&#39;t =
seen it, yet, the schedule for GRon19 is live! You can find it here:</div><=
div><br></div><div style=3D"margin-left:40px"><a href=3D"https://openconf.o=
rg/GRCon19/modules/request.php?module=3Doc_program&amp;action=3Dprogram.php=
&amp;p=3Dprogram">https://openconf.org/GRCon19/modules/request.php?module=
=3Doc_program&amp;action=3Dprogram.php&amp;p=3Dprogram</a></div><div style=
=3D"margin-left:40px"><br></div><div>The talk schedule for GRCon is full, b=
ut posters and papers can still be submitted &amp; accepted for the program=
. If you have any questions, just let us know! <br></div><div><br></div><di=
v>Reminder for authors who have already had your paper accepted - please ha=
ve your camera-ready draft uploaded a week before GRCon.<br></div><div><div=
><div style=3D"margin-left:40px"><br></div>Registrations for GRCon can be p=
urchased here:</div><div><br></div><div style=3D"margin-left:40px"><a href=
=3D"https://tickets.gnuradio.org/grcon19/">https://tickets.gnuradio.org/grc=
on19/</a></div><div style=3D"margin-left:40px"><br></div>And, as always, th=
ank you to our sponsors for making GRCon possible!</div><div><br></div><div=
 style=3D"margin-left:40px"><a href=3D"https://www.gnuradio.org/grcon/grcon=
19/sponsors/">https://www.gnuradio.org/grcon/grcon19/sponsors/</a></div><di=
v style=3D"margin-left:40px"><br></div>We look forward to seeing everyone i=
n Huntsville next month.<br><div><div><div style=3D"margin-left:40px"><br><=
/div><div>Cheers,</div><div>The GRCon Team<br></div></div></div></div>

--0000000000009cfdd3058f8896cc--


--===============2585705435736045251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2585705435736045251==--

