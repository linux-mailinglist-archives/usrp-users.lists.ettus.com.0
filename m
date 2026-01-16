Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C30ED2D185
	for <lists+usrp-users@lfdr.de>; Fri, 16 Jan 2026 08:21:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1F4B9386655
	for <lists+usrp-users@lfdr.de>; Fri, 16 Jan 2026 02:21:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768548116; bh=m6HCHgqcQARavW3SQnPkXeviYUZ5/B6TLpv4EnPTHQM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=byr48NqEatJwxSj2adcYpoUGe/I0Udsn8KkdGqzxwfV5NuJ3UrwaAp3F77xhtc6T0
	 8BzjpnplYPlw2k5S6i+Po2F9mv4SCTDhuSsSzPGt9YQ7tyAhkFtgpROt7KkVEpgvQ5
	 51IKbokNiQAYP8ziGDyZufBf03F9OjvG6I4EImNskxhMtvSvccTlOtRegf6x8y6S98
	 QSgF2AcyQAyNIi4qgsXX3avwhlSpQuFU6cfqrpEHsJPIdYPVBW20dWjLcysfc9pO61
	 twsQf+Pq/JYNXInYm6hRMe6l0mulMSDoABZH9W/3/uNVDz7Z5TPmD6PV2l0ZAXlMED
	 nzE49PvrgVYTQ==
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	by mm2.emwd.com (Postfix) with ESMTPS id D6551386562
	for <usrp-users@lists.ettus.com>; Fri, 16 Jan 2026 02:21:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="k+6JcHPX";
	dkim-atps=neutral
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c2a9a9b43b1so1190911a12.2
        for <usrp-users@lists.ettus.com>; Thu, 15 Jan 2026 23:21:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768548079; cv=none;
        d=google.com; s=arc-20240605;
        b=eGlI5f7jqM0/4A4fWjdo42WF4O+khj6qTqCkVYu1xVZXs4LF89aTlioPYD16x0qXZi
         2xLmVvUm/9gJuvjmndgreeriTGGd6zUQJ292fTBNP2XiLV8kpscsvBubbNGBFu245xT8
         ZScSpFJAvOly2vhYvGzKLhfWgxR5YKEf4rBtOZENlMbBdbSlE47u29rTpOOPGNi6qQhP
         gQPgdc1bXHuLXJ1mVcygqBQOq9sKH/c80o9oznY6Ba52Bl7UtzM6npFaeqLZkcUjsYKT
         YKL1U272ZkdM/95wSqgKAL2xqDGud+/GAmpSM8WOLDsn1Ztd58MwA+v84jxMV4nD6EV1
         ORLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hHBeq4L0cWwQI5YhXz+lbRP2+XTXnpv20XIkHtbP1Bo=;
        fh=IPOdNLNbfziQbSoRl85xQjZKBShajdsGp99FASxp8Qw=;
        b=gdjXk2aUMup7rOyVzP1OWcsmZurq0Ky3doSwOkWnnqM+19eyNQRTb2Mu6SoBwJeD34
         ZcRC/hegkq0H50dvOwDAHS6yf5zL99t2h+7dP9rkqbFGHc3CKPemxcb9kvOWivYMlkB4
         EHYwnbujzc/03ekr7JQvvw19IJWjie2A1FHwzGMNb8GtrQH2H9Rkg1rr+LfNs+n4iuWG
         nwBnhCnIn8MMWDw31t6Z9B19qzGN1wjh+0Jnr3mgKmbCGbxfdTYxuMcKxNyl31dYVpH5
         8i6tDCXyy0yRAqhzlDEKo6HnnC1KJDw8K2DLvjqOAOeoDQSio2OUwxPqkb2aUaKaNehf
         FSyg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768548079; x=1769152879; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hHBeq4L0cWwQI5YhXz+lbRP2+XTXnpv20XIkHtbP1Bo=;
        b=k+6JcHPX8C7DYhKremlvnO+4Pk3nA9sozP05SY6fm3M29k7RtOmxTi0nf5tGwLoguV
         ReMgLKQ+VFGsfIckoZe2l+BHGNtG1tlnFV8rhPlJ2OGfBpH7rIknQKgQ3IcDGHxXuciM
         JWcMZBkfIsUwa47iqB0Pf7lVJQdb9JcRz+emXqQiHuhHJQ/HDXxQH83cTcMGyaHTO+Qj
         2nYBNdkovgBnMjdooSQM4eDw7738WSGwQmcL9FSGXOYOF/Xtsnbr3yKkTMEEJrUVswt6
         Al85uDtPlTlhNutYIG1vjpuw29ahlch4Kf5WyPdXMIGVN1+iD9XQsSXieb0V8G7VPTgJ
         BZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768548079; x=1769152879;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHBeq4L0cWwQI5YhXz+lbRP2+XTXnpv20XIkHtbP1Bo=;
        b=T8oTs8ZSpkhc9jd3z/ap36lf9YVJqfG1/ADOB083uvwBMGQhLCR1WA6gwY8evbvndd
         vC3VYsX1onnYk3S9B201eQTNLjy5QEp+C6h1Xy0ZkaDYvuf+HYi/Bhm2kJDdDMe9qGuG
         GPLs7k6mYYvfQMBunLYBHp97wc3VXKES+pKCbJ9iTxY0i1QcpBkCCHdxQ/QrDI7nznJM
         5Yymb2b4ENSJ+TGqph2F/wltcRmARDFjfM2U3qjb13FkUz2poX4roFO/xpznnuI3zL00
         Uq6BMf8HRtKMabVGj5/0UpIjWW2hRQiS/xviPnZS4AHo/Qn2gEdHLMHODIOQDJ4Z7zVj
         7riw==
