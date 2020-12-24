Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EC42E2303
	for <lists+usrp-users@lfdr.de>; Thu, 24 Dec 2020 01:32:39 +0100 (CET)
Received: from [::1] (port=41166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ksEYV-0002FK-Cm; Wed, 23 Dec 2020 19:32:35 -0500
Received: from mail-qv1-f42.google.com ([209.85.219.42]:45728)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1ksEYR-00026z-8V
 for usrp-users@lists.ettus.com; Wed, 23 Dec 2020 19:32:31 -0500
Received: by mail-qv1-f42.google.com with SMTP id a4so594728qvd.12
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 16:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=e5DH1wG9inPAD6J6szX/HplDkgfhpvGo2uKbx/DF6HI=;
 b=ar+X80DZym9DKP1IYsYP4mUUVThzWJN58JrtI9LApdFVuLOWbD9rYagW+wHiBR/adc
 MBRMN0qTFb6Lq9GTHO7K+dOjWR0kNN56oubQF5u8plX2VnHNQoQeXOL3GT79Eht1Z3Yw
 HzvLw3+4ev+MAZhEPIIZgrRPjF3w9oq9j+q5Pnj3D7k5FMDBMAqT+LXUHx/AilfIpdWg
 WPBs8mG7u+T2cLO8Y9fgZ6jXGsi+BlTZcCGS5LBPucBvbM26++1PqXjFwDXWJ4at0Yao
 BSCnjjhCHl3EWG8mOj6rtBSnJtoXoFHBa1gYgDjiCo9snk726I1SiFiofF9IsyAiiJq5
 vSow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=e5DH1wG9inPAD6J6szX/HplDkgfhpvGo2uKbx/DF6HI=;
 b=U9n5Ni4Rj+mhdlXgfxOr+/2SmjD4aNuhNTOHi+nSo61nAGWP7PjBYcuCmXnrM+jg4c
 +9C6mZFueflJo+j49lu6R+iokc3XsXxECJnyk1xaA8k/mm4t1jL8oaaoy3sFbKRhuSI/
 F9EZn+oLepJJrgb64+/3tiYasyqdINsy4XsOLVJCIw+dN7xfspxRrjlZo6hV04VYu1U0
 B7pjDRPh9brAtkNyCcRRh73KMr1WwVYbW30i38IYeQ1xAXZTR0wXWqfpiLN0U5HK7akl
 aECA6r0TngRpf06cNrF7QOOixJDschcq2VnujZFcnHcyH0c1o2WG7O4BuAtjEBVNa+gN
 VlwQ==
X-Gm-Message-State: AOAM5329F9w6pFF6iuDfdmXXt8+hvAabTJ5SCCp3CcnA6CApXwle3zKR
 R/RqSd7gvRw3WfNt+d79gIlcw+rGKag=
X-Google-Smtp-Source: ABdhPJz+Kha8V15AmnwwrS3IiXRlr3on3uSJK3XvPEWXDfFYAuMIe5zPP4h+Q4VnryAu0FSz4o+yNA==
X-Received: by 2002:a0c:8203:: with SMTP id h3mr4103592qva.0.1608769910515;
 Wed, 23 Dec 2020 16:31:50 -0800 (PST)
Received: from [192.168.2.132]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id m85sm16425596qke.33.2020.12.23.16.31.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Dec 2020 16:31:50 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 23 Dec 2020 19:31:49 -0500
Message-Id: <D8D58168-56AC-40BE-9B3F-B5A4B80859E1@gmail.com>
References: <CACDReSx4uTpos7BCvO+6jQ=8H8BWsduyqyx2293BXYRoQ0Be9g@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
In-Reply-To: <CACDReSx4uTpos7BCvO+6jQ=8H8BWsduyqyx2293BXYRoQ0Be9g@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] Synchronization of E310 units
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
Content-Type: multipart/mixed; boundary="===============0104258262460626250=="
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


--===============0104258262460626250==
Content-Type: multipart/alternative; boundary=Apple-Mail-44D268C9-CA78-4F95-9118-3CC05625BD14
Content-Transfer-Encoding: 7bit


--Apple-Mail-44D268C9-CA78-4F95-9118-3CC05625BD14
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

You can use the external SYNC input to feed in a common 1PPS signal.=20

Then set your time source to =E2=80=9Cexternal=E2=80=9D. I suspect you=E2=80=
=99ll only do a little better than the two independent GPS receivers.=20



Sent from my iPhone

> On Dec 23, 2020, at 4:50 PM, Ofer Saferman via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
>=20
> I asked a few weeks ago about the possibility to use the internal GPS rece=
ivers of the E310 to synchronize multiple units.
> Someone explained that the internal GPS receiver and its associated synchr=
onization algorithm are not good enough and I will not get synchronization t=
hat is better than several tenths of microseconds.
>=20
> What would you suggest is the best way to synchronize E310 units so that t=
hey will be synchronized at base-band sample level? I mean that when transmi=
tting from 2 (or more) different E310 units the Tx samples will be perfectly=
 time-aligned on different units.
>=20
> I noticed there is a SYNC input and somewhere I read that it is possible t=
o provide an external 1PPS signal. Could someone comment on this feature? Ex=
plain if it works? How to make it work in terms of software setup?
> Maybe the SYNC input can be used differently for synchronization?
>=20
> Is there another way to achieve the synchronization that I want, given tha=
t the E310 has no external reference clock input?
>=20
> Regards,
> Ofer Saferman
>=20
> --=20
> This message has been scanned for viruses and=20
> dangerous content by MailScanner, and is=20
> believed to be clean. _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-44D268C9-CA78-4F95-9118-3CC05625BD14
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">You can use the external SYNC input to feed=
 in a common 1PPS signal.&nbsp;<div><br></div><div>Then set your time source=
 to =E2=80=9Cexternal=E2=80=9D. I suspect you=E2=80=99ll only do a little be=
tter than the two independent GPS receivers.&nbsp;</div><div><br></div><div>=
<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bloc=
kquote type=3D"cite">On Dec 23, 2020, at 4:50 PM, Ofer Saferman via USRP-use=
rs &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><bloc=
kquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">
<div>Hello,</div><div><br></div><div>I asked a few weeks ago about the possi=
bility to use the internal GPS receivers of the E310 to synchronize multiple=
 units.</div><div>Someone
 explained that the internal GPS receiver and its associated=20
synchronization algorithm are not good enough and I will not get=20
synchronization that is better than several tenths of microseconds.</div><di=
v><br></div><div>What
 would you suggest is the best way to synchronize E310 units so that=20
they will be synchronized at base-band sample level? I mean that when=20
transmitting from 2 (or more) different E310 units the Tx samples will=20
be perfectly time-aligned on different units.</div><div><br></div><div>I
 noticed there is a SYNC input and somewhere I read that it is possible=20
to provide an external 1PPS signal. Could someone comment on this=20
feature? Explain if it works? How to make it work in terms of software=20
setup?</div><div>Maybe the SYNC input can be used differently for synchroniz=
ation?<br></div><div><br></div><div>Is there another way to achieve the sync=
hronization that I want, given that the E310 has no external reference clock=
 input?<font color=3D"#888888"><br></font></div><div><font color=3D"#888888"=
><br></font></div><div><font color=3D"#888888">Regards,</font></div><div><fo=
nt color=3D"#888888">Ofer Saferman<br></font></div>

</div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br>believed to be clean.

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-44D268C9-CA78-4F95-9118-3CC05625BD14--


--===============0104258262460626250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0104258262460626250==--

