Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3231217A325
	for <lists+usrp-users@lfdr.de>; Thu,  5 Mar 2020 11:32:28 +0100 (CET)
Received: from [::1] (port=45594 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9nni-0006b1-10; Thu, 05 Mar 2020 05:32:22 -0500
Received: from exchange.tu-berlin.de ([130.149.7.70]:38030)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <gawlowicz@tu-berlin.de>)
 id 1j9nnd-0006Vg-V4
 for usrp-users@lists.ettus.com; Thu, 05 Mar 2020 05:32:18 -0500
Received: from SPMA-04.tubit.win.tu-berlin.de (localhost.localdomain
 [127.0.0.1])
 by localhost (Email Security Appliance) with SMTP id EBB459739B7_E60D507B
 for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2020 10:31:35 +0000 (GMT)
Received: from exchange.tu-berlin.de (exchange.tu-berlin.de [130.149.7.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client CN "exchange.tu-berlin.de",
 Issuer "DFN-Verein Global Issuing CA" (not verified))
 by SPMA-04.tubit.win.tu-berlin.de (Sophos Email Appliance) with ESMTPS id
 74E6E9739AB_E60D507F
 for <usrp-users@lists.ettus.com>; Thu,  5 Mar 2020 10:31:35 +0000 (GMT)
Received: from mail-wr1-f43.google.com (209.85.221.43) by
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151) with Microsoft SMTP Server
 (TLS) id 15.0.1395.4; Thu, 5 Mar 2020 11:31:35 +0100
Received: by mail-wr1-f43.google.com with SMTP id n15so983844wrw.13
 for <usrp-users@lists.ettus.com>; Thu, 05 Mar 2020 02:31:35 -0800 (PST)
X-Gm-Message-State: ANhLgQ2Xgv6mc12tF8zjTw1Q7hEEAXLYiBdQNDPCn+gAfxxZyUagfGMU
 VFnM0vADsETPmhXTZXeM1NRh81izmvWUWdWM890=
X-Google-Smtp-Source: ADFU+vuwUS/ED3vw+7+xVdDMcQEpp4fDhBzYJZS2Fu1qHJfBEnUMbsyGsqyoTrHyltHF4zrw6CeXsGo5olU6IGWBIyQ=
X-Received: by 2002:adf:e38d:: with SMTP id e13mr9110669wrm.133.1583404294547; 
 Thu, 05 Mar 2020 02:31:34 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 5 Mar 2020 11:30:58 +0100
X-Gmail-Original-Message-ID: <CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
Message-ID: <CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
To: <usrp-users@lists.ettus.com>
X-ClientProxiedBy: EX-MBX-08.tubit.win.tu-berlin.de (130.149.6.159) To
 EX-MBX-01.tubit.win.tu-berlin.de (130.149.6.151)
X-PMWin-Version: 4.0.1, Antivirus-Engine: 3.77.1, Antivirus-Data: 5.73
X-PureMessage: [Scanned]
X-SASI-RCODE: 200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tu-berlin.de;
 h=mime-version:from:date:message-id:subject:to:content-type; s=dkim-tub;
 bh=Q9urLp9Ep6G8JAVZ9bgyJAddgrlau2Svhg50m7CuoLU=;
 b=mDhUui1LmV4KpHfsCVBdmWEJdeN9rmtLUzkSvQqbsUqSwWWo7VTIK3sVCtnahtWGk9KF9Hua6I1uJ+vJIhGuWf9l0I5e0oCpd1vaA1+9jKI5DIo5CNeRUW3aQ0BOTjVJK9w4lmP7T/c6Eeg3VrPVcISRZYgCuYE9BDb8ATA+3PQ=
Subject: [USRP-users] MATLAB WLAN toolbox, CBX-120 daughterboard and COTS NIC
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
From: =?utf-8?q?Piotr_Gaw=C5=82owicz_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Piotr_Gaw=C5=82owicz?= <gawlowicz@tu-berlin.de>
Content-Type: multipart/mixed; boundary="===============1643156073232107031=="
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

--===============1643156073232107031==
Content-Type: multipart/alternative; boundary="000000000000832d8a05a0190ace"

--000000000000832d8a05a0190ace
Content-Type: text/plain; charset="UTF-8"

Hi,

Recently, I have started playing with the Matlab WLAN toolbox. So far, I
have managed to generate a waveform of 802.11n frame, transmit it using
USPR x310 with UBX-160 daughterboard and successfully receive the frame
using commercial-off-the-shelf (COTS) hardware - Intel Wireless-AC 9260
NIC. The setup also works perfectly when using USRP B205mini.

