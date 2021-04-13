Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A49535D4EC
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 03:44:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 506313840DA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 21:44:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OdnoR0Xc";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 55EC0384147
	for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 21:44:01 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id d23so4356817qko.12
        for <USRP-users@lists.ettus.com>; Mon, 12 Apr 2021 18:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=7HO+OJPxjimpr1+fcsxAjw9vbfNjYjbL5sRK8x5tY7g=;
        b=OdnoR0XcRtVppI1yoOMLAIBIP9asAdl00UnshDxPxXEPrWpCQX35vMGolja/Cl3yvy
         FgMXqyxcxJrsmJDqPc14JAVWVGRTfHGAoTVDIWqXRiYh0jTD20+8q1dcpMocYidkIGik
         KKBUOKCltg7jFIOg0Tzq+Ms3eG1xu9fB0A7dZbQwJJRT0j1NiSkdR1BgE0PB5ZgV2nex
         4YR3FWgd7YCqvBp7/bnxKNK6tsLRH3bM/GzWH+JIumkoz3Zm/+ti//VLmcj5xPtqOumP
         Ck4cYNcP+VkRxSkUaJXXNBB7+Eef/9jC++xY5GO90eLTK1cej2W7iX2eCoiWpnGKadpQ
         C7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=7HO+OJPxjimpr1+fcsxAjw9vbfNjYjbL5sRK8x5tY7g=;
        b=Wi+WGN961EIVr82YzMbAUBbpntryvJcQPN2VK4Twm79acksjHAidQq68qWKOLcoaQ8
         PzaeXkKnE1r+FLjOP/G38Ct3Rtf7Q3FZgVOzgVx8hxgRwzyab1k6A3qffVeTtECpPkM9
         74UV+V/P24kfPgIXyxHVLIV7Or3M5WQjKaTu+0tLKyOXSEdDr0au8QgZkMaTSl1nNiI0
         jn45ONFMaXKw2iWZLJFTQ6T2JiGeZ16qQuQfgWdDs/KmMcqM2SP+fG1/GrY59OW7wt+u
         vz8UoeoyZy17gShv29IlaFRMyYqkGvWp1S5yA5mwfadnA1YhxP1pOHYj57+vKRRIhkcp
         AOZg==
X-Gm-Message-State: AOAM531ubqZaF5f9eeC0g4b+xBufeXjLpmpRmeeEqxjK5j7SpwgHTZ6E
	viwD86LN5Tsn0IY0KjdDX0WdEf5FKH8=
X-Google-Smtp-Source: ABdhPJwG8Z+5Wjywi5YODPXefKhGcV/FuZH8UverZ9ObrzNbirT2FNiZeB186h6C4f+A+ISM00R2ZA==
X-Received: by 2002:a05:620a:15d6:: with SMTP id o22mr30123081qkm.181.1618278240556;
        Mon, 12 Apr 2021 18:44:00 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id x14sm9147048qkn.98.2021.04.12.18.44.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 18:44:00 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 12 Apr 2021 21:43:59 -0400
Message-Id: <D6D9B829-3724-4096-ACE1-34217809C0CE@gmail.com>
References: <CWLP265MB3396E5E989A405B3605A1A15A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <CWLP265MB3396E5E989A405B3605A1A15A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
To: ?? WANG Cui <iucgnaw@msn.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: YTD377JFIGCUFY6NGFQTEIYMYV57BA2I
X-Message-ID-Hash: YTD377JFIGCUFY6NGFQTEIYMYV57BA2I
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to tx s16 file with tx_samples_from_file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YTD377JFIGCUFY6NGFQTEIYMYV57BA2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3597438006155184508=="


--===============3597438006155184508==
Content-Type: multipart/alternative; boundary=Apple-Mail-043C96B3-544D-493C-827A-D785E123CCA5
Content-Transfer-Encoding: 7bit


--Apple-Mail-043C96B3-544D-493C-827A-D785E123CCA5
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Complex baseband is the natural format for this stuff. If you have real-samp=
led data you=E2=80=99ll have to convert it into complex baseband first.=20

Sent from my iPhone

> On Apr 12, 2021, at 9:32 PM, ?? WANG Cui <iucgnaw@msn.com> wrote:
>=20
> =EF=BB=BF
> Hi,
> When I try tx_samples_from_file example, looks like it only take Complex d=
ata format.
> However I have signal file in RF direct sample format (each data element r=
epresent a sample value), say it is =E2=80=9Cs8=E2=80=9D or =E2=80=9Cs16=E2=80=
=9D format as defined in UHD term.
> I wonder how can I transmit such file? Or must I convert it into Interleav=
ed I/Q (Complex) format?
> Thanks in advance,
> =20
> iucganw
> =20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-043C96B3-544D-493C-827A-D785E123CCA5
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Complex baseband is the natural format for t=
his stuff. If you have real-sampled data you=E2=80=99ll have to convert it i=
nto complex baseband first.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhon=
e</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 12, 2021, at 9:=
32 PM, ?? WANG Cui &lt;iucgnaw@msn.com&gt; wrote:<br><br></blockquote></div>=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:11.0pt;
	font-family:\7B49\7EBF;}
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
	font-family:\7B49\7EBF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:\7B49\7EBF;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">When I try tx_samples_from_file example, looks like i=
t only take Complex data format.<o:p></o:p></p>
<p class=3D"MsoNormal">However I have signal file in RF direct sample format=
 (each data element represent a sample value), say it is
<span lang=3D"ZH-CN">=E2=80=9C</span>s8<span lang=3D"ZH-CN">=E2=80=9D</span>=
 or <span lang=3D"ZH-CN">=E2=80=9C</span>s16<span lang=3D"ZH-CN">=E2=80=9D</=
span> format as defined in UHD term.<o:p></o:p></p>
<p class=3D"MsoNormal">I wonder how can I transmit such file? Or must I conv=
ert it into Interleaved I/Q (Complex) format?<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks in advance,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">iucganw<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-043C96B3-544D-493C-827A-D785E123CCA5--

--===============3597438006155184508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3597438006155184508==--
