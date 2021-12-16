Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CE7477D5F
	for <lists+usrp-users@lfdr.de>; Thu, 16 Dec 2021 21:21:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3D8AB3853BF
	for <lists+usrp-users@lfdr.de>; Thu, 16 Dec 2021 15:21:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MVHG9pyT";
	dkim-atps=neutral
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C42F384C0C
	for <usrp-users@lists.ettus.com>; Thu, 16 Dec 2021 15:20:23 -0500 (EST)
Received: by mail-ed1-f50.google.com with SMTP id z7so29401104edc.11
        for <usrp-users@lists.ettus.com>; Thu, 16 Dec 2021 12:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=PscWfQkjqaD5Dqg3n8sohPcwvkjKRuODzkl1pofc188=;
        b=MVHG9pyTl2b6xNNiLYibxqhra0DAbWDi45T8SxzvsPPegbqz5bBhdF5zQdJtdjFB3H
         PRxTBFpfK5Bc5BK2/B/ok1Ik7pjOXmMVA7DjPuqjcmXv1k5HQl5S4U89v4PFMojIZJNU
         Sa2gI6T0wdikyNvJnfmb9aFdv2I7KgDy2BQ/cWjvZ3HHjUco9pm0myr0ILBDFTxurIg9
         utGz+GmrQawn302wToEp6HeTj/nFKctfIYwHOqXqFm0Y5SI6moZDlAdawKR9gLUeBDJs
         XUS1jF9KGAWjfz5khvMKbTqJqdcmALtLISeD3TawSoHzjwwsUm6EojCjngbphUBRiT4f
         Wv4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PscWfQkjqaD5Dqg3n8sohPcwvkjKRuODzkl1pofc188=;
        b=UmM4PVI32OilFgp35u0nL77+X2u7bzF5AGmIDgr9tZwSh72nAztFVAz0LQFOop2PpW
         t7SUT/tEQRchkFv/g9bH1527NT+Rk5v5Ucs3kRedBJOM3q0URmA019gr7cFfYnMskqKc
         5s/q38C+ORy8m/Yg3cossp6sOjF9ZDMDoxIi7Ktlq3FIdXqN7a3AxwEqfkj3e1Plozme
         BShd5L/3i5wHIYXuv+OlLVR9QeDR3q19I3957xKBc5+hFdMjhEd2oI4o56V8rY4Y9N2m
         kEEF+vgpwjdrdRXTV1zZkPR8tn+SrhOG5ltZP1MvAZnep/0zk5uwZB/lHmMkjgugLIer
         Z+uQ==
X-Gm-Message-State: AOAM532s2Am+y91xA2jDML4nHJCwjJUPERxk1gzlWPMkDjIib3uanrsh
	Y9RUFTxTbn24TuJvU82gdCqkvXn5pjjP0XtpPgkA2wBFQMsP
X-Google-Smtp-Source: ABdhPJy2rZBwQTvxo70Gk6PiMsshts5GMmQ16E9GZm/pqYLJuzX6LuaeWnxGVTT5O260q0cqKrgO2fPBgisZuvq7JRE=
X-Received: by 2002:a17:906:9753:: with SMTP id o19mr16521327ejy.243.1639686022087;
 Thu, 16 Dec 2021 12:20:22 -0800 (PST)
MIME-Version: 1.0
From: ZB <balinfd3@gmail.com>
Date: Thu, 16 Dec 2021 13:20:11 -0700
Message-ID: <CABqp5jkABa4Pn6hDbfmpMQV3MQExbjFX3b0jGPoQnwgtxjzbhw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7MPIB5QJM5K7MTBKM3RYYSFK5ZCTYYR2
X-Message-ID-Hash: 7MPIB5QJM5K7MTBKM3RYYSFK5ZCTYYR2
X-MailFrom: balinfd3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N210 w/internal GPSDO .. GPSDO not recognized
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7MPIB5QJM5K7MTBKM3RYYSFK5ZCTYYR2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8873223873650533579=="

--===============8873223873650533579==
Content-Type: multipart/alternative; boundary="000000000000e3c6da05d349262b"

--000000000000e3c6da05d349262b
Content-Type: text/plain; charset="UTF-8"

Good afternoon,

I have an N210 - rev4, with the GSDO kit (Firefly-1A) that I installed
according to the instructions at:
https://www.ettus.com/wp-content/uploads/2019/01/gpsdo-kit_4.pdf. The GPSDO
is not being detected according to uhd_usrp_probe and sync_to_gps

I am running UHD ver 4.1.0 (although I also tried 3.15.0.0). FPGA and FW
have been burnt accordingly to match the UHD version in use. See below
output from uhd_usrp_probe output. What is interesting is that under clock
sources there is no option for "gpsdo".

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.1.0.HEAD-0-g25d617ca
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
  _____________________________________________________
 /
|       Device: USRP2 / N-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: N210r4
|   |   hardware: 2577
|   |   mac-addr: 00:80:2f:0a:cd:b8
|   |   ip-addr: 192.168.20.2
|   |   subnet: 255.255.255.255
|   |   gateway: 255.255.255.255
|   |   gpsdo: none
|   |   serial: F2B8A2
|   |   FW Version: 12.4
|   |   FPGA Version: 11.1
|   |
|   |   Time sources:  none, external, _external_, mimo
|   |   Clock sources: internal, external, mimo
|   |   Sensors: mimo_locked, ref_locked
|   |     ________________________________
=================================================================

