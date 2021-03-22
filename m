Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C15203449A1
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 16:49:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ADAFE3838F1
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 11:49:19 -0400 (EDT)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 7921A383773
	for <USRP-users@lists.ettus.com>; Mon, 22 Mar 2021 11:48:25 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id v70so11009145qkb.8
        for <USRP-users@lists.ettus.com>; Mon, 22 Mar 2021 08:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=CGdoq3C6mc52Jay6LmIRsdki/IdPw20TNxpqb2RlUB0=;
        b=WRaz4S6slN3r85RIjT1DpGE3UijwcYfydceRQu/gBfpJCvGfUlYgh4LAiQ7kkyo/OG
         ya/it7uM8vWeSf9Xb3PBxg3bbk4ECvhSTXyo3QuWwOv9Tq5osmt3Vm6OO/UsW2PUJBdq
         b5wJLZC+2nKWRhigbbuh2f20eSqtlJX6CSuAb+L9nMdaSeVSyM8NAc26b4t86hX+A4AX
         1mSC3Qb4XVi4Jj9Sg041T84XTmi/EPyP2Oayyfz/iNan9eNrKx96wDOVbSO451skoUtL
         GnVFUvF8EgPTArkDbM1/s3BWjxkqMHRSfulWFD0XzNpl0BcvfkSy5t318kuJ1fgVJ2lB
         SgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=CGdoq3C6mc52Jay6LmIRsdki/IdPw20TNxpqb2RlUB0=;
        b=XKO6irf69CgygHYS8O9+408VmWnrMC3oAJq1jZmeR2/8/3vwfZC+AmOk2Fc7IXKJfN
         SwHMa5vpL036em8fcfD4zDGjBAiFl90lDNYoqMXcNwdyCN0ygO2qgFFgoSKUtGx8YnWE
         i5Y/C6UYzcmpPeJk6pg5Sxglud+8mtvtSCB6GtzerQWPDlyb1cDF0DAMDMHQVjW++QE3
         UY5H7XwmqooOLroLFJg4xT1wl+JK/u3oizqV3BpBapl5TgBHCLxTTffk0Uma8XqBKPWZ
         EPQMzpRgMV9Szy36VrMIFLERwE9wZpVDe5yEj6GmIiR9mZcQwWQQREKvQY0p+ETUaEuU
         YEPA==
X-Gm-Message-State: AOAM533oaXkZkEOuqkEY6AGru7MntvAz+2KZ1TsrdScXI4ILMR8qkHhT
	3/ihXNdHgwEDHeD1CNLFLA4=
X-Google-Smtp-Source: ABdhPJwJmsMmZeh7CTkW7IMwAVviXD81RzaXYOQna1vivS2KsfcAU4xYDBb81gaAyuUOBwmbg2ybAA==
X-Received: by 2002:a37:a811:: with SMTP id r17mr701324qke.268.1616428104941;
        Mon, 22 Mar 2021 08:48:24 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id l17sm4064945qtk.60.2021.03.22.08.48.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 08:48:24 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 22 Mar 2021 11:48:23 -0400
Message-Id: <18AA3903-85BE-4C57-8F80-0F63E1E133FD@gmail.com>
References: <SG2PR04MB35145981F34B7F7B86DE892EF0659@SG2PR04MB3514.apcprd04.prod.outlook.com>
In-Reply-To: <SG2PR04MB35145981F34B7F7B86DE892EF0659@SG2PR04MB3514.apcprd04.prod.outlook.com>
To: Oscar Pablo <oscar_pabloo@outlook.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: 336E4W4CZSSWCVOKWNZUVOTDALQTFHL7
X-Message-ID-Hash: 336E4W4CZSSWCVOKWNZUVOTDALQTFHL7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: question of X300 revision
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/336E4W4CZSSWCVOKWNZUVOTDALQTFHL7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7516952209343533012=="


--===============7516952209343533012==
Content-Type: multipart/alternative; boundary=Apple-Mail-428035E2-908F-424F-8A5A-00365D2E3DA4
Content-Transfer-Encoding: 7bit


--Apple-Mail-428035E2-908F-424F-8A5A-00365D2E3DA4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Code sees like this, that support hardware must necessarily provide support f=
or older equipment l=E2=80=94even models or revs that aren=E2=80=99t sold an=
ymore. That=E2=80=99s just the nature of hardware drivers.=20

The schematic update policy is a business thing that I=E2=80=99m not qualifi=
ed to comment on.=20

Sent from my iPhone

> On Mar 21, 2021, at 9:57 PM, Oscar Pablo <oscar_pabloo@outlook.com> wrote:=

>=20
> =EF=BB=BF
> i don't understand why keep the the source code for the product that will n=
ever show. and release a schematic for the product that will never show. if t=
here is no source code to support the schematic then this schematic is no us=
eful. i know x300 schematic hide the part of pcie. but if other part is ok t=
hen it still have value for reference if someone want to use some part of it=
.=20
>=20
>=20
> From: Marcus D. Leech <patchvonbraun@gmail.com>
> Sent: Sunday, March 21, 2021 3:13 PM
> To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: [USRP-users] Re: question of X300 revision
> =20
>> On 03/21/2021 04:16 AM, Oscar Pablo wrote:
>> Hi,
>> the public released X300 schematic is revision 1. i want to know if this r=
evision is the revision in uhd source code. in uhd source code there is stra=
nge words "x300_clock_ctrl is not compatible with revs <=3D 4 and may    lea=
d to locking issues" so what is the correct source code for revision less th=
an 4?
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> My recollection is that hardware rev <=3D 4 were pre-production and you'll=
 never see them "in the wild".
>=20
>=20

--Apple-Mail-428035E2-908F-424F-8A5A-00365D2E3DA4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Code sees like this, that support hardware m=
ust necessarily provide support for older equipment l=E2=80=94even models or=
 revs that aren=E2=80=99t sold anymore. That=E2=80=99s just the nature of ha=
rdware drivers.&nbsp;<div><br></div><div>The schematic update policy is a bu=
siness thing that I=E2=80=99m not qualified to comment on.&nbsp;<br><div><br=
><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">On Mar 21, 2021, at 9:57 PM, Oscar Pablo &lt;oscar_pabloo@outlo=
ok.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div d=
ir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
i don't understand why keep the the source code for the product that will ne=
ver show. and release a schematic for the product that will never show. if t=
here is no source code to support the schematic then this schematic is no us=
eful. i know x300 schematic hide
 the part of pcie. but if other part is ok then it still have value for refe=
rence if someone want to use some part of it.
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt=
; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D=
"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;pat=
chvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, March 21, 2021 3:13 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>=

<b>Subject:</b> [USRP-users] Re: question of X300 revision</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 03/21/2021 04:16 AM, Oscar Pablo wrote:<=
br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt=
; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt=
; color:rgb(0,0,0)">
the public released X300 schematic is revision 1. i want to know if this rev=
ision is the revision in uhd source code. in uhd source code there is strang=
e words "x300_clock_ctrl is not compatible with revs &lt;=3D 4 and may&nbsp;=
 &nbsp; lead to locking issues" so what is the
 correct source code for revision less than 4?<br>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.co=
m</a>
</pre>
</blockquote>
My recollection is that hardware rev &lt;=3D 4 were pre-production and you'l=
l never see them "in the wild".<br>
<br>
<br>
</div>
</div>


</div></blockquote></div></div></body></html>=

--Apple-Mail-428035E2-908F-424F-8A5A-00365D2E3DA4--

--===============7516952209343533012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7516952209343533012==--
