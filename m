Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9331450865C
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 12:51:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C8843844CB
	for <lists+usrp-users@lfdr.de>; Wed, 20 Apr 2022 06:51:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650451867; bh=VwylJRPpLCAkHDjUAlZn50PBjeji4Vm68Nk5xDsl480=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QDs6ofdcYbQRyc2hG8Fl0yq6yYDDButYeZMHKmrP2Ks0bv4I2Myn86ht+PAMqiehx
	 AC5RR2LaGJeHGmRtPdgG9+dvNVE3icX7TP6iIqX9ou6Jzb7CL9IzSjbEU7CNL+NrX9
	 IzFjiNeJQiLstW94KgGmEL9xDewpKJPPQGOlnQKETj1La49WkyluPAjKwY9oTm07AZ
	 EbHlJjmhdpWtgUQVkpT6qJPZddo4/xkuni2sSJ58+F7SkplZQZgdRfjN8k6kWjfWgV
	 a1Zubg8ps66xkRsQz40p+Cr5Vdq8erfBg2tBWbgm8VgWwYenrXLVymsPOIrTYD0zcU
	 qK3zA0iYsAsQw==
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 713A13842F3;
	Wed, 20 Apr 2022 06:49:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AXiL/qTK";
	dkim-atps=neutral
Received: by mail-pf1-f176.google.com with SMTP id j17so1565853pfi.9;
        Wed, 20 Apr 2022 03:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=cHMhdnxBOrbIMO58bfBV/ntcLnI7XkXlcNWIVG5XdtY=;
        b=AXiL/qTKVQnSiut+SbYzb1u1hN38jDHRSGB8Cv9zImwsr2ie9vOBPdLXK1SL7Keoo8
         qMm/rYj4DZZdjieEyaQ+muYxEgeAtSjaX4KS/czZKHlof7UVULwQA/yqiqwqiheVCJxA
         GkSdOZZEOcZMHO8Xiyr54A7BQrgO345iamUiy6bc7Noz3ZeK1xxnVxRuugkoHVWKFqOi
         iG8KgiuD4eykvVHb1OOCD1SI+09cpccOQLZlf+uU4d5tw/Asw64oP7rPfyBLV9DUgL/T
         aNFgjEehhB4x3HehRmBkWY9SVSC7a2xZopsNbwrj8Ma4oNxU3XPG0fYnJ28uww6Nipyh
         rTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cHMhdnxBOrbIMO58bfBV/ntcLnI7XkXlcNWIVG5XdtY=;
        b=Ym3nmwboTQsnNTM6zQGUUcmp9WvW9jWznq4YIZrroIR3Y+UEZywavu6hvsGj1Ag8uf
         SJRYlYMnA39o2WpvAN42/67HVKJFlVyBwz0HXwWf0+9quGJY3pn196iHuUw5KMRErKt6
         5tuQO7dK90FDoqEfU7GyZoncyTHwkHZns9SBfUzpM6a+PVsNcEKqL4J2n7gPpmQsAFT+
         4/p9Kgt9VxlruVQIzzSoU92yR73Q5GoTLtDsib2WZg+5iIxhe9K3DJUWZ2WwLrgmMjxQ
         eLUEgjCECJjwsSnchQW3IxQ2qHaKR9ZUBNQNIQ94EL3/9sYrSAJ3NJlu4HBmOLEEofhg
         pjSg==
X-Gm-Message-State: AOAM5305qgPPKNGlHtfOfiokPy49WeCOJWPFqfLhCvY2EaQEeCKSvpyS
	G2h1qRAQ3h5spDLYq6RZKVLdRXstswbIndRpgJg7Ttp47AE=
X-Google-Smtp-Source: ABdhPJwc50YeKW++qCrnUJCITbuzEGv56fd+QwFqiS6GdW9PJ4g353bln9i1givqqysAoKZfW6q0o91Abw0DAUi/g6o=
X-Received: by 2002:a05:6a00:1781:b0:50a:94f0:661d with SMTP id
 s1-20020a056a00178100b0050a94f0661dmr8037380pfg.10.1650451798173; Wed, 20 Apr
 2022 03:49:58 -0700 (PDT)
MIME-Version: 1.0
From: gokul sani <cnsgokul@gmail.com>
Date: Wed, 20 Apr 2022 12:49:47 +0200
Message-ID: <CAJ28uHEkKaeoV2SKr_KSkiVC8jg81qy40Xr0iBirmcyoQps4pw@mail.gmail.com>
To: usrp-users-owner@lists.ettus.com, usrp-users@lists.ettus.com
Message-ID-Hash: JTK3VVOK3J3EDTORDDNYAZ3QV2WMBXOV
X-Message-ID-Hash: JTK3VVOK3J3EDTORDDNYAZ3QV2WMBXOV
X-MailFrom: cnsgokul@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LIBUSB_TRANSFER_ERROR
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JTK3VVOK3J3EDTORDDNYAZ3QV2WMBXOV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2808626296748751075=="

