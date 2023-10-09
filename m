Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D5E7BE64A
	for <lists+usrp-users@lfdr.de>; Mon,  9 Oct 2023 18:25:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03B31385CFF
	for <lists+usrp-users@lfdr.de>; Mon,  9 Oct 2023 12:25:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696868703; bh=1aWaqlkFXC7JNTYMpwyoAByyXbuz9m400fYgY6tf0TI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=j3ZL1JJSuPlFiGc5mCNMqF/1rWAfWyXELkWsZNnrYBDtLq6pc8ojh7lKTBqTn62jf
	 x+Lai02DLN64F1b962nACsLaoLq3mtvCAas45Q6b+n5pXA3b433FHolLl1HLSlTa/7
	 a3eqo2p1OcX8WbGVYVoOLL8A6aY2u5uVPc7mmTiqcKz1AOj3QF33ZRpCPQmClD2B8r
	 0xxc7foNdrCeJpA5TmZOauwd+Q7/sTPGeixL8tnMtKdNNwtSmyzv0Px/DPt/ImdFvL
	 I0yyq0eMpAujy2yrFtzePfgslMfZVti1s4IKLHevvfbWOfBF4fxH1OfdEey3LJw1oP
	 7Dy600kZyyrDw==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id E27B9385C76
	for <usrp-users@lists.ettus.com>; Mon,  9 Oct 2023 12:24:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mgfxozcO";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-4194c3cf04aso33551421cf.3
        for <usrp-users@lists.ettus.com>; Mon, 09 Oct 2023 09:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696868661; x=1697473461; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FYlrYBMHMMbybfoMW55GhlnYV47c40ydDfpHGSWYRzI=;
        b=mgfxozcOpvPH2f1fb5MclAcEpbObmLKWk9wbzSUNaNUR0PTkqCdOI3R2h+A+d3v0Y0
         aGS5YbCZrfKuBOF4O/TwCGCJBdB9bSt232e1v5tOtXVH3ct4LRFeq5BrGrGQwlXxXonI
         qb9cO9HTI4lKrmY4KpDaiBPw+PIeIJEdCAOWReiwpo8HuF7a5Hzgp/a0ESdZmDz5YoVu
         PMPnw8tF1OYyCeUsyKQwm9XWvfiQHHSJAG+/WRW0SkCXeDlWDtgGSGoKmDs949ORryyv
         JzacRRka4bmWYUtwpSVjFyZ6Tn75YhKTlL+gQKAS120rhW+ymg9OTqYSgK1YiZVZ9P2i
         rJMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696868661; x=1697473461;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FYlrYBMHMMbybfoMW55GhlnYV47c40ydDfpHGSWYRzI=;
        b=WN1dDI5TnhqCeFvGhFIM7GM0JFmm/0x+G8GIu5aJnWyuD0OIhaui/6QOLbO61p3ppq
         w98XXWmJ/60qQJHu3tSTlBx2RPBo2Pa7cMolw4DMCmeY3UdnDPCQnd6HLk8tAD5i3IHn
         J6rlX6q5Ny/QvM7BkU1fhjC4fUfC7UDJqcFKTLpSNDbiPcp5YxnWtgOTOq6c4KQITBRM
         h1E76S6rOZ+q8CXRmjKUobhRDvcRZvwbQdVEmSvfvAwNFGpoeEsBLBOkaIbPn9kVRO3c
         2b05IPRz3WhNxAw6qezrPM9B3XR7ePU+UNEoAT/L/35xYN/qPHXLFXz0je98F7NvqIJC
         hdyg==
X-Gm-Message-State: AOJu0YwfOSR/rcHP8OSMvD2dA3yxYpJPtVoeZj0zh47x8ecHJLiBZM+F
	0b9Cx9PAk2L7lbkoccFIUALNKfFuDsM=
X-Google-Smtp-Source: AGHT+IGZv0bfbGGpGP14is2xUvXIGHnON6lJ9hV2rTOarXUlGiV6w3LobDRp1jGkhFp6whFBDMYKtA==
X-Received: by 2002:a05:622a:2613:b0:418:163b:c5d7 with SMTP id ci19-20020a05622a261300b00418163bc5d7mr17208483qtb.58.1696868661116;
        Mon, 09 Oct 2023 09:24:21 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id k24-20020ac84758000000b004199f47ccdbsm3784111qtp.51.2023.10.09.09.24.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 09:24:20 -0700 (PDT)
