Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C621561F2
	for <lists+usrp-users@lfdr.de>; Sat,  8 Feb 2020 01:41:48 +0100 (CET)
Received: from [::1] (port=54324 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j0EBs-00074V-5n; Fri, 07 Feb 2020 19:41:44 -0500
Received: from mail-il1-f180.google.com ([209.85.166.180]:37527)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.west@ettus.com>)
 id 1j0EBo-0006zr-Nf
 for usrp-users@lists.ettus.com; Fri, 07 Feb 2020 19:41:40 -0500
Received: by mail-il1-f180.google.com with SMTP id v13so1120155iln.4
 for <usrp-users@lists.ettus.com>; Fri, 07 Feb 2020 16:41:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S40qEos68tLiWlY3VGqX34LMv4UwP0oesytD2jS8mg0=;
 b=jhLAaT5vk8zfWhCXCyMMMkczlJ2hCfjEBOLBFfBg5NWnmUIXZK38JYgy1Dns+tXWJs
 16d+qPJqFOlC/vY+k8uxI5l0qoQAoLKdhNej0FjfQcnseoyfk6nlJ6FUwDAWUTxNtknj
 mmvbY2ZJjaviNIYgAFzlR5akchbgxibVSravP1s37FFX3N2gLP4sTJCGUQ7QRyV5EBc1
 Ku8ly1ojG3nvJQTupRY+OuQFue4Yh3EGkqDSPczIcm/0Prm0yOhrFM+vaVfGStnvGHKY
 62ublaTJ4VRKLNOv4i/0N1VwFxUougxuxopGrt9zoUzxglTUeo5ZWojdaEP2V7Vu8TNQ
 IgJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S40qEos68tLiWlY3VGqX34LMv4UwP0oesytD2jS8mg0=;
 b=IGf8FS9OLcZveA6yxbLICNeRNQgwUK6I+yr2bxVCRNiJT8lFjyiaZ6Of6nk7/YtrvN
 0rHqxKRyl/gSPCC2nYAT0TkRcAp/qi6hXqkgB08Xsws1VEX8z6JLtuJzhgqztCxplYyV
 6Q2vGVNAwlVU0G0ZRQ6Ct4030PBU8vfHVWygVgbs/eRbVG/Yyh5pLt6t8s5noRsw1GWg
 0ztrXl2d1arYJyVvSjQVkFexjEGLfB+ZYVpJzBB721YAKxZ2qI404/unuXYzKrdQpBCt
 DqMx3iwE9gh6efGyrb0OakBG/XZNkN8XcFZP5dQYQbB7EFMd7PDErGgK60+o69grxYWi
 lpXA==
X-Gm-Message-State: APjAAAWBALNDde64phIpZY5Fx9j7LOQ2Ild8ynhytXBDYr9O084F2ies
 ka6znu/MbmTXDnBOVkB2KFfF54qezcBxrWPIAaIj9diR
X-Google-Smtp-Source: APXvYqxRbnPQ8A8l/PqjvXpX9XLZ5gnJgrVeM+fxlkokl0AOq9JEHBYb5LRD/HR77OskcF5Y9FgqwspiddYA3QTRhFE=
X-Received: by 2002:a92:d7c1:: with SMTP id g1mr2258580ilq.192.1581122459725; 
 Fri, 07 Feb 2020 16:40:59 -0800 (PST)
MIME-Version: 1.0
References: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <758569ee796e2542bd4ecab8262eec008833363b.camel@ettus.com>
 <MW2PR1901MB213725DFFB9B0B5E41DA85EFC6270@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK7LePWMpkm7-=gHOa-oFH_hOTQAQxVeMnfh9PgzPUWp6A@mail.gmail.com>
 <MW2PR1901MB2137B95238D836E603F9CBB2C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK6n3NroyojeqbZkZ2KeXOE-DQz48od0z=CtdAoEjzPwOg@mail.gmail.com>
 <MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK6OsAs4z2WiL8Opni9QsaaPo804sE8RN=SiUBKkWwKngw@mail.gmail.com>
 <MW2PR1901MB2137796A867DDB5331057D34C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
In-Reply-To: <MW2PR1901MB2137796A867DDB5331057D34C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
Date: Fri, 7 Feb 2020 16:40:48 -0800
Message-ID: <CAM4xKrpQoLKz5+bmNiJOquczRL8__DmUcvz+49vXMfF4oG6fag@mail.gmail.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
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
From: Michael West via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael West <michael.west@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4218435273496601545=="
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

--===============4218435273496601545==
Content-Type: multipart/alternative; boundary="0000000000008f0f4a059e05c253"

--0000000000008f0f4a059e05c253
Content-Type: text/plain; charset="UTF-8"

Hi Jerrid/Brian,

I wanted to follow up and let you know that the fix for this issue is now
available on the UHD-3.15.LTS branch.  Thank you for posting and for your
patience.

Regards,
Michael

On Thu, Jan 2, 2020 at 8:57 AM Jerrid Plymale via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Yes, I have just been following the guide on the getting started with
> RFNoC page.
>
>
>
> Best Regards,
>
>
>
> Jerrid
>
>
>
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Thursday, January 2, 2020 8:52 AM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Building RFNoC image with default blocks
> fails, [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
>
>
>
> On Thu, Jan 2, 2020 at 11:48 AM Jerrid Plymale <
> jerrid.plymale@canyon-us.com> wrote:
>
> I am trying to generate a custom RFNoC FPGA Image using this version of
> UHD.
>
>
>
> OK.  So you've checked out fde2a94eb7231af859653db8caaf777ae2b66199 and
> you're trying to build a regular image with Vivado 2018.3.  Correct?
>
>
>
> Brian
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000008f0f4a059e05c253
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jerrid/Brian,</div><div><br></div><div>I wanted to=
 follow up and let you know that the fix for this issue is now available on=
 the UHD-3.15.LTS branch.=C2=A0 Thank you for posting and for your patience=
.<br></div><div><br></div><div>Regards,</div><div>Michael<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
Jan 2, 2020 at 8:57 AM Jerrid Plymale via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_5759343250386912884WordSection1">
<p class=3D"MsoNormal">Yes, I have just been following the guide on the get=
ting started with RFNoC page.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best Regards,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Jerrid<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> Brian Padalino &lt;<a href=3D"mailto:bp=
adalino@gmail.com" target=3D"_blank">bpadalino@gmail.com</a>&gt; <br>
<b>Sent:</b> Thursday, January 2, 2020 8:52 AM<br>
<b>To:</b> Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.co=
m" target=3D"_blank">jerrid.plymale@canyon-us.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Building RFNoC image with default blocks f=
ails, [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers<u></u><u>=
</u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Jan 2, 2020 at 11:48 AM Jerrid Plymale &lt;<=
a href=3D"mailto:jerrid.plymale@canyon-us.com" target=3D"_blank">jerrid.ply=
male@canyon-us.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">I am trying to generate a custom RFNoC FPGA Image us=
ing this version of UHD.<u></u><u></u></p>
</div>
</div>
</blockquote>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">OK.=C2=A0 So you&#39;ve checked=C2=A0out=C2=A0fde2a9=
4eb7231af859653db8caaf777ae2b66199 and you&#39;re trying to build a regular=
 image=C2=A0with Vivado 2018.3.=C2=A0 Correct?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Brian<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000008f0f4a059e05c253--


--===============4218435273496601545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4218435273496601545==--

