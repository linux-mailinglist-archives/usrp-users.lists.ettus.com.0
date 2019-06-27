Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 301C158A85
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2019 21:01:01 +0200 (CEST)
Received: from [::1] (port=43666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hgZdf-00009c-Ly; Thu, 27 Jun 2019 15:00:55 -0400
Received: from mail-lf1-f54.google.com ([209.85.167.54]:46290)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bhilburn@gnuradio.org>)
 id 1hgZdb-0008UM-F4
 for usrp-users@lists.ettus.com; Thu, 27 Jun 2019 15:00:51 -0400
Received: by mail-lf1-f54.google.com with SMTP id z15so2252511lfh.13
 for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2019 12:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gnuradio-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=e180bfVgjQnKj7TI611wQu3Rycp+DUwf7CE9x+HEg+g=;
 b=M4O/tbqlZ5s8ysf0nVRBb0wAtt66jAlvjGBf4NSuaRVqJGY68FakM0dNk78VxPlBWc
 7gfi5mAGWGPY8iMyTSar9UuTp6iqLbiJMq1qswzQm4WwCMcAARdxbGBb3lZasNXkNnjZ
 gr50+Bwzecr3WtrZgOuwE+M3uYUnbWiL20lCU3f6uqDtvsNiK/E43afhEJmkIP5jMio4
 ilZEh0KINIxB14mQLPVCz9fCfgEHwxmN8usLc1i6Hj6wfVbB+IzYlRbATw0jtb+ekeEE
 ySA9lhjOS7g91Q+tWH0l0quTCBVZeCYPHehO6Y5BDBnbzoa2/vQnDMFzAhWzHmSnSXAn
 E8Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=e180bfVgjQnKj7TI611wQu3Rycp+DUwf7CE9x+HEg+g=;
 b=gUVZ+Mduvy18pmhe2zDDrIhqZRs9q8qwVyKroEoRbioONb5ttkvrSZQJeEDkkA+uLd
 eEHM9hiRakMM+799QXR/JmnAFHo6GZPzxg5ouUXxALAU9VlJXEtuFho3+9JMK8Vfr+uE
 FxnuDBSmVxuwUykXO4alMUQ+ulW2J5GyAq2BUhR81QpBDBZZII3sn0uI7gcQpPRXR5dx
 vMy2dQViD5fZnrN5jpHkOj9iwCC1g2/pP+wjYdJ9Wr1pWoPAXkRQQe4JlQ4sU1woZH0y
 2f77rzZ0EeX7rcf6pPru0Rqjodl6sNzCqMQB/ArXha33D+er0UE83uKtUkVLx7kpwH5G
 Aa7Q==
X-Gm-Message-State: APjAAAXLK6vp3AnRG2qFHj4ZOg/I5GTpWk7CsAKxy/42SF0+6/3s8VKL
 7pFhx1+OQJNtPlzCZ9qOCuO+68ye5dj22P3O00o9/nyXBwQ=
X-Google-Smtp-Source: APXvYqzOZHMu43QinAxIUopjyRvjYztClF9efk1TcHmZBXolfjA4Yx14PrbgFL+3Smmah897jNyKTfqhK0SQ2a3nPRU=
X-Received: by 2002:ac2:499b:: with SMTP id f27mr2885503lfl.88.1561662009929; 
 Thu, 27 Jun 2019 12:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJH_qMGx+dnmQibA-q-Tc-RuXqzoJx=F7vHnGbkf_-ELt28-dA@mail.gmail.com>
In-Reply-To: <CAJH_qMGx+dnmQibA-q-Tc-RuXqzoJx=F7vHnGbkf_-ELt28-dA@mail.gmail.com>
Date: Thu, 27 Jun 2019 14:59:58 -0400
Message-ID: <CAJH_qMGYqXzXqEk8OgDxAOju2JVRy52HpJmq0aSHh8EG53FSpA@mail.gmail.com>
To: USRP-Users <usrp-users@lists.ettus.com>
Subject: [USRP-users] GRCon19 Updates & Reminders
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
Content-Type: multipart/mixed; boundary="===============6833802841144594175=="
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

--===============6833802841144594175==
Content-Type: multipart/alternative; boundary="0000000000005c8a14058c52c585"

--0000000000005c8a14058c52c585
Content-Type: text/plain; charset="UTF-8"

Hi all!

This year's keynotes have been announced! This year, our keynote speakers
will be:

   - Travis Goodspeed
   - Mark Shuttleworth, Canonical
   - Robert Suggs, Marshall Space Flight Center
   - Mark Spencer, Digium