However, when I transmit the waveform using CBX-120 daughterboard (in the
same x310 USRP), is not received by the COTS Intel NIC. I want to play with
MIMO and I need to use CBX-120 daughterboard as we have 4 of them and only
one UBX-160. I tested all of our 4 CBX-120 daughterboards with the same
result.

I use exactly the same command in case of CBX-120 and UBX-160 (both in same
x310 USRP so I change subdev parameter), ie.:
./tx_samples_from_file
--args="type=x300,addr=192.168.10.2,master_clock_rate=200e6,dboard_clock_rate=50e6"
--subdev A:0 --type=short --rate=30e6 --freq 2412e6 --gain=25 --repeat
--delay=1 --file 80211n_waveform.dat

I have noticed that Connection Type is different in the case of CBX-120 and
UBX-160, i.e. IQ vs QI,  and generated waveforms accordingly in MATLAB, but
without success.

I connected USRP RF outputs to WiFi NIC using RF cable (with 45dB
attenuation), but still, the same effect, i.e. UBX-160 works, CBX-120 does
not work.
In the case of UBX-160, the RSSI of the received frame equals -55dBm (as
reported by NIC), so it is still a pretty good link.

After running the calibration procedure (as described here
https://files.ettus.com/manual/page_calibration.html), the CBX-120 started
working somehow, i.e. some frames are received but not really reliably
(only few out of tens transmitted frames are received). In the case of
UBX-160, all frames are received correctly (of course over the cable).
The frame is generated with MCS 0 (BPSK, and code rate 1/2), so it is very
robust and can be received with SNR of 3dB.

I have tested also a couple of the UHD versions and hence FPGA images, but
with the same result.
Can someone explain what is the difference between CBX-120 and UBX-160
daughterboards that cause the described behavior? Should I set some more
parameters to overwrite default ones in the case of CBX-120 to achieve
better results?

Best Regards,
Piotr Gawlowicz

--000000000000832d8a05a0190ace
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>Recently, I have st=
arted playing with the Matlab WLAN toolbox. So far, I have managed to gener=
ate a=20
waveform of 802.11n frame, transmit it using USPR x310 with UBX-160=20
daughterboard and successfully receive the frame using commercial-off-the-s=
helf (COTS) hardware - Intel Wireless-AC 9260 NIC.=20
The setup also works perfectly when using USRP B205mini. =C2=A0</div><br>Ho=
wever,
 when I transmit the waveform using CBX-120 daughterboard (in the same=20
x310 USRP), is not received by the COTS Intel NIC. I want to play with=20
MIMO and I need to use CBX-120 daughterboard as we have 4 of them and only =
one UBX-160. I tested all of our 4 CBX-120 daughterboards with the same res=
ult.<br><br>I use exactly the same command in case of CBX-120 and UBX-160 (=
both in same x310 USRP so I change subdev parameter), ie.:<br>./tx_samples_=
from_file --args=3D&quot;type=3Dx300,addr=3D192.168.10.2,master_clock_rate=
=3D200e6,dboard_clock_rate=3D50e6&quot;
 --subdev A:0 --type=3Dshort --rate=3D30e6 --freq 2412e6 --gain=3D25 --repe=
at=20
--delay=3D1 --file 80211n_waveform.dat<br><br>I have noticed that=20
Connection Type is different in the case of CBX-120 and UBX-160, i.e. IQ
 vs QI, =C2=A0and generated waveforms accordingly in MATLAB, but without=20
success.<br><br>I connected USRP RF outputs to WiFi NIC using RF cable=20
(with 45dB attenuation), but still, the same effect, i.e. UBX-160 works,
 CBX-120 does not work.<br>In the case of UBX-160, the RSSI of the received=
 frame equals -55dBm (as reported by NIC), so it is still a pretty good lin=
k.<br><br>After running the calibration procedure (as described here <a hre=
f=3D"https://files.ettus.com/manual/page_calibration.html" target=3D"_blank=
">https://files.ettus.com/manual/page_calibration.html</a>),
 the CBX-120 started working somehow, i.e. some frames are received but=20
not really reliably (only few out of tens transmitted frames are=20
received). In the case of UBX-160, all frames are received correctly (of
 course over the cable).<br>The frame is generated with MCS 0 (BPSK, and co=
de rate 1/2), so it is very robust and can be received with SNR of 3dB. <br=
><br>I have tested also a couple of the UHD versions and hence FPGA images,=
 but with the same result.<br>Can someone explain what is the difference be=
tween CBX-120 and UBX-160=20
daughterboards that cause the described behavior? Should I set some more pa=
rameters to overwrite default ones in the case of CBX-120 to achieve better=
 results? <br><br>Best Regards,<br>Piotr Gawlowicz</div>

--000000000000832d8a05a0190ace--


--===============1643156073232107031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1643156073232107031==--

