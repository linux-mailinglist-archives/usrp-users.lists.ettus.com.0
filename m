Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC3E3B33E6
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 18:25:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7FC3383D44
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 12:25:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AHC92T+p";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A5C4383B70
	for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 12:25:02 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id y29so14390578qky.12
        for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 09:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=6aQk4j0u/4uy9Qh+PUkn950dJ7z1bTG81E0OPq88+Ho=;
        b=AHC92T+pgdYb+wQU9EwbEr/GFph1KuAfVOnGeZBULuca0n0dEp7f2OM5wnE4tdpFSG
         YYjzvHYJk2ImLIyUukgNHKyuBG/auinApIbfFw74W3Px7L1itTTzrtgFG0Cvb998UZDp
         TzLCIdUXqef5S2GkDVwrAi5SPA4j2EoypgJqgWHUAWF3//Yqmx8NXk676QRwxTOvIWsd
         Yh/cokkHtID++1F9t/IuBJj3ybxy1X+6FCZP4opQyUVgO2eyCr/swWivUEeYyC/IzHl8
         eqUAEzIfO74bAHO4/TBAYyrHPGRQMCDSrYxRonPxpZFfv9lXs98ihRJBxEpSDRoxfx+T
         S2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=6aQk4j0u/4uy9Qh+PUkn950dJ7z1bTG81E0OPq88+Ho=;
        b=aCYsNox/oXZ9UhbRx/Yi5UV4B7sGKwFVZdqEX8A4Ta5ZNHkl8h4FIR9hZDgxoqTk3J
         0zhqfDebs9ceZE9ricBSgwX4E47fGaHxWRHvrkKbZFbi3xSaV3uLnqNzDqahbmufC9D5
         qO9RWCPa1z81GgiEsL4ZRNorbsu5cSnaGMWKs4Fn0W71wazPwnJRP98xnTkOVNdBORWu
         C6Xk5qSNsivpHLseGm0UvsO1f9IT/GwXs+YAqsbYjeRiWh8RJkRjETxW3UJyQ+zMatq3
         bedr302Mgp31BW7cZGW4Ap7XOdCk7KBuHgYBT9wQ/+a6Su9mRmspGEiK9EETCPBlS3fZ
         2LAQ==
X-Gm-Message-State: AOAM531rpLFU30Ukd8OcReap1hAUMJdCtwzNVFpJrCC7hEajb/5MRc5O
	d6csADQdPmz1YrS+nuzXFuplaaCtNlaxGg==
X-Google-Smtp-Source: ABdhPJyC/yUXNguW/KYiF00Ld3s12u+OtuWd/dIxm7X26SE5vrxMxsitg19nQ/Ytnos2CZM19OHo9w==
X-Received: by 2002:a05:620a:1281:: with SMTP id w1mr6716106qki.261.1624551901407;
        Thu, 24 Jun 2021 09:25:01 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id m2sm2782941qkh.38.2021.06.24.09.25.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jun 2021 09:25:01 -0700 (PDT)
Message-ID: <60D4B1DC.9000303@gmail.com>
Date: Thu, 24 Jun 2021 12:25:00 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <oM3lqGxHaQylSr7Gcz3I4pAyvCMNZO0M0pXe7busU@lists.ettus.com>
In-Reply-To: <oM3lqGxHaQylSr7Gcz3I4pAyvCMNZO0M0pXe7busU@lists.ettus.com>
Message-ID-Hash: GWT2Q2R3VMHQ2JI3ZMJCKTDJKTKGLQJB
X-Message-ID-Hash: GWT2Q2R3VMHQ2JI3ZMJCKTDJKTKGLQJB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GWT2Q2R3VMHQ2JI3ZMJCKTDJKTKGLQJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1900257651304436416=="

This is a multi-part message in MIME format.
--===============1900257651304436416==
Content-Type: multipart/alternative;
 boundary="------------080003000505050609010808"

This is a multi-part message in MIME format.
--------------080003000505050609010808
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/24/2021 09:01 AM, rblack@swri.org wrote:
>
> Can someone suggest a straightforward way to turn the radio block=20
> transmit on/off at precise times? (=93Off=94 could just mean changing=20
> transmit output level to =930=92, provided it could be done at exact ti=
mes)
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
THIS may be useful:

https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UH=
D



--------------080003000505050609010808
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 06/24/2021 09:01 AM, <a class=3D"mo=
z-txt-link-abbreviated" href=3D"mailto:rblack@swri.org">rblack@swri.org</=
a>
      wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:oM3lqGxHaQylSr7Gcz3I4pAyvCMNZO0M0pXe7busU@lists.ettus.c=
om"
      type=3D"cite">
      <p>Can someone suggest a straightforward way to turn the radio
        block transmit on/off at precise times? (=93Off=94 could just mea=
n
        changing transmit output level to =930=92, provided it could be d=
one
        at exact times)</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    THIS may be useful:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Synchroni=
zing_USRP_Events_Using_Timed_Commands_in_UHD">https://kb.ettus.com/Synchr=
onizing_USRP_Events_Using_Timed_Commands_in_UHD</a><br>
    <br>
    <br>
  </body>
</html>

--------------080003000505050609010808--

--===============1900257651304436416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1900257651304436416==--
