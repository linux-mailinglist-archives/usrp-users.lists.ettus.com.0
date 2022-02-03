Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 321F14A8F75
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 21:59:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 01FA8385DE8
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 15:59:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fmTlbx4P";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 32C7C38575B
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 15:58:24 -0500 (EST)
Received: by mail-qv1-f48.google.com with SMTP id s6so3656972qvv.11
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 12:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=phz7u5nwGZV8ZPBRmXmtkZaXDzyNIWbcfsLU73Jbvzg=;
        b=fmTlbx4P1eWDgTNtdlXnxFdHYzTfO/N+0jDz4Gs9Nj56cP+/9TTmzmelgfTM/j8K5D
         o8YAZVdw6PYZPLyAattLhp2XCOAVE9gbnMiM6BNSUOzjY1QzBYzpNxoDtTUc6VS6sR+6
         +bCCAGzAulDNTipYqtaNSwoB+OiHgXqvFPtbsrrWJZ/cFU7u9cmJg9G6HSzt8OVekkUL
         9AQgXKmDVQ5TT4rCMkfLZwcyK/6vV3/xm9hOA5UKF/hPSYclzTEHry2bZfVeQy9pDQDk
         cS8q5kZePC5Szdm+yZ4BiQW2xpDynjnBLMrsqlpIOecGEVw5uHUlz3CeGEB65OHWupS4
         zAoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=phz7u5nwGZV8ZPBRmXmtkZaXDzyNIWbcfsLU73Jbvzg=;
        b=50+x8/RV2SeG+vbGZsyaWN3khIN0lmmdp1ByuW65dQ6keVobNO+sDoLvSvZf+irXwB
         cHzRQXW6WeRvlFGJTrb9SPijcpzoAK/aaszR6znb0YD5P8wQylJ6KVEpwtdFfv5aPbMf
         2xyh9E/EmNpFO7MZv9zaJbviLHxjAsdpiD3taqWKXt6ok0u78usNXVpap/Mn82qdcwxZ
         Uu2gkia5pySgFL6TvHb/wJnVXaH9trdPmSfwqsyUcxcRtl/c/IVolsgLHloDXNr3XP+g
         wzsbS08OGUVadtC0NtK9i2GiFLwtcyPD39z3UGOhc4Jf+2Z9kBQC/UwCkMxl4mFvD1Zz
         mMKw==
X-Gm-Message-State: AOAM531Dkxlr0mGLw4YDR31b61hCUkcGMXo1xTCjMuHp5Cz+l9HFViiw
	qdlWlQNOfCaeBsIdQtbbuqE=
X-Google-Smtp-Source: ABdhPJwDnIlyOW14OeDwIbFJrlGQIOpsKTIuwQ5i79JqIFLDBtu80nAQGSsR2Xym5fQcYzuuVNitOw==
X-Received: by 2002:a05:6214:c2a:: with SMTP id a10mr32327047qvd.42.1643921903646;
        Thu, 03 Feb 2022 12:58:23 -0800 (PST)
Received: from [192.168.2.222] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id s14sm14431436qkp.79.2022.02.03.12.58.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Feb 2022 12:58:23 -0800 (PST)
Message-ID: <867c5303-ed95-82b2-f852-69d77ff0bee2@gmail.com>
Date: Thu, 3 Feb 2022 15:58:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: John Hodgins <johnyhodgins@gmail.com>
References: <CAGM_aqyAQ9M-vHC7NrbzrvbPd6_YJQ8vZiQRE9hSoPJZfM6vGg@mail.gmail.com>
 <9b49be1d-f09c-86b8-cdbe-3389243c29b9@gmail.com>
 <CAGM_aqwGjfYxw-9rVRfwSRyOV1KwEKheoZALjjjHFvyeVaddAQ@mail.gmail.com>
 <794e4c78-a3e8-ec9f-7cb1-1635df386ed7@gmail.com>
 <CAGM_aqyvdVtt5M0Gvuw5MJiaEp+8mgaxqc6RQ8f2SELSJjrg2w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAGM_aqyvdVtt5M0Gvuw5MJiaEp+8mgaxqc6RQ8f2SELSJjrg2w@mail.gmail.com>
Message-ID-Hash: ZQKTOBY6ZKY5IBHWAMHBU4IWR75IBKVG
X-Message-ID-Hash: ZQKTOBY6ZKY5IBHWAMHBU4IWR75IBKVG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands compatibility between different USRP series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZQKTOBY6ZKY5IBHWAMHBU4IWR75IBKVG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2475649770889831987=="

This is a multi-part message in MIME format.
--===============2475649770889831987==
Content-Type: multipart/alternative;
 boundary="------------Xcrk9bQpEalRkKg6BZKzCMeE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Xcrk9bQpEalRkKg6BZKzCMeE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-03 15:46, John Hodgins wrote:
> Thanks for the clarification. We are using GPSDO to provide 10 MHz/PPS=20
> to the USRPs. Jackson Labs OCXO for the X310 and TCXO for the B210.=20
> For E310 we just use the GPS antenna which I guess is connected to a=20
> ublox module.
>
> Best,
> John
>
>
So, just to clarify, two GPSDOs will NOT agree precisely on 10MHz=20
reference phase, and the mutual phase-noise between them will be much=20
higher than you might
 =C2=A0 expect, even when sharing the same antenna.

You can only do coherence experiments (cross correlating sample streams)=20
when the radios involved all share the same 10MHz reference clock.=C2=A0 =
You=20
don't get this
 =C2=A0 with two (or more) independent GPSDO outputs.
--------------Xcrk9bQpEalRkKg6BZKzCMeE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-03 15:46, John Hodgins
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAGM_aqyvdVtt5M0Gvuw5MJiaEp+8mgaxqc6RQ8f2SELSJjrg2w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks for the clarification. We are using GPSDO t=
o
        provide 10 MHz/PPS to the USRPs. Jackson Labs OCXO for the X310
        and TCXO for the B210. For E310 we just use the GPS antenna
        which I guess is connected to a ublox module.
        <div><br>
        </div>
        <div>Best,</div>
        <div>John</div>
      </div>
      <br>
      <div class=3D"gmail_quote"><br>
      </div>
    </blockquote>
    So, just to clarify, two GPSDOs will NOT agree precisely on 10MHz
    reference phase, and the mutual phase-noise between them will be
    much higher than you might<br>
    =C2=A0 expect, even when sharing the same antenna.<br>
    <br>
    You can only do coherence experiments (cross correlating sample
    streams) when the radios involved all share the same 10MHz reference
    clock.=C2=A0 You don't get this<br>
    =C2=A0 with two (or more) independent GPSDO outputs.=C2=A0 <br>
  </body>
</html>

--------------Xcrk9bQpEalRkKg6BZKzCMeE--

--===============2475649770889831987==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2475649770889831987==--
