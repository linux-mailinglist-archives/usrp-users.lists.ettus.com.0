Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DA9769759
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jul 2023 15:18:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B63EA384B22
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jul 2023 09:18:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690809538; bh=vBrmWtURXdBAHtYYdbP1iltAcNvAqZ/N/oyWh+khT2E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f/kcfjxkj+yLKfWQRtMGHVVWipm1oA3NGv69OhJDwAO17qmWwaWH5LpE1LsXeJxue
	 M6Fkx57JdjMUmq7h3rSU/owRs9OH/MxEfAA4y05oH28HHtIc96aBL+7GJIe0VcmZ2H
	 4qf0CMsAB2cWWLtEN6COa5oaRtV8g+/FOr8jkkVa9MfBum4v1KTWzqz7X7A5/zhne/
	 RkHf3u8MWlXrydMDe1BY1zGeEEntmRUaQhF9axeeTdrV2O2f0FKoHfJHqif86TND6I
	 +dnnNNEtQzN7ZexGKUykuOcX/ikVoI1QhooaRWx90IVXbYZzz8r0pbToICLhKFeEd1
	 oYHMjH3d3CiLA==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id EF9B2384AFA
	for <usrp-users@lists.ettus.com>; Mon, 31 Jul 2023 09:18:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DK5fsNlQ";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-765942d497fso374952285a.1
        for <usrp-users@lists.ettus.com>; Mon, 31 Jul 2023 06:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690809497; x=1691414297;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/+qaXTD1Ksjao0avRcYjFeYsHBMZHBzn8iPwJGzSMyk=;
        b=DK5fsNlQciYjACJlY4PD641lkMlv7RaSmPiNU0/70rOSb3xGfwXXLAZwFB5mUqTsys
         2j65NdCyUB3TKl7TtwR99YN+PtNlzllnPVklzdEJZMPXLqyMgnETNl4wW5lyiTlRzW5A
         zBQklL4AwoK+5jGodz4UinkNgi+UYpqCwj9egKvuyvGGgjlNBe2Ogs3JLfMk85uifOoz
         Hqo/8lm5bp3H8K0Q10CYomHbVibqjocscSyR/84Q1jn8jBhlZob7Ujhh7b4Zga6CMURI
         ecIT4rXRxuAptL2vtoDcvfrKPSneJaV7rpDYHQZd3xP0+z+K2PymD1kpPbOIuriOjhvk
         rltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690809497; x=1691414297;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/+qaXTD1Ksjao0avRcYjFeYsHBMZHBzn8iPwJGzSMyk=;
        b=Sk7MD8QozMlmViQa0VCmAr5PsbofM0WRLo89ays1E4QgZJvtayOSDJEjqjLTFOdzDM
         00KZy5R6ge5ydjbSLvQD3PFXbzCMaaD926KGvMumGxT3cyQRkDrRWOKyKDx+PNPu/1lr
         U874gsgmpXyxVsZtB56o7wv3ff65STD2PNRKN4p/8XI2WSzMLvnLN4vx5rznt4UdB+67
         zU1JI1xLVGfMOSsm5PubLH0hZ87CPEC7XzewH5IaOXAqTp3ksO2/G5ZjPy9lpXBXbR/P
         cRUbI9+ifyae/DNWZshoBhvWZUTsJLRbRx9Qm+t4nEipTht6/mW2u8Yj//IZzbiWReRK
         R8SQ==
X-Gm-Message-State: ABy/qLZXy4vCT0a6+K3YXNbvDeGRLe8ofaakxPsCZZ9lclauSZC56p9f
	OZXTOWaWoJp4FtppT6zi2kA+FeBUVd8=
X-Google-Smtp-Source: APBJJlFlaqgVPMBc/EelAXB+wMAJOHiiZ63KbiDkrKUsU3FBbXGVN/j5xDU/mAd74cbq4yaa5zzh8Q==
X-Received: by 2002:a05:620a:1993:b0:767:e0b5:bf48 with SMTP id bm19-20020a05620a199300b00767e0b5bf48mr12382632qkb.34.1690809496647;
        Mon, 31 Jul 2023 06:18:16 -0700 (PDT)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id t30-20020a05620a035e00b00767e946dfedsm3282688qkm.23.2023.07.31.06.18.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 06:18:16 -0700 (PDT)
