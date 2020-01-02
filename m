Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA0612E8F5
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jan 2020 17:52:59 +0100 (CET)
Received: from [::1] (port=49366 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1in3iU-0002Jk-Db; Thu, 02 Jan 2020 11:52:58 -0500
Received: from mail-oi1-f173.google.com ([209.85.167.173]:42877)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1in3iQ-00029d-3n
 for usrp-users@lists.ettus.com; Thu, 02 Jan 2020 11:52:54 -0500
Received: by mail-oi1-f173.google.com with SMTP id 18so12407407oin.9
 for <usrp-users@lists.ettus.com>; Thu, 02 Jan 2020 08:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5gKEyOXoW6km5N1xNYHc76p3fdU+7omuXisg3XujURg=;
 b=BBDv5DlZkcsdVpKs5dKn2okVVXR4urEH+kkDJVmUady784IXZViZHH2N8lPzjNO0Qz
 b20EZ0zjDN4EzlhEuB1fhXIdDhEwhoc1YPXE9Tneq0S2FoBWR1crUjsUgfh0HZXYB7yW
 qocvnTgzTfiT8PtuBWOAqvUIQAjGP7sHmS7l8KpbXOrJ77PXA/986WSVQIyGV+xBTFRK
 8SL7ooHGoplk7DEoKcxytmLewgKsLT1inITW3qRT50r+T8uMdqNaaN66HsURy89XLAPy
 8X/DNNWnzHBagq9EfRxPEBXBUuxYgijhI8tSX8Wldua4U4KV+uhK22pUFOS7eFbJsJw+
 Csog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5gKEyOXoW6km5N1xNYHc76p3fdU+7omuXisg3XujURg=;
 b=Ie5ZCveXAjZ035Scy+fEAFFoMgJ21RwqfCGhmTBCwDWY54s1kQUMthNCNQIayD0P59
 PtWWIytShPMLg+x25g9XGkvxauKSv8tfRobXp7T5jCcYEXfk/ExdHo5h2qNtsdh5lIKL
 FrrqYlyLQMLnGTsk6lfrWjznImxXzfcGFePzPJqLrRsIA3cJRz//ieKCOLEJ5W1ERH+F
 YQLraTCnuJGaO6LxXT69BaUl+PGIZLCVdtv5Kdr2X2CDIvf09P/9ZLYLnD6HrtMImDib
 PMBdml4BYVO/j0xpI/cmfHxuMGQjqOzd3c3/yndjv4YGb7g6nYZA8wgXpiJ4vD5HFlJ1
 Gn1A==
X-Gm-Message-State: APjAAAUNcCTRy+upc/GVrI3FaRy0BF4rX3IeYeRhf3bDQEiaFGpSWk6x
 DDPCfBdWI2sF4upJGmDI3vGgh3kc3Rbt/bp3mzk=
X-Google-Smtp-Source: APXvYqxBb23UBVfiElYRZOeRgVJQsiKmuALS1ssiGT8BWLd7p3kZ/oJKoWBRKyhXyo9kQJ4SkYCWSaIB84S4UIdu2QI=
X-Received: by 2002:aca:d5d3:: with SMTP id m202mr2438157oig.161.1577983933248; 
 Thu, 02 Jan 2020 08:52:13 -0800 (PST)
MIME-Version: 1.0
References: <MW2PR1901MB2137457D7A0A319B788A4264C62A0@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <758569ee796e2542bd4ecab8262eec008833363b.camel@ettus.com>
 <MW2PR1901MB213725DFFB9B0B5E41DA85EFC6270@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK7LePWMpkm7-=gHOa-oFH_hOTQAQxVeMnfh9PgzPUWp6A@mail.gmail.com>
 <MW2PR1901MB2137B95238D836E603F9CBB2C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <CAEXYVK6n3NroyojeqbZkZ2KeXOE-DQz48od0z=CtdAoEjzPwOg@mail.gmail.com>
 <MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
In-Reply-To: <MW2PR1901MB21377D89A41FDE1BB0DE1A15C6200@MW2PR1901MB2137.namprd19.prod.outlook.com>
Date: Thu, 2 Jan 2020 11:52:01 -0500
Message-ID: <CAEXYVK6OsAs4z2WiL8Opni9QsaaPo804sE8RN=SiUBKkWwKngw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2623772258462250535=="
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

--===============2623772258462250535==
Content-Type: multipart/alternative; boundary="000000000000cd7baf059b2b039a"

--000000000000cd7baf059b2b039a
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 2, 2020 at 11:48 AM Jerrid Plymale <jerrid.plymale@canyon-us.com>
wrote:

> I am trying to generate a custom RFNoC FPGA Image using this version of
> UHD.
>

OK.  So you've checked out fde2a94eb7231af859653db8caaf777ae2b66199 and
you're trying to build a regular image with Vivado 2018.3.  Correct?

Brian

>

--000000000000cd7baf059b2b039a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jan 2, 2020 at 11:48 AM Jerrid Pl=
ymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.plymale@ca=
nyon-us.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3369361410981638428WordSection1">
<p class=3D"MsoNormal">I am trying to generate a custom RFNoC FPGA Image us=
ing this version of UHD.</p></div></div></blockquote><div><br></div><div>OK=
.=C2=A0 So you&#39;ve checked=C2=A0out=C2=A0fde2a94eb7231af859653db8caaf777=
ae2b66199 and you&#39;re trying to build a regular image=C2=A0with Vivado 2=
018.3.=C2=A0 Correct?</div><div><br></div><div>Brian</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_=
3369361410981638428WordSection1"><div><div><div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000cd7baf059b2b039a--


--===============2623772258462250535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2623772258462250535==--

