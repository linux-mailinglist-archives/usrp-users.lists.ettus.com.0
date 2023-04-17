Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA636E4BFF
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 16:55:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F075383CEE
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 10:55:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681743330; bh=zxGNfCixe5Josmbo5iAvhTK6pL78avZIr3ZWF+Gp1cI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ByjlUF3IponjnKVaedqe22T4z/n9Yb55CprkakqOJo2Q/z9Z9S4m2aWJ0RY2XW1/k
	 /l+9QiGH5Ah1uH7wjRf9uzWDMvxHbmISYiXtdy5daYtC+sEt0J59oe9jnkbDSPCVEq
	 Bum+KNnkdMZTMeRTr6DiGL9mjn58ReDuvBjlwK2oDt2TcGmkHI3RfK2dofuqg7XFNR
	 8JLJWgF290AYLbNU5swXVEwMZB0mfzlbsCLCfDka36Ev3KSiXtNHgNrh/ILtNUMnbN
	 UtWxgbl4SLjn8RYI8PCEWSnlNL3h+EIBC6seMzzbYpqlWN9NyuIUB2xcQR+jRTee9J
	 SEOtTRBCH1ILQ==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 35F26380CE5
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 10:54:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MRlQqx9s";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id ey8so1304856qtb.3
        for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 07:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681743281; x=1684335281;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fV3owOcUXfJxF8K8Uk2WIlXGCXdVahz/y4DS8IA6H2k=;
        b=MRlQqx9sKQu6JvJLEhP4z0Bx0X2n1w6+spFtt0Y9kjYC1RiahAlaP7KtTWs30oievh
         efbHajunOSTgSmpLHzhw/M0eSqhHFn9vJNZfMqbZTM2rQEb/N6oUvRnNrS3w5EKSxli8
         xsHKrAijPq1XjlKrg/f4878ZByn4jRp37a2Bhz45Szm1jTK9aODHbVvhCvSD8AnzItik
         HsJF/O1I0yjDuOl/gIoDbXnGKcFxLUzz4peNEuAc4B9/dHFEsUxR2cTZMd4d+pwrsDmD
         M4yngLDR88tWKySo6/lerPDGfuWfmDzwY3PPj8w8LNXPA74itXA2cl9c5i05AgjnMa8S
         RfPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681743281; x=1684335281;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fV3owOcUXfJxF8K8Uk2WIlXGCXdVahz/y4DS8IA6H2k=;
        b=WYOJPi1PldzkyPaGaY717oY9+k16S5T26tExVS+JimIrV0oUnVjEELRF8Z4q2VUEKw
         /7cUY9HfyVGM16C0+jeqE/oxQcFOq+rO+wnhcCZd3l7qZ9OGjyKHH5uNg97m2nwptrTb
         vzZRaQp29Ndj5Z91G9JQTsRQ3bcBAIjKfkGjqxyVaaJnflzGu9aG2ONcdOfRYdX1Sh9D
         FRlJjCHGnZIDC4fMFH+sUlQEtVZtwWGYxk42DQfWPQnMlush+4TZntKJv79Z1IH2DE08
         uAUFXPa/yeSqoFg/e36Lgg4ZCOQBQMdp60QGkeASZvERGtqIdvFscWN0UyNrrPbB15GL
         IPmw==
X-Gm-Message-State: AAQBX9dhYiwRHLCKNNWfwIrFzjWk3BTDChCZUYMb0F2YP0ibCmzD4l2j
	rdzEEBQNGlg1bGZgJxYjkLBFxk0pZ2M=
X-Google-Smtp-Source: AKy350ZnmjYk1qgfPFGZPsmWY06pHHEFvWelQZSV7imCCa3fo7hQg8JFcclMSODA+t0C32CZK2BYpA==
X-Received: by 2002:ac8:7dc4:0:b0:3e9:cd8a:e92f with SMTP id c4-20020ac87dc4000000b003e9cd8ae92fmr22710742qte.63.1681743281222;
        Mon, 17 Apr 2023 07:54:41 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o11-20020ac872cb000000b003e38c9a2a22sm3287047qtp.92.2023.04.17.07.54.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 07:54:40 -0700 (PDT)
Message-ID: <5b303415-ae20-774e-f874-20bc81279f5e@gmail.com>
Date: Mon, 17 Apr 2023 10:54:39 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAG16vQW5gYy--sXqPEz6_Lvsz1fUfZ40kDmmS34LTduTQOCb2A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAG16vQW5gYy--sXqPEz6_Lvsz1fUfZ40kDmmS34LTduTQOCb2A@mail.gmail.com>
Message-ID-Hash: RHX75SJ3GORVX2HGI5DJ3V5AW3VTRPUE
X-Message-ID-Hash: RHX75SJ3GORVX2HGI5DJ3V5AW3VTRPUE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 not powering on
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RHX75SJ3GORVX2HGI5DJ3V5AW3VTRPUE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2982215173721676389=="

This is a multi-part message in MIME format.
--===============2982215173721676389==
Content-Type: multipart/alternative;
 boundary="------------LzVCX513pHKncLWO8C0GpzIo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------LzVCX513pHKncLWO8C0GpzIo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/04/2023 03:51, Maria Mu=C3=B1oz wrote:
