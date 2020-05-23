Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB471DF70F
	for <lists+usrp-users@lfdr.de>; Sat, 23 May 2020 14:04:36 +0200 (CEST)
Received: from [::1] (port=38382 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jcStE-0001F6-Bc; Sat, 23 May 2020 08:04:32 -0400
Received: from mail-pl1-f171.google.com ([209.85.214.171]:38174)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mgberry@ellipticity.com>)
 id 1jcStA-00014u-Co
 for usrp-users@lists.ettus.com; Sat, 23 May 2020 08:04:28 -0400
Received: by mail-pl1-f171.google.com with SMTP id m7so5492064plt.5
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 05:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ellipticity-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=V0zwlSKDjbDOWOMjL2ggDhfFzybSGp81dZRDbJbDdkQ=;
 b=N3xHVnh0R7w75NE2FqaVMjkXMYMX4IYIX/uNSIt2vwmO8Nd/c/S1vQp9G21bEClJh5
 MBR4AuKEO3qBjmb+2w4WJTug7kicIC9L+3tKr+z7LtNQn+zZsETYO6rS/eSePBtRsa9y
 NSbHPQ53097S72CbBSLYjFzc+tfMX4x9PCbKZyc3SF/cpGmZ+W7sD0TTsg5RbN9BuhGS
 L93aaz14lGppgmV5TXJJ9MsCHQZkwfCeADwlbs0y2c8khN21WoXLKfAb31ChjEC/0gMj
 8XQl0w11g6Cn7c3rNpGlpBO33T44bha9Da1/5JlFQ1AXLxRtlRYFHot7ei5lyFpQFtjx
 k+yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=V0zwlSKDjbDOWOMjL2ggDhfFzybSGp81dZRDbJbDdkQ=;
 b=LFC8bpgn8SjOUzX/PzDC3vm1esFe1G7QQ1IRfmGKECJHxB3xYikSHNiya3Ej5Sp8sG
 miivy7scVIVscdQVldBcXYqHaqE8q0G1Q6WkSNvWjCIt5WW7YxP6T4c0gRnpXiHj2+re
 1aiLqtWWsAf31SLFnyO9cLkxLlTt4NLNnb4aw5O/afAr6jDjuEHZ/LiETq588qih7FgA
 YBeQdAin+bMQBwdi3aPmwywW+xMsH/lLGGlnNJwXBusAJDOxOXAIbnsfdqY+RBkZ1/uU
 EY/In9ugmYVMd72sXZaXgpeap7SDxbuhXh/6JtA0YD4bpyHcUujP/expogPZduSox22+
 JyjA==
X-Gm-Message-State: AOAM533fBvrohRi/aPzg49AxB9m0nj9BqhZO7XxAz54q5RBdKJcsEBLo
 7DxMlg+DgyIUgLCdHxdxJE3ZAvKrNv4sYPLtwpkSud6zK7/Xmg==
X-Google-Smtp-Source: ABdhPJwT38GnuQ6qkaF2pT8jE/xLdG5itix7i6WqIpnx8mP6iFVL69wWyZPYxF76VbP+iJy/8UjpCfia0tQeAI+tpUY=
X-Received: by 2002:a17:902:8c8c:: with SMTP id
 t12mr19615711plo.285.1590235426962; 
 Sat, 23 May 2020 05:03:46 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 23 May 2020 08:03:36 -0400
Message-ID: <CAKeOk0NPvCvPm8DT-xKK=Fyhnd9-+vy6cVxbbmsgYgiiE5YxSw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] XCVR2450
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Matt via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Matt <mgberry@ellipticity.com>
Content-Type: multipart/mixed; boundary="===============4503210733387155969=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4503210733387155969==
Content-Type: multipart/alternative; boundary="000000000000bbd75005a64f89a0"

--000000000000bbd75005a64f89a0
Content-Type: text/plain; charset="UTF-8"

