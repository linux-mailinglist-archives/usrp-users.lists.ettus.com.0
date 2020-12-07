Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B41712D18FD
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 20:03:42 +0100 (CET)
Received: from [::1] (port=38858 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmLnQ-0004vu-K8; Mon, 07 Dec 2020 14:03:40 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:34373)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kmLnM-0004pf-0C
 for USRP-users@lists.ettus.com; Mon, 07 Dec 2020 14:03:36 -0500
Received: by mail-qt1-f178.google.com with SMTP id 7so10212556qtp.1
 for <USRP-users@lists.ettus.com>; Mon, 07 Dec 2020 11:03:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=kz7uAF20m9/cprmRorc43mEfihhQgoALG4qpYJA2CbI=;
 b=b/LkAA+9QDyUzkuHAmjke4FxIe1bwjem5MnMXwwxlG/5vufHPQsSEk3V5LeRigABqq
 wW4DwWT7usd54B1oiMYAMHjJcuuVbAJbAcfbXXOsjgSTYtHHpSDqqnYYSfdl11lE0zXf
 tVPst46jkbKnBdg48ctXqUh0cem/uJbTZgviZTqMDRjWyEHluEuZg+zA8Ces5wnkox3g
 zk/0zPRsYQVQwKelJEfqK7dyy1m1hO9gRqq+h1vjRhJfoTbc3/ynwZwoycoY6T++dlXE
 rsAmuVohLX8eOx2869bztoqwsTy3dySpudkf5GEuzttkUmZH5A7jWWZeq3CzYFtM9OS+
 fX4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=kz7uAF20m9/cprmRorc43mEfihhQgoALG4qpYJA2CbI=;
 b=hIh91wpAcsI2BvWgBm7ihhhwVSOeOeiEF+rxc73zp3KlisxnAiiE6T0bMpdniI8jri
 EoozMlpVIMcZXrEzTmilzUUvWVbTZ/S36G0angeARIh6LvPd6eamXHs6+ojZopSPoCL6
 3deYdDOEpslY8I2RsaJjwWls5ZyGWCiE2AhzurK1QkPkS8GGKUQsRgoRHaOb07r/Ywlq
 OdLEG90AKbUPWu8762pHvyF/eUrBF0YCt7aSsuQQLkxuv29dWfif0DpKylgkArAICDVE
 ZXT19jQSVtVnnEO2+ReQIlksPmvt0zEH4dRsoHe7mx6jPaRjEtlJIb9ZC4WzpBlu5EBZ
 HnIw==
X-Gm-Message-State: AOAM532dIPJGQGKMDbIksxcLDRpjJbEsYXvbkrjqWbqp7lO7dmv8IHrX
 mOuQ3569vw+w7QUdz2BknL8URvvyNRQ=
X-Google-Smtp-Source: ABdhPJxFmwdhxouJBLmpxkVzdYe69pMFcLMqtLRXc0iIi3WgNhtmYCGAs5Iqraxg13INeQaWa/Lg+Q==
X-Received: by 2002:aed:3462:: with SMTP id w89mr18126977qtd.265.1607367775418; 
 Mon, 07 Dec 2020 11:02:55 -0800 (PST)
Received: from ?IPv6:2605:b100:d17:91c0:1d4b:43c5:48c2:37b2?
 ([2605:b100:d17:91c0:1d4b:43c5:48c2:37b2])
 by smtp.gmail.com with ESMTPSA id c14sm11514266qtc.90.2020.12.07.11.02.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Dec 2020 11:02:54 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 7 Dec 2020 14:02:53 -0500
Message-Id: <45383A44-5BC5-4340-8236-6D1E8D1E3EB9@gmail.com>
References: <1711191034.4575835.1607367221112@mail.yahoo.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <1711191034.4575835.1607367221112@mail.yahoo.com>
To: Mark McAllister <bassecho21@yahoo.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] USRP B200 Function Question
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
Content-Type: multipart/mixed; boundary="===============3715857452696096270=="
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


--===============3715857452696096270==
Content-Type: multipart/alternative; boundary=Apple-Mail-CD7C62C7-B387-4EEB-A3D0-6BE77D7C9572
Content-Transfer-Encoding: 7bit


--Apple-Mail-CD7C62C7-B387-4EEB-A3D0-6BE77D7C9572
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99ve never had much luck with USB over Ethernet devices with either U=
SRP1 or B2xx



Sent from my iPhone

> On Dec 7, 2020, at 1:56 PM, Mark McAllister via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> =EF=BB=BF
> My senior design team at California State University Northridge is current=
 using a USRP N210 as a  local oscillator for a smart antenna array.=20
>=20
> We're considering purchasing something from the B200 series in order to re=
place it since we are current borrowing our N210.=20
>=20
> Our concern is that the B200 specifies the use of USB 3.0 for connecting t=
o a host computer, and we are currently connecting both an N210 and N310 to a=
 router which connects all signals to a host computer.
>=20
> My main question is whether or not the B200 series will run properly using=
 a USB to Ethernet adapter or if the device MUST be connected directly to th=
e host computer via USB.=20
>=20
> Thank you for your time,=20
> Mark McAllister
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-CD7C62C7-B387-4EEB-A3D0-6BE77D7C9572
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I=E2=80=99ve never had much luck with USB o=
ver Ethernet devices with either USRP1 or B2xx<div><br></div><div><br><br><d=
iv dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote typ=
e=3D"cite">On Dec 7, 2020, at 1:56 PM, Mark McAllister via USRP-users &lt;us=
rp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div class=3D"yahoo-style-wrap" style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><=
div dir=3D"ltr" data-setdir=3D"false">My senior design team at California St=
ate University Northridge is current using a USRP N210 as a&nbsp; local osci=
llator for a smart antenna array. <br><br><div>We're considering purchasing s=
omething from the B200 series in order to replace it since we are current bo=
rrowing our N210. <br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse">Our concern is that the B200 specifies the use of USB 3.0 for connecti=
ng to a host computer, and we are currently connecting both an N210 and N310=
 to a router which connects all signals to a host computer.<br></div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">My main question is whether or not the B200 series will run properly us=
ing a USB to Ethernet adapter or if the device MUST be connected directly to=
 the host computer via USB. <br><br><div>Thank you for your time, <br></div>=
<div dir=3D"ltr" data-setdir=3D"false">Mark McAllister<br></div></div></div>=
</div><span>_______________________________________________</span><br><span>=
USRP-users mailing list</span><br><span>USRP-users@lists.ettus.com</span><br=
><span>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</s=
pan><br></div></blockquote></div></body></html>=

--Apple-Mail-CD7C62C7-B387-4EEB-A3D0-6BE77D7C9572--


--===============3715857452696096270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3715857452696096270==--