Message-ID: <fb6f9968-fec8-dee6-a217-f3f90bcadafb@gmail.com>
Date: Mon, 31 Jul 2023 09:18:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com>
 <BN2P110MB1747319051B7422ABD29B6E8B707A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
 <AM0PR06MB6179AD88C2D8A1C21B491290D405A@AM0PR06MB6179.eurprd06.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM0PR06MB6179AD88C2D8A1C21B491290D405A@AM0PR06MB6179.eurprd06.prod.outlook.com>
Message-ID-Hash: IUXVBWX5ZJSA7TBREJJP5ADSIKIJYNOS
X-Message-ID-Hash: IUXVBWX5ZJSA7TBREJJP5ADSIKIJYNOS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 not detecting any devices after power failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUXVBWX5ZJSA7TBREJJP5ADSIKIJYNOS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6734951384666718622=="

This is a multi-part message in MIME format.
--===============6734951384666718622==
Content-Type: multipart/alternative;
 boundary="------------kp0opEerL5xpJl10GGgUb8SW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kp0opEerL5xpJl10GGgUb8SW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 31/07/2023 00:30, Ofer wrote:
> Hello David and Rob,
>
> Thank you for the suggestions.
> I began my troubleshooting by pulling out the SD card and backing it=20
> up to a PC with an SD card reader using dd.
> My initial thought was that the image was damaged because of the power=20
> failure.
> I downloaded a fresh image using uhd_images_downloader and programmed=20
> it to the SD card using dd on the PC (UHD 4.1.0.5).
> This image refused to boot. u-boot said it can't find the primary=20
> partition.
> Looking at the image on the PC with various tools shows it is intact.=20
> It has the 4 partitions you would expect and the sizes seem to be OK.
> I reprogrammed the SD card with my backup image and it booted normally=20
> but no devices detected.
> I don't have an actual Linux system. I am working with WSL and Cygwin=20
> under Windows so I didn't have access to the other image writting=20
> method using bmaptool. It is not supported by Cygwin and WSL has no=20
> direct access to USB devices (my SD card reader) although it does has=20
> bmaptool.
> Because of the failure to use dd with the original image provided by=20
> NI I switched to mender.
> I tried to use a fresh mender image of the same UHD version I am using=20
> (4.1.0.5) and there was no change.
> I tried using a mender image of a newer UHD version (4.4.0.0) and an=20
> older version (3.15.LTS) without any change.
> No devices are detected.
> To answer David's question: I did try with an IP address. I tried=20
> 127.0.0.1 and my assigned IP address 192.168.123.95. No change. No=20
> devices are detected.
> BTW, after programming different images because I knew the IP address=20
> of the unit will change I switched to the USB serial console and did=20
> all my operations there. Still no change.
> I am doing all operations on the actual E320 unit and not trying to=20
> use it remotely from PC although I initially did access it through SSH=20
> from a PC and it accessible this way because my original image uses a=20
> static IP address.
>
> Could it be the EEPROM?
> How to read the EEPROM?
> What should be the correct values?
> Where can I get the values to properly restore the EEPROM if indeed it=20
> is the one that was damaged?
> What else could it be?
> I don't think that a power failure can damage the hardware but how to=20
> diagnose it?
>
> Regards,
> Ofer Saferman
> -----------------------------------------------------------------------=
-
> *From:* David Raeman <david@SynopticEngineering.com>
> *Sent:* Saturday, July 29, 2023 5:51 PM
> *To:* Ofer <ofer@navigicom.com>; usrp-users@lists.ettus.com=20
> <usrp-users@lists.ettus.com>
> *Subject:* RE: E320 not detecting any devices after power failure
>
> Hi Ofer, does the probe work if you specify the radio=E2=80=99s IP addr=
ess?=C2=A0=20
> e.g. something like:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd_usrp_probe --args addr=3D=
192.168.10.2
>
> If that syntax works, then you might try switching between the SFP+=20
> port (via copper adapter) and the native RJ45. My memory could be=20
> mistaken here, but I vaguely recall that MPM discovery for an E320=20
> worked using one of those ports but not the other. However, if you=20
> specify the address, it would work with either port. Again, I=E2=80=99m=
=20
> working from fuzzy memory here..
>
> Hope this helps,
>
> David
>
> *From:* Ofer <ofer@navigicom.com>
> *Sent:* Saturday, July 29, 2023 1:47 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] E320 not detecting any devices after power fail=
ure
>
> Hello all,
>
> I operate a USRP E320 using an externa battery. Usually I have time to=20
> shut it down in an orderly fashion before the battery is depleted.
>
> On one occasion it happened that the battery was depleted before I had=20
> a chance to shut it down properly.
>
> Since then when I run uhd_usrp_probe I get a message that no devices=20
> could be detected.
>
> The E320 boots up normally and I can communicate with it using both=20
> serial console and LAN.
>
> I initially suspected an SD card image corruption and I tried to=20
> rewrite the image using mender.
>
> I tried the same version I am using (UHD 4.1.0.5) and I tried a=20
> newer=C2=A0version UHD 4.4.0.0 and and older=C2=A0version UHD 3.15.LTS.
>
> Nothing seems to help. The E320 still reports "No devices found". I=20
> even tried uhd_usrp_probe with an argument of IP address. Nothing helps=
.
>
> Here is a sample dump:
>
> root@ni-e320:~# uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;=20
> UHD_4.4.0.0-0-g5fac246b
>
> [INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD=20
> session. Specify find_all to find all devices.
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Empty Device Address
>
> Can someone help me fix this problem? Point me in the right direction?
>
> Is it fixable by myself or do I have to return the unit to be serviced?
>
> Thanks,
>
> Ofer Saferman
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
If you use the serial console, during boot, does it issue any unusual=20
error messages?=C2=A0 That can be a clue as to what's going
 =C2=A0 on.=C2=A0=C2=A0 You might have to turn on recording on your termi=
nal=20
application, because things scroll past fairly quickly.


--------------kp0opEerL5xpJl10GGgUb8SW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 31/07/2023 00:30, Ofer wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM0PR06MB6179AD88C2D8A1C21B491290D405A@AM0PR06MB6179.eurprd06=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hello David and Rob,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thank you for the suggestions.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I began my troubleshooting by pulling out the SD card and
        backing it up to a PC with an SD card reader using dd.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        My initial thought was that the image was damaged because of the
        power failure.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I downloaded a fresh image using uhd_images_downloader and
        programmed it to the SD card using dd on the PC (UHD 4.1.0.5).</d=
iv>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        This image refused to boot. u-boot said it can't find the
        primary partition.=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Looking at the image on the PC with various tools shows it is
        intact. It has the 4 partitions you would expect and the sizes
        seem to be OK.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I reprogrammed the SD card with my backup image and it booted
        normally but no devices detected.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I don't have an actual Linux system. I am working with WSL and
        Cygwin under Windows so I didn't have access to the other image
        writting method using bmaptool. It is not supported by Cygwin
        and WSL has no direct access to USB devices (my SD card reader)
        although it does has bmaptool.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Because of the failure to use dd with the original image
        provided by NI I switched to mender.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I tried to use a fresh mender image of the same UHD version I am
        using (4.1.0.5) and there was no change.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I tried using a mender image of a newer UHD version (4.4.0.0)
        and an older version (3.15.LTS) without any change.
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        No devices are detected. <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        To answer David's question: I did try with an IP address. I
        tried 127.0.0.1 and my assigned IP address 192.168.123.95. No
        change. No devices are detected.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        BTW, after programming different images because I knew the IP
        address of the unit will change I switched to the USB serial
        console and did all my operations there. Still no change.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I am doing all operations on the actual E320 unit and not trying
        to use it remotely from PC although I initially did access it
        through SSH from a PC and it accessible this way because my
        original image uses a static IP address.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Could it be the EEPROM?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        How to read the EEPROM?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        What should be the correct values?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Where can I get the values to properly restore the EEPROM if
        indeed it is the one that was damaged?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        What else could it be?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I don't think that a power failure can damage the hardware but
        how to diagnose it?<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Ofer Saferman<br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Dav=
id
          Raeman <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:david@=
SynopticEngineering.com">&lt;david@SynopticEngineering.com&gt;</a><br>
          <b>Sent:</b> Saturday, July 29, 2023 5:51 PM<br>
          <b>To:</b> Ofer <a class=3D"moz-txt-link-rfc2396E" href=3D"mail=
to:ofer@navigicom.com">&lt;ofer@navigicom.com&gt;</a>;
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@list=
s.ettus.com&gt;</a><br>
          <b>Subject:</b> RE: E320 not detecting any devices after power
          failure</font>
        <div>=C2=A0</div>
      </div>
      <style>@font-face
	{font-family:"Cambria Math"}@font-face
	{font-family:Calibri}p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}span.x_EmailStyle20
	{font-family:"Calibri",sans-serif;
	color:windowtext}.x_MsoChpDefault
	{font-size:10.0pt}div.x_WordSection1
	{}</style>
      <div link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:break-wo=
