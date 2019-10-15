Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B038D7F3E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 20:43:01 +0200 (CEST)
Received: from [::1] (port=40962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKRme-0000Dg-HM; Tue, 15 Oct 2019 14:43:00 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:42739)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iKRma-00005J-JB
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 14:42:56 -0400
Received: by mail-ot1-f51.google.com with SMTP id c10so17870057otd.9
 for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2019 11:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y7JzwygO8QbV3EUVj91GL/Umz1yC3xNVR66tGQ9AXSk=;
 b=eN9x9NqgyTrBXopDtybTpTR7FLg+Vd/64fJ2yQdawyfC6oKAZfOCXmVHD+aoVRazIp
 5Pgrt4Dj+RS/I83vbDYZkbbkS9uVhWgxjFCn2BvQaCM2ioH4FZV5e545dfycSq61nfj4
 i/GXTptvwQLcZL/Q7AEO1oY7ygmBdtAA6I0x89auinjEkoA+aGA+YaUKnMS2QDrAelNv
 Of59h9I6CRgXOm+eJ4yT7oL0rGWq/HWml4pN9Kj6U1hXujYmFKQvCFWymK3BXG9yLFks
 mmo6bwixtWxCiELK7HxsdaFoClPX8kyVBn/Z/Xaork+pprdElYkTcbdBN/2TmVlPv0IO
 K1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y7JzwygO8QbV3EUVj91GL/Umz1yC3xNVR66tGQ9AXSk=;
 b=sAizX+gK/wT6dMjxE4MdqKUiA1lWI7KW5icrCOst1cbNDCQo6zsamDqcvIUu38Nf7Z
 WwYy0+ebND4Tm+bc7ZIXDPSDrc99JGSTNQiBMvic+bCaMqVxxPVzkjyDfSPFuiGImsIy
 Taz/9Uxf01KFzm5kqhlXi1huSxTrvSEcblpCLmBiLs7jj3WT1tdqIfCR2BhtMWfnW+wP
 HBE31+nSfx5iPN8ujdsbs/7lH09LKOjVpWU4vUaaJ3BBq9neGmOYUQHj1Yd8wAjhjwyw
 8BwpawipypN1J+7SBq8OuQ1CcH+++h8dSJ3k19TN/2G4HAsMBuli9pAOeCv87i8O8N8J
 sk4A==
X-Gm-Message-State: APjAAAVX3eWSDNi6Yvsam7jZsUhjhXICLgL1ZD8XEHsIBlt96QYP2iJ3
 XWMoUMh9Ar+OXTnEOgwDHwFCgHSUshtStHxrygYlWS6N
X-Google-Smtp-Source: APXvYqzL8VtySMH4FbRxVEZGNECLpPyIf4nQxpIawFjS4b8VW2VO6kxI/laUbYDXWWhbfieg6Xozqgk2NQYa1HdZsag=
X-Received: by 2002:a9d:75d0:: with SMTP id c16mr14683465otl.32.1571164935714; 
 Tue, 15 Oct 2019 11:42:15 -0700 (PDT)
MIME-Version: 1.0
References: <fb478c7a807248fbbdb4ae7a8803ce62@gtri.gatech.edu>
In-Reply-To: <fb478c7a807248fbbdb4ae7a8803ce62@gtri.gatech.edu>
Date: Tue, 15 Oct 2019 11:42:46 -0700
Message-ID: <CAL263iyOYE9QjRnUYEMLVMvrS6_BAj5AQBzs8yYWmh0nqgKDiA@mail.gmail.com>
To: "Lundberg, Daniel" <daniel.lundberg@gtri.gatech.edu>
Subject: Re: [USRP-users] DPDK setup with N320
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4084767605191358123=="
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

--===============4084767605191358123==
Content-Type: multipart/alternative; boundary="000000000000e08d270594f7571e"

--000000000000e08d270594f7571e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

