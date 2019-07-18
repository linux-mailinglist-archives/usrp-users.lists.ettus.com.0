Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2556D33C
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 19:53:13 +0200 (CEST)
Received: from [::1] (port=36290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoAad-0001QQ-0q; Thu, 18 Jul 2019 13:53:11 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:41541)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <serge.malo@skydelsolutions.com>)
 id 1hoAaY-0001Gq-Qi
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 13:53:06 -0400
Received: by mail-io1-f53.google.com with SMTP id j5so48655244ioj.8
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 10:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skydelsolutions-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=kRhzN4sdBnFPA75OvRL01Nd+NBqiCInHoOoQa3IHKoE=;
 b=r2Z/nnSQ59Ojx12T0eAjvyeq9i7fJLPb7ExsGWGp99eV3vTQunAvyU3sgsSORjs30K
 kc+Hs3ZNKhS2q6xTIi5WBJUUBjm2gajGjDN1a/4XsNz8jrR144btKlMptGBb2OqBCy0l
 0uczJD1Hs0/uDnr7iCMMyj5AYhUbyBlKe0vRvwJ8/zQezwUekT70PFtCabhlWjvgP8RI
 7WP/XR9kni9Wr8GFHNmt/T6dQxy7h7fueIyhsAc3jZwh0X/Rq6Ny3jpt6xItzpQ/uTFD
 DEpmeeicAMzrbHJaH5lLKMAgEK2ODpb458bt6PeaCzFozMzQ+JRbu27s9SU99h5ZyFwH
 0rQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=kRhzN4sdBnFPA75OvRL01Nd+NBqiCInHoOoQa3IHKoE=;
 b=lK50pR41auRvsv6JYVvPGFnRKkp155/KY9IKxwa5kMt7O7zVq8vvSrgW1eU1aMB7V0
 AGnDHmnbiUc8XjLOvgVHqZUAjzOPpGhn9rClcjw1bKlFmTXSBiX/6IXimjLlXUq6mEWp
 vK2fBEFG/HSmJapRF6diRxTGnTOTpdF7U2v+B0HDA1MpdOwIXdmtKPUMta28wxClO2KM
 7iXcLnD+okHzKoMvtbfRpORqCEoSdDS0rmcIYrLESG5qpaenR+FXIPpUSjZz4844/Gu2
 6sK0yTi0vJBOIVZA2lK6+pLNLIRkilCmbtJPxL6GkD5M82pNfm5jOzrYRSW+BeQtKgez
 NM9A==
X-Gm-Message-State: APjAAAUe2bUFCrPXiXA0h90EgTF7RZn/m9CX9B8Qyj9WfiGEighRj8ts
 Tyb46FzayzUznW6R4vpO1/CkmGjPQI7gNeHy77qYFENyK1U=
X-Google-Smtp-Source: APXvYqyH5N+sJRPclKR/bkVAfPF1e1GeaWEAtBSW+ff90CVpOZwJ4W7cWOc5pDm7/L6Ken/PI0RrdOW1dyEjAJP96Us=
X-Received: by 2002:a5d:8404:: with SMTP id i4mr40897271ion.146.1563472345462; 
 Thu, 18 Jul 2019 10:52:25 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 18 Jul 2019 13:52:14 -0400
Message-ID: <CAOhu+FNA7PhfLoARTej_vwzaomvvv23a4rtegYXn7seu-iQ2uQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Unable to Tx on 2 X300s with UHD 3.13.1.0 -
 benchmark_rate hangs
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Serge Malo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Serge Malo <serge.malo@skydelsolutions.com>
Cc: julien.edmond@orolia.com
Content-Type: multipart/mixed; boundary="===============6438528174432955175=="
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

--===============6438528174432955175==
Content-Type: multipart/alternative; boundary="000000000000c48fda058df84583"

--000000000000c48fda058df84583
Content-Type: text/plain; charset="UTF-8"

Hi all,

We are facing a important issue with UHD 3.13.1.0 with the X300:
We can not Tx on the 4 channels of 2 X300s, even with the benchmark_rate
example.
We were able to do this flawlessly with UHD 3.10.3 for a long time.

Here's the command we use:
./benchmark_rate --args addr0=192.168.40.2,addr1=192.168.50.2 --tx_cpu=sc16
--tx_rate=25000000 --ref=external --pps=external --tx_channels=0,1,2,3

When using this command, the benchmark_rate hangs forever (See below the
whole output)
We have reproduced this error under Ubutun 18.04, with gcc 7.4 and Boost
1.68 (statically linked).
We also saw the same problem under Windows 10.

Please, let us if this issue was observed before, and if there is a
correction available.

Thanks,
Serge



benchmark_rate output:
./benchmark_rate --args addr0=192.168.40.2,addr1=192.168.50.2 --tx_cpu=sc16
--tx_rate=25000000 --ref=external --pps=external --tx_channels=0,1,2,3

