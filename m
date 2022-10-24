Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CACA160B503
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 20:11:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBAD6383684
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 14:11:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666635106; bh=bfknoDdXLI14I/o7zl4Yp1JMnVZdN6RMNteGDUgRs98=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xUP2Uk23O2iFyNVaJeayguAPgBmMMmLzimA8FzxN0Vicx8NekUnPxjgfhs89xbXKG
	 jKS8qmcWtitC1ZTtE7Av5OEomYxcODQGMbFBlvtDcVn9PWbMENvG13gbDMn3iIt0gY
	 ojTSikkSFsVr3ck2q9DvC0nSGZssclWqqaRjjF4+TQGLGpIsGjMw6hlYY5eIzSHqaT
	 CkdTxM1469PoIcCh7lgR3ZD+b3b5xmfO31l9sXcmG3Mrh7TF94Rv2P3bpfFvhAIkEY
	 FRiiDNrNCpgHfD92o49l03tO1lxQOAlKDwSjKG0kzVWfBXQHPzAa/3GavcXOw/e8AY
	 2AH8ZYRasOhUg==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id DA4D83810BE
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 14:09:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JDoIRYsd";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id b25so6568225qkk.7
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 11:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rP1gNNeREmmAye68pDEsgG3AmGJHSUqESgwRiV4GK74=;
        b=JDoIRYsdfaXVOvm09JQwTs/bOnNwHYJTkruhOqnNJX/AVXqM0vew8lf9zJ2ebccYCB
         5mD0z1gotQS4lZCyfbIGsd93ox4Rsq3coJUBxyicJU1IFr2HqXFd/rSGpTGR6jkkRuuZ
         /GLaHucjK1XmhXKYajqFuaphd9JBvR2et8TaacpX3wsUyHzvtx5IJAc40O9gy1SLaFCY
         /OnGXoOoP7hpYaiIOL+u7lsoQjAK0TTsHkLpf6JalYeybLxqW/11+dboxrXhDCKPNszL
         4KJsxmBQr0/fiPMuCzyfeg+jp2dMEf+cDo5HbNSM0SHLLh4zIf6CglxrU25bVOxLtWek
         Fh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rP1gNNeREmmAye68pDEsgG3AmGJHSUqESgwRiV4GK74=;
        b=NHfl04nqUGAXb0Ya0PzFPv6wx6oGQvRJalnT40D+lDs18ds/RNSLAoQQI2AcNz0tN4
         H0IoNzBPn/icgOL1UkRVATRHnKZX9oZqOY6V9ROQF5PDX4FNTRakoPhpjUJJXMO+wE4x
         vbJ7wW4Ycp+srDHoJYeWyGdctDI8L2AlYFelqIJutg+nTs9v55YLdOzonkkWPCdrZS7M
         CctHyhe5s/FBS1ELQAubkZELGKudofX2WPz6jpA979Bubc3/0hyyG+YhQ9GY2HLSDL3B
         amEbFHZxdve/B9AiS/UVEsCCq+pZXoxzh2fZGHLUqRR/AhEWrsRupsF+DHyQ0G/U9hI2
         25bg==
X-Gm-Message-State: ACrzQf3nVmmbfPuCFCzZFZQqR4SkgjmJpNc06cQ0phqANDwH6QCiy9X8
	Iw6AnwgIQO0uZDkccrLDXe48KB2n7BU=
X-Google-Smtp-Source: AMsMyM7mV5ksl9iZHmwX2OKLrptIPqdGQC66haqEVEMcj9n44xb4eq507qiRr/6/czyPJikevoK+ow==
X-Received: by 2002:a05:620a:24c2:b0:6ee:83d2:fe38 with SMTP id m2-20020a05620a24c200b006ee83d2fe38mr24518784qkn.495.1666634999078;
        Mon, 24 Oct 2022 11:09:59 -0700 (PDT)