X-Forwarded-Encrypted: i=1; AJvYcCVEe8b/Iv22Qb1n0P78I7siq7rvLgUXQsfwjuK/831P3zwTAXK2lmjuni3xhJSWDmXiCScMnc3H+y8p@lists.ettus.com
X-Gm-Message-State: AOJu0YylGqWzqXbWXWLRZyYNdBZyLycvhjCJ7mDa4BmTVrrdccxc3203
	73jXuOdVdysaRtgkfMq2SyFOBZ1vy0DlUwnC1HpKLjwjxoXIyXLK6X2EDMvhMslWzbhi3CZRSwT
	DofSzrhozGJf5sONLOXWhuhq+ly7OxVKxDobp
X-Gm-Gg: AY/fxX4dhBxw6N3Edp1/YSHeSrqzYS21CfzCtk/sKcJw8/K3SZGEr3WnMTVONYcNDBb
	TvpInuk7pJSs7fPiqJxXKeZr1b4BdvYJCuOm2a1VhkUrpwGenylmbrWCU2UkWMLlhRitQiAn/ri
	35liwOLprOEzbta7HGZsisEPPZXM2YeX8cRhJxX7zIWoQSi79zv94NyjxfXkEr2B8Z8nUgrtXZ8
	AlLK/1kVaIjm9qCOD+ThZGtcN7jsdjXAW/fzHe7vqJzceEbLy+Gd+Y1JAKvOxdbgG5z3EZt3JZV
	J+IMe1wARlXg+pdJQdORX2BLEXM=
X-Received: by 2002:a17:90b:5344:b0:34c:904a:d92 with SMTP id
 98e67ed59e1d1-35273274567mr1771318a91.26.1768548078731; Thu, 15 Jan 2026
 23:21:18 -0800 (PST)
MIME-Version: 1.0
References: <SA1P110MB19324582F1B8CFDD8469BBA6B78FA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
 <217ceb53-0caa-412a-a79d-dfc2c47208ff@gmail.com> <CAFOi1A5Jbr+bPB-C-kCpDXWcP-X06eBxRpsBEnbJsFqNC5ZeoQ@mail.gmail.com>
 <SA1P110MB1932E5C43DC39E78CD7E0687B78CA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <SA1P110MB1932E5C43DC39E78CD7E0687B78CA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
From: walter <walter.tackett@gmail.com>
Date: Thu, 15 Jan 2026 23:21:07 -0800
X-Gm-Features: AZwV_QjskYB0I0YLWYJsaJ8Fp4uTHglEkizP0slA_D2ZT6gFhH9tChqbpl35qXs
Message-ID: <CAKVCmaownKUMke8z5ydBBXdVuHw75ed7=nOJhqt__gmNSaV2Bw@mail.gmail.com>
To: David Raeman <david@synopticengineering.com>
Message-ID-Hash: CAT6RC3GBG5OS6IVJT6XVLP5CBTMXSHE
X-Message-ID-Hash: CAT6RC3GBG5OS6IVJT6XVLP5CBTMXSHE
X-MailFrom: walter.tackett@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using USRP B206mini with Octoclock 10MHz+PPS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CAT6RC3GBG5OS6IVJT6XVLP5CBTMXSHE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2763453815739821398=="

