Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 896C95545ED
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 14:04:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D9EC384003
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jun 2022 08:04:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655899473; bh=57O8tRpFHt/HExCQ9+2D+uGtGDEwO9BsKQDjiMH89iw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uY8SX3t4rFde/F6gtRjNJOManyohUN2k9+h8ysEyV97DX4zvOlB1JGc6uYZzobpLb
	 gdKqG3ozQJhjniYG59jR91ND2B16iR7Y+7tA01LYXUGR7I7klti0dr3uvfj1KnJT7N
	 neE2ndd0BI4Wj8P7vAAysIlmH7rF9FennBYvPyrPc+/SvGEOvY+MjLVqRy2HZX/qgA
	 TgsS/8//0qEsDQiYmmi8ce868c7DNcND4FjZaOh68Ure0GOVHAK4rqPOnFuhJLwIO4
	 E+ItQYa6twJw89nHuIovWCHNFXNi9tk2ZGMtcHkX97pl+/UjTzsYSy/YxlglHi/AeQ
	 hV1Nz+QFbQHzA==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id ADA3E383FE1
	for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 08:03:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZBruNYTm";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 88so21202764qva.9
        for <usrp-users@lists.ettus.com>; Wed, 22 Jun 2022 05:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Ko6l5B11Qpgun4Tprm6J+yhyo3CSlkBqtsshZb224sg=;
        b=ZBruNYTmq39tgCq4QUmN74bccTp4xp1PcacQjI/Q01q+FxMnOItDhCMjTqtRDipn5P
         391f5wlH6VoRbrI9QlhHGSG7VkERqBjYfB3lADJbqM1ddKtxQ1dOOWJwjOZ2Y9AeF3Gr
         tbHLnveUoaibZbHfhSgEF8TnRYAijHVyeUzSibe9y8t7K7h8z2yjYvFDoaksixhcTi45
         fCpKNzD5VTWIllgvhLZRiPZ2oh6f0CiAjLY2co1kFHVHvZV9+tMEEppiKEsELfvGcV0d
         wpgF4SfXItfk+0pJCdzRLqm9QhwDkrWcEKARY7gUbevaxnmcpMvO8qMzBTWFRokZ0VoX
         p8tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Ko6l5B11Qpgun4Tprm6J+yhyo3CSlkBqtsshZb224sg=;
        b=tdzuydkP/3u4EecwPctYk7Asc/CR0dpN77moR3xEUL78M+Ru8MWx8Id8AQj60kTFkL
         RNPXvBqUG6jtKjEBzWJG8huNwC2b3lwuyL4N0nu5LSbItTBL87PJUjAyzuTKoTQM+VhW
         zbDfMaiK5EBWX0dD/fq3hct0XbePDg0x/RuMNZu9u9tyHFYIUuwlhZEvhmWd8mLrRY4l
         XPaEBKT0qREEgt6gg311fcoXYtpWLuhbm3I7BHlZxrqeEzvxn8sgbsQtYBmR8GE7QGTT
         wqsxTgRM271GMxZpeQyyYp3/HgjxXpBZOzcfpWbcCdTfjm+TgHnQwKx5JWAv14BnEu5u
         FJlQ==
X-Gm-Message-State: AJIora//mfCIcM7E6twQVmj2HqQGXxuUrGOr4V5GqlHs5dYqpTeAkiNk
	Lzw8PhfZFOwru0uJNEDlwzGzBD2aud8mzRiY
X-Google-Smtp-Source: AGRyM1vviDRw37CdN4LnsfhEap+DSMwwaxp3jO6hD23bpWF6Vv927KOCkqD9JBeXUYLeVcOtP6xEGg==
X-Received: by 2002:ac8:4e49:0:b0:305:754:9f7d with SMTP id e9-20020ac84e49000000b0030507549f7dmr2555514qtw.97.1655899408338;
        Wed, 22 Jun 2022 05:03:28 -0700 (PDT)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id l1-20020a05622a174100b00304e70585f9sm15148048qtk.72.2022.06.22.05.03.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 05:03:27 -0700 (PDT)