Received: from [192.168.2.171] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id bv17-20020a05622a0a1100b00304fe5247bfsm308571qtb.36.2022.10.24.11.09.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 11:09:58 -0700 (PDT)
Message-ID: <2417c33c-83d2-0cff-85c7-c34bab60c85b@gmail.com>
Date: Mon, 24 Oct 2022 14:09:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN0P110MB1015C5E6363AAD78C7D303A7B12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN0P110MB1015C5E6363AAD78C7D303A7B12E9@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: VFX476HS34IPFVNSXSNV3C6T6IGPGDK2
X-Message-ID-Hash: VFX476HS34IPFVNSXSNV3C6T6IGPGDK2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat number mismatch error with E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VFX476HS34IPFVNSXSNV3C6T6IGPGDK2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1577662846050106860=="

This is a multi-part message in MIME format.
--===============1577662846050106860==
Content-Type: multipart/alternative;
 boundary="------------jVSEjYnGGEoWx7S9Rsmp049M"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------jVSEjYnGGEoWx7S9Rsmp049M
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-10-24 12:55, White, Joshua J wrote:
>
> All,
>
> My company recently purchased an E312, which I have been attempting to 
> set up and test. I have UHD 4.3.0.0-6-g5aa6bc44 on my host PC and 
> downloaded and flashed the most recent sdimg from 
> https://files.ettus.com/binaries/cache/e3xx/ onto the E312, which is 
> UHD 4.3.0.0-0-g1f8fd345. Running uhd_usrp_probe on the E312 itself 
> over an SSH connection works as expected, but when I try to run 
> uhd_usrp_probe from the host PC, I get the following error:
>
> jjwhite@5cd01378zc:~$ uhd_usrp_probe
>
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; 
> UHD_4.3.0.0-6-g5aa6bc44
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e31x-3248EB5,fpga=n/a,claimed=False,addr=192.168.1.174
>
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd345
>
> [INFO] [MPM.main] Spawning RPC process...
>
> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
>
> [INFO] [MPM.PeriphManager] Device serial number: 3248EB5
>
> [WARNING] [MPM.PeriphManager] Found more EEPROM paths than 
> daughterboards. Ignoring some of them.
>
> [INFO] [MPM.RPCServer] RPC server ready!
>
> [INFO] [MPM.RPCServer] Spawning watchdog task...
>
> [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 
> 4.2. Please update the version of MPM on your USRP device.
>
> Error: RuntimeError: MPM minor compat number mismatch. Expected: 4.3 
> Actual: 4.2. Please update the version of MPM on your USRP device.
>
> Thinking it might be related to the FPGA image, I attempted to update 
> it using uhd_image_loader, which produced a similar error:
>
> jjwhite@5cd01378zc:~$ uhd_image_loader --args type=e3xx,addr=192.168.1.174
>
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; 
> UHD_4.3.0.0-6-g5aa6bc44
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e31x-3248EB5,fpga=n/a,claimed=False,skip_init=1
>
> [INFO] [MPMD] Claimed device without full initialization.
>
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
> [INFO] [MPM.PeriphManager] Installing component `fpga'
>
> [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>
> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
>
> [INFO] [MPM.PeriphManager] Device serial number: 3248EB5
>
> [WARNING] [MPM.PeriphManager] Found more EEPROM paths than 
> daughterboards. Ignoring some of them.
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: 
> mgmt_addr=192.168.1.174,type=e3xx,product=e310_sg3,serial=3248EB5,name=ni-e31x-3248EB5,fpga=n/a,claimed=False,addr=192.168.1.174,find_all=1
>
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never 
> fully initialized!
>
> [ERROR] [MPMD] MPM minor compat number mismatch. Expected: 4.3 Actual: 
> 4.2. Please update the version of MPM on your USRP device.
>
> Error: RuntimeError: MPM minor compat number mismatch. Expected: 4.3 
> Actual: 4.2. Please update the version of MPM on your USRP device.
>
> Is there a reason that my host PC thinks the E312 has MPM v.4.2 
> installed instead of 4.3? Does the UHD 4.3 image for the E312 come 
> with MPM 4.2? If so, is there a way to update it? Is there some other 
> reason for the error, and if so, is there a way to correct it? Thank 
> you in advance for your time and assistance.
>
> Very respectfully,
>
Josh:

Could you get on to the E312 itself, and:

uhd_config_info --version

And share with us what it says?

--------------jVSEjYnGGEoWx7S9Rsmp049M
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-24 12:55, White, Joshua J
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN0P110MB1015C5E6363AAD78C7D303A7B12E9@BN0P110MB1015.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">All,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">My company recently purchased an E312,
          which I have been attempting to set up and test. I have UHD
          4.3.0.0-6-g5aa6bc44 on my host PC and downloaded and flashed
          the most recent sdimg from <a
            href=3D"https://files.ettus.com/binaries/cache/e3xx/"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/binaries/cache/e3xx/</a>
          onto the E312, which is UHD 4.3.0.0-0-g1f8fd345. Running
          uhd_usrp_probe on the E312 itself over an SSH connection works
          as expected, but when I try to run uhd_usrp_probe from the
          host PC, I get the following error:<br>
          <br>
          jjwhite@5cd01378zc:~$ uhd_usrp_probe<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 11.2.0=
;
          Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in
          parallel with args:
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174<o=
:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.main] Launching USRP/MPM,
          version: 4.3.0.0-g1f8fd345<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.main] Spawning RPC process...<=
o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Skipping
          HW/SW compatibility check!<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device serial
          number: 3248EB5<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Found more
          EEPROM paths than daughterboards. Ignoring some of them.<o:p></=
o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.RPCServer] RPC server ready!<o=
:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Spawning watchdog
          task...<o:p></o:p></p>
        <p class=3D"MsoNormal">[ERROR] [MPMD] MPM minor compat number
          mismatch. Expected: 4.3 Actual: 4.2. Please update the version
          of MPM on your USRP device.<o:p></o:p></p>
        <p class=3D"MsoNormal">Error: RuntimeError: MPM minor compat
          number mismatch. Expected: 4.3 Actual: 4.2. Please update the
          version of MPM on your USRP device.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thinking it might be related to the FPGA
          image, I attempted to update it using uhd_image_loader, which
          produced a similar error:<br>
          <br>
          jjwhite@5cd01378zc:~$ uhd_image_loader --args
          type=3De3xx,addr=3D192.168.1.174<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 11.2.0=
;
          Boost_107400; UHD_4.3.0.0-6-g5aa6bc44<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in
          parallel with args:
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,skip_init=3D1<o:p></o:=
p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD] Claimed device without full
          initialization.<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Starting update=
.
          This may take a while.<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing
          component `fpga'<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Installing
          component `dts'<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD IMAGE LOADER] Update componen=
t
          function succeeded.<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.RPCServer] Resetting periphera=
l
          manager.<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Skipping
          HW/SW compatibility check!<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] Device serial
          number: 3248EB5<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Found more
          EEPROM paths than daughterboards. Ignoring some of them.<o:p></=
o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 1 device(s) in
          parallel with args:
mgmt_addr=3D192.168.1.174,type=3De3xx,product=3De310_sg3,serial=3D3248EB5=
,name=3Dni-e31x-3248EB5,fpga=3Dn/a,claimed=3DFalse,addr=3D192.168.1.174,f=
ind_all=3D1<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MPM.PeriphManager] Cannot run
          deinit(), device was never fully initialized!<o:p></o:p></p>
        <p class=3D"MsoNormal">[ERROR] [MPMD] MPM minor compat number
          mismatch. Expected: 4.3 Actual: 4.2. Please update the version
          of MPM on your USRP device.<o:p></o:p></p>
        <p class=3D"MsoNormal">Error: RuntimeError: MPM minor compat
          number mismatch. Expected: 4.3 Actual: 4.2. Please update the
          version of MPM on your USRP device.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is there a reason that my host PC thinks
          the E312 has MPM v.4.2 installed instead of 4.3? Does the UHD
          4.3 image for the E312 come with MPM 4.2? If so, is there a
          way to update it? Is there some other reason for the error,
          and if so, is there a way to correct it? Thank you in advance
          for your time and assistance.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Very respectfully,</p>
      </div>
    </blockquote>
    Josh:<br>
    <br>
    Could you get on to the E312 itself, and:<br>
    <br>
    uhd_config_info --version<br>
    <br>
    And share with us what it says?<br>
    <br>
  </body>
</html>

--------------jVSEjYnGGEoWx7S9Rsmp049M--

--===============1577662846050106860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1577662846050106860==--
