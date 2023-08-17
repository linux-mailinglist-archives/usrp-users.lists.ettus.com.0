Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 039BB77F54D
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 13:32:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93C0B384256
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 07:32:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692271932; bh=UcIEZYouQm3uLHTB3wj8/cVBuoYd7iv0h6SfETpdrFk=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vZtzcmi3d4g3B4drgf8bUIUiZ76JYnrEnVfEa99QQZ3HLoswt8/w/GpHjKKvHFphT
	 LHEWZ8BYhkPZSlysS4mTpGCqyhEkMvJb8pTRGVnpl5b4aDxPfRX+hrB8VuVHpahfbl
	 J9KGvYEwVYp04YNwNYoSYCqgBxAW38EhsFHwZNWkf0FMdQ0qCKtanf80xtMYZh+Zgw
	 Z/5+pn3IyDbgzWU61Z/TG7Z0qbp9Nc22ZPAuvrBSj12fSfvBFIKmntXA71+zCHCEPo
	 hCLMUWc718UtrojofDN8UcXVmXC+8i4Dm40CwGpKWUNfAsGWGez5ldINn/FpFwiCSp
	 KbbGppGGPVA1g==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 90513380BF7
	for <USRP-users@lists.ettus.com>; Thu, 17 Aug 2023 07:31:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UNflS3gA";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-40ffb4476d8so44401241cf.2
        for <USRP-users@lists.ettus.com>; Thu, 17 Aug 2023 04:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692271902; x=1692876702;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t5eM7YTttJHOZb+tAwfxhHQ+q/7FIOCV4U++AU+trtU=;
        b=UNflS3gAmjrqgPqfLwU8ZRCDEvdpftW1sIqQ4U3CjpYT3X9z+1pRZFtPvyCf48cGVO
         dGUAMaK0+SQNmcsujDnsR00BLM1p0vuJiTHzSGJCdV3oSGrwfKnXghBNUG79p6eIKRy1
         d74Zjq4CnXGO3YEvGtLLrRB//xfPgiMo77HxvHYlw3lKzTLoN0CEMwt27WEDpDtnbH5Y
         HFEgcHQxVa/5uH1nujiR04VbLQZCAX8jpSAxYzHKJw71lwilnS+zROEM7wICf5O1zPcG
         Or6lfrYyJRrWk6V6BsEV0EVwFMKjyIOGalF/27crIpLhOmA80FiG/hAUd7fIxHbB6M9i
         sz/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692271902; x=1692876702;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t5eM7YTttJHOZb+tAwfxhHQ+q/7FIOCV4U++AU+trtU=;
        b=dvPbXzzGxdU9DU5nZqie18adF7xUdF6lDG50kA+f4kJH7Xty1wVt26z8rudvImy8Y4
         OhpdhTnDSN5fDElSDg5ZZZVomSqPWOokCkf++5qIGRXBS3gKlnL6eAnzpTgbylFLoL9Y
         picXMa4J4koxp/Qw4XwVzwB+xum/kSOKh2qIMx2f6C5Uqid9ONKcN6jxcm5T66ofAKGK
         G7347SoBUx/a3Q1E2uUl2kidhTa6Of8THRYowag8bAF08E6lXxf3+oWsh2YvkSdJyq+Y
         R/5ECsuaiBn5C9jsqVkFtqpSRaKJGe8OXMw3Bjf7L84zWYAPeapXTrtNLe1v5L8BvhSn
         p8Nw==
X-Gm-Message-State: AOJu0YxVyOkDEHNE0GRVN7jTFRnIV/3SdivJQ7/KU13ryyKj42oP01Lw
	PCsf4ultRBUPND3tG6k8uwE=
X-Google-Smtp-Source: AGHT+IHC/04cSGbmdjHNuaaUvUshprUQOJqm3MS58FSLizTehA6MqNFob5ubCXCCFMk8ZDcj6Ou87g==
X-Received: by 2002:ac8:584d:0:b0:407:fb08:c44e with SMTP id h13-20020ac8584d000000b00407fb08c44emr4698912qth.5.1692271901928;
        Thu, 17 Aug 2023 04:31:41 -0700 (PDT)
Received: from smtpclient.apple ([174.93.1.40])
        by smtp.gmail.com with ESMTPSA id pa39-20020a05620a832700b0076d74da4481sm804824qkn.23.2023.08.17.04.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Aug 2023 04:31:41 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 17 Aug 2023 07:31:22 -0400