The uhd.conf file should be put at /root/.uhd/uhd.conf

You will also need to run the UHD app as root when using DPDK.

I can follow up with you offlist with some additional notes I have on
getting started with DPDK. We will be publishing a detailed app note soon
to cover the topic.

Regards,
Nate Temple

On Tue, Oct 15, 2019 at 11:37 AM Lundberg, Daniel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> My end goal is to use Gnuradio with an N320 to support 250 MS/s
> streaming.  I am posting to the USRP users list first, because I think
> that=E2=80=99s the current area of the problem.  I suspect I have a permi=
ssions or
> uhd.conf issue, but the documentation on how to set this up correctly is
> lacking.
>
>
>
> I can stream to the N320 in the =E2=80=9Cnormal=E2=80=9D way (without DPD=
K) via gnuradio
> at rates of 125 MS/s in each direction, so I know that all of the hardwar=
e
> and regular uhd and/or gnuradio setup is working.
>
>
>
> I have gone through and tried to set up DPDK to work with the N320 and th=
e
> Ettus connectivity kit (2X SFP+) following this:
> https://files.ettus.com/manual/page_dpdk.html
>
> I can successfully bind the spf+ ports to the vfio-pci using the
> dpdk-devbind.py script.  If I check with dpdk-devbind.py =E2=80=93status =
after this
> they show up as assigned to the DPDK driver.
>
>
>
> I updated /etc/uhd/uhd.conf as suggested, including the mac addresses, cp=
u
> assignment, etc=E2=80=A6, but I don=E2=80=99t think UHD is finding it cor=
rectly.  When I
> try to call uhd (via /usr/local/lib/uhd/examples/benchmark_rate) with a
> use_dpdk=3D1 argument, I get a number of errors, including:
>
>
>
> [INFO] [MPM.PeriphManager.UDP] No CHDR interfaces found!
>
> [INFO] [MPM.PeriphManager.UDP] No CHDR interfaces found!
>
> [ERROR] [MPMD] No viable transport path found!
>
> [ERROR] [MPMD] Failure during block enumeration: RuntimeError: No viable
> transport path found!
>
> =E2=80=A6
>
> =E2=80=A6
>
> Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()
>
>
>
> I=E2=80=99ve tried running benchmark_rate as a regular user and via sudo,=
 as well
> as via gnuradio as a regular user.  My gnuradio and UHD were installed fr=
om
> source.  Same issues with all approaches.  I see a very similar thread he=
re
> in the 3.14.0.0 release notes and it doesn=E2=80=99t look like these issu=
es were
> resolved within that thread:
>
>
> http://ettus.80997.x6.nabble.com/USRP-users-UHD-Announcing-3-14-0-0-Relea=
se-Candidate-1-td11840.html
>
>
>
> Can someone from Ettus chime in?  Do I need to be running UHD and/or
> gnuradio as root, as implied in that thread?  If this requires installing
> things in a manner different from your published =E2=80=9CGetting started=
 with the
> N320 guide=E2=80=A6=E2=80=9D can you please help me understand the steps =
needed to get DPDK
> working with an N320?
>
>
>
> I am running Ubuntu 18.03.4, UHD is 3.14.0 (specifically
> UHD_3.14.0.HEAD-0-gf6cacec8).
>
>
>
> Thank you,
>
>
>
> DL
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e08d270594f7571e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Daniel,</div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,helvetica,sans-serif">The uhd.conf file shoul=
d be put at /root/.uhd/uhd.conf</div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defau=
lt" style=3D"font-family:arial,helvetica,sans-serif">You will also need to =
run the UHD app as root when using DPDK.<br><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">I can follow up wi=
th you offlist with some additional notes I have on getting started with DP=
DK. We will be publishing a detailed app note soon to cover the topic.</div=
><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-ser=
if"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helve=
tica,sans-serif">Regards,</div><div class=3D"gmail_default" style=3D"font-f=
amily:arial,helvetica,sans-serif">Nate Temple<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 15, 2019=
 at 11:37 AM Lundberg, Daniel via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_6137156434978895865WordSection1">
