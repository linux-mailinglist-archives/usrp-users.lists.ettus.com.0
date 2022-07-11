Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF4B570B83
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 22:26:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D5483812BE
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jul 2022 16:26:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657571201; bh=GdwhNSG35yxWnPe5lh2sM3neI4Y7ahRa8I0pB1wqLXA=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fNm7ZuellILV8ihI7YK/Nlx0V4ANwxyyj2dN6/+ZAa8MthH9Log+r3CMsQo0UFoaC
	 84ItqsWj7CgIB0dk2ntZe07DQk4PQYckjMiTEhuFMyzmct+huRcPtkH7b553g5HwMt
	 OBPXcetM4BpxXTCWqCJQCJElkzG1THA8gRPCslUUTVlj7DOb5FKZ3F8iB7OM1gT6aQ
	 riBjQbgZy/SbZkn2HbSxguRnCHMjwRUcOwV3fCVXSwELcHgy3riaNYmXY3jZekSmab
	 JcuXsKdqtXD2V/bBsgapdzKyX4e4FEneus40BrXcvV/gvVFZl3bJ+G36T+HW6PAvCd
	 nvna8sjrTEa0g==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 92486380E9A
	for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 16:23:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hNd1bYwP";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id i21so6665928qtw.12
        for <USRP-users@lists.ettus.com>; Mon, 11 Jul 2022 13:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=iVju4FxCskKncgKkT5SMBbgla97dB1LTrTy+pj8QrSA=;
        b=hNd1bYwPTn3YoBnUEItxNIzFikcrBO9Sf2o8cNoQ+iyTGMGUmHioEwzmpLZ4tEV2K0
         88E96a4aW83GXhXK/jMYEjFQhgAfWu2Nksf0taFCOjLTiJB4kRDlpBgh7VryOK91ocQS
         GgmEq8gN3u/vHA6uiDWK8XNZRYLrX8GX4yjZw7hZGXYysH43AoFgTMuYKNiqxkl42i93
         5einC2zFg6OD3ymoX9QFa5B0eylWbSkD0oielK4VOxgE7gISweXKlcU8JtRDOOD/ncVu
         berxJWumNjHHae+OBJqJySsRb6isfVTGo+Ioopf3QA3j10TLW5stu0NQyOPIe6dCGH20
         NAYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=iVju4FxCskKncgKkT5SMBbgla97dB1LTrTy+pj8QrSA=;
        b=v1orFJyT3C/H6La8hBq8xA6w+GPNx1a7MA+fsX5DVnNGSWZ0T0ly97BJd8WSQ5FTOI
         RsBDlQS1vp1ANl7WSOhRCcpsLg0YVi0VVuIHlgLfChCZUWPTuzRiChAswXPjtleSkW+C
         dMY5F6Gb1AP5SGSupPtxDcRyvrwZqtzPOayxe79WnsouBgNXMv8dkWCnwc7dbiaIei4Q
         j2uog1miytP6yvwobpkAps9QulDrnVQ1qlmgGfZFqq3ooXVtFZvnnDNqO8olqJk5gPV6
         GEmcuwahcCvhGVjWBsaDUeKrumpDcGUE4FTLs/Nr/FtM0tinpLHd4DJxLQStnN2DITAi
         LHJQ==
X-Gm-Message-State: AJIora8lcT2w1d5mG5bd1L1K5Tcj1qVjKEyfvHmj7cKDEPDxUMyhvamv
	Ci2MxEEspiByubE/E7Fs0HVJyUE6Djo=
X-Google-Smtp-Source: AGRyM1stWzwcJQbhDMt1ki1f5j7QoYbb7R8IbEGvdraLUfzom/+6pB5FckvHQm1zbIfFO7YAAc1sTQ==
X-Received: by 2002:a05:622a:1014:b0:319:7601:c22 with SMTP id d20-20020a05622a101400b0031976010c22mr15227337qte.509.1657571031943;
        Mon, 11 Jul 2022 13:23:51 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.gmail.com with ESMTPSA id bs16-20020a05620a471000b006af34a1a897sm7368520qkb.65.2022.07.11.13.23.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 13:23:51 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 11 Jul 2022 16:23:50 -0400
Message-Id: <06B6154B-295E-4BF1-82F9-9C8CD17D46B7@gmail.com>
References: <TYCP286MB099141AF47E0F2810A1C279BFD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYCP286MB099141AF47E0F2810A1C279BFD879@TYCP286MB0991.JPNP286.PROD.OUTLOOK.COM>
To: pro jason <jason_proj@outlook.com>
X-Mailer: iPhone Mail (19F77)
Message-ID-Hash: A2AGP6RZRDNZOBHVLNYTT7X3OZ2JOUON
X-Message-ID-Hash: A2AGP6RZRDNZOBHVLNYTT7X3OZ2JOUON
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: fx3 is in state 5
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A2AGP6RZRDNZOBHVLNYTT7X3OZ2JOUON/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2540683500220163759=="


--===============2540683500220163759==
Content-Type: multipart/alternative; boundary=Apple-Mail-8D88E1EF-056E-486A-8474-CBE89B3DAE5A
Content-Transfer-Encoding: 7bit


--Apple-Mail-8D88E1EF-056E-486A-8474-CBE89B3DAE5A
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hard to tell exactly. Interface between FX3 and FPGA could be the culprit. FX=
3 could be the culprit or the FPGA.=20

Sent from my iPhone

