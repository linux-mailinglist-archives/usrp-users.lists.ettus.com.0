Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E4B488D0E
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 00:17:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A4E1D3849CF
	for <lists+usrp-users@lfdr.de>; Sun,  9 Jan 2022 18:17:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HFVxHvBn";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E5BB6384947
	for <usrp-users@lists.ettus.com>; Sun,  9 Jan 2022 18:15:55 -0500 (EST)
Received: by mail-qv1-f46.google.com with SMTP id fo11so12640234qvb.4
        for <usrp-users@lists.ettus.com>; Sun, 09 Jan 2022 15:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=F6bAEb8aTQYg6+tvwaRrQp32+Dvjqow5N8huS/gAVJE=;
        b=HFVxHvBnp1WgCnMQ4j1D78s9vEQWLdEI1URwriShUk2qS5Ywvn3eiwUi25oyx1Vwao
         Lao/RcHkNUTxM6StFa5UF6JPOaF3cRrNydatchck9imMrpBdRt9k01IAfw7IAMCDLRiv
         iULuMRPNZEoyTg6SgfZQpILMs0yZMWPQ+gWLhrikAfaoFh6fgaoT3NfKZUAOzzPLtNFO
         tT3nMqiTTXAhC904oyTQxDqLo2VKUVnS8/ArGRMP65kk0D1fCEFtgMu/0yjvlRdEroJb
         T/VeecrPeYubtGz7LXp5+wkGwmJtyzFIf3IgDwQK9D3fOY/t/BhOI7jNcdIwlkBOWGd2
         F2+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=F6bAEb8aTQYg6+tvwaRrQp32+Dvjqow5N8huS/gAVJE=;
        b=qSYmRwwgFjNHDV8arprurN2Q9i77lv2GqbjTU1WG5zVzQbKhsMtj+TNVNBmmRkaEA3
         maNzp+aN2qQXUUxsr0eQMa4KNnEjY5R5Jk/0+nDTA6SCJ48slLtZ6WTPgYS5hqFFK1ET
         x72E0+EGWSm0mVO3XvhZbUfCdwGNLo4sBc7PqCdmWxLHP0Ss5FU3zCuHye+YvN+KpDTr
         ayGxMIh0VEplKjcwTVHw0w/vzaLzbxgOCKIBCiAo0Ze/rg88SPFwIO4TvN2GCwcremsz
         gihed907b6+RZA31a95Pjf+kQnsvMVCfVYDsQFZmL17nsPx1tQyhNtpQSKYPS791xEVx
         8l7A==
X-Gm-Message-State: AOAM532PCf+Byc8mUqTN16JAPS1htqGXdh8xk1mARaFbEI6y0A54gZmq
	CCpQPKGxdyIWEsOB3340aW4hWaMOIgepug==
X-Google-Smtp-Source: ABdhPJyRQN0PjPrlgV6KrWSfro1cMlBe1EB5cLBOsW9lEqidVkwAJC3NH0AcR07fO+D9sWivzo0ERw==
X-Received: by 2002:a05:6214:27e9:: with SMTP id jt9mr6249569qvb.89.1641770155075;
        Sun, 09 Jan 2022 15:15:55 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id u8sm3425530qkp.45.2022.01.09.15.15.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Jan 2022 15:15:54 -0800 (PST)
Message-ID: <347ca55c-db51-ae48-e7d9-be2441f0f68e@gmail.com>
Date: Sun, 9 Jan 2022 18:15:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ@lists.ettus.com>
Message-ID-Hash: 4X5LWO4GIQZIQXO3YS47CPP7IAG44YBG
X-Message-ID-Hash: 4X5LWO4GIQZIQXO3YS47CPP7IAG44YBG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Image Flashing Problem: "Error: RuntimeError: Device reported an error during initialization."
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4X5LWO4GIQZIQXO3YS47CPP7IAG44YBG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5652095507328646647=="

This is a multi-part message in MIME format.
--===============5652095507328646647==
Content-Type: multipart/alternative;
 boundary="------------DilYJbh6qJG5Wdmm7zfbszqz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DilYJbh6qJG5Wdmm7zfbszqz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-03 08:45, ahmetyilmaz@logdots.com wrote:
>
> Hello all,
>
> I am using UHD 4.0 and when I look at the FPGA using Vivado over JTAG,=20
> I see that the FPGA is not programmed. So I send HG bitstream which is=20
> downloaded with "uhd_images_downloader" via JTAG to X310 (USRP-2945R).=20
> I am able to successfully ping the X310 and observe daughterboards and=20
> other information with "uhd_usrp_probe". With "uhd_fft" I can properly=20
> look at the spectrum of the signal.
>
> However, when I want to flash the UHD 4.0 X310 HG image with=20
> "uhd_image_loader", I keep getting "Error: RuntimeError: Device=20
> reported an error during initialization.". When I read the contents of=20
> the EEPROM with =E2=80=9Cusrp_burn_mb_eeprom=E2=80=9C, X310 appears to =
be in revision=20
> 7. I tried to write to the flash after updating to the revision 8, but=20
> I was unsuccessful again.
>
The revision contained in the EEPROM is the *HARDWARE* revision. You=20
cannot magically make the hardware a newer revision just by updating the=20
EEPROM Hardware revision
 =C2=A0 number.

You might spend some time here:

https://kb.ettus.com/X300/X310_Device_Recovery


> I can't use X310 without JTAG because of this interesting issue. If=20
> you can point me towards solution, I would be grateful.
>
> Thank you so much.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------DilYJbh6qJG5Wdmm7zfbszqz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-03 08:45,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:ahmetyilmaz@lo=
gdots.com">ahmetyilmaz@logdots.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ@lists.ettus=
.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello all,</p>
      <p>I am using UHD 4.0 and when I look at the FPGA using Vivado
        over JTAG, I see that the FPGA is not programmed. So I send HG
        bitstream which is downloaded with "uhd_images_downloader" via
        JTAG to X310 (USRP-2945R). I am able to successfully ping the
        X310 and observe daughterboards and other information with
        "uhd_usrp_probe". With "uhd_fft" I can properly look at the
        spectrum of the signal. </p>
      <p>However, when I want to flash the UHD 4.0 X310 HG image with
        "uhd_image_loader", I keep getting "Error: RuntimeError: Device
        reported an error during initialization.". When I read the
        contents of the EEPROM with =E2=80=9Cusrp_burn_mb_eeprom=E2=80=9C=
, X310 appears
        to be in revision 7. I tried to write to the flash after
        updating to the revision 8, but I was unsuccessful again. </p>
    </blockquote>
    The revision contained in the EEPROM is the *HARDWARE* revision.=C2=A0
    You cannot magically make the hardware a newer revision just by
    updating the EEPROM Hardware revision<br>
    =C2=A0 number.<br>
    <br>
    You might spend some time here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/X300/=
X310_Device_Recovery">https://kb.ettus.com/X300/X310_Device_Recovery</a><=
br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:7Q0SXWGRveP6JazyGTvXZI3CmihwXdwX1hp6zOax8EQ@lists.ettus=
.com">
      <p>I can't use X310 without JTAG because of this interesting
        issue. If you can point me towards solution, I would be
        grateful.</p>
      <p>Thank you so much.</p>
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
    <br>
  </body>
</html>
--------------DilYJbh6qJG5Wdmm7zfbszqz--

--===============5652095507328646647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5652095507328646647==--
