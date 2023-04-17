Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4926E4251
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 10:15:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35212380B09
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 04:15:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681719300; bh=YseZc5RGWyxJkFmcEZSANRFNDKHiO465SH+55hy1+Wo=;
	h=Date:To:References:From:In-Reply-To:Reply-To:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J9t9yDYl/P61tRQ0Nh5tNts3/vCS4kxmC6MtojKI7kGW99yL0toJgkrOb+IBm58Z8
	 HDCM+XRii7ZT8DkNqdvIIOB/r+DRaAsJpDMcrGOkZBQjH1yJW+FxKMB7Lb5pPCZa4s
	 yOL4O8rPN5SFOV7bFB//ObReQgj8lKZQo/2YYldTHLhlz6wHafsyY9zjHnegHUxqRq
	 RrWuvOnuZomwQL0aJG84qGJ4ZH+6Etw1RzMkq3UkNT7nm8jWcRjoHLPXQeh34vJZdY
	 LntCqToHL6zwIgNnOi4ZX4b1CbxpCJ7GYcramA023gMMaRXp6YetFhsz+E+bL8FHFl
	 K3jrnsZ9qZFCA==
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E062380A81
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 04:14:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="bTJe+pzN";
	dkim-atps=neutral
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-3f09b9ac51dso33845455e9.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 01:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1681719256; x=1684311256;
        h=in-reply-to:from:reply-to:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YTTfPlfXvSFrhz8ER5PEBSDojruS57Y2+35u0Q3wYJ8=;
        b=bTJe+pzN75xWrE7Gf7uj8e+W/5iUv1pXve4FfKsA/Vck7q1bLzQewACKbJKK+aNL24
         90QRvxFjG0FZz5Msn1HiChTt3r0gwqTHRFbotzrSb7fawex31V/0kWsFz+ag7qeMVsn+
         7VdszinRxu3JIRW6+5tFlBqkuNn/+9cOPGQ4YM2kxbIbClHLsd5CHUFZnPaaNydUV3Xt
         cC0Nxja/l78b1kPCiw4b96nUeWt4rShndxHr1CZNYSlwmtSdCtGY85F6U5xaWljAnunw
         s2OwJyqk46vQdVvqiGnrllTh2pl5CRspeEaRIMg3tQ0AcqWJ1A93O6Mma3O9N0N8MlXK
         Zu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681719256; x=1684311256;
        h=in-reply-to:from:reply-to:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YTTfPlfXvSFrhz8ER5PEBSDojruS57Y2+35u0Q3wYJ8=;
        b=Y6GOw8bJBLehX+J9LLZeviX1njBS9yCaKfY/ClnBUFkEEqAhb6pnVNj83iVuFZrZuU
         B6Yq0kYuz0YqTnw/R5AbzA/Rh3fXTJ8KRmSqZD3IvmwNcb56C3xCMsB4rAxq8qlWt0hU
         tUjcgH+9aMwPSvxBJDNwVg8SiNChhKwBpS3OJMf0Z9uszNTv2dGcmIwx4U1Kw6VoiRLf
         ONIJpGQ/N8wMjWME8zJ/eJBPL+6uS08YAnTNohTBTCpnm098AN5IjkMn0x5wb750cgjb
         gmZ/Jsi+xS3yczr8UhXb/7ED/2bo4HQ/wHDhxfYjSq9Lwab9JJ+KWx/OxC1oydHJaZYX
         EJeQ==
X-Gm-Message-State: AAQBX9dlIlUyhXNov9fTsvJrE6Qj0GJHs/nmQxpc40Lr7UCefImByQ9L
	jMIZY97j87sGvrTmToA/JqOCkPxcYWvfYT5UdbmL0Q==
X-Google-Smtp-Source: AKy350baVoQaqqIUN410eKA5FjNNs0pA+fdrudnM/yR+m6RWDFowmXaqvCEH96vWuWrVLy9H6bdjKA==
X-Received: by 2002:a05:6000:100f:b0:2d9:10e7:57e8 with SMTP id a15-20020a056000100f00b002d910e757e8mr4356820wrx.16.1681719256514;
        Mon, 17 Apr 2023 01:14:16 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3852:a900:c317:6064:27d7:e952? ([2001:9e8:3852:a900:c317:6064:27d7:e952])
        by smtp.gmail.com with ESMTPSA id f12-20020adffccc000000b002d45575643esm9851875wrs.43.2023.04.17.01.14.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 01:14:15 -0700 (PDT)
Message-ID: <8cae38a1-0ad3-9068-6b65-8b5f393a1d06@ettus.com>
Date: Mon, 17 Apr 2023 10:14:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Yu8hM_nJsK57X9mKULaNxA3ktU1VuFvAmcjSBfYHr51gCh0-g_iRiIDS2DEqd407uvQRTpvYDpGrdgSqPj7aAXldawHHt9Jy1pObZ0sSmL8=@protonmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <Yu8hM_nJsK57X9mKULaNxA3ktU1VuFvAmcjSBfYHr51gCh0-g_iRiIDS2DEqd407uvQRTpvYDpGrdgSqPj7aAXldawHHt9Jy1pObZ0sSmL8=@protonmail.com>
Message-ID-Hash: YGSGJNY5ITKGHK2DC6ER4XW5YZBWKHOZ
X-Message-ID-Hash: YGSGJNY5ITKGHK2DC6ER4XW5YZBWKHOZ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Reply-To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: UHD in Qt c++ windows
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YGSGJNY5ITKGHK2DC6ER4XW5YZBWKHOZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5632794329845238664=="

