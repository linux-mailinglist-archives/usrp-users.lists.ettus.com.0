Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 22824570AC5
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 21:31:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70B04383964
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 15:31:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657567913; bh=h0zcSG6ekt4qhpu5TJfCYvZZnPGlYtue9LzSRhY6VsE=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Hf4iTBYhlH2TdnDsEY166kQa2HGCRf05ElXP/DE2j2PTbCeh7nu+QbPy+DfE/hBdp
	 CbydBpD9djRvoqNvT63AOo9zqQYtXtFAhqNrhUmBUcIKe7TLrDyjGNyhRsKDgwXo9z
	 CC5PF6TjxBxYpBC6ZK9WZKMOt4SDlUAGFL2w70YJeFf+xpTOwIvRhPyyh2RlrOuouS
	 kIcQIJMBKwhswJ0J2hmjQCd8WJo2CdyjTULVL57cZy6aRvC6KwhSzYAh5WIpdnianv
	 Fv14Ja372rZggC0lwqFZQe3jJdxunZm9qwJTCLrOxUOVYclqCW5vpfAWscQxkrJfA2
	 MZLgblgYngWag==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 53C16381430
	for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 15:29:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="on0ARo55";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id mi10so1086080qvb.1
        for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 12:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=cP4s/ET/Qo/2hxtHh427j819axHl3TX6gADGoFid/nI=;
        b=on0ARo55LNrckaa0H4e469jgbGP72QSgYV1YMIdHY5h4MNOl2sowZXYm3qWpxkp1HJ
         42sw7CwOvw7ug5Bkmn8vNeomiv2gL1DjCcidm6caaPhOWyCFO/g63NuJp+8ogclhgE4U
         a2HV6n2sEfdXPFlUAs3ixn+HULtod7P2d2IhowySCj3lmuGlFVp0Xxml/ONpOYeQKBkc
         tjsWD9wZRo6NsrsZMQyLGuR9I9hdZE1CS+IbAYskDwrgfA18RELIVhH8Vsm+uK4ZFgmk
         wNxj9Mau7JKKjMp4AZ2597SMw4gfr2WBFX6FlKxMBCkHPGRuFp9etmeQf6zts8TIJbks
         Ra+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=cP4s/ET/Qo/2hxtHh427j819axHl3TX6gADGoFid/nI=;
        b=p/EFaIIcD1rUSCWZ+t1mmNYiTG4Y++gbXSORoyCnET7AKofIsdDuhnGFf3cyCF0VT7
         prqnKonfFFO6VCPvtwUW/ZNuCQc2JzRpecx7o3Ap8awlXzroEWi+zWZqXpTFJIVcc8NC
         e0S8x671rFpU28pxATidg5Y7nCqhfAigmdAvsRYsPdGeLYuT6fsFs4wqs6Uu7ByRojA9
         kgziszUXRTHJATHf10WYh5OVN8jUHV92Va+Cj57fN34Z0zIg1NLW6Y6phk+p5Ud/LfuE
         qfp6JwukNp50E2SZCI80m+mpQLa656fUgLFlgA2hhK0NkNMosPWvqjKgEIsIR/jjQOQA
         bo9A==
X-Gm-Message-State: AJIora+mNp984rwared1uw1ufwI4yjtzTNEK3r21Co5Qc8Q2giDkuczo
	ugVG9BWuI7B6whPvTGJTyYRnR633aec=
X-Google-Smtp-Source: AGRyM1vZDXnIWCfjOJZEgwZXcx7RWrhPJiY/L3yCb5HNAIE71Bs8YJMf0PAqPHKhFfe8HKJ4/Rlwew==
X-Received: by 2002:ad4:5fc7:0:b0:473:724b:5aff with SMTP id jq7-20020ad45fc7000000b00473724b5affmr4631336qvb.99.1657567753794;
        Mon, 11 Jul 2022 12:29:13 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id q22-20020a05620a2a5600b006b58facde91sm2526197qkp.106.2022.07.11.12.29.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 12:29:13 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 11 Jul 2022 15:29:12 -0400
Message-Id: <A5177C84-C60A-4614-A9F3-C71ED7A49489@gmail.com>
References: <TYCP286MB0991EFFAC0D4E288F4EA3C97FD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYCP286MB0991EFFAC0D4E288F4EA3C97FD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
To: pro jason <jason_proj@outlook.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: R5A6ZF224XKQGQDBJVHR4QYVBLZSUZF5
X-Message-ID-Hash: R5A6ZF224XKQGQDBJVHR4QYVBLZSUZF5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: fx3 is in state 5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R5A6ZF224XKQGQDBJVHR4QYVBLZSUZF5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7179345412218862085=="