--===============2808626296748751075==
Content-Type: multipart/alternative; boundary="000000000000262b3405dd13c126"

--000000000000262b3405dd13c126
Content-Type: text/plain; charset="UTF-8"

Dear usrp community,

I am working on OAI code to implement 5G SA using usrp b210. The uhd
installation is done with source installation using ninja.
UHD version : UHD_3.15.0.0
I get the following crash error, when I run the gnb:

[NR_PHY]   Number of bad PUCCH received: 0
[HW]   [recv] received 8604 samples out of 23040
[ERROR] [[HW]   ERROR_CODE_BAD_PACKET

STREAMER[PHY]   rx_rf: Asked for 23040 samples, got 8604 from USRP
] [PHY]   problem receiving samples
The receive packet handler caught a value exception.
ValueError: bad vrt header or packet fragment
U[HW]   [recv] received 0 samples out of 23040
[HW]   ERROR_CODE_TIMEOUT

[PHY]   rx_rf: Asked for 23040 samples, got 0 from USRP
[PHY]   problem receiving samples
LLLLLLLLLLLLterminate called after throwing an instance of 'uhd::io_error'
  what():  EnvironmentError: IOError: usb rx6 transfer status:
LIBUSB_TRANSFER_ERROR
Aborted

------------------------------------------------------
Also after the crash, when I try to run :

uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[ERROR] [USB] USB open failed: insufficient permissions.
See the application notes for your device.

Error: LookupError: KeyError: No devices found for ----->
Empty Device Address

---------------------------------------- unpluging the usb cable and then
it is ok, but the crash happens whenever I run the gnb.
But I also tried adding udev rules from
https://files.ettus.com/manual/page_transport.html#transport_usb_udev  but
unfortunately still the same.

Please suggest some solution. Thank you in advance!

WR,
Gokul

--000000000000262b3405dd13c126
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear usrp community,</div><div><br></div><div>I am wo=
rking on OAI code to implement 5G SA using usrp b210. The uhd installation =
is done with source installation using ninja. <br></div><div>UHD version : =
UHD_3.15.0.0</div><div>I get the following crash error, when I run the gnb:=
<br></div><div><br></div><div>[NR_PHY] =C2=A0 Number of bad PUCCH received:=
 0</div>[HW] =C2=A0 [recv] received 8604 samples out of 23040<br>[ERROR] [[=
HW] =C2=A0 ERROR_CODE_BAD_PACKET<br><br>STREAMER[PHY] =C2=A0 rx_rf: Asked f=
or 23040 samples, got 8604 from USRP<br>] [PHY] =C2=A0 problem receiving sa=
mples<br>The receive packet handler caught a value exception.<br>ValueError=
: bad vrt header or packet fragment<br>U[HW] =C2=A0 [recv] received 0 sampl=
es out of 23040<br>[HW] =C2=A0 ERROR_CODE_TIMEOUT<br><br>[PHY] =C2=A0 rx_rf=
: Asked for 23040 samples, got 0 from USRP<br>[PHY] =C2=A0 problem receivin=
g samples<br>LLLLLLLLLLLLterminate called after throwing an instance of &#3=
9;uhd::io_error&#39;<br>=C2=A0 what(): =C2=A0EnvironmentError: IOError: usb=
 rx6 transfer status: LIBUSB_TRANSFER_ERROR<br><div>Aborted</div><div><br><=
/div><div>------------------------------------------------------</div><div>=
Also after the crash, when I try to run :</div><div><br></div><div>uhd_usrp=
_probe <br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.1=
5.0.HEAD-0-gaea0e2de<br>[ERROR] [USB] USB open failed: insufficient permiss=
ions.<br>See the application notes for your device.<br><br>Error: LookupErr=
or: KeyError: No devices found for -----&gt;<br>Empty Device Address</div><=
div><br></div><div>---------------------------------------- unpluging the u=
sb cable and then it is ok, but the crash happens whenever I run the gnb.</=
div><div>But I also tried adding udev rules from <br></div><div><a href=3D"=
https://files.ettus.com/manual/page_transport.html#transport_usb_udev">http=
s://files.ettus.com/manual/page_transport.html#transport_usb_udev</a>=C2=A0=
 but unfortunately still the same.=C2=A0 <br></div><div><br></div><div>Plea=
se suggest some solution. Thank you in advance!<br></div><div><br></div><di=
v>WR,</div><div>Gokul<br></div><div><br></div><div><br></div><div><br></div=
></div>

--000000000000262b3405dd13c126--

--===============2808626296748751075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2808626296748751075==--
