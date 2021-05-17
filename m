Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4C8383B9A
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 19:50:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C40183844B6
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 13:50:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XQGflq8e";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id E341D383DD4
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 13:44:46 -0400 (EDT)
Received: by mail-yb1-f178.google.com with SMTP id g38so9604108ybi.12
        for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 10:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZIToXfbz2+xeme+8IrZk40oFV4osqEzrim3BEugzhqo=;
        b=XQGflq8eMUkkieFFpLXAElnpSrXeDrn/TLgwkKHveYvYFPeJ0oIm7ZgV+DQPxn00c3
         YI8e2Cq2zcjhzpPqOR2dbyoGLf4TbGrCk13jfZcqwKtTG87P1xWtLi72oNTlFle/+Tei
         gN1pOzAzWUEqxrNBwufZ9V208czk9gNJuinvYQ18lcgY2DM8UjvCtPqiRjt78uQXRNfp
         ijszXfFo7qK0qcs/0wxDwEEK//iaiyW+idNyRO6Uhv7DmPcbZQ+A01RQUKieAV4dWSKf
         9Ae+nZPY/2EoTbyGa8jjLftlv884RdWWWL8IACfYdz78NRcSAoTi9R4QT1Bo8IXCyKKp
         pliw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZIToXfbz2+xeme+8IrZk40oFV4osqEzrim3BEugzhqo=;
        b=dlQdJYQZ7qwNdzQXKKxwunCFMcRqpZWvOnClGhy9tWEi4lROsU2p8tBo5kNV+g4nu3
         LKxDMEH+q1/zymBdRa5HIBOq44JFzoXuUhc1u+GVJgFCwWieedh+HswopKq5YIKeAa8I
         UFOG9T/HRGs87yUoNj+RPj9uaTvSDEIkErqzc5nmmLxjdQYmqqZg6kToUIOYcuf/9EhI
         6AhCqv3cX0tDjBKGLYmDgUJEuk3fQS0v/IlXWOIAWSDTIeXSI6RcJIUDEVa9hYmLdcG0
         h2Dpwt/VoOBWyB/h07Q2EHCZwi4h7FMDNV8HTY/Tm7klj5ug1N2AVesedr+xlfsIjs1i
         bBqw==
X-Gm-Message-State: AOAM531y81jUtmvxFWGlB5AJbqFrlEMA2khznwzbAqFoAdUu0M0M55Ae
	SxGz5gc/IGf227JphRxV2hPJVb+hCBS8d7fdQcE=
X-Google-Smtp-Source: ABdhPJwEqGnrnkxbJf9rWugpkfglEViLEL8f0oKMIWctNRNjtFt5Ne3eKxtBcAeO6aJToflpE3UyC+p1rRZGpHhlf4E=
X-Received: by 2002:a25:3585:: with SMTP id c127mr1513628yba.494.1621273486230;
 Mon, 17 May 2021 10:44:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAOR0_uipD_7KbHN4zw=5OhzySWcE_qJpT-08U=-arQ0sMAnWiA@mail.gmail.com>
In-Reply-To: <CAOR0_uipD_7KbHN4zw=5OhzySWcE_qJpT-08U=-arQ0sMAnWiA@mail.gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Mon, 17 May 2021 13:44:35 -0400
Message-ID: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
To: Huacheng Zeng <zenghuacheng@gmail.com>
Message-ID-Hash: CASQ7AE4JNQSW256DSFPZYCRZLLO4P3G
X-Message-ID-Hash: CASQ7AE4JNQSW256DSFPZYCRZLLO4P3G
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CASQ7AE4JNQSW256DSFPZYCRZLLO4P3G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2788464964667391190=="

--===============2788464964667391190==
Content-Type: multipart/alternative; boundary="0000000000003b063705c28a2603"

--0000000000003b063705c28a2603
Content-Type: text/plain; charset="UTF-8"

