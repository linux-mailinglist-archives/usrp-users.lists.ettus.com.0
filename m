Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E08BD7923C8
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 17:06:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A0A2F38516E
	for <lists+usrp-users@lfdr.de>; Tue,  5 Sep 2023 11:06:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693926408; bh=0d3pIggIcUUOzg7O2APdppye0zguT5XpTqDFFG6QClc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vLdJHkdiUv6CqWiHcNvLR0C9syLHdoTWuGR6uobHVJAQFp80qRSLFykjcxedY1tf7
	 VltirmAWnnZ1C6nc+hMGECM97ZztC6otEjM8Ghtw8JL6qMnogeiSh9RMWHA06x35Wh
	 I+tFEVCFjNbG5E3QU/W9bAPLHuD+opoMtlsaepOvKo9hsVcDbAy5HQhwsNnzAo2XzM
	 9LhK0asJjNqsbFgzkw288yKz5rS6mUlBE1SG9YaYApBszovmvVNlIJHP2l89JmRkrH
	 vf+ryfglEBoQIfcgSW5KkxPw9tP+kDbML6Vf/dl4w5kKh66FSBfPzybusSfMck+D2a
	 HZ8L/JlfpwpKg==
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id DD10D384FE0
	for <usrp-users@lists.ettus.com>; Tue,  5 Sep 2023 11:06:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="K9+lVr12";
	dkim-atps=neutral
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6befdad890eso2063083a34.3
        for <usrp-users@lists.ettus.com>; Tue, 05 Sep 2023 08:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693926373; x=1694531173; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+gBwoYzy9MoDDbb0UDAkOxVHL0v75XncvrF/a36jscI=;
        b=K9+lVr12GZB6u5Neig5+9lpCf2n/UkkVUIsvw97DQmGKg+bWWb3Ks3GW+ha0zWFj8X
         QW2XsDCXWu88+NWi1AYCJ/3nmsS3bX/9T+WbxCC2WXphz03doqven2S0gCDQqAAnqUSH
         7Oytm4woW0pynLYS8QwdDdfJoKoSS/qEvT1S/4zsw6MnUWlseu/PRs0B5njb3kpht9ae
         /9IBlXeOPBI+eO+RPUWdtf/Cup2upV/AoIkrQjT/urO+XLdlebn3uXtjEHq6Vsea84g8
         pOqpEHmslS8A84iDYHRSX9sWfM7yd6gK5rwwJovWPVoMrfy7v5KmfNy1AqmUhdR8Yl1R
         d5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693926373; x=1694531173;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+gBwoYzy9MoDDbb0UDAkOxVHL0v75XncvrF/a36jscI=;
        b=JeMPQQnLhc8tCdhxPVqBtI1954928N82Lo5/iJTxxdBitEKLo0T0Z3xGGPk01OQwDO
         JmESGhg0UlczvMyB/Ic+kvmcmafd6aCVoWNgvB8BhTaCNmFZ/j88DojFpBH6AdZpH8hx
         bH7RwJaolAZkVruoGxRt3zbjPQVvP5FnJ2e8ERBnKGcKyXwKgNDtpsyiSOh8mJEIy9Wv
         rqZiZ4gj9zakmnxqz31MRZYqqP3ESaScv05qumaZ7N6s3b5wryddElZ+aEdF7IJx/s1+
         JebVHqrba6X27mRpbtatpg4t6ZukscQa5bkyDZDGB+uqtYRMaIOzuA8m9zPCmYUWszAa
         S7Kg==
X-Gm-Message-State: AOJu0YygE75X2h3M/80qc6SfYVPfxwsEfNyUTG8bp4PAPNOboznXwACI
	lGtjmEbpfL6ncE7zY9Jbjaa5PxftEvyiBA==
X-Google-Smtp-Source: AGHT+IHzqXIQmDqJDaoRklMEC+MrS/d4rnAyi9sFr1WiYaPcQ8s6sqV3/rJ2csQ6WUcVtNDBiTTpUQ==
X-Received: by 2002:a05:6830:18cc:b0:6b2:91c9:8e1e with SMTP id v12-20020a05683018cc00b006b291c98e1emr14548410ote.2.1693926373002;
        Tue, 05 Sep 2023 08:06:13 -0700 (PDT)
Received: from [192.168.2.217] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id v23-20020ae9e317000000b00767c961eb47sm4135930qkf.43.2023.09.05.08.06.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 08:06:12 -0700 (PDT)
Message-ID: <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com>
Date: Tue, 5 Sep 2023 11:06:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
Message-ID-Hash: QTXDAXJAY2ZRNBKVMQP47PN4C4Z5TWGX
X-Message-ID-Hash: QTXDAXJAY2ZRNBKVMQP47PN4C4Z5TWGX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QTXDAXJAY2ZRNBKVMQP47PN4C4Z5TWGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3062266496200939292=="

This is a multi-part message in MIME format.
--===============3062266496200939292==
Content-Type: multipart/alternative;
 boundary="------------bD70D0FlNl9CYIZxPIxg3juY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bD70D0FlNl9CYIZxPIxg3juY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 05/09/2023 04:38, Bachmaier, Luca wrote:
