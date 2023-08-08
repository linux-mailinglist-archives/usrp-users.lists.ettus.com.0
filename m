Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE858773AC0
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 16:41:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D02403841A3
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 10:41:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691505700; bh=oJflXlC7JVmYlcH1PMh6JroQ1NOieiacu1qVxdkgOIY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=meM/LZMX/o5LxHJb3aZRLhWQDsq2QiTvzHVrhWqZ6gNlk90kHHbzMORAPXdY+Vvjq
	 ic8bzMZn4eeJ+mdyPFbOR2dFVCNiww47JRbbpWGbigCHtseVAxattkE0q1zmIhaM8k
	 stQR//bjShTUhZlRvuVilnVuwp4c+WBlhlBHXFLWcQ7N/+J8x1QWgyBQ8xPfT1vrfM
	 +vlV3q+VVXWGboLA0ZBba6ReXyIIheorJRfbv4k2tL7OhlOcray5HZaG/4nIZnBA2D
	 r5szvK/WoQVp8F7xT4i8mBiIuB0cEzCIhWFG+6qK+gCAn//9MFuyPghbL1CIl3qW/L
	 vR6+Uh04NOlPg==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 06152384088
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 10:41:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Gs+Hcj0M";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-63d1238c300so28769886d6.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 07:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691505666; x=1692110466;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ofzGqMIOlKjnxv2kdm3cZS/yJ+GeJtIhZ3TE3JWeMFo=;
        b=Gs+Hcj0MZiPpeWi4Q/9I5BALWS3znTAB5vaCCqvBuy6Aowsb5mq31Wc8XCl0xktxpE
         3dq6MeusZW3qXwlK7h+ECTuUENdJlpPkraGGagW3wTHt1AdMIfwRf6aSiupU3MNTBhzd
         nPHOst2OiuGTDe45k7ZglcNqm0A5QU5ky3xw6oYyKpo4EJE/6SyVAcinAcz04LXaM04+
         GBdaO23OKp+SL/K+XYVh8sS9z43pEyuO2WIjLxZsXGoenQCZdEQ+M1Af9fWx85oKcnKT
         B9/FNGc2elnK+td7sgDyoZvsPmmSsrLLW6dek46wSvEALBua5IPICkXXeatqZWtRPO2o
         RjLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691505666; x=1692110466;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ofzGqMIOlKjnxv2kdm3cZS/yJ+GeJtIhZ3TE3JWeMFo=;
        b=E0UU4lZ33G49jBglVMIE3RDabiA5zIC5JzPWeC7fNyyAX3h3hajerc/NQR9Bq18baU
         BJIg5foaBX88MjQ0aOSV9xAEH8PLbwa+EK7/ri+gPfGazlncbTFc0uODy2utrvwHufqC
         K7enF8ss8DWUIYS/lSoadJCVmdtVtN+IoJbHBxR/QAM64UmkPJcIsY8fGZMkXIi9F4mS
         VcdKRJ0rCofod9AVoq55xz87CgWk5Zs5gWHmau9QlQYY0nssfghWG8t8BrgaB7kmB4VJ
         5JE9Y3oUnhBQeJmaxqWw5NWIylDL2O4I+7RudzV0RBU/bNvcfMvkBa+dTjL2v0i+6V6b
         mgtA==
X-Gm-Message-State: AOJu0YzGWjXLCDmhZ9V8XtKJU+ibfzt7NKTzEu9aLuPkLJh2kezC7YLj
	7OyYh+2RJBdZf+DYvJ/3TEKpCTVvn9E=
X-Google-Smtp-Source: AGHT+IEdxo/7eJAXCJvngjfgvr6YhcLJByQbpBuVXgF87WrnxkAz7sIZQBfExLK6wEd2iwr9VrolSg==
X-Received: by 2002:a05:6214:8ef:b0:631:6eea:c4f0 with SMTP id dr15-20020a05621408ef00b006316eeac4f0mr9263485qvb.48.1691505665894;
        Tue, 08 Aug 2023 07:41:05 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id d24-20020a05620a159800b00754b7ee6922sm3317186qkk.9.2023.08.08.07.41.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 07:41:05 -0700 (PDT)
Message-ID: <4f95ecb8-812a-00dc-e8c2-c1cec8beb9f1@gmail.com>
Date: Tue, 8 Aug 2023 10:40:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k@lists.ettus.com>
Message-ID-Hash: B4AI4U3JNFXKIBHWB3Q4M6IQRLIDA74F
X-Message-ID-Hash: B4AI4U3JNFXKIBHWB3Q4M6IQRLIDA74F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B4AI4U3JNFXKIBHWB3Q4M6IQRLIDA74F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1431453363582653521=="

