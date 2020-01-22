Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF15144C16
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2020 07:54:59 +0100 (CET)
Received: from [::1] (port=43218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iu9ud-000407-CB; Wed, 22 Jan 2020 01:54:51 -0500
Received: from mail-il1-f170.google.com ([209.85.166.170]:32942)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <massoud.pourmandi@gmail.com>)
 id 1iu9ub-0003wO-3Z
 for usrp-users@lists.ettus.com; Wed, 22 Jan 2020 01:54:49 -0500
Received: by mail-il1-f170.google.com with SMTP id v15so4422145iln.0
 for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2020 22:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=4TbuDHc/yDBi2yyyS0w5dPfHhsh2U2Zlnou/8K83aGA=;
 b=RpkVDYtroMWMBbyE8j2YeAUnp3whSsx7eLWaJ9XkV7n+ZVs/BTRjlAwRzP4it6B64/
 Qx//pFrgQWR7elTFDd2kFzaG9yXwHM+W+ci3t3m4jr2ysjnvmNh4hBdtVC2Cmn+ONKSQ
 7R3DSQIJvekrE4gce9sQxYU9taK7TZAH+O7l3IU/uXx1qLuqoo1/vC0/bc01F+QI7rZB
 rUN9+1y+P6bKIHpSC4Is8fyugUaA7JNJYn8nDjO/vh8VeLiVue2ET7Js5qWJDNMc5itk
 8lre7+2/lor4TjmkUUjFMV25LcSIU41YmB7IC+2obfGJ4lpHW4Vv9iHxY+l5WopeZmlO
 SgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4TbuDHc/yDBi2yyyS0w5dPfHhsh2U2Zlnou/8K83aGA=;
 b=UyyP9ErlZoBKMP09dT9u7qhxm7IKzeFkV+pd97HYnmyv3wkcM/vp0ZcXlk1854JNEL
 kqcVvFH7ts32sqrbm50dM647v3rdu6tTk6z3o8yz4aQTJEdRTJ+99HalHvS3RXKjbMta
 sgMWc9tsNQcKZVob+jgFkpDwRcxz6yaycbpzY+5qRHIxF89Oog635Zo8+5m3fIBlez/r
 p2g+vEOundx7QlC/bz5td1XIOp5vrXriXHIGqZ22ptu7+pRuAwIep4BaXI0GnYnypiqx
 rhUEgz+wH7zigic/ulCO4kZAN2fpnoO+FNhDsoBi2zBZKUyBgQ5bqEiE3YeyAIx7U75c
 cKNg==
X-Gm-Message-State: APjAAAUgYC+7dwfxkXS8RtGwjo2Y8HR3TFH6Or5dFrQpeHZyg8Y65RDA
 JDbEue2jlaaeIMBwCooWixdjLgh96wTXCcbpRG66knBI
X-Google-Smtp-Source: APXvYqxYk7ISJxONJApUgvfv37Xx2rgRkY+EpN9mLd+lobId93KPTxxAJ7PvkojiDE2eNDgXgQspQF8Ry9ngc0B75dc=
X-Received: by 2002:a92:cf50:: with SMTP id c16mr6588234ilr.89.1579676048255; 
 Tue, 21 Jan 2020 22:54:08 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 22 Jan 2020 09:53:59 +0300
Message-ID: <CAM+1jtcmAXpN2x2fv67+h4pcczT7V9fEi6RW0By=H1XbX78m3A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP B210 hardware architecture
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: massoud pourmandi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: massoud pourmandi <massoud.pourmandi@gmail.com>
Content-Type: multipart/mixed; boundary="===============5557797287147795626=="
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

--===============5557797287147795626==
Content-Type: multipart/alternative; boundary="000000000000b76e67059cb4fd7e"

--000000000000b76e67059cb4fd7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear colleagues,

we have a USRP B210 in our lab, though, I have some questions regarding
this device.

First, I can=E2=80=99t find its hardware architecture? I would be glad if y=
ou send
me its detailed information.

I=E2=80=99m using *Gnuradio* as my simulation environment. In this simulato=
r, when
I connect a signal generator with sin wave to USRP B210 with a const
carrier frequency, the output signal probability undertakes a modulation by
USRP carrier frequency. I need to check its hardware architecture in order
to inspect how this modulation is carried out.

Secondly, I have checked this device=E2=80=99s datasheet, and the datasheet
underlines that this is a full-duplex device. If you check the device, you
will notice two pairs of ports (RFA and RFB).

How does this duplexity work?

Thank you for your time.

--000000000000b76e67059cb4fd7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-he=
ight:107%;font-size:11pt;font-family:Calibri,sans-serif"><span style=3D"fon=
t-size:12pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif"=
>Dear colleagues,</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-=
height:107%;font-family:&quot;Times New Roman&quot;,serif">we have a USRP B=
210 in our lab,
though, I have some questions regarding this device.</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-=
height:107%;font-family:&quot;Times New Roman&quot;,serif">First, I can=E2=
=80=99t find its hardware architecture?
I would be glad if you send me its detailed information. </span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-=
height:107%;font-family:&quot;Times New Roman&quot;,serif">I=E2=80=99m usin=
g <b>Gnuradio</b> as my
simulation environment. In this simulator, when I connect a signal generato=
r
with sin wave to USRP B210 with a const carrier frequency, the output signa=
l probability
undertakes a modulation by USRP carrier frequency. I need to check its hard=
ware
architecture in order to inspect how this modulation is carried out. </span=
></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-=
height:107%;font-family:&quot;Times New Roman&quot;,serif">Secondly, I have=
 checked this device=E2=80=99s
datasheet, and the datasheet underlines that this is a full-duplex device. =
If you
check the device, you will notice two pairs of ports (RFA and RFB).</span><=
/p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;line-height:107%;font-si=
ze:11pt;font-family:Calibri,sans-serif"><span style=3D"font-size:12pt;line-=
height:107%;font-family:&quot;Times New Roman&quot;,serif">How does this du=
plexity work?</span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 8pt;=
line-height:107%;font-size:11pt;font-family:Calibri,sans-serif"><span style=
=3D"font-size:12pt;line-height:107%;font-family:&quot;Times New Roman&quot;=
,serif">Thank you for=C2=A0your time.</span></p></div>

--000000000000b76e67059cb4fd7e--


--===============5557797287147795626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5557797287147795626==--

