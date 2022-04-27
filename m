Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5765511AE8
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 16:57:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E593438436C
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 10:57:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651071451; bh=ebDo+C4xICc1Xds6nokfnwLPOJLJqE1m+F731r8IWYs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TSvJlZuCxFsOMneqX6T4xo9ONx289qA6+1TVV0SjCvrSfjwo1E4xey4MoBIRpNnIX
	 xDV4tDwnHiVcwPATgfpJUQwA4ml5fQgkRc+xMT7LzUyINCabH3c2JoxwwgGryZlNqI
	 fm4lgO//9wX8XjVE1LjL8DAiUhGnSkuIxLuDbv81rO3rgZ9DULCvT5fe9pkNmVUSaI
	 gbAYcdT89ol+BbKF3kefDweqf4CrJ23Ej3v3oJGOa8ajbFtNy9TW2iH9Gl02aixhjT
	 PGoKkBXq5GMziUI9rj3x46CyvpOLX2NDFgJDdzhRv0Y4/wnh3I5AAFBCCJObbhDSzA
	 IIZxfN5M8K24w==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 24BE03845BF
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 10:56:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Es46MM0J";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id jt15so1193957qvb.13
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 07:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=RyZUIZcC2oLJEhVFwZGFqOUVV2oTWJqCVItwWiZST5w=;
        b=Es46MM0JDc2fZtuoE2ayOdEsvTiMxDTBiKr98Mgw8ULMfvTHoONC40/A9VfB98XNVQ
         EsRV3GZCM8zwW+axclvtkun3JuySOeY5D2/BnmMNFECq43iceRAROec2y6kZoUYPUfhG
         NkrlX9tuW4vi9wiKN7jt8lIuqq+Ut8UfY20GiYMevCWKyMD9Y2d+zgUhLpgp92ju/Oxo
         FtMD07OmTykV+Ekt+fgssmyE8wgtIA2Fk+Sv1purdLnLPDkxTOr9NFgTNzGq7hRdHy2R
         buL+wesJG2m/euRskBNUGKiETA7A1zxj53RRoMTs/tEu+GXI/mDJhN1w0CJfyhf3QBFX
         yPMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=RyZUIZcC2oLJEhVFwZGFqOUVV2oTWJqCVItwWiZST5w=;
        b=bdsyNcVKAZnj53c8qFkeMgp6v8iLQYkQfHgBV4MC/sMnF5pJA+JGauCa3Fs/nH7duV
         VdQdAONElulK3Og+5tiV/pdObt2lwNDp64pjQEB5PS7vOSOinYSVflOegxd3KNbc6j6e
         O+dCYgZY6srLooBTob5Oz+N+aJ7MWggj2WNeYKW0tb8FGg5Sn5Sy4jpPHkGUQpI5Zo6Z
         aca2xDVbgrSv08QJFw/u+Pg2ZLvLeG0/Kpeffw1FxQSI96/BYhBfKYIxQ1o+SbrYL0ov
         DzcxDCaklc1WOIjfwDBhD1lLRci2y3DBMYM5QjOAHPCT6QE0QmPA0T6CVW48p5JRWxlk
         uyIQ==
X-Gm-Message-State: AOAM5338M6rxMFIXtl+XDY4EWATAbrMJrYGgd1DviU2xhAmj+3JkB+bB
	++m6S99UDB3SBtNdUiBlv+47SjE10bI=
X-Google-Smtp-Source: ABdhPJxPI9VDjbBUcDP3WSM+fZtITkxOxL5ER2842raIWcboEqzdNdV2EPORUKMzQytAbn5kX9EtLw==
X-Received: by 2002:ad4:5c6e:0:b0:443:be74:bf4f with SMTP id i14-20020ad45c6e000000b00443be74bf4fmr20092144qvh.56.1651071377268;
        Wed, 27 Apr 2022 07:56:17 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c27-20020ac84e1b000000b002f3851fcac0sm819016qtw.65.2022.04.27.07.56.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 07:56:16 -0700 (PDT)
