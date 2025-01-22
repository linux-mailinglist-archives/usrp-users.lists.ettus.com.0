Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04418A19434
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 15:42:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 73A3E385695
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jan 2025 09:42:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737556920; bh=oZaXepeMcqTXsXr9rqOPUjNKcgMJvdSGYdKnFtHp+Tk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mTbdAowyWFyXb6je5B0pkbVPnUWRsk4gPwi+ZnfX5vojV2v0KrIjUcI7N6t+jufOV
	 JBJimYXytj1jWU9mZcvIiPNsqrBj/TLgcXpOUrust4+9sIrVettlJ0zvHZDoJZPy+L
	 u36HdD6XdEjTjzP8jX92pv/TI+OXAmQ4iWxAiZp2fSxWAGqYZpWrfT/BrJgqiy6oPr
	 l9GBmHcZoVpAxBSSQGAdvPS1BIuitV/mpmUgSRXIV329GUAmYs65vrul5F1rqtO71B
	 zE1XivdrgBl0J7bfCS6VjY5q2RA3GnoHtP5e8/Cyc20SI88pFsA1pDwSk1saMwM8m5
	 kYT90FuFGBusg==
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D864438097A
	for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 09:41:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PT9U7wUr";
	dkim-atps=neutral
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5401b7f7141so6275896e87.1
        for <usrp-users@lists.ettus.com>; Wed, 22 Jan 2025 06:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737556877; x=1738161677; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oukUDPScgVgxpfjcsgLPF85pbCG8KKfDtQwbajnJdDo=;
        b=PT9U7wUrdd5SsLd+t0KmvjMNZi/GD14fn8qgmJhOe96BAYXQHkRLnGZzjODqog70wU
         c5PkbvLKXLn7hfQY8neMeLxUnc8gRqJrGZbm8N7DFEq53ASmEIjONvnviwqnki6+zMLY
         CUdgi+80Nz5BftCG0v4jkxDo794iz2cYzzTWGw2CU2m+glLZcW0VPBA9sgNeScAwasTF
         0LJgOAaHP7PGQCttObLNPv8loxRr7hrLZjWyIo7HCafi9G4cVQlUlSRVwE9wP9hWe+jx
         /hYWYN7vYgNSsZuWCdBnFRP5Oe0pRbU9YO72GQ5m3Pz590Nv/oqH7bolcHwtOsZKCr+E
         Bbvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737556877; x=1738161677;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oukUDPScgVgxpfjcsgLPF85pbCG8KKfDtQwbajnJdDo=;
        b=vx73DZmH26/PbRJYpKLy2Ho5B6UIcClscF1Px5IHpGi2aF6s+khGRuyZv9Ity/qWEt
         sYISYbaVepbcN9WbmoU08Ipv8CapyEsctMirE/1umvZ8YeMaCP+Snh9AuYqj6jPMz2VG
         ASQUS5gtbS9kPBY/m/dXp9efCqeAkdaVMkjXQffnUoqUim9fOFk+HpDSknKfkALA+jY+
         gElPf4Kdrdcx4g15ctr6HHekjxhoR+8X+Adtr5N9zX8Yexq0pQqn7mF9a3kIY1gzAkuA
         pA3o4iWTSSBfJhlpYCWPsmtTOeJPq1G5vg98bqwsJcJ/Gb8hFj8ikxnBkvVW2KLDY1Fl
         32Xg==
X-Gm-Message-State: AOJu0YzwyQJOfgMKnXTMq8oAAS6gjaC1YXr82qZeDR5bvAA+gKYm4ew7
	aQL2HkXINnM7NV2C4xIUnjCklM1xF94AWI00xLL2ctpTnEa3mzaDMxoustFI4Kmidh9TDwMtYU2
	ueYdKvgPfCMJyzLP+DxKRkgfQH6Y=
X-Gm-Gg: ASbGncup+qXiUmCMr0IvQnuBLmEODdZUp/lahzCOM1BEJiuv61QTzLiBQbl7TcgRKnE
	vnkgLuN5qPRFRbRXn4trJij2Cj4h7qIrhCFpGgwIHRVjnyY4/Amc=
