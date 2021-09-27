Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 019784198CC
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 18:21:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC361383C0B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Sep 2021 12:21:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IZIiQi0S";
	dkim-atps=neutral
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id B64C638005C
	for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 12:20:56 -0400 (EDT)
Received: by mail-qk1-f174.google.com with SMTP id 72so37245190qkk.7
        for <usrp-users@lists.ettus.com>; Mon, 27 Sep 2021 09:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=0OowL0+sqJwPczzgszCEKGs3X5ffTktd6y2CqtYFbwg=;
        b=IZIiQi0SomQ6C58EVqwZpR4sMPlAXQANvzz3cuyOTjxbrrfnimzAcRRPLNLOudhQMu
         qjBAN9Oj/Mk3OQxdHhozlfWfOKSEqTXs9SPh6oR00ZsZebXkHB9JugJxH0ZokT242PQ8
         pvEPgu8mMcAJ0B2WWM97ngB85VGGrTm04X20kp1clIauFQE4dmDrMNvp079sEP8+YuqB
         dRtphlnL89uTvxgt2/qOfj+CTx978Qn1N3pm25TL7tEMMVjGcUYrO/rM5PoEvvSMbzN8
         ygqabELqw7T5UM+/OVJe3iq5SE1+5gfrOg8wzcGGp4YOl0txMLaIZw7YuUQoYFNVoV2g
         v/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=0OowL0+sqJwPczzgszCEKGs3X5ffTktd6y2CqtYFbwg=;
        b=UsNExEgEZ2myNTn3gw2rukiudJlcL8zPLnAPc+NyYidA0FoFoii5fH190EWyQfIMCr
         pInhWrUeGaH6tNlL/Sc9llzess4iPZK2uRUC9F/Q5zqciVyEJWndtxs3DXP0pdAOKNty
         Pcf38KlzOAtO1qJSzPYQ1LlcGLDkd1zVx/dEw4lJKJrJIAxz2KEYYUvMRjaWSZgVa2v5
         yqbSBBH1e4lzwCwBqIQZv9q0SAYJ7CKUzhjomKJvKkHchRzfufowZjiWzRkOsvLetuXM
         YqJ6sT3SemluAvaHSUcVo+ki+EcldWOiBEndYqTFOnxZ4Ah2shTQWexUMXa+NzRZuEw4
         +Ogg==
X-Gm-Message-State: AOAM5336UCEX55+BcDNhZ/QYIQSMzXVKQpzjKjOIm7TMBAXEA1VKJ2no
	JnAFzw5o1wFw8vaxnRE/UmS8qAS/Gv5fuA==
X-Google-Smtp-Source: ABdhPJwUU33oe16fiE5pZTZLMlSuiMEGmO8l+Zzta8/FYs6/wo9WPtMj+UFgU1C6rpkC/awu9QlkOQ==
X-Received: by 2002:a37:a193:: with SMTP id k141mr727790qke.447.1632759655916;
        Mon, 27 Sep 2021 09:20:55 -0700 (PDT)
Received: from [192.168.2.244] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 18sm3629337qtz.49.2021.09.27.09.20.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 09:20:55 -0700 (PDT)
To: Thangaraj Mukara Dhakshinamoorthy <thangaraj@komro.net>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <yvihFszum0xbmZ1alvfvUJLHqDePaIDR6hXw7IPGiw@lists.ettus.com>
 <f033c3497b9948beb010df9452c3184a@komro.net>
 <b6ffe3ea-cc05-a9e0-482a-62c4ef7983e6@gmail.com>
 <1ee6a256cd214bb89085fcd4c3b9c381@komro.net>
 <dc64e705-7b7d-b438-3ee2-5535ce894024@gmail.com>
 <0c75bc58ab4f4970ab0176313c206451@komro.net>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1674928c-2eb1-d8da-3496-72b7bc45cadc@gmail.com>
Date: Mon, 27 Sep 2021 12:20:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <0c75bc58ab4f4970ab0176313c206451@komro.net>
Content-Language: en-US
Message-ID-Hash: U47U72GCC2M7P5VUSZFSXK66AOWJNHVR
X-Message-ID-Hash: U47U72GCC2M7P5VUSZFSXK66AOWJNHVR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help_Failed to build UHD in Ubuntu 20.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U47U72GCC2M7P5VUSZFSXK66AOWJNHVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6229905848816019415=="

This is a multi-part message in MIME format.
--===============6229905848816019415==
Content-Type: multipart/alternative;
 boundary="------------A7DFB764EC20A38DD4697CB2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A7DFB764EC20A38DD4697CB2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-27 11:18 a.m., Thangaraj Mukara Dhakshinamoorthy wrote:
>
> Hallo Marcus,
>
> Unfortunately, no change, it doesn=E2=80=99t work either!
>
>
The consensus inside NI/Ettus is that you'll have to upgrade your N320=20
to match your host.

This might be the most straightforward approach:

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card



--------------A7DFB764EC20A38DD4697CB2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-27 11:18 a.m., Thangaraj
      Mukara Dhakshinamoorthy wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:0c75bc58ab4f4970ab0176313c206451@komro.net">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Verdana",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage23
	{mso-style-type:personal-reply;
	font-family:"Verdana",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Hallo
            Marcus,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;mso-=
fareast-language:EN-US">Unfortunately,
            no change, it doesn=E2=80=99t work either!<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;back=
ground:yellow;mso-highlight:yellow;mso-fareast-language:EN-US"><o:p>=C2=A0=
</o:p></span></p>
        <br>
      </div>
    </blockquote>
    The consensus inside NI/Ettus is that you'll have to upgrade your
    N320 to match your host.<br>
    <br>
    This might be the most straightforward approach:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Writing_t=
he_USRP_File_System_Disk_Image_to_a_SD_Card">https://kb.ettus.com/Writing=
_the_USRP_File_System_Disk_Image_to_a_SD_Card</a><br>
    <br>
    <br>
  </body>
</html>

--------------A7DFB764EC20A38DD4697CB2--

--===============6229905848816019415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6229905848816019415==--
