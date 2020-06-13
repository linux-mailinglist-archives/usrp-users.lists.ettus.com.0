Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 225961F8473
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 19:35:54 +0200 (CEST)
Received: from [::1] (port=39642 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkA4N-0005qr-Gp; Sat, 13 Jun 2020 13:35:51 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:40033)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jkA4J-0005b2-Ql
 for USRP-users@lists.ettus.com; Sat, 13 Jun 2020 13:35:47 -0400
Received: by mail-qt1-f169.google.com with SMTP id i16so9581323qtr.7
 for <USRP-users@lists.ettus.com>; Sat, 13 Jun 2020 10:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=BK92xZQY2eE/Jd9clImEVlBjjgL982PP0qnEjvSvnCA=;
 b=FsW55ZvaO/7eu46AcpFQ9Wp7uYmNbUDPYXfdj7MJPl/vegYpVNX7up7mJwwFFx93KQ
 gHhli0hqXNPJc2uXhilaOx3kFNrByqF65PZPtXd0FSldbCYsPH27Cv5qw2ZUHxwGmurI
 Tsva7f3UpJ0j6jy/oNrqO39tHDVy0TWgjKBUN1ZBgysJYn6QjZ/gtcfcB5dpF634nLTY
 ka+a7eSf/Xkj+A0RH7VBUV/fhxwZv8tApEmHwitoJifaSuLKZJmCDfhfGxpGXBuncbPl
 TUff/7u6U97FZqodi/ogMWEPxQR4BPi2oz+IeyMrFyRXDUuYWRik498CexefZr9A0GzE
 aP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=BK92xZQY2eE/Jd9clImEVlBjjgL982PP0qnEjvSvnCA=;
 b=hTA0TVP//YdglOQSDhuUJFlSLamurTuBsq8klkBpXNFHj85iJa9GcYi5t3my5XSF8N
 hWsw4uBFI+8rO1qobOfctS26buaLgcbYAW0nt4PrEFhs7Dnrigg8+6sWFZ1UYhwEk2tp
 N0zewGYnp7oMDh7pTfp21SPsjfn+OqqNmzN4b5lh29qHTfzqLE4+N9yZdCsbIzHIgNVv
 drdMPRoyiLpWs0LeuqhDyxh4+0bvP01O8ImLAQ4cEiiUk0XFz0tRwf/0JXskQerbqEgJ
 1RWEOfsEmoLuqNn+8xdRa9nCWhAK3loMQslLuAziUe/LQPeuOjvz1efl7Tf6oEgx90jD
 jpPw==
X-Gm-Message-State: AOAM533GQLlcNAQEgWN+M/HggbXMxpulDG3GUzqINiqV3lgFA1QYKbBp
 0rDrD+X6Osgz1ZOM3D6gstE=
X-Google-Smtp-Source: ABdhPJxDDTTa/B/AHNYNKfsvRMKSABlXLXqYiGphd16xQgYbhCYpIYk1wcFb3pA49wrNdy6pxDMDyw==
X-Received: by 2002:ac8:6edb:: with SMTP id f27mr8297757qtv.325.1592069707304; 
 Sat, 13 Jun 2020 10:35:07 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id z79sm7109510qkb.32.2020.06.13.10.35.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 10:35:06 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 13 Jun 2020 13:35:06 -0400
Message-Id: <F4B7797D-3893-431A-BAB6-9F7167A20F9B@gmail.com>
References: <DM5PR22MB165974FB99B3462BE24BE2B2C89E0@DM5PR22MB1659.namprd22.prod.outlook.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
In-Reply-To: <DM5PR22MB165974FB99B3462BE24BE2B2C89E0@DM5PR22MB1659.namprd22.prod.outlook.com>
To: Benjamin R Nold <bnold@purdue.edu>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] USB 3.0 to Optical Adapter
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4402368522340210360=="
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


--===============4402368522340210360==
Content-Type: multipart/alternative; boundary=Apple-Mail-EDF8CBA2-343C-4971-B5CF-A9E1D6B4F4B6
Content-Transfer-Encoding: 7bit


--Apple-Mail-EDF8CBA2-343C-4971-B5CF-A9E1D6B4F4B6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

The folks at the Dominion Radio Astronomy Observatory use a B210 on the end o=
f an optical USB3 adapter. Works just fine. They did this a few years back s=
o there=E2=80=99s probably better/cheaper units out there these days.=20

Sent from my iPhone

> On Jun 13, 2020, at 1:20 PM, Benjamin R Nold via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi,
> =20
> I=E2=80=99m working on an application where I=E2=80=99m forced to have phy=
sical distance between my B210 USRP and host machine. I=E2=80=99m looking at=
 purchasing a USB 3.0 to optical adapter, has anyone tried one before? Does a=
nyone have any insights if it will work/potential pitfalls?
> =20
> https://www.icronshop.com/icron-brand/usb-30-spectra-3022
> =20
> Thanks,
> Benjamin Nold
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-EDF8CBA2-343C-4971-B5CF-A9E1D6B4F4B6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">The folks at the Dominion Radio Astronomy O=
bservatory use a B210 on the end of an optical USB3 adapter. Works just fine=
. They did this a few years back so there=E2=80=99s probably better/cheaper u=
nits out there these days.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone=
</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jun 13, 2020, at 1:2=
0 PM, Benjamin R Nold via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrot=
e:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I=E2=80=99m working on an application where I=E2=80=99=
m forced to have physical distance between my B210 USRP and host machine. I=E2=
=80=99m looking at purchasing a USB 3.0 to optical adapter, has anyone tried=
 one before? Does anyone have any insights if it will
 work/potential pitfalls?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">https://www.icronshop.com/icron-brand/usb-30-spectra-=
3022<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Benjamin Nold<o:p></o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-EDF8CBA2-343C-4971-B5CF-A9E1D6B4F4B6--


--===============4402368522340210360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4402368522340210360==--

