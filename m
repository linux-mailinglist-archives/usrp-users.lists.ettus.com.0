Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22204240B91
	for <lists+usrp-users@lfdr.de>; Mon, 10 Aug 2020 19:04:25 +0200 (CEST)
Received: from [::1] (port=38182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k5BDG-0006xW-Nh; Mon, 10 Aug 2020 13:03:54 -0400
Received: from mail-qv1-f51.google.com ([209.85.219.51]:35893)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k5BDC-0006qd-Jj
 for USRP-users@lists.ettus.com; Mon, 10 Aug 2020 13:03:50 -0400
Received: by mail-qv1-f51.google.com with SMTP id a19so4574487qvy.3
 for <USRP-users@lists.ettus.com>; Mon, 10 Aug 2020 10:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=6RX/tc8LhfDxGh7KFOuN5Q9pRyrWrQMhA1N5KmftbFc=;
 b=LA31k1mRUdRBlzSEGRznUX1tqMLoUbY0r+pj9eqCApGTW/s0YPFrfJN+Wr6tRGAezf
 Gzaw3GySW+479IbvkUeRyFx92BgR8S1bhwa2AQZVC4S6purBpnB0lJM9tARAFIU7j0HW
 lvjnjW4WKAbJKd3zEfe7kfJrWRsKpJKKNbyLfIwKlBKg3J3nddGYpW+Fab8raSNtoz/x
 JXmHC1Y4jthOBRym/0KUCy7lQLcGcxtfk2HkNUOcL+/cR5NorA0Sg5rfQmUyCK0EfiQ6
 6yBWw7Wemq0AGb5RUmhS1GDEpyA7+BMuOWmvKmdoseBBgKLb1Ou4v9AxIoM8XpvRhKT1
 bUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=6RX/tc8LhfDxGh7KFOuN5Q9pRyrWrQMhA1N5KmftbFc=;
 b=nltU2ElDtLOg7NmS0n6i+TRV8FFPjikV7KQsuwronagmgbFFRb7vXEoksmCLWDa6E1
 NVMP9X3+cq/ITdH/mJiN2zA8CHJeV6m6h821Z/RFc5kETqXoKSqVa5NDdMEciB0d6oVE
 lnDITdwmk5+qRe8Z3XEL9BkAKVsPOWDoOdjW2ol01VUMp79vtb5Y4eLpIPB1er7JH1iH
 7SDukfn+59Y2yuDwPIjKg+ddP9gdoJ4yf3LX48j4gBlQFGew+hv63O6q2JSCCp6GKYEw
 nhKRYB0qfN/qpwdBUbG32CCKtXfW8CRLr7/MMOTidPNMUYwG1J8cQxGwwK8IZwaKm14e
 kaPA==
X-Gm-Message-State: AOAM530dDqx+/GnZthw87gZ21fG1sL5jFtaW7LcdDp8xXq/HWPuP2svp
 X9SSIvS9nfSUDBtkapqQ6ouTlr4xgTc=
X-Google-Smtp-Source: ABdhPJxrDogvF8jRuY698DQ2m+Ulm8UW7z8P5mVa6OjK3sde7b5IKVMklBLAz3KiQmPI3SkKFrKgKQ==
X-Received: by 2002:a0c:aa5e:: with SMTP id e30mr29067855qvb.212.1597078990050; 
 Mon, 10 Aug 2020 10:03:10 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id o47sm16638214qtk.19.2020.08.10.10.03.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Aug 2020 10:03:08 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Mon, 10 Aug 2020 13:03:07 -0400
Message-Id: <BF8AEB98-F90B-4A41-BA65-CC3C944E6A6D@gmail.com>
References: <001201d66f36$b4160f30$1c422d90$@com>
Cc: USRP-users@lists.ettus.com, Rao Yenamandra <yrao@trilcomm.com>
In-Reply-To: <001201d66f36$b4160f30$1c422d90$@com>
To: Prasad <kpras@trilcomm.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] [USRP B210] Getting zero samples from received
 stream for 2 RX channel
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
Content-Type: multipart/mixed; boundary="===============6645366785153694368=="
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


--===============6645366785153694368==
Content-Type: multipart/alternative; boundary=Apple-Mail-31AB63C4-C2BA-47B2-99E6-26520D88BB45
Content-Transfer-Encoding: 7bit


--Apple-Mail-31AB63C4-C2BA-47B2-99E6-26520D88BB45
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What are you using to receive? Your own software? gnu Radio? UHD examples?

Please share the output of usrp_probe with us.=20



Sent from my iPhone

> On Aug 10, 2020, at 12:53 PM, Prasad via USRP-users <usrp-users@lists.ettu=
s.com> wrote:
>=20
> =EF=BB=BF
> Hi Everyone,
> =20
> Getting zero samples from received stream, when number of RX channel set t=
o 2.
> =20
> Bellows are the USRP setting:
> Master-clock-rate: 30.72e6
> Rate:
>                Channel0: 30.72e6
>                Channel1: 30.72e6
> Gain:
>                Channel0: 45
>                Channel1: 45
> Frequency:
>                Channel0: 3.8GHz
> Channel1: 3.8GHz
> =20
> Thanks,
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-31AB63C4-C2BA-47B2-99E6-26520D88BB45
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What are you using to receive? Your own sof=
tware? gnu Radio? UHD examples?<div><br></div><div>Please share the output o=
f usrp_probe with us.&nbsp;</div><div><br></div><div><br><div><br><div dir=3D=
"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite=
">On Aug 10, 2020, at 12:53 PM, Prasad via USRP-users &lt;usrp-users@lists.e=
ttus.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div=
 dir=3D"ltr">=EF=BB=BF


<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
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
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->




<div class=3D"Section1">

<p class=3D"MsoNormal">Hi Everyone,<o:p></o:p></p>

<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>

<p class=3D"MsoNormal">Getting zero samples from received stream, when numbe=
r of RX
channel set to 2.<o:p></o:p></p>

<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>

<p class=3D"MsoNormal">Bellows are the USRP setting:<o:p></o:p></p>

<p class=3D"MsoNormal">Master-clock-rate: 30.72e6<o:p></o:p></p>

<p class=3D"MsoNormal">Rate:<o:p></o:p></p>

<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Channel0:
30.72e6<o:p></o:p></p>

<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Channel1:
30.72e6<o:p></o:p></p>

<p class=3D"MsoNormal">Gain: <o:p></o:p></p>

<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Channel0:
45<o:p></o:p></p>

<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Channel1:
45<o:p></o:p></p>

<p class=3D"MsoNormal">Frequency:<o:p></o:p></p>

<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Channel0:
3.8GHz<o:p></o:p></p>

<p class=3D"MsoNormal" style=3D"text-indent:.5in">Channel1: 3.8GHz<o:p></o:p=
></p>

<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>

<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>

</div>




<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></div></body></html>=

--Apple-Mail-31AB63C4-C2BA-47B2-99E6-26520D88BB45--


--===============6645366785153694368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6645366785153694368==--

