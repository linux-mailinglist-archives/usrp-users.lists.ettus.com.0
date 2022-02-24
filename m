Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0119C4C2E8D
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 15:39:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5FD43852B3
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 09:39:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OrIFBRcw";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 034AA3850F1
	for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 09:39:02 -0500 (EST)
Received: by mail-qv1-f41.google.com with SMTP id g23so3860164qvb.4
        for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 06:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=/SozQJtJeKbusLdGK3ztrGr/Z0rAGdZZ9iZ45wQVX+U=;
        b=OrIFBRcwJHLgppPAOSYeYVACh9BgIfT0iOUQo6nSN9xlzFxSg1206hIdDbvplcr+5B
         S0aXUMkoeckFgDslIr2NAlGGPiUUNezNFha62m6bhvYEcnO3fUbiyxVUSh2tNTMf5zsK
         ME6fR0XrdfCfAYTpgK8zb1jQHWCQxiFxyIoqjNdqjbf14iKkzaSn/afMNSOa/DK+OHwq
         Ap6azBkLPxNQTzViJUxu0A4VBB1Lk0PUWsrOPLkHwYFoB5eMENhvr0huRtF1nMZsFEyB
         ymPzcLyjjRS7qB/whtBxsipO8POnVaH0ZCWNws9yjYyLGdNrn1kZij+/iQ0f5p0qHtbg
         ts2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=/SozQJtJeKbusLdGK3ztrGr/Z0rAGdZZ9iZ45wQVX+U=;
        b=gkKY5MmC/klu21mG91tDE3hhJX2cZ5NhokyfQGeFc2pDtBEYe4dHmTr25Cv8bH/LTm
         iyr2PZQ2998AnIHCtCq/eDzWFaWXDjub3Hb16PIco0n7Mj6kkf6etd2hLx639zdJmB7r
         2YUKN+RTYdYpodujObBD/RWJcBoKYcI+nMd+2CC5fvsZGFCbwQdAHjLmiasJk1NOD+vm
         hMOkkbYiea2rZ97SRRX726Qm4KzNMKTiqo+G8OTSgmTqIu5gYIL+3jcoYorXR+1VCcFb
         n+ar12WYWcRGA6bFwMAbN9YOB5ECj39/4TKKZnU7XtT2/Eh8qAV9lDAVuCSiE9pL3TDl
         E1yA==
X-Gm-Message-State: AOAM5333wUoYXxLzsfMep5XijsyIKQkAGBXOsR4rEswixVCJUuMLEozt
	b1OpMZrds/PwfCgqCBRfLeo=
X-Google-Smtp-Source: ABdhPJx2mlSwcEBlbYAme+rtEyv6PV3R8tvkJUkeOG99bbBU4G3sEp8Fwp87JrHcaEI/rBYyDyZEFA==
X-Received: by 2002:a05:622a:11c4:b0:2de:b73:1762 with SMTP id n4-20020a05622a11c400b002de0b731762mr2633344qtk.59.1645713542335;
        Thu, 24 Feb 2022 06:39:02 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id d65sm1390344qkg.104.2022.02.24.06.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Feb 2022 06:39:01 -0800 (PST)
Message-ID: <9ec1fbb3-fb45-eabf-2a11-f686aa4c9148@gmail.com>
Date: Thu, 24 Feb 2022 09:39:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: page <pageheller@gmail.com>, Brian Padalino <bpadalino@gmail.com>
References: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com>
 <eb4ae5b3-c829-54a1-faf6-4521d9cf5c6a@gmail.com>
 <CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmail.com>
 <d70713c5-a3a5-203a-0832-fc574283e038@gmail.com>
 <Mailbird-72d0444a-a4fb-4861-9e25-1f4c17111a7d@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Mailbird-72d0444a-a4fb-4861-9e25-1f4c17111a7d@gmail.com>
Message-ID-Hash: JR6B4H6OKOISK2NDJT37VEW4CWCGKFXF
X-Message-ID-Hash: JR6B4H6OKOISK2NDJT37VEW4CWCGKFXF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?C=c3=a9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JR6B4H6OKOISK2NDJT37VEW4CWCGKFXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8054445708728121265=="

This is a multi-part message in MIME format.
--===============8054445708728121265==
Content-Type: multipart/alternative;
 boundary="------------LMEXzEullcrnjewIGHbZNo8t"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------LMEXzEullcrnjewIGHbZNo8t
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-24 09:27, page wrote:
> I have seen the "stuck" behavior, although it was about a year ago and=20
> I doubt I could reproduce it again. It occurred as I streamed two Rx=20
> inputs at 20 MSPS on a B210 to a Raspberry Pi 4 USB 3.0. It was model=20
> v1.1, which has known issues in the hardware implementation of USB=20
> 3.0. The pi is up to v1.4 now. --page
>
> --=20
> page heller
>
I've never seen that on the small flotilla of B210s that I run, and the=20
main issue seems to be related to X310, which is decidedly different
 =C2=A0 hardware.

But thanks for the report!


--------------LMEXzEullcrnjewIGHbZNo8t
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-24 09:27, page wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Mailbird-72d0444a-a4fb-4861-9e25-1f4c17111a7d@gmail.com=
">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div id=3D"__MailbirdStyleContent" style=3D"font-size:
        10pt;font-family: Arial;color: #000000;text-align: left"
        dir=3D"ltr"> I have seen the "stuck" behavior, although it was
        about a year ago and I doubt I could reproduce it again. It
        occurred as I streamed two Rx inputs at 20 MSPS on a B210 to a
        Raspberry Pi 4 USB 3.0. It was model v1.1, which has known
        issues in the hardware implementation of USB 3.0. The pi is up
        to v1.4 now. --page
        <div><br>
        </div>
        <div class=3D"mb_sig">--
          <div>page heller</div>
        </div>
        <br>
      </div>
    </blockquote>
    I've never seen that on the small flotilla of B210s that I run, and
    the main issue seems to be related to X310, which is decidedly
    different<br>
    =C2=A0 hardware.<br>
    <br>
    But thanks for the report!<br>
    <br>
    <br>
  </body>
</html>

--------------LMEXzEullcrnjewIGHbZNo8t--

--===============8054445708728121265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8054445708728121265==--
