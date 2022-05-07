Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6192951E7AD
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 16:09:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 562FA384D03
	for <lists+usrp-users@lfdr.de>; Sat,  7 May 2022 10:09:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651932568; bh=WsdgCIH9Pey3c1rU9ngvSNtKMxpdUQOW87FCrRlvndI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AqNjBbPPNQCnR7+E5Mu/Erc6fPufwM1Va4G0ucfgjugGMeR7AKP5x9YznvPlFRtaW
	 ybGjefLBO3l9Fo2AyPu1JKXyS8hZbnekgv9zYcgp2lk4lTwvFhMOuloJgQq0LeaReM
	 EQZLLcMcrNBp8ITlwbm6cYBKX8Hd4KitvBZtuRszLmVMdRjyorDHgtwyUPrCZphjk0
	 kr5i+WbLxTydWd57yq16eSAZDxMoysrHB2jWyovIPPigWFh6+/mDntnvXJtaID/YYm
	 wMteu8QobC4Mq5m9ryVrtnBPt8aBMdBE23eTxNf/qTKhOS+JbDFSkkWTk/qaHWF+jo
	 9sgQM0DHl5FWA==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C08573849DD
	for <usrp-users@lists.ettus.com>; Sat,  7 May 2022 10:08:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VhvMrmFe";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id ke5so7367897qvb.5
        for <usrp-users@lists.ettus.com>; Sat, 07 May 2022 07:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Zt/UHSWvx9gZAu/QvWszF5Bk2M8p1+nu+Bn/Ie9vVgk=;
        b=VhvMrmFe8HoyXG/V8FMiZgWIpojJtKkC4Q6Fl60IBF++B7H7P0If+CldrCZ7sTOsIy
         D+bGyMLpHp0QZO68VstGaFGV5ZKyT0Ru3HoW84jkXOkv14efhxcwJYO0+XYNXPnBPbMf
         8FKbWBxC6dBuwgH+w0h5g8UQ3lgqye5TXWAgUZ6JqvPgkieCSye2hy3K1cZez+vFKK7E
         ye9hYCsGm0ohWCcmR2n+HcnFbdGBQtl8M0xT6xpZX9RPT6IMa1trT5dYTgT3egV/WgJ0
         dnUJhZXKLSFkTgLuj8GOznOB5/9W03UkhQL5AiBieuABKhH5BO4Af1AfHd6McNicPsM6
         bmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Zt/UHSWvx9gZAu/QvWszF5Bk2M8p1+nu+Bn/Ie9vVgk=;
        b=RvvC90twHfKBx4iiNMmEyyNFJcu1i5yMPKsDa8hdkqCYMlfBazCCiGu2N5t7UuS2wp
         bPnSeuQiYBtQ1ZUub/yRAArDt8nWiXoIAwWiqEWrYrumRR6xlldCovLtcoV7FUFS37Br
         QxICMdMCrQ1HnfaL+o4cGoOBx7cioZayFZIMVKuvLqmlVz31sCJpMUveMKNFze4EYtvA
         +dS0U2k1zakR7eJTC6bAAFQnHsqtc11+WqqTmdK18vz0lqELSYXMVHW+pZAqKQ6FqjiG
         4tQxTmVDyZwuAA0dwemFe14fh5epSy0YP+S+gO0BIPIsGpspzgIOFlgFzgmU5u7h0ash
         Dqwg==
X-Gm-Message-State: AOAM531sBQKOUCwIDH64ICdPZw5aEJ+Z4W1R4UUovpVD33s+rp4QhKJ4
	GjIN52zGtKoSN4qmIysk4WKOWd9C758=
X-Google-Smtp-Source: ABdhPJzO9iV9WlaBuHlC4Cipau9q6EqAEBeZq1+czUtGqjAue+ycZPGFhWm5RYG9aDUZXjasiOIcgw==
X-Received: by 2002:ad4:5dcc:0:b0:45a:fde1:524b with SMTP id m12-20020ad45dcc000000b0045afde1524bmr1570533qvh.66.1651932504800;
        Sat, 07 May 2022 07:08:24 -0700 (PDT)
Received: from [192.168.2.188] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id v23-20020ac87297000000b002f39b99f6c5sm4265357qto.95.2022.05.07.07.08.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 07:08:24 -0700 (PDT)
Message-ID: <9e230f63-3d1a-f4ce-b35d-a0a0118515c8@gmail.com>
Date: Sat, 7 May 2022 10:08:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: =?UTF-8?B?546L55KAIFdBTkcgQ3Vp?= <iucgnaw@msn.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <LOYP265MB1887CCC056B0637CA4A49C74A5C49@LOYP265MB1887.GBRP265.PROD.OUTLOOK.COM>
 <1afd5983-b34b-d054-cd1c-2bda53b76ec1@gmail.com>
 <CWXP265MB1880F19CEA40B96FF765D9C3A5C49@CWXP265MB1880.GBRP265.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CWXP265MB1880F19CEA40B96FF765D9C3A5C49@CWXP265MB1880.GBRP265.PROD.OUTLOOK.COM>
Message-ID-Hash: SM37HEFX2PMSCSI7563L6HTTOJVO4PGV
X-Message-ID-Hash: SM37HEFX2PMSCSI7563L6HTTOJVO4PGV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 simultaneously transmit 2 signals of different sample rate and center frequency
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SM37HEFX2PMSCSI7563L6HTTOJVO4PGV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6677078798022189063=="

