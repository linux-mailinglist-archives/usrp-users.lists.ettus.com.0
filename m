Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5BC33988C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 21:43:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA1183838FF
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 15:43:00 -0500 (EST)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id AB2FC383919
	for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 15:41:42 -0500 (EST)
Received: by mail-qk1-f178.google.com with SMTP id f124so25749430qkj.5
        for <USRP-users@lists.ettus.com>; Fri, 12 Mar 2021 12:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=oSTL1ps9Ef7FdZQKovEALPj027QcAPYfvkJZ7jkErqo=;
        b=rMGeyKH0tPj7fkHP6sHgXnD5tuPNPn8V3ijmQuqBn4XyURUq+rlNBepdFx7wDoTUcy
         8YcaYQ/3HhWAjli0TNwAYUQZiySAX067mFwAPpBOIbAuEgS3G9jNoJFhhSiCSW9Ec6P9
         ziQVCAoU1Gs8HQ9I2FU/moXNcQ9uissmTjn++WLb1HTzFBPaEQhUdxrbM3MQIAg2sbM+
         XN5JCkEXRwcGIBSjb54sGbLvmrYxNZFWaNF7+CMLrXbqQ8PoADxxBcD8rAr+pHR4jXnz
         fcabMcMebhxUAFr8XhEvTAMz50xb7cqz6x3vczD7xpYJl/7BtkcwqTZJowDcJieD0nNo
         EzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=oSTL1ps9Ef7FdZQKovEALPj027QcAPYfvkJZ7jkErqo=;
        b=YgKtIGTZgoprLomcQ4V9+Azl/M19LE+2/FURny+oD0z+yLkBAnxm7kvLkB6fNGu/1a
         jvK8VOuD09ZFmR+s1ZZqrTr88zmv3Cp8EJ710Wh8CDXKOkEfE0t5B+iH7+yEzPEJQucd
         uKW6wozE24pmXwgJ/GGz4rSoHMyBt4pz3rbuQO75FFTcljcNa1Cl4M3Y2vvx6xX64yKt
         FTeZxG3G+8OVCsnaj+Fb92uPHuYtphTRD2ltMW7TMUuJJLqnv/huyFziEpcOSstL9A+s
         8l6RUJZa3lqpcw1sjzjSAR1FDm5DwqsR4A0+3A52ozveW9yJcvlCY53IanUE2uM1KAYL
         IorA==
X-Gm-Message-State: AOAM531CQAhGxqHP/atWwi6mE31H7RiReG7eTDb/frZyDsA/miCRt1Q9
	NRHhpU+ya7FY3rlkMCDFYKMDM1aUqN8=
X-Google-Smtp-Source: ABdhPJxtDi0yMVxeYUCE4ZKMFKufmSSn4SOrC/Mat2gsOFjnvDeGPASboSF9HpFtawxN+UwrFbTeew==
X-Received: by 2002:a05:620a:10a6:: with SMTP id h6mr14550750qkk.366.1615581702180;
        Fri, 12 Mar 2021 12:41:42 -0800 (PST)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id g7sm4774993qti.20.2021.03.12.12.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:41:41 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 12 Mar 2021 15:41:41 -0500
Message-Id: <EB7E7812-D2FC-4523-A64E-E645543F4006@gmail.com>
References: <CO6PR19MB480178E1CD5E40A830C3F4EEC66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB480178E1CD5E40A830C3F4EEC66F9@CO6PR19MB4801.namprd19.prod.outlook.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
X-Mailer: iPhone Mail (18D52)
Message-ID-Hash: WMBOEPETXEEASE7DC6I3BVH2ZVXCVUQP
X-Message-ID-Hash: WMBOEPETXEEASE7DC6I3BVH2ZVXCVUQP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Where do I find this call to change it.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WMBOEPETXEEASE7DC6I3BVH2ZVXCVUQP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0473267573305992375=="


--===============0473267573305992375==
Content-Type: multipart/alternative; boundary=Apple-Mail-ED41E180-9093-48CE-BE92-56762E03C87F
Content-Transfer-Encoding: 7bit


--Apple-Mail-ED41E180-9093-48CE-BE92-56762E03C87F
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

ok so this is likely a case of your gr-UHD assuming an older API for recv_as=
ync_msg.=20

This is just a warning that eventually that older API will go away.=20

