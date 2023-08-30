Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 403D678D77A
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 18:15:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51F543851C3
	for <lists+usrp-users@lfdr.de>; Wed, 30 Aug 2023 12:15:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693412109; bh=4Yuir2U9mD6d0WflUvERXG59db0QgcgZtEwMMsLNct4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FaN9ZyLiQ0iWhdoB5o7brLOi87/rVtVj2VDnwCTnENyQ3NACOpwTv5zhtmroQkWVA
	 jndbrGzGYmkotZUX8bnAV7Qq034LY70uF0bE9UYdOpWSnCAp9afRVBjL8e1bIj4+OH
	 adLRZA5WQW5MjSJp9yvXmy+z/I1ECRkiVa7tp3hHC0DJndzmetA4+56H5ywM/DxoS4
	 eCECu4JhIsRuAtcBvpIj7HI4Z39I7HuJNWrtQoDXQf1TQWFsBVtb9fz6K6c03DuLOz
	 AvLBwL9oSe+JwhUlsmmLOHI7cGZUcy2GR97Np6RwzFyLHRIommswShDh5VPvkB9+e1
	 ddEFOU2l4FVdA==
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id AF76A3851B6
	for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 12:14:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gkc34k1Y";
	dkim-atps=neutral
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-76da4437500so321381585a.1
        for <usrp-users@lists.ettus.com>; Wed, 30 Aug 2023 09:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693412086; x=1694016886; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XjUTGzNaQVdEk56wlFuE+M/JAaDgZdKDgTUYZL+jXUM=;
        b=gkc34k1YUL3CGDgSlEpUqM0a6pFxXXqyuumNI3ALLI0SFB5//ANJ69fSze2PTlg9Kr
         5fX1Nhoy+gBFdDgxLyaSKdpTbJ1fksq4+/9AoMU1U+GtGtH92bDCdBZDc77V8jWAFA0h
         PCZ+YILxWM9e430oOmAZuKOcdspw4DaZLh49fpxVSg/yI32otlaXkaESSI85xHZMle6p
         nV1rLkWIV9YYI8Tr3/Hp2QtzFOjVI5PPDzeGa4HLkKS9BFXievThQ3VB3zudip1YpkCS
         pyUqFvkH+Sj2ilA6mdVkyhDN/rHsBFniQ7Dh7czOZuMcpbbM26GLBJnA9WPPobVL7m5q
         UpLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693412086; x=1694016886;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XjUTGzNaQVdEk56wlFuE+M/JAaDgZdKDgTUYZL+jXUM=;
        b=PlMjwfDyDPVlzW/FQKp6xZ3eZlHcZTeMgcaSv+KQpvkVZnp0JmW9sUXU9sp6j2mMS4
         tO2Xeozn/UwaiAbrMF66EcQ4yoD9G2pzD/A5y02Mz0r7B0QsVYBUb43TyOXB4QBZ/+u0
         mCDG9kmzxRfoDxu6ilMQPHp7DgSfhtmo6j4x8+v4DvGXV2cSV6Q7Sy6PppYDvMPwhzYo
         Kif3+wSOJoytwvneoAMJEhMWzvPART9+0sQGKUzkO3u3It2AndtwFQDV4hC0qEEi6jvp
         h3iAQB3XEY0dLclvDhjjPmsJjBWu7ULHyJW18vDd4joA1mTuRV42LYoCKKDOJYUCFFyj
         C5zw==
X-Gm-Message-State: AOJu0Yx8QjpOQZ5j1jAhxS4rIWO9fMem48t5izeXPnYs3DXJheXxs99J
	qJcETSDLTQRIBSdfU6yx/qqCwBjfkwry+w==
X-Google-Smtp-Source: AGHT+IFoW6iJF+Ey3/jtmNGviluFWywXp5sfgtMCyubYQvnYN+qp2eeTdbjYHrOObBkPLNMSwq18ng==
X-Received: by 2002:a05:620a:c43:b0:765:aa35:f03f with SMTP id u3-20020a05620a0c4300b00765aa35f03fmr192327qki.37.1693412085947;
        Wed, 30 Aug 2023 09:14:45 -0700 (PDT)
