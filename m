Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EAD48050E
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 23:14:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32FBE384BF2
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 17:14:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W3IbHceT";
	dkim-atps=neutral
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id F35EA384805
	for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 17:13:26 -0500 (EST)
Received: by mail-qt1-f169.google.com with SMTP id bp39so14355903qtb.6
        for <usrp-users@lists.ettus.com>; Mon, 27 Dec 2021 14:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=ce0ai5ibCdD+efklvhpOkih89Na78ESXsGwT71diwfw=;
        b=W3IbHceT3MDVcZubgFaLItu6SpVO2vZSXoBQIOBnGsGkLBDFbTJJDN3iLXlO3rwcpJ
         eAdbAF5icgB8JW0cueD1v9fuy5LkFlR2uCmeNvUhomZqwys7vvUeEyXtoNod58iq/+kR
         hAAEwJ/njwnud7AAPr37VctrPWQ+6VWohZNLuXEzekscjMDQ0xspk1sEUjxvBLt5Sqpu
         Tz2LCW1sXJ4d55QEAetbvZK7p0SLWJAkJci0baeQhSrvFtmFp7lP5rrrTVIzyHdadSkD
         FhGEclnT4SmFwz4uk7O4z7d28ZG5zysx/ycWxfu2tJlaXU9DVtuKL4TZR4BStSV1cqOz
         tYKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=ce0ai5ibCdD+efklvhpOkih89Na78ESXsGwT71diwfw=;
        b=CGpCWMCEYHkPu+ZZdqhSmK5+Lcr7KqViu4leIUbMJzfQ6Q4Qov92b6oqMgMJh8N++K
         iemLiHpGLOEesYdcXjPuJBXAqg1Glijkr0bsW9EeVsp2Q5jVLClYj+rSMc8w9r7Vy1Uo
         cLwTOoWd3fZVFa1A5hg5AIdqT2md9dT2+yFsEl8NRn6PaL5qTmTAc8AiII/o/jw4HwNY
         kOi5ufp0x1A7mv0PpzUT8GH14QJ9Vib0CTcdXaA7TJEyVV8ucjk8khlW3rJXBXKhxY52
         wfytMJ/GkDMY7ZIO+DbTvDvpDIxnudBSLPXsU8DxJkzCSnwOTK49N+0JKUIzkcd3AjD3
         +LyQ==
X-Gm-Message-State: AOAM530vB6PntqvUHnngdcs5gzv8suA1zE8V8vkUzVBrx9G11JlwWiWL
	PntFR2b3ALIfvDwY/BMjQpGf2ane2D0xEQ==
X-Google-Smtp-Source: ABdhPJxOvIoqGi7+CVlYEkcLY8bB9pTa4tG1FRGdndm9nxTp7uMigNwfWHyWlHv+vUT49K50Fs+BWQ==
X-Received: by 2002:ac8:5906:: with SMTP id 6mr16481260qty.230.1640643206177;
        Mon, 27 Dec 2021 14:13:26 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id b11sm14149211qtx.85.2021.12.27.14.13.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Dec 2021 14:13:25 -0800 (PST)
Message-ID: <df24df94-231b-b3b8-afde-052efee70381@gmail.com>
Date: Mon, 27 Dec 2021 17:13:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CABqp5jkABa4Pn6hDbfmpMQV3MQExbjFX3b0jGPoQnwgtxjzbhw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABqp5jkABa4Pn6hDbfmpMQV3MQExbjFX3b0jGPoQnwgtxjzbhw@mail.gmail.com>
Message-ID-Hash: 4K7QKXKMMKDLT5K53TL7TADDJRKBGBSB
X-Message-ID-Hash: 4K7QKXKMMKDLT5K53TL7TADDJRKBGBSB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 w/internal GPSDO .. GPSDO not recognized
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4K7QKXKMMKDLT5K53TL7TADDJRKBGBSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2344849730154969376=="