Message-ID: <66c1063b-0983-9a84-ee95-3f058d1bb3f3@gmail.com>
Date: Wed, 22 Jun 2022 08:03:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P191MB11555349EC12CF9DC676F3F4F8B39@AM8P191MB1155.EURP191.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P191MB11555349EC12CF9DC676F3F4F8B39@AM8P191MB1155.EURP191.PROD.OUTLOOK.COM>
Message-ID-Hash: EJH3BS3I2MNSF5USNXMOKB7KAXXCABDQ
X-Message-ID-Hash: EJH3BS3I2MNSF5USNXMOKB7KAXXCABDQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency Switch with USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJH3BS3I2MNSF5USNXMOKB7KAXXCABDQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1236718120286085259=="

This is a multi-part message in MIME format.
--===============1236718120286085259==
Content-Type: multipart/alternative;
 boundary="------------6QXSIPDlZdySyyjoZQ0fSsGY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6QXSIPDlZdySyyjoZQ0fSsGY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-06-21 10:16, O=C4=9Fuzhan Gedikli wrote:
> Hello, I am trying to make frequency switch with USRP B200. I choose a=20
> frequency like 1GHz and I read maximum value in that spectrum within=20
> the range 200kHz bandwidth. Then, with the code i wrote, I change=20
> frequency dynamically like 2Ghz and so on. Switching from one=20
> frequency to another and reading maximum values, whole process i wrote=20
> takes like 370ms. My reading time is around 20ms.
>
> I need to make this switch around 10ms. Is this possible with USRP=20
> B200? or is my code wrong?
> Is there any information to give me about frequency switch speed of=20
> USRP B200?
>
The AD9361 is not particularly fast at changing frequency--there are a=20
lot of bits and pieces that need to be adjusted every time you switch=20
frequency.

It does have a "cache" to allow you to store pre-configs for a list of=20
frequencies, but UHD doesn't expose it, partially because managing it=20
would be quite
 =C2=A0 difficult.



--------------6QXSIPDlZdySyyjoZQ0fSsGY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-21 10:16, O=C4=9Fuzhan Gedi=
kli
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P191MB11555349EC12CF9DC676F3F4F8B39@AM8P191MB1155.EURP191.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <span class=3D"x_elementToProof"
          style=3D"margin:0px;font-size:12pt;color:rgb(0, 0, 0)
          !important;background-color:rgb(255, 255, 255)">Hello, I am
          trying to make frequency switch with USRP B200. I choose a
          frequency like 1GHz and I read maximum value in that spectrum
          within the range 200kHz bandwidth. Then, with the code i
          wrote, I change frequency dynamically like 2Ghz and so on.
          Switching from one frequency to another and reading maximum
          values, whole process i wrote takes like 370ms. My reading
          time is around 20ms.</span></div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <div class=3D"x_elementToProof"
          style=3D"margin:0px;font-size:12pt;color:rgb(0, 0, 0)
          !important;background-color:rgb(255, 255, 255)">
          <br>
        </div>
        <div class=3D"x_elementToProof"
          style=3D"margin:0px;font-size:12pt;color:rgb(0, 0, 0)
          !important;background-color:rgb(255, 255, 255)">
          I need to make this switch around 10ms. Is this possible with
          USRP B200? or is my code wrong?</div>
        <span class=3D"x_elementToProof"
          style=3D"margin:0px;font-size:12pt;color:rgb(0, 0, 0)
          !important;background-color:rgb(255, 255, 255)">Is there any
          information to give me about frequency switch speed of USRP
          B200?</span><br>
      </div>
      <br>
    </blockquote>
    The AD9361 is not particularly fast at changing frequency--there are
    a lot of bits and pieces that need to be adjusted every time you
    switch frequency.<br>
    <br>
    It does have a "cache" to allow you to store pre-configs for a list
    of frequencies, but UHD doesn't expose it, partially because
    managing it would be quite<br>
    =C2=A0 difficult.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------6QXSIPDlZdySyyjoZQ0fSsGY--

--===============1236718120286085259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1236718120286085259==--
