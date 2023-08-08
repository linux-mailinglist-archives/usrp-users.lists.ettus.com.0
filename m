Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 374DC773A62
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:17:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A895B380EE7
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 09:17:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691500651; bh=K14vmZIPgWW8+04As8qtl4qTmpmHvMn0TFUoCwcQR4c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Pos0gyAbuROJRLfhEWqRZA/0BhVFiIiGEq6EVg/3eAcmQyiL9O1JJ9xJHDw33PvCA
	 DHR444XsMIdFNQII2yFcj8IS0pgEyRhAJ3TB2ChJDlG8GXPAU0WzkyKBZ7h6q0/jrj
	 lqVn7FlIhMog3tTXZjCQComoKDEQ2ofl9e1XjoSSzd7ikNNZsN5TAp7WqwkkGKRhJI
	 nWia3nO0FHq8RDQJRrVg6S3moH3Ozgg8xddOlKskqEK/bSgwFHEbNGCHaYrHnNfOeM
	 vLviZ+Wao+OF1Y1SrZQj6X8ETE5VWQ8RNwFqSnqbH5BGKdN8EbC+JkSzTb7eGojZde
	 7IJaJgnu1T4ew==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 11D9D380E39
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 09:16:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gcv3aRW4";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-63d170a649eso36359486d6.3
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 06:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691500616; x=1692105416;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g5e5AAlx1YkTwIdc9XvOSs1wBBGeNLjf9eR7U8EyFM8=;
        b=gcv3aRW4OspP3tRp08HZM/SkZ4b5VyayUPQodbk4FuDPW61MWxXYq7b33hNXN8HdzG
         rS6BZWB0dPVseGoZmwam6a3FtwZKZ8V78+UDO/i+pzHtFh7Z9Yk8yyM6dGSPQTJY6sbJ
         yorn6MN+Tg/f1j+TPuFDoZPNZBfviWdDahp6mtJt3i4Y0ABmGshCmHzBD8kFG8HUaoOe
         kPxwBkVY9hyxgPHIT3bVcFCZrFwXEIWuSs+C2INppXLLsXmaAZeOC8q8Kt29+gvLQ/xl
         vxupBIQt2hMbEZv8vBGJWX6elRnqdyL/npFChPbcKIxBvMPpTOYrwcetLII4cUkPD8Ne
         SHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691500616; x=1692105416;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g5e5AAlx1YkTwIdc9XvOSs1wBBGeNLjf9eR7U8EyFM8=;
        b=IRsihtFBdw+vU8whgt5EyHkQBe7t6gxB0YkQoNIAKYjfCibPGxvMR5otf3Q1Xqq9uL
         rM3w7sCYHljoLK+yOHHGMiyRznUWpL2USLXrVPGVk+u0aH4rZhx68ez2veP6dsWTm0za
         mL3ytQAzcfV4vUSNDPOk773LWg4bKLUOkAkOu49zmDc8+WzxbZWRwFWZ8k2xujSQ3zlW
         Z3+W+5om/r5g5sgZ+NmPK/UcaAYWXndISTCERi0ETh17u41UWpWjxfPJCpcxcTtPtGeq
         nxN4EbZIIQbV9jEJp3iHpgDJ0/ETn33KbSuzYtOGXfvgGv0KSx0ExMENMcrXOXU3yefs
         HLPQ==
X-Gm-Message-State: AOJu0Yyn7X5DbLMR4QDszAIT6eQsk1qE+KWDHl4FJ/iP5Em1HnI20aKq
	2d90Q+fIqUkTAFCsMlpDugPY+n8Btb8=
X-Google-Smtp-Source: AGHT+IFO6c/Oxl94Hwc5zXdA6HqFTpQ3JPpdTNISFewSJY73LNw/+Fzx/zvA29PgVgjAVYRuqQ90Wg==
X-Received: by 2002:a05:6214:4291:b0:63d:6138:1027 with SMTP id og17-20020a056214429100b0063d61381027mr13062095qvb.42.1691500616126;
        Tue, 08 Aug 2023 06:16:56 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id w25-20020a0cb559000000b0062439f05b87sm3682631qvd.45.2023.08.08.06.16.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 06:16:55 -0700 (PDT)
Message-ID: <d9b5f24d-d20b-6701-c828-0744b9690f37@gmail.com>
Date: Tue, 8 Aug 2023 09:16:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA@lists.ettus.com>
Message-ID-Hash: UX6Z5L6WGKZ4BFBJLAJPSILCXBXV5DSP
X-Message-ID-Hash: UX6Z5L6WGKZ4BFBJLAJPSILCXBXV5DSP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UX6Z5L6WGKZ4BFBJLAJPSILCXBXV5DSP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8599121046339362342=="

This is a multi-part message in MIME format.
--===============8599121046339362342==
Content-Type: multipart/alternative;
 boundary="------------0St2yRcbTX2t6BsA1OztD5Jl"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0St2yRcbTX2t6BsA1OztD5Jl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/08/2023 03:56, edenmclaughlin123@gmail.com wrote:
>
> Hello,
>
> I have an Ettus B210 device that I have been experimenting with for=20
> some time. I had a need to turn on and off the device on a remote=20
> host. I intended to apply the bootloader for fx3 to the device. While=20
> playing around with the b2xx_fx3_utils, I loaded the bootloader of the=20
> device with =E2=80=9Cusrp_b210_fpga.rpt=E2=80=9D by mistake. After foll=
owing the steps=20
> by Benito Horta discussed in the B200 shows up as Cypress FX3 USB=20
> Bootloader Device FIXED steps taken=20
> <https://usrp-users.ettus.narkive.com/7S6MYwCo/b200-shows-up-as-cypress=
-fx3-usb-bootloader-device-fixed-steps-taken>,=20
> I managed to recover from this situation somewhat.
>
> Problem:
>
>  *
>
>     Device cannot be initialized though api calls (such as from
>     Python) or uhd_usrp_probe etc.
>
> Error Message:
>
>  *
>
>     "Error: RuntimeError: B200 unknown product code: 0x3120"
>
> Cause:
>
>  *
>
>     My suspicion is that the device mb eeprom: serial, name and
>     product ID are corrupted (from what I understand from the error
>     message and the uhd_find_devices output).
>
> Note that the uhd_find_devices output is,
>
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11;=20
> UHD_4.3.0.0-release
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
> =C2=A0 =C2=A0 serial: SP48A1s:
> =C2=A0 =C2=A0 name: 6 =C2=A0 =C2=A025%
> =C2=A0 =C2=A0 product: B2??
> =C2=A0 =C2=A0 type: b200
>
> I am using UHD-4.3 and Ubuntu 22.04. I tried loading firmware, FGPA=20
> and bootloader files using ./b2xx_fx3_utils.
>
> I read About the Motherboard and Daughtercard EEPROM on USRP Devices=20
> <https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_=
USRP_Devices>=20
> and I need guidance on using the ./usrp_burn_mb_eeprom tool. Has=20
> anyone had anything like happened before? I worry the eeprom writes=20
> are undoable, nevertheless, any suggestion about the issue is appreciat=
ed.
>
>
> Cheers,
>
> Eden.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
What happens if you use "--read-all" on usrp_burn_mb_eeprom?

That will give you a list of what it thinks the various keys in EEPROM ar=
e.


--------------0St2yRcbTX2t6BsA1OztD5Jl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/08/2023 03:56,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:edenmclaughlin=
123@gmail.com">edenmclaughlin123@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:viSAyZ66GXhV7V2Jm3fjUlq7XNuQh7OojevJXuMvmA@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello,</p>
      <p>I have an Ettus B210 device that I have been experimenting with
        for some time. I had a need to turn on and off the device on a
        remote host. I intended to apply the bootloader for fx3 to the
        device. While playing around with the b2xx_fx3_utils, I loaded
        the bootloader of the device with =E2=80=9Cusrp_b210_fpga.rpt=E2=80=
=9D by
        mistake. After following the steps by Benito Horta discussed in
        the <a
href=3D"https://usrp-users.ettus.narkive.com/7S6MYwCo/b200-shows-up-as-cy=
press-fx3-usb-bootloader-device-fixed-steps-taken"
title=3D"https://usrp-users.ettus.narkive.com/7S6MYwCo/b200-shows-up-as-c=
ypress-fx3-usb-bootloader-device-fixed-steps-taken"
          moz-do-not-send=3D"true">B200 shows up as Cypress FX3 USB
          Bootloader Device FIXED steps taken</a>, I managed to recover
        from this situation somewhat.</p>
      <p>Problem:</p>
      <ul>
        <li>
          <p>Device cannot be initialized though api calls (such as from
            Python) or uhd_usrp_probe etc.</p>
        </li>
      </ul>
      <p>Error Message:</p>
      <ul>
        <li>
          <p>"Error: RuntimeError: B200 unknown product code: 0x3120"</p>
        </li>
      </ul>
      <p>Cause:</p>
      <ul>
        <li>
          <p>My suspicion is that the device mb eeprom: serial, name and
            product ID are corrupted (from what I understand from the
            error message and the uhd_find_devices output).</p>
        </li>
      </ul>
      <p>Note that the uhd_find_devices output is,</p>
      <p>[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400;
        DPDK_21.11; UHD_4.3.0.0-release<br>
        --------------------------------------------------<br>
        -- UHD Device 0<br>
        --------------------------------------------------<br>
        Device Address:<br>
        =C2=A0 =C2=A0 serial: SP48A1s: <br>
        =C2=A0 =C2=A0 name: 6 =C2=A0 =C2=A025% =C2=A0<br>
        =C2=A0 =C2=A0 product: B2??<br>
        =C2=A0 =C2=A0 type: b200<br>
        <br>
      </p>
      <p>I am using UHD-4.3 and Ubuntu 22.04. I tried loading firmware,
        FGPA and bootloader files using ./b2xx_fx3_utils.</p>
      <p>I read <a
href=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPRO=
M_on_USRP_Devices"
title=3D"https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPR=
OM_on_USRP_Devices"
          moz-do-not-send=3D"true">About the Motherboard and Daughtercard
          EEPROM on USRP Devices</a> and I need guidance on using the
        ./usrp_burn_mb_eeprom tool. Has anyone had anything like
        happened before? I worry the eeprom writes are undoable,
        nevertheless, any suggestion about the issue is appreciated.</p>
      <p><br>
      </p>
      <p>Cheers,</p>
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
    What happens if you use "--read-all" on usrp_burn_mb_eeprom?<br>
    <br>
    That will give you a list of what it thinks the various keys in
    EEPROM are.<br>
    <br>
    <br>
  </body>
</html>

--------------0St2yRcbTX2t6BsA1OztD5Jl--

--===============8599121046339362342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8599121046339362342==--
