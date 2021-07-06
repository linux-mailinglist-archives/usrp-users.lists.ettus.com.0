Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E90A3BDA68
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 17:44:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 455323840CC
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jul 2021 11:44:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JWWkxUYT";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 48F55383F12
	for <usrp-users@lists.ettus.com>; Tue,  6 Jul 2021 11:43:12 -0400 (EDT)
Received: by mail-qv1-f41.google.com with SMTP id j14so9945615qvu.6
        for <usrp-users@lists.ettus.com>; Tue, 06 Jul 2021 08:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=kuN6rb0/hbjCFceU+DaeQ8ijNPlWuLOUABypH6xAeU4=;
        b=JWWkxUYTNSY/xdj2Y3VmpQQaEke6rGoe7oOkTXDMeWeJOlA91+4dlZQG/f5gANKTDz
         Jn+fggvZz9A7mXGEEFftepl417tMFYRBN9/Js3CULBE3IUrfGWwOfrUjS3b6cPdlJvMM
         rVNJ1aidUQ7Qf3+dCVjJ3G0IAmKW1vRPWBEYM/t/eiyzb5b12dAVgAhbN1aycRoilQGc
         65PHVOlJlMlLG+BYAXctStpN50fQZZICIEpM8IrgLDUx+aQW4goC4fMbUOLhFWz8Tr6G
         NwLCWhvY3cKVu3FLYoaMuAJywqSiEJTAAPFAjxP+wzpoeXmr5/l0zyt6y4+xbrdpU7N5
         j4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=kuN6rb0/hbjCFceU+DaeQ8ijNPlWuLOUABypH6xAeU4=;
        b=q56o7Z4UA7BEyboKMQ3s+fxpUYFvSb1OMUISvKZNNz55LEXZ+6ZABGNA3Ixu6BypuR
         aSPDwannYMpklhKYmrazk2LOrGo7qfAeZeIMexgy9xrtgKwekmBJMktN71jgiPWws24y
         0JQtCPf8YgPP+ztH0GbSviaRl1gZfQ3tVk/RltdPZNXcKqhCXMOsqIw1mH4nb2X+x0ky
         RPU/ERnA1CmVmQT4Jp/b5CIJ0b4FCOSNLW46FD6eexIWQCH1HZ2S9dwff9/J+bJuSx44
         Br0+RKh6xhSLej/HFXyDV06GO0ul1rHGzxkJK0hZRvDdDON1LBpIoOaHBsmUo3NQz7Ox
         izQw==
X-Gm-Message-State: AOAM532uNiXsY3Nt3Vje+Dy5BrGsXIZDvOhmgP3v9TAAG87S+6gPERYo
	HicJTN8E/9qYNUpxSbxMNIAOyNLxhGyDbw==
X-Google-Smtp-Source: ABdhPJx7oBvq7XT7ETZA5HVEPh9qKJWPHL8/HZzQxd1r/4tMt9NkYs9ZcNhULUdzSgQhF/PV9oyUGA==
X-Received: by 2002:ad4:5386:: with SMTP id i6mr18890126qvv.2.1625586191432;
        Tue, 06 Jul 2021 08:43:11 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x14sm3542792qkm.64.2021.07.06.08.43.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 08:43:10 -0700 (PDT)
Message-ID: <60E47A0D.6030001@gmail.com>
Date: Tue, 06 Jul 2021 11:43:09 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <012701d77215$89e6e850$9db4b8f0$@zengyi-tech.com>
In-Reply-To: <012701d77215$89e6e850$9db4b8f0$@zengyi-tech.com>
Message-ID-Hash: LNL6OW2JJ4NNEFRK45HLTNKJEL3NT4YO
X-Message-ID-Hash: LNL6OW2JJ4NNEFRK45HLTNKJEL3NT4YO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA Source Code Problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LNL6OW2JJ4NNEFRK45HLTNKJEL3NT4YO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5532933236618198555=="

This is a multi-part message in MIME format.
--===============5532933236618198555==
Content-Type: multipart/alternative;
 boundary="------------060306020801080303000503"

This is a multi-part message in MIME format.
--------------060306020801080303000503
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/05/2021 11:18 PM, zeyuan.li@zengyi-tech.com wrote:
>
> Hello,
>
> We are studying your company's b200mini product recently. In the 
> process of learning FPGA source code, we found DDC_ CHAIN 's 
> simulation file chain_ chain_ TB missing two files,they are 
> radio_setting_regs.v and task_library.v , without them the simulation 
> can not run, can you provide the two simulation files for us to learn 
> b200mini?
> thank you !
>
>
My guess is that the simulation framework files have simply not been 
maintained, so I'm guessing also that this isn't a simple matter
   of providing these files.

But someone with more knowledge of the FPGA codebase could comment here.



--------------060306020801080303000503
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/05/2021 11:18 PM,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zeyuan.li@zeng=
yi-tech.com">zeyuan.li@zengyi-tech.com</a> wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:012701d77215$89e6e850$9db4b8f0$@zengyi-tech.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:=E7=AD=89=E7=BA=BF;}
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
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:=E7=AD=89=E7=BA=BF;}
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
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Helvetica&quot;,sans-serif;color:#=
5F6062"
            lang=3D"EN-US">Hello,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"font-family:&quot;Helvetica&quot;,sans-serif;color:#=
5F6062"
            lang=3D"EN-US"> We are studying your company's b200mini
            product recently. In the process of learning FPGA source
            code, we found DDC_ CHAIN 's simulation file chain_ chain_
            TB missing two files,they are radio_setting_regs.v and
            task_library.v , without them the simulation can not run,
            can you provide the two simulation files for us to learn
            b200mini?<br>
            thank you !</span><span lang=3D"EN-US"><o:p></o:p></span></p>
        <br>
      </div>
    </blockquote>
    My guess is that the simulation framework files have simply not been
    maintained, so I'm guessing also that this isn't a simple matter<br>
    =C2=A0 of providing these files.<br>
    <br>
    But someone with more knowledge of the FPGA codebase could comment
    here.<br>
    <br>
    <br>
  </body>
</html>

--------------060306020801080303000503--

--===============5532933236618198555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5532933236618198555==--
