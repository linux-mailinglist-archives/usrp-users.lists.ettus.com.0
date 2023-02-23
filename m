Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA146A0D05
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 16:34:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEC363809B1
	for <lists+usrp-users@lfdr.de>; Thu, 23 Feb 2023 10:34:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677166467; bh=j214E9nojTeWe5tvXAprqy+agq/wQmz0klptw6UxQys=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WPlbVlpFHeS9aoUnc25Q74WC5M4r6GQW5LgcyxpKxh97vd3w3Ap4c3CzDEdjXrd1Z
	 ZDz/YVyVeHRZ2aWnojm1vDl0A1SAwmxzR8vjNOdffiqifJhiwEp6c3cFodzh15HfKW
	 k/xgCV0q7GQOCd8pKKzA767QtNGSdaFg2H9ueKbIL88UZ7HwY1wvlhI2bR2TCovEXj
	 6h5wzCmPSZBPZ3AbbcPDvvzKvcD4RpE7vKnbdnZDD4ogyAjqe+leqU/Ygm3BaqAihV
	 iwdBdNlOVPzY8gE6vUFDnn6oKM5YQ7RjC5IgzOJFd707McLcBAMSavB2nif71Aubk7
	 ufNpFeiDVrQpg==
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id DC60C384018
	for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 10:34:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PxT65gY4";
	dkim-atps=neutral
Received: by mail-qt1-f171.google.com with SMTP id w23so11166568qtn.6
        for <usrp-users@lists.ettus.com>; Thu, 23 Feb 2023 07:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8EFfdyZ0qipvyhqWqDnkuiLxn1GHjBI7HUIxPWI88Yo=;
        b=PxT65gY4NDC7KD/p6LDND1357rR1Ie86exfyS7qE4mDt/cP0MG13Qe89tD1PysW5G9
         KQW0zlixA5IdzZyoWVmN/hNzUWxKbzW3u0btB8jvJB85tiJ8tQTiXBMTth+ja/aOBvRN
         XiHNfnu5O7lMSwWWCK4jLhw+AXORjeDwG/11hwJb8C2sdFXnPfuci5B9YWa7RU6BHL6X
         EthTvlckdS7J/Y1X0MUtAsUcTYMyWuU8TbeBJAsu4Ah/zGxUqXP+vFmL5YMGOoBrm+q/
         j1tLDbQeRzOUHfkwp4OVD3JzAY9SbSXvTqFbzAWMkLbAR5qSzEYU17XTPCNQTR/znhci
         v9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8EFfdyZ0qipvyhqWqDnkuiLxn1GHjBI7HUIxPWI88Yo=;
        b=V/H9z17Ad7HQ8oHMrPMTpOowbTWIjB6932b3Dv5mc/vBWfL7/Ikvewa+ldKEmLthRZ
         SZgSrFARes9fjFrPLmTXWrIPFRwz9bqL61qOE1lemn2uazPZku6D7YfGINovYHowdq0H
         GOAncBOOVOv2TJJATsctBYWNtChuh5FnAr7ngsB0cQ61hKwg5i46D/R6mrpLLjXWj51y
         jf0WnK6ewslsbPqHMHBjF+ppjdfEjAFDsOPwhRS97ivbHXfw3or9shMw4sTyTmpDnpNI
         nqxDKQwea2ST3Iz3xPRPJqaiKGlRQDm5X7apICWcIaCjkzyic1NfpG7wnNTq8LRo2qBU
         aDMQ==
X-Gm-Message-State: AO0yUKWhGPO6ROukbYojrvVX7tazfToTpGWLPBIYa9nkRm4rqtm3fVp0
	dA5AeYVQOntsLE8fkvSeH3rJVN2KVdw=
X-Google-Smtp-Source: AK7set+jHq/kFD11Mzv4RsLMS2oP6WGLsdeG9jHZGcktsUD847mVZN/3cfuz/OlYyj0Uq6c8e4APZg==
X-Received: by 2002:ac8:58c3:0:b0:3bc:ff12:e5c1 with SMTP id u3-20020ac858c3000000b003bcff12e5c1mr7484536qta.33.1677166459952;
        Thu, 23 Feb 2023 07:34:19 -0800 (PST)