Is there a specific 'bin' image needed to run the XCVR2450 on my N200?
Running the uhd image downloader grabs the following images that I have
installed. I am seeing strange (random spurs as if the board is
misconfigured) behaviour out of the daughterboard, so I think it could be a
firmware compatibility issue.

Thanks,

Matt



INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14.1.1-release
[INFO] [USRP2] Opening a USRP2/N-Series device...
[INFO] [USRP2] Current recv frame size: 1472 bytes
[INFO] [USRP2] Current send frame size: 1472 bytes
[INFO] [USRP2] Detecting internal GPSDO....
[INFO] [GPS] No GPSDO found
  _____________________________________________________
 /
|       Device: USRP2 / N-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: N200r4
|   |   hardware: 2576
|   |   mac-addr: a0:36:fa:26:32:98
|   |   ip-addr: 192.168.10.2
|   |   subnet: 255.255.255.255
|   |   gateway: 255.255.255.255
|   |   gpsdo: none
|   |   serial: E9R12W8UN
|   |   FW Version: 12.4
|   |   FPGA Version: 11.1
|   |
|   |   Time sources:  none, external, _external_, mimo
|   |   Clock sources: internal, external, mimo
|   |   Sensors: mimo_locked, ref_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX DSP: 0
|   |   |
|   |   |   Freq range: -50.000 to 50.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       RX DSP: 1
|   |   |
|   |   |   Freq range: -50.000 to 50.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |   ID: XCVR2450, XCVR2450 - r2.1 (0x0061)
|   |   |   Serial: E9R1400XX
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: XCVR2450 RX
|   |   |   |   Antennas: J1, J2
|   |   |   |   Sensors: lo_locked, rssi
|   |   |   |   Freq range: 2400.000 to 6000.000 MHz
|   |   |   |   Gain range LNA: 0.0 to 30.5 step 15.0 dB
|   |   |   |   Gain range VGA: 0.0 to 62.0 step 2.0 dB
|   |   |   |   Bandwidth range: 13500000.0 to 39600000.0 step 600000.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: ads62p44
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |   |   |   Gain range fine: 0.0 to 0.5 step 0.1 dB
|   |     _____________________________________________________
|   |    /
|   |   |       TX DSP: 0
|   |   |
|   |   |   Freq range: -200.000 to 200.000 MHz
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |   ID: XCVR2450 (0x0060)
|   |   |   Serial: E9R1400XX
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: XCVR2450 TX
|   |   |   |   Antennas: J1, J2
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 2400.000 to 6000.000 MHz
|   |   |   |   Gain range VGA: 0.0 to 30.0 step 0.5 dB
|   |   |   |   Gain range BB: 0.0 to 5.0 step 1.5 dB
|   |   |   |   Bandwidth range: 24000000.0 to 48000000.0 step 12000000.0 Hz
|   |   |   |   Connection Type: QI
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: ad9777
|   |   |   |   Gain Elements: None

--000000000000bbd75005a64f89a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is there a specific &#39;bin&#39; image needed to run=
 the XCVR2450 on my N200? Running the uhd image downloader grabs the follow=
ing images that I have installed. I am seeing strange (random spurs as if t=
he board is misconfigured) behaviour out of the daughterboard, so I think i=
t could be a firmware compatibility issue.</div><div><br></div><div>Thanks,=
</div><div><br></div><div>Matt</div><div><br></div><div><br></div><div><br>=
</div><div>INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501; UHD_3.14=
.1.1-release<br>[INFO] [USRP2] Opening a USRP2/N-Series device...<br>[INFO]=
 [USRP2] Current recv frame size: 1472 bytes<br>[INFO] [USRP2] Current send=
 frame size: 1472 bytes<br>[INFO] [USRP2] Detecting internal GPSDO....<br>[=
INFO] [GPS] No GPSDO found<br>=C2=A0 ______________________________________=
_______________<br>=C2=A0/<br>| =C2=A0 =C2=A0 =C2=A0 Device: USRP2 / N-Seri=
es Device<br>| =C2=A0 =C2=A0 ______________________________________________=
_______<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: N200=
r4<br>| =C2=A0 | =C2=A0 hardware: 2576<br>| =C2=A0 | =C2=A0 mac-addr: a0:36=
:fa:26:32:98<br>| =C2=A0 | =C2=A0 ip-addr: 192.168.10.2<br>| =C2=A0 | =C2=
=A0 subnet: 255.255.255.255<br>| =C2=A0 | =C2=A0 gateway: 255.255.255.255<b=
r>| =C2=A0 | =C2=A0 gpsdo: none<br>| =C2=A0 | =C2=A0 serial: E9R12W8UN<br>|=
 =C2=A0 | =C2=A0 FW Version: 12.4<br>| =C2=A0 | =C2=A0 FPGA Version: 11.1<b=
