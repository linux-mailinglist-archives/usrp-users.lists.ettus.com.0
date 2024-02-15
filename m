Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D49CC856732
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 16:19:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D99F2384B26
	for <lists+usrp-users@lfdr.de>; Thu, 15 Feb 2024 10:19:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708010395; bh=MbMTuaI9bfAyL3FjOV6WtAf2VbwXHlKPRm1IoSJDQ20=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GYVdsQYoAL39K2IpCQ08kjIaB/KsjiHPbrGes1k5QdkM3UFecWryAbEfP3OsgzP82
	 WDZnys5MzPA7QYXTYImgEamO+WU+QRHWYkinMyhb3aupNKPGapDwrc4jP+1zoowIJV
	 ABCnPc+uuLBHzBjJE5V06Qgl6ZyM2s9lw0F8TAceBc7CddPIoBURDCyq+nJJzpQOi8
	 gAufZ05hoXBAUKz+ifJ1p2hEoMMnYmW0O8/wUVqChFGkwEu+T6Mbt8TNntGuYYb/ur
	 UMQSzye4HDjQqyAFkVJfhRZOjD5EVX/uhv6mI8IZUCt20ouluO9PqwLYECrYbDI4nE
	 EdMMr38lPyXhA==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id B6A103845E6
	for <usrp-users@lists.ettus.com>; Thu, 15 Feb 2024 10:19:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nDbw4doE";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6861538916cso5801336d6.3
        for <usrp-users@lists.ettus.com>; Thu, 15 Feb 2024 07:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708010354; x=1708615154; darn=lists.ettus.com;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mbeu5XLjR26mVGMia/R2/vJ9qVjB3yNSAkXkPexq+0A=;
        b=nDbw4doEIUblMuC3zWs5ek7yC9YoJLW4c4uC6kg7XlFYn6GN+tGzNaE/WdbCZY8LSc
         JZ8rK1LoRvwDVvJskFPmeb1H1uWYX2munDwYkfSeYNr4bbrrj8I/NCjYMri6oRQgFuo6
         yb432NRWilAVQCZzmRbWrSOIcHQDdYlmzRANoQaJ8uG9u2ArzvPsL/vEvwqAv5FvM2o/
         fAuqNUyttCdTe6Crh5NVXvGqBT2LAx/O1Izms0sYt8B0p7bruIGqbECAuKcmJPQUNG8F
         s07c2Eoc2jJ/SFvEPdoqFTerH2jFAFVbx4gII7aDMuowUoZpwU+OuYm1JmWR8es5mFDE
         9i/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708010354; x=1708615154;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mbeu5XLjR26mVGMia/R2/vJ9qVjB3yNSAkXkPexq+0A=;
        b=YPGfKKMg+OdqF8xia3dsHGhot0d8oAT+CDYLTFoY/U4tdUAmwzCL+bVFe1FZVQtxXg
         dpVn5kZrjasH+Olf9iJvbedCWFI29IdpgRPBMBkOliaKK7tgrpjzHxxTdfjEIJQTlXhr
         f6talAn+1mkxkp0fB4tzMaQKkQs9wcVL4TRWQZkn4Tvyvbz62Yv1/tmUvyDsHx4Xjpi/
         bmBV+8ttkhv8Yj4jtaaiBH5NcD2YQDVf9aWUXOPhp1EhOXuTwbhWQc4wereSP6U+xOow
         iImhNvp4mjmJpUNonIsm/pwQLIXd4O1+znPc9HSXAapFXldU51PvE0A7i1oi4hKuEpCQ
         FIfg==
X-Forwarded-Encrypted: i=1; AJvYcCU3Lh23wkkRzVKOD+GYuHDO4l/FahcW70YzvnRxjmgZ8vrsRiSGIQvWLr8gOqqKPdKPwYF/tLeDRQb4R2Xp2ITxhli4V+f7fx0hKw==
X-Gm-Message-State: AOJu0YyUw8aXV5iBTWifqtr7HQ0fcWWacCVssE7pg4/xjb6TSH+/CdTw
	OEf1Fy9j1eXdisOp4cKt1LKTqDGDD7khKV7yakEFmII4WSV02/OB
X-Google-Smtp-Source: AGHT+IHaq8jvKN7JnOyxlRWeNtJaKzTjhqxcU8iUudh8l1IfKd0WXS1G95cPzP752igjD6WAfGTk7Q==
X-Received: by 2002:a0c:cc04:0:b0:68c:689d:92c3 with SMTP id r4-20020a0ccc04000000b0068c689d92c3mr1952101qvk.9.1708010354214;
        Thu, 15 Feb 2024 07:19:14 -0800 (PST)
