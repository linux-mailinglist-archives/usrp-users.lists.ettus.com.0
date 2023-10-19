Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4177CFA03
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 14:56:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D746385B8D
	for <lists+usrp-users@lfdr.de>; Thu, 19 Oct 2023 08:56:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697720168; bh=LJ23q8xsZvAnv5+q82zLAU6qVoQpKj3ig3UBTDcE4DI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=VNHAF/Cwji1jX2ZT+giPEoPN+emMwmDCYs6BSacICDafcj1/YEa23+/oIaN2YGGou
	 SN/yZ9a7kdrtVPEm3nLTjZk68LxPGzRHR6QueMucrdWxMmecBc4VlSP/iuRyX7Ry8D
	 zZ3cW1580KMnq6LfellhkeZ6uTTgkJK69ZAHkvLr0qVRJDcEl/sq4mrQqbZVHcwGOc
	 oawOqsGnUmXqmk85Gq9aNR0+u+Wu2qIyk6OnOidwhtdwFhS74PXADpk3TS2F5TyIaB
	 v8AmPlbOm5RtXvyiZn6R2LLcNFnXOdg/4DfTD7GKEMYfefPPpms/NtzPphGng/ucKv
	 xfzCJWJYyRX8Q==
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by mm2.emwd.com (Postfix) with ESMTPS id DAFBE3851DA
	for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 08:55:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="XckeP1Ua";
	dkim-atps=neutral
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4084095722aso11908915e9.1
        for <usrp-users@lists.ettus.com>; Thu, 19 Oct 2023 05:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1697720119; x=1698324919; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+0ofQQwR2CwVi7g9ss5Ysx3WwUAMd0xfWHjoaBf3Idk=;
        b=XckeP1UazkiMlAM4AP6/I4PQvw/StriYE+r/1BaV1qlCXPlj/EnXYW8F2QXaz+VGTa
         4dAFJvG69zlnSsWyv0MhQjeywiIvu5O/aqpY5EI4b1vN9fT7bK1t6YslQDCVzQGK4UcS
         gA+vK4COFlOgFQn6LkgCc7jbm2MPsHB0myJbzfB4Hg3H3DxFfDHaiu+RAepMapsDR56y
         herdOzUIQlTFE9SgTi2TWngYRtooHa72KNNca12+me/3GtZNQKLrELHAshJKcSrzjdCy
         NOfpCeg+P/9AJkhNSfO80qRky+hVySE37gTC4YYaeeV1iIYwMdQVUfajz/nwBjvT03Xu
         qzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697720119; x=1698324919;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+0ofQQwR2CwVi7g9ss5Ysx3WwUAMd0xfWHjoaBf3Idk=;
        b=v3UVts6K/xuElRCNGCsNARHpJcYsESL/ycrW7K1d8XhuFbXQndU1em7Fw/ow3JyE11
         zXcK/K3fgPir/PVSnWWciwC2soHHXgSKjeIBXSwN728MG1bbJ0OQk8/1XMU5RU1tBaat
         IrDaEbfJV49Jg1LWuaRvLt/+oHhrc9++QKLtyFvCQsswFAgQcWSRZx8OK6ypNyLXKaQK
         LjSoc4KFHt2NQR4vLNuuekALbajYhed9rcHZLgAC6iB4zUSdHRv93bg3G/tzTqX6ionx
         aNUKb1P8iZHqXuj4bSWram8NbgMjVuZQEWtTsSCAj53HdviqTuuU/xsPVUv4XSI3Z/iM
         ULUQ==
X-Gm-Message-State: AOJu0YwmjiCFfS3bTdauTi1BrSEjmVt4H8l4LjIepWrEs97NkBilLH32
	Bm+RjC7C23kZ61O4M9KU0rcheDEWMFA2kCoXFBNULQ==
