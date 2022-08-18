Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD47598604
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 16:36:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7479E383BAE
	for <lists+usrp-users@lfdr.de>; Thu, 18 Aug 2022 10:36:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660833380; bh=B60hzj8JiQip0qxg2PN9rzUbHAsdjalGCuAe2H7RcYY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=pDvlfG6kJ9eKYY3NCJv9AtsUhHfEWtPQNdZH1IfJV42uV0WBZgyKtQfIN0GHSnTNq
	 v150vTJUIUydcBAXImQFPNu+Hvl65ZCgKT2E+xMwxAAPnWgcMV062Be1FVu+xZ/xvh
	 Ya+doAP7SnlGKZpLoKv6KZ8PkeJ/xe+JmklWTbiiU5dSqPurTkOjcgxu5uLiPmgfMT
	 XNADufNMbJlY/Au6WerL7pm4K/Wz2cf+7F4jK/ZsfMpQHbNXu4z51RWOLDe0cze8QA
	 sZHcZT5aW77XVIsefCYc+npT5UjY3lCZb8ryhLJ6/m0rcvwV08WdKa6iTcGKoHeKHb
	 teqRxdCI1Ov0w==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id CF5C0380AB4
	for <usrp-users@lists.ettus.com>; Thu, 18 Aug 2022 10:34:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W3BH48KX";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id c20so1219513qtw.8
        for <usrp-users@lists.ettus.com>; Thu, 18 Aug 2022 07:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=fDl0N/o5VMqWykjWjDezJyCWVDQ7jJvVNtUZc7HM9IQ=;
        b=W3BH48KXoqrdRharWx6iGjV6TK3hAslaeOytX97zSJhMEsiOZFZhR5QDS9vSFFS2MI
         hSdnC/Z0cRU/DTkIO7X6EQ06Uklc56FGh8LTpW7W6Rua/oNMo1M9PWQ5EheQP0klLy60
         o4H9uG6QR/WOmtpPMmP0o7+mKRKLPvOmBcmfB+oXm6AyD0QcXcWkwBJCY1HRvmknuQfB
         QOBx18U6DhTO1lUzi/tmuMB7/3HVMJYo8c34uZNPBiPn0acOkAihLgNz83z64ndIsiSd
         xFgr9YHZYcSy9XUap8hhy3914Cz+XHkAu6PQ8oDyBnlDy57eS8zBSiDHq3MRWDfZ5WXR
         BMfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=fDl0N/o5VMqWykjWjDezJyCWVDQ7jJvVNtUZc7HM9IQ=;
        b=rr1t77XiD1g/j7MoYusJ1aNR5xla6eMfLkt9SpnOO0TVcbfJ9Vk/JYRFgy+Xcmab93
         Zp5KqLLOlFXSk6dIBAQk8d6FX3QmGBZ+ooHpzSAMZqjLtP0Bp3erp8xSztpYqz8Acuq1
         ZNeq0kZYCGDs/XRyhwiU6Ij3WT8pLIGVlIpkQau83AaoRMVwGUiMGxM1+56UUqbKs1WZ
         4s8l01+LEXcF49FD8HTYuuUQtsa256D6aiglEoXq3jDJotiX7siHtdWIpTwxKVZGFXFf
         h9ylWYVVk0/vsU8TKCEbLTvay+LXxFuO4CddpHO1ZbG3ve7p2ci6ZcZCF1SoH0Cr9ndD
         Js9w==
X-Gm-Message-State: ACgBeo3jlt34oudt4a39rNZh5a3Unbgo4qtB1EvwZHdH8zcwFeiJQ8t1
	eiKZccc4G+7LQHJ0s04nf5POrYHn5AM=
