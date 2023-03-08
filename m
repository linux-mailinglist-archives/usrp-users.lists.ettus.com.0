Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F292E6B0F78
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 17:58:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F0F2384BEE
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 11:58:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678294735; bh=Wsg/lxEHs+52JYVjZwnDtnElUZL1DcAQLrcWWUn/yAk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=w90atK0mf7m8Zc5s6xPBFkJ7zG/tCxBjepjSkjWbLEndGs/6ckVK9AYn68nYYa6qf
	 9Fv+PYbWtPTBVxh6ccQDEnIegQY+uR+v+6rwAIP17lZSZTp9v4p8kxKHlN48QPMG5d
	 qz/S1nB8mVHPJXu9oJNDaSZnYUbW9Be0SE/vEedGP6DH2cT8SpRLbLk/rEC0PSPdvB
	 pyNwa4EwuG2MV+BFXgB5EOwZL7zUvOeajbDkO/MM9leaViExHV7uBVAVky0fDTd8X6
	 huJjfRzwKUKFbFCBe5FxlKumVerXhy82FBwZ1MiPC+y8nLSETFSw2BYkITjY4Rf3tu
	 H+AxiDZxUwoYg==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 132303850E7
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 11:55:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nliAYBwL";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id c3so18734406qtc.8
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 08:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678294528;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uWfDGlHrW6m28P1hx4IlvfyBkSBEO191oo+bfP9QHaA=;
        b=nliAYBwLoy8KwH37RZc/Pyk8TBMxkzRzuDkTyMgisNDP1/OZ9mXfU3PC7eHMd0AbLJ
         eeX7prfSiCfbnsGZjPiyZS75uu58uMUvaQTw9QJdJounEzVZRz4uDllufB7G1G9i6vIa
         g3r0F4HnRk71KBkwVplBj32+Pa3hdt09T/KkHvTVq6BWpHTOdsYlaxEppeSp9fV7UYNM
         Xl+WUXsZ1glnWYwrTWxarA1GxKA3oa3PGXg4mjWCOdPtYpEldsQkdzdCwSiMzwvZAiMu
         NUGnF7fn6JhqQfBrCG7N59nCD/FPgdt9go0z5ajBf8qYA/r++ZLmVWCrgIeDQ1q1kJzw
         ZIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678294528;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uWfDGlHrW6m28P1hx4IlvfyBkSBEO191oo+bfP9QHaA=;
        b=mD95T9G2Fx1L+t+jEAtnqJDbjEnyDhVg6+9MLBVYp7kqT86iPOlezyU8c1d+pDGGnr
         rpu6zO7AW90tzFR0GS7CNi7ie3PT7nHzOYEU7ItXTwWJlRyR5PkdNzEYryzu1YWHwKKB
         qJgCXGrxx5uPWbr5OPYAqAJeYqsUEBW6OKJUV5fz2aIvhvjLyx60wDxpAq0F10V5pdUY
         u9+yneonK0QCQKdTPMzmyDgl/Qbo84qLHrPwbF/ghJilYAhh7vSGumVwmBfx4w0W1Iiu
         wFWN5Q9nwOnF/bSakhYQq9UKPFhDh0ziYweOEk60mWg2H0wb2E9TCMeeqDNZxI6RTIPI
         sZ8g==
X-Gm-Message-State: AO0yUKVapmUCbVZcYs+TynD3P5G88Fkh0ofJw2y4a641NDCTBlEL5iVv
	DVP8SSz0Uq8PnjeaVYvtnKOJsyZS6DE=
X-Google-Smtp-Source: AK7set9bqZOuX9/q2BMmm5ik/VG8x3ex7+M34yAi8LNtDOmJt3Pktef8HDwQw+K19zCsePe04mQQ7g==
X-Received: by 2002:a05:622a:552:b0:3b9:b6c8:6d5b with SMTP id m18-20020a05622a055200b003b9b6c86d5bmr32095115qtx.35.1678294528424;
        Wed, 08 Mar 2023 08:55:28 -0800 (PST)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id h10-20020ac8548a000000b003b9a573aec6sm11802810qtq.70.2023.03.08.08.55.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 08:55:28 -0800 (PST)
Message-ID: <2705f639-cd8c-16c5-1a06-61085f9e8f77@gmail.com>
Date: Wed, 8 Mar 2023 11:55:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <E1188D158AA7A048AF99B6A05DA3D62901E208A0F4@SPROMMAIL04.spengtes.space>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D62901E208A0F4@SPROMMAIL04.spengtes.space>
Message-ID-Hash: FTISLNUVDGVIUVGY72UJOS2PSPSBWCKK
X-Message-ID-Hash: FTISLNUVDGVIUVGY72UJOS2PSPSBWCKK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: request for "PROBE" n x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FTISLNUVDGVIUVGY72UJOS2PSPSBWCKK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4483247992046085002=="

