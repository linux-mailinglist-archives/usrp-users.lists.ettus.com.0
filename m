Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4BE321B9A
	for <lists+usrp-users@lfdr.de>; Mon, 22 Feb 2021 16:36:45 +0100 (CET)
Received: from [::1] (port=57284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lEDGN-00072O-7t; Mon, 22 Feb 2021 10:36:43 -0500
Received: from mail-qk1-f172.google.com ([209.85.222.172]:45520)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lEDGJ-0006uo-Lm
 for USRP-users@lists.ettus.com; Mon, 22 Feb 2021 10:36:39 -0500
Received: by mail-qk1-f172.google.com with SMTP id z128so8409332qkc.12
 for <USRP-users@lists.ettus.com>; Mon, 22 Feb 2021 07:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=q9lCikE2yY9g71z8Ug54wcxVditEsagKEIDLqjHuDXQ=;
 b=SvcbFeGfBbpLj0kNbBbj/+Bs/MFcarkSjJSP3y7dov6VZI+N2UK9HkWsBUnQI/+ngn
 G+mZvZViIuyDbbLFD8mVLKdlmPVUTVBnUBrA9z5TB+gAON/68Lgg0LAL+0fNPhjErkr4
 kJk9KBVAgrCKRZzuRugLkBt5uh6u8R+92Ls94bri2MI+QfZL8WZ2zcS29QixVlEaLSAs
 DoydXdv6XzvauT1wlHIkJMJO+u24QO33V1XCMebU0JO6PZ9dq51MTXA1Wjwk2nDnpsKc
 1Q1wttJQloV5xOwDdDzlmtJLDQm5CWNJM6UtuNbBIsPkIQYRpMGsyj2Wj7URzXQ/6bGx
 Uggg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=q9lCikE2yY9g71z8Ug54wcxVditEsagKEIDLqjHuDXQ=;
 b=SwfUMClPZrLvfujLrXx61PiPBGntrkjiNDxxK5n/SzxsGQOOefaXbZFNHJ7U3/qbtd
 GGkQB0UeJViHeS+GX3hhM0V0rvYCz/hOJQ2Psq3yRA63RVV8ESQn6Snl6nEsM3jejO0+
 8YAV9uHxHeoRXlWl1BS0P14JfZ9rN+T3w2Jx5lUwlC/P0uc3DKj6R4wMloqERxbQAmhv
 Mg3ZOB223Wjcw3R3sneocvWGb/o7UnLYT4h2HNiB47ZdbkXrXkXL/2ZJVviHxPv+lRHJ
 QiL0cKrO3Z7hXfIFZEGILGWCDxjtj99+JVQGb8DTzlwigP94WAWPbpkQjkKyCFSo8xCj
 gJcA==
X-Gm-Message-State: AOAM532DdLnQZHNOvCPM19ZSvotGvOkDm6teKOSOI3AK6fjEDJtiz0Xk
 wbG5FC1ax5ehmZq7e3LzK5QGae8cxHk=
X-Google-Smtp-Source: ABdhPJxbv6Gs1ZD4J1icgWnGz9P0oOlk46XFRzRsMMwmtBSXmIW1aHEyU+MD7ncMmlxjujVpjpomnw==
X-Received: by 2002:a37:8446:: with SMTP id g67mr21392234qkd.110.1614008158943; 
 Mon, 22 Feb 2021 07:35:58 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id p66sm2716258qkd.57.2021.02.22.07.35.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Feb 2021 07:35:57 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 22 Feb 2021 10:35:56 -0500
Message-Id: <BC592952-C170-4682-BD2E-92C93A4B0C5F@gmail.com>
References: <db0907f754a240cd886021bb02ec1f37@external.thalesgroup.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <db0907f754a240cd886021bb02ec1f37@external.thalesgroup.com>
To: COURANT Frederique - Contractor
 <frederique.courant@external.thalesgroup.com>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] Read a register
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
Content-Type: multipart/mixed; boundary="===============5571015061036929786=="
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


--===============5571015061036929786==
Content-Type: multipart/alternative; boundary=Apple-Mail-15C1C2AD-CCC8-4D5E-9B43-7DDE5A5731A5
Content-Transfer-Encoding: 7bit


--Apple-Mail-15C1C2AD-CCC8-4D5E-9B43-7DDE5A5731A5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Context here is really important.=20

What USrP platform? Are you talking about a user register or an internal con=
trol register in the FPGA implementation?

Sent from my iPhone

> On Feb 22, 2021, at 10:15 AM, COURANT Frederique - Contractor via USRP-use=
rs <usrp-users@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hello,
> =20
> Could you give me some examples of how can I read a value at the register 1=
34 please ?
> This register is only a readable data.
> =20
> Best regards.
> =20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-15C1C2AD-CCC8-4D5E-9B43-7DDE5A5731A5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Context here is really important.&nbsp;<div=
><br></div><div>What USrP platform? Are you talking about a user register or=
 an internal control register in the FPGA implementation?</div><div><br><div=
 dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Feb 22, 2021, at 10:15 AM, COURANT Frederique - Contractor via USR=
P-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div>=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could you give me some examples o=
f how can I read a value at the register 134 please ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This register is only a readable=
 data.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-15C1C2AD-CCC8-4D5E-9B43-7DDE5A5731A5--


--===============5571015061036929786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5571015061036929786==--