And here is the output from sync_to_gps:

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.1.0.HEAD-0-g25d617ca
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
Using Device: Single USRP:
  Device: USRP2 / N-Series Device
  Mboard 0: N210r4
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: Unknown (0xffff) - 0
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: Unknown (0xffff) - 0

Synchronizing mboard 0: N210r4

Error: AssertionError: assertion failed:
  gpsdo is not a valid time source.
  possible values are: [none, external, _external_, mimo].
This could mean that you have not installed the GPSDO correctly.

And here is an image of the installed N210 and GPSDO kit:

https://i.imgur.com/HzvmXyd.png

Could you please advise on steps to identify what is the problem ?

Thank you kindly for any assistance!

--000000000000e3c6da05d349262b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:large">Goo=
d afternoon,</div><div class=3D"gmail_default" style=3D"font-size:large"><b=
r></div><div class=3D"gmail_default" style=3D"font-size:large">I have an N2=
10 - rev4, with the GSDO kit (Firefly-1A) that I installed according to the=
 instructions at:=C2=A0 <a href=3D"https://www.ettus.com/wp-content/uploads=
/2019/01/gpsdo-kit_4.pdf">https://www.ettus.com/wp-content/uploads/2019/01/=
gpsdo-kit_4.pdf</a>. The GPSDO is not being detected according to uhd_usrp_=
probe and sync_to_gps</div><div class=3D"gmail_default" style=3D"font-size:=
large"><br></div><div class=3D"gmail_default" style=3D"font-size:large">I a=
m running UHD ver 4.1.0 (although I also tried 3.15.0.0). FPGA and FW have =
been burnt accordingly to match the UHD version in use. See below output fr=
om uhd_usrp_probe output. What is interesting is that under clock sources t=
here is no option for &quot;gpsdo&quot;.</div><div class=3D"gmail_default" =
style=3D"font-size:large"><br></div><div class=3D"gmail_default" style=3D"f=
ont-size:large">[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UH=
D_4.1.0.HEAD-0-g25d617ca<br>[INFO] [USRP2] Opening a USRP2/N-Series device.=
..<br>[INFO] [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] =
Current send frame size: 1472 bytes<br>=C2=A0 _____________________________=
________________________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: USRP2=
 / N-Series Device<br>| =C2=A0 =C2=A0 _____________________________________=
________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mbo=
ard: N210r4<br>| =C2=A0 | =C2=A0 hardware: 2577<br>| =C2=A0 | =C2=A0 mac-ad=
dr: 00:80:2f:0a:cd:b8<br>| =C2=A0 | =C2=A0 ip-addr: 192.168.20.2<br>| =C2=
=A0 | =C2=A0 subnet: 255.255.255.255<br>| =C2=A0 | =C2=A0 gateway: 255.255.=
255.255<br>| =C2=A0 | =C2=A0 gpsdo: none<br>| =C2=A0 | =C2=A0 serial: F2B8A=
2<br>| =C2=A0 | =C2=A0 FW Version: 12.4<br>| =C2=A0 | =C2=A0 FPGA Version: =
11.1<br>| =C2=A0 |<br>| =C2=A0 | =C2=A0 Time sources: =C2=A0none, external,=
 _external_, mimo<br>| =C2=A0 | =C2=A0 Clock sources: internal, external, m=
imo<br>| =C2=A0 | =C2=A0 Sensors: mimo_locked, ref_locked<br>| =C2=A0 | =C2=
=A0 =C2=A0 ________________________________<br></div><div class=3D"gmail_de=
fault" style=3D"font-size:large">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div><div class=3D"gmail_default" style=3D"font-size:large"><br></div><=
div class=3D"gmail_default" style=3D"font-size:large">And here is the outpu=
t from sync_to_gps:</div><div class=3D"gmail_default" style=3D"font-size:la=
rge"><br></div><div class=3D"gmail_default" style=3D"font-size:large">[INFO=
] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0-g25d61=
7ca<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO] [USRP2] =
Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send frame si=
ze: 1472 bytes<br>Using Device: Single USRP:<br>=C2=A0 Device: USRP2 / N-Se=
ries Device<br>=C2=A0 Mboard 0: N210r4<br>=C2=A0 RX Channel: 0<br>=C2=A0 =
=C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: =
Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=
=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0=
<br><br>Synchronizing mboard 0: N210r4<br><br>Error: AssertionError: assert=
ion failed:<br>=C2=A0 gpsdo is not a valid time source.<br>=C2=A0 possible =
values are: [none, external, _external_, mimo].<br>This could mean that you=
 have not installed the GPSDO correctly.<br></div><div class=3D"gmail_defau=
lt" style=3D"font-size:large"><br></div><div class=3D"gmail_default" style=
=3D"font-size:large">And here is an image of the installed N210 and GPSDO k=
it:</div><div class=3D"gmail_default" style=3D"font-size:large"><br></div><=
div class=3D"gmail_default" style=3D"font-size:large"><a href=3D"https://i.=
imgur.com/HzvmXyd.png">https://i.imgur.com/HzvmXyd.png</a><br></div><div cl=
ass=3D"gmail_default" style=3D"font-size:large"><br></div><div class=3D"gma=
il_default" style=3D"font-size:large">Could you please advise on steps to i=
dentify what is the problem ?</div><div class=3D"gmail_default" style=3D"fo=
nt-size:large"><br></div><div class=3D"gmail_default" style=3D"font-size:la=
rge">Thank you kindly for any assistance!</div></div>

--000000000000e3c6da05d349262b--

--===============8873223873650533579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8873223873650533579==--