Received: from [192.168.2.166] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id c2-20020ae9e202000000b0076daaccb7f7sm3819610qkc.135.2023.08.30.09.14.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 09:14:45 -0700 (PDT)
Message-ID: <300125d8-60a1-339e-128e-ebe4faed86b1@gmail.com>
Date: Wed, 30 Aug 2023 12:14:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <584480455.3301411.1693407472738.ref@mail.yahoo.com>
 <584480455.3301411.1693407472738@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <584480455.3301411.1693407472738@mail.yahoo.com>
Message-ID-Hash: QZFTLHUONNTU5S6EZ6OHWQ7GRE3JVBDL
X-Message-ID-Hash: QZFTLHUONNTU5S6EZ6OHWQ7GRE3JVBDL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 problem with LLLLL
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZFTLHUONNTU5S6EZ6OHWQ7GRE3JVBDL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4437065567457412742=="

This is a multi-part message in MIME format.
--===============4437065567457412742==
Content-Type: multipart/alternative;
 boundary="------------0pI0rdb1P22za2D1GENIQVc9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0pI0rdb1P22za2D1GENIQVc9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/08/2023 10:57, Andrea De Jesus Torres via USRP-users wrote:
> Hi everyone,
>
> i am working with openairinterface, and i am experiencing a strange=20
> behavior with the X310 (branded USRP-2954R before flashing).
> When i run a code with a certain configuration file using a B210=20
> everything works as expected, while when using an X310 i almost always=20
> end seeing a flood of LLL on the screen.
> That happens, for those who have familiarity with openairinterface,=20
> either running the gNB or the UE.
>
> The X310 is flashed with the XG firmware using uhd 4.4 (but also with=20
> other 4.x versions happens the same) and connected to an Ubuntu 22.04=20
> machine with an ethernet cable.
> The USRP an the network interface are configured according to the=20
> Ettus guide=20
> https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_OpenAirI=
nterface_(OAI)_on_the_USRP_2974
>
>
> Though, with the uhd test utilities, like benchmark_rate, no issue appe=
ar.
>
> Do you have any idea on how i could debug this situation?
> Already asked the OpenAirInterface, but no reply yet.
>
> thanks,
> andrea
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Well, 'L' is "late packet".=C2=A0 It's likely that the software is asking=
 for=20
a packet time that is too "tight" given whatever latency is
 =C2=A0 produced by your systems network stack.

OAI probably needs to investigate this.


--------------0pI0rdb1P22za2D1GENIQVc9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/08/2023 10:57, Andrea De Jesus
      Torres via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:584480455.3301411.1693407472738@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"yahoo-style-wrap" style=3D"font-family:Helvetica Neue=
,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi everyone,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">i am working with
          openairinterface, and i am experiencing a strange behavior
          with the X310 (branded USRP-2954R before flashing).</div>
        <div dir=3D"ltr" data-setdir=3D"false">When i run a code with a
          certain configuration file using a B210 everything works as
          expected, while when using an X310 i almost always end seeing
          a flood of LLL on the screen.</div>
        <div dir=3D"ltr" data-setdir=3D"false">That happens, for those wh=
o
          have familiarity with openairinterface, either running the gNB
          or the UE.<br>
          <br>
          The X310 is flashed with the XG firmware using uhd 4.4 (but
          also with other 4.x versions happens the same) and connected
          to an Ubuntu 22.04 machine with an ethernet cable.<br>
          The USRP an the network interface are configured according to
          the Ettus guide=C2=A0<a
href=3D"https://kb.ettus.com/Getting_Started_with_4G_LTE_using_Eurecom_Op=
enAirInterface_(OAI)_on_the_USRP_2974"
            rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">https://kb.ettus.com/Getting_=
Started_with_4G_LTE_using_Eurecom_OpenAirInterface_(OAI)_on_the_USRP_2974=
</a><br>
          <br>
          <br>
          Though, with the uhd test utilities, like benchmark_rate, no
          issue appear.<br>
          <br>
          Do you have any idea on how i could debug this situation?<br>
          Already asked the OpenAirInterface, but no reply yet.<br>
          <br>
          thanks,<br>
          andrea<br>
          <br>
        </div>
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
    Well, 'L' is "late packet".=C2=A0 It's likely that the software is as=
king
    for a packet time that is too "tight" given whatever latency is<br>
    =C2=A0 produced by your systems network stack.<br>
    <br>
    OAI probably needs to investigate this.<br>
    <br>
    <br>
  </body>
</html>

--------------0pI0rdb1P22za2D1GENIQVc9--

--===============4437065567457412742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4437065567457412742==--