Probably if you had totally up to date everything, or a UHD library that was=
 of an earlier vintage that matched he-UHD, yiu wouldn=E2=80=99t get this me=
ssage.=20

Sent from my iPhone

> On Mar 12, 2021, at 3:20 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com>=
 wrote:
>=20
> =EF=BB=BF
> Hello Marcus,
> =20
> This is coming from a Gnuradio flowgraph that I created myself. It=E2=80=99=
s got USRP Rx and Tx blocks, a block that takes samples of the signal and pr=
eforms some DSP, and a bunch of GUI variable control and variable display bl=
ocks.
> =20
> Best Regards,
> =20
> Jerrid
> =20
> From: Marcus D Leech <patchvonbraun@gmail.com>=20
> Sent: Friday, March 12, 2021 12:17 PM
> To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
> Cc: USRP-users@lists.ettus.com
> Subject: Re: [USRP-users] Where do I find this call to change it.
> =20
> I think we need more context.=20
> =20
> Is this from a program you write yourself?
> =20
> Someone else=E2=80=99s code?
> =20
> A Gnuradio flow graph? Your own? Someone else=E2=80=99s?
> =20
> =20
> =20
> Sent from my iPhone
>=20
>=20
> On Mar 12, 2021, at 3:02 PM, Jerrid Plymale <jerrid.plymale@canyon-us.com>=
 wrote:
>=20
> =EF=BB=BF
> Hello All,
> =20
> Here is the warning message I am trying to solve:
> =20
> [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated a=
nd can lead to unexpected behaviour. Prefer calling tx_stream::recv_async_ms=
g().
> =20
> I am trying to solve this warning message when I am running my USRP X310, b=
ut I have not had any luck finding the file I need to edit. Can anyone direc=
t me on how to solve this problem?
> =20
> Best Regards,
> =20
> Jerrid Plymale
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-ED41E180-9093-48CE-BE92-56762E03C87F
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">ok so this is likely a case of your gr-UHD a=
ssuming an older API for recv_async_msg.&nbsp;<div><br></div><div>This is ju=
st a warning that eventually that older API will go away.&nbsp;</div><div><b=
r></div><div>Probably if you had totally up to date everything, or a UHD lib=
rary that was of an earlier vintage that matched he-UHD, yiu wouldn=E2=80=99=
t get this message.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><=
div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 12, 2021, at 3:20 PM, J=
errid Plymale &lt;jerrid.plymale@canyon-us.com&gt; wrote:<br><br></blockquot=
e></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Marcus,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is coming from a Gnuradio flowgraph that I creat=
ed myself. It=E2=80=99s got USRP Rx and Tx blocks, a block that takes sample=
s of the signal and preforms some DSP, and a bunch of GUI variable control a=
nd variable display blocks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jerrid <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0=
in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D Leech &lt;patchvonbraun@gmail.c=
om&gt; <br>
<b>Sent:</b> Friday, March 12, 2021 12:17 PM<br>
<b>To:</b> Jerrid Plymale &lt;jerrid.plymale@canyon-us.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Where do I find this call to change it.<o:p=
></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I think we need more context.&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Is this from a program you write yourself?<o:p></o:p>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Someone else=E2=80=99s code?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">A Gnuradio flow graph? Your own? Someone else=E2=80=99=
s?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Mar 12, 2021, at 3:=
02 PM, Jerrid Plymale &lt;<a href=3D"mailto:jerrid.plymale@canyon-us.com">je=
rrid.plymale@canyon-us.com</a>&gt; wrote:<o:p></o:p></p>
</blockquote>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
<p class=3D"MsoNormal">Hello All,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Here is the warning message I am trying to solve:<o:p=
></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1A1A1B;background:white">[WARNING] [MULTI_USRP] C=
alling multi_usrp::recv_async_msg() is deprecated and can lead to unexpected=
 behaviour. Prefer calling tx_stream::recv_async_msg().</span><o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">I am trying to solve this warning message when I am r=
unning my USRP X310, but I have not had any luck finding the file I need to e=
dit. Can anyone direct me on how to solve this problem?<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Jerrid Plymale<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
</div>
</blockquote>
</div>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-ED41E180-9093-48CE-BE92-56762E03C87F--

--===============0473267573305992375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0473267573305992375==--
