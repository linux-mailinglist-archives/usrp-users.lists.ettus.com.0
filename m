Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7954375FCEB
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 19:09:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5AFB0384AC0
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 13:09:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690218556; bh=tyDM9iVXKL+LneoDjkDMWHZtYwjIW7M8lVD1jq0lBBU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AfDrSfFbLaOYV8QZ6G95LHQaNAdX5KoXnp6q0Fn8bjZ43ZauD87MYOxXOR48YG/yS
	 bLXCufcHTKAO+lE7VwL0AvHgU9lvU5B0jR1ER/DI4BYmBNrfO4Z3m7PhqqmUHB/u/W
	 qDJrceYvD4fqr+DEag3DpGB67q2zJeh7mVboHD3NZ0RAjittR31uZRGfTv664OEqIY
	 35ZLptzhSDolBOSU/MhgkPtEuSJanvNcpd7ZOv47/tRW+Xyb7B4cfGxpv9XlG44R0s
	 7kUwKuntNmQT2V9cvh/u5pZGgx1M+ujrFbVv0ngegAoUhpBJBET3eudMLyqDqEpFjk
	 nQPq+jsT0kARw==
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	by mm2.emwd.com (Postfix) with ESMTPS id ABCE53841D9
	for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 13:08:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F0Q6ZQU4";
	dkim-atps=neutral
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-78caeb69125so1700412241.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 10:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690218536; x=1690823336;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v73sPIJgYgDtfRGGtoNilNEn+SCx1C/QRt4rY2uFcmQ=;
        b=F0Q6ZQU4uT91Ajh1LkitmoIuho0suqLAK9CyhJqH9GVSU/JzxMajenhGRELLhlzpbh
         Y3Ini+ieT15uZtFTLi9AtpVcpFcpnn9hcSDWVhBTvotqDEU4yTv0k5IDMUmccf0jyuyz
         vPMnaSb728M08vLc4jekuLvbgORBqkQCWu8ofL05U8YnHZC1+z++Eil1F7TEC4J9+YUa
         0TDpLCVNpwVfkpV4zt2JK4/vtTj018gEoDxXA6W3A5U/XXYoiEjmD9qwMLzxjlupn/KV
         W36Wdpbl5Hni07iOy8OcRKn079d0ToZPXcBdUjcJdyT4FRMXol0mJIi83o0uF1s6kQlF
         C2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690218536; x=1690823336;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=v73sPIJgYgDtfRGGtoNilNEn+SCx1C/QRt4rY2uFcmQ=;
        b=CrieTk9mP22GolxJ/df0dTWeDbpIuGMzto5gsD5z48bg1HUEYU8tUJDd1I6+bJAAED
         GjhOGw+Y/i2ilK0m3alH2u4e8seAktFGDb0TqXkzQbP+sYFn4CwHifzuX7peGfnB7SY+
         MxTppyslTec8gOwP5dJDYAjV8ynOn55mzSWcaNPNDwiVgJu4DiQiWs2Xvt95h0HqBwdN
         9x19qlbSaNas5nzBsqKMfvHRyjLRklJQy3tgFqwoySdGOHrzrGupakDZKGfUy+GV6sI0
         UI+MGjkMyhZ6tOwR1N15oBl8LaRbNaEkzqfAhGRuCtCGdCYlt14uq3j2ZbJXEjAd/Uzn
         J1Vw==
X-Gm-Message-State: ABy/qLY+sAstcI8vq1sZ+ANXJM8Rs9lSNLyeuQWXk3JeNRUaIe910iHw
	is9PeZRBhLSTQuTgVhPU41GZjPkpI3U=
X-Google-Smtp-Source: APBJJlH1aj9Z+coycmIDCst6G9uNMS7RennUYBPATzwX7mRn5L9lquuZrEs+qgRtWl9DDU7Zgkof7w==
X-Received: by 2002:a05:6102:92:b0:443:7503:a537 with SMTP id t18-20020a056102009200b004437503a537mr3402322vsp.28.1690218535765;
        Mon, 24 Jul 2023 10:08:55 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id i16-20020a0cf390000000b0063646f1147asm3674585qvk.135.2023.07.24.10.08.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 10:08:55 -0700 (PDT)
Message-ID: <214b198d-8f64-e887-52e4-18e985c96bed@gmail.com>
Date: Mon, 24 Jul 2023 13:08:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <169021540665.4399.2739940569944262945@mm2.emwd.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <169021540665.4399.2739940569944262945@mm2.emwd.com>
Message-ID-Hash: RZTEFIUYTQZDEVGWNCJRC76UE4M547UH
X-Message-ID-Hash: RZTEFIUYTQZDEVGWNCJRC76UE4M547UH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Network Link Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RZTEFIUYTQZDEVGWNCJRC76UE4M547UH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4590535747916844098=="

This is a multi-part message in MIME format.
--===============4590535747916844098==
Content-Type: multipart/alternative;
 boundary="------------XjMzLlwbk7WGr7lFUrSXAB03"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------XjMzLlwbk7WGr7lFUrSXAB03
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/07/2023 12:16, Tillson, Bob (US) via USRP-users wrote:
>
> I have 4 X310s running 3.14.1 (I know, an ancient version) attached to=20
> a computer with Ubuntu 20.04.
>
> The NIC is an intel X710 4 port NIC running latest driver (2.22.20)=20
> and latest NVM firmware (7.1).
>
> When I connect the dual ended NIC cable (typical ettus part), I get no=20
> link lights on host or x310, so obviously no connection to host.
>
> I know this has happened in a very small number of cases before, just=20
> hoping someone has maybe found a solution, like the magic config=20
> setting on the X710 NIC or something like that?
>
> Obviously I would like to not have to upgrade as it is quite impactful=20
> at this moment and unclear it would actually fix the problem.
>
> Any thoughts?
>
> Thanks,
>
>
To clarify -- this is a configuration that *stopped working*?=C2=A0 Or a=20
brand-new configuration that you're trying to get working?

Does this apply to all your devices, or just one?


--------------XjMzLlwbk7WGr7lFUrSXAB03
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/07/2023 12:16, Tillson, Bob (US)
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:169021540665.4399.2739940569944262945@mm2.emwd.com">
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">I have 4 X310s running 3.14.1 (I know, an
          ancient version) attached to a computer with Ubuntu 20.04.<o:p>=
</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">The NIC is an intel X710 4 port NIC runnin=
g
          latest driver (2.22.20) and latest NVM firmware (7.1).<o:p></o:=
p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">When I connect the dual ended NIC cable
          (typical ettus part), I get no link lights on host or x310, so
          obviously no connection to host.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I know this has happened in a very small
          number of cases before, just hoping someone has maybe found a
          solution, like the magic config setting on the X710 NIC or
          something like that?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Obviously I would like to not have to
          upgrade as it is quite impactful at this moment and unclear it
          would actually fix the problem.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Any thoughts?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
        <br>
      </div>
    </blockquote>
    To clarify -- this is a configuration that *stopped working*?=C2=A0 O=
r a
    brand-new configuration that you're trying to get working?<br>
    <br>
    Does this apply to all your devices, or just one?<br>
    <br>
    <br>
  </body>
</html>

--------------XjMzLlwbk7WGr7lFUrSXAB03--

--===============4590535747916844098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4590535747916844098==--