Message-ID: <e6405953-c2ca-8b73-edca-87ec9f0239a7@gmail.com>
Date: Wed, 27 Apr 2022 10:56:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <PH1P110MB166525241D59E5FC42386591B7FA9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB166525241D59E5FC42386591B7FA9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: ZR3A7JED5BGB6K67OJSQAAHXJTJVZCQF
X-Message-ID-Hash: ZR3A7JED5BGB6K67OJSQAAHXJTJVZCQF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Programmatic determine rfnoc_chdr_clk from UHD?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZR3A7JED5BGB6K67OJSQAAHXJTJVZCQF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6505753064095835743=="

This is a multi-part message in MIME format.
--===============6505753064095835743==
Content-Type: multipart/alternative;
 boundary="------------pLC7TbkrIR2XbjtHZnQEwDRH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pLC7TbkrIR2XbjtHZnQEwDRH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-27 09:53, David Raeman wrote:
>
> Hi all,
>
> Is it possible to programmatically determine the "rfnoc_chdr_clk" rate=20
> from a UHD application? More specifically, I have a custom RFNoC block=20
> clocked from rfnoc_chdr_clk, and I=E2=80=99d like to programmatically=20
> determine its clock rate from the associated custom software driver so=20
> I can convert tick rate to physical units of time. I know it varies by=20
> radio model [1], and I=E2=80=99d like the driver code to be portable ac=
ross a=20
> few models.
>
> I=E2=80=99ve poked around quite a bit in the docs and code, and I haven=
=E2=80=99t=20
> found an obvious solution in UHD 4. I guess I could dump it into a=20
> register within my RFNoC block, but I wanted to make sure I=E2=80=99m n=
ot=20
> missing something in the existing framework. Calling get_tick_rate()=20
> on the block control object just returns 0.
>
> Thanks!
>
> David
>
> [1]=20
> https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_the_cloc=
k_frequencies.3F
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Hmmm.=C2=A0 The docs do suggest that "get_tick_rate()" on the *block* obj=
ect=20
should work, since it exists in the block base class.=C2=A0 I'm not an RF=
NOC=20
programmer, so just
 =C2=A0 guessing...


--------------pLC7TbkrIR2XbjtHZnQEwDRH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-27 09:53, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB166525241D59E5FC42386591B7FA9@PH1P110MB1665.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle18
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
        <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is it possible to programmatically
          determine the "rfnoc_chdr_clk" rate from a UHD application?
          More specifically, I have a custom RFNoC block clocked from
          rfnoc_chdr_clk, and I=E2=80=99d like to programmatically determ=
ine its
          clock rate from the associated custom software driver so I can
          convert tick rate to physical units of time. I know it varies
          by radio model [1], and I=E2=80=99d like the driver code to be
          portable across a few models.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I=E2=80=99ve poked around quite a bit in t=
he docs
          and code, and I haven=E2=80=99t found an obvious solution in UH=
D 4. I
          guess I could dump it into a register within my RFNoC block,
          but I wanted to make sure I=E2=80=99m not missing something in =
the
          existing framework. Calling get_tick_rate() on the block
          control object just returns 0.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
        <p class=3D"MsoNormal">David<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">[1] <a
href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_th=
e_clock_frequencies.3F"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#What_are_the_clock_=
frequencies.3F</a><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
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
    Hmmm.=C2=A0 The docs do suggest that "get_tick_rate()" on the *block*
    object should work, since it exists in the block base class.=C2=A0 I'=
m
    not an RFNOC programmer, so just<br>
    =C2=A0 guessing...<br>
    <br>
    <br>
  </body>
</html>

--------------pLC7TbkrIR2XbjtHZnQEwDRH--

--===============6505753064095835743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6505753064095835743==--
