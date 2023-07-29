Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19152767FF3
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jul 2023 16:08:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00C1A384E18
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jul 2023 10:08:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690639713; bh=D1euxPH5Iusx5XobQWsVmAujQYyObdlOsD4Ucn6DdQc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TCF50kIwXShl6RSuvjlMnQ1PptI/8AssAinD0dP1SmD93gWenaPZ4zl0vJ/kRYwTG
	 EXhIC/5mC5ajGo1RvkNDt7uxSSnGsJvJdQdu7m45qTE61aAQlqI7bQsIGPEQ28CqyF
	 GXTZy9im68W33aXHTSYA3ho1A9M3W/qkqTJCa0ZVrHMlnUzBZjov9n7zalsOaYfYIt
	 PBuIwHFmBAosJJ1uUsZYo0y4kUtGtO9kVyKCkbgkf/HjbJpJur/ul7WmdwFOABUTmb
	 INmxYz1NBbF3iHQYjiLfimjAGngyg5yJoAzAjVbRFrF8vKJMNXcet3YQLsKkdHmTIa
	 Zl0wXi8mTAd/g==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C6BB3841D9
	for <usrp-users@lists.ettus.com>; Sat, 29 Jul 2023 10:07:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SPq8LQQ/";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4053cc10debso16999961cf.2
        for <usrp-users@lists.ettus.com>; Sat, 29 Jul 2023 07:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690639677; x=1691244477;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=he2GOsdy1Pj9DoUV2dv/sOp3zMTmfMsqiba5BmwdVvg=;
        b=SPq8LQQ/CjkFo0DHWj1XpU1SMKlMPzOXdrYtfx6olXnA6VqHUOVB+UFemk2vyx3fBY
         eEL6X3zPISwMYe9yJby1lookRZSdZfLAmNcP2nZ5lkDnVrhysjJwjUcca3NROD1B9jLl
         aJkFEa8fsdETSrl9pWrKX62TxJ1rFKp4tXEg4Sahhw+Zjc+pIT+3foNcItxO6LDi/oH2
         GRmtsEcJD9KbupRlowZPY06hmT/ofzLm2GaMO4WyWmZDRKWDIPesxwHNYR1X4rmr3lnm
         Ns/GS24RP7uoTbJ7WUhWSHqTBHmwmwMclWxFmvFqvzMAWQE2+9UMLYEeKMmdB31DaeT9
         Y2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690639677; x=1691244477;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=he2GOsdy1Pj9DoUV2dv/sOp3zMTmfMsqiba5BmwdVvg=;
        b=E4y07AMxDGVxdlUd0o1cAivlSwXEc1LWNm7okZvRbh/HVhaGn3i7Gt5T3TchjeudSP
         +4T4DyBImifgw05QmJaR0kO8QOBJqrFh8z2WV0/JYQSCZZIEDDAEUOAKY8G/gWSP+3wP
         V+OGtYsymKZqnZaPN+kkqvdBRHlDMOeRyRLUYMe2UdGGzGgxV3KRDX3KvXwnnNuK6oUb
         jFI85npG7zGX03CTGFri1tRy91CPcgwGE1BeuK4K3nKs1d+lU0cE7BCI/ERarQI+zyTs
         X8liCBEPpsArRa0c+otse3TnkPzGt/XT27V66YLRpYHS1xkWyEA/nJLk/JRqVEmTiFvk
         xoBw==
X-Gm-Message-State: ABy/qLY56IVQgMbehRK9pcSHrAthECxEA+bIWYkS+VRXc5R2E+Bgz1gG
	jpEFTa/7fUsqfiH2/ZcZpHet75Fx5tI=
X-Google-Smtp-Source: APBJJlEZRKcrYkCEuH3fHyVIkaVxwGmGF5jnRZatD40suSxW6d0RjW0YEg1b6Rqx8A+1wpcoZtkwkQ==
X-Received: by 2002:a05:622a:347:b0:3ff:438c:6241 with SMTP id r7-20020a05622a034700b003ff438c6241mr6740199qtw.58.1690639677409;
        Sat, 29 Jul 2023 07:07:57 -0700 (PDT)
