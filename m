Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9652B0CF1
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 19:48:09 +0100 (CET)
Received: from [::1] (port=60052 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdHdf-00011J-Fe; Thu, 12 Nov 2020 13:48:07 -0500
Received: from mail-ot1-f41.google.com ([209.85.210.41]:44913)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kdHdb-0000ut-Hu
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 13:48:03 -0500
Received: by mail-ot1-f41.google.com with SMTP id f16so6571257otl.11
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 10:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o2SA+y7P+PGsAYSj/45KYwFWD+squ+BRx53iWi+y6PI=;
 b=FYCjdWZ+/eciMknUwA1bXNZjrPFUY+RE0WgYNkThobbrn+gMb3wZWLQO2z+5rrRpWq
 LcR2pIpzwUhMm+lT11SsyHNLHydSMxBGoKTmUURHNv4AKkstQzccKTlRdm79tiGPJDrx
 lLVk7FTTw0wYy7CpiJ0Xz4eo5j7Ubis4vT/+Nd3Bb8BElNpDTNne49MboliTbHyX3apG
 S6yhLvsHx1CAS2sqDVYihY/qvAxmx3uL2mC5AtDQ20hSVT4C3t+RTGaIMweTkqTJTKRf
 hu2Br3SgAimHSZ8+4jUxHAa3RQDI+Xjut48f5pUvy6gbTkpvRXvCw84AHWzCivkoBujA
 S2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o2SA+y7P+PGsAYSj/45KYwFWD+squ+BRx53iWi+y6PI=;
 b=bpc3vaHjGBwm4aUVtSXGuC8f6GRpkFjdLEj9p2BunvIgMfgVdLi/TgLnznwRqfDrJw
 OoQ4K5nb4czt3/kCfe++LaK0bdPFmbWFCNaZ3cAd677qWGt9vlFPZeVIo5JLm95zCyRv
 JMFS7MMQRzqH8R4/Ox85FKDD5I2aaWSVNFmEnkyt0Lp+I9a8JzwgbmqiFXlGPWDedX01
 Sf4f42XVsHQIB5wtQNsnCnYvLQYq1MPBNaaspAZVxsxbmpWZN1wG73Xgf5w140yoiNFn
 vvzE5mWCE4C8uRVf2wuc9dbvh/O81PHHgkfBDCCFiRABCxdFDoPc9+S/VkMfS5Xx4kAG
 Rmtw==
X-Gm-Message-State: AOAM530Ne/nfzFua3P1tI/V1QVFUDxmeAshKfp0rYz70QfW6mkyDj2mc
 1qNst6JRzhyUm2mQLT9gKq4n+blunlKSqn/G5zjG8Q==
X-Google-Smtp-Source: ABdhPJxtfRqpOnqxop5zZa109Nrv/hQd32Kd+EupEERmDH2fjzPwdivp6ltpWG069CylyumH+FOC5WHJ5Wk7ofNAl98=
X-Received: by 2002:a9d:481a:: with SMTP id c26mr503940otf.58.1605206842710;
 Thu, 12 Nov 2020 10:47:22 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
In-Reply-To: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
Date: Thu, 12 Nov 2020 13:47:11 -0500
Message-ID: <CAB__hTS7UmY9mgmb9N=dUcOVga5vOg-iveQYqu_c8AeyzpjjOA@mail.gmail.com>
To: Xiang Ma <marxwolfs@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Rx time sychoronization
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4636431914720063991=="
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

--===============4636431914720063991==
Content-Type: multipart/alternative; boundary="000000000000a6ca1c05b3ed5790"

--000000000000a6ca1c05b3ed5790
Content-Type: text/plain; charset="UTF-8"

Are you using gnuradio or writing your own c++ or python application to
interface to UHD?  If you are writing your own C++ application, maybe the
Ettus example rx_multi_samples.cpp will be helpful.
Rob

On Thu, Nov 12, 2020 at 1:41 PM Xiang Ma via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I have a USRP x310 with 2 UBX daughterboards and GPSDO.
>
> I want to use this as two receivers by the two RX in the two daugherboards
> respectively, and receive the signal at the same time. Do I have to
> synchronize them or they will automatically start to receive the signal at
> the same time?
>
> Thank you,
>
> Xiang Ma
>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a6ca1c05b3ed5790
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Are you using gnuradio or writing your own c++ or pyt=
hon application to interface to UHD?=C2=A0 If you are writing your own C++ =
application, maybe the Ettus example rx_multi_samples.cpp will be helpful.<=
/div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Nov 12, 2020 at 1:41 PM Xiang Ma via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hi,<div><br></div><div>I have a USRP x310 with 2 UBX daughterbo=
ards and GPSDO.</div><div><br></div><div>I want to use this as two receiver=
s by the two RX in the two daugherboards respectively, and receive the sign=
al at the same time. Do I have to synchronize them or they will automatical=
ly=C2=A0start to receive the signal at the same time?</div><div><br></div><=
div>Thank you,</div><div><br></div><div>Xiang Ma</div><div><br clear=3D"all=
"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"tim=
es new roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xian=
g Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Stud=
ent</span><div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444=
">College of Engineering</font></div><div><font color=3D"#444444">Utah Stat=
e University</font></div><div style=3D"color:rgb(136,136,136)"><font color=
=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:=
rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div></div=
></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000a6ca1c05b3ed5790--


--===============4636431914720063991==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4636431914720063991==--

