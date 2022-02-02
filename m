Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A16004A795C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 21:27:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98969385256
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:27:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="UXiJQPJs";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id BC6A6385232
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 15:26:29 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id i10so2140334ybt.10
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 12:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fr0JUcTANgsvTf/KzrNsrNvw30bmhLdaMDLkhMdu/VA=;
        b=UXiJQPJswpq/rulAE5i9uucdHk5Tlduvlu2i2qvm6ZCJEWHN4riJJtwxQaudYgptcv
         /gyvm2dQx+0WpDJcJ08JufHjd24cuosyn23Ij64aWLyxz7bPZMskgppfYa//HUppvD+B
         ZChQpi63k9aoq4jk9JYfFDQycBiSUe59ZEVVJCaZreCeSFVoxCZXeY8Ad9/bS033N+ra
         Y7GJcCU46xRe7K3Ea84HYU6GzV7oFKzeLWnQi5rPgWxlb+bjFWC2Ba7BIQPNE2hmI6FX
         r2XPjaNjYFP53Cl8wJoEUYTIciFtgZ6chFe9MuKsHhmnZ3xWS4+S1BtvtuvrQm9p65gM
         dA5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fr0JUcTANgsvTf/KzrNsrNvw30bmhLdaMDLkhMdu/VA=;
        b=plMtNePi7dxvdtT6l4HhGAIcipOQ9isCyzwlSOLCpkUyoJyljAF9T/sieV03bzZc0j
         hM3SbBgJ5E9eOjwHwt9rzj9r/IkA/TgxqTChoxIBTTgL8iY6BztXpN7sGtKYDnNiygkE
         zK6uqNQu2daxc+upNaZB8KoEEItmaoIs/7znUnMVsjZ1h0b/IEKfHuvROGkak3Z5nB/E
         JHYq/Vk2YwIhVyohUqiK8rnT7bGekr9iULjulGHJcu7XZv+rAYmJmFQBM3Ntb4pzstZJ
         qyTVsH4qv96N0zu2CqgB1N+vVvSuH8a2bSw17hkIpqEG7qOcoFxLeix9x7COORSJYOHs
         3LBA==
X-Gm-Message-State: AOAM532UXz9I/K3gvdP5JYFYMXp3bpq/OGWiI2rPwBBhNidhkzfQczDO
	Ck+gX5YwAilOum3WG+fC6zE7aKNdFKPlKHmi4tSJsA==
X-Google-Smtp-Source: ABdhPJxOPrEdHKIaFaKWgT5uZCobd4CvVgd09m32E+tX0xFM482moxa6eOvsFBGZ6/JInzLzDyiHKc6r/w1Fmbpctcg=
X-Received: by 2002:a25:c014:: with SMTP id c20mr43274802ybf.647.1643833588972;
 Wed, 02 Feb 2022 12:26:28 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com> <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com> <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com> <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com> <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 2 Feb 2022 15:26:18 -0500
Message-ID: <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
To: Jim Palladino <jim@gardettoengineering.com>
Message-ID-Hash: NBZH7QEJTMP2FJCTXI6JNTWNUOYUKUVI
X-Message-ID-Hash: NBZH7QEJTMP2FJCTXI6JNTWNUOYUKUVI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NBZH7QEJTMP2FJCTXI6JNTWNUOYUKUVI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8589224174226878372=="

--===============8589224174226878372==
Content-Type: multipart/alternative; boundary="000000000000243ec405d70ed5b6"

--000000000000243ec405d70ed5b6
Content-Type: text/plain; charset="UTF-8"

Hi Jim,
This sounds like a pretty big issue. I haven't chimed in because I couldn't
say for sure if timed commands were working for me or not in UHD 4.1. I am
using N321s with shared LO, so the normal commands I use for setting
frequency aren't critical (from a timed command perspective) except for how
the DDC/DUC might be handling them. In any case, once you find out the
issue, could you please share the solution here. If I get a chance, I will
try this on some of my devices.
Rob

On Wed, Feb 2, 2022 at 12:22 PM Jim Palladino <jim@gardettoengineering.com>
wrote:

> Just to add one more data point, I just ran test_timed_commands on a
> different computer connected to an X310 -- still UHD 4.1. I have the same
> problem with that device where it looks like timed commands are not working
> right.
>
> Thanks,
> Jim
>
> ------------------------------
> *From:* Jim Palladino <jim@gardettoengineering.com>
> *Sent:* Wednesday, February 2, 2022 10:44 AM
> *To:* Marcus D. Leech <patchvonbraun@gmail.com>;
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: Timed Commands Not Working
>
> Correct -- I am using the stock FPGA image for the E320 and the N320.
>
> Thanks,
> Jim
>
> ------------------------------
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, February 2, 2022 10:39 AM
> *To:* Jim Palladino <jim@gardettoengineering.com>;
> usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Re: Timed Commands Not Working
>
> On 2022-02-02 10:21, Jim Palladino wrote:
>
> Thanks Marcus. Please let me know if R&D comes back with anything. I'm at
> a bit of a loss . . .
>
> Thanks,
> Jim
>
> ------------------------------
>
> Just to clarify--this is with the stock FPGA image, correct?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000243ec405d70ed5b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jim,<div>This sounds like a pretty big issue. I haven&#=
39;t chimed in because I couldn&#39;t say for sure if timed commands were w=
orking for me or not in UHD 4.1. I am using N321s with shared LO, so the no=
rmal commands I use for setting frequency aren&#39;t critical (from a timed=
 command perspective) except for how the DDC/DUC might be handling them. In=
 any case, once you find out the issue, could you please share the solution=
 here. If I get a chance, I will try this on some of my devices.</div><div>=
Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Feb 2, 2022 at 12:22 PM Jim Palladino &lt;<a href=3D"mailt=
o:jim@gardettoengineering.com">jim@gardettoengineering.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_7375824889804353296appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_7375824889804353296divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com" targ=
et=3D"_blank">jim@gardettoengineering.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;; <a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a> &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Correct -- I am using the stock FPGA image for the E320 and the N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,
<div>Jim</div>
<div><br>
</div>
</div>
<div id=3D"gmail-m_7375824889804353296x_appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_7375824889804353296x_divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" targ=
et=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank">jim@gardettoengineering.com</a>&gt;; <a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>=C2=A0</div>
</div>
<div>
<div>On 2022-02-02 10:21, Jim Palladino wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks Marcus. Please let me know if R&amp;D comes back with anything. I&#3=
9;m at a bit of a loss . . .=C2=A0</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<br>
</blockquote>
Just to clarify--this is with the stock FPGA image, correct?<br>
<br>
<br>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000243ec405d70ed5b6--

--===============8589224174226878372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8589224174226878372==--