--===============2763453815739821398==
Content-Type: multipart/alternative; boundary="0000000000000045eb06487c30d6"

--0000000000000045eb06487c30d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

I've researched this before with the earlier model b200-mini.  As a retail
customer without the deeper resources and knowledge of our esteemed hosts,
I'd characterize the project as follows:

Net-net, to incorporate both PPS and 10MHz REF in a b200-mini (
*hackily-at-best**) invokes cost, complexity, and *time spent*** to such a
degree that less resources are involved in purchasing a B-210 (not a typo),
possibly two B210s (also not a typo).

*Footnotes:*
* *Hackily-at-best* includes the nonzero probability of smoking your
b200-mini.
***Cost of time spent* assumes you value your labor at
"McDonald's-high-school-summer-job-level" wages or higher.

*.--*

Walter Alden Tackett
415 407 0660
walter.tackett@gmail.com





On Thu, Jan 15, 2026 at 8:37=E2=80=AFAM David Raeman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Martin and Marcus,
>
>
>
> Thank you both very much for the feedback. For this application, when not
> attached to the Octoclock, I use a high quality OCXO reference and I need
> somewhat stable, trackable relative phase drift characteristics between
> radios. I didn=E2=80=99t realize the minis lack a dedicated hardware PLL =
and rely
> only on a digital control loop. It sounds like the high stochastic jitter
> could indeed be problematic for me and is an unavoidable limitation of th=
e
> small form-factor USRPs.
>
>
>
> I=E2=80=99ll still poke at it a bit, but I very much appreciate the heads=
-up!
>
> -David
>
>
>
>
>
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Thursday, January 15, 2026 3:47 AM
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: Using USRP B206mini with Octoclock 10MHz+PPS
>
>
>
> Hey David,
>
>
>
> to add onto what Marcus said: The minis don't have a hardware PLL (unlike
> the B200/B210, and all other USRPs). Before you go down the rabbit hole o=
f
> modifying the FPGA, you might want to run a few B2xx-minis from an
> Octoclock (ignore PPS for now), and check if the phase stability is good
> enough for your application.
>
>
>
> Other than that, it would be possible to use a GPIO input for PPS, but
> neither the software nor the FPGA expect that, and both will require
> modifications. For a USRP/UHD veteran such as yourself, that sounds
> feasible, but be aware it's a lot of work and might not give you what you
> need.
>
>
>
> --M
>
>
>
> On Wed, Jan 14, 2026 at 9:20=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
> On 2026-01-14 14:57, David Raeman via USRP-users wrote:
>
> Hello,
>
>
>
> I have a project currently hosted on a USRP E320 that involves distribute=
d
> signal coherence. During development I sometimes do over-the-wire testing
> using an Octoclock=E2=80=99s 10MHz and PPS outputs to synchronize multipl=
e radios
> on the bench.
>
>
>
> I=E2=80=99m starting to investigate the viability of rehosting this appli=
cation on
> a USRP B206mini to reduce size and cost. As far as I can discern, this
> radio only has a single port that can accept either a 10MHz reference inp=
ut
> or a PPS input. Is it possible to somehow use the radio with both clock a=
nd
> PPS outputs from an Octoclock with out-of-the-box UHD? If not, would it b=
e
> viable for me to add a bit of FPGA logic and UHD tweaks such that softwar=
e
> can specify a GPIO pin as the PPS input while using the SMA as the 10MHz
> input? Or are there hardware or systems constraints that would preclude
> that approach?
>
>
>
> Thanks!
>
> David Raeman
>
> Synoptic Engineering
>
>
>
> _______________________________________________
>
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You could probably add some FPGA functionality to implement a separate PP=
S
> input.
>
> But I should warn you that the clock servo in the B205x series is simply
> NOT UP TO THE TASK of building-out multi-unit coherent applications.
>
> The mutual phase-noise is way too high.  The B205 was never intended for
> such applications to begin with, and the clock servo just doesn't work th=
at
> well.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000045eb06487c30d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi David,</div><div><br>I&#39;ve researched this befo=
re with the earlier model b200-mini.=C2=A0 As a retail customer without the=
 deeper resources and knowledge of our esteemed hosts, I&#39;d characterize=
 the project as follows:<br><br></div><div>Net-net, to incorporate=C2=A0bot=
h PPS and 10MHz REF in a b200-mini (<i><u>hackily-at-best</u></i>*) invokes=
 cost, complexity, and <i><u>time spent</u></i>** to such a degree that=C2=
