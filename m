Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF26E48DA63
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 16:03:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E45D2385455
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 10:03:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SrHYLIYo";
	dkim-atps=neutral
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 785E23850C2
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 10:02:31 -0500 (EST)
Received: by mail-qv1-f53.google.com with SMTP id jr5so6790658qvb.11
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 07:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=h8bG9YiSJazU3WlOQvRHpdawHwhncyvkNH/5bV/ocBU=;
        b=SrHYLIYoL9heBjHNZTvhE3Y+jDTVEH9J1c3DxnagtqqaWzsC9NJqlWQXqtT8yKDvRu
         8GXL1VV2glBQrmEmsKL55F6WgEhpYsoJjIkOihV510mq6d5u30QjfUVPFmHAzb4JGsfC
         jb3+kAFJWUzRzw1dVL+yG/gdTQY4y8Ntp6HlgtALYTSLRuszZKcfe7J0U5L8e2btt+th
         tSVfrUYnJ9P8dSscNnrP5pIL233Otz2IADcnh1gvXLVVLe0Rzg8vttdXEFuSOTbU7PAT
         0vSJqGWDDH3cKNe0MpF/0HY4E3RFfg8tSbiPCsZoZKBSX5nuIaqBWMTbAj8FFlEkv40B
         mNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=h8bG9YiSJazU3WlOQvRHpdawHwhncyvkNH/5bV/ocBU=;
        b=nUWlw+3l/qZ5rUC/g44bINb6+KM/f7VD/kuUa41MIHo8lgnsx/0w+9wzJLWZPWsIES
         pdvG3vxT95MyEnkpLX2DeIRecBwIJqL44MQEE15Dk16zcNxsgFKBeHpGYG73NRTrrCln
         RJ9WEldfnfVsPK8kYUzdv6Fc545sWrkWqGE5CJXnFmLaS4def4Pk57m6EU/AS1bx0PWS
         LAsvloG6t8bQKvybyQHeMVPghI9LyNRxGDbHdSljE+7jpXEc4S1NsqVCKzD5kdjiYKUc
         j4YjLFmiajeV3TSvq0aN3oltt6eKJuZFukQkH5CQ4aI2Q1vumbvBCp7cB6LfSvHFCrLd
         ntfw==
X-Gm-Message-State: AOAM5310bHBRIRPUJ+Yx706dj4yxflatSx/BltF9Ope9jzjdBqTrOSYo
	y9iB+OxwU63Je7e/Mow5i0vAo0fpypQW/g==
X-Google-Smtp-Source: ABdhPJy0R3bv5xnjird5biU099hPn0lkZ8oQEBXvUxoRY4IYFXHiWR6SOz48dgAGorQf6KnQR/PgTA==
X-Received: by 2002:a05:6214:3019:: with SMTP id ke25mr2526132qvb.90.1642086150408;
        Thu, 13 Jan 2022 07:02:30 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w17sm809596qtj.58.2022.01.13.07.02.29
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 07:02:29 -0800 (PST)
Message-ID: <6d129880-f75c-3381-24da-e4b57044a5c9@gmail.com>
Date: Thu, 13 Jan 2022 10:02:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3Pt07rbZitdjHCZAe1qk0xv_y_JavpD4s92KCcHJ=nSKfg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAA=S3Pt07rbZitdjHCZAe1qk0xv_y_JavpD4s92KCcHJ=nSKfg@mail.gmail.com>
Message-ID-Hash: IJNFZ557BDQ3OSUKMB4EUDTIRPXKZHT7
X-Message-ID-Hash: IJNFZ557BDQ3OSUKMB4EUDTIRPXKZHT7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX 160 transmit but only there is a small carrier....?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IJNFZ557BDQ3OSUKMB4EUDTIRPXKZHT7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3447995635377839174=="

This is a multi-part message in MIME format.
--===============3447995635377839174==
Content-Type: multipart/alternative;
 boundary="------------yVCj4MBl0F0xTv1IfaQ9X1q0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------yVCj4MBl0F0xTv1IfaQ9X1q0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-13 07:22, sp h wrote:
> For USRP x310, I had UBX 160 daughterboard, but lately, however, RX=20
> works correctly But transmit mode is not working correctly.
> I had no data signal........
> UBX 160 transmit but only there is a small carrier....?
>
> For HackrfOne we had the same problem, we replace RF amplifier IC,=C2=A0=
=20
> now it works...
> but for USRP can anyone guide me on which IC is probable is damaged??
> any offers?
>
> you can see UBX 160 schematic there...
> https://files.ettus.com/schematics/ubx/
>
> Thanks in advance
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The PHA-1 (U31) is the RF output amplifier, but it sits behind two=20
layers of RF switch--SKY13350-385LF=C2=A0 and HMC7992 (U50 and U32).

I have to ask what you're doing to blow-out RF output amplifiers.=20
Transmitting into a dead-short for extended periods could do it, but the=20
power levels
 =C2=A0 of these devices are low enough that transmitting into an "open" =
or=20
other type of mis-match is unlikely to cause damage.


--------------yVCj4MBl0F0xTv1IfaQ9X1q0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-13 07:22, sp h wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAA=3DS3Pt07rbZitdjHCZAe1qk0xv_y_JavpD4s92KCcHJ=3DnSKfg@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">For USRP x310, I had UBX 160 daughterboard, but
        lately, however, RX works correctly But transmit mode is not
        working correctly.
        <div>I had no data signal........<br>
          <div>UBX 160 transmit but only there is a small carrier....?<br=
>
          </div>
        </div>
        <div><br>
        </div>
        <div>For HackrfOne we had the same problem, we replace RF
          amplifier IC,=C2=A0 now it works...</div>
        <div>but for USRP can anyone guide me on which IC is probable is
          damaged??</div>
        <div>any offers?</div>
        <div><br>
        </div>
        <div>you can see UBX 160 schematic there...</div>
        <div><a href=3D"https://files.ettus.com/schematics/ubx/"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/schematics/ubx/</a></div>
        <div><br>
        </div>
        <div>Thanks in advance=C2=A0</div>
      </div>
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
    The PHA-1 (U31) is the RF output amplifier, but it sits behind two
    layers of RF switch--SKY13350-385LF=C2=A0 and HMC7992 (U50 and U32).<=
br>
    <br>
    I have to ask what you're doing to blow-out RF output amplifiers.=C2=A0
    Transmitting into a dead-short for extended periods could do it, but
    the power levels<br>
    =C2=A0 of these devices are low enough that transmitting into an "ope=
n"
    or other type of mis-match is unlikely to cause damage.<br>
    <br>
    <br>
  </body>
</html>
--------------yVCj4MBl0F0xTv1IfaQ9X1q0--

--===============3447995635377839174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3447995635377839174==--