X-Google-Smtp-Source: AA6agR5iSF1drlByUiJWAVLMg9TZq1DXRcs9xBuCalsQkHhUF+iFMrcRbQCJoN/cdwbkZ5k/uw03Cw==
X-Received: by 2002:a05:622a:198c:b0:342:fd20:239c with SMTP id u12-20020a05622a198c00b00342fd20239cmr2839757qtc.358.1660833290279;
        Thu, 18 Aug 2022 07:34:50 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id z13-20020ac87f8d000000b0031eeecd21d6sm1144008qtj.69.2022.08.18.07.34.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 07:34:49 -0700 (PDT)
Message-ID: <832adf9f-0e16-7acb-186a-22014ff33d47@gmail.com>
Date: Thu, 18 Aug 2022 10:34:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Andrea Valori <andrea.valori@innovatrieste.it>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <PA4PR01MB9066C97A442469DC24AF24B28C6D9@PA4PR01MB9066.eurprd01.prod.exchangelabs.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PA4PR01MB9066C97A442469DC24AF24B28C6D9@PA4PR01MB9066.eurprd01.prod.exchangelabs.com>
Message-ID-Hash: X2IYEEW4TCEHQCOC5XPXJWE25TJQ7UZC
X-Message-ID-Hash: X2IYEEW4TCEHQCOC5XPXJWE25TJQ7UZC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wide spectrum
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X2IYEEW4TCEHQCOC5XPXJWE25TJQ7UZC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5487481967982455813=="

This is a multi-part message in MIME format.
--===============5487481967982455813==
Content-Type: multipart/alternative;
 boundary="------------UQTIekOPOJhXuqgJGQtWTFd5"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UQTIekOPOJhXuqgJGQtWTFd5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-08-18 10:18, Andrea Valori via USRP-users wrote:
>
> Dear all,
>
> I am trying to acquire a =E2=80=9Cwide=E2=80=9D spectrum with the B200 =
and B200 mini.=20
> For wide I mean wider than the bandwidth of the board, and therefore=20
> some way of fast multiple acquisitions with =E2=80=9Cfrequency hopping=E2=
=80=9D and=20
> =E2=80=9Cstitching=E2=80=9D.
>
> Do you have a good solution to recommend? I tried soapy_power (which=20
> seems working but it is not maintained) and GNURadio (with it, I did=20
> not manage to have a =E2=80=9Cfast frequency hopping=E2=80=9D, and ther=
efore the=20
> acquisition is very time consuming, with several seconds delay at each=20
> tuning).
>
> Thanks and best regards,
>
> Andrea
>
>
How fast do you need to go?=C2=A0 The B2xx chip, the AD9361 isn't known f=
or=20
its ability to rapidly tune at timescales below about
 =C2=A0 100ms.


--------------UQTIekOPOJhXuqgJGQtWTFd5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-08-18 10:18, Andrea Valori via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PA4PR01MB9066C97A442469DC24AF24B28C6D9@PA4PR01MB9066.eurprd01=
.prod.exchangelabs.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
        <p class=3D"MsoNormal">I am trying to acquire a =E2=80=9Cwide=E2=80=
=9D spectrum
          with the B200 and B200 mini. For wide I mean wider than the
          bandwidth of the board, and therefore some way of fast
          multiple acquisitions with =E2=80=9Cfrequency hopping=E2=80=9D =
and
          =E2=80=9Cstitching=E2=80=9D.<o:p></o:p></p>
        <p class=3D"MsoNormal">Do you have a good solution to recommend? =
I
          tried soapy_power (which seems working but it is not
          maintained) and GNURadio (with it, I did not manage to have a
          =E2=80=9Cfast frequency hopping=E2=80=9D, and therefore the acq=
uisition is
          very time consuming, with several seconds delay at each
          tuning).<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks and best regards,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Andrea<o:p></o:p></p>
      </div>
      <br>
    </blockquote>
    How fast do you need to go?=C2=A0 The B2xx chip, the AD9361 isn't kno=
wn
    for its ability to rapidly tune at timescales below about<br>
    =C2=A0 100ms.<br>
    <br>
    <br>
  </body>
</html>

--------------UQTIekOPOJhXuqgJGQtWTFd5--

--===============5487481967982455813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5487481967982455813==--