Message-ID: <ee48002f-1ed7-4700-a354-6dacd367e540@gmail.com>
Date: Mon, 9 Oct 2023 12:24:20 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <75c7acf9196142a6a2c0fda19fe48938@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <75c7acf9196142a6a2c0fda19fe48938@iis.fraunhofer.de>
Message-ID-Hash: VBNZTJ3CKXGO4D3WWOSQYE3UH23PJ7TV
X-Message-ID-Hash: VBNZTJ3CKXGO4D3WWOSQYE3UH23PJ7TV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC + GNU Radio: spp is set differently
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VBNZTJ3CKXGO4D3WWOSQYE3UH23PJ7TV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3575126817933994962=="

This is a multi-part message in MIME format.
--===============3575126817933994962==
Content-Type: multipart/alternative;
 boundary="------------pAcrtWa20RxKwwREE6wldCFY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pAcrtWa20RxKwwREE6wldCFY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/10/2023 10:56, Bachmaier, Luca wrote:
>
> Hi all,
>
> I=E2=80=99m currently implementing a GNU Radio flowgraph that makes use=
 of the=20
> RFNoC FFT block. After fixing a bug found out by Rob Kossler (mail in=20
> this mailing list from September 14) in the UHD repository, the=20
> original problem persists in GNU Radio: trying to use FFT lengths=20
> greater than 256 throws the error =E2=80=9Csamples per package must not=
 be=20