rd"
        lang=3D"EN-US">
        <div class=3D"x_WordSection1">
          <p class=3D"x_MsoNormal">Hi Ofer, does the probe work if you
            specify the radio=E2=80=99s IP address?=C2=A0 e.g. something =
like:</p>
          <p class=3D"x_MsoNormal">=C2=A0</p>
          <p class=3D"x_MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 uhd_usrp_probe --args
            addr=3D192.168.10.2</p>
          <p class=3D"x_MsoNormal">=C2=A0</p>
          <p class=3D"x_MsoNormal">If that syntax works, then you might
            try switching between the SFP+ port (via copper adapter) and
            the native RJ45. My memory could be mistaken here, but I
            vaguely recall that MPM discovery for an E320 worked using
            one of those ports but not the other. However, if you
            specify the address, it would work with either port. Again,
            I=E2=80=99m working from fuzzy memory here..</p>
          <p class=3D"x_MsoNormal">=C2=A0</p>
          <p class=3D"x_MsoNormal">Hope this helps,</p>
          <p class=3D"x_MsoNormal">David</p>
          <p class=3D"x_MsoNormal">=C2=A0</p>
          <div style=3D"border:none; border-left:solid blue 1.5pt;
            padding:0in 0in 0in 4.0pt">
            <div>
              <div style=3D"border:none; border-top:solid #E1E1E1 1.0pt;
                padding:3.0pt 0in 0in 0in">
                <p class=3D"x_MsoNormal"><b>From:</b> Ofer
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:ofer@=
navigicom.com">&lt;ofer@navigicom.com&gt;</a> <br>
                  <b>Sent:</b> Saturday, July 29, 2023 1:47 AM<br>
                  <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [USRP-users] E320 not detecting any
                  devices after power failure</p>
              </div>
            </div>
            <p class=3D"x_MsoNormal">=C2=A0</p>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Hello all,</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">I operate a USRP E320 using an externa
                  battery. Usually I have time to shut it down in an
                  orderly fashion before the battery is depleted.</span><=