An update - I update UHD to 4.0 version and run the code again. With this
version I got some warning message (see below). Did I set up the X310 usrp
improperly?


[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.HEAD-0-g90ce6062
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
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
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
tx_max_num_samps = 364
rx_max_num_samps = 364

Thanks,
Hua

On Mon, May 17, 2021 at 12:04 PM Huacheng Zeng <zenghuacheng@gmail.com>
wrote:

> Hi all,
>
> I am using X310 as an MIMO transmitter to send two data streams. I
> observed from the received signal that the two data streams are misaligned
> in the time domain. I suspect that it is the X310's timing/frequency
> synchronization problem. Below is the output information. Is there any C++
> API reference for setting up X310 as a MIMO transmitter/receiver? Any
> suggestions would be appreciated.
>
> Thanks,
> Hua
>
>
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.13.1.HEAD-0-gbbce3e45
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31804F1
>     addr: 192.168.10.2
>     fpga: HG
>     name:
>     product: X310
>     type: x300
>
>
>
> [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
> UHD_3.13.1.HEAD-0-gbbce3e45
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] No GPSDO found
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1292* MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: *1299* MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> Actual RX Freq: 915.000000 MHz...
> Actual TX Freq: 915.000000 MHz...
> Actual RX Rate: 2.000000 Msps...
> Actual TX Rate: 2.000000 Msps...
> Rx antenna is RX2
> Tx antenna is TX/RX
> Actual RX Gain: 0.000000 dB...
> Actual TX Gain: 15.000000 dB...
> Actual RX Bandwidth: 2.000000 MHz...
> Actual TX Bandwidth: 2.000000 MHz...
> Actual RX Freq: 915.000000 MHz...
> Actual TX Freq: 915.000000 MHz...
> Actual RX Rate: 2.000000 Msps...
> Actual TX Rate: 2.000000 Msps...
> Rx antenna is RX2
> Tx antenna is TX/RX
> Actual RX Gain: 0.000000 dB...
> Actual TX Gain: 15.000000 dB...
> Actual RX Bandwidth: 2.000000 MHz...
> Actual TX Bandwidth: 2.000000 MHz...
> RX channel num: 2
> TX channel num: 2
> tx_max_num_samps = 364
> rx_max_num_samps = 364
>
>
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003b063705c28a2603
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>An update - I update UHD to 4.0 version and run the c=
ode again. With this version I got some warning message (see below). Did I =
set up the X310 usrp improperly?</div><div><br></div><div><br></div><div>[I=
NFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.HEAD-0-g90=
ce6062<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Ma=
ximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br><=
span style=3D"color:rgb(255,0,0)">[WARNING] [RFNOC::GRAPH] One or more bloc=
ks timed out during flush!</span><br>Actual RX Freq: 915.000000 MHz...<br>A=
ctual TX Freq: 915.000000 MHz...<br>Actual RX Rate: 2.000000 Msps...<br>Act=
ual TX Rate: 2.000000 Msps...<br>Rx antenna is RX2<br>Tx antenna is TX/RX<b=
r>Actual RX Gain: 0.000000 dB...<br>Actual TX Gain: 15.000000 dB...<br>Actu=
al RX Bandwidth: 2.000000 MHz...<br>Actual TX Bandwidth: 2.000000 MHz...<br=
>Actual RX Freq: 915.000000 MHz...<br>Actual TX Freq: 915.000000 MHz...<br>=
Actual RX Rate: 2.000000 Msps...<br>Actual TX Rate: 2.000000 Msps...<br>Rx =
antenna is RX2<br>Tx antenna is TX/RX<br>Actual RX Gain: 0.000000 dB...<br>=
Actual TX Gain: 15.000000 dB...<br>Actual RX Bandwidth: 2.000000 MHz...<br>=
Actual TX Bandwidth: 2.000000 MHz...<br>RX channel num: 2<br>TX channel num=
: 2<br><span style=3D"color:rgb(255,0,0)">[WARNING] [0/Radio#0] Attempting =
to set tick rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Attempting to set=
 tick rate to 0. Skipping.<br>[WARNING] [0/Radio#1] Attempting to set tick =
rate to 0. Skipping.<br>[WARNING] [0/Radio#0] Attempting to set tick rate t=
o 0. Skipping.</span><br>tx_max_num_samps =3D 364<br>rx_max_num_samps =3D 3=
64</div><div><br></div><div>Thanks,</div><div>Hua<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 17, =
2021 at 12:04 PM Huacheng Zeng &lt;<a href=3D"mailto:zenghuacheng@gmail.com=
">zenghuacheng@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I am us=
ing X310 as an MIMO transmitter to send two data streams. I observed from t=
he received signal that the two data streams are misaligned in the time dom=
ain. I suspect that it is the X310&#39;s timing/frequency synchronization p=
roblem. Below is the output information. Is there any C++ API reference for=
 setting up X310 as a MIMO transmitter/receiver? Any suggestions would be a=
ppreciated.</div><div><br></div><div>Thanks,</div><div>Hua</div><div><br></=
div><div><br></div>[INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boos=
t_105800; UHD_3.13.1.HEAD-0-gbbce3e45<br>----------------------------------=
----------------<br>-- UHD Device 0<br>------------------------------------=
--------------<br>Device Address:<br>=C2=A0 =C2=A0 serial: 31804F1<br>=C2=
=A0 =C2=A0 addr: 192.168.10.2<br>=C2=A0 =C2=A0 fpga: HG<br>=C2=A0 =C2=A0 na=
me:<br>=C2=A0 =C2=A0 product: X310<br>=C2=A0 =C2=A0 type: x300<div><br></di=
v><div><br></div><div><br></div><div>[INFO] [UHD] linux; GNU C++ version 5.=
4.0 20160609; Boost_105800; UHD_3.13.1.HEAD-0-gbbce3e45<br>[INFO] [X300] X3=
00 initialization sequence...<br>[INFO] [X300] Maximum frame size: 1472 byt=
es.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [GPS] No GPSDO found=
<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D0000000=
0000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: <b><font color=3D"#f=
f0000">1292</font></b> MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughpu=
t: <b><font color=3D"#ff0000">1299</font></b> MB/s)<br>[INFO] [0/Radio_0] I=
nitializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1=
] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_=
0] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC=
_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DU=
C_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/D=
UC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br>Actual RX =
Freq: 915.000000 MHz...<br>Actual TX Freq: 915.000000 MHz...<br>Actual RX R=
ate: 2.000000 Msps...<br>Actual TX Rate: 2.000000 Msps...<br>Rx antenna is =
RX2<br>Tx antenna is TX/RX<br>Actual RX Gain: 0.000000 dB...<br>Actual TX G=
ain: 15.000000 dB...<br>Actual RX Bandwidth: 2.000000 MHz...<br>Actual TX B=
andwidth: 2.000000 MHz...<br>Actual RX Freq: 915.000000 MHz...<br>Actual TX=
 Freq: 915.000000 MHz...<br>Actual RX Rate: 2.000000 Msps...<br>Actual TX R=
ate: 2.000000 Msps...<br>Rx antenna is RX2<br>Tx antenna is TX/RX<br>Actual=
 RX Gain: 0.000000 dB...<br>Actual TX Gain: 15.000000 dB...<br>Actual RX Ba=
ndwidth: 2.000000 MHz...<br>Actual TX Bandwidth: 2.000000 MHz...<br>RX chan=
nel num: 2<br>TX channel num: 2<br>tx_max_num_samps =3D 364<br>rx_max_num_s=
amps =3D 364<br>=C2=A0</div><div><br></div><div><br></div><div><br></div><d=
iv><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003b063705c28a2603--

--===============2788464964667391190==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2788464964667391190==--