Message-Id: <53B726F0-3AF5-4A0C-A433-6A2C3AF46DF7@gmail.com>
References: <MA0PR01MB8035232D5A63FC2A52D3BAF5FB1AA@MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA0PR01MB8035232D5A63FC2A52D3BAF5FB1AA@MA0PR01MB8035.INDPRD01.PROD.OUTLOOK.COM>
To: Venkatareddy Akumalla <avenkataredd@iisc.ac.in>
X-Mailer: iPhone Mail (20B101)
Message-ID-Hash: SKREV6ARX3KDYPX5OK2HH675HD5BK65A
X-Message-ID-Hash: SKREV6ARX3KDYPX5OK2HH675HD5BK65A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 not found and power cycle needed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SKREV6ARX3KDYPX5OK2HH675HD5BK65A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6708417978581946516=="


--===============6708417978581946516==
Content-Type: multipart/alternative; boundary=Apple-Mail-086A5761-51F0-4FA4-8C5B-7139C98E5A1B
Content-Transfer-Encoding: 7bit


--Apple-Mail-086A5761-51F0-4FA4-8C5B-7139C98E5A1B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">That will only work if the system can actua=
lly see the device.&nbsp;<div><br></div><div>There=E2=80=99s also the more d=
rastic =E2=80=9Creset bus=E2=80=9D option.&nbsp;</div><div><br><div><br><div=
 dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Aug 17, 2023, at 1:49 AM, Venkatareddy Akumalla &lt;avenkataredd@i=
isc.ac.in&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><di=
v dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
I am not sure if this helps. Please run the following commands whenever you e=
xperience this issue with B210 and let me know if this works.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
<div class=3D"OutlineElement Ltr SCXW246238804 BCX2">
<p class=3D"Paragraph SCXW246238804 BCX2" style=3D"font-weight:normal;text-a=
lign:left;text-indent:94px">
<span style=3D"font-size:12pt;line-height:21.85px;font-family:&quot;Liberati=
on Serif&quot;, &quot;Liberation Serif_EmbeddedFont&quot;, &quot;Liberation S=
erif_MSFontService&quot;, sans-serif" data-contrast=3D"auto" class=3D"TextRu=
n SCXW246238804 BCX2" lang=3D"EN-IN"><span class=3D"NormalTextRun SCXW246238=
804 BCX2 ContentPasted0">cd
 /</span><span class=3D"NormalTextRun SpellingErrorV2Themed SCXW246238804 BC=
X2 ContentPasted0">usr</span><span class=3D"NormalTextRun SCXW246238804 BCX2=
 ContentPasted0">/local/lib/</span><span class=3D"NormalTextRun SpellingErro=
rV2Themed SCXW246238804 BCX2 ContentPasted0">uhd</span><span class=3D"Normal=
TextRun SCXW246238804 BCX2 ContentPasted0">/utils</span></span><span class=3D=
"EOP SCXW246238804 BCX2 ContentPasted0" style=3D"font-size:12pt;line-height:=
21.85px;font-family:&quot;Liberation Serif&quot;, &quot;Liberation Serif_Emb=
eddedFont&quot;, &quot;Liberation Serif_MSFontService&quot;, sans-serif" dat=
a-ccp-props=3D"{&quot;134245417&quot;:true,&quot;201341983&quot;:0,&quot;335=
551550&quot;:1,&quot;335551620&quot;:1,&quot;335559738&quot;:0,&quot;3355597=
39&quot;:0,&quot;335559740&quot;:276}">&nbsp;</span></p>
</div>
<div class=3D"OutlineElement Ltr SCXW246238804 BCX2">
<p class=3D"Paragraph SCXW246238804 BCX2" style=3D"font-weight:normal;text-a=
lign:left;text-indent:94px">
<span style=3D"font-size:12pt;line-height:21.85px;font-family:&quot;Liberati=
on Serif&quot;, &quot;Liberation Serif_EmbeddedFont&quot;, &quot;Liberation S=
erif_MSFontService&quot;, sans-serif" data-contrast=3D"auto" class=3D"TextRu=
n SCXW246238804 BCX2" lang=3D"EN-IN"><span class=3D"NormalTextRun SpellingEr=
rorV2Themed SCXW246238804 BCX2 ContentPasted0">sudo</span><span class=3D"Nor=
malTextRun SCXW246238804 BCX2 ContentPasted0">
 ./b2xx_fx3_utils --reset-device</span></span><span class=3D"EOP SCXW2462388=