X-Google-Smtp-Source: AGHT+IE75KdF18w/C5r7iFWNVV9fL7fhGNWWFj1s6yQKCqM5XsWZEL+DnNqCPi8VEXECY5jqVhudwA==
X-Received: by 2002:a05:6000:90b:b0:32d:8b21:40fc with SMTP id cw11-20020a056000090b00b0032d8b2140fcmr1613343wrb.9.1697720119149;
        Thu, 19 Oct 2023 05:55:19 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3857:9800:10fc:1619:bea3:90d1? ([2001:9e8:3857:9800:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id b16-20020a056000055000b00326f5d0ce0asm4474179wrf.21.2023.10.19.05.55.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 05:55:18 -0700 (PDT)
Message-ID: <d096a93a-c827-41d6-b561-c1ebc21f8760@ettus.com>
Date: Thu, 19 Oct 2023 14:55:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com, pablo.mico@inetum.com
References: <AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05.prod.outlook.com>
Message-ID-Hash: YEIOAL3OMWUPKQD3LIP54DDE23OLWF3J
X-Message-ID-Hash: YEIOAL3OMWUPKQD3LIP54DDE23OLWF3J
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Inetum company (Spain) technical support: Ettus USRP X440 & USRP X410 SDRs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEIOAL3OMWUPKQD3LIP54DDE23OLWF3J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2505657893820024669=="

This is a multi-part message in MIME format.
--===============2505657893820024669==
Content-Type: multipart/alternative;
 boundary="------------0tuqAUcowjeeIh7KJn8lCOq0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0tuqAUcowjeeIh7KJn8lCOq0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear Pablo,

welcome to the usrp-users community! Let's quickly answer your questions =
in-text:

On 19.10.23 12:03, Mico-Soler Pablo via USRP-users wrote:
> Regarding X440, ETTUS USRP X440 (8 TX AND 8 RX, 1.6 GHZ BW, 30 MHZ TO 4=
 GHZ SDR, GPSDO):
>
>  1. If each channel has a bandwidth up 1.6GHz, why the total instantane=
ous bandwidth is
>     3.2GHz if it has 8 channels (1.6GHz*8channels > 3.2GHz)?
>
The digital architecture just doesn't allow us to do that. The accumulate=
d internal data=20
rate becomes challenging. (Just to illustrate: 1.6 GS/s =C2=B7 8 =3D 12.8=
 GS/s, at 16 bit per I=20
and Q, so 32 bit per sample, that'd be 409.6 Gbit/s; you couldn't even ge=
t that into or=20
out of the device using the interfaces supplied)

>  1. Regarding =E2=80=9C/IF-Bandwidth combination limitations apply due =
to Nyquist zones and gaps=E2=80=9D/,
>      1. If we tune CH1 at 830MHz, are we going to be able to detect all=
 the spectrum
>         from 30-1630MHz?
>
Yes, but beware that you need to supply your own front-end with the X440!=
 Otherwise,=20
you'll observe 30=E2=80=931630 MHz, superimposed with what's 1630=E2=80=93=
3230 MHz and up until the (not=20
extremely sharp) ca 4GHz cut off, what's in 3230=E2=80=934830 MHz, too.
>
>      1. If we tune CH2 at 2430MHz, are we going to be able to detect al=
l the spectrum
>         from 1630-3230MHz?
>      2. If we tune CH3 at 4000MHz, are we going to be able to detect al=
l the spectrum
>         from 3230-4000MHz?
>
Yes! Remember, though, that you're seeing all these bands as aliased into=
 baseband (see=20
above), so you need to sufficiently filter your analog signal, and that w=
ill have some=20
transition bandwidth.

>  1. Which the real maximum channel BW?
>
1600 MHz
> Is it possible to decrease the minimum frequency down to 20MHz?

We don't have measurements for that. The analog signal processing of what=
 is fed into the=20
ADCs has a lower cutoff, and we qualified the product down to 30 MHz, not=
 20 MHz. That=20
doesn't mean you won't see what's at 20 MHz, but that we can't make any g=
uarantees about that.

Also, broadband matching is hard, so I'd confer with whatever team suppli=
es that input on=20
how far down they really need to go.

>  1. Is it possible to increase the maximum frequency up to 6GHz?
>
Same answer as above.
> Could you provide the USRP X440 datasheet to see their RF/Digital perfo=
rmance parameters?
https://www.ni.com/docs/de-DE/bundle/ettus-usrp-x440-specs/page/specs.htm=
l
>
>
>     Regarding X410, ETTUS USRP X410 (4 TX/RX Channels, 400 MHz BW, Zynq=
 US+ RFSoC ZU28DR)
>
>  7. Is it possible to configure RX0 as an extra receiver channel, so in=
stead of having 4
>     receiving channels [RF0 (RX1), RF1 (RX1)] & [RF0 (RX1), RF1 (RX1)] =
(Fig 1), we could
>     have 8 receiving channels (Fig 2)?
>
Not really, no. https://files.ettus.com/manual/page_zbx.html Not enough A=
DCs!
> If previous question is not possible, do you have in your roadmap to de=
velop an X410=20
> version with 8 channels?

I'll have to pass on that, as product strategy isn't what I'm involved wi=
th. You'd=20
probably be better served with 2=C3=97 X410, from a computational point o=
f view, probably.

Best regards,

Marcus


--------------0tuqAUcowjeeIh7KJn8lCOq0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Dear Pablo,</p>
    <p>welcome to the usrp-users community! Let's quickly answer your
      questions in-text:<br>
    </p>
    <div class=3D"moz-cite-prefix">On 19.10.23 12:03, Mico-Soler Pablo vi=
a
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:"Source Sans Pro";
	panose-1:2 11 5 3 3 4 3 2 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}h2
	{mso-style-priority:9;
	mso-style-link:"T=C3=ADtulo 2 Car";
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:18.0pt;
	font-family:"Calibri",sans-serif;}p.MsoListParagraph, li.MsoListParagrap=
h, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.Ttulo2Car
	{mso-style-name:"T=C3=ADtulo 2 Car";
	mso-style-priority:9;
	mso-style-link:"T=C3=ADtulo 2";
	font-family:"Calibri",sans-serif;
	mso-ligatures:none;
	mso-fareast-language:ES;
	font-weight:bold;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1"><span
style=3D"font-size:11.0pt;mso-fareast-language:EN-US;font-weight:normal"
          lang=3D"EN-US">Regarding
        </span><span style=3D"font-size:11.0pt;mso-fareast-language:EN-US=
"
          lang=3D"EN-US">X440, ETTUS USRP X440 (8 TX AND 8 RX, 1.6 GHZ BW=
,
          30 MHZ TO 4 GHZ SDR, GPSDO):<o:p></o:p></span>
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l1 level1 lfo1"><span
              lang=3D"EN-US">If each channel has a bandwidth up 1.6GHz,
              why the total instantaneous bandwidth is 3.2GHz if it has
              8 channels (1.6GHz*8channels &gt; 3.2GHz)?</span></li>
        </ol>
      </div>
    </blockquote>
    <p>The digital architecture just doesn't allow us to do that. The
      accumulated internal data rate becomes challenging. (Just to
      illustrate: 1.6 GS/s =C2=B7 8 =3D 12.8 GS/s, at 16 bit per I and Q,=
 so 32
      bit per sample, that'd be 409.6 Gbit/s; you couldn't even get that
      into or out of the device using the interfaces supplied)<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l1 level1 lfo1"><span
              lang=3D"EN-US">Regarding =E2=80=9C<i>IF-Bandwidth combinati=
on
                limitations apply due to Nyquist zones and gaps=E2=80=9D<=
/i>,<o:p></o:p></span></li>
          <ol style=3D"margin-top:0cm" type=3D"a" start=3D"1">
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l1 level2 lfo1"><span
                lang=3D"EN-US">If we tune CH1 at 830MHz, are we going to
                be able to detect all the spectrum from 30-1630MHz?</span=
></li>
          </ol>
        </ol>
      </div>
    </blockquote>
    Yes, but beware that you need to supply your own front-end with the
    X440! Otherwise, you'll observe 30=E2=80=931630 MHz, superimposed wit=
h
    what's 1630=E2=80=933230 MHz and up until the (not extremely sharp) c=
a 4GHz
    cut off, what's in 3230=E2=80=934830 MHz, too. <br>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <ol style=3D"margin-top:0cm" type=3D"a" start=3D"1">
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l1 level2 lfo1"><span
                lang=3D"EN-US">If we tune CH2 at 2430MHz, are we going to
                be able to detect all the spectrum from 1630-3230MHz?<o:p=
></o:p></span></li>
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l1 level2 lfo1"><span
                lang=3D"EN-US">If we tune CH3 at 4000MHz, are we going to
                be able to detect all the spectrum from 3230-4000MHz?</sp=
an></li>
          </ol>
        </ol>
      </div>
    </blockquote>
    <p>Yes! Remember, though, that you're seeing all these bands as
      aliased into baseband (see above), so you need to sufficiently
      filter your analog signal, and that will have some transition
      bandwidth.<br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l1 level1 lfo1"><span
              lang=3D"EN-US">Which the real maximum channel BW?</span></l=
i>
        </ol>
      </div>
    </blockquote>
    1600 MHz<br>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1"><span lang=3D"EN-US">Is it possible to
          decrease the minimum frequency down to 20MHz?</span></div>
    </blockquote>
    <p>We don't have measurements for that. The analog signal processing
      of what is fed into the ADCs has a lower cutoff, and we qualified
      the product down to 30 MHz, not 20 MHz. That doesn't mean you
      won't see what's at 20 MHz, but that we can't make any guarantees
      about that.</p>
    <p>Also, broadband matching is hard, so I'd confer with whatever
      team supplies that input on how far down they really need to go.<br=
>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1"><span lang=3D"EN-US"><o:p></o:p></span>
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"1">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l1 level1 lfo1"><span
              lang=3D"EN-US">Is it possible to increase the maximum
              frequency up to 6GHz?</span></li>
        </ol>
      </div>
    </blockquote>
    Same answer as above.<br>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1"><span lang=3D"EN-US">Could you provide =
the
          USRP X440 datasheet to see their RF/Digital performance
          parameters?<o:p></o:p></span>
      </div>
    </blockquote>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.ni.com/docs/de-DE/=
bundle/ettus-usrp-x440-specs/page/specs.html">https://www.ni.com/docs/de-=
DE/bundle/ettus-usrp-x440-specs/page/specs.html</a><br>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoListParagraph"><span lang=3D"EN-US"><o:p>=C2=A0</o=
:p></span></p>
        <h2
style=3D"mso-margin-top-alt:0cm;margin-right:0cm;margin-bottom:11.25pt;ma=
rgin-left:0cm">
          <span
style=3D"font-size:11.0pt;mso-fareast-language:EN-US;font-weight:normal"
            lang=3D"EN-US">Regarding
          </span><span
            style=3D"font-size:11.0pt;mso-fareast-language:EN-US"
            lang=3D"EN-US">X410, ETTUS USRP X410 (4 TX/RX Channels, 400
            MHz BW, Zynq US+ RFSoC ZU28DR)<o:p></o:p></span></h2>
        <ol style=3D"margin-top:0cm" type=3D"1" start=3D"7">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l1 level1 lfo1"><span
style=3D"font-family:&quot;Source Sans Pro&quot;,sans-serif;color:#333333=
"
              lang=3D"EN-US">Is it possible to configure RX0 as an extra
              receiver channel, so instead of having 4 receiving
              channels
              <span style=3D"background:yellow;mso-highlight:yellow">[RF0
                (RX1), RF1 (RX1)]</span> &amp;
              <span style=3D"background:lime;mso-highlight:lime">[RF0
                (RX1), RF1 (RX1)]</span> (Fig 1), we could have 8
              receiving channels (Fig 2)?</span></li>
        </ol>
      </div>
    </blockquote>
    Not really, no. <a class=3D"moz-txt-link-freetext" href=3D"https://fi=
les.ettus.com/manual/page_zbx.html">https://files.ettus.com/manual/page_z=
bx.html</a> Not
    enough ADCs!<br>
    <blockquote type=3D"cite"
cite=3D"mid:AS8PR05MB8849BEE66963EFD03ED9CD3EEDD4A@AS8PR05MB8849.eurprd05=
.prod.outlook.com">
      <div class=3D"WordSection1"><span
style=3D"font-family:&quot;Source Sans Pro&quot;,sans-serif;color:#333333=
"
          lang=3D"EN-US">If previous question is not possible, do you hav=
e
          in your roadmap to develop an X410 version with 8 channels?</sp=
an><span
          lang=3D"EN-US"><o:p></o:p></span>
      </div>
    </blockquote>
    <p>I'll have to pass on that, as product strategy isn't what I'm
      involved with. You'd probably be better served with 2=C3=97 X410, f=
rom
      a computational point of view, probably.</p>
    <p>Best regards,</p>
    <p>Marcus<br>
    </p>
    <br>
  </body>
</html>

--------------0tuqAUcowjeeIh7KJn8lCOq0--

--===============2505657893820024669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2505657893820024669==--
