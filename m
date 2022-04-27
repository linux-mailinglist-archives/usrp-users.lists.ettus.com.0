Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E81E512324
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 21:53:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66E78384B5D
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 15:53:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651089233; bh=3smB3Cd/6EOvVoCE2x8UnnNSxgIgWZ7dJ/BAgdZQzFA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ULG8sBH+3YpXpwHuHZYOwVHLrDja1z2tqemhBJrFLatHmoElJ4BIjWtwzzdKWVDvi
	 8hJIwFRKenwvU++V/Vzc65htOL1XVVQrihCZVkItipyq1+stAKL9QsrYNiGEnwNyGs
	 hiEdRvqglyKfvRVHgVE4VI+Al3Nv4kYmuJLeQQ2XMsRXYmYXCkvrTGvr78dNbz/eYs
	 GcvPouFilXqfnXSZspy/LadEBQ/ufq0BB3Mckc7Go9xbZZVpxkd7hbL3jAYmgtLzGi
	 kVE7lTBvmHJ/9mQlF+9KtWFX0QgwDkDB32ns/bUFXDE4X7BTBC+czFuIv5WiB9D9L4
	 0d3fsP1qbCNLA==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id A9B4D384785
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 15:52:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lS0n0XUt";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id 79so2107917qkk.10
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 12:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=H9/DJ1qg4Z29vcqZxSJYCTd2H7DB6I2WaFl+0PZpJJo=;
        b=lS0n0XUtIujmyPM1djwFhoFgiSO4cWe1nWIXUiH27350k/0+RkotX/Dbq6DDMoMOPR
         ZVm9PgyHRFhNCj+QcIUdaG0YblzWhNsQj/38svwC0SPjsJ2DUDxPa6kcGxD8rbykwU3A
         2IkHqduYJY0Li0OHqaQO1KpwKTrn+EwcGzrGmsA65aP2H85wrj4FXTZNc/3qXLVh6fGT
         skQW3Juj//7QwUEm6epjjIA4mkfEz3n5B/36HiRW6eNHK6EraNcADXFwTohT1GgMS8B3
         rT5TIxljYPnv5r9+6TFH0oSyIVrGtZSBWeNLR0j+0TKfRZd3br010fcm2v+tN/3Gn7UP
         UuGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=H9/DJ1qg4Z29vcqZxSJYCTd2H7DB6I2WaFl+0PZpJJo=;
        b=gGU9tWu9tdC2bQ+2+2G7EjmzH2XPApT691xh65aYuxTmn8D5vBbSDD5flFqtEIvd2r
         qs2PwZ9e4jcBjCLdoTHZGHVaUmgRS2zykeZ8BjvyoESP/bMtKim+RptSPtMYQVWZTHEa
         ON/nQMF0bw+H0/KvhqF1gKeYhgf/Lf1DA0aVbgd+b9s+tZcER/U+AtmaXeTXJkGTbBkh
         0HcTKKGVJDQj1goa9WSM22zajdCxpwn7BliQsSUlRHd8MHWu+3Wx43jAukof99BMfCY4
         j+jBsuNzfW2/jAK/jeONQoPS64n4/ld/D+KWnLGePs4QPJ6mQ8/xhk//LPzFfpWveab4
         WImg==
X-Gm-Message-State: AOAM531CKcY6KmHnLo3IBATV6vpRgQFKJgwxTbIuHYL78TXFGkMvRWJi
	jNqqY0MmCaZxD1IhuZHchgyBx5ufMrw=
X-Google-Smtp-Source: ABdhPJxpI1uRJP80esziyl2iD1n4STmY3bVkmPa6G11lhd37KgAKWP+Y6PpLNwjSpcV7J3Abt5gp9g==
X-Received: by 2002:a37:f516:0:b0:69f:83cd:f557 with SMTP id l22-20020a37f516000000b0069f83cdf557mr5076341qkk.555.1651089171111;
        Wed, 27 Apr 2022 12:52:51 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id d17-20020ac85d91000000b002f365edfd21sm6525037qtx.83.2022.04.27.12.52.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 12:52:50 -0700 (PDT)