Received: from [192.168.2.173] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id y13-20020ac8704d000000b003f9aecb599fsm1989732qtm.35.2023.07.29.07.07.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Jul 2023 07:07:57 -0700 (PDT)
Message-ID: <69bd12cb-cf7e-5807-aadb-36bcf46dc8d5@gmail.com>
Date: Sat, 29 Jul 2023 10:07:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com>
Message-ID-Hash: AAEEKDP55KD65WK3ICWXSEABJ7EKEDHO
X-Message-ID-Hash: AAEEKDP55KD65WK3ICWXSEABJ7EKEDHO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320 not detecting any devices after power failure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AAEEKDP55KD65WK3ICWXSEABJ7EKEDHO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0446865540338524968=="

This is a multi-part message in MIME format.
--===============0446865540338524968==
Content-Type: multipart/alternative;
 boundary="------------1CwOkW8SvrtDR1dtwC9g945c"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1CwOkW8SvrtDR1dtwC9g945c
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/07/2023 01:47, Ofer wrote:
> Hello all,
> I operate a USRP E320 using an externa battery. Usually I have time to=20
> shut it down in an orderly fashion before the battery is depleted.
> On one occasion it happened that the battery was depleted before I had=20
> a chance to shut it down properly.
> Since then when I run uhd_usrp_probe I get a message that no devices=20
> could be detected.
> The E320 boots up normally and I can communicate with it using both=20
> serial console and LAN.
> I initially suspected an SD card image corruption and I tried to=20
> rewrite the image using mender.
> I tried the same version I am using (UHD 4.1.0.5) and I tried a=20
> newer=C2=A0version UHD 4.4.0.0 and and older=C2=A0version UHD 3.15.LTS.
> Nothing seems to help. The E320 still reports "No devices found". I=20
> even tried uhd_usrp_probe with an argument of IP address. Nothing helps=
.
> Here is a sample dump:
> root@ni-e320:~# uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;=20
> UHD_4.4.0.0-0-g5fac246b
> [INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD=20
> session. Specify find_all to find all devices.
> Error: LookupError: KeyError: No devices found for ----->
> Empty Device Address
>
> Can someone help me fix this problem? Point me in the right direction?
> Is it fixable by myself or do I have to return the unit to be serviced?
>
> Thanks,
> Ofer Saferman
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Are there any unusual messages during boot?

What about when you're on the device, is there anything in "dmesg" that=20
indicates a problem?

--------------1CwOkW8SvrtDR1dtwC9g945c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/07/2023 01:47, Ofer wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hello all,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I operate a USRP E320 using an externa battery. Usually I have
        time to shut it down in an orderly fashion before the battery is
        depleted.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        On one occasion it happened that the battery was depleted before
        I had a chance to shut it down properly.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Since then when I run uhd_usrp_probe I get a message that no
        devices could be detected.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        The E320 boots up normally and I can communicate with it using
        both serial console and LAN.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I initially suspected an SD card image corruption and I tried to
        rewrite the image using mender.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I tried the same version I am using (UHD 4.1.0.5) and I tried a
        newer=C2=A0version UHD 4.4.0.0 and and older=C2=A0version UHD 3.1=
5.LTS.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Nothing seems to help. The E320 still reports "No devices
        found". I even tried uhd_usrp_probe with an argument of IP
        address. Nothing helps.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Here is a sample dump:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        root@ni-e320:~# uhd_usrp_probe
        <div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version
          9.2.0; Boost_107100; UHD_4.4.0.0-0-g5fac246b</div>
        <div class=3D"ContentPasted0">[INFO] [MPMD FIND] Found MPM
          devices, but none are reachable for a UHD session. Specify
          find_all to find all devices.</div>
        <div class=3D"ContentPasted0">Error: LookupError: KeyError: No
          devices found for -----&gt;</div>
        Empty Device Address</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        Can someone help me fix this problem? Point me in the right
        direction?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        Is it fixable by myself or do I have to return the unit to be
        serviced?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        Ofer Saferman<br>
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
    Are there any unusual messages during boot?<br>
    <br>
    What about when you're on the device, is there anything in "dmesg"
    that indicates a problem?<br>
    <br>
  </body>
</html>

--------------1CwOkW8SvrtDR1dtwC9g945c--

--===============0446865540338524968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0446865540338524968==--