This is a multi-part message in MIME format.
--===============5632794329845238664==
Content-Type: multipart/alternative;
 boundary="------------mWFsCpYO780C6dQZFxrwn1vH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------mWFsCpYO780C6dQZFxrwn1vH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Olo,

nobody's going to be mad at you because of your English, which, by the wa=
y, is very good!=20
English isn't my first language, either :) Welcome to the USRP developer =
community.

So, let's tackle this one by one:

If you take the code from init_usrp.cpp [1] and try to compile it in your=
 project instead=20
of your own code, does it also segfault?

If not, then we need to look at your code.

If yes, then we need to look at your compilation settings. I'm not a Wind=
ows user myself,=20
but I remember (at least older) MSVC was not happy when you mix debug bui=
lds of libraries=20
and release builds of software, or vice versa.

Best regards,
Marcus

[1] https://github.com/EttusResearch/uhd/tree/UHD-4.3/host/examples/init_=
usrp

On 17.04.23 09:18, Olo via USRP-users wrote:

> Hello,
> Im trying to work with my B210 in Qt. The thing is I have added in .pro=
 file (using=20
> qmake)=C2=A0 UHD (4.3.0.0) lib and include header files to my project w=
ith boost (1.82.0)=20
> library and I cant do pretty mutch anything. I tried to list all device=
s and I cant=20
> event set uhd::device_addr_t hint; because I got exeption there (Stoppe=
d in thread 0 by:=20
> Exception at ... read access violation ...). The examples in UHD folder=
 works great.=20
> Please dont be mad at me because of my english or lack of info but I fe=
ll like Im really=20
> lost at this point.
>
> my SW:
> -windows 10
> -Qt 5.12.2
> -msvc2019 x64
> -uhd 4.3.0.0
> -boost 1.82.0
>
> Thanks for any response.
> Olo
>
> Sent with Proton Mail <https://proton.me/> secure email.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------mWFsCpYO780C6dQZFxrwn1vH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Olo,</p>
    <p>nobody's going to be mad at you because of your English, which,
      by the way, is very good! English isn't my first language, either
      :) Welcome to the USRP developer community.</p>
    <p>So, let's tackle this one by one:</p>
    <p>If you take the code from init_usrp.cpp [1] and try to compile it
      in your project instead of your own code, does it also segfault?</p=
>
    <p>If not, then we need to look at your code.</p>
    <p>If yes, then we need to look at your compilation settings. I'm
      not a Windows user myself, but I remember (at least older) MSVC
      was not happy when you mix debug builds of libraries and release
      builds of software, or vice versa. <br>
    </p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <p>[1]
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/EttusResear=
ch/uhd/tree/UHD-4.3/host/examples/init_usrp">https://github.com/EttusRese=
arch/uhd/tree/UHD-4.3/host/examples/init_usrp</a><br>
    </p>
    <p>On 17.04.23 09:18, Olo via USRP-users wrote:</p>
    <blockquote type=3D"cite"
cite=3D"mid:Yu8hM_nJsK57X9mKULaNxA3ktU1VuFvAmcjSBfYHr51gCh0-g_iRiIDS2DEqd=
407uvQRTpvYDpGrdgSqPj7aAXldawHHt9Jy1pObZ0sSmL8=3D@protonmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Hel=
lo,</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Im =
<span>trying
          to work with my B210 in Qt. The thing is I have added in .pro
          file (using qmake)=C2=A0 UHD (4.3.0.0) lib and include header f=
iles
          to my project with boost (1.82.0) library and I cant do pretty
          mutch anything. I tried to list all devices and I cant event
          set <span>uhd::device_addr_t hint; because I got exeption
            there (Stopped in thread 0 by: Exception at ... read access
            violation ...). The examples in UHD folder works great.
            Please dont be mad at me because of my english or lack of
            info but I fell like Im really lost at this point.=C2=A0</spa=
n></span></div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><sp=
an><span><br>
          </span></span></div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">my
        SW:</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">-wi=
ndows
        10</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">-Qt
        5.12.2</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">-ms=
vc2019
        x64</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">-uh=
d
        4.3.0.0</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">-bo=
ost
        1.82.0</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Tha=
nks
        for any response.</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;">Olo=
</div>
      <div style=3D"font-family: Arial, sans-serif; font-size: 14px;"><br=
>
      </div>
      <div class=3D"protonmail_signature_block" style=3D"font-family: Ari=
al,
        sans-serif; font-size: 14px;">
        <div class=3D"protonmail_signature_block-user
          protonmail_signature_block-empty"> </div>
        <div class=3D"protonmail_signature_block-proton"> Sent with <a
            target=3D"_blank" href=3D"https://proton.me/" rel=3D"noopener
            noreferrer" moz-do-not-send=3D"true">Proton Mail</a> secure
          email. </div>
      </div>
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
  </body>
</html>

--------------mWFsCpYO780C6dQZFxrwn1vH--

--===============5632794329845238664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5632794329845238664==--
