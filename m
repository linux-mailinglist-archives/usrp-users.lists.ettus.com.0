Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A1999E098
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2024 10:15:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCE11385675
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2024 04:15:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728980102; bh=+spVThiBvKTPhTugdrOit7sf2YhuwryLtLi6W6oEk7s=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=STUWOclxFm66drNMAhSHeJgn5xnNZWfhF3kgU9Y1dZFpjhjEdZy1y+P7ogbaN2oVF
	 88aCv+CiQGjhSOITxBmZx9190v/RKD8qeiFr33kpG/QFBZRtMeWarCAOXX9MhW947x
	 S4pvmNeZaNjTuJmGQZrRpSmApiwkHtikwYYg0YuHESmLCtqmKZGfT6oDmKgJz/tlYw
	 U7LIlt1d+ZADgJfdyGB0PD625DNsJqjToOyvI0KBQl8++43sNAbv6N1NzJLbABMgHU
	 wcpXSSvJQcN7nlzW4MgloQUhlM+LdMIPmwW1AqeWHAmqyyq04OpbGze2ZCQe16BLpT
	 WXnFzilqysIww==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id BA3C53853CE
	for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2024 04:14:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="0SoOFSdu";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5c935d99dc5so5714335a12.1
        for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2024 01:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728980094; x=1729584894; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dnWa4TOjcGYT3ynxPJORHA/lbTqfPW7KsdFJVaUQDrw=;
        b=0SoOFSdu1MnBt+WI9E3/G8XZzsMzo952UkiKYlyQKxiGhUS4DUOndOcb9KDjMnEX7b
         2/7E2umIO+WRTboacqEVe0pJlco/VOrH4n6C/llGC6J8yKyjhjtuPdH3yAk7AqX2Qu/p
         ojoy7XuCXTYMQAQqa+Qxlv8lU/mhoN57p2UfTANk4LyvX3wG9YGZqxERYZuQwS1P5iFz
         JzOZtSwo6fUh0eu28eg8cnqMCT7kH93aZxI9rxVOWSBbXNBxETNwO6ZXNE02UaDQ6T99
         G8UiSTI5UJzVnfF9RpRlDL5danlPPJrmstJ0eyuXXx05ssbfn/KBFGCSWFpO9UEgttd9
         EIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728980094; x=1729584894;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dnWa4TOjcGYT3ynxPJORHA/lbTqfPW7KsdFJVaUQDrw=;
        b=NSiEjXuYGkz2lcskc+/OTkJTmZyRPuXtIKxnmibEtdaVxuxgWqml62cvyQLZlAAvpt
         ubJC+5qPVX3ag1/EEq1DbpwbhU3eafu7zp6kp1InBSv9VRRi+pSXkc82HC3d9DVE6wqc
         9Gk2xQ7jbjiw11Ccn8nEHncCpleDNF/pONNtwct1tGpzkznoA2iToYHhc37MRDbXe8As
         BiHYVG4bDXkD7Pg/fW0EFB6fBdv+XPW1NZBylmcUAxvJpOWbzBEZcq8yXAzDrgwYmyWk
         UehxPjE/A2wTNuZVVzVizHpFlSnN7ue9s0qhE60mk/xpvgqa//QawET9Q2UHLXICdZqM
         ILlg==
X-Gm-Message-State: AOJu0YydTxpUvsyKJRt88g2IFfyyC5pvJRRFp/HESD7BklCulzWeLom4
	3VWkyZZlxm3EFBr0bcI7KlzxbE5rk3s9axArYx+wlX2Yr19P7B4HcFWALRiLel1HRk9nixzaFKg
	o6Rr6l3FpTyzEL77qD25GRz3hxs6AOmx8TP2LbdG92ywb7HQVw1k=
X-Google-Smtp-Source: AGHT+IExz7NWhFnIcBv2ScP6P4SERFmjbmOAz1vKGIEXcFilQTebVdsC1t0nOvbo5nb8kd+OPEAQ3ByrbMg+L0aITSU=
X-Received: by 2002:a05:6402:2695:b0:5c9:6ed1:38f2 with SMTP id
 4fb4d7f45d1cf-5c96ed13fcfmr6665089a12.22.1728980093318; Tue, 15 Oct 2024
 01:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=K0BG2sDEHLxnXzckRh4WweQee-_L9tpDVYYSnK1JVMV6mNg@mail.gmail.com>