> smaller than atomic item size=E2=80=9D.
>
> When trying to look closer into the problem I noticed that the spp=20
> parameter is set differently when using the UHD python API directly=20
> (script rfnoc_rx_to_file) and when using GNU Radio. I added debug=20
> statements to the rfnoc_rx_streamer block that print the values of spp=20
> and ais.get() (atomic item size). When calling the rfnoc_rx_to_file=20
> script with a spp set to 1024 and an FFT length of 1024 I get the=20
> following output:
>
> [INFO] [0/LogPwr#0] Setting default MTU forward policy.
>
> Using radio 0, channel 0 Attempting to connect FFT:0 to 0/Radio#0:0...
>
> Requesting RX Freq: 0 MHz... Actual RX Freq: 1 MHz...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Requesting samples per packet of: 1024
>
> Actual samples per packet =3D 1024
>
> Using streamer args:
>
> [DEBUG] spp =3D 18446744073709551615
>
> [DEBUG] ais.get() =3D 1
>
> [DEBUG] spp =3D 2000
>
> [DEBUG] ais.get() =3D 1
>
> [DEBUG] spp =3D 2000
>
> [DEBUG] ais.get() =3D 1024
>
> [DEBUG] spp =3D 1024
>
> [DEBUG] ais.get() =3D 1024
>
> Since here spp is not smaller than ais.get(), the flowgraph is able to=20
> run. When trying the same as a GNU Radio flowgraph, the output is the=20
> following:
>
> [INFO] [0/LogPwr#0] Setting default MTU forward policy.
>
> [DEBUG] spp =3D 18446744073709551615
>
> [DEBUG] ais.get() =3D 1
>
> [DEBUG] spp =3D 2000
>
> [DEBUG] ais.get() =3D 1
>
> [DEBUG] spp =3D 2000
>
> [DEBUG] ais.get() =3D 2048
>
> [DEBUG] spp =3D 0
>
> [DEBUG] ais.get() =3D 2048
>
> For some reason, spp is finally set to zero and ais.get() is set to=20
> 2048. I do not understand why, and I also don=E2=80=99t get why the beh=
avior=20
> is different for GNU Radio at all. Is it possible that GNU Radio uses=20
> its own version of UHD? Up until now I believed that GNU Radio simply=20
> uses the already installed UHD implementation over the UHD Python API.=20
> If this is not the case, how can I change this specific GNU Radio UHD=20
> version? I tried looking into the source code of=20
> gnuradio/gr-uhd/lib/rfnoc but I do not understand it unfortunately.
>
> Regards
>
> Luca
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
If you installed Gnu Radio from the distros package, it will have been=20
linked against whatever version of the UHD was also
 =C2=A0 packaged by the distro.

If you then build UHD from source (with your fixes), Gnu Radio won't see=20
that version of UHD.=C2=A0 What you might need to do is
 =C2=A0 having built your patched UHD from source, also build Gnu Radio f=
rom=20
source, having first removed the installed-by-the-distro
 =C2=A0 UHD and Gnu Radio packages.

This is just an emergent property of large complex software systems, the=20
semantics of compiled languages and linking, and
 =C2=A0 conflicts between built-from-source, and installed-from-the-distr=
o=20
packages.


--------------pAcrtWa20RxKwwREE6wldCFY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/10/2023 10:56, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:75c7acf9196142a6a2c0fda19fe48938@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <style>@font-face
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
	text-decoration:underline;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m currently
            implementing a GNU Radio flowgraph that makes use of the
            RFNoC FFT block. After fixing a bug found out by Rob Kossler
            (mail in this mailing list from September 14) in the UHD
            repository, the original problem persists in GNU Radio:
            trying to use FFT lengths greater than 256 throws the error
            =E2=80=9Csamples per package must not be smaller than atomic =
item
            size=E2=80=9D.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">When trying to look
            closer into the problem I noticed that the spp parameter is
            set differently when using the UHD python API directly
            (script rfnoc_rx_to_file) and when using GNU Radio. I added
            debug statements to the rfnoc_rx_streamer block that print
            the values of spp and ais.get() (atomic item size). When
            calling the rfnoc_rx_to_file script with a spp set to 1024
            and an FFT length of 1024 I get the following output:<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[INFO] [0/LogPwr#0] Setting default MTU forwar=
d
            policy.<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">Using radio 0, channel 0 Attempting to connect
            FFT:0 to 0/Radio#0:0...<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">Requesting RX Freq: 0 MHz... Actual RX Freq: 1
            MHz...<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">Waiting for "lo_locked": ++++++++++ locked.<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">Requesting samples per packet of: 1024<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">Actual samples per packet =3D 1024<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">Using streamer args:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] spp =3D 18446744073709551615<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] spp =3D 2000<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] spp =3D 2000<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 1024<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] spp =3D 1024<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 1024<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Since here spp is not
            smaller than ais.get(), the flowgraph is able to run. When
            trying the same as a GNU Radio flowgraph, the output is the
            following:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[INFO] [0/LogPwr#0] Setting default MTU forwar=
d
            policy.
            <br>
            <br>
            [DEBUG] spp =3D 18446744073709551615<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] spp =3D 2000<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] spp =3D 2000<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 2048<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] spp =3D 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            lang=3D"EN-US">[DEBUG] ais.get() =3D 2048<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">For some reason, spp =
is
            finally set to zero and ais.get() is set to 2048. I do not
            understand why, and I also don=E2=80=99t get why the behavior=
 is
            different for GNU Radio at all. Is it possible that GNU
            Radio uses its own version of UHD? Up until now I believed
            that GNU Radio simply uses the already installed UHD
            implementation over the UHD Python API. If this is not the
            case, how can I change this specific GNU Radio UHD version?
            I tried looking into the source code of
            gnuradio/gr-uhd/lib/rfnoc but I do not understand it
            unfortunately.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span=
></p>
      </div>
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
    If you installed Gnu Radio from the distros package, it will have
    been linked against whatever version of the UHD was also<br>
    =C2=A0 packaged by the distro.<br>
    <br>
    If you then build UHD from source (with your fixes), Gnu Radio won't
    see that version of UHD.=C2=A0 What you might need to do is<br>
    =C2=A0 having built your patched UHD from source, also build Gnu Radi=
o
    from source, having first removed the installed-by-the-distro<br>
    =C2=A0 UHD and Gnu Radio packages.<br>
    <br>
    This is just an emergent property of large complex software systems,
    the semantics of compiled languages and linking, and<br>
    =C2=A0 conflicts between built-from-source, and installed-from-the-di=
stro
    packages.<br>
    <br>
    <br>
  </body>
</html>

--------------pAcrtWa20RxKwwREE6wldCFY--

--===============3575126817933994962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3575126817933994962==--