>
> Hello Marcus,
>
> Thank you for your detailed explanation. I was able to fix the problem=20
> now: I updated GNU Radio from 3.10.5 (installed over apt) to 3.10.7=20
> (installed from source). With the newer version the FFT block now=20
> correctly displays a noise floor.
>
> So far so good, the FFT resolution is still low as I cannot set the=20
> size higher than 256 (Error =E2=80=9Csamples per package must not be sm=
aller=20
> than atomic item size=E2=80=9D). As far as I understood, the size shoul=
d be=20
> able to go as high as 2048 when using 10Gbit streaming.
>
> My current configuration should enable that:
>
> -MTU on my interface is set to 9000
>
> -Parameter spp of RFNoC RX Radio is set to 2048
>
> -Current FPGA image is of XG type
>
> In case it=E2=80=99s helpful, here=E2=80=99s the relevant output of `ip=
 a` of my devices:
>
> Host:
>
> 4: enp9s0f1np1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq=20
> state UP group default qlen 1000
>
> =C2=A0=C2=A0=C2=A0 link/ether 9c:6b:00:16:8e:96 brd ff:ff:ff:ff:ff:ff
>
> =C2=A0=C2=A0=C2=A0 inet 192.168.10.3/24 scope global enp9s0f1np1
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft fo=
rever
>
> USRP:
>
> 3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc pfifo_fast=20
> qlen 1000
>
> =C2=A0=C2=A0=C2=A0 link/ether 00:80:2f:31:28:42 brd ff:ff:ff:ff:ff:ff
>
> =C2=A0=C2=A0=C2=A0 inet 192.168.10.2/24 brd 192.168.10.255 scope global=
 sfp0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft fo=
rever
>
>
I think in the "RFNOC Graph" block, you can specify the SPP in the=20
"Device Args" parameter.


--------------bD70D0FlNl9CYIZxPIxg3juY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 05/09/2023 04:38, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-MailFormatvorlage23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-MailFormatvorlage25
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hello Marcus=
,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Thank
            you for your detailed explanation. I was able to fix the
            problem now: I updated GNU Radio from 3.10.5 (installed over
            apt) to 3.10.7 (installed from source). With the newer
            version the FFT block now correctly displays a noise floor.<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">So
            far so good, the FFT resolution is still low as I cannot set
            the size higher than 256 (Error =E2=80=9Csamples per package =
must
            not be smaller than atomic item size=E2=80=9D). As far as I
            understood, the size should be able to go as high as 2048
            when using 10Gbit streaming.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">My
            current configuration should enable that:<o:p></o:p></span></=
p>
        <p class=3D"MsoListParagraph"
          style=3D"margin-left:20.65pt;text-indent:-18.0pt;mso-list:l0
          level1 lfo1">
          <!--[if !supportLists]--><span style=3D"color:#1F497D"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">-<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
            style=3D"color:#1F497D" lang=3D"EN-US">MTU on my interface is
            set to 9000<o:p></o:p></span></p>
        <p class=3D"MsoListParagraph"
          style=3D"margin-left:20.65pt;text-indent:-18.0pt;mso-list:l0
          level1 lfo1">
          <!--[if !supportLists]--><span style=3D"color:#1F497D"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">-<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
            style=3D"color:#1F497D" lang=3D"EN-US">Parameter spp of RFNoC=
 RX
            Radio is set to 2048<o:p></o:p></span></p>
        <p class=3D"MsoListParagraph"
          style=3D"margin-left:20.65pt;text-indent:-18.0pt;mso-list:l0
          level1 lfo1">
          <!--[if !supportLists]--><span style=3D"color:#1F497D"
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">-<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span
            style=3D"color:#1F497D" lang=3D"EN-US">Current FPGA image is =
of
            XG type<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">In
            case it=E2=80=99s helpful, here=E2=80=99s the relevant output=
 of `ip a` of
            my devices:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Host:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            4: enp9s0f1np1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
            9000 qdisc mq state UP group default qlen 1000<o:p></o:p></sp=
an></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 lin=
k/ether
            9c:6b:00:16:8e:96 brd ff:ff:ff:ff:ff:ff<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 ine=
t 192.168.10.3/24
            scope global enp9s0f1np1<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 valid_lft forever
            preferred_lft forever<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">USRP:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
            3: sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000
            qdisc pfifo_fast qlen 1000<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 lin=
k/ether
            00:80:2f:31:28:42 brd ff:ff:ff:ff:ff:ff<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 ine=
t 192.168.10.2/24
            brd 192.168.10.255 scope global sfp0<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 valid_lft forever
            preferred_lft forever<o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    I think in the "RFNOC Graph" block, you can specify the SPP in the
    "Device Args" parameter.=C2=A0 <br>
    <br>
    <br>
  </body>
</html>

--------------bD70D0FlNl9CYIZxPIxg3juY--

--===============3062266496200939292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3062266496200939292==--
