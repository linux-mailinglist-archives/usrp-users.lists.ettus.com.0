Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA691058A2
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2019 18:35:38 +0100 (CET)
Received: from [::1] (port=35778 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iXqMf-0007Lw-Rz; Thu, 21 Nov 2019 12:35:33 -0500
Received: from sonic311-24.consmr.mail.ne1.yahoo.com ([66.163.188.205]:37510)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1iXqMc-0007E0-Uz
 for usrp-users@lists.ettus.com; Thu, 21 Nov 2019 12:35:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1574357690; bh=Fq8fIMlYmsI5TNtAkJf0JaiPIT2KvJmYncygyLeHY8o=;
 h=Date:From:To:Subject:References:From:Subject;
 b=rxl8f5SuS4E76fPgXimm0NRVMTDnqx33qxZa6aQms3mEWk88Mc8F7Y6s2ft5yET6/1TNcGegbx2AUzCqIv+IBBA/h1fPU+GV7s3aaoNScqmpJXO0TMTzq2eV1j+Nk/JCGdCFsKfZM2N/0A0vb0ljym87sK+zp1eVzxmFOZkt9YNZ0sGLC28tjZJq+FgzXwvMCsZGHK3aGB8w1fwUe4s9yokxcdzOC65jvb+cp34LconVSVHBC1cIOFdknlLIZNCsphyrSLlcUCacZqbpmlI8Lh6Rorf9qRrnvRpU+Jrc12uz252PFLp8+T/60T9/Obqgcig1NfnoK3JnLqV9FiD0ig==
X-YMail-OSG: dKgoMwcVM1n68putp_Z7o2QnABfVs3R9n2IoveFv3SzIMkzhbFo_W55HtM91bYW
 un.h5xd08.x97F6rq5uyZWJQxoa50_4LGuCsF5ApwU7bNAhFelO.e8nZfbT4Vze9tiFy6b1p5jMz
 Tokzcaucoxf.hlCsjE9XxkInHfSkd4iePrVBi_JWzfLaxS618DPFXINfFAT5CE99fEG25E_k5g8m
 p9nU0KIQqpLXZchQfl5tAhTamsvx25Iq5mOMcqK7Grsq0YxOuTQfMXNn0ZqIrGu_mGJ8XVRaQk9z
 m_kp5MvHTblqmdh2h4Cy64ZVHgE8FR8_Hqki_iww7RomYJ2crSnxoNrUugp7yRX.ovMVOcLpDpFk
 tMEq7y6UewMc3FCq0GQFvQjycq7xFW_BjmpZevA3HFZjuEoBPTDda2NHQhFWFA4okL3WJonFGe0o
 g0769O.gosOyxzKCh8Q1HoDlQ4u1_bDwR8b8J7dmYHM32M20dvtMhhYz3GuV_SgUjjVkbqequYl.
 4tgUJ7.EBjBqqTQSDCzxesm3veJ6sGVoswJX2SiqeIGnJj6HpyqNFpHvW9gOFgMnZkV7_lAmBpRt
 uMEjwP_ss9FU6Ihg_2iCsSVJNisIo9EA6EeW5_9REHyZnzBxPmiVh3ckIUh7oKZuriJnM7EIuxNh
 YUjXjrIWhlhkf2yLUEzDV_D4KnmF3m8Gkm3_9RoMhhsHOxHvpRxaCy742eYh.vcRVHNPc_HG21iu
 82quGioONdQPch4dqfBvFiPshjvVzNaOvlDyxkWpmTe9vhs0EokUTFHi2qFNljelNbqeQOmXhOcB
 oXuDtmS8O2KTjU..t7LCDWqZPlh3CwXp7xc0n4DY.hHDp_dEnS_RMfXBIh_WknahtxliX1g31AOW
 qneEUxaAob8k6jeLYZvlmoefcsOLANdAZxM473UWQa_cTy26RGfsFXorzMqy9zhzObcucrAF5sCf
 DB2tIM0cwJ4RTK8QPzudLW.H7vPQwXhDcU.o8HhTSdTJH8CSBA35Te.MxhFSDCVmTxjJvbRfvV1O
 ltk92DwtY2qr3IM0CXAcD8WT2P4k_e2nbITiaUbeW5DhjVUXVZrq1BONUOmf_ZtPTIBbwhAVBHPM
 fvZyzMZlBhNifycBp9zlIiRPnHgpL2M0QRJWCuRLRSEbCta1I.xQyDZtXJhbA4Suu63XnBAJGWNd
 W6W3fdm2aDe5BjbeNdEV_LjOLPUzs563UWpFH8sck3yQBiJrR2eH_yXSVsbomqLTTWYZvsiAqi57
 R57uUhChYZM2czct3TB1JnYRx3ESclvO556K7Thfe3Tzf5qPeV.WFh_BExPEaiRwuPqrC00zBYav
 GInIU4cNCMp9LkeDK9w3u
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.ne1.yahoo.com with HTTP; Thu, 21 Nov 2019 17:34:49 +0000
Date: Thu, 21 Nov 2019 17:34:45 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1027805479.3576226.1574357685417@mail.yahoo.com>
MIME-Version: 1.0
References: <1027805479.3576226.1574357685417.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux x86_64;
 rv:68.0) Gecko/20100101 Firefox/68.0
