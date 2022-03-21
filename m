Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4774E4E2B1B
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 15:44:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 817323855F3
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 10:44:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n3RwWcFd";
	dkim-atps=neutral
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D9A03853A2
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 10:43:37 -0400 (EDT)
Received: by mail-qv1-f43.google.com with SMTP id hu11so857173qvb.7
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 07:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=LARJfb+MZaQNbh+d+D9vOyO2y2v8o53OGuwuGF0XPlg=;
        b=n3RwWcFdN49m3iYyNUbgdXHh45jr/EGqXItmPvi/oI+NRwWGVIVDOh77Mi7/xLZcl5
         ZSyoph/tT7hj/QS7uCZQ11B0bz+K3V4pWvNkm3ugjT1uZYrSHai2gp67xReOgvxVx8AQ
         jkvs7GGOFvN9Dq4zOqGg7Q/tvDyRKitpU0fjcQiMtrIJNun5To5PsOIdv8F03o3zhpbz
         LZqbYpS2HP9tGHtG2O7zNwO5a8PP/Bq4HqheYm+recP81x59F6Ftsk0EXFrzdaK6A5Ll
         k+9j9/ufjVs/GyL9YQZolYumtI+Zf9CKkEtaYm9q9lkKNbFHl82eqsJ2eLEDzQ1UiPHg
         OScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=LARJfb+MZaQNbh+d+D9vOyO2y2v8o53OGuwuGF0XPlg=;
        b=EOPeFrIRKkmhHEDjaoFcMR06L3pRXpwWL+WNAq6gfMydTkT8eoJbKrRou42cc+riRM
         fC/8yyolGoU5SdtII8iHAjwh3lT+HUp7uJ3ohSxTfrDsI9L86C93XQZ1VXkYwSXCXZf/
         R7NZjx3KK/w2gQ2gqrszykNnNQEgi/9SWktUK/Y41hX0huuG6XdRXm0x1e4iXoW0ibXC
         sXP4+e4+8gGrnKQ96/lNlqo1xJCc5GDWKOIN9NL2mAagoILPaotJltdy0xBMOX81B6Mc
         7uTjYPj/VUJRcEJRkqZGfayQzMhbxvDKrXgwo7I4IEy/5tlc0oyitDxanWmShdEV78JY
         pxjw==
X-Gm-Message-State: AOAM532aryIUFtoqqmMP+HMIypmBGFnyDIjF5R2vuAKGIps4hhFVbIdj
	uj+lhdtaUkQX+72SGXNyVyEU/4clJrk=
X-Google-Smtp-Source: ABdhPJzqkgS9OF9mSawvRE6KYRHq2gA2FG6+jT47Sl2wA8NIgCZ1s48NRkO03LDsEZSF50k026/+LA==
X-Received: by 2002:ad4:4e61:0:b0:42d:1b44:44c4 with SMTP id ec1-20020ad44e61000000b0042d1b4444c4mr16202506qvb.44.1647873817431;
        Mon, 21 Mar 2022 07:43:37 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id c1-20020a05620a0ce100b0067e0cd1746fsm7511248qkj.51.2022.03.21.07.43.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 07:43:36 -0700 (PDT)
Message-ID: <a71545cc-5423-7bb4-e616-a261dd065fbd@gmail.com>
Date: Mon, 21 Mar 2022 10:43:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
References: <AM8P250MB010775DAB5F976813E57AE599B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <77C9127F-86E2-4BC0-9ED0-C477B0F4A586@gmail.com>
 <AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: RTVRQFRO7JRHFCIZJ7VSJPULN27LX47F
X-Message-ID-Hash: RTVRQFRO7JRHFCIZJ7VSJPULN27LX47F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [X410] Change hostname
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTVRQFRO7JRHFCIZJ7VSJPULN27LX47F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6025249071914308921=="

This is a multi-part message in MIME format.
--===============6025249071914308921==
Content-Type: multipart/alternative;
 boundary="------------HCqnh5vHW3pco2Ef0w2GyjNf"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------HCqnh5vHW3pco2Ef0w2GyjNf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-03-21 10:34, Tobias Kronauer wrote:
> There is no /etc/hostname in /data....
> -----------------------------------------------------------------------=
-
>
Hmmm.

According to:

https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration

You should be able to just modify /etc/hostname, but this doesn't work=20
across reboot.=C2=A0 Even on my E310.

Clearly, *something* is reconstructing it on reboot, I just can't=20
immediately determine exactly what.


--------------HCqnh5vHW3pco2Ef0w2GyjNf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-03-21 10:34, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P250MB0107FE3596073DF1E741B7D89B169@AM8P250MB0107.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        There is no /etc/hostname in /data....<br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1"><br>
    </blockquote>
    Hmmm.=C2=A0=C2=A0 <br>
    <br>
    According to:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_usrp_e3xx.html#e31x_migration">https://files.ettus.com/manual/p=
age_usrp_e3xx.html#e31x_migration</a><br>
    <br>
    You should be able to just modify /etc/hostname, but this doesn't
    work across reboot.=C2=A0 Even on my E310.<br>
    <br>
    Clearly, *something* is reconstructing it on reboot, I just can't
    immediately determine exactly what.<br>
    <br>
    <br>
  </body>
</html>

--------------HCqnh5vHW3pco2Ef0w2GyjNf--

--===============6025249071914308921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6025249071914308921==--