This is a multi-part message in MIME format.
--===============2344849730154969376==
Content-Type: multipart/alternative;
 boundary="------------hEUb6PlO8GCtlD4ueeoL0twQ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------hEUb6PlO8GCtlD4ueeoL0twQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-16 15:20, ZB wrote:
> Good afternoon,
>
> I have an N210 - rev4, with the GSDO kit (Firefly-1A) that I installed=20
> according to the instructions at:=20
> https://www.ettus.com/wp-content/uploads/2019/01/gpsdo-kit_4.pdf. The=20
> GPSDO is not being detected according to uhd_usrp_probe and sync_to_gps
>
> I am running UHD ver 4.1.0 (although I also tried 3.15.0.0). FPGA and=20
> FW have been burnt accordingly to match the UHD version in use. See=20
> below output from uhd_usrp_probe output. What is interesting is that=20
> under clock sources there is no option for "gpsdo".
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_4.1.0.HEAD-0-g25d617ca
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> =C2=A0 _____________________________________________________
> =C2=A0/
> | =C2=A0 =C2=A0 =C2=A0 Device: USRP2 / N-Series Device
> | =C2=A0 =C2=A0 _____________________________________________________
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: N210r4
> | =C2=A0 | =C2=A0 hardware: 2577
> | =C2=A0 | =C2=A0 mac-addr: 00:80:2f:0a:cd:b8
> | =C2=A0 | =C2=A0 ip-addr: 192.168.20.2
> | =C2=A0 | =C2=A0 subnet: 255.255.255.255
> | =C2=A0 | =C2=A0 gateway: 255.255.255.255
> | =C2=A0 | =C2=A0 gpsdo: none
> | =C2=A0 | =C2=A0 serial: F2B8A2
> | =C2=A0 | =C2=A0 FW Version: 12.4
> | =C2=A0 | =C2=A0 FPGA Version: 11.1
> | =C2=A0 |
> | =C2=A0 | =C2=A0 Time sources: =C2=A0none, external, _external_, mimo
> | =C2=A0 | =C2=A0 Clock sources: internal, external, mimo
> | =C2=A0 | =C2=A0 Sensors: mimo_locked, ref_locked
> | =C2=A0 | =C2=A0 =C2=A0 ________________________________
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> And here is the output from sync_to_gps:
>
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;=20
> UHD_4.1.0.HEAD-0-g25d617ca
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> Using Device: Single USRP:
> =C2=A0 Device: USRP2 / N-Series Device
> =C2=A0 Mboard 0: N210r4
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: Unknown (0xffff) - 0
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0
>
> Synchronizing mboard 0: N210r4
>
> Error: AssertionError: assertion failed:
> =C2=A0 gpsdo is not a valid time source.
> =C2=A0 possible values are: [none, external, _external_, mimo].
> This could mean that you have not installed the GPSDO correctly.
>
> And here is an image of the installed N210 and GPSDO kit:
>
> https://i.imgur.com/HzvmXyd.png
>
> Could you please advise on steps to identify what is the problem ?
>
> Thank you kindly for any assistance!
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
In N210, the GPSDO input is also the "external" input--you can't have=20
both, and you have to configure jumpers to select between them, so you=20
do that configuration, and then
 =C2=A0 specify "external".


I apologize for the delay in responding--the message somehow ended up in=20
my spam trap.


--------------hEUb6PlO8GCtlD4ueeoL0twQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-16 15:20, ZB wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABqp5jkABa4Pn6hDbfmpMQV3MQExbjFX3b0jGPoQnwgtxjzbhw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:large">Good
          afternoon,</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">I have an
          N210 - rev4, with the GSDO kit (Firefly-1A) that I installed
          according to the instructions at:=C2=A0 <a
            href=3D"https://www.ettus.com/wp-content/uploads/2019/01/gpsd=
o-kit_4.pdf"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://www.ettus.com/wp-content/uploads/2019/01/gpsdo-kit_4.pdf</a>.
          The GPSDO is not being detected according to uhd_usrp_probe
          and sync_to_gps</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">I am runni=
