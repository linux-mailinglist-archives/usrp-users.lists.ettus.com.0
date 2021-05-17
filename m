Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FAC3838E5
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 18:05:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8849384168
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 12:05:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J46ZOlQ4";
	dkim-atps=neutral
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 0DADF383BEF
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 12:04:18 -0400 (EDT)
Received: by mail-pl1-f171.google.com with SMTP id n3so3406155plf.7
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 09:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=uSQM08FxGgsxehpkHQ7X2/aexDFOzVX8zjvQHJljcsM=;
        b=J46ZOlQ4HkMwzYLkmdrPUzRl55Nt8anOhBdSz0Jcd6Dayoc/HXETmbOmLMp3cxOnrm
         03wh5iHEW7w2w1oue6lOqAy7vEvRgoYcn8ZRkqOLEBuBQPp5GznMHMcVUxvE4i6yDMyA
         0IouXdzEiA3zYbQs52mVaQxBWQokCOD1sCG7faZc1Qr3r/7QLF6Tbf0gFRwxdgCdcNZa
         ljLzKNKdRtF7RdtYiWArMz5NKhJGuGgA6tVxxna+zNCueVliJYt83Jc+mBodOFBNB1bb
         5USnF2cpK5E8dVfGwpytTc0BERUHRr19o8jjgxUW+c/KqAxAE60cwpt9aCd2NnJU+SCY
         x6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uSQM08FxGgsxehpkHQ7X2/aexDFOzVX8zjvQHJljcsM=;
        b=sCktbA50B3DdI01dmj3rEDYQZNvYKCb34u/YCQCFEBikGUmEJwDzVPSVYdMkCE7eNC
         L86e5hsdlUD2VlKR4jMaaL6RiuTNHv7HZSE3X38+LV9R5kmv5NALSXyOv9SUlpAcMBiy
         ODovGDeZc2dXtV8rm+m0JagnwTnwLQr8l8cTvJ77CquvhpBHAoBUCEp0ZnHBXwmypKGW
         qZvWLtffEPumgWMbN2L1v224o4ojaDeA0Z/m+i+6c4Udz8sVUshn4Th608Sbj/TgNzhx
         8Yse/jsvn6xB7Qhvvb6dwmfUWnL/R0YhUbWUJbJQ3xI1j7NHsN1niWKlnWr2+SGLPf/r
         Ar2A==
X-Gm-Message-State: AOAM531Pe5J0khaiUSBto+KMSqUhwsEk+2TJMbaxuWEtTX9MlV/3lrdP
	erCcE4C8mVr3Ct7C7RkM7glqzpDk0WXI8NMPK3tJykG3sf1QIQ==
X-Google-Smtp-Source: ABdhPJxom6Czd1KPGiWezJfvss+LPU+WQpVvVimPWaCUlNwrvc8qY4wDi0CEl3sKqumJgynggUcrXGXnwSEOLqjT5Go=
X-Received: by 2002:a17:90b:1041:: with SMTP id gq1mr631403pjb.224.1621267457556;
 Mon, 17 May 2021 09:04:17 -0700 (PDT)
MIME-Version: 1.0
From: Huacheng Zeng <zenghuacheng@gmail.com>
Date: Mon, 17 May 2021 12:04:07 -0400
Message-ID: <CAOR0_uipD_7KbHN4zw=5OhzySWcE_qJpT-08U=-arQ0sMAnWiA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: Y2CRQEBBFOMLHS4QV2QESA6RGGBRSQ5H
X-Message-ID-Hash: Y2CRQEBBFOMLHS4QV2QESA6RGGBRSQ5H
X-MailFrom: zenghuacheng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y2CRQEBBFOMLHS4QV2QESA6RGGBRSQ5H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7381973413934518670=="

--===============7381973413934518670==
Content-Type: multipart/alternative; boundary="000000000000e4c3a105c288be7e"

--000000000000e4c3a105c288be7e
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using X310 as an MIMO transmitter to send two data streams. I observed
from the received signal that the two data streams are misaligned in the
time domain. I suspect that it is the X310's timing/frequency
synchronization problem. Below is the output information. Is there any C++
API reference for setting up X310 as a MIMO transmitter/receiver? Any
suggestions would be appreciated.

Thanks,
Hua