--===============7179345412218862085==
Content-Type: multipart/alternative; boundary=Apple-Mail-9269F61C-D318-4CC9-8060-C7B6C19354F4
Content-Transfer-Encoding: 7bit


--Apple-Mail-9269F61C-D318-4CC9-8060-C7B6C19354F4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Unfortunately this likely
Means you have broken hardware.=20

If it was Purchased less than one year ago, send a note to support@ettus.com=
 for warranty support.=20

Sent from my iPhone

> On Jul 11, 2022, at 3:26 PM, pro jason <jason_proj@outlook.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> Thank you for your reply.
> The image file we use is a standard image file from Ettus Research, which h=
as not been modified.=20
> We have several pcs of B200mini-i, and only one device reports this error.=
=20
>=20
> Best regards,
> Jason
>=20
>=20
>=20
> From: Marcus D. Leech <patchvonbraun@gmail.com>
> Sent: Sunday, June 12, 2022 2:42 AM
> To: pro jason <jason_proj@outlook.com>
> Subject: Re: [USRP-users] RuntimeError: fx3 is in state 5
> =20
>> On 2022-06-11 13:24, pro jason wrote:
>> Hi all,
>>=20
>> One of our b200mini-i is not working properly. The faults are as follows:=

>>=20
>> uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEAD-0=
-g46a70d85
>> [INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b2=
00_fw.hex...
>> [INFO] [B200] Detected Device: B200mini
>> [INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b200mi=
ni_fpga.bin...
>> Error: RuntimeError: fx3 is in state 5
>>=20
>> We tried to replace the computer or USB cable, but the fault still exists=
. Is there a solution? If the hardware is damaged, which chip is likely to f=
ail?
>>=20
>> Best regards,
>> Jason
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> Make sure your FPGA image is correct--is it the same as on other working s=
ystems?
>=20
> That error message indicates that the FX3 chip (USB interface) was unable t=
o load the FPGA image--either because
>   the FPGA isn't responding correctly, or there's something wrong with the=
 image.
>=20
>=20

--Apple-Mail-9269F61C-D318-4CC9-8060-C7B6C19354F4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Unfortunately this likely<div>Means you hav=
e broken hardware.&nbsp;</div><div><br></div><div>If it was Purchased less t=
han one year ago, send a note to support@ettus.com for warranty support.&nbs=
p;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><bl=
ockquote type=3D"cite">On Jul 11, 2022, at 3:26 PM, pro jason &lt;jason_proj=
@outlook.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite">=
<div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you for your reply.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The image file we use is a standard image file from Ettus Research, which ha=
s not been modified.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
We have several pcs of B200mini-i, and only one device reports this error.&n=
bsp;
<div><br>
</div>
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Jason<br>
<div><br>
</div>
<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt=
; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" col=
or=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;pat=
chvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, June 12, 2022 2:42 AM<br>
<b>To:</b> pro jason &lt;jason_proj@outlook.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] RuntimeError: fx3 is in state 5</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-06-11 13:24, pro jason wrote:<br>
</div>
<blockquote type=3D"cite">
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi all,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof elementToProof" style=3D"font-family:Calibri,=
Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
One of our b200mini-i is not working properly. The faults are as follows:</d=
iv>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
uhd_usrp_probe
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEAD=
-0-g46a70d85</div>
<div>[INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_=
b200_fw.hex...</div>
<div>[INFO] [B200] Detected Device: B200mini<br>
</div>
<div>[INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b200=
mini_fpga.bin...</div>
<div>Error: RuntimeError: fx3 is in state 5</div>
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
We tried to replace the computer or USB cable, but the fault still exists. I=
s there a solution? If the hardware is damaged, which chip is likely to fail=
?
<div><br>
</div>
Best regards,<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Jason</div>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">_____________________________________________=
__
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" dat=
a-auth=3D"NotApplicable" class=3D"x_moz-txt-link-abbreviated">usrp-users@lis=
ts.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" data-auth=3D"NotApplicable" class=3D"x_moz-txt-link-abbreviated">usr=
p-users-leave@lists.ettus.com</a>
</pre>
</blockquote>
Make sure your FPGA image is correct--is it the same as on other working sys=
tems?<br>
<br>
That error message indicates that the FX3 chip (USB interface) was unable to=
 load the FPGA image--either because<br>
&nbsp; the FPGA isn't responding correctly, or there's something wrong with t=
he image.<br>
<br>
<br>
</div>


</div></blockquote></div></body></html>=

--Apple-Mail-9269F61C-D318-4CC9-8060-C7B6C19354F4--

--===============7179345412218862085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7179345412218862085==--