ng
          UHD ver 4.1.0 (although I also tried 3.15.0.0). FPGA and FW
          have been burnt accordingly to match the UHD version in use.
          See below output from uhd_usrp_probe output. What is
          interesting is that under clock sources there is no option for
          "gpsdo".</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">[INFO] [UH=
D]
          linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_4.1.0.HEAD-0-g25d617ca<br>
          [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
          [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
          [INFO] [USRP2] Current send frame size: 1472 bytes<br>
          =C2=A0 _____________________________________________________<br=
>
          =C2=A0/<br>
          | =C2=A0 =C2=A0 =C2=A0 Device: USRP2 / N-Series Device<br>
          | =C2=A0 =C2=A0 _______________________________________________=
______<br>
          | =C2=A0 =C2=A0/<br>
          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: N210r4<br>
          | =C2=A0 | =C2=A0 hardware: 2577<br>
          | =C2=A0 | =C2=A0 mac-addr: 00:80:2f:0a:cd:b8<br>
          | =C2=A0 | =C2=A0 ip-addr: 192.168.20.2<br>
          | =C2=A0 | =C2=A0 subnet: 255.255.255.255<br>
          | =C2=A0 | =C2=A0 gateway: 255.255.255.255<br>
          | =C2=A0 | =C2=A0 gpsdo: none<br>
          | =C2=A0 | =C2=A0 serial: F2B8A2<br>
          | =C2=A0 | =C2=A0 FW Version: 12.4<br>
          | =C2=A0 | =C2=A0 FPGA Version: 11.1<br>
          | =C2=A0 |<br>
          | =C2=A0 | =C2=A0 Time sources: =C2=A0none, external, _external=
_, mimo<br>
          | =C2=A0 | =C2=A0 Clock sources: internal, external, mimo<br>
          | =C2=A0 | =C2=A0 Sensors: mimo_locked, ref_locked<br>
          | =C2=A0 | =C2=A0 =C2=A0 ________________________________<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">And here i=
s
          the output from sync_to_gps:</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">[INFO] [UH=
D]
          linux; GNU C++ version 7.5.0; Boost_106501;
          UHD_4.1.0.HEAD-0-g25d617ca<br>
          [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
          [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
          [INFO] [USRP2] Current send frame size: 1472 bytes<br>
          Using Device: Single USRP:<br>
          =C2=A0 Device: USRP2 / N-Series Device<br>
          =C2=A0 Mboard 0: N210r4<br>
          =C2=A0 RX Channel: 0<br>
          =C2=A0 =C2=A0 RX DSP: 0<br>
          =C2=A0 =C2=A0 RX Dboard: A<br>
          =C2=A0 =C2=A0 RX Subdev: Unknown (0xffff) - 0<br>
          =C2=A0 TX Channel: 0<br>
          =C2=A0 =C2=A0 TX DSP: 0<br>
          =C2=A0 =C2=A0 TX Dboard: A<br>
          =C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>
          <br>
          Synchronizing mboard 0: N210r4<br>
          <br>
          Error: AssertionError: assertion failed:<br>
          =C2=A0 gpsdo is not a valid time source.<br>
          =C2=A0 possible values are: [none, external, _external_, mimo].=
<br>
          This could mean that you have not installed the GPSDO
          correctly.<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">And here i=
s
          an image of the installed N210 and GPSDO kit:</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large"><a
            href=3D"https://i.imgur.com/HzvmXyd.png"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://i.imgur.com/HzvmXyd.png</a><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">Could you
          please advise on steps to identify what is the problem ?</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">Thank you
          kindly for any assistance!</div>
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
    In N210, the GPSDO input is also the "external" input--you can't
    have both, and you have to configure jumpers to select between them,
    so you do that configuration, and then<br>
    =C2=A0 specify "external".<br>
    <br>
    <br>
    I apologize for the delay in responding--the message somehow ended
    up in my spam trap.<br>
    <br>
    <br>
  </body>
</html>
--------------hEUb6PlO8GCtlD4ueeoL0twQ--

--===============2344849730154969376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2344849730154969376==--
