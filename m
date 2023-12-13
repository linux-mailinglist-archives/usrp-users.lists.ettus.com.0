Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D6481147F
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 15:20:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A4F138530B
	for <lists+usrp-users@lfdr.de>; Wed, 13 Dec 2023 09:20:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702477247; bh=Gc9UzgRA8l909KvJKUYdCpf2eW3rxjOM25TfVpwPyHI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XOFFgTU2YTgVPqeBfz/VOdWaIv+n8Cu7kw7Ndq7c/KKJ0ogX4wd9hiqCl7Q56Svup
	 ktrfRbjVeDuxYQ1uXjUoR2XVAbzzwOaJgv6hVnYbUdjpLenTQCiUeqr3OpoYNZewyM
	 +zX/3AYm8jVQqL2Foo9VbbgnIEIpFZB7SZD2gQkJKh970lsyrxHMc2pMkXOF3Yijjx
	 nXfzW1HorvXgxVxg3tjE6qQ7Ux8/TA3Dtr2y4odPKDC9z75vCD4R3oypYJQojYPnpm
	 HtFHktiwIkn/m5YhVo6B0PGkuIDpzGWWNoM2WB9NInWie5+bsThGl7/uI6z1Skx8Af
	 ARo866M0ZO8Mw==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D29A383ECD
	for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 09:19:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V+rhZR5R";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-425952708afso48755961cf.0
        for <usrp-users@lists.ettus.com>; Wed, 13 Dec 2023 06:19:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702477194; x=1703081994; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6IVxkTXkrOO4kW4Qhjf4D1MRQqAHuDMqKhvDKBLT6e0=;
        b=V+rhZR5RfJzATaTrlQC0la0/snQTWXA4qMQC+Ka0AHvTvmeuFuQqqBGGMT5iR+umQG
         VCHvyuPWG/JFFFUcm9+55lgHvUC4NzMZRqQcsZ+yWDigPx647IZOMjkSrh6sxGHkhBgg
         KZ3WM1IPU0Hh71/NrMc8EMmCLZa0MmHGmSLYXqpEeO5Ypk6JuIw9uTXq4M7Grvk6jMg8
         XNyRU2fkXos3H47RYdMeiPIbbI6/HeoIdjGU6u5czaQM27OQgYWCYs+RlDQyH7S0v2K2
         4Pux4L1sjev9w7oh07TvCu2D99oBNwuhDx+tZuJ8MXFX64UkxQ42+yQSJTr4RB8PrZPQ
         7+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702477194; x=1703081994;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6IVxkTXkrOO4kW4Qhjf4D1MRQqAHuDMqKhvDKBLT6e0=;
        b=UHHBLnOio4MXyBhYH/7sSyqTWRUUAwckaU8sPNjcn0v5M9FTQcABOk1DB7+egupUQO
         5zP/dVHs00+oNCQWDSaftt1hIf3UIWtkJueM/xnKLhZ7+F4F7JaxJJx1mCVv522WCnfy
         lQoOAfwk2wTydpAElkz9T+O8lfYV3tq5viLBdjWSGY0JmhSRkX/w9VszhEGdlkkKjJdq
         Umy0OP1aZJSUEOMHYijiqVaQ3rt9Gq6+Yf6m72GSxvlopl5vLV7lULQ+4M6pp8wFBK+R
         2iDHlvFdKebNYXg0z7fFG796NPEy10MN/44s4u3eOYgxDw5Us+q92fWeEV7s8RCoZTZj
         /Gdw==
X-Gm-Message-State: AOJu0Yztwjp9vmtypLaJ5azIcxm+VAOn2G/Fe8aQ2xPMlQtm4u76lvyj
	g+FRnq7SGbn0n7LfsqzZSfF6g8rwxjk=
X-Google-Smtp-Source: AGHT+IHkDLFBFQiDEhYiUR6hseti4GYK6Mu15EXtPfTPzs2Gr1tccytnBwJgqct99s6MLI6fy7o3Dw==
X-Received: by 2002:a05:622a:307:b0:423:78de:56ba with SMTP id q7-20020a05622a030700b0042378de56bamr11426428qtw.5.1702477194362;
        Wed, 13 Dec 2023 06:19:54 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id kq12-20020ac8618c000000b00423b5cf305bsm4904778qtb.65.2023.12.13.06.19.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 06:19:53 -0800 (PST)
Message-ID: <4d43fb26-a76d-434b-9892-aa2a07dbd2e4@gmail.com>
Date: Wed, 13 Dec 2023 09:19:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <JN1P275MB0535B71172798ED49E69ACF7958DA@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <JN1P275MB0535B71172798ED49E69ACF7958DA@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Message-ID-Hash: 5CRXS2VRNH2FXGZZO6LIOTLAGPR2NL2V
X-Message-ID-Hash: 5CRXS2VRNH2FXGZZO6LIOTLAGPR2NL2V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Performance data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5CRXS2VRNH2FXGZZO6LIOTLAGPR2NL2V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8623552502586921229=="

This is a multi-part message in MIME format.
--===============8623552502586921229==
Content-Type: multipart/alternative;
 boundary="------------PL7U77NhE8Sfn5krDn3DZULH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PL7U77NhE8Sfn5krDn3DZULH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/12/2023 05:33, Leon Wabeke wrote:
>
> Hi
>
> I see for the X310 RF daughterboards there are RF performance data=20
> available here:
>
> https://files.ettus.com/performance_data/
>
> And for the B210 there is similar data available here:
>
> https://kb.ettus.com/B200/B210/B200mini/B205mini#B200_.2F_B210 section=20
> RF Performance Data
>
> Does anyone perhaps know if there are similar graphs available for the=20
> TwinRX daughter boards? =C2=A0Obviously they will only contain RX secti=
ons.
>
> Thanks in advance
>
> Leon Wabeke
>
>
My recollection is that this is all there is:

https://kb.ettus.com/TwinRX#RF_Specifications


--------------PL7U77NhE8Sfn5krDn3DZULH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/12/2023 05:33, Leon Wabeke wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:JN1P275MB0535B71172798ED49E69ACF7958DA@JN1P275MB0535.ZAFP275.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I see for the X310 RF
            daughterboards there are RF performance data available here:<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><a
              href=3D"https://files.ettus.com/performance_data/"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://files.ettus.com/performance_data/</a><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">And for the B210 ther=
e
            is similar data available here:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><a
href=3D"https://kb.ettus.com/B200/B210/B200mini/B205mini#B200_.2F_B210"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://kb.ettus.com/B200/B210/B200mini/B205mini#B200_.2F_B210</a>
            section RF Performance Data<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Does anyone perhaps k=
now
            if there are similar graphs available for the TwinRX
            daughter boards? =C2=A0Obviously they will only contain RX
            sections.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks in advance<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Leon Wabeke<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <br>
      </div>
    </blockquote>
    My recollection is that this is all there is:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/TwinR=
X#RF_Specifications">https://kb.ettus.com/TwinRX#RF_Specifications</a><br=
>
    <br>
    <br>
  </body>
</html>

--------------PL7U77NhE8Sfn5krDn3DZULH--

--===============8623552502586921229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8623552502586921229==--
