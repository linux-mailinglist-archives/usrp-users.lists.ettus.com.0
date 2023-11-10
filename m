Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D41217E75E7
	for <lists+usrp-users@lfdr.de>; Fri, 10 Nov 2023 01:24:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0582385D4A
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 19:24:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699575860; bh=oTLwDhyuAOX9PYmvUukEzmv4ev0KtwDP2vgJPzpFG78=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OmCSVJiVpXDsS4B7z+lRRORzAV+aL8p8ZCKsLppBcP31V18s57G8AzI5BMlUlSitg
	 FItrjd0lx/3JsjVrHloUhGe/Gf2GP5XOZ8ncyjwE9cM9/UmZ2yo84gH4Y3V4LQt3Cd
	 9nIQVRPnuWvWLQxwbqixRLPqqQfySJ6WGSgxiyEpuhd7wZjF+2l5Cf4GJARmSogDNH
	 maienPtGCC1qxwrxZwtn8jdQ5UK3PRrFVtpgLnaHd878ZKeMX05e/yHP2u1OQPvDz/
	 y13DBIhcwJx8/92xsRVPsu+aZNkqc0t5inL7LDsj8iqgLfTwK02cJ7Ykmx+4ZSLLrv
	 p3iCwhCa/U24g==
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D9A3385D25
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 19:24:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PZ/9uLgX";
	dkim-atps=neutral
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5437269a661so5287288a12.0
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 16:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699575853; x=1700180653; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1MeS1nG0Fhpj4WT5yIhUSalR2nu0sEYcaAGdwUOKnKQ=;
        b=PZ/9uLgXlzXJCiudjb2V/hNxHUghOfCBtjkrr5n1hItOqQIDng9VY28O9d9AB3cVXn
         7Pw4eYMpStPfjVCeoBEk8ACiuDZUlbIrMILzwS/I6bM2CHjKkan9XhfwHZmDwJNXITLr
         6vP9Kxl3i2ZK5DQdKxc734cuf1eoIdIhCjf4QGl8/J8flcv+kYB67k9QQpz2SnHsmOCD
         fM9HE43KqRU4PK9YGrnCNP4hQKT928kgosjjUuMren83PnS3oboiO0yeaXXj4o1MrA5F
         eHKExDncRLd1ONFPQeCk29K5Zx57ZLjAZIqvBGlM1atXaBwzI2W64FF+X9TGors5tGDY
         f/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699575853; x=1700180653;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1MeS1nG0Fhpj4WT5yIhUSalR2nu0sEYcaAGdwUOKnKQ=;
        b=mIqGToZnBOy7knaIzYBISgjncoVELIlu/5pB3i/n0sJLY6NX70w1IAYqjeyV9UyTMg
         gAsv/P20fxi8WZHZxGvUumlk+ZlZRhiO++f40RdBh9aHmj9Le5ybLzFWbiW3g6EnvHYj
         5tDoJxcH4SItkmHptn5YWa0ZSlLqGmuSMT2oVRiHP6sPLOpfvqag6lkygFyDU8tmgNIz
         iEfJadDC6ov6AUE/h0VO4TRpMlOOA3TbdCOpB+CmJ6y0RxdRFPG0FIa2wuEtBZgEqdUZ
         3CTVDsvVLJR4EoYlOXqnF6bpyHELm4ySxlpauBbwA0sTD3MJzsK/Ji6gl5ImQ//ECbOG
         O7PA==
X-Gm-Message-State: AOJu0Yy0wC7MvBV6/2dG5jxx+6wFRu0UGDo94iKSaYQVSlOPEb3QWeNF
	cO76F9DJytw9Jq3z+sME817/01aKh6U6jaoHUAtA5NR6
X-Google-Smtp-Source: AGHT+IGfsPVTlH5pPGmcZKDB/rA5Ffm06hqgGlz/oBWS/2Qeu/+Kvm2jTmTmm1MC6Mp7ksVxPiE1kRlOFRzTbT9vkfk=
X-Received: by 2002:a17:906:4b47:b0:9e1:f0d0:327e with SMTP id
 j7-20020a1709064b4700b009e1f0d0327emr792555ejv.6.1699575852928; Thu, 09 Nov
 2023 16:24:12 -0800 (PST)
MIME-Version: 1.0
References: <CAJx0LdXipnYVx+KUwqqkLH=UDc0P5+V8FHU16fb=e9v5dPb0tw@mail.gmail.com>
 <76AAE55D-A2CE-4C2E-AE62-FF732586A134@gmail.com>
In-Reply-To: <76AAE55D-A2CE-4C2E-AE62-FF732586A134@gmail.com>
From: German Farinas <german.farinas@gmail.com>
Date: Thu, 9 Nov 2023 19:24:01 -0500
Message-ID: <CAJx0LdVayd4DbfQ92YiVtSoU3xW-4NiLq3c=XetUWmTfZqdKpg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: GV3X7CDADVU3Y5GMQSMTZL36ZQL4IJTW
X-Message-ID-Hash: GV3X7CDADVU3Y5GMQSMTZL36ZQL4IJTW
X-MailFrom: german.farinas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GV3X7CDADVU3Y5GMQSMTZL36ZQL4IJTW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1498561550797150837=="