This is a multi-part message in MIME format.
--===============4483247992046085002==
Content-Type: multipart/alternative;
 boundary="------------OwezjL2ZvvW0EzhalQR2mRkC"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OwezjL2ZvvW0EzhalQR2mRkC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/03/2023 03:37, STEFANI, Maurizio (External) via USRP-users wrote:
>
> HI,
>
> after loaded a fresh copy of FPGA on our x310, I issued the command:
>
> -uhd_usrp_probe
>
> the results of this are:
>
> mau@mau-Vostro-3500:~$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 10.2.1 20201207; Boost_107400; 
> UHD_3.15.0.0-4build1
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Error: AssertionError: Failed to find a valid XML path for RFNoC blocks.
> Try setting the environment variable UHD_RFNOC_DIR to the correct location
> mau@mau-Vostro-3500:~$
>
> I do not know how to proceed, set the environment variable or other.
>
> Thank you
>
> maurizio
>
> The information in this e-mail is confidential. The contents may not 
> be disclosed or used by anyone other than the addressee. Access to 
> this e-mail by anyone else is unauthorised.
> If you are not the intended recipient, please notify Airbus 
> immediately and delete this e-mail.
> Airbus cannot accept any responsibility for the accuracy or 
> completeness of this e-mail as it has been sent over public networks. 
> If you have any concerns over the content of this message or its 
> Accuracy or Integrity, please contact Airbus immediately.
> All outgoing e-mails from Airbus are checked using regularly updated 
> virus scanning software but you should take whatever measures you deem 
> to be appropriate to ensure that this message and any attachments are 
> virus free.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
UHD_RFNOC_DIR=/usr/share/uhd/3.15.0/rfnoc
export UHD_RFNOC_DIR


In your .bashrc
--------------OwezjL2ZvvW0EzhalQR2mRkC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/03/2023 03:37, STEFANI, Maurizio
      (External) via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:E1188D158AA7A048AF99B6A05DA3D62901E208A0F4@SPROMMAIL04.spengt=
es.space">
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
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
	text-decoration:underline;}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
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
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">after loaded a fresh
            copy of FPGA on our x310, I issued the command:<o:p></o:p></s=
pan></p>
        <p class=3D"MsoListParagraph"
          style=3D"text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !=
supportLists]--><span
            lang=3D"EN-US"><span style=3D"mso-list:Ignore">-<span
                style=3D"font:7.0pt &quot;Times New Roman&quot;">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><!--[endif]--><span lang=3D"EN-US">uhd=
_usrp_probe<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">the results of this a=
re:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">mau@mau-Vostro-3500:~=
$
            uhd_usrp_probe<br>
            [INFO] [UHD] linux; GNU C++ version 10.2.1 20201207;
            Boost_107400; UHD_3.15.0.0-4build1<br>
            [INFO] [X300] X300 initialization sequence...<br>
            [INFO] [X300] Maximum frame size: 1472 bytes.<br>
            [INFO] [X300] Radio 1x clock: 200 MHz<br>
            Error: AssertionError: Failed to find a valid XML path for
            RFNoC blocks.<br>
            Try setting the environment variable UHD_RFNOC_DIR to the
            correct location<br>
            mau@mau-Vostro-3500:~$ <br>
            <br>
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I do not know how to
            proceed, set the environment variable or other.<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">maurizio<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
      </div>
      <font style=3D"font-size: 9px;">The information in this e-mail is
        confidential. The contents may not be disclosed or used by
        anyone other than the addressee. Access to this e-mail by anyone
        else is unauthorised.<br>
        If you are not the intended recipient, please notify Airbus
        immediately and delete this e-mail.<br>
        Airbus cannot accept any responsibility for the accuracy or
        completeness of this e-mail as it has been sent over public
        networks. If you have any concerns over the content of this
        message or its Accuracy or Integrity, please contact Airbus
        immediately.<br>
        All outgoing e-mails from Airbus are checked using regularly
        updated virus scanning software but you should take whatever
        measures you deem to be appropriate to ensure that this message
        and any attachments are virus free.</font>
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
    UHD_RFNOC_DIR=3D/usr/share/uhd/3.15.0/rfnoc<br>
    export UHD_RFNOC_DIR<br>
    <br>
    <br>
    In your .bashrc<br>
  </body>
</html>

--------------OwezjL2ZvvW0EzhalQR2mRkC--

--===============4483247992046085002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4483247992046085002==--