r>| =C2=A0 | =C2=A0<br>| =C2=A0 | =C2=A0 Time sources: =C2=A0none, external=
, _external_, mimo<br>| =C2=A0 | =C2=A0 Clock sources: internal, external, =
mimo<br>| =C2=A0 | =C2=A0 Sensors: mimo_locked, ref_locked<br>| =C2=A0 | =
=C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX DSP:=
 0<br>| =C2=A0 | =C2=A0 | =C2=A0<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: =
-50.000 to 50.000 MHz<br>| =C2=A0 | =C2=A0 =C2=A0 _________________________=
____________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 RX DSP: 1<br>| =C2=A0 | =C2=A0 | =C2=A0<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Freq range: -50.000 to 50.000 MHz<br>| =C2=A0 | =C2=
=A0 =C2=A0 _____________________________________________________<br>| =C2=
=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard:=
 A<br>| =C2=A0 | =C2=A0 | =C2=A0 ID: XCVR2450, XCVR2450 - r2.1 (0x0061)<br>=
| =C2=A0 | =C2=A0 | =C2=A0 Serial: E9R1400XX<br>| =C2=A0 | =C2=A0 | =C2=A0 =
=C2=A0 _____________________________________________________<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 RX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: XCVR2450 RX=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Antennas: J1, J2<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Sensors: lo_locked, rssi<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Freq range: 2400.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Gain range LNA: 0.0 to 30.5 step 15.0 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 | =C2=A0 Gain range VGA: 0.0 to 62.0 step 2.0 dB<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 13500000.0 to 39600000.0 step 60=
0000.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 =C2=A0 _____________________________________________________<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=
=A0 =C2=A0 RX Codec: A<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: ads62p4=
4<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range digital: 0.0 to 6.0 ste=
p 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range fine: 0.0 to 0.5=
 step 0.1 dB<br>| =C2=A0 | =C2=A0 =C2=A0 __________________________________=
___________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 TX DSP: 0<br>| =C2=A0 | =C2=A0 | =C2=A0<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Freq range: -200.000 to 200.000 MHz<br>| =C2=A0 | =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 | =C2=
=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Dboard: A<br>| =
=C2=A0 | =C2=A0 | =C2=A0 ID: XCVR2450 (0x0060)<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Serial: E9R1400XX<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ________________=
_____________________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/=
<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Name: XCVR2450 TX<br>| =C2=A0 | =C2=A0 | =
=C2=A0 | =C2=A0 Antennas: J1, J2<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Sen=
sors: lo_locked<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Freq range: 2400.000=
 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range VGA: 0.0=
 to 30.0 step 0.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Gain range BB: =
0.0 to 5.0 step 1.5 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Bandwidth ran=
ge: 24000000.0 to 48000000.0 step 12000000.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: QI<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 Use=
s LO offset: No<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 ______________________=
_______________________________<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Codec: A<br>| =C2=A0 | =
=C2=A0 | =C2=A0 | =C2=A0 Name: ad9777<br>| =C2=A0 | =C2=A0 | =C2=A0 | =C2=
=A0 Gain Elements: None</div></div>

--000000000000bbd75005a64f89a0--


--===============4503210733387155969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4503210733387155969==--

