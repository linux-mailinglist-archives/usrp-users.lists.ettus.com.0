Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E18321250AB
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 19:30:27 +0100 (CET)
Received: from [::1] (port=44680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihe5a-00054O-UL; Wed, 18 Dec 2019 13:30:26 -0500
Received: from mail-qk1-f176.google.com ([209.85.222.176]:38655)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ihe5W-0004uZ-UA
 for USRP-users@lists.ettus.com; Wed, 18 Dec 2019 13:30:22 -0500
Received: by mail-qk1-f176.google.com with SMTP id k6so2406940qki.5
 for <USRP-users@lists.ettus.com>; Wed, 18 Dec 2019 10:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ux1FYGXYoabp1J/QvUwYIAhn29LImiy/VAAw26SuIJo=;
 b=cozMtzRO6D4oKzDn7T1RFfUGG5b/VuGf1tBXeQcUGtT0TwBka8GKBh6bJIRk/rsUsT
 qkVoEKXxMiqTa+C84ZLNS/EJMaBwi/sNrn8LfCgxl/KlqUe3H1suC9nMszivfpcsU/CF
 dUanYq1u2SocriNVXWlxx67kOE64kKQo4aVMqKs15p3SzGQnNTNCDOfsUy0zPFscSIoX
 1O3EmZHpU9SbOxJNCgn77odD/QAwD1pz658yozejvkpVXvd+qcxusRawemISVHYutvHt
 kXMADA5f0lsTykBHVvRHYQnpB3/MEaBVkaJfnh3cL1IdI08wSAWOsBVs8MRebsZ0A7Uq
 XZ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ux1FYGXYoabp1J/QvUwYIAhn29LImiy/VAAw26SuIJo=;
 b=DFIV2njBbSDetlnWcVkz0gXPM516P4bjlqDgUQ2EqTwuRFRw9WemmKyNjNmEcYs0o+
 aH4fk/pff76b4CYDT2lWQucHIm3MBRsayk5jSClviCYvvaXq8jHO6mG4t3in9urPkhCQ
 ya6f7X9Tw1oblp+8pDDlPMouT/XJB40B7AXHoXiCpDdBgL4oh9NFzBenB387WVjDQouL
 bxAuhU9NC/lCPBCdeEhIjeFR3zEDtzyxW5bOYnIPOKTn/lmz1aM7UhKUdljse6eofQR2
 ADRgrAyyNsLgpK5RRb1JyoXN1jIa8CEpp5TDi+ysigNVU/TisBTXCLIY89T0g6Cu/s+r
 LVsw==
X-Gm-Message-State: APjAAAXYvCDuQr32phFJ9BoFjwGlmYIR7273z+g7uJFlBXwXUapYPd39
 fTSFTdCfIiK4qptdsAnEe9U=
X-Google-Smtp-Source: APXvYqw3/uLskQTMsotUu9vTLrcjMMTodlDr5E80yGAq4wqkYjJZuliUPKTJBRgeAS+WPmhgVB+eGA==
X-Received: by 2002:a05:620a:149b:: with SMTP id
 w27mr4204166qkj.229.1576693782363; 
 Wed, 18 Dec 2019 10:29:42 -0800 (PST)
Received: from ?IPv6:2605:b100:d12:debb:4971:c944:c6fa:c86e?
 ([2605:b100:d12:debb:4971:c944:c6fa:c86e])
 by smtp.gmail.com with ESMTPSA id m21sm881039qka.117.2019.12.18.10.29.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Dec 2019 10:29:41 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Wed, 18 Dec 2019 13:29:40 -0500
Message-Id: <8F849698-7CFA-408C-A7B5-08998DC51422@gmail.com>
References: <1399630627.948933.1576682125398@mail.yahoo.com>
In-Reply-To: <1399630627.948933.1576682125398@mail.yahoo.com>
To: Angilberto Muniz Sb <angilberto@yahoo.com>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] Xlating filter delay
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
Content-Type: multipart/mixed; boundary="===============5454276153191884376=="
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


--===============5454276153191884376==
Content-Type: multipart/alternative; boundary=Apple-Mail-03C2B52A-2408-4E09-BFC0-9C9A434329C8
Content-Transfer-Encoding: 7bit


--Apple-Mail-03C2B52A-2408-4E09-BFC0-9C9A434329C8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

This is clearly a question for the discuss-GnURadio mailing list, not here.=20=


But there are delay blocks in GR. And you can effect a simple phase shift wi=
th a complex multiply.=20

Sent from my iPhone

> On Dec 18, 2019, at 10:16 AM, Angilberto Muniz Sb via USRP-users <usrp-use=
rs@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi all,
>=20
> I have a dual tone signal that I down converte and split into two signals w=
ith a common frequency with the Xlating-fir filter. So far so good.=20
>=20
> However I noticed there is a phase shift between the signals generated (I a=
ssume this is due the filter delay). I have to compensate for that.
>=20
> The question: How to determine or estimate that delay?
>=20
> Thank you,
>=20
> Angilberto.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-03C2B52A-2408-4E09-BFC0-9C9A434329C8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">This is clearly a question for the discuss-=
GnURadio mailing list, not here.&nbsp;<div><br></div><div>But there are dela=
y blocks in GR. And you can effect a simple phase shift with a complex multi=
ply.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"=
><br><blockquote type=3D"cite">On Dec 18, 2019, at 10:16 AM, Angilberto Muni=
z Sb via USRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></block=
quote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div class=3D=
"ydp84ce0584yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Helvetica=
, Arial, sans-serif;font-size:16px;"><div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Hi all,</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D=
"ltr" data-setdir=3D"false">I have a dual tone signal that I down converte a=
nd split into two signals with a common frequency with the Xlating-fir filte=
r. So far so good. <br></div><div dir=3D"ltr" data-setdir=3D"false"><br></di=
v><div dir=3D"ltr" data-setdir=3D"false">However I noticed there is a phase s=
hift between the signals generated (I assume this is due the filter delay). I=
 have to compensate for that.</div><div dir=3D"ltr" data-setdir=3D"false"><b=
r></div><div dir=3D"ltr" data-setdir=3D"false">The question: How to determin=
e or estimate that delay?</div><div dir=3D"ltr" data-setdir=3D"false"><br></=
div><div dir=3D"ltr" data-setdir=3D"false">Thank you,<br></div><div><br></di=
v><div class=3D"ydp84ce0584signature">Angilberto.</div></div></div><span>___=
____________________________________________</span><br><span>USRP-users mail=
ing list</span><br><span>USRP-users@lists.ettus.com</span><br><span>http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><br></div><=
/blockquote></div></body></html>=

--Apple-Mail-03C2B52A-2408-4E09-BFC0-9C9A434329C8--


--===============5454276153191884376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5454276153191884376==--