You can see more details about the conference program on the website, located
here
<https://openconf.org/GRCon19/modules/request.php?module=oc_program&action=program.php&p=program>.
Note that talks & submitted tutorials have not yet been added to the
program!

Next up, the first deadline for submissions to GRCon is next Monday 1 July!
Please get your talk, poster, and paper submissions in as soon as you can.
The submission website is here:

https://openconf.org/GRCon19/openconf.php

Remember that GRCon maintains a policy that you do not have to present at
the conference to publish in the technical proceedings. If you're
submitting a presentation or poster, we encourage you to also submit a
paper to the proceedings. If you're unable to make the event but would like
to publish and share your work, you can submit a paper alone, which if
accepted will be posted with this year's TP at pubs.gnuradio.org.

Lastly, per my annual call to register earlier, please register as soon as
you can! Conference registration can be found here:

https://tickets.gnuradio.org/grcon19/

Please note that
*prices will go up on August 1st.*

If you haven't booked your hotel, yet, you can book in our discounted room
block at the conference hotel using this link:

https://www.marriott.com/events/start.mi?id=1553879040993&key=GRP

As usual, if you have any questions, please don't hesitate to reach out!
You can reach the organizing team at grcon@gnuradio.org

Cheers,
Ben

--0000000000005c8a14058c52c585
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote">Hi all!<div dir=3D"ltr"><di=
v><br></div><div>This year&#39;s keynotes have been announced! This year, o=
ur keynote speakers will be:</div><div><ul><li>Travis Goodspeed<br></li><li=
>Mark Shuttleworth, Canonical<br></li><li>Robert Suggs, <span class=3D"m_-1=
203554984611438779gmail-oc_program_singleSessionInfo">Marshall Space Flight=
 Center</span></li><li><span class=3D"m_-1203554984611438779gmail-oc_progra=
m_singleSessionInfo">Mark Spencer, Digium</span></li></ul><div>You can see =
more details about the conference program on the website, <a href=3D"https:=
//openconf.org/GRCon19/modules/request.php?module=3Doc_program&amp;action=
=3Dprogram.php&amp;p=3Dprogram" target=3D"_blank">located here</a>. Note th=
at talks &amp; submitted tutorials have not yet been added to the program!<=
br></div><div><br></div><div>Next up, the first deadline for submissions to=
 GRCon is next Monday 1 July! Please get your talk, poster, and paper submi=
ssions in as soon as you can. The submission website is here:</div><div><br=
></div><div style=3D"margin-left:40px"><a href=3D"https://openconf.org/GRCo=
n19/openconf.php" target=3D"_blank">https://openconf.org/GRCon19/openconf.p=
hp</a></div><div style=3D"margin-left:40px"><br></div>Remember that GRCon m=
aintains a policy that you do not have to present at the conference to publ=
ish in the technical proceedings. If you&#39;re submitting a presentation o=
r poster, we encourage you to also submit a paper to the proceedings. If yo=
u&#39;re unable to make the event but would like to publish and share your =
work, you can submit a paper alone, which if accepted will be posted with t=
his year&#39;s TP at <a href=3D"http://pubs.gnuradio.org" target=3D"_blank"=
>pubs.gnuradio.org</a>.</div><div><br></div><div>Lastly, per my annual call=
 to register earlier, please register as soon as you can! Conference regist=
ration can be found here:=C2=A0</div><div><br></div><div style=3D"margin-le=
ft:40px"><a href=3D"https://tickets.gnuradio.org/grcon19/" target=3D"_blank=
">https://tickets.gnuradio.org/grcon19/</a></div><div style=3D"margin-left:=
40px"><br></div><div>Please note that <b>prices will go up on August 1st.<b=
r></b></div><div><br></div><div>If you haven&#39;t booked your hotel, yet, =
you can book in our discounted room block at the conference hotel using thi=
s link:</div><div><br></div><div style=3D"margin-left:40px"><a href=3D"http=
s://www.marriott.com/events/start.mi?id=3D1553879040993&amp;key=3DGRP" targ=
et=3D"_blank">https://www.marriott.com/events/start.mi?id=3D1553879040993&a=
mp;key=3DGRP</a></div><div><br></div><div>As usual, if you have any questio=
ns, please don&#39;t hesitate to reach out! You can reach the organizing te=
am at <a href=3D"mailto:grcon@gnuradio.org" target=3D"_blank">grcon@gnuradi=
o.org</a></div><div><br></div><div>Cheers,</div><div>Ben<br></div><div><b><=
/b></div><br></div>
</div></div>

--0000000000005c8a14058c52c585--


--===============6833802841144594175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6833802841144594175==--

