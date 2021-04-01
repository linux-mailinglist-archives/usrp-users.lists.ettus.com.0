Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D8335152B
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 15:31:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6A2CD383820
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 09:31:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BaeYOWPp";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 581DE383845
	for <usrp-users@lists.ettus.com>; Thu,  1 Apr 2021 09:30:07 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id x27so977977qvd.2
        for <usrp-users@lists.ettus.com>; Thu, 01 Apr 2021 06:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=PXvcYeCSCiB67C6NR0nAn7+qIuu+xTOIq0siJ5atnOk=;
        b=BaeYOWPpAGwSvlm4s55gsXSojkieUL7IAKmS5Qh7OS2TNIZtxN/WGceQccCrO/dvyY
         /2gtDNIB38QqgVZ2QL1uios3yOeKJv/tAjzLayb5d/RtjAB0Ui9ajLyof3WSKNmDn2rv
         CC0qnMW1adloQWjJh2u036RzJph1xud/xT4BOtAmwWWDrJRax81P8Y4ggrp83pEVmkxN
         tzxtgkHdNsqvyWZSbeupVyHMBfFwI4+d+kDNrb2VK7aP35Xmzk+BS4jIzUtYu92gwdSI
         PCn5tMf0ujUtlwo/Z1uEl30eL/vXo7R/JdNNjda3Eg3HOgTJiUY/gLPy1rLq6OnX37E+
         EFjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=PXvcYeCSCiB67C6NR0nAn7+qIuu+xTOIq0siJ5atnOk=;
        b=m0Vy4Ww+yGsjpRHmBuCU9W8bR4HJifozK/1YsmJpB+QTGqhEbuC7B9pI/UrTQF0Uo4
         6zailAqrPOMufWnFMdO0r7oCC+Q241g9IbtUBSnE5BukDIgU5/bn0Gxj/+dWSfAO1UnD
         Wba/u/ObDdVQiHaG2D2VsbXxnuRWumxcYIoxdChH68LbVqlwbLoQBq1XfANEK8ZaOzm+
         2Tti6XWd8siV0w4zDXrq+ghhY9M6T0VtA+KbMjG6FFy83VUK8S90DKFG3i5EWU1VsYvI
         i9e4wIry1ke1ECChvGcf+s5QutvWS5YZERytPsiqt24jwEgBb3jrDuUOXmOoX7CYp+cU
         BWKA==
X-Gm-Message-State: AOAM533YALLoBicgmeRbLxpFm16opGDMsPPmS3AXcqPwoYlPK74OtOWr
	8i1wz1eJYc13x/RbrtS2c7OS8fJKv8U=
X-Google-Smtp-Source: ABdhPJzzbrPBXF95TtMYGJ0LBhYsr2GGamA0CCQtg6vVRhKYpTM/DtksbxHhHPkl4J1qHs02ZJnjjw==
X-Received: by 2002:a0c:f890:: with SMTP id u16mr8258157qvn.21.1617283806799;
        Thu, 01 Apr 2021 06:30:06 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v7sm3978330qkv.86.2021.04.01.06.30.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:30:06 -0700 (PDT)
Message-ID: <6065CADD.5020900@gmail.com>
Date: Thu, 01 Apr 2021 09:30:05 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <c938757ba2a340a083df7080952964cb@external.thalesgroup.com>
In-Reply-To: <c938757ba2a340a083df7080952964cb@external.thalesgroup.com>
Message-ID-Hash: OWOYEHJ4W3JFTTRL3IG7FQ5D6RH5RELB
X-Message-ID-Hash: OWOYEHJ4W3JFTTRL3IG7FQ5D6RH5RELB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error init_usrp
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWOYEHJ4W3JFTTRL3IG7FQ5D6RH5RELB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4473658632234442857=="

This is a multi-part message in MIME format.
--===============4473658632234442857==
Content-Type: multipart/alternative;
 boundary="------------070108080807010008040404"

This is a multi-part message in MIME format.
--------------070108080807010008040404
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/01/2021 04:22 AM, COURANT Frederique - Contractor via USRP-users 
wrote:
>
> Hi Users,
>
> I have follow tutorials Getting Started with UHD and C++ but when I 
> try to run init_usrp I have the following error :
>
> Error: RuntimeError: For legacy APIs, all devices require the same 
> number of radios, DDCs and DUCs.
>
> Someone could help me to understand and resolve this error please ?
>
> Best regards.
>
> Fred
>
>
What arguments did you pass to the init_usrp example program?  More 
context is usually incredibly helpful in helping us help you.




--------------070108080807010008040404
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/01/2021 04:22 AM, COURANT
      Frederique - Contractor via USRP-users wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:c938757ba2a340a083df7080952964cb@external.thalesgroup.c=
om"
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi Users,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I have follow tutoria=
ls
            Getting Started with UHD and C++ but when I try to run
            init_usrp I have the following error :<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Error: RuntimeError: =
For
            legacy APIs, all devices require the same number of radios,
            DDCs and DUCs.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Someone could help me=
 to
            understand and resolve this error please ?<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards.<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Fred<o:p></o:p></span=
></p>
      </div>
      <br>
    </blockquote>
    What arguments did you pass to the init_usrp example program?=A0 More
    context is usually incredibly helpful in helping us help you.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------070108080807010008040404--

--===============4473658632234442857==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4473658632234442857==--
