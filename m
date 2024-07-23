Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F208693A589
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 20:25:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1159D3859D1
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 14:25:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721759133; bh=SFBhvDUFX17wk1slbxjoKvbq9v7rS2eW+gJN3SHs6IQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=x4GMXBdiCM+p9Lpn0WZlQ+X/S8RP5oiTvbJjip+RwJbNiBxH9WG22uplv31XA8r5g
	 zvS7RSfNRCjtHBrJTOMKRoYRG2uoComlGEQFZwWY6f9hRmDesoUZRRSZuGGPzBp4IG
	 VnoXLe7vwps8JboP5MxgEriN9bL7IdhcKNY7z1m3nOCP33ccF29nyx7YUWB0YOLpHa
	 Qhyy7EqG13IYIOSQqHCc7spKo4XGgehqc4n4tn/1cTII9cvv5WokYPVQS6APUBQawR
	 YOLF+NaOdhXtPOGmT4xttphXau/ooKgyTS7XYwqRM0rgJCAPwWKiJT9kfmmWVMZ+lh
	 GTVvdSy4KV/3A==
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 0497D385966
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 14:24:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KkMHeClz";
	dkim-atps=neutral
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-66a1842b452so40909707b3.3
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 11:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721759080; x=1722363880; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EBVNJLSkKXRI4F92MojaELiz3YbYbkP5WcmvxwnzQ5w=;
        b=KkMHeClzJ4YJebzYb9rzuBdp9p6lJ+i8afFSeJOvHaKdfNw1igjKHjbpkdXQVS0isD
         nBqnvvtaxYyhYUCYDxos4OfGtLUNr5IUZHuR0ajBYeAWsY6xE+42PR9y1ZtHk1KFJTgR
         bpO1VKOG/P7PoyjNewYhT+EO6HCXvZCIqUY5N95uSIm/3dVVuDNbTafUJKPJZJHYpds8
         QvUaqqnFPBM0OtczH90PgEC2IgLaL0DjUZQMZfzrnpCZoQOBeAtOLmMI/OzbWO5UQCE9
         O9z23js9VvJ1PG/pfZNqDO/n8UNgQf/pxaqs2BWz1CHRvzmYJGbNH7lnuEQXl32qUP92
         GCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721759080; x=1722363880;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EBVNJLSkKXRI4F92MojaELiz3YbYbkP5WcmvxwnzQ5w=;
        b=leU8RipXGuBixALUBI1CshIjieZIsXy7L5wzX6zOdG8h6Bnv6qKfjURNgFUr/lHWUR
         urgBjx0FUWhCkC7tCiZwiX9S10cTD2Mbso0P3Mahu+LK/3MdOXy/jRofUvOuCmqCMXKY
         tS7uhsChG2HD3ediVA7JcpJIfrnXsbNauzumST3jBkOP59pS3p1/KhhLR1EWFLdqWU9k
         0+VC+Y/IQSyirN275j+A+UKP0toxKyegCXBXZ+HwrQqbx33Soct76egwXPr5StMINt6c
         l5zeiAuUsP21cRL7qYVqhUecjw/UJlVOEJ6xl3fTRYpAGQfUitJGlNMv8XWgUQTpnW3W
         QACg==
X-Gm-Message-State: AOJu0YwFVOj5McXz7dZfJ0+rdL1RARfb/+U7Atxvx8+ekDMKnFBA2FE9
	GJIifT4p1NKKxYvSTU09oz5ZCUmVohzDgPM78gK+HmxBzko+MMRa5Kg2mw==
X-Google-Smtp-Source: AGHT+IF4Q9wBzz4aSXiJmS2mtvG9qK+Xsvhly/hYImxv6cyUT6esWyOyU/DEwiN8FKrjGrDBhEeJXw==
X-Received: by 2002:a05:690c:2c83:b0:65f:9451:13dd with SMTP id 00721157ae682-671f55b492bmr6539527b3.42.1721759079934;
        Tue, 23 Jul 2024 11:24:39 -0700 (PDT)
Received: from [192.168.211.247] ([142.183.237.33])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b7b20e9204sm47579346d6.33.2024.07.23.11.24.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 11:24:39 -0700 (PDT)
Message-ID: <d53b4426-7d8a-4549-8d71-7fc02b1cf997@gmail.com>
Date: Tue, 23 Jul 2024 14:24:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com>
Message-ID-Hash: EY5RFBFAUFEYPMHXCR46WMRM7OFDISHO
X-Message-ID-Hash: EY5RFBFAUFEYPMHXCR46WMRM7OFDISHO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: White Rabbit and N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EY5RFBFAUFEYPMHXCR46WMRM7OFDISHO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3969725767195980357=="

