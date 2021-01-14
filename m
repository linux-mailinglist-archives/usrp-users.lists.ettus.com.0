Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A051A2F67DC
	for <lists+usrp-users@lfdr.de>; Thu, 14 Jan 2021 18:37:07 +0100 (CET)
Received: from [::1] (port=36216 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l06YT-0007Nu-RR; Thu, 14 Jan 2021 12:37:05 -0500
Received: from mail-qv1-f43.google.com ([209.85.219.43]:45930)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l06YP-0007G2-UQ
 for USRP-users@lists.ettus.com; Thu, 14 Jan 2021 12:37:01 -0500
Received: by mail-qv1-f43.google.com with SMTP id h1so2647913qvy.12
 for <USRP-users@lists.ettus.com>; Thu, 14 Jan 2021 09:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=1QHY0O/laKEZQJemLO34OV7IEVnOaUQP7R59sU3iNf0=;
 b=sjs9wha3DjpFq0479Ywf2XG0HipSd4ualOeqiO8/VOR/4YdCEYuZvKlhAgiCh5HVSx
 6Pxs5U9c7ToJ7z/ROBwHng3tkA/3V50frICthgR90Q6ExEd+vVV9RNrDncvGyC6RRVzM
 N7/Y1MRlKRRXVdToAyzSPGGsDMSt5/fuSksPFXa2N0vw/JBWXCKI2X1ZrqlBkbFQ9+Pg
 UwTdHGGjvliTVUhAmXn+blnSKI0rhQiUXUF/XuFgeFV+hz2rIPnVGNbc/QqrJGzi8e1r
 j0zAXZAXo7+zqV1SDFpbr6J6zDXs+vucMb4CUKtUJAWBn35eeyWP6gbPjOme273DwlQY
 BDmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=1QHY0O/laKEZQJemLO34OV7IEVnOaUQP7R59sU3iNf0=;
 b=C/h//xUBxR9/CHa/WTiwIXRrqRSDZllMp1YaQIQnhOj/voYJ4Wh9rhgkzw2x2SYj0I
 hPhJnW+WmjMDHKOHrhlSkp1HRl4rnyPng375XIkFKDBCh7EINcYYCtTG5jR7plyGwPTw
 0nGodVlG8PuR5Ed6a4AI9mj+M+xi1zOmzmE/foIH+au7hfj1OWtFap1iT7Qe5w0tFO4P
 QRSOjiC5BdGx8EW2L5p61wytPlE1x8vWYNff1wu/3UJeHTDv3LVMRpRmIE+EqPtWl+Wf
 3lhS9UVxbN3lqn3KCicmc5DZBgpmIoLGC6ZBwdq9HaZUgWLtwGpEvLNX50UHMUlFWadp
 3NlA==
X-Gm-Message-State: AOAM532LaEsbgB75CpnzgH612GpQ3A6JZkdMebtpiPx/AVUOsK2L+Kk3
 ZMzGxlDGcR/wf2wSzciOgg2NAWTLZa0=
X-Google-Smtp-Source: ABdhPJxT5kTtLSQ1zR8f+SV2xhyxfXUTIQ5bKZSb1fJjCrgVKzVF8fme/e1aYxNu7pNpb9W4qzFAuA==
X-Received: by 2002:ad4:568a:: with SMTP id bc10mr8158001qvb.29.1610645781313; 
 Thu, 14 Jan 2021 09:36:21 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id j30sm3259282qtl.43.2021.01.14.09.36.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Jan 2021 09:36:20 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 14 Jan 2021 12:36:19 -0500
Message-Id: <3F67426B-85AE-4149-8605-1D1F581D539F@gmail.com>
References: <1303d2bb25fb4ea3bb1a38188056cf4a@gmvnsl.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <1303d2bb25fb4ea3bb1a38188056cf4a@gmvnsl.com>
To: David Scott <david.scott@gmvnsl.com>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] E312 Battery Question
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
Content-Type: multipart/mixed; boundary="===============5153058354376792045=="
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


--===============5153058354376792045==
Content-Type: multipart/alternative; boundary=Apple-Mail-5536BD37-C0D6-4DA5-A7FB-B7DAF2426A5F
Content-Transfer-Encoding: 7bit


--Apple-Mail-5536BD37-C0D6-4DA5-A7FB-B7DAF2426A5F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

As long as it had power it will run fine without the battery as far as I kno=
w.=20

Sent from my iPhone

> On Jan 14, 2021, at 12:20 PM, David Scott via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
>=20
>=20
> I need to carry out some development and testing with the USRP E312 for wo=
rk in the lab. However, due to the lockdown in the UK I am not able to physi=
cally get to the device except for some initial setting up (network etc.).
>=20
>=20
>=20
> I know that the device should not be plugged in for more than 24 hours so I=
 am wondering if it is possible to run the device with the battery disconnec=
ted?=20
>=20
> Will the E312 function without the battery connected internally? And are t=
heir any snags I should be aware of?
>=20
>=20
>=20
> Many Thanks,
>=20
> David
>=20
>=20
>=20
> P Please consider the environment before printing this e-mail. ___________=
____________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-5536BD37-C0D6-4DA5-A7FB-B7DAF2426A5F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">As long as it had power it will run fine wi=
thout the battery as far as I know.&nbsp;<br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 14, 2021=
, at 12:20 PM, David Scott via USRP-users &lt;usrp-users@lists.ettus.com&gt;=
 wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr"=
>=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font-=
family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div>
<div>
<div dir=3D"ltr">
<div id=3D"x_x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; co=
lor:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,serif,&quot;EmojiFo=
nt&quot;">
<p>Hi all,</p>
<p><br>
</p>
<p>I need to carry out some development and testing with the USRP E312 for w=
ork in the lab. However, due to the lockdown in the UK I am not able to phys=
ically get to the device except for some initial setting up (network etc.).<=
/p>
<p><br>
</p>
<p>I know that the device should not be plugged in for more than 24 hours so=
 I am wondering if it is possible to run the device with the battery disconn=
ected?&nbsp;</p>
<p>Will the E312 function without the battery connected internally? And are t=
heir any snags I should be aware of?</p>
<p><br>
</p>
<p>Many Thanks,</p>
<p>David</p>
</div>
</div>
</div>
</div>
<br>
<p></p>
</div>
<span style=3D""><br>
</span><span style=3D"font-size:18.0pt; line-height:125%; font-family:Webdin=
gs; color:green">P<span style=3D""></span>
<span style=3D"font-size:7.0pt; line-height:125%; font-family:&quot;Arial&qu=
ot;,&quot;sans-serif&quot;; color:green">
Please consider the environment before printing this e-mail.</span></span><s=
pan style=3D""></span>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-5536BD37-C0D6-4DA5-A7FB-B7DAF2426A5F--


--===============5153058354376792045==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5153058354376792045==--