[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.13.1.HEAD-0-gbbce3e45
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 31804F1
    addr: 192.168.10.2
    fpga: HG
    name:
    product: X310
    type: x300



[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
UHD_3.13.1.HEAD-0-gbbce3e45
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1292* MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1299* MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Actual RX Freq: 915.000000 MHz...
Actual TX Freq: 915.000000 MHz...
Actual RX Rate: 2.000000 Msps...
Actual TX Rate: 2.000000 Msps...
Rx antenna is RX2
Tx antenna is TX/RX
Actual RX Gain: 0.000000 dB...
Actual TX Gain: 15.000000 dB...
Actual RX Bandwidth: 2.000000 MHz...
Actual TX Bandwidth: 2.000000 MHz...
Actual RX Freq: 915.000000 MHz...
Actual TX Freq: 915.000000 MHz...
Actual RX Rate: 2.000000 Msps...
Actual TX Rate: 2.000000 Msps...
Rx antenna is RX2
Tx antenna is TX/RX
Actual RX Gain: 0.000000 dB...
Actual TX Gain: 15.000000 dB...
Actual RX Bandwidth: 2.000000 MHz...
Actual TX Bandwidth: 2.000000 MHz...
RX channel num: 2
TX channel num: 2
tx_max_num_samps = 364
rx_max_num_samps = 364

--000000000000e4c3a105c288be7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am using X310 as an MIMO tran=
smitter to send two data streams. I observed from the received signal that =
the two data streams are misaligned in the time domain. I suspect that it i=
s the X310&#39;s timing/frequency synchronization problem. Below is the out=
put information. Is there any C++ API reference for setting up X310 as a MI=
MO transmitter/receiver? Any suggestions would be appreciated.</div><div><b=
r></div><div>Thanks,</div><div>Hua</div><div><br></div><div><br></div>[INFO=
] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800; UHD_3.13.1.HEA=
D-0-gbbce3e45<br>--------------------------------------------------<br>-- U=
HD Device 0<br>--------------------------------------------------<br>Device=
 Address:<br>=C2=A0 =C2=A0 serial: 31804F1<br>=C2=A0 =C2=A0 addr: 192.168.1=
0.2<br>=C2=A0 =C2=A0 fpga: HG<br>=C2=A0 =C2=A0 name:<br>=C2=A0 =C2=A0 produ=
ct: X310<br>=C2=A0 =C2=A0 type: x300<div><br></div><div><br></div><div><br>=
</div><div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800=
; UHD_3.13.1.HEAD-0-gbbce3e45<br>[INFO] [X300] X300 initialization sequence=
...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio=
 1x clock: 200 MHz<br>[INFO] [GPS] No GPSDO found<br>[INFO] [0/DmaFIFO_0] I=
nitializing block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO=
_0] BIST passed (Throughput: <b><font color=3D"#ff0000">1292</font></b> MB/=
s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: <b><font color=3D"#ff00=
00">1299</font></b> MB/s)<br>[INFO] [0/Radio_0] Initializing block control =
(NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1] Initializing block contr=
ol (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Initializing block cont=
rol (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initializing block con=
trol (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block co=
ntrol (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Initializing block c=
ontrol (NOC ID: 0xD0C0000000000000)<br>Actual RX Freq: 915.000000 MHz...<br=
>Actual TX Freq: 915.000000 MHz...<br>Actual RX Rate: 2.000000 Msps...<br>A=
ctual TX Rate: 2.000000 Msps...<br>Rx antenna is RX2<br>Tx antenna is TX/RX=
<br>Actual RX Gain: 0.000000 dB...<br>Actual TX Gain: 15.000000 dB...<br>Ac=
tual RX Bandwidth: 2.000000 MHz...<br>Actual TX Bandwidth: 2.000000 MHz...<=
br>Actual RX Freq: 915.000000 MHz...<br>Actual TX Freq: 915.000000 MHz...<b=
r>Actual RX Rate: 2.000000 Msps...<br>Actual TX Rate: 2.000000 Msps...<br>R=
x antenna is RX2<br>Tx antenna is TX/RX<br>Actual RX Gain: 0.000000 dB...<b=
r>Actual TX Gain: 15.000000 dB...<br>Actual RX Bandwidth: 2.000000 MHz...<b=
r>Actual TX Bandwidth: 2.000000 MHz...<br>RX channel num: 2<br>TX channel n=
um: 2<br>tx_max_num_samps =3D 364<br>rx_max_num_samps =3D 364<br>=C2=A0</di=
v><div><br></div><div><br></div><div><br></div><div><br></div><div><br></di=
v></div>

--000000000000e4c3a105c288be7e--

--===============7381973413934518670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7381973413934518670==--
