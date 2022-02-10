Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAB84B1258
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 17:09:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFB113849CC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 11:09:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xvh3bbRC";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C138838460D
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 10:59:16 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id o10so5302766qkg.0
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 07:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=M+47ewdhsio/KvIE+EW/Op5UWAtA+nRJpYbuBwDZBlY=;
        b=Xvh3bbRCiv/FSweMczCoCkW7pPZxGQGXzFcBdQRwRzA8WPZBMlwZ/er7Z+UZGn8vRt
         GD+KBaCbCj5XRKeHFzdsG2rupumu7oTikNJbzvErHEh869yJkwjTQSMkUWuNrfYUXSp3
         QxAWJ8jeB6zhSLHytnC/Ks717wZSrBoSBf4NboFIlLqr/QFEX5y2sTONyEcTj0xwsxL3
         FKqlZz6tjWOMjrxyU3w3UyNXH5ueYE3HlimArLsL0PqfAwAQohsUKKCCJLO9dWGcyNo1
         qfwi4TejGv23559/ha58b+awdHqE/ZkFdpoxBL/NCUZ0wvONWxazW/JrmldIk1zXQ7be
         ctTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=M+47ewdhsio/KvIE+EW/Op5UWAtA+nRJpYbuBwDZBlY=;
        b=BOR2CM8+xYt7OJZzmyB6Yas7bJVmtrxocFQX5nh42NqmtXmczvx6NycIbV1TTPeDjV
         DKmAQDrDn310wUOClZhc1v4fHgjG849BPBW+Dv2p8AfTgf0G5ZxVBt/1xmRMf3F49eDR
         Oc8LiLixIwox8U0N/fqTblXInvFCW3xuSwgUBbCgH3EytciwC+TTlkfnpHOOZjGETMAU
         h1JEY8W/C/Ym2jC7M8FU99TvzH8oH2gkxT/6x1PSuMLXIOvhJ26kZkFR+5vMR+K+x4B7
         WWalNHhwdnl/YImcWzbrWESq6QVHI0DVhvbt9U/xtDO22DlNAxgfezdQGQgAKRhh30/1
         ww1g==
X-Gm-Message-State: AOAM530lmyAzknKwi5amekYpUXqhQoWtk3AOUUzMsrxJA26uymAHy4F3
	DiyfnIPcvKyMahzGRXsqnaUOQ3gcikbOsQ==
X-Google-Smtp-Source: ABdhPJyNscV3wuAJvD06pwBAqey9vBxq3VuUHt2Zp86TLAN8aLGtgppVWLqjopO2D6JCVV5QIfKmFw==
X-Received: by 2002:a05:620a:404c:: with SMTP id i12mr4167261qko.254.1644508755861;
        Thu, 10 Feb 2022 07:59:15 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id a14sm11097198qtb.92.2022.02.10.07.59.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 07:59:15 -0800 (PST)
Message-ID: <29d44c43-7957-c23a-ec6f-7aadd6fb62e5@gmail.com>
Date: Thu, 10 Feb 2022 10:59:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: DFZJ45ZIWRD6SQH3VBQZCRPAYRQ32CE3
X-Message-ID-Hash: DFZJ45ZIWRD6SQH3VBQZCRPAYRQ32CE3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [UHD] Setting sampling rates to 500Msps is not supported.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DFZJ45ZIWRD6SQH3VBQZCRPAYRQ32CE3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6005758246229260832=="

This is a multi-part message in MIME format.
--===============6005758246229260832==
Content-Type: multipart/alternative;
 boundary="------------bPf1DpxmnPMPfHuTcadpn9iD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bPf1DpxmnPMPfHuTcadpn9iD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-10 07:39, Tobias Kronauer wrote:
> Dear all,
>
> recently, we purchased a X410. According to the=20
> [manual](https://www.ni.com/pdf/manuals/378493a), the USRP supports a=20
> maximum I/Q samples rate of up to 491.52 MSps. Using the UHD API=20
> however, warnings are printed to stdout that the rate is set to 245.76=20
> MSps.
>
>
What type of network interface are you using?=C2=A0 A 10GbE interface can=
=20
support a maximum of approximately 250Msps.

--------------bPf1DpxmnPMPfHuTcadpn9iD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-10 07:39, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AM8P250MB010792CDC76C3D13D18CB1749B2F9@AM8P250MB0107.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <div
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif">Dear
          all, </div>
        <div
style=3D"color:black;font-size:12pt;font-family:Calibri,Arial,Helvetica,s=
ans-serif">
          <div><br>
          </div>
          <div>recently, we purchased a X410. According to the
            [manual](<a class=3D"moz-txt-link-freetext" href=3D"https://w=
ww.ni.com/pdf/manuals/378493a">https://www.ni.com/pdf/manuals/378493a</a>=
), the USRP
            supports a maximum I/Q samples rate of up to 491.52 MSps.
            Using the UHD API however, warnings are printed to stdout
            that the rate is set to 245.76 MSps.</div>
          <div><br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    What type of network interface are you using?=C2=A0 A 10GbE interface=
 can
    support a maximum of approximately 250Msps.<br>
    <br>
  </body>
</html>

--------------bPf1DpxmnPMPfHuTcadpn9iD--

--===============6005758246229260832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6005758246229260832==--