=A0less resources are involved in=C2=A0purchasing a B-210 (not a typo), pos=
sibly two B210s (also not a typo).</div><div><br></div><div><b>Footnotes:</=
b></div><div>* <i><u>Hackily-at-best</u></i> includes the nonzero probabili=
ty of smoking your b200-mini.</div><div>**<i><u>Cost of time spent</u></i> =
assumes you value your labor at &quot;McDonald&#39;s-high-school-summer-job=
-level&quot; wages or higher.</div><div><br></div><div><b>.--</b></div><div=
><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr">Walter Alden Tackett<br>415 407 0660<=
br><a href=3D"mailto:walter.tackett@gmail.com" target=3D"_blank">walter.tac=
kett@gmail.com</a><div><br></div><div><br></div><div><br></div></div></div>=
</div><br></div><br><div class=3D"gmail_quote gmail_quote_container"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 15, 2026 at 8:37=E2=80=AFAM Dav=
id Raeman via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div class=3D"msg-1669323594085702248">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-1669323594085702248WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Martin and Marcus,<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thank you both very m=
uch for the feedback. For this application, when not attached to the Octocl=
ock, I use a high quality OCXO reference and I need somewhat stable, tracka=
ble relative phase drift characteristics
 between radios. I didn=E2=80=99t realize the minis lack a dedicated hardwa=
re PLL and rely only on a digital control loop. It sounds like the high sto=
chastic jitter could indeed be problematic for me and is an unavoidable lim=
itation of the small form-factor USRPs.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I=E2=80=99ll still po=
ke at it a bit, but I very much appreciate the heads-up!<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">-David<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0<u></u><=
/span></p>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">From:</span></b><span style=3D"font-size:11pt;font-family:Cali=
bri,sans-serif"> Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com"=
 target=3D"_blank">martin.braun@ettus.com</a>&gt;
<br>
<b>Sent:</b> Thursday, January 15, 2026 3:47 AM<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [USRP-users] Re: Using USRP B206mini with Octoclock 10MHz+P=
PS<u></u><u></u></span></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hey David,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">to add onto what Marcus said: The minis don&#39;t ha=
ve a hardware PLL (unlike the B200/B210, and all other USRPs). Before you g=
o down the rabbit hole of modifying the FPGA, you might want to run a few B=
2xx-minis from an Octoclock (ignore PPS
 for now), and check if the phase stability is good enough for your applica=
tion.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Other than that, it would be possible to use a GPIO =
input for PPS, but neither the software nor the FPGA expect that, and both =
will require modifications. For a USRP/UHD veteran such as yourself, that s=
ounds feasible, but be aware it&#39;s
 a lot of work and might not give you what you need.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">--M<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, Jan 14, 2026 at 9:20<span style=3D"font-fami=
ly:Arial,sans-serif">=E2=80=AF</span>PM Marcus D. Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&g=
t; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">On 2026-01-14 14:57, David Raeman via USRP-users wro=
te:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Hello,</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I have a project curr=
ently hosted on a USRP E320 that involves distributed signal coherence. Dur=
ing development I sometimes do over-the-wire testing
 using an Octoclock=E2=80=99s 10MHz and PPS outputs to synchronize multiple=
 radios on the bench.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">I=E2=80=99m starting =
to investigate the viability of rehosting this application on a USRP B206mi=
ni to reduce size and cost. As far as I can discern, this
 radio only has a single port that can accept either a 10MHz reference inpu=
t or a PPS input. Is it possible to somehow use the radio with both clock a=
nd PPS outputs from an Octoclock with out-of-the-box UHD? If not, would it =
be viable for me to add a bit of
 FPGA logic and UHD tweaks such that software can specify a GPIO pin as the=
 PPS input while using the SMA as the 10MHz input? Or are there hardware or=
 systems constraints that would preclude that approach?</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">=C2=A0</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Thanks!</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">David Raeman</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt">Synoptic Engineering<=
/span><u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<pre>_______________________________________________<u></u><u></u></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><u></u><u></u></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><u></u>=
<u></u></pre>
</blockquote>
<p class=3D"MsoNormal">You could probably add some FPGA functionality to im=
plement a separate PPS input.<br>
<br>
But I should warn you that the clock servo in the B205x series is simply NO=
T UP TO THE TASK of building-out multi-unit coherent applications.<br>
<br>
The mutual phase-noise is way too high.=C2=A0 The B205 was never intended f=
or such applications to begin with, and the clock servo just doesn&#39;t wo=
rk that well.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000000045eb06487c30d6--

--===============2763453815739821398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2763453815739821398==--
