Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A672B0D9F
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 20:15:11 +0100 (CET)
Received: from [::1] (port=60250 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdI3p-0002nJ-3o; Thu, 12 Nov 2020 14:15:09 -0500
Received: from mail-lf1-f52.google.com ([209.85.167.52]:38817)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kdI3l-0002gY-De
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 14:15:05 -0500
Received: by mail-lf1-f52.google.com with SMTP id 74so10090553lfo.5
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 11:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=+6FCUVIZy3XB5jEFgSkFzEJt6YAJheNvHVQoTq6DgYs=;
 b=llZr+TbqXKXdNijO5BoNT2T8pVaD77/QL/NNIoiCC90pgCEqwhKXFrlPHaVlbaEGqZ
 kq5unu+nF3i/7MiDDXHmztOff6/J2UP0zSHyBN2377F8jcjO82XP27T5A2Ms0Im0e5+l
 l5wVhQ11wJ/s1HSI+bObayXyNyAW+E8ZsL6+3jWG+olqcmoQ0OY8wJpfUm97GAIismSe
 N/kQiaYzA9TGiyLpadRFItdfw8xbsxqPn1nGNNXuR8qzU7AZ6TvNg4Vx9vX55E9gX+tD
 Nl2Qzzcm1bKG0iV/fbozsWIK1u2K1UUpSPR8zVwWvFEB+ow1mDqeMQzEXrwBxnLDlj1t
 zClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=+6FCUVIZy3XB5jEFgSkFzEJt6YAJheNvHVQoTq6DgYs=;
 b=kKGXe2fIO0w/sZtH36wxF9xgc9hMnwL1zLmxPDXmUACutEVQogRp2YB4mfh5GZgPjx
 I/NnBNv/mq4ZqEOsv/h4L+C+cFpWWVBvIS2HxRFxwMqQctcNSRgaWHHUnKHOEEZnyCjp
 acm7c7Sep7KEOv9gDqz5AAOsVFHw2KyLqeXDGgIELSIt9C67GebG23yH/ctRo1hpZYqC
 dwj/eD3FgAM5EY16wUFQao6P+sqpevMQtdeR0KRLg23lhH+X59uUW3Fx3rMIatu94nQi
 8EJCQ5cXhUFkZvs2ROswCF7usY8zwlFzM1xkVKyUxXOLk6PWnQ+8oYRcymWSHiKG49pM
 cTkQ==
X-Gm-Message-State: AOAM5317W2WqT2LGYDX6prU+XIPnplSrpNWSChrt2+DWLj3LPX5PUmQl
 2IsoB3MGW/Z4wckD4/OdaqOPfmpx6Y/x6XBUsZEkXLzzFaa2mQ==
X-Google-Smtp-Source: ABdhPJytbwNqbEil5eifZP/2vgWxYDEjVMaSmq9NXC6IQfyEeNlv37h17P2kDAUKWDxiNbVt+cwQ8XH725JMuHKG1X0=
X-Received: by 2002:a19:91:: with SMTP id 139mr336798lfa.331.1605208463916;
 Thu, 12 Nov 2020 11:14:23 -0800 (PST)
MIME-Version: 1.0
References: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
In-Reply-To: <CACryqrGDDt7bAT0ad_X4HuVjn2zn-SuMSZ-fRz9u68cZ4bJeBA@mail.gmail.com>
Date: Thu, 12 Nov 2020 12:14:13 -0700
Message-ID: <CACryqrFVm7eKahR8sVHvtmWpSGo8hKXRweG6ZkrSBBq1sW4_Lg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 "Marcus D. Leech" <patchvonbraun@gmail.com>
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============0192127953518179121=="
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

--===============0192127953518179121==
Content-Type: multipart/alternative; boundary="00000000000048408305b3edb814"

--00000000000048408305b3edb814
Content-Type: text/plain; charset="UTF-8"

The multi_usrp object might be designed for multiple USRPs, however, I have
only 1 USRP, just 2 daughterboads, they are using the same reference lock.
When I run the program, shouldn't they start to receive the signal at the
same time?

Thank you,

On Thu, Nov 12, 2020 at 11:40 AM Xiang Ma <marxwolfs@gmail.com> wrote:

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
>


-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com

--00000000000048408305b3edb814
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The=C2=A0<span style=3D"color:rgb(0,0,0);white-space:pre-w=
rap">multi_usrp object might be designed for multiple USRPs, however, I hav=
e only 1 USRP, just 2 daughterboads, they are using the same reference lock=
.</span><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap">When I r=
un the program, shouldn&#39;t they start to receive the signal at the same =
time?</span></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap=
"><br></span></div><div><span style=3D"color:rgb(0,0,0);white-space:pre-wra=
p">Thank you,</span></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Nov 12, 2020 at 11:40 AM Xiang Ma &lt;<a =
href=3D"mailto:marxwolfs@gmail.com">marxwolfs@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,=
<div><br></div><div>I have a USRP x310 with 2 UBX daughterboards and GPSDO.=
</div><div><br></div><div>I want to use this as two receivers by the two RX=
 in the two daugherboards respectively, and receive the signal at the same =
time. Do I have to synchronize them or they will automatically=C2=A0start t=
o receive the signal at the same time?</div><div><br></div><div>Thank you,<=
/div><div><br></div><div>Xiang Ma</div><div><br clear=3D"all"><div><br></di=
v>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"times new roman, s=
erif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b>=
</i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div>=
<div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of En=
gineering</font></div><div><font color=3D"#444444">Utah State University</f=
ont></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-m=
ail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div></d=
iv></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new roman, =
serif" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b=
></i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div=
><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of E=
ngineering</font></div><div><font color=3D"#444444">Utah State University</=
font></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-=
mail:<a href=3D"mailto:marxwolfs@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--00000000000048408305b3edb814--


--===============0192127953518179121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0192127953518179121==--