--===============1498561550797150837==
Content-Type: multipart/alternative; boundary="000000000000fb93c90609c156db"

--000000000000fb93c90609c156db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am using UHD 4.5, I may try 3.15 as you suggested. But I don't know how
to install both together. My system is Ubuntu 20.04 LTS.




On Thu, Nov 9, 2023, 7:08 PM Marcus D Leech <patchvonbraun@gmail.com> wrote=
:

> You may need to stage this from a much earlier rev of UHD. I don=E2=80=99=
t think
> there have been any updates to N210 firmware in a long time. So if you ca=
n
> tolerate UHD 3.15 that might be better for you.
>
> Sent from my iPhone
>
> On Nov 9, 2023, at 7:05 PM, German Farinas <german.farinas@gmail.com>
> wrote:
>
> =EF=BB=BF
> I am trying to upload the image to an usrp N210 rev2.0 but I got the
> following error message. Have anyone had the same error before? I need so=
me
> help with this issue. See the output of the uhd_image_loader below.
>
> Best,
> German
>
> uhd_image_loader --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> UHD_4.5.0.0-0ubuntu1~focal1
> [ERROR] [UHD] Exception caught in safe-call.
>   in ~usrp2_iface_impl
>   at /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2/usrp2_iface.cpp:82
> this->lock_device(false); -> RuntimeError:
> Please update the firmware and FPGA images for your device.
> See the application notes for USRP2/N-Series for instructions.
> Expected protocol compatibility number [10 to 12], but got 9:
> The firmware build is not compatible with the host code build.
> Please run:
>
>  "/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"
>  "/lib/bin/uhd_image_loader" \
>     --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>
> Error: RuntimeError: Received invalid reply 32 from device.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000fb93c90609c156db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I am using UHD 4.5, I may try 3.15 as you suggested.=
 But I don&#39;t know how to install both together. My system is Ubuntu 20.=
04 LTS.<div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><br><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 9,=
 2023, 7:08 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com=
" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">You may need t=
o stage this from a much earlier rev of UHD. I don=E2=80=99t think there ha=
ve been any updates to N210 firmware in a long time. So if you can tolerate=
 UHD 3.15 that might be better for you.=C2=A0<br><br><div dir=3D"ltr">Sent =
from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 9=
, 2023, at 7:05 PM, German Farinas &lt;<a href=3D"mailto:german.farinas@gma=
il.com" rel=3D"noreferrer noreferrer" target=3D"_blank">german.farinas@gmai=
l.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><d=
iv dir=3D"ltr">=EF=BB=BF<div dir=3D"auto"><div style=3D"font-size:12.8px" d=
ir=3D"auto">I am trying to upload the image to an usrp N210 rev2.0 but I go=
t the following error message. Have anyone had the same error before? I nee=
d some help with this issue. See the output of the uhd_image_loader below.<=
/div><div style=3D"font-size:12.8px" dir=3D"auto"><br></div><div style=3D"f=
ont-size:12.8px" dir=3D"auto">Best,</div><div style=3D"font-size:12.8px" di=
r=3D"auto">German</div><div style=3D"font-size:12.8px" dir=3D"auto"><br></d=
iv><div style=3D"font-size:12.8px" dir=3D"auto">uhd_image_loader --args=3D&=
quot;type=3Dusrp2,addr=3D192.168.10.2&quot;</div><div style=3D"font-size:12=
.8px" dir=3D"auto"><br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107=
100; UHD_4.5.0.0-0ubuntu1~focal1<br>[ERROR] [UHD] Exception caught in safe-=
call.<br>=C2=A0 in ~usrp2_iface_impl<br>=C2=A0 at /build/uhd-UJYBdq/uhd-4.5=
.0.0/host/lib/usrp/usrp2/usrp2_iface.cpp:82<br>this-&gt;lock_device(false);=
 -&gt; RuntimeError:<br>Please update the firmware and FPGA images for your=
 device.<br>See the application notes for USRP2/N-Series for instructions.<=
br>Expected protocol compatibility number [10 to 12], but got 9:<br>The fir=
mware build is not compatible with the host code build.<br>Please run:<br><=
br>=C2=A0&quot;/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py&quo=
t;<br>=C2=A0&quot;/lib/bin/uhd_image_loader&quot; \<br>=C2=A0 =C2=A0 --args=
=3D&quot;type=3Dusrp2,addr=3D192.168.10.2&quot;<br><br>Error: RuntimeError:=
 Received invalid reply 32 from device.</div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"=
noreferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a></sp=
an><br><span>To unsubscribe send an email to <a href=3D"mailto:usrp-users-l=
eave@lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">usrp-=
users-leave@lists.ettus.com</a></span><br></div></blockquote></div></blockq=
uote></div>
</div></div>

--000000000000fb93c90609c156db--

--===============1498561550797150837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1498561550797150837==--