> On Jul 11, 2022, at 3:44 PM, pro jason <jason_proj@outlook.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,
>=20
> This board was bought a year ago, so it is out of warranty.
> Is the FPGA chip broken?
>=20
> Best regards,
> Jason
> From: Marcus D Leech <patchvonbraun@gmail.com>
> Sent: Tuesday, July 12, 2022 3:29 AM
> To: pro jason <jason_proj@outlook.com>
> Cc: USRP-users@lists.ettus.com <USRP-users@lists.ettus.com>
> Subject: Re: [USRP-users] RuntimeError: fx3 is in state 5
> =20
> Unfortunately this likely
> Means you have broken hardware.=20
>=20
> If it was Purchased less than one year ago, send a note to support@ettus.c=
om for warranty support.=20
>=20
> Sent from my iPhone
>=20
>>> On Jul 11, 2022, at 3:26 PM, pro jason <jason_proj@outlook.com> wrote:
>>>=20
>> =EF=BB=BF
>> Hi Marcus,
>>=20
>> Thank you for your reply.
>> The image file we use is a standard image file from Ettus Research, which=
 has not been modified.=20
>> We have several pcs of B200mini-i, and only one device reports this error=
.=20
>>=20
>> Best regards,
>> Jason
>>=20
>>=20
>>=20
>> From: Marcus D. Leech <patchvonbraun@gmail.com>
>> Sent: Sunday, June 12, 2022 2:42 AM
>> To: pro jason <jason_proj@outlook.com>
>> Subject: Re: [USRP-users] RuntimeError: fx3 is in state 5
>> =20
>>> On 2022-06-11 13:24, pro jason wrote:
>>> Hi all,
>>>=20
>>> One of our b200mini-i is not working properly. The faults are as follows=
:
>>>=20
>>> uhd_usrp_probe
>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.HEAD-=
0-g46a70d85
>>> [INFO] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b=
200_fw.hex...
>>> [INFO] [B200] Detected Device: B200mini
>>> [INFO] [B200] Loading FPGA image: /usr/local/share/uhd/images/usrp_b200m=
ini_fpga.bin...
>>> Error: RuntimeError: fx3 is in state 5
>>>=20
>>> We tried to replace the computer or USB cable, but the fault still exist=
s. Is there a solution? If the hardware is damaged, which chip is likely to f=
ail?
>>>=20
>>> Best regards,
>>> Jason
>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> Make sure your FPGA image is correct--is it the same as on other working s=
ystems?
>>=20
>> That error message indicates that the FX3 chip (USB interface) was unable=
 to load the FPGA image--either because
>>   the FPGA isn't responding correctly, or there's something wrong with th=
e image.
>>=20
>>=20

--Apple-Mail-8D88E1EF-056E-486A-8474-CBE89B3DAE5A
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hard to tell exactly. Interface between FX3=
 and FPGA could be the culprit. FX3 could be the culprit or the FPGA.&nbsp;<=
br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Jul 11, 2022, at 3:44 PM, pro jason &lt;jason_proj@ou=
tlook.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
This board&nbsp;was bought a year ago, so it is out of warranty.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Is the FPGA chip broken?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Best regards,<br>
Jason<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D Leech &lt;patc=
hvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, July 12, 2022 3:29 AM<br>
<b>To:</b> pro jason &lt;jason_proj@outlook.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;USRP-users@lists.ettus.com&gt;<br>=

<b>Subject:</b> Re: [USRP-users] RuntimeError: fx3 is in state 5</font>
<div>&nbsp;</div>
</div>
<div dir=3D"auto">Unfortunately this likely
<div>Means you have broken hardware.&nbsp;</div>
<div><br>
</div>
<div>If it was Purchased less than one year ago, send a note to support@ettu=
s.com for warranty support.&nbsp;<br>
<br>
<div dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">On Jul 11, 2022, at 3:26 PM, pro jason &lt;jason_p=
roj@outlook.com&gt; wrote:<br>
<br>
</blockquote>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">=EF=BB=BF
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi Marcus,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thank you for your reply.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
The image file we use is a standard image file from Ettus Research, which ha=
s not been modified.&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
We have several pcs of B200mini-i, and only one device reports this error.&n=
bsp;
<div><br>
</div>
Best regards,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetica=
,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Jason<br>
<div><br>
</div>
<br>
</div>
<div id=3D"x_appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt=
; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" c=
olor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, June 12, 2022 2:42 AM<br>
<b>To:</b> pro jason &lt;jason_proj@outlook.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] RuntimeError: fx3 is in state 5</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_x_moz-cite-prefix">On 2022-06-11 13:24, pro jason wrote:<br>=

</div>
<blockquote type=3D"cite">
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helveti=
ca,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi all,</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helveti=
ca,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof x_elementToProof" style=3D"font-family:Cali=
bri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
One of our b200mini-i is not working properly. The faults are as follows:</d=
iv>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helveti=
ca,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helveti=
ca,sans-serif; font-size:12pt; color:rgb(0,0,0)">
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
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helveti=
ca,sans-serif; font-size:12pt; color:rgb(0,0,0)">
We tried to replace the computer or USB cable, but the fault still exists. I=
s there a solution? If the hardware is damaged, which chip is likely to fail=
?
<div><br>
</div>
Best regards,<br>
</div>
<div class=3D"x_x_elementToProof" style=3D"font-family:Calibri,Arial,Helveti=
ca,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Jason</div>
<br>
<fieldset class=3D"x_x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_x_moz-quote-pre">___________________________________________=
____
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" cla=
ss=3D"x_x_moz-txt-link-abbreviated">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" class=3D"x_x_moz-txt-link-abbreviated">usrp-users-leave@lists.ettus.=
com</a>
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
</div>
</blockquote>
</div>
</div>


</div></blockquote></body></html>=

--Apple-Mail-8D88E1EF-056E-486A-8474-CBE89B3DAE5A--

--===============2540683500220163759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2540683500220163759==--
