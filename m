Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C765A3F241A
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 02:32:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A72D33812E5
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 20:32:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eLcdfErm";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 69ABA383F8D
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 20:32:07 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id e14so9207083qkg.3
        for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 17:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=qxbMQeWERmgy5hWSGSaTGaoIqAf7KdK6S6MvJDh9Pnw=;
        b=eLcdfErmbkdrCVIZEJOr/PQpw5w6dHRtwTjhsp9Vl2JteOW8qdDzFobCw784As1VjZ
         RAXue9A/piZPAiOt1xxaioJHjhTp2zeFUyBvq3+gmS2TPFgBZ7+ksmVOb+4kGPCJZZHC
         D2nDCV4XDuRXAfxyBSCCPkguXeymptby/CzWzEIhzspT7Fd+yoQLtynr26aZZArk8pkh
         dgOS68g5HdS+yYRepAk7twfDHhJZ6AD3dfZXfSx6c75AUtpl+x1HbNnPqLAsbGQc2V5E
         Qk8o0wyYUEDEGQ5eWx1R5uY9A0Pj25gS0YBSf9vJa4qJGf1/l9KP8YmDubWrWqEFkLud
         ZcGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=qxbMQeWERmgy5hWSGSaTGaoIqAf7KdK6S6MvJDh9Pnw=;
        b=mKbmBltbTwWFdvVP1SVOTnntURPeqeSjIGswmwxyix+KCmIkk3yv+Lk6Wu+77Zh7/n
         ZXCU6lgFCRfcArUhsT5T177NhrAASwxTcOkulGQSouCWsDU6KBw+Q00HKULIKJ5XT1tc
         j+fmPj8vLR/qDJqDeEeSeakIt7D7bRXCkXoZ0qPBn5LgVsIcSMNGP3iUnfR1eKSuoCD9
         U5xu3nQuNvkzIfmHdFLJ9cCY57uESGX3GpMDqmLyzypKLuCtPUwoSpkB9jZumnv1v8q1
         4sVtC3jgcAgrkC2Ob/et8r/PPuCq9JYZlRL4jmSovTGKHqiVAmnJofkrWEEAyiDAOq20
         OvgA==
X-Gm-Message-State: AOAM532qYeYzswGuc8WYxsCa8UnMLMXXV9ZXpnt3LjaHvjf3A8vJ2nnl
	Eze4zVIp66dGHPmLMY+67qYPmld7F6J0CQ==
X-Google-Smtp-Source: ABdhPJxQ+r7NgNNz6BC6pWXd8RZUBTpe6AiVoPosybSZbXzdCIdauJGulxEzw/2dBOCkhYEjCs0INQ==
X-Received: by 2002:a37:4197:: with SMTP id o145mr6261904qka.340.1629419526637;
        Thu, 19 Aug 2021 17:32:06 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id b22sm2018505qtr.2.2021.08.19.17.32.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 17:32:06 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <xeIUORuE5ff1Gf8CFx0G3x0DV59z9P7h1Ree8y1VU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <240e1e97-c85d-072f-3783-3d51bc49d1dc@gmail.com>
Date: Thu, 19 Aug 2021 20:32:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <xeIUORuE5ff1Gf8CFx0G3x0DV59z9P7h1Ree8y1VU@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: E5KDG4O2Z5OKI2CSVJL3ZGHDL32VCMEZ
X-Message-ID-Hash: E5KDG4O2Z5OKI2CSVJL3ZGHDL32VCMEZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E5KDG4O2Z5OKI2CSVJL3ZGHDL32VCMEZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1460535601768320131=="

This is a multi-part message in MIME format.
--===============1460535601768320131==
Content-Type: multipart/alternative;
 boundary="------------71ED94A6470651975AD61F3B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------71ED94A6470651975AD61F3B
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
Have you looked at the Python API examples?

<prefix>lib/uhd/examples/python



--------------71ED94A6470651975AD61F3B
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
    Have you looked at the Python API examples?<br>
    <br>
    &lt;prefix&gt;lib/uhd/examples/python<br>
    <br>
    <br>
  </body>
</html>

--------------71ED94A6470651975AD61F3B--

--===============1460535601768320131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1460535601768320131==--
