Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D49A64D650
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 07:04:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5389338438A
	for <lists+usrp-users@lfdr.de>; Thu, 15 Dec 2022 01:04:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671084288; bh=Kzenj+DAdR2YTZAxyCWzFsBzZtSCbnKmMNKpCO2w8d0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kgRTTho0X1n0tn5OEtw0WEq/kXkT/9O6LLjDwIF3U//wWG6h1Cu91VPS0QhSJTKuj
	 tQS2Shu9d9HmIHCj3pXZRqDCQudDghzBm1nevHMQYjyupDiHm6MnhTgGg7PamoQkgZ
	 15mpiXTCux19iV4bVBh1zcavGpaBxbnGvRF5QjpdyvR8y77etSVTQOoqG4GMRtuhNQ
	 WeB+rnks8ROVk39RYSHqkiyIjg5WnwRNbvtI1ex7jFfLHNb3YJ6n7hFMGlGM3GDm9o
	 tKDAFSGxL9La/irMDG5lGnfeNr7HtfoThPp05CcW3qn/Ms2/FrwstYM1PbM4g74iUN
	 y3xc+cmkyKfAA==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 2ECC4383FDA
	for <usrp-users@lists.ettus.com>; Thu, 15 Dec 2022 01:03:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="D9Kt6pV/";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id u10so1312382qvp.4
        for <usrp-users@lists.ettus.com>; Wed, 14 Dec 2022 22:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o9ITLy+TgcvoZg6/9ZDK45uiiejuGk64TycjbYb7wyE=;
        b=D9Kt6pV/DZat6IGMcvPDxwFLoTzm7X+DjcCnxFuADTPC32BY1PvvQYsJMmFkxRX4Gc
         2DAHyBZ7YHRhCa5lNPG9PgZXSugx015XK+X94PVYiAIeMaxZR9MjU7tsFGtnxS8zzijH
         E3OoiVeMVXUUXLMc6R9Jpd9rRdGcNpp7NnsrI/laWPRPphnSMGNxiQfiKBeyhSVBa9X8
         RGJESp4eU4MDShEuxhTjMtmGieTV7Mm1ucASs8384rIhr/tklM10CgsPE74jRl56F0aA
         ifx3psFPC/5uhUXBthsgNjzhmAxBJoilGvrnrVWUCRgyNjujeiS64VMntsx0cU6TMHwT
         ewNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o9ITLy+TgcvoZg6/9ZDK45uiiejuGk64TycjbYb7wyE=;
        b=5wzjbTJPyJqKD6UdwCdbN4QylZuGYYbJXOB5nJuz3iHIAtfXC8Vhnhx/yVg6UhvSHm
         Yh46y/MjW8dE68ZEzwR3hNeysxKnVDrIY4Z198/taQ8y7AI6s35GBYRHB1gFPEL3sgEW
         IuIRl+oZR+pXbbstqR0cyexl5bBVw/dp1xRxEjNgcoKGrVoSOvZrV69G9lPUI5wmteMa
         rU0+bEUF+SplO58VZW5ZVhU+h506hvldB0uV/yJONYNXuWXTambEJRG6TkTSq3SwQI7w
         dwHLKqtK02Hf1ziRRP3CyFtljN9OBf3aegmGQyAt8UZVkjCSK7DCBHjyq9sYxNTzYeNC
         y6IA==
X-Gm-Message-State: ANoB5pmpLg3OegthP81oRx6Po5xjxxXAZDHqPZ+AmJCx+y22K2zg5syo
	IjdxXq9CaTN3221xpA26ODsZvACZSgQ7eA==
X-Google-Smtp-Source: AA0mqf7TsQVDgMjBgSHZ+kvEYceLkRsDd+WmSJJ59fgXMZyrg1kYpqMwTRvuLG+SyNag7c7mxwd0PA==
X-Received: by 2002:a05:6214:2e12:b0:4c7:2d0c:e984 with SMTP id mx18-20020a0562142e1200b004c72d0ce984mr35784059qvb.23.1671084228263;
        Wed, 14 Dec 2022 22:03:48 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-06-174-88-54-67.dsl.bell.ca. [174.88.54.67])
        by smtp.googlemail.com with ESMTPSA id w4-20020a05620a424400b006a6ebde4799sm11518822qko.90.2022.12.14.22.03.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 22:03:47 -0800 (PST)
Message-ID: <29cb6221-bf51-64ea-fb99-c76fa25df0f9@gmail.com>
Date: Thu, 15 Dec 2022 01:03:47 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MAXPR01MB3565817912C65BE1ECCCD83AD6E19@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MAXPR01MB3565817912C65BE1ECCCD83AD6E19@MAXPR01MB3565.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: COJ7GATO6WED3OWEQFDB4S5GC75UWH6K
X-Message-ID-Hash: COJ7GATO6WED3OWEQFDB4S5GC75UWH6K
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Daughter board details required
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/COJ7GATO6WED3OWEQFDB4S5GC75UWH6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7335906368497251646=="

This is a multi-part message in MIME format.
--===============7335906368497251646==
Content-Type: multipart/alternative;
 boundary="------------dWqdwWC06ihyIS9i1dbQ4U0D"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dWqdwWC06ihyIS9i1dbQ4U0D
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/12/2022 00:58, Sivanesh Kumar K wrote:
> Hi All,
>
> I want to know what are the daughter board supporting usrp B210.
>
> Regards,
> Sivaneshkumar K
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including=20
> any attachments, is for the sole use of the intended recipient(s) and=20
> may contain proprietary confidential or privileged information or=20
> otherwise be protected by law. Any unauthorized review, use,=20
> disclosure or distribution is prohibited. If you are not the intended=20
> recipient, please notify the sender and destroy all copies and the=20
> original message.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The USRP B2xx series don't use daughterboards.=C2=A0 They're integrated u=
nits=20
on a single PCB.=C2=A0=C2=A0=C2=A0 The use the ADI
 =C2=A0 AD936x series integrated RF front end (RFFE) chips.


--------------dWqdwWC06ihyIS9i1dbQ4U0D
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/12/2022 00:58, Sivanesh Kumar K
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MAXPR01MB3565817912C65BE1ECCCD83AD6E19@MAXPR01MB3565.INDPRD01=
.PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);">Hi All,</span></d=
iv>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"><br>
        </span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);">I want to know
          what are the daughter board supporting usrp B210.</span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);"><br>
        </span></div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);">Regards,</span></=
div>
      <div class=3D"elementToProof"><span style=3D"font-family: Calibri,
          Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0,
          0, 0); background-color: rgb(255, 255, 255);">Sivaneshkumar K<b=
r>
        </span></div>
      Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message,
      including any attachments, is for the sole use of the intended
      recipient(s) and may contain proprietary confidential or
      privileged information or otherwise be protected by law. Any
      unauthorized review, use, disclosure or distribution is
      prohibited. If you are not the intended recipient, please notify
      the sender and destroy all copies and the original message.
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The USRP B2xx series don't use daughterboards.=C2=A0 They're integrat=
ed
    units on a single PCB.=C2=A0=C2=A0=C2=A0 The use the ADI<br>
    =C2=A0 AD936x series integrated RF front end (RFFE) chips.<br>
    <br>
    <br>
  </body>
</html>

--------------dWqdwWC06ihyIS9i1dbQ4U0D--

--===============7335906368497251646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7335906368497251646==--