Received: from [192.168.2.167] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id d65-20020a37b444000000b0073b3316bbd0sm6006996qkf.29.2023.02.23.07.34.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 07:34:19 -0800 (PST)
Message-ID: <b3cda3ac-b1c2-5788-1fe7-14e06d710c3b@gmail.com>
Date: Thu, 23 Feb 2023 10:34:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
Message-ID-Hash: EHH4GBWXH2KNNLDNRCYGVHSJR3TSZYBT
X-Message-ID-Hash: EHH4GBWXH2KNNLDNRCYGVHSJR3TSZYBT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd - read IQ samples without discontinuities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EHH4GBWXH2KNNLDNRCYGVHSJR3TSZYBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4841267601098020412=="

This is a multi-part message in MIME format.
--===============4841267601098020412==
Content-Type: multipart/alternative;
 boundary="------------xliuevXNtp3FZ3r0zdiIGkW0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xliuevXNtp3FZ3r0zdiIGkW0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/02/2023 04:27, Peter Featherstone (XENINT) wrote:
>
> Hi,
>
> I=E2=80=99m trying to read samples from my B210 as fast as possible wit=
hout=20
> gaps in the IQ.
>
> I=E2=80=99m using a sample rate of 1e6 Hz and read 5s of IQ.
>
> As an experiment, I read 16K samples at a time in a loop.
>
> At each iteration I sleep for 5 seconds.
>
> I was expecting to see loads of ERROR_CODE_OVERFLOW error codes, but I=20
> don=E2=80=99t.
>
> Is it the case that that error is only =E2=80=9Cthrown=E2=80=9D when yo=
u can=E2=80=99t write=20
> to a buffer quick enough, but not necessarily if you=E2=80=99re waiting=
 too=20
> long between successive reads in a continuous RX stream?
>
> Many thanks,
>
> *Peter*
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
If you want to capture samples discontinuously, this is not the way to=20
do it.

Use "NUM_SAMPS_AND_MORE"=C2=A0 in creating your stream:

https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html

This particular stream mode tells the device to send you the number of=20
samples requested and to expect a future
 =C2=A0 stream command to fetch more samples.


--------------xliuevXNtp3FZ3r0zdiIGkW0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/02/2023 04:27, Peter Featherston=
e
      (XENINT) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02=
.prod.outlook.com">
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m trying to read samples from my=
 B210 as
          fast as possible without gaps in the IQ.<o:p></o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99m using a sample rate of 1e6 Hz =
and read
          5s of IQ.<o:p></o:p></p>
        <p class=3D"MsoNormal">As an experiment, I read 16K samples at a
          time in a loop.<o:p></o:p></p>
        <p class=3D"MsoNormal">At each iteration I sleep for 5 seconds.<o=
:p></o:p></p>
        <p class=3D"MsoNormal">I was expecting to see loads of
          ERROR_CODE_OVERFLOW error codes, but I don=E2=80=99t.<o:p></o:p=
></p>
        <p class=3D"MsoNormal">Is it the case that that error is only
          =E2=80=9Cthrown=E2=80=9D when you can=E2=80=99t write to a buff=
er quick enough, but
          not necessarily if you=E2=80=99re waiting too long between succ=
essive
          reads in a continuous RX stream?<o:p></o:p></p>
        <p class=3D"MsoNormal">Many thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><b><span
              style=3D"font-size:10.0pt;color:#0D0D0D;mso-fareast-languag=
e:EN-GB">Peter</span></b><o:p></o:p></p>
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
    If you want to capture samples discontinuously, this is not the way
    to do it.<br>
    <br>
    Use "NUM_SAMPS_AND_MORE"=C2=A0 in creating your stream:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/structuhd_1_1stream__cmd__t.html">https://files.ettus.com/manual/str=
uctuhd_1_1stream__cmd__t.html</a><br>
    <br>
    This particular stream mode tells the device to send you the number
    of samples requested and to expect a future<br>
    =C2=A0 stream command to fetch more samples.<br>
    <br>
    <br>
  </body>
</html>

--------------xliuevXNtp3FZ3r0zdiIGkW0--

--===============4841267601098020412==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4841267601098020412==--
