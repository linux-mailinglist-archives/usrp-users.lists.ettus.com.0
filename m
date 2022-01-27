Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE36649E93D
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jan 2022 18:43:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 807A138506A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jan 2022 12:43:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B+iSnnb8";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 161E3384FBA
	for <usrp-users@lists.ettus.com>; Thu, 27 Jan 2022 12:42:07 -0500 (EST)
Received: by mail-qk1-f181.google.com with SMTP id o25so3301284qkj.7
        for <usrp-users@lists.ettus.com>; Thu, 27 Jan 2022 09:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=nYMrOCWCOTVuHm2VOAd7GUfIXrT+4houQbyJsHlkYXE=;
        b=B+iSnnb8ue1m9x0xmhs8/5zaFtd24ZGLiWiXzLUKaGWAfj/Vv4yarJRjKzV3jjYukX
         oDTozKXUbfREFuazz2G5bvrKvfJACMjzB+X8n1ofQt3OUeFQ+n+pJjOAIrYy2D4WdcHK
         5t8ZnbhW//WQU2ZuvEZfUHUDW4UY/KM5vk4v5H37jd83R/3nSld01CTdPK0LObmAcxpN
         OwYytOwkTArG1D2CR9+DAmo/571klDGsYm3sfCbhxbmSrm4MfxadL4id1keZfmag9mg8
         JjjqHpBLstbmNeMEhc56PCUS31AuQfIacBiwgwb+TgAdRif29zCqtLEtQmCq5hH3Gzli
         niPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=nYMrOCWCOTVuHm2VOAd7GUfIXrT+4houQbyJsHlkYXE=;
        b=C8dnTgX/sz/3Y6Izh5VyqOUyPtXncVnIy8LnFNPG0PkVD/y0CzSXKJ2rn8u/wNSnJf
         AuuiAysOE2uaVMbR+xHPc+XFsKpHTNN6KsLbWJIFeGLJKyAfw4S7N8L6l9ue5kUPTJCR
         X8uz3hkuljMT5yc9ngn3N932azeQ0BKOOCLEpiBTUddjKcbC35fb5VhOYJnjWJfCoCGv
         mxlzkIpBdaCDlexcNa9PO9ta2hCrGHpCkFLxl5iF/8g/GGsC2l+nrj8H11Ej8NuT7+kk
         wydNPwnM7xi74u2OXAmgJLji4nvd7J+inFBug6KH62CLmsdUbDDQeaxZ6GgTSpN4qC3R
         wfYA==
X-Gm-Message-State: AOAM531yOwOAQqOUv3wLP/XGN5Nyv8Z11mGE842Fm79cUykyI7/Yzq+m
	So3uotxw5v35+OaNWopM7o19/NYq39SweA==
X-Google-Smtp-Source: ABdhPJzgznCvUHXT1ppP1g0JXBOa7eSYHodxQYDiAolCeqSbxLyF+4ZhxqZqwP5uMNPA7ZkbwBBh7A==
X-Received: by 2002:a05:620a:893:: with SMTP id b19mr3439313qka.715.1643305327263;
        Thu, 27 Jan 2022 09:42:07 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id m4sm1821345qkp.117.2022.01.27.09.42.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jan 2022 09:42:06 -0800 (PST)
Message-ID: <792d09fc-f703-7a3b-f914-7f30fd75da7a@gmail.com>
Date: Thu, 27 Jan 2022 12:42:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
 <b190375f-9565-ddc8-5289-6af588630efe@gmail.com>
 <CAKhiL6V55sfozy+b--6b21GJvERyUfVjPW26KWnuhdh39ow9_w@mail.gmail.com>
 <b2bb9131-5ea3-e152-49a1-8c400abdcbf3@gmail.com>
 <C6114C28-BFA1-47A4-9800-CF6AC1F16A88@hxcore.ol>
 <7c5f400a-5a54-a10d-37dc-45556677b574@ettus.com>
 <6F7E2DA2-22E3-4C81-B12A-E66FB6CFC070@hxcore.ol>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <6F7E2DA2-22E3-4C81-B12A-E66FB6CFC070@hxcore.ol>
