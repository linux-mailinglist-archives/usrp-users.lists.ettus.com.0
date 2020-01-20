Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7D8143144
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jan 2020 19:09:19 +0100 (CET)
Received: from [::1] (port=43302 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itbU8-00083h-0G; Mon, 20 Jan 2020 13:09:12 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:38689)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1itbU4-0007ys-01
 for USRP-users@lists.ettus.com; Mon, 20 Jan 2020 13:09:08 -0500
Received: by mail-qk1-f173.google.com with SMTP id k6so97410qki.5
 for <USRP-users@lists.ettus.com>; Mon, 20 Jan 2020 10:08:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=9gxGpKQ7MyB3k6VIeuvmES7+z5ipi1CiX+MbJXNQi7s=;
 b=kQymuxChWCw+n9cbnDDW8L9R2oPK0UmSf1HGlSmnUywNKa9X57L06Fyusk30UpgSJs
 RF65iqXraTFMGn5KUKmAUxni16W9gmKFwB5xVhmAzEuNsGxpTBiDEk/BbqRaLzWxwqes
 gtlexmEg/fANU3g/GRgRYHUdAeEmuiv9PvSwZveZ7q3VMCSRabkuGlQDJMk8rQyLHhvT
 uTYaDuek1AxbepuNo1eefFttGtgzRosP2J+mVJZNWNRzk1VVqn6iHxFVEClycVlipn/p
 vBoDikMJnKpPBCL7S/bdrjOi3HhbLuf/AvvPyOtbRxgRwkOlNXhVTvFb738dNNqVzE6C
 rVRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=9gxGpKQ7MyB3k6VIeuvmES7+z5ipi1CiX+MbJXNQi7s=;
 b=ExHcSnTs5ov2+rALQeuJbEIqWotANYx8yZvDnTEV7c9mFWHe+Lh0MTX9PmJetcVyq5
 gMSweoOaAoZL4wLwPboZa1XzOb0fNWGfGMCOz3y+2mR22VISzrWTmsC3/FaUQV9bEZ1V
 aL9WwDjCYkVYdgaBQ92Aimzz85DfS0WJGFWvIaJh4c4YiLZGVTU4PEiDx4AgONYKBxFN
 2ipBYfOGQpGsKy/jTL2ZYFzvd0ufLxRPizQ48r+wvh8UyN49pcoHrDj9H6+JZnav9nOf
 +fztCch+Cjn1uNcxY0Qng5Gq/2zbRzZ563MIG1484KGm+bR93sXi4fXueOeGwWNqvk7d
 aYHg==
X-Gm-Message-State: APjAAAW1UX5lUFL+7PuBalRICsAwr7jmyhWK0LMOfeWyf78IagtTp5py
 FZ1Tth9E8TlQqRnKp8tt6I5v31papcc=
X-Google-Smtp-Source: APXvYqz9L+vaAwJrUTTow7EkDTHUd7T7qxBqNl1cbsR11YvHLb6MZfYHvT17zMlJdVZJFjFLMUh7wA==
X-Received: by 2002:ae9:e707:: with SMTP id m7mr762197qka.320.1579543707227;
 Mon, 20 Jan 2020 10:08:27 -0800 (PST)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.gmail.com with ESMTPSA id x34sm17996365qtd.20.2020.01.20.10.08.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jan 2020 10:08:26 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 20 Jan 2020 13:08:25 -0500
Message-Id: <FC4F7A4E-97C4-4CBD-8E54-305964E29BB2@gmail.com>
References: <BMXPR01MB23606E790CA4146BE699BFF58B320@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB23606E790CA4146BE699BFF58B320@BMXPR01MB2360.INDPRD01.PROD.OUTLOOK.COM>
To: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>
X-Mailer: iPhone Mail (17C54)
Subject: Re: [USRP-users] phase-aligning two USRPs without Octoclock
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0017117264485698143=="
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


--===============0017117264485698143==
Content-Type: multipart/alternative; boundary=Apple-Mail-63A0DE28-A7BF-4660-87A2-948A66F1E7ED
Content-Transfer-Encoding: 7bit


--Apple-Mail-63A0DE28-A7BF-4660-87A2-948A66F1E7ED
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You don=E2=80=99t need an octoclock, but you DO need an external 10Mhz clock=
 of some sort.=20

Because two oscillators free running won=E2=80=99t maintain any kind of phas=
e alignment for more than a few cycles. So they need to be phase locked to a=
 common clock.=20

Sent from my iPhone

> On Jan 20, 2020, at 3:05 AM, Sourin Mondal (Vehere) via USRP-users <usrp-u=
sers@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Following link (fig. 2) shows the cris-cross connections inside USRP to sy=
nchronize (phase align) 4 channels of the USRP.=20
>=20
> https://kb.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and=
_TwinRX%E2%84%A2
>=20
> If I want to synchronize (phase align) all channels of two USRPs, is there=
 any solution for the synchronization without using Octoclock-G method ?
>=20
> Regards,
> Sourin
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-63A0DE28-A7BF-4660-87A2-948A66F1E7ED
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You don=E2=80=99t need an octoclock, but yo=
u DO need an external 10Mhz clock of some sort.&nbsp;<div><br></div><div>Bec=
ause two oscillators free running won=E2=80=99t maintain any kind of phase a=
lignment for more than a few cycles. So they need to be phase locked to a co=
mmon clock.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Jan 20, 2020, at 3:05 AM, Sourin Mond=
al (Vehere) via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br>=
</blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important">Following link (fig. 2) shows the cris-cross conn=
ections inside USRP to synchronize
 (phase align) 4 channels of the USRP.&nbsp;</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important"><a href=3D"https://kb.ettus.com/Direction_Finding=
_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2">https://kb.ettus.com/D=
irection_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2</a><br>=

</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important">If I want to synchronize (phase align) all channe=
ls of two USRPs,<span style=3D"font-family: Roboto, Arial, sans-serif; backg=
round-color: rgb(255, 255, 255); display: inline !important">&nbsp;is
 there any solution for the <span style=3D"font-family: Roboto, Arial, sans-=
serif; background-color: rgb(255, 255, 255); display: inline !important">
synchronization without using&nbsp;</span><span style=3D"font-family: Roboto=
, Arial, sans-serif; background-color: rgb(255, 255, 255); display: inline !=
important">Octoclock-G method ?</span></span></span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important"><span style=3D"font-family: Roboto, Arial, sans-s=
erif; background-color: rgb(255, 255, 255); display: inline !important"><spa=
n style=3D"font-family: Roboto, Arial, sans-serif; background-color: rgb(255=
, 255, 255); display: inline !important"><br>
</span></span></span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important"><span style=3D"font-family: Roboto, Arial, sans-s=
erif; background-color: rgb(255, 255, 255); display: inline !important"><spa=
n style=3D"font-family: Roboto, Arial, sans-serif; background-color: rgb(255=
, 255, 255); display: inline !important">Regards,</span></span></span></div>=

<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(17, 17, 17); font-family: Roboto, Arial, sans-seri=
f; font-size: 14px; text-align: left; background-color: rgb(255, 255, 255); d=
isplay: inline !important"><span style=3D"font-family: Roboto, Arial, sans-s=
erif; background-color: rgb(255, 255, 255); display: inline !important"><spa=
n style=3D"font-family: Roboto, Arial, sans-serif; background-color: rgb(255=
, 255, 255); display: inline !important">Sourin</span></span></span></div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-63A0DE28-A7BF-4660-87A2-948A66F1E7ED--


--===============0017117264485698143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0017117264485698143==--