X-Google-Smtp-Source: AGHT+IH2lIJoazNDi4UM701YJB5cZLyfqo1zmhfEQoAX5VRfabMOn+GKiDSRXWKHPE/uvZ30GubPqYDJQjUZYG3jRDY=
X-Received: by 2002:a19:ae0f:0:b0:542:29e5:7323 with SMTP id
 2adb3069b0e04-5439c216b4amr6576931e87.5.1737556876672; Wed, 22 Jan 2025
 06:41:16 -0800 (PST)
MIME-Version: 1.0
References: <4b85f8f2-a3ca-4a47-8680-be8c07798bde@gmail.com>
In-Reply-To: <4b85f8f2-a3ca-4a47-8680-be8c07798bde@gmail.com>
From: Alex Humberstone <alex.m.humberstone@gmail.com>
Date: Wed, 22 Jan 2025 08:40:39 -0600
X-Gm-Features: AbW1kvaFccx3RKp99prQBWyc1cguKIxxVsMU58Przc1_4Y7f0s133kfYAIEloV4
Message-ID: <CAE0dfYbRdG7mw0t0hWHBXH=mcvWwaNtkm4CLBvNLVCu-jN-YnQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 7CWGAY4H3DPWXXQ752ZSGPMFWXGQZKSL
X-Message-ID-Hash: 7CWGAY4H3DPWXXQ752ZSGPMFWXGQZKSL
X-MailFrom: alex.m.humberstone@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: files.ettus.com is back up
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7CWGAY4H3DPWXXQ752ZSGPMFWXGQZKSL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6057250644222162910=="

--===============6057250644222162910==
Content-Type: multipart/alternative; boundary="000000000000694582062c4c7c5e"

--000000000000694582062c4c7c5e
Content-Type: text/plain; charset="UTF-8"

Awesome!!
Thanks!!

Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University (NMSU)
Las Cruces, New Mexico, 88003
alex.m.humberstone@gmail.com
https://ece.nmsu.edu/



On Tue, 21 Jan 2025 at 13:31, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> Just to let everyone here know that files.ettus.com is now back "on the
> air", so tools like uhd_images_downloader will
>    work again.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000694582062c4c7c5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D"gmail_default" style=3D"font-family:mon=
ospace;font-size:large">Awesome!!</div><div class=3D"gmail_default" style=
=3D"font-family:monospace;font-size:large">Thanks!!</div><br clear=3D"all">=
</div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-family:=
monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=3D=
"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font si=
ze=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font></d=
iv><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch Scho=
ol of Electrical Engineering<br></span></font></div><div><font size=3D"4"><=
span style=3D"font-family:monospace">New Mexico State University (NMSU)<br>=
<span><span>Las Cruces, </span></span>New Mexico, 88003</span></font></div>=
<div><font size=3D"4"><span style=3D"font-family:monospace"><a href=3D"mail=
to:alex.m.humberstone@gmail.com" target=3D"_blank">alex.m.humberstone@gmail=
.com</a><br></span></font></div><div><font size=3D"4"><font face=3D"monospa=
ce"><a href=3D"https://ece.nmsu.edu/" target=3D"_blank">https://ece.nmsu.ed=
u/</a></font><br></font></div><div><font size=3D"4"><font face=3D"monospace=
"><br></font></font></div><div><font size=3D"4"><span style=3D"font-family:=
monospace"></span></font></div></div></div></div><br></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, 21 Jan 2025 at 13:31, Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Just to let everyone here know t=
hat <a href=3D"http://files.ettus.com" rel=3D"noreferrer" target=3D"_blank"=
>files.ettus.com</a> is now back &quot;on the <br>
air&quot;, so tools like uhd_images_downloader will<br>
=C2=A0=C2=A0 work again.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000694582062c4c7c5e--

--===============6057250644222162910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6057250644222162910==--
