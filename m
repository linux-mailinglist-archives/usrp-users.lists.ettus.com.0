Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B68A181EE53
	for <lists+usrp-users@lfdr.de>; Wed, 27 Dec 2023 11:48:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CCA2E38509C
	for <lists+usrp-users@lfdr.de>; Wed, 27 Dec 2023 05:48:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703674114; bh=laP8aQz9j0Hb1Q6D8B86t7s1IaccJJk0GULDcfU3sVU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=k3/9+O8hEmMHROcgTFknQXb5//FMLpPwgkFs8HUbe8PpMpVrMofGifgk0DBwwEAUv
	 Jejq6NO1m86EJgfK1tAWLT3TQIkfPQIAeILN9F1i64nBwXm+mbjcsdEZxgntWcbC20
	 XmkI6PzWaMmJ9/30KGadO3kv6cW/PF9hwLhUjRGd6fDoSQr9g3adWXqKij6exKM3la
	 NIM45bdOJmaHwhizTr21qB3+Mpr8wnPHgtzTUSOsKMBaJMzOnJyD9X1EFCR+SFZE9O
	 sAR5qo0tVdqA2mDR9O17WTMZ/87EXk0HCwxfq1vby6iTCRg7fFfB/yQVyAYgf2Ta6h
	 BNTqGAHzam/tw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 44735384FFF
	for <usrp-users@lists.ettus.com>; Wed, 27 Dec 2023 05:48:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="Fi89LDzp";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a26fa26e7aeso176096566b.3
        for <usrp-users@lists.ettus.com>; Wed, 27 Dec 2023 02:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1703674086; x=1704278886; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JPXZQOHje+o8mUXX7mFJcqkHHx7b0PiMUC19qd9xmrI=;
        b=Fi89LDzplU4nFqJCbEPlxqtpUWkf6876KliS7jiaMYMKVCAIwAmvQkoJfmv6h/F81o
         1nOHWea+beqqqnigtN0BvHRUGjn049tNIjB0GXcILmL9UZ5xkPsILZHUvyby0glfqMfQ
         eTQ39La25MuGjX/Pgq8yMID37GnylSK1ptkho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703674086; x=1704278886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JPXZQOHje+o8mUXX7mFJcqkHHx7b0PiMUC19qd9xmrI=;
        b=sUnurTpQ4uPgHd0SbwbRGO+J0AGEtVX59hfQIHRQAjBmFH0H7MDmABjs7zyJVjOagJ
         R9OlJtJYlYFzeU+eGC+gYMy/S5Ta+tyrogRN4V4qwoD0xsFZBChs9KXX8ySHc2emlgRe
         aLkviu4hMrvzFwFLvPhliKErFUGQ8j+06YcOL5GEY7PpAk3ddH0W+c51UVj7rzqvlbAp
         lrkCCpyI862+zvrHOIAuLji8Jtm7sVfEp+sm2Qzgp0c66Jgzof8RdM5ZcFn6JRDwJlv3
         yFVHv9ryMtldzh/vR6mPKlPQZyszENeFmxXHY8AmNN+gq7pceNbsRcfHnx6/jjAabOER
         mifQ==
X-Gm-Message-State: AOJu0YyT7p+RuSSU+FRJPD3cNsLX4/pBjn3Tyjx7H2cUUKlusIzkQEkA
	QJHGzxLZ2x0qmm0mfhkY/AHL2J9Adt2r3YEyvYkfN9qgTyL9gE3xXnMs4KtQVsJRKKeohVaGzdD
	YS9BVtvg1tiFeCYITk4CJE6Vsh0fbUGFisNoa7Ihh8+eRtqICy0g=
X-Google-Smtp-Source: AGHT+IGFUSaofh99KgZyUDatJ1XQMcaUJSI3udpHJKdKTaT2Qk9nRfhbWnRbSWxOZPdp6THDk/rR4zJMfXe8In91edQ=
X-Received: by 2002:a17:906:134a:b0:a26:8683:bc6c with SMTP id
 x10-20020a170906134a00b00a268683bc6cmr3529724ejb.36.1703674085803; Wed, 27
 Dec 2023 02:48:05 -0800 (PST)
MIME-Version: 1.0
References: <BMXPR01MB35586505648133E016DAD48CD69FA@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BMXPR01MB35586505648133E016DAD48CD69FA@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Date: Wed, 27 Dec 2023 16:17:55 +0530
Message-ID: <CA+QP_Pn7y+6sPGHt3DM+_NJfnSDaEPfTLWjokXQyAErKvTmwHQ@mail.gmail.com>
To: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
Message-ID-Hash: P5SBDBCPEGQYWGDBLHVXNXF2USBEQK6E
X-Message-ID-Hash: P5SBDBCPEGQYWGDBLHVXNXF2USBEQK6E
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: WIFI Accesspoint for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P5SBDBCPEGQYWGDBLHVXNXF2USBEQK6E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============5338581153849811439=="

--===============5338581153849811439==
Content-Type: multipart/alternative; boundary="000000000000b2f0aa060d7b8869"

--000000000000b2f0aa060d7b8869
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What are the specs of your PC or the system you want to employ it on?

On Wed, Dec 27, 2023 at 4:10=E2=80=AFPM Sivanesh Kumar K via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi team,
>
> I need to convert USRP b210 to access point to broadcast as a wifi signal
> withich is connected to 5G core via N3iwf.
>
> please help me to give some document to how to convert USRP as an access
> point.
>
> Regards,
> Sivaneshkumar K
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any
> attachments, is for the sole use of the intended recipient(s) and may
> contain proprietary confidential or privileged information or otherwise b=
e
> protected by law. Any unauthorized review, use, disclosure or distributio=
n
> is prohibited. If you are not the intended recipient, please notify the
> sender and destroy all copies and the original message.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--000000000000b2f0aa060d7b8869
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">What are the specs of your PC or the system you want to em=
ploy=C2=A0it on?=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Wed, Dec 27, 2023 at 4:10=E2=80=AFPM Sivanesh Kuma=
r K via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div class=3D"msg-5783256323157886799">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi team,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I need to convert USRP b210 to access point to broadcast as a wifi signal w=
ithich is connected to 5G core via N3iwf.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
please help me to give some document to how to convert USRP as an access po=
int.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Regards,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Sivaneshkumar K<br>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gm=
ail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100,=
100);font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b =
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-s=
ize:small"><span style=3D"font-family:&quot;times new roman&quot;,serif">Th=
anks and Regards</span></b><b><br></b></div><div style=3D"color:rgb(100,100=
,100);font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b=
>Arhum Ahmad</b><br>Ph.D. Scholar,=C2=A0Electrical Engineering Department, =
IIT Ropar</div><table width=3D"470" border=3D"0" cellspacing=3D"0" cellpadd=
ing=3D"0" style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;=
width:470px;margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)"=
><p style=3D"margin:0px"><span style=3D"display:inline-block"><a href=3D"te=
l:+91-7015802356" style=3D"color:rgb(141,141,141);font-family:sans-serif" t=
arget=3D"_blank">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(69=
,102,142);display:inline-block">|</span>=C2=A0arhum.19eez0005<span style=3D=
"display:inline-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D=
"color:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.a=
c.in</a></span></p></td></tr><tr><td style=3D"font-family:sans-serif;color:=
rgb(141,141,141)"><span style=3D"display:inline-block">Lab No. 323, Communi=
cation Research Lab, J.C.Bose Building</span></td></tr></tbody></table></di=
v></div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--000000000000b2f0aa060d7b8869--

--===============5338581153849811439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5338581153849811439==--