Message-ID: <8f6380b7-1b50-fe2e-1588-71961f4cb29d@gmail.com>
Date: Wed, 27 Apr 2022 15:52:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Caffrey, Michael Paul" <mpc@lanl.gov>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <a10bc1673342466f9c2a166280d57643@lanl.gov>
 <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
 <d1678769adce4396b232ed2653d02014@lanl.gov>
 <196b97b5-4555-0527-f983-3cb2074f71df@gmail.com>
 <da34f941c5794b9ba453e49fc35ab7c0@lanl.gov>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <da34f941c5794b9ba453e49fc35ab7c0@lanl.gov>
Message-ID-Hash: NJ4G4EKZJHTUQN472GNLKJ6SGOUSSW5J
X-Message-ID-Hash: NJ4G4EKZJHTUQN472GNLKJ6SGOUSSW5J
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NJ4G4EKZJHTUQN472GNLKJ6SGOUSSW5J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2312910060484657758=="

This is a multi-part message in MIME format.
--===============2312910060484657758==
Content-Type: multipart/alternative;
 boundary="------------nXlEm3XqYv5GSlyjmICD87q7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nXlEm3XqYv5GSlyjmICD87q7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-27 15:31, Caffrey, Michael Paul wrote:
>
> I can run the program over and over again from the command line of the=20
> host without rebooting / resetting the host or the e320=E2=80=99s. Each=
 time I=20
> run the program, the first collects succeeds ( I receive the requested=20
> amount of data, anyway), while subsequent receives in the loop of the=20
> program do not receive data and generate the LATE error.
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, April 27, 2022 1:27 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: [EXTERNAL] Re: sychronous receiving from=20
> multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
>
> On 2022-04-27 15:13, Caffrey, Michael Paul via USRP-users wrote:
>
>     That is a good question and I should have included that I can run
>     the program over and over and the 1^st attempt always succeeds and
>     subsequent fail. I do not reboot or reset the e320=E2=80=99s in any=
 way
>     outside of the python example.
>
> OK, so how is "first time" defined?=C2=A0=C2=A0 First time after reboot=
ing your=20
> computer?=C2=A0 First time after rebooting the E320?=C2=A0=C2=A0 You ru=
n the program=20
> once and it never succeeds again, no
> =C2=A0 matter what you do?=C2=A0=C2=A0 I want to understand what the bo=
undary=20
> condition is that causes it to start working again...
>
>
Do you only get the "LLL" and timeouts when using multiple E320s, or=20
does this code fail with a single device as well?


--------------nXlEm3XqYv5GSlyjmICD87q7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-27 15:31, Caffrey, Michael
      Paul wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:da34f941c5794b9ba453e49fc35ab7c0@lanl.gov">
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
	font-family:"Calibri",sans-serif;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
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
        <p class=3D"MsoNormal">I can run the program over and over again
          from the command line of the host without rebooting /
          resetting the host or the e320=E2=80=99s. Each time I run the p=
rogram,
          the first collects succeeds ( I receive the requested amount
          of data, anyway), while subsequent receives in the loop of the
          program do not receive data and generate the LATE error.<o:p></=
o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Wednesday, April 27, 2022 1:27 PM<br>
              <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [USRP-users] Re: [EXTERNAL] Re: sychronous
              receiving from multiple e320's repeatedly results in
              ERROR_CODE_LATE_COMMAND<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-04-27 15:13, Caffrey, Michael
            Paul via USRP-users wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">That is a good question and I should hav=
e
            included that I can run the program over and over and the 1<s=
up>st</sup>
            attempt always succeeds and subsequent fail. I do not reboot
            or reset the e320=E2=80=99s in any way outside of the python
            example.<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">OK, so how =
is
          "first time" defined?=C2=A0=C2=A0 First time after rebooting yo=
ur
          computer?=C2=A0 First time after rebooting the E320?=C2=A0=C2=A0=
 You run the
          program once and it never succeeds again, no<br>
          =C2=A0 matter what you do?=C2=A0=C2=A0 I want to understand wha=
t the boundary
          condition is that causes it to start working again...<br>
          <br>
          <br>
          <o:p></o:p></p>
      </div>
    </blockquote>
    Do you only get the "LLL" and timeouts when using multiple E320s, or
    does this code fail with a single device as well?<br>
    <br>
    <br>
  </body>
</html>

--------------nXlEm3XqYv5GSlyjmICD87q7--

--===============2312910060484657758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2312910060484657758==--
