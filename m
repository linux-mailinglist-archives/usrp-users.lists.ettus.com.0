Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB0E105B46
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2019 21:42:44 +0100 (CET)
Received: from [::1] (port=57194 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iXtHj-00009N-NF; Thu, 21 Nov 2019 15:42:39 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:41795)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1iXtHf-0008TJ-D8
 for usrp-users@lists.ettus.com; Thu, 21 Nov 2019 15:42:35 -0500
Received: by mail-ot1-f44.google.com with SMTP id 94so4190666oty.8
 for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2019 12:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2X15uENZaEyiK/wHra5LcagZ43n8qbt485Xj3UUF6XY=;
 b=JSQSS7+G3+naYZjDbhcu7rvPEcAdUYPt85z2eZD6pci3WPZYSWyM8mGSi2buAMfAzH
 OKx2r8PWOOpH7zD+sY7cXRWxpZfqOHJo8p6XfB41pRqAWz0vaO3qu2sm8YwBNP+DBDbB
 MKI1QQ5aTuCZ5d+dX9jZLiOdI/1T/WEZknBlzJIJd2Iwy9FYv/M4FNXzUHvHYuF9d061
 XyL+sFWG6keG8nWouYVAn9p8gHZlokldnfZTGyZhjQad0ekB4/LKmlTdgrus+b737YPO
 H8/GMpOiHaXmBSG07NBJenMI+V5m1+HLX2jo7XmwuQWhrIEvYePsAJ2DCpeS/xzXCLxI
 wIKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2X15uENZaEyiK/wHra5LcagZ43n8qbt485Xj3UUF6XY=;
 b=cBGfgX/N9syludxr0b7kd7KBVdLfeo6s8OFA+d8ARABTU5/xdV7XCbrQl55Go4YkHI
 s96DWlQb3xp9KXFQarD/Vii3gW36xcKRNIF1znqSvgk66PxmvM0riWELpHL/5ulPAErc
 idBRiRMPeKRTHo3OPmCMIc9A7EafbIQwbKhhE/2eX8VOXHX2mHFOb0I+PTIb/4jHaqJz
 53DtHa321pmqlPPBvgagT2reBSCrqSPqqtaz/3PIhZwFyVxQk29QAFfOviRS8G9NkiVJ
 Hy89/ikrMVt1/faV6wnnOxk5Fm7yQiAwhpWUAlKOw3FVfPBkeU6pdOA0WNb+WWTDARCJ
 xOyA==
X-Gm-Message-State: APjAAAVf1BknMDbge8NjczVjtXAjnhw+RJLiR/W8uDcxIjIHlhx+03ID
 ua5XszH74cUHOD8TwLeFD8r9M48eIUD7YgYi1Tei5w==
X-Google-Smtp-Source: APXvYqwMugePoG+AJTbJJEt5i2UtV2q5F1J1OUuUCf4IqQuebroiGhAZ1o8mmJK2Ym3ANtXdjuQ3JEFIWyW94yIp6mE=
X-Received: by 2002:a05:6830:2146:: with SMTP id
 r6mr7143732otd.187.1574368914404; 
 Thu, 21 Nov 2019 12:41:54 -0800 (PST)
MIME-Version: 1.0
References: <D7790F43D25BB04383227944C1AC1891010C0FCB4E@MXSRV2.fe.hhi.de>
In-Reply-To: <D7790F43D25BB04383227944C1AC1891010C0FCB4E@MXSRV2.fe.hhi.de>
Date: Thu, 21 Nov 2019 15:41:41 -0500
Message-ID: <CAEXYVK5bF4PXkRcAbY5NAJu80xZxR0uak2S89vYRO1SaE28ECA@mail.gmail.com>
To: "Lindstedt, Ralf" <ralf.lindstedt@hhi.fraunhofer.de>
Subject: Re: [USRP-users] IQ-sample with a magnitude larger than 1.0
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
Content-Type: multipart/mixed; boundary="===============3575779647776809662=="
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

--===============3575779647776809662==
Content-Type: multipart/alternative; boundary="000000000000e37a0a0597e153b0"

--000000000000e37a0a0597e153b0
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 21, 2019 at 2:49 PM Lindstedt, Ralf via USRP-users <
usrp-users@lists.ettus.com> wrote:

> We are transmitting samples in bursts of 15360 samples(1ms @
> 15.36Msamples/s). When the magnitudes of the transmitted samples are mostly
> larger than 1.0, the received signal, especially the beginning is distorted.
>

Definitely not recommended.


>
>
> My assumptions is that this distortion happens on the transmitter side. Is
> this correct, and if what exactly happens with the data?
>

Clipping/saturation in the Ettus radios, I believe - but it should be noted
that you should be able to transmit > 1.0 magnitude so long as either I or
Q being sent isn't larger than 1.0 - but I still don't recommend that
either.

Which Ettus product and why are you transmitting > 1.0, if you don't mind
me asking?

Brian

--000000000000e37a0a0597e153b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Nov 21, 2019 at 2:49 PM Lindstedt=
, Ralf via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_4689399309233509282WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-GB">We are transmitting samples in =
bursts of 15360 samples(1ms @ 15.36Msamples/s). When the magnitudes of the =
transmitted samples are mostly larger than 1.0, the received signal, especi=
ally the beginning is distorted.</span></p></div></div></blockquote><div><b=
r></div><div>Definitely not recommended.</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div lang=3D"DE"><div class=3D"gmail-=
m_4689399309233509282WordSection1"><p class=3D"MsoNormal"><span lang=3D"EN-=
GB"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-GB">My assumptions is that this dis=
tortion happens on the transmitter side. Is this correct, and if what exact=
ly happens with the data?</span></p></div></div></blockquote><div><br></div=
><div>Clipping/saturation in the Ettus radios, I believe - but it should be=
 noted that you should be able to transmit &gt; 1.0 magnitude so long as ei=
ther I or Q being sent isn&#39;t larger than 1.0 - but I still don&#39;t re=
commend that either.</div><div><br></div><div>Which Ettus product and why a=
re you transmitting &gt; 1.0, if you don&#39;t mind me asking?</div><div><b=
r></div><div>Brian</div></div></div>

--000000000000e37a0a0597e153b0--


--===============3575779647776809662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3575779647776809662==--