Subject: [USRP-users] X300 underflows with tx_rate 100Msps
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
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4826392845578309442=="
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

--===============4826392845578309442==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3576225_1101914029.1574357685416"
Content-Length: 6005

------=_Part_3576225_1101914029.1574357685416
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Michael,
=C2=A0=C2=A0=C2=A0 I am experiencing lots of underflows when I use benchmar=
k_rate example app. Following is the configuration:
=C2=A0=C2=A0 =C2=A0
Host processor=C2=A0=C2=A0 =C2=A0: Intel=C2=AE Xeon=C2=AE Processor D-1500 =
System on Chip (SoC)
Host OS: Centos 7
UHD: release_003_010_001_000
SDR HW: X300 with UBX-160 (Calibration done as documented)
Eth link: SFP
=C2=A0- Maximum socket buffer sizes (wmem_max, rmem_max)
=C2=A0- MTU 9000
=C2=A0- Tx/Rx descriptors (sudo ethtool -G <interface> tx 4096 rx 4096)
=C2=A0- thread priority set to 1
CPU usage: Only two CPUs are being used, but rest of the cores are free and=
 the host is headless(No CPU consuming apps).

=C2=A0 If I test rx_rate with 200Msps, it works well. But when I use tx_rat=
e with 100Msps, I could see lots of underflows (Us).

./benchmark_rate --args=3D"addr=3D192.168.40.2" --tx_rate=3D100e6=C2=A0 --c=
hannels=3D"0" --duration 200
linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39); Boost_105800; UHD=
_003.010.001.HEAD-0-g929e3b32


Creating the usrp device with: addr=3D192.168.40.2...
-- X300 initialization sequence...
-- Determining maximum frame size... 8000 bytes.
-- Setup basic communication...
-- Loading values from EEPROM...
-- Setup RF frontend clocking...
-- Radio 1x clock:200
-- Detecting internal GPSDO.... Found an internal GPSDO: LC_XO, Firmware Re=
v 0.929b
-- [DMA FIFO] Running BIST for FIFO 0... pass (Throughput: 1179.5MB/s)
-- [DMA FIFO] Running BIST for FIFO 1... pass (Throughput: 1184.4MB/s)
-- [RFNoC Radio] Performing register loopback test... pass
-- [RFNoC Radio] Performing register loopback test... pass
-- [RFNoC Radio] Performing register loopback test... pass
-- [RFNoC Radio] Performing register loopback test... pass
-- Performing timer loopback test... pass
-- Performing timer loopback test... pass
Using Device: Single USRP:
=C2=A0 Device: X-Series Device
=C2=A0 Mboard 0: X300
=C2=A0 RX Channel: 0
=C2=A0=C2=A0=C2=A0 RX DSP: 0
=C2=A0=C2=A0=C2=A0 RX Dboard: A
=C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
=C2=A0 RX Channel: 1
=C2=A0=C2=A0=C2=A0 RX DSP: 0
=C2=A0=C2=A0=C2=A0 RX Dboard: B
=C2=A0=C2=A0=C2=A0 RX Subdev: Unknown (0xffff) - 0
=C2=A0 TX Channel: 0
=C2=A0=C2=A0=C2=A0 TX DSP: 0
=C2=A0=C2=A0=C2=A0 TX Dboard: A
=C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
=C2=A0 TX Channel: 1
=C2=A0=C2=A0=C2=A0 TX DSP: 0
=C2=A0=C2=A0=C2=A0 TX Dboard: B
=C2=A0=C2=A0=C2=A0 TX Subdev: Unknown (0xffff) - 0

Setting device timestamp to 0...
Testing transmit rate 100.000000 Msps on 1 channels
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU ....... Lots of under=
flows