> Hi all,
>
> I have a problem trying to power up the USRP E320.
>
> When I push the power button, the power led doesn't light up and the=20
> eth leds blink for a few seconds and then shut down. This is not the=20
> first time this has happened to an E320 device (for the other cases I=20
> recovered them by pushing the button longer or enter to the serial=20
> port to reboot) but now it seems like trying the things I did before=20
> does not work.
> I connect the serial port to my PC and see this every time I push the=20
> button:
>
> - ARM CPU (stuck in that step)
> image.png
> - Microcontroller:
> c5f7ed4f-ad15-4a5c-b126-28bed47bb253.png
>
> The ARM CPU does not allow me to log in, but from the microcontroller,=20
> I can run commands. I try to reboot the device from it, but it always=20
> says this line:
> image.png
>
> Is this a known issue? I haven't tried=C2=A0anything strange, I always =
shut=20
> them from the ssh connection so this happens by chance. I'm sure it is=20
> not broken just stuck in the boot state, but I don't know which are=20
> the right steps=C2=A0to start it up.
> Any help will be appreciated.
>
> Kind Regards,
> Maria
>
I don't have an E320, so this is a "shot in the dark" type of=20
answer--you could try refreshing the system image:

https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_files_system=
_by_writing_the_disk_image



--------------LzVCX513pHKncLWO8C0GpzIo
Content-Type: multipart/related;
 boundary="------------hSNWx7sn8OT8D9ROfP9WA7KF"

--------------hSNWx7sn8OT8D9ROfP9WA7KF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/04/2023 03:51, Maria Mu=C3=B1oz =
wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAG16vQW5gYy--sXqPEz6_Lvsz1fUfZ40kDmmS34LTduTQOCb2A@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi all,<br>
        <div><br>
        </div>
        <div>I have a problem trying to power up the USRP E320.=C2=A0</di=
v>
        <div><br>
        </div>
        <div>When I push the power button, the power led doesn't light
          up and the eth leds blink for a few seconds and then shut
          down. This is not the first time this has happened to an E320
          device (for the other cases I recovered them by pushing the
          button longer or enter to the serial port to reboot) but now
          it seems like trying the things I did before does not work.</di=
v>
        <div>I connect the serial port to my PC and see this every time
          I push the button:</div>
        <div><br>
        </div>
        <div>- ARM CPU (stuck in that step)</div>
        <div><img src=3D"cid:part1.pSt0VpB6.fOdTWYWW@gmail.com"
            alt=3D"image.png" class=3D"" width=3D"437" height=3D"194"><br=
>
        </div>
        <div>- Microcontroller:</div>
        <div><img src=3D"cid:part2.MXQ4HO0V.ROxoy9cc@gmail.com"
            alt=3D"c5f7ed4f-ad15-4a5c-b126-28bed47bb253.png" class=3D""
            width=3D"418" height=3D"290"><br>
        </div>
        <div><br>
        </div>
        <div>The ARM CPU does not allow me to log in, but from the
          microcontroller, I can run commands. I try to reboot the
          device from it, but it always says this line:</div>
        <div><img src=3D"cid:part3.0RDdXWLq.FjKlg631@gmail.com"
            alt=3D"image.png" class=3D"" width=3D"334" height=3D"22"><br>
        </div>
        <div><br>
        </div>
        <div>Is this a known issue? I haven't tried=C2=A0anything strange=
, I
          always shut them from the ssh connection so this happens by
          chance. I'm sure it is not broken just stuck in the boot
          state, but I don't know which are the right steps=C2=A0to start=
 it
          up.</div>
        <div>Any help will be appreciated.</div>
        <div><br>
        </div>
        <div>Kind Regards,</div>
        <div>Maria</div>
      </div>
      <br>
    </blockquote>
    I don't have an E320, so this is a "shot in the dark" type of
    answer--you could try refreshing the system image:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/E320_Gett=
ing_Started_Guide#Updating_the_files_system_by_writing_the_disk_image">ht=
tps://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_files_system_b=
y_writing_the_disk_image</a><br>
    <br>
    <br>
    <br>
  </body>
</html>
--------------hSNWx7sn8OT8D9ROfP9WA7KF
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.pSt0VpB6.fOdTWYWW@gmail.com>
Content-Transfer-Encoding: base64

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
--------------hSNWx7sn8OT8D9ROfP9WA7KF
Content-Type: image/png; name="c5f7ed4f-ad15-4a5c-b126-28bed47bb253.png"
Content-Disposition: inline;
 filename="c5f7ed4f-ad15-4a5c-b126-28bed47bb253.png"
Content-Id: <part2.MXQ4HO0V.ROxoy9cc@gmail.com>
Content-Transfer-Encoding: base64

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
--------------hSNWx7sn8OT8D9ROfP9WA7KF
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part3.0RDdXWLq.FjKlg631@gmail.com>
Content-Transfer-Encoding: base64

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
SUVORK5CYII=

--------------hSNWx7sn8OT8D9ROfP9WA7KF--

--------------LzVCX513pHKncLWO8C0GpzIo--

--===============2982215173721676389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2982215173721676389==--