This is a multi-part message in MIME format.
--===============3969725767195980357==
Content-Type: multipart/alternative;
 boundary="------------w4bk12lEBkkBiO0mlAZgfhYX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------w4bk12lEBkkBiO0mlAZgfhYX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 23/07/2024 11:12, Giuseppe Santaromita wrote:
>
> Hi all,
>
> I need to use some N310s with White Rabbit (WR) and I have some questio=
n:
>
> Why in "Features" here (N310): link=20
> <https://www.ettus.com/all-products/usrp-n310/> there is no White=20
> Rabbit, while here (N321): link=20
> <https://www.ettus.com/all-products/usrp-n321/> yes? Here: link=20
> <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%=
E2%84%A2_N3xx_Devices>=20
> the link talk about the N3xx generic. So, seems to be an error on the=20
> website?
>
> Here link=20
> <https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%=
E2%84%A2_N3xx_Devices>=20
> I find: "The USRP N3xx use the SFP+ 0 port for White Rabbit and SFP+ 1=20
> port for IQ streaming. This port configuration requires the White=20
> Rabbit =E2=80=9CWX=E2=80=9D FPGA bitfile".
>
> Here link=20
> <https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Du=
al_10Gb_Streaming_SFP_Ports_0.2F1>=20
> says that all possible FPGA are XG, HG and WG. How about the WX? Is=20
> WG? Is the same? Was a typo?
>
> Again, same link, says that "The XG FPGA image must be loaded for SFP=20
> Port 0 to operate at 10 Gb speeds. If the HG image is loaded, the port=20
> will be unresponsive at 10 Gb speeds". How about the WG?
>
> It is sure that White Rabbit can work with the N310? If the WX FPGA=20
> it's flashed, teoretically I can use one=C2=A0 SFP+ port for WR and one=
=20
> SFP+ port for I/Q streaming. I need to be sure that the speed of the=20
> second port is 10 GbE (and not reduced to 1 GbE).
>
> Thanks in advance
>
> Giuseppe
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
According to my contacts, the N310_WX indeed puts WR on sfp0, and 10GiGe=20
on sfp1.


--------------w4bk12lEBkkBiO0mlAZgfhYX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 23/07/2024 11:12, Giuseppe
      Santaromita wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi all,<br>
      </p>
      <p>I need to use some N310s with White Rabbit (WR) and I have some
        question:</p>
      <p>Why in "Features" here (N310): <a
          href=3D"https://www.ettus.com/all-products/usrp-n310/"
          moz-do-not-send=3D"true">link</a> there is no White Rabbit,
        while here (N321): <a
          href=3D"https://www.ettus.com/all-products/usrp-n321/"
          moz-do-not-send=3D"true">link</a> yes? Here: <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices"
          moz-do-not-send=3D"true">link</a> the link talk about the N3xx
        generic. So, seems to be an error on the website?<br>
        <br>
        Here <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices"
          moz-do-not-send=3D"true">link</a> I find: "The USRP N3xx use th=
e
        SFP+ 0 port for White Rabbit and SFP+ 1 port for IQ streaming.
        This port configuration requires the White Rabbit =E2=80=9CWX=E2=80=
=9D FPGA
        bitfile".=C2=A0</p>
      <p>Here <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Dual_10Gb_Streaming_SFP_Ports_0.2F1"
          moz-do-not-send=3D"true">link</a> says that all possible FPGA
        are XG, HG and WG. How about the WX? Is WG? Is the same? Was a
        typo?<br>
      </p>
      <p>Again, same link, says that "The XG FPGA image must be loaded
        for SFP Port 0 to operate at 10 Gb speeds. If the HG image is
        loaded, the port will be unresponsive at 10 Gb speeds". How
        about the WG?</p>
      <p>It is sure that White Rabbit can work with the N310? If the WX
        FPGA it's flashed, teoretically I can use one=C2=A0 SFP+ port for=
 WR
        and one SFP+ port for I/Q streaming. I need to be sure that the
        speed of the second port is 10 GbE (and not reduced to 1 GbE).</p=
>
      <p>Thanks in advance</p>
      <p>Giuseppe<br>
      </p>
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
    According to my contacts, the N310_WX indeed puts WR on sfp0, and
    10GiGe on sfp1.<br>
    <br>
    <br>
  </body>
</html>

--------------w4bk12lEBkkBiO0mlAZgfhYX--

--===============3969725767195980357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3969725767195980357==--