In-Reply-To: <CAF=K0BG2sDEHLxnXzckRh4WweQee-_L9tpDVYYSnK1JVMV6mNg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 15 Oct 2024 10:14:41 +0200
Message-ID: <CAFOi1A7pEYZSRTeQqX9agN5KvRoBwK-NO_TKmAv8gNnnJoPaCw@mail.gmail.com>
To: Nidhi Panda <nidhi.panda@cyronics.com>
Message-ID-Hash: RHWYYYQUN63SRHZAOSAAH4IHRLY6OSLK
X-Message-ID-Hash: RHWYYYQUN63SRHZAOSAAH4IHRLY6OSLK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding RFNoC BLOCK with USRP X300
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RHWYYYQUN63SRHZAOSAAH4IHRLY6OSLK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1615402331983217020=="

--===============1615402331983217020==
Content-Type: multipart/alternative; boundary="00000000000049634006247f8ca4"

--00000000000049634006247f8ca4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nidhi,

X300 and X310 work the same way. In your YAML, put back some of the things
you commented out. You need at least one SEP that has the control flag set
to true. I recommend just removing the DDCs/DUCs and keeping the radios,
then add your FFT block.

--M

On Mon, Oct 14, 2024 at 9:42=E2=80=AFAM Nidhi Panda <nidhi.panda@cyronics.c=
om>
wrote:

> Hello,
>
> I am having USRP X300 device with following tool versions:
>
> Vivado 2021.1 - AR76780n,
> GNU radio version - v3.11.0.0git-820-g2adbd4ea
> UHD version - UHD_4.7.0.0-84-gbdada1ed
>
> I have created an FPGA image file for HG mode using "rfnoc_image_builder"=
.
> It includes radio0/1, DDC0/1, DUC0/1 and a replay module by default. I
> tested it on hardware also. It works fine. Now I want to add different
> RFNoC block in my design. On following *"https://kb.ettus.com/Getting_Sta=
rted_with_RFNoC_in_UHD_4.0%22
> <https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0%22>"* guide,
> I am trying to add FFT IP. This gives a multi-driven clock error in
> implementation. Is it because this guide is for the X310 board? Can anyon=
e
> guide me the process of editing ".yml script "to add an FFT block for USR=
P
> X300. I have attached my .yml script for reference.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000049634006247f8ca4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nidhi,</div><div><br></div><div>X300 and X310 work=
 the same way. In your YAML, put back some of the things you commented out.=
 You need at least one SEP that has the control flag set to true. I recomme=
nd just removing the DDCs/DUCs and keeping the radios, then add your FFT bl=
ock.</div><div><br></div><div>--M<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 14, 2024 at 9:42=E2=
=80=AFAM Nidhi Panda &lt;<a href=3D"mailto:nidhi.panda@cyronics.com">nidhi.=
panda@cyronics.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><div dir=3D"ltr" c=
lass=3D"gmail_signature"><div dir=3D"ltr"><div><p dir=3D"auto">I am having =
USRP X300 device with following tool versions:</p>
<p dir=3D"auto">Vivado 2021.1 - AR76780n,<br>
GNU radio version - v3.11.0.0git-820-g2adbd4ea<br>
UHD version - UHD_4.7.0.0-84-gbdada1ed</p>
<p dir=3D"auto">I have created an FPGA image file for HG mode using=20
&quot;rfnoc_image_builder&quot;. It includes radio0/1, DDC0/1, DUC0/1 and a=
 replay=20
module by default. I tested it on hardware also. It works fine. Now I=20
want to add different RFNoC block in my design. On following  <strong>&quot=
;<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0%22" =
rel=3D"nofollow" target=3D"_blank">https://kb.ettus.com/Getting_Started_wit=
h_RFNoC_in_UHD_4.0%22</a>&quot;</strong>
 guide, I am trying to add FFT IP. This gives a multi-driven clock error=20
in implementation. Is it because this guide is for the X310 board? Can=20
anyone guide me the process of editing &quot;.yml script &quot;to add an FF=
T block
 for USRP X300. I have attached my .yml script for reference.</p></div></di=
v></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000049634006247f8ca4--

--===============1615402331983217020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1615402331983217020==--