<p class=3D"MsoNormal">My end goal is to use Gnuradio with an N320 to suppo=
rt 250 MS/s streaming.=C2=A0 I am posting to the USRP users list first, bec=
ause I think that=E2=80=99s the current area of the problem.=C2=A0 I suspec=
t I have a permissions or uhd.conf issue, but the documentation
 on how to set this up correctly is lacking.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I can stream to the N320 in the =E2=80=9Cnormal=E2=
=80=9D way (without DPDK) via gnuradio at rates of 125 MS/s in each directi=
on, so I know that all of the hardware and regular uhd and/or gnuradio setu=
p is working.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 <u></u><u></u></p>
<p class=3D"MsoNormal">I have gone through and tried to set up DPDK to work=
 with the N320 and the Ettus connectivity kit (2X SFP+) following this:
<a href=3D"https://files.ettus.com/manual/page_dpdk.html" target=3D"_blank"=
>https://files.ettus.com/manual/page_dpdk.html</a><u></u><u></u></p>
<p class=3D"MsoNormal">I can successfully bind the spf+ ports to the vfio-p=
ci using the dpdk-devbind.py script.=C2=A0 If I check with dpdk-devbind.py =
=E2=80=93status after this they show up as assigned to the DPDK driver.<u><=
/u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I updated /etc/uhd/uhd.conf as suggested, including =
the mac addresses, cpu assignment, etc=E2=80=A6, but I don=E2=80=99t think =
UHD is finding it correctly.=C2=A0 When I try to call uhd (via /usr/local/l=
ib/uhd/examples/benchmark_rate) with a use_dpdk=3D1 argument,
 I get a number of errors, including:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager.UDP] No CHDR interfaces fo=
und!<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPM.PeriphManager.UDP] No CHDR interfaces fo=
und!<u></u><u></u></p>
<p class=3D"MsoNormal">[ERROR] [MPMD] No viable transport path found!<u></u=
><u></u></p>
<p class=3D"MsoNormal">[ERROR] [MPMD] Failure during block enumeration: Run=
timeError: No viable transport path found!<u></u><u></u></p>
<p class=3D"MsoNormal">=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal">Error: RuntimeError: Failed to run enumerate_rfnoc_b=
locks()<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I=E2=80=99ve tried running benchmark_rate as a regul=
ar user and via sudo, as well as via gnuradio as a regular user.=C2=A0 My g=
nuradio and UHD were installed from source.=C2=A0 Same issues with all appr=
oaches.=C2=A0 I see a very similar thread here in the 3.14.0.0
 release notes and it doesn=E2=80=99t look like these issues were resolved =
within that thread:<u></u><u></u></p>
<p class=3D"MsoNormal"><a href=3D"http://ettus.80997.x6.nabble.com/USRP-use=
rs-UHD-Announcing-3-14-0-0-Release-Candidate-1-td11840.html" target=3D"_bla=
nk">http://ettus.80997.x6.nabble.com/USRP-users-UHD-Announcing-3-14-0-0-Rel=
ease-Candidate-1-td11840.html</a><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Can someone from Ettus chime in?=C2=A0 Do I need to =
be running UHD and/or gnuradio as root, as implied in that thread?=C2=A0 If=
 this requires installing things in a manner different from your published =
=E2=80=9CGetting started with the N320 guide=E2=80=A6=E2=80=9D can you
 please help me understand the steps needed to get DPDK working with an N32=
0?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am running Ubuntu 18.03.4, UHD is 3.14.0 (specific=
ally UHD_3.14.0.HEAD-0-gf6cacec8).<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thank you,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">DL<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
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

--000000000000e08d270594f7571e--


--===============4084767605191358123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4084767605191358123==--