Received: from smtpclient.apple ([174.93.0.146])
        by smtp.gmail.com with ESMTPSA id lb7-20020a056214318700b0068c88a31f1bsm737185qvb.89.2024.02.15.07.19.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 07:19:13 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 15 Feb 2024 10:18:54 -0500
Message-Id: <E2EB9144-1446-462E-8C31-7C7885ED5A99@gmail.com>
References: <BN2P110MB1027ABFD9BCFE7CEEDBC49E19F4DA@BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN2P110MB1027ABFD9BCFE7CEEDBC49E19F4DA@BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM>
To: "Seal, Ryan L. [US-US]" <RYAN.SEAL@dynetics.com>
X-Mailer: iPhone Mail (20D67)
Message-ID-Hash: 35ERDAJPJ6CSY323NMAYMNMYTJHDDNKL
X-Message-ID-Hash: 35ERDAJPJ6CSY323NMAYMNMYTJHDDNKL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Steve Hamn <stevehamn311@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: EXTERNAL: Re: GNURadio MPM major compat number mismatch after update to UHD 4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/35ERDAJPJ6CSY323NMAYMNMYTJHDDNKL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4390658705806423763=="


--===============4390658705806423763==
Content-Type: multipart/alternative; boundary=Apple-Mail-98F215DA-3CAC-4BB1-90F1-F8B336B054AF
Content-Transfer-Encoding: 7bit


--Apple-Mail-98F215DA-3CAC-4BB1-90F1-F8B336B054AF
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">If you=E2=80=99re going that way, you need t=
o revert yuur N320 to an older version. Look<div>More closely at the error m=
essage.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"l=
tr"><br><blockquote type=3D"cite">On Feb 15, 2024, at 10:14 AM, Seal, Ryan L=
. [US-US] &lt;RYAN.SEAL@dynetics.com&gt; wrote:<br><br></blockquote></div><b=
lockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">



<div class=3D"container-fluid" style=3D"width: 85%;">
<div style=3D"background-color: #ffffff; width: 100%; padding: 4pt; font-siz=
e: 10pt; line-height: 14pt; font-family: 'Arial'; color: black; text-align: l=
eft; border: 2pt solid #FFA500;">
<strong><span style=3D"color: #000000;">
</span></strong><p><strong>CAUTION: </strong>This email originated from outs=
ide of Leidos. Be cautious when clicking or opening content.</p>
<p></p>
</div>
</div>
<div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; col=
or: rgb(0, 0, 0);">
You need to install a new image on your USRP via mender or manually. I had t=
o do this recently to fix the same issue. See "updating filesystems with men=
der" in the docs.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFon=
t, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; col=
or: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof"><span style=3D"font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12p=
t; color: rgb(0, 0, 0);">Ryan</span></div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" sty=
le=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Steve Hamn &lt;steveham=
n311@gmail.com&gt;<br>
<b>Sent:</b> Thursday, February 15, 2024 3:20 AM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>=

<b>Subject:</b> EXTERNAL: [USRP-users] Re: GNURadio MPM major compat number m=
ismatch after update to UHD 4.6</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Yeah, that is what I figured. Any suggestions on what to do=
? I tried uninstalling and reinstalling gnuradio as well as installing UHD4.=
6 on my host PC. I'll ask the gnu-radio mailing list too.&nbsp;
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>Steve</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Feb 14, 2024 at 5:07=E2=80=AF=
PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbr=
aun@gmail.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; borde=
r-left:1px solid rgb(204,204,204); padding-left:1ex">
<u></u>
<div>
<div>On 15/02/2024 04:03, Steve Hamn wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">Hello,&nbsp;
<div><br>
</div>
<div>I updated my N320 to UHD 4.6, however now I am getting an error in GNUR=
adio:</div>
<div><br>
</div>
<div>"<i>RuntimeError: RuntimeError: MPM major compat number mismatch. Expec=
ted: 4.2 Actual: 5.3. Please update the version of MPM on your USRP device.<=
/i>"</div>
<div><br>
</div>
<div>Any suggestions on how to fix?&nbsp;</div>
<div><br>
</div>
<div>Thanks,&nbsp;</div>
<div><br>
</div>
<div>Steve</div>
</div>
<br>
<fieldset></fieldset>
<pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
</blockquote>
Your Gnu Radio install probably is linked against an older version of UHD, h=
ence the mis-match.<br>
<br>
<br>
</div>
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


</div></blockquote></div></body></html>=

--Apple-Mail-98F215DA-3CAC-4BB1-90F1-F8B336B054AF--

--===============4390658705806423763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4390658705806423763==--