This is a multi-part message in MIME format.
--===============6677078798022189063==
Content-Type: multipart/alternative;
 boundary="------------bU6PftZCOESv62wfCC9X0VMv"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bU6PftZCOESv62wfCC9X0VMv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-07 10:03, =E7=8E=8B=E7=92=80 WANG Cui wrote:
>
> Understood, clarified resample is the solution. Thanks,
>
> BTW, when I read the txrx_loopback_to_file example, it does make 2=20
> usrp objects (1 tx, 1 rx) point to 1 device, how can it work?
>
I should clarify my comment---it's "per direction".


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Saturday, May 7, 2022 9:50 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: X300 simultaneously transmit 2 signals of=20
> different sample rate and center frequency
>
> On 2022-05-07 08:22, ?? WANG Cui wrote:
>
>     Hi,
>
>     I searched around and still can=E2=80=99t get clear answer, so I wo=
uld
>     seek help here.
>
>     I want to simultaneously transmit 2 baseband files which are
>     different sample rate (one is rate 2.5 MHz at freq 1.5 GHz, and
>     the other is rate 8 MHz at freq 1.8 GHz), and would like to
>     utilize 2 daughter boards of X300.
>
>     I tried to configure it with 2 multi_usrp objects, but the call
>     failed when get second tx_streamer (however, the first get call
>     succeed.), with: Error: RuntimeError: Multiple sampling rates
>     downstream of TX terminator 0: ...
>
>     I know X300 can transmit/receive 2 channels at 2 different sample
>     rate, just wonder is it possible to simultaneously transmit 2
>     channels as described above? Or have to resample one file to the
>     same sample rate of the other file, then transmit together?
>
>     Thanks in advance,
>
>     WANG Cui
>
> You can't have multiple multi_usrp objects pointing to the same=20
> device, so you'll have to resample one of your streams and use a
> =C2=A0 single multi_usrp object.
>
>

--------------bU6PftZCOESv62wfCC9X0VMv
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-07 10:03, =E7=8E=8B=E7=92=80=
 WANG Cui wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CWXP265MB1880F19CEA40B96FF765D9C3A5C49@CWXP265MB1880.GBRP265.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	font-size:11.0pt;
	font-family:=E7=AD=89=E7=BA=BF;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.EmailStyle18
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
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
        <p class=3D"MsoNormal">Understood, clarified resample is the
          solution. Thanks,<o:p></o:p></p>
        <p class=3D"MsoNormal">BTW, when I read the txrx_loopback_to_file
          example, it does make 2 usrp objects (1 tx, 1 rx) point to 1
          device, how can it work?</p>
      </div>
    </blockquote>
    I should clarify my comment---it's "per direction".=C2=A0=C2=A0 <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CWXP265MB1880F19CEA40B96FF765D9C3A5C49@CWXP265MB1880.GBRP265.=
PROD.OUTLOOK.COM">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"lef=
t"><b><span
                  style=3D"font-family:&quot;Calibri&quot;,sans-serif">Fr=
om:</span></b><span
                style=3D"font-family:&quot;Calibri&quot;,sans-serif">
                Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Saturday, May 7, 2022 9:50 PM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: X300 simultaneously
                transmit 2 signals of different sample rate and center
                frequency<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
>On
            2022-05-07 08:22, ?? WANG Cui wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
          <p class=3D"MsoNormal">I searched around and still can<span
              lang=3D"ZH-CN">=E2=80=99</span>t get clear answer, so I wou=
ld seek
            help here.<o:p></o:p></p>
          <p class=3D"MsoNormal">I want to simultaneously transmit 2
            baseband files which are different sample rate (one is rate
            2.5 MHz at freq 1.5 GHz, and the other is rate 8 MHz at freq
            1.8 GHz), and would like to utilize 2 daughter boards of
            X300.<o:p></o:p></p>
          <p class=3D"MsoNormal">I tried to configure it with 2 multi_usr=
p
            objects, but the call failed when get second tx_streamer
            (however, the first get call succeed.), with: Error:
            RuntimeError: Multiple sampling rates downstream of TX
            terminator 0: ...<o:p></o:p></p>
          <p class=3D"MsoNormal">I know X300 can transmit/receive 2
            channels at 2 different sample rate, just wonder is it
            possible to simultaneously transmit 2 channels as described
            above? Or have to resample one file to the same sample rate
            of the other file, then transmit together?<o:p></o:p></p>
          <p class=3D"MsoNormal">Thanks in advance,<o:p></o:p></p>
          <p class=3D"MsoNormal">WANG Cui<o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
><span
              style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>=C2=
=A0</o:p></span></p>
        </blockquote>
        <p class=3D"MsoNormal"
          style=3D"margin-bottom:12.0pt;text-align:left" align=3D"left"><=
span
            style=3D"font-family:&quot;Calibri&quot;,sans-serif">You can'=
t
            have multiple multi_usrp objects pointing to the same
            device, so you'll have to resample one of your streams and
            use a<br>
            =C2=A0 single multi_usrp object.<br>
            <br>
            <br>
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------bU6PftZCOESv62wfCC9X0VMv--

--===============6677078798022189063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6677078798022189063==--
