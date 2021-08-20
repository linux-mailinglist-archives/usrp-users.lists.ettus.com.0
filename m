Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD3C3F243D
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 02:52:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 143AD380D1E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 20:52:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QXwL6ae2";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D47C380D74
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 20:51:58 -0400 (EDT)
Received: by mail-qv1-f42.google.com with SMTP id bu14so4695961qvb.1
        for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 17:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=34bTE9bpYszP8Syt/VEDnJ4BbL8u69o2KsTcA7xkT/o=;
        b=QXwL6ae2kZDyR/OUmb0SP4f4Ou7CwdscNYU5m90LT00Up6ZWQjflUco37Ep6BA1Nes
         90FN/OdnS4N6PQoKFcr5qMSjBsNMKj4Jo6joQGwzXZB7Jrxr2JWuUUWNSPVVmqHoUjBq
         jexpsT2Jk0rqu6wy4aURk5GZA9egPi9nrBaNdG1KtV2O0kvN5u3nkLaVcWaANbipbdcf
         F241s0Hb0nscwpLdKEHdRwgMupV2SWQqmTnNPG2e4R5+smw9FwrKmkEw62CFCgUV64W9
         CLAgAqmvRSy0N897g/VZisOB4GU395Ow/7vP2BbsQnLV8aWnaJFwuXnUkUTig3SKCwLf
         OuOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=34bTE9bpYszP8Syt/VEDnJ4BbL8u69o2KsTcA7xkT/o=;
        b=BH9QccTrgtlroo/xQ+195H2rPq9ScAm24A+90NhjtJms1PAgn+gHVvVYIU+IFlpbgU
         xm5ZV7LZUWElLZIUnVgJD5ex8uW6t6E1MZb5IJdVdG1lvk8E7MoehQA8BI/zcDqx/RKt
         J1+ouJPHjfHgYbWpKTOH58LJpuFYEQAPQ71aENUyQwmPNxfeWQaX1WIJojUAm2nr7n5O
         IaaIuIX+56aVlfNQuxqlNmd+7Sdh9vbnaaB9YOG4cdHr261M0hKM63HxeVJKi0i/XPCb
         vo4u5BibOZZg38lRlwYUAmU5lbgEBfBBf7hSkNieQJiZRXzpXlp0yRGMLS7aEAbOOXoE
         vyhQ==
X-Gm-Message-State: AOAM532mPTZ/uGWkss/TS/pvrDbFS5ojCCNyRnyN63Ru4pChgc7yaszS
	Sw31LH+ggjClr0sGqFi+2vZqQkCYGKZc9Q==
X-Google-Smtp-Source: ABdhPJwWHZDAbjplMTzhp9OTdQgAVlo9qBSAoW7sT/BFY6Qcgfybvs8k5dxu1GapgmVqyuINMR91qA==
X-Received: by 2002:a0c:8c0c:: with SMTP id n12mr17552995qvb.13.1629420717714;
        Thu, 19 Aug 2021 17:51:57 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id k24sm2423325qki.11.2021.08.19.17.51.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 17:51:57 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <xeIUORuE5ff1Gf8CFx0G3x0DV59z9P7h1Ree8y1VU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <67166a9b-a17a-86db-2368-df506dfd4508@gmail.com>
Date: Thu, 19 Aug 2021 20:51:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <xeIUORuE5ff1Gf8CFx0G3x0DV59z9P7h1Ree8y1VU@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: OJ3EXMVSU76H2C5ZAPHTO3BV4Q7C4FTN
X-Message-ID-Hash: OJ3EXMVSU76H2C5ZAPHTO3BV4Q7C4FTN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OJ3EXMVSU76H2C5ZAPHTO3BV4Q7C4FTN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0391205249868723342=="

This is a multi-part message in MIME format.
--===============0391205249868723342==
Content-Type: multipart/alternative;
 boundary="------------8F07BD64E18400537072A631"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8F07BD64E18400537072A631
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-19 6:33 p.m., thebouleoffools@gmail.com wrote:
>
> Is there any documentation on the Python API? The only thing I could=20
> find about it is that I should reference the C++ API. I=E2=80=99m tryin=
g to=20
> get data from the gps board. There appears to be C++ functions for=20
> this (e.g. usrp->get_mboard_sensor("gps_locked",0) ), but I can=E2=80=99=
t seem=20
> to find the same functions in python using tab completion in the=20
> interpreter console.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
I can confirm that on Ubuntu 20.04, using the packaged versions of uhd,=20
uhd-host, libuhd, and python3-uhd

I can query sensors through python:

import uhd

usrp =3D uhd.usrp.MultiUSRP("type=3Db200")
for s in usrp.get_mboard_sensor_names():
 =C2=A0=C2=A0=C2=A0 print (str(usrp.get_mboard_sensor(s)))




--------------8F07BD64E18400537072A631
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-19 6:33 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:thebouleoffool=
s@gmail.com">thebouleoffools@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:xeIUORuE5ff1Gf8CFx0G3x0DV59z9P7h1Ree8y1VU@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Is there any documentation on the Python API? The only thing I
        could find about it is that I should reference the C++ API. I=E2=80=
=99m
        trying to get data from the gps board. There appears to be C++
        functions for this (e.g.
        usrp-&gt;get_mboard_sensor("gps_locked",0) ), but I can=E2=80=99t=
 seem
        to find the same functions in python using tab completion in the
        interpreter console.</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    I can confirm that on Ubuntu 20.04, using the packaged versions of
    uhd, uhd-host, libuhd, and python3-uhd<br>
    <br>
    I can query sensors through python:<br>
    <br>
    import uhd<br>
    <br>
    usrp =3D uhd.usrp.MultiUSRP("type=3Db200")<br>
    for s in usrp.get_mboard_sensor_names():<br>
    =C2=A0=C2=A0=C2=A0 print (str(usrp.get_mboard_sensor(s)))<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------8F07BD64E18400537072A631--

--===============0391205249868723342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0391205249868723342==--