/p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">On one occasion it happened that the
                  battery was depleted before I had a chance to shut it
                  down properly.</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Since then when I run uhd_usrp_probe I
                  get a message that no devices could be detected.</span>=
</p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">The E320 boots up normally and I can
                  communicate with it using both serial console and LAN.<=
/span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">I initially suspected an SD card image
                  corruption and I tried to rewrite the image using
                  mender.</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">I tried the same version I am using (UHD
                  4.1.0.5) and I tried a newer=C2=A0version UHD 4.4.0.0 a=
nd
                  and older=C2=A0version UHD 3.15.LTS.</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Nothing seems to help. The E320 still
                  reports "No devices found". I even tried
                  uhd_usrp_probe with an argument of IP address. Nothing
                  helps.</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Here is a sample dump:</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">root@ni-e320:~# uhd_usrp_probe
                </span></p>
              <div>
                <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                    color:black">[INFO] [UHD] linux; GNU C++ version
                    9.2.0; Boost_107100; UHD_4.4.0.0-0-g5fac246b</span></=
p>
              </div>
              <div>
                <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                    color:black">[INFO] [MPMD FIND] Found MPM devices,
                    but none are reachable for a UHD session. Specify
                    find_all to find all devices.</span></p>
              </div>
              <div>
                <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                    color:black">Error: LookupError: KeyError: No
                    devices found for -----&gt;</span></p>
              </div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Empty Device Address</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">=C2=A0</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Can someone help me fix this problem?
                  Point me in the right direction?</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Is it fixable by myself or do I have to
                  return the unit to be serviced?</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">=C2=A0</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Thanks,</span></p>
            </div>
            <div>
              <p class=3D"x_MsoNormal"><span style=3D"font-size:12.0pt;
                  color:black">Ofer Saferman</span></p>
            </div>
          </div>
        </div>
      </div>
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
    If you use the serial console, during boot, does it issue any
    unusual error messages?=C2=A0 That can be a clue as to what's going<b=
r>
    =C2=A0 on.=C2=A0=C2=A0 You might have to turn on recording on your te=
rminal
    application, because things scroll past fairly quickly.<br>
    <br>
    <br>
  </body>
</html>

--------------kp0opEerL5xpJl10GGgUb8SW--

--===============6734951384666718622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6734951384666718622==--