04 BCX2 ContentPasted0" style=3D"font-size:12pt;line-height:21.85px;font-fam=
ily:&quot;Liberation Serif&quot;, &quot;Liberation Serif_EmbeddedFont&quot;,=
 &quot;Liberation Serif_MSFontService&quot;, sans-serif" data-ccp-props=3D"{=
&quot;134245417&quot;:true,&quot;201341983&quot;:0,&quot;335551550&quot;:1,&=
quot;335551620&quot;:1,&quot;335559738&quot;:0,&quot;335559739&quot;:0,&quot=
;335559740&quot;:276}">&nbsp;</span></p>
</div>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
______________________________</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" class=3D=
"elementToProof">
regards,
<div>Venkatareddy</div>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Francisco Gallardo l=C3=
=B3pez &lt;f.gallardo.lopez@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, August 16, 2023 17:56<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>=

<b>Subject:</b> [USRP-users] Re: USRP B210 not found and power cycle needed<=
/font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-size:10pt; font-family:sans-serif; color:#FF5733; font-st=
yle:normal; font-weight:bold">
External Email</div>
<br>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi,
<div><br>
</div>
<div>Actually, that is part of the problem. It happens sometimes,&nbsp;but n=
ot always.&nbsp;</div>
<div>I would say mainly when there is a power outage or similar, but not alw=
ays.</div>
<div><br>
</div>
<div>For the sake of testing, I just rebooted the remote machine. This time i=
t appears in both lsusb and&nbsp;uhd_find_devices upon reboot.&nbsp;</div>
<div><br>
</div>
<div>As said, I am not sure about the root cause. So it is complicated to te=
ll.</div>
<div><br>
</div>
<div>When that happened last time, I did not check lsusb, but uhd_find_devic=
es, and the system was not seeing the USRP. I guess lsusb would also not sho=
w the device.</div>
<div><br>
</div>
<div>I will check the thread Eden pointed out.&nbsp;</div>
<div><br>
</div>
<div>Thanks</div>
<div>Fran</div>
<div><br>
</div>
<div><br>
</div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">El mar, 15 ago 2023 a las 16:59, Mar=
cus D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt;) escribi=C3=B3:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; borde=
r-left:1px solid rgb(204,204,204); padding-left:1ex">
On 15/08/2023 02:43, Francisco Gallardo l=C3=B3pez wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; We have a remote station with an USRP B210.<br>
&gt;<br>
&gt; We observed that sometimes the remote machine cannot find the USRP <br>=

&gt; B210 (I think it has to do with uncontrolled power cycles, but I am <br=
>
&gt; not 100% sure about the root cause. The point is that sometimes it <br>=

&gt; happens).<br>
&gt;<br>
&gt; The only way to sort it out is to disconnect the power supply and the <=
br>
&gt; USB cable from the USRP, and then the remote machine can detect it <br>=

&gt; again. i.e. doing a complete power reboot to the USRP.<br>
&gt;<br>
&gt; It is not a killer because the problem is not always happening, but it <=
br>
&gt; is annoying because it implies sending somebody to disconnect and <br>
&gt; connect the USRP B210 cables.<br>
&gt;<br>
&gt; Is anybody experiencing a similar issue? Any idea how to fix it?<br>
&gt;<br>
&gt; The remote machine uses Ubuntu 22.04.3 LTS and the UHD drivers.<br>
&gt;<br>
&gt; Thanks!<br>
&gt; Fran<br>
&gt;<br>
I've seen this sporadically with B2xx over the years I've been using <br>
them.&nbsp; For example, on some hardware, the system cannot<br>
&nbsp;&nbsp; see the device on reboot, and you have to replug/power-cycle fo=
r the <br>
system to even see it.<br>
<br>
When this happens, does it show up in "lsusb" ?<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>


</div></blockquote></div></div></body></html>=

--Apple-Mail-086A5761-51F0-4FA4-8C5B-7139C98E5A1B--

--===============6708417978581946516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6708417978581946516==--