[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106800;
UHD_3.13.1.skydel-1-ga4c99ab3
[00:00:00.000002] Creating the usrp device with:
addr0=192.168.40.2,addr1=192.168.50.2...
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1298 MB/s)
[INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1294 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Using Device: Multi USRP:
  Device: X-Series Device
  Mboard 0: X300
  Mboard 1: X300
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 0
    RX Dboard: B
    RX Subdev: UBX RX
  RX Channel: 2
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 3
    RX DSP: 0
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 0
    TX Dboard: B
    TX Subdev: UBX TX
  TX Channel: 2
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 3
    TX DSP: 0
    TX Dboard: B
    TX Subdev: UBX TX

Now confirming lock on clock signals...
[00:00:05.059918] Setting device timestamp to 0...
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
[00:00:06.714193] Testing transmit rate 25.000000 Msps on 4 channels
^C

--000000000000c48fda058df84583
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0)"><div style=3D"color:rgb(=
34,34,34);font-family:LucidaGrande;font-size:12.8px">Hi all,</div><div styl=
e=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px"><br></d=
iv><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.=
8px">We are facing a important issue with UHD 3.13.1.0 with the X300:</div>=
<div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px=
">We can not Tx on the 4 channels of 2 X300s, even with the benchmark_rate =
example.</div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;fo=
nt-size:12.8px"><span style=3D"font-size:12.8px">We were able to do this fl=
awlessly with UHD 3.10.3 for a long time.</span><br></div><div style=3D"col=
or:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px"><br></div><div =
style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px">Her=
e&#39;s the command we use:</div><div style=3D"color:rgb(34,34,34);font-fam=
ily:LucidaGrande;font-size:12.8px">./benchmark_rate --args addr0=3D192.168.=
40.2,addr1=3D192.168.50.2 --tx_cpu=3Dsc16 --tx_rate=3D25000000 --ref=3Dexte=
rnal --pps=3Dexternal --tx_channels=3D0,1,2,3</div><div style=3D"color:rgb(=
34,34,34);font-family:LucidaGrande;font-size:12.8px"><br></div><div style=
=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px">When usi=
ng this command, the benchmark_rate hangs forever (See below the whole outp=
ut)</div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-si=
ze:12.8px">We have reproduced this error under Ubutun 18.04, with gcc 7.4 a=
nd Boost 1.68 (statically linked).</div><div style=3D"color:rgb(34,34,34);f=
ont-family:LucidaGrande;font-size:12.8px">We also saw the same problem unde=
r Windows 10.</div><div style=3D"color:rgb(34,34,34);font-family:LucidaGran=
de;font-size:12.8px"><br></div><div style=3D"color:rgb(34,34,34);font-famil=
y:LucidaGrande;font-size:12.8px"><span style=3D"font-size:12.8px">Please, l=
et us if this issue was observed before, and if there is a correction avail=
able.</span><br></div><div style=3D"color:rgb(34,34,34);font-family:LucidaG=
rande;font-size:12.8px"><span style=3D"font-size:12.8px"><br></span></div><=
div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px"=
><span style=3D"font-size:12.8px">Thanks,</span></div><div style=3D"color:r=
gb(34,34,34);font-family:LucidaGrande;font-size:12.8px"><span style=3D"font=
-size:12.8px">Serge</span></div><div style=3D"color:rgb(34,34,34);font-fami=
ly:LucidaGrande;font-size:12.8px"><span style=3D"font-size:12.8px"><br></sp=
an></div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-si=
ze:12.8px"><span style=3D"font-size:12.8px"><br></span></div><div style=3D"=
color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px"><span style=
=3D"font-size:12.8px"><br></span></div><div style=3D"color:rgb(34,34,34);fo=
nt-family:LucidaGrande;font-size:12.8px"><span style=3D"font-size:12.8px">b=
enchmark_rate output:</span></div><div style=3D"color:rgb(34,34,34);font-si=
ze:12.8px"><font face=3D"courier new, monospace">./benchmark_rate --args ad=
dr0=3D192.168.40.2,addr1=3D192.168.50.2 --tx_cpu=3Dsc16 --tx_rate=3D2500000=
0 --ref=3Dexternal --pps=3Dexternal --tx_channels=3D0,1,2,3<br><br>[INFO] [=
UHD] linux; GNU C++ version 7.4.0; Boost_106800; UHD_3.13.1.skydel-1-ga4c99=
ab3<br>[00:00:00.000002] Creating the usrp device with: addr0=3D192.168.40.=
2,addr1=3D192.168.50.2...<br>[INFO] [X300] X300 initialization sequence...<=
br>[INFO] [X300] Maximum frame size: 8000 bytes.<br>[INFO] [X300] Maximum f=
rame size: 8000 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [=
X300] Radio 1x clock: 200 MHz<br>[INFO] [1/DmaFIFO_0] Initializing block co=
ntrol (NOC ID: 0xF1F0D00000000000)<br>[INFO] [1/DmaFIFO_0] BIST passed (Thr=
oughput: 1300 MB/s)<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmwar=
e Rev 0.929a<br>[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1298 MB/s)<br=
>[INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)=
<br>[INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD1000000000=
01)<br>[INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000=
000)<br>[INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC000000000=
0000)<br>[INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C00000000=
00000)<br>[INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000=
000000)<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D=
00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)<br=
>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1294 MB/s)<br>[INFO] [0/Radi=
o_0] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/R=
adio_1] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [=
0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] =
[0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO]=
 [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO=
] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br>Usin=
g Device: Multi USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0:=
 X300<br>=C2=A0 Mboard 1: X300<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX =
DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=
=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard:=
 B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 2<br>=C2=A0 =C2=
=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX=
 RX<br>=C2=A0 RX Channel: 3<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX =
Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=
=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subd=
ev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=
=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 2=
<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 =
TX Subdev: UBX TX<br>=C2=A0 TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=
=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Now confi=
rming lock on clock signals...<br>[00:00:05.059918] Setting device timestam=
p to 0...<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at =
pps edge<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchr=
onously)<br>[00:00:06.714193] Testing transmit rate 25.000000 Msps on 4 cha=
nnels<br>^C</font><br></div><div style=3D"color:rgb(34,34,34);font-family:L=
ucidaGrande;font-size:12.8px"><br><br></div></div></div></div></div></div><=
/div></div></div></div></div></div></div></div></div></div></div>

--000000000000c48fda058df84583--


--===============6438528174432955175==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6438528174432955175==--

