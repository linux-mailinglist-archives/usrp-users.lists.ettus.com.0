Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 430B13EA4CA
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 14:41:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A006383E8E
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 08:41:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="u119rRmi";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id E3DB1383C1F
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 08:40:33 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id c6so5004716qtv.5
        for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 05:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=d40RXfTzoFhexPSIudJixLM5PXCfqEH9MykEHr0eLkQ=;
        b=u119rRmi4hCbvMetkz8STrIYkaHvJmgBWEHQD4Sfv8hUdqo9y5OfoKdvLtkoXAeKrO
         dmL0Uifk89A2xbBt9cYxeUPFb0fNYq7BXijyN4KgnsCZgZKUeo5xZKOjF/oSS0WlhnpY
         59HFdJoei/HrYS8vhfdV5xiLX8R5LLdOV+yQKjlO+GTrLXc7z0iQ8Q8yVQCahmasNIZY
         4q076dat7Fct32D/cReyYCsU6M8lu/EwvQtKk5Vnj6VRaCqvmkmv90R01LicekR9lb7A
         BASzkS14c44dPyP1qwWo0Ab9CJCWIGfBF46J77j9TeZj8UKOFFRWYbkHjfQ65xJarAQ/
         drbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=d40RXfTzoFhexPSIudJixLM5PXCfqEH9MykEHr0eLkQ=;
        b=dmoIjOPI1lD16NHoLwuDa+9tDnDp/18U7tV2/SbT7WITAitu8jv6ZTy5Q6WWBqZN/F
         O6qbn8ZrFlY/kbBTc1ccJD7/jtY6OL9pApdM6kbgpmiWclidhtkRhvO3D+APDj6MI+DE
         U1i/vUTgcp3GqBpx8txE8LUYRWTaX5mH5pxauEbK4EilZK/tnzR/jXg5MLhS+KvgZj0v
         oIRbx8u4MyH6p2wy5CRc5SboFSCbhz5O1uesdUvazLZ+bUmOLoHaIB3vR9C7TXnGJNxK
         84lYhtKJqO0zOG9TBRZbf4w37VMTHxvtqMjHDnU7eAeuk4CgotkRbw9JdYCzSPr97zxL
         v8MA==
X-Gm-Message-State: AOAM530vV4w7QIsVXfFDXA3qbmX5ytxunH7yOGqImsvZn1HxpEB6QMhZ
	bMdpW+y3Y/EoUbXdF3AFOx3egdrW6XSjuw==
X-Google-Smtp-Source: ABdhPJxOWxjQ0cZPZy3RRx+LpcJNMkpR994OR82/bJ7mLxquRZl4go6gzQO+jnDlWZWgF4vPttPhJQ==
X-Received: by 2002:ac8:108f:: with SMTP id a15mr3661901qtj.126.1628772033248;
        Thu, 12 Aug 2021 05:40:33 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id o25sm1215402qkj.113.2021.08.12.05.40.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 05:40:32 -0700 (PDT)
Message-ID: <611516BF.8000905@gmail.com>
Date: Thu, 12 Aug 2021 08:40:31 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <TYAP286MB021751B0349A211B1AA9948F8FF99@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
In-Reply-To: <TYAP286MB021751B0349A211B1AA9948F8FF99@TYAP286MB0217.JPNP286.PROD.OUTLOOK.COM>
Message-ID-Hash: D3DEKFUVYRWDML75UL2LRVLPN65J5TCL
X-Message-ID-Hash: D3DEKFUVYRWDML75UL2LRVLPN65J5TCL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Printing "SSSSSS" when using USRP N210 with MIMO Cable
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D3DEKFUVYRWDML75UL2LRVLPN65J5TCL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5210340626634733238=="

This is a multi-part message in MIME format.
--===============5210340626634733238==
Content-Type: multipart/alternative;
 boundary="------------030809010704070008040706"

This is a multi-part message in MIME format.
--------------030809010704070008040706
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/12/2021 03:58 AM, ZHOU Yuxuan wrote:
>
> Hi All,
>
> I am using 2 USRP N210 with a Ethernet cable and a MIMO cable. But=20
> when I used it, it randomly print =93SSSSSS=94 and =93ERROR in recv pir=
ate=20
> loop: ValueError: bad vrt header or invalid packet length.=94 (again,=20
> randomly). The result was that if I sent 1000 packets when the ERROR=20
> occurs, I will only received 300 or less packets, sometimes less than 1=
0.
>
> I have searched for the answer to that but it said it may caused by=20
> NAT. However I just directly connect it using my Win10 system and=20
> Gnuradio 3.7.
>
> Do you guys have any experience about that?
>
> Regards,
>
> Kevin
>
>
>
'S' is sequence error, which means packets are getting dropped by your=20
network interface.  We'll need more details about your configuration.

    What sample rates?
    Are both N210 connected via the same network adaptor?

What type of network adapter do you have?   Some with 82579LM chips in=20
them randomly drop packets even when they aren't under
   load.





--------------030809010704070008040706
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/12/2021 03:58 AM, ZHOU Yuxuan
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:TYAP286MB021751B0349A211B1AA9948F8FF99@TYAP286MB0217.JPNP286.=
PROD.OUTLOOK.COM"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:\7B49\7EBF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@\7B49\7EBF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:\7B49\7EBF;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:\7B49\7EBF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:\7B49\7EBF;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi All,<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I am using 2 USRP N21=
0
            with a Ethernet cable and a MIMO cable. But when I used it,
            it randomly print =93SSSSSS=94 and =93ERROR in recv pirate lo=
op:
            ValueError: bad vrt header or invalid packet length.=94
            (again, randomly). The result was that if I sent 1000
            packets when the ERROR occurs, I will only received 300 or
            less packets, sometimes less than 10.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I have searched for t=
he
            answer to that but it said it may caused by NAT. However I
            just directly connect it using my Win10 system and Gnuradio
            3.7.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Do you guys have any
            experience about that?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards,<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Kevin<o:p></o:p></spa=
n></p>
      </div>
      <br>
      <br>
    </blockquote>
    'S' is sequence error, which means packets are getting dropped by
    your network interface.=A0 We'll need more details about your
    configuration.<br>
    <br>
    =A0=A0 What sample rates?<br>
    =A0=A0 Are both N210 connected via the same network adaptor?<br>
    <br>
    What type of network adapter do you have?=A0=A0 Some with 82579LM chi=
ps
    in them randomly drop packets even when they aren't under<br>
    =A0 load.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------030809010704070008040706--

--===============5210340626634733238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5210340626634733238==--
