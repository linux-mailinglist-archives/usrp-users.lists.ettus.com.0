Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 40268424646
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 20:50:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 127753844BE
	for <lists+usrp-users@lfdr.de>; Wed,  6 Oct 2021 14:50:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JNE51H2R";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 0DB3A384485
	for <usrp-users@lists.ettus.com>; Wed,  6 Oct 2021 14:49:28 -0400 (EDT)
Received: by mail-qt1-f169.google.com with SMTP id t2so3669670qtx.8
        for <usrp-users@lists.ettus.com>; Wed, 06 Oct 2021 11:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=Z5i31Mhsfqs4HY5C4x3ErQsBUlybztNePAay39WXOrc=;
        b=JNE51H2R7EQDCRy9K+8xDakRybORI5coa3+JDvCrglk6zpyoUQZw4mlhC0tIWZQ8ke
         CZXTNe+b+7fRpmA2f3T2WY6OJH/UQ2O9lMQU4Lgf7Y4JFdH4/ktVFk0t5JXbqDW1GL2O
         juiw9I8JvCJUrZH2awkYWqeXohrw/OcK7g6cJz2zxCyuflT7l5RndP+7zEg1lNb3Bhfc
         QJXX7MuoWlITaH7h/Lxptcmj0wVPrkrKLY1Ge88d9GJ80aKCn9Gk4EzuSewHjpMnhenN
         nJQafr6fZN3hqhqR/1XBY0GjomRMHtEBQBSImg/S9AKBcH9P0xSJvxFQn15mECSPS4rt
         xVqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Z5i31Mhsfqs4HY5C4x3ErQsBUlybztNePAay39WXOrc=;
        b=bwFtET1w2fnqFAYkNi1Em1hz9Qai0Iynf6XNAtEA7cMyTbhQtergRfU1tG8HqbVvOQ
         C9CAfa7ltYNL03S16vmnacQWYKoGsnFPMEgXTX4Is1ybG0k3t+8md2g5HpFUOd4gZMLw
         0ZsfgYYOteRN/wSz0JV1TGcOcAzr6ViFT5HjImQzIrWf66oWRLhlWWIRXQFwbV9bWqXy
         ARyFVtCapD2Sg1akS6+Z6eqg4Zu8hLya6lxorr8f3SgfrZgo67Ilp0p1y5Wvj2s9loQ8
         m7qyTM1rA6qUjLptN4pgrD3mQZOhledBrBcZz3SOnINdke4AYVOCa22jxzqYtVGX1Eyb
         hMAw==
X-Gm-Message-State: AOAM533LStPi1727Be8OycdlykFj+Oo0OqR3eiHLJkMF4l5uwn+RDZ3l
	BORPvcanmgslcp8T7/dMvXjmSqPUoxY=
X-Google-Smtp-Source: ABdhPJwSszCG1BHJxJ3481AcplGed2S2Sz/iKrLsGYsSE+gMSbYSBjwJTdjsCGysSUqA/8qGyLHD9g==
X-Received: by 2002:ac8:4149:: with SMTP id e9mr418995qtm.106.1633546168113;
        Wed, 06 Oct 2021 11:49:28 -0700 (PDT)
Received: from [192.168.2.252] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id g15sm3211179qke.61.2021.10.06.11.49.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 11:49:27 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <1607813094.1558445.1633542971951.ref@mail.yahoo.com>
 <1607813094.1558445.1633542971951@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <fed2144e-5aa6-7e6b-33dd-3cf677d2fe5c@gmail.com>
Date: Wed, 6 Oct 2021 14:49:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1607813094.1558445.1633542971951@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: 5OXJI32KXF4NIDCBWCEXQ7HGINXFZIUV
X-Message-ID-Hash: 5OXJI32KXF4NIDCBWCEXQ7HGINXFZIUV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5OXJI32KXF4NIDCBWCEXQ7HGINXFZIUV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6047860500753219909=="

This is a multi-part message in MIME format.
--===============6047860500753219909==
Content-Type: multipart/alternative;
 boundary="------------A1CC25DEB4DE0E1E54699E57"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------A1CC25DEB4DE0E1E54699E57
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-10-06 1:56 p.m., Tellrell White via USRP-users wrote:
> Currently, I have an app that I've cross-compiled for the N310 and I'm 
> trying to read data from the I/O Expander(TCA6408a) on the 
> daughterboard, however, I'm getting an error stating that the "device 
> or resource is busy" which leads me to believe that there is a driver 
> already using the device. Does anyone have any insight on this?? Also, 
> is there any information on using I2C for the n3xx devices?
>
>
Pretty sure that MPM (part of the UHD environment) "owns" the I2C and 
SPI interfaces.




--------------A1CC25DEB4DE0E1E54699E57
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-10-06 1:56 p.m., Tellrell White
      via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1607813094.1558445.1633542971951@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:13px;">
        <div dir="ltr" data-setdir="false">Currently, I have an app that
          I've cross-compiled for the N310 and I'm trying to read data
          from the I/O Expander(TCA6408a) on the daughterboard, however,
          I'm getting an error stating that the "device or resource is
          busy" which leads me to believe that there is a driver already
          using the device. Does anyone have any insight on this?? Also,
          is there any information on using I2C for the n3xx devices? <br>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    Pretty sure that MPM (part of the UHD environment) "owns" the I2C
    and SPI interfaces.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------A1CC25DEB4DE0E1E54699E57--

--===============6047860500753219909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6047860500753219909==--