Thanks in advance.

------=_Part_3576225_1101914029.1574357685416
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div dir=
=3D"ltr" data-setdir=3D"false"><div>Hi Michael,<br>&nbsp;&nbsp;&nbsp; I am =
experiencing lots of underflows when I use benchmark_rate example app. Foll=
owing is the configuration:<br>&nbsp;&nbsp; &nbsp;<br>Host processor&nbsp;&=
nbsp; &nbsp;: Intel=C2=AE Xeon=C2=AE Processor D-1500 System on Chip (SoC)<=
br>Host OS: Centos 7<br>UHD: release_003_010_001_000<br>SDR HW: X300 with U=
BX-160 (Calibration done as documented)<br>Eth link: SFP<br>&nbsp;- Maximum=
 socket buffer sizes (wmem_max, rmem_max)<br>&nbsp;- MTU 9000<br>&nbsp;- Tx=
/Rx descriptors (sudo ethtool -G &lt;interface&gt; tx 4096 rx 4096)<br>&nbs=
p;- thread priority set to 1<br>CPU usage: Only two CPUs are being used, bu=
t rest of the cores are free and the host is headless(No CPU consuming apps=
).<br><br>&nbsp; If I test rx_rate with 200Msps, it works well. But when I =
use tx_rate with 100Msps, I could see lots of underflows (Us).<br><br>./ben=
chmark_rate --args=3D"addr=3D192.168.40.2" --tx_rate=3D100e6&nbsp; --channe=
ls=3D"0" --duration 200<br>linux; GNU C++ version 4.8.5 20150623 (Red Hat 4=
.8.5-39); Boost_105800; UHD_003.010.001.HEAD-0-g929e3b32<br><br><br>Creatin=
g the usrp device with: addr=3D192.168.40.2...<br>-- X300 initialization se=
quence...<br>-- Determining maximum frame size... 8000 bytes.<br>-- Setup b=
asic communication...<br>-- Loading values from EEPROM...<br>-- Setup RF fr=
ontend clocking...<br>-- Radio 1x clock:200<br>-- Detecting internal GPSDO.=
... Found an internal GPSDO: LC_XO, Firmware Rev 0.929b<br>-- [DMA FIFO] Ru=
nning BIST for FIFO 0... pass (Throughput: 1179.5MB/s)<br>-- [DMA FIFO] Run=
ning BIST for FIFO 1... pass (Throughput: 1184.4MB/s)<br>-- [RFNoC Radio] P=
erforming register loopback test... pass<br>-- [RFNoC Radio] Performing reg=
ister loopback test... pass<br>-- [RFNoC Radio] Performing register loopbac=
k test... pass<br>-- [RFNoC Radio] Performing register loopback test... pas=
s<br>-- Performing timer loopback test... pass<br>-- Performing timer loopb=
ack test... pass<br>Using Device: Single USRP:<br>&nbsp; Device: X-Series D=
evice<br>&nbsp; Mboard 0: X300<br>&nbsp; RX Channel: 0<br>&nbsp;&nbsp;&nbsp=
; RX DSP: 0<br>&nbsp;&nbsp;&nbsp; RX Dboard: A<br>&nbsp;&nbsp;&nbsp; RX Sub=
dev: UBX RX<br>&nbsp; RX Channel: 1<br>&nbsp;&nbsp;&nbsp; RX DSP: 0<br>&nbs=
p;&nbsp;&nbsp; RX Dboard: B<br>&nbsp;&nbsp;&nbsp; RX Subdev: Unknown (0xfff=
f) - 0<br>&nbsp; TX Channel: 0<br>&nbsp;&nbsp;&nbsp; TX DSP: 0<br>&nbsp;&nb=
sp;&nbsp; TX Dboard: A<br>&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>&nbsp; TX=
 Channel: 1<br>&nbsp;&nbsp;&nbsp; TX DSP: 0<br>&nbsp;&nbsp;&nbsp; TX Dboard=
: B<br>&nbsp;&nbsp;&nbsp; TX Subdev: Unknown (0xffff) - 0<br><br>Setting de=
vice timestamp to 0...<br>Testing transmit rate 100.000000 Msps on 1 channe=
ls<br>UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU ....... Lots of=
 underflows<br><br>Thanks in advance.</div><div><br></div></div></div></bod=
y></html>
------=_Part_3576225_1101914029.1574357685416--


--===============4826392845578309442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4826392845578309442==--

