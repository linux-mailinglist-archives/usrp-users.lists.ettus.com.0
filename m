Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C531E12E8D8
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2020 17:44:56 +0100 (CET)
Received: from [::1] (port=44566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1in3ah-0001JO-Ec; Thu, 02 Jan 2020 11:44:55 -0500
Received: from mail-ot1-f54.google.com ([209.85.210.54]:44105)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1in3ae-0001Do-4a
 for usrp-users@lists.ettus.com; Thu, 02 Jan 2020 11:44:52 -0500
Received: by mail-ot1-f54.google.com with SMTP id h9so55110125otj.11
 for <usrp-users@lists.ettus.com>; Thu, 02 Jan 2020 08:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zmED+NoGJldoiYwEItw+hbjfDB221p57dTSWjuXL2AQ=;
 b=M+DT5efH81+GUrQ3y4vOki1mRcHoGhRdO53NRzq9OVp0PucJP30BYCpGR3POzM8HF2
 UbAXg8gx2E4cuKjM8YhLhBd6DIzqMv4p+V6LfAecIvKat6YO3OApDAT9houeAmiMQuiP
 OXN5LMMDHv3V91n8t0Q3E8vBmWDIrHt13I7fbID2qh++LZzwgaJ7h6pqTmnGQkphJnk9
 /zect8ODdkeJLrN67AolnzWVFS8KJZjSK9tY40Z/xPgXN5MhoPs/EizEMyOyxnSkl9zJ
 pZUAR3Zn5xGyX0RC4o3jVRgAEJufyqursJzHib+U7s7TjH1D8av+3fadPRx+gQL2/4pl
 66ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zmED+NoGJldoiYwEItw+hbjfDB221p57dTSWjuXL2AQ=;
 b=HwgWl4DmKDhMClniE64pVNKu0n34qfMwBgOuUyYzZLpez20pbbElAvE+E7HgtBUmNJ
 oj3wjkeIX5MPeQnpsNLbDPBhhtw2KdIEHzLjTUk/QzNscrH+Spqdpy6iWq4+gEJhQn1k
 Ngx9LIcLmYxSNq2tunI7WFgcxldmJI97z1QlTPg5HsEKnkW+NjDCWjdUQqF6perz3mY+
 zvuptp9g2cEVHQvYTWfjr4Ldq3PQkhYpyKiv1/O4koe9JyEuyJiIM0oLqdghQILZLdtB
 K1J02e3yKaZOv21rfbog03/P0vVfsxFkyM3jHbriaXF6EpMW1zu1QEmivZ4lmc2jK4lT
 qAqg==
X-Gm-Message-State: APjAAAXseQ1fRMF/fiESqJEbzGMypZhHjjceLcZTWU9Gk8N2S13fh1Nw
 kZjbzzzXNgSJkCGSWDEbFDBgnKsirq1jpxQ17zWLSg==
X-Google-Smtp-Source: APXvYqxZofeHKyhEs39b2/C1G4pL33H0yqYP5c9HJJHBIQ++9Q+l60b6uOieY6NBT/42jTRmfWaU42m/+LZNw4I6Unk=
X-Received: by 2002:a9d:3b5:: with SMTP id f50mr90463880otf.354.1577983450843; 
 Thu, 02 Jan 2020 08:44:10 -0800 (PST)
MIME-Version: 1.0
References: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <758569ee796e2542bd4ecab8262eec008833363b.camel@ettus.com>
 <MW2PR1901MB213725DFFB9B0B5E41DA85EFC6270@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK7LePWMpkm7-=gHOa-oFH_hOTQAQxVeMnfh9PgzPUWp6A@mail.gmail.com>
 <MW2PR1901MB2137B95238D836E603F9CBB2C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
In-Reply-To: <MW2PR1901MB2137B95238D836E603F9CBB2C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
Date: Thu, 2 Jan 2020 11:43:59 -0500
Message-ID: <CAEXYVK6n3NroyojeqbZkZ2KeXOE-DQz48od0z=CtdAoEjzPwOg@mail.gmail.com>
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7823909453673578986=="
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

--===============7823909453673578986==
Content-Type: multipart/alternative; boundary="0000000000000c8d66059b2ae712"

--0000000000000c8d66059b2ae712
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 2, 2020 at 11:42 AM Jerrid Plymale <jerrid.plymale@canyon-us.com>
wrote:

> Hello Brian,
>
>
>
> I have installed UHD 3.15.0.0-124-geb448043
>

And this is what you're trying to build?

Brian

>

--0000000000000c8d66059b2ae712
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 2, 2020 at 11:42 AM Jerrid Pl=
ymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.plymale@ca=
nyon-us.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_4128128573626225171WordSection1">
<p class=3D"MsoNormal">Hello Brian,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have installed UHD 3.15.0.0-124-geb448043</p></div=
></div></blockquote><div><br></div><div>And this is what you&#39;re trying =
to build?</div><div><br></div><div>Brian</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_412812857362=
6225171WordSection1">
</div>
</div>

</blockquote></div></div>

--0000000000000c8d66059b2ae712--


--===============7823909453673578986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7823909453673578986==--