This is a multi-part message in MIME format.
--===============1431453363582653521==
Content-Type: multipart/alternative;
 boundary="------------tb9jiGPOkHOY8rX4qRCx0hDE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------tb9jiGPOkHOY8rX4qRCx0hDE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/08/2023 09:36, edenmclaughlin123@gmail.com wrote:
>
> Dear Marcus,
>
> When I type that, it prints the same run-time error:
>
>
> |./usrp_burn_mb_eeprom =E2=80=94read-all|
>
> *Creating USRP device from address: *
>
> *[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11;=20
> UHD_4.3.0.0-release*
>
> *Error: RuntimeError: B200 unknown product code: 0x3120*
>
>
> What=E2=80=99s interesting is the device firmware can be loaded with po=
wer=20
> cycle but the same error persists throughout the UHD utilities and=20
> usrp related code.
>
> I think the desired output should be similar to the following as=20
> provided on About the Motherboard and Daughtercard EEPROM on USRP=20
> Devices=20
> <https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_=
USRP_Devices>=20
> under B200/210 and B200mini EEPROM:
>
> Fetching current settings from EEPROM... EEPROM ["revision"] is "4"=20
> EEPROM ["product"] is "2" EEPROM ["serial"] is "30AD2D4" EEPROM=20
> ["name"] is "MyB210"
>
>
> Regards,
>
> Eden.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I think the basic problem is that when you had it load up that FPGA=20
image as the FX3 bootloader image, the EEPROM values were
 =C2=A0 over-written--the FX3 "load me a new=C2=A0 bootloader" code has n=
o idea=20
what the internal semantics are.

The .img file that Ettus ships in ...uhd/images doesn't include values=20
for the EEPROM (which makes sense, because they're
 =C2=A0 set at the factory).

I'm trying to find out if there's a bootloader image that includes=20
"sane" values for the EEPROM that can be loaded using
 =C2=A0 fx3_utils.


--------------tb9jiGPOkHOY8rX4qRCx0hDE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/08/2023 09:36,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:edenmclaughlin=
123@gmail.com">edenmclaughlin123@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:D3Mmg3UeSIg7UDt2elqtWQJj6Ycgp6RSbQQIWZ0k@lists.ettus.co=
m">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Dear Marcus,</p>
      <p>When I type that, it prints the same run-time error:</p>
      <p><br>
      </p>
      <p><code>./usrp_burn_mb_eeprom =E2=80=94read-all</code></p>
      <p><strong>Creating USRP device from address: </strong></p>
      <p><strong>[INFO] [UHD] linux; GNU C++ version 11.3.0;
          Boost_107400; DPDK_21.11; UHD_4.3.0.0-release</strong></p>
      <p><strong>Error: RuntimeError: B200 unknown product code: 0x3120</=
strong></p>
      <p><br>
      </p>
      <p>What=E2=80=99s interesting is the device firmware can be loaded =
with
        power cycle but the same error persists throughout the UHD
        utilities and usrp related code.</p>
      <p>I think the desired output should be similar to the following
        as provided on <a
href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPRO=
M_on_USRP_Devices"
title=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPR=
OM_on_USRP_Devices"
          moz-do-not-send=3D"true">About the Motherboard and Daughtercard
          EEPROM on USRP Devices</a> under B200/210 and B200mini EEPROM:<=
/p>
      <p>Fetching current settings from EEPROM... EEPROM ["revision"] is
        "4" EEPROM ["product"] is "2" EEPROM ["serial"] is "30AD2D4"
        EEPROM ["name"] is "MyB210"</p>
      <p><br>
      </p>
      <p>Regards,</p>
      <p>Eden.</p>
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
    I think the basic problem is that when you had it load up that FPGA
    image as the FX3 bootloader image, the EEPROM values were<br>
    =C2=A0 over-written--the FX3 "load me a new=C2=A0 bootloader" code ha=
s no idea
    what the internal semantics are.<br>
    <br>
    The .img file that Ettus ships in ...uhd/images doesn't include
    values for the EEPROM (which makes sense, because they're<br>
    =C2=A0 set at the factory).<br>
    <br>
    I'm trying to find out if there's a bootloader image that includes
    "sane" values for the EEPROM that can be loaded using<br>
    =C2=A0 fx3_utils.<br>
    <br>
    <br>
  </body>
</html>

--------------tb9jiGPOkHOY8rX4qRCx0hDE--

--===============1431453363582653521==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1431453363582653521==--