Message-ID-Hash: UTJVIRLFVGPCRVSS2SKMGNQELYQ5QMRV
X-Message-ID-Hash: UTJVIRLFVGPCRVSS2SKMGNQELYQ5QMRV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Synchronization of two USRP x310s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UTJVIRLFVGPCRVSS2SKMGNQELYQ5QMRV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4826873783807034774=="

This is a multi-part message in MIME format.
--===============4826873783807034774==
Content-Type: multipart/alternative;
 boundary="------------FVdmHdrtgDvulk9AyvNpoqpz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FVdmHdrtgDvulk9AyvNpoqpz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-27 01:52, LoyCurtis Smith via USRP-users wrote:
>
> Hi Marcus,
>
> Thank you for the explanation. I really appreciate it.
>
> I did not look at it that way.
>
>
A more-general observation here is that software (and hardware!) systems=20
that don't already have functionality <X> require various
 =C2=A0 amounts of work (and corresponding expertise) to implement <X>.

Unless OAI *already has* what you want, it's a "matter of programming"=20
to achieve the things you need to achieve.=C2=A0 Software isn't
 =C2=A0magic--if you want to extend it or modify it, it is not unlike mos=
t=20
other engineering-heavy technologies.

I'll use an example from an entirely-different discipline.=C2=A0 You have=
 a=20
car, and you want to modify it to be an amphibious assault
 =C2=A0 vehicle.=C2=A0 Without a considerable background and skill in var=
ious=20
disciplines including mechanical engineering, it's going to be
 =C2=A0 a steep climb to arrive at your destination.

The experience gleaned from doing "simple" things like changing the oil=20
or tires will not necessarily be of much help in achieving
 =C2=A0 your end goal.=C2=A0 The same thing happens with software.=C2=A0 =
Deploying=20
pre-built/pre-configured systems is only minimally useful
 =C2=A0 when you want to modify the fundamentals of how the software work=
s.=C2=A0=20
It is at that point that you have to get yours hands
 =C2=A0 greasy...


--------------FVdmHdrtgDvulk9AyvNpoqpz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-27 01:52, LoyCurtis Smith
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:6F7E2DA2-22E3-4C81-B12A-E66FB6CFC070@hxcore.ol">
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
	color:blue;
	text-decoration:underline;}.MsoChpDefault
	{mso-style-type:export-only;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi Marcus, </p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you for the explanation. I really
          appreciate it.</p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"> I did not look at it that way. </p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <br>
      </div>
    </blockquote>
    A more-general observation here is that software (and hardware!)
    systems that don't already have functionality &lt;X&gt; require
    various<br>
    =C2=A0 amounts of work (and corresponding expertise) to implement
    &lt;X&gt;.<br>
    <br>
    Unless OAI *already has* what you want, it's a "matter of
    programming" to achieve the things you need to achieve.=C2=A0 Softwar=
e
    isn't<br>
    =C2=A0magic--if you want to extend it or modify it, it is not unlike =
most
    other engineering-heavy technologies.<br>
    <br>
    I'll use an example from an entirely-different discipline.=C2=A0 You =
have
    a car, and you want to modify it to be an amphibious assault<br>
    =C2=A0 vehicle.=C2=A0 Without a considerable background and skill in =
various
    disciplines including mechanical engineering, it's going to be<br>
    =C2=A0 a steep climb to arrive at your destination.<br>
    <br>
    The experience gleaned from doing "simple" things like changing the
    oil or tires will not necessarily be of much help in achieving<br>
    =C2=A0 your end goal.=C2=A0 The same thing happens with software.=C2=A0=
 Deploying
    pre-built/pre-configured systems is only minimally useful<br>
    =C2=A0 when you want to modify the fundamentals of how the software
    works.=C2=A0 It is at that point that you have to get yours hands<br>
    =C2=A0 greasy...<br>
    <br>
    <br>
  </body>
</html>

--------------FVdmHdrtgDvulk9AyvNpoqpz--

--===============4826873783807034774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4826873783807034774==--
