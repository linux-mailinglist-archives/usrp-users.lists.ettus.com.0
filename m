Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C64E92A4A58
	for <lists+usrp-users@lfdr.de>; Tue,  3 Nov 2020 16:50:22 +0100 (CET)
Received: from [::1] (port=52530 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kZyZe-0003Ln-5c; Tue, 03 Nov 2020 10:50:18 -0500
Received: from mail-qt1-f172.google.com ([209.85.160.172]:35334)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <apruhd@gmail.com>) id 1kZyZb-0003E1-1U
 for usrp-users@lists.ettus.com; Tue, 03 Nov 2020 10:50:15 -0500
Received: by mail-qt1-f172.google.com with SMTP id t5so3330055qtp.2
 for <usrp-users@lists.ettus.com>; Tue, 03 Nov 2020 07:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=0ZEmJ6VOpmQaXw24k8ZjaQYfE9UV0gt6AnHy5GQBqsk=;
 b=ifOgKZTrVQo6/f4xkWWbElx4O3g/ts7B2EhZVbHaZh1+cEz/RX6fS42o+NsKRfoTMX
 NK5yTzeg/6AUqQoDw1aYAQWF8nA/L/ixzubJCo9LcEOUSi9zf+7Chbv7d0Xhb5TjiWjf
 hA50Qp3x4Weo/3ZTSufVpZcS1PEekubp8J5Zri8/psSsAQ/uN4yKuEOpubIn4h3dQvLR
 XK87RO8/w1tiH3w8mgU3AIEntwRZqUJo1V0qsGDmTDwHLN1xX46/ojLCODEjX8H+Iyjw
 LWO7jdey7RhJsGUFqnfJiVkNvvRfAprokJTjmB1D4CMrQZ5QKLevPIzTFdNvBA49iEba
 L5Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=0ZEmJ6VOpmQaXw24k8ZjaQYfE9UV0gt6AnHy5GQBqsk=;
 b=b5PYRib6OSKXqbiNi3keKtfLij2Skn9QP8fR8MLJAzuVdFAAhiIoh4uI/umfKzhxte
 +wCumu7f/OBlC8aHaadBUfu27ZCyYO+AdHIPXimkWvfvIcN74f2xkciSCRAVRIrSGK8g
 1OK4NeFx6UZBY25ErXe0CfMX3Ep+XRDIVbMyx3qZ6k2lDSWhwFZ8ZibWK5eVeOyaE6u2
 zHc1R2oeCmklkp7mFQcCfs/D1DaYb+psAGHmH2qxeQv/o6qnwxaFYTOsKcBr+EpTl9dL
 YCSbpPwdPJvEKEl/OSfQbNFT7F3r4vGsdQt2IsfpZRoG6X9UiTJiGh0W4CPw3M2zqZSW
 UBGg==
X-Gm-Message-State: AOAM531nfTqBTnmmxMMtzgBrfPVdnvRbZlzB2DXQLc26U+YSykI6lCnq
 iT9DgCbfZYIyMAlPsEL0CSgZMhc1LxNY7geQ746yI5Hd
X-Google-Smtp-Source: ABdhPJxbOJpbczCSqMwZwuou4qlgIDndV+ISyChbFXYS5NVtubKRL+lgF2VSqzyQd8D4hLWpTixqdwsnJmFJnsIqzqc=
X-Received: by 2002:ac8:7543:: with SMTP id b3mr14177257qtr.286.1604418574142; 
 Tue, 03 Nov 2020 07:49:34 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 3 Nov 2020 16:49:22 +0100
Message-ID: <CAAC=UJP-ZpTgGyAx0gVZ0ApfvnZmF6G27GOXPwJMKMStbF5W_Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Raspberry Pi 4 sampling Rate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Alvaro Pendas Recondo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alvaro Pendas Recondo <apruhd@gmail.com>
Content-Type: multipart/mixed; boundary="===============4415648609574133100=="
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

--===============4415648609574133100==
Content-Type: multipart/alternative; boundary="0000000000002ed1be05b335cfa8"

--0000000000002ed1be05b335cfa8
Content-Type: text/plain; charset="UTF-8"

Hello,

I am using a USRP B200mini with a sampling rate of 40MS that works
perfectly fine connected to a laptop with USB 3. However, when I connect it
to a Raspberry Pi 4 (which has two USB 3 ports) and I run the example
benchmark_rate with the same sampling rate I get the output that I copy
below. It seems that even if it is also operating over USB 3, this
connection cannot meet the expected performance anymore. If I reduce the
sampling rate (down to 12 MS approx) everything works fine. Any ideas about
what might be causing this problem?


By the way, I already followed all the instructions explained at
https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#:~:text=Thread%20Priority%20Scheduling,-When%20UHD%20spawns&text=To%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Flimits
.


./benchmark_rate --rx_rate 40e6 --tx_rate 40e6

[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [B200] Loading firmware image:
/usr/local/share/uhd/images/usrp_b200_fw.hex...
[00:00:00.000044] Creating the usrp device with: ...
[INFO] [B200] Detected Device: B200mini
[INFO] [B200] Loading FPGA image:
/usr/local/share/uhd/images/usrp_b200mini_fpga.bin...
[INFO] [B200] Operating over USB 3.
[INFO] [B200] Initialize CODEC control...
[INFO] [B200] Initialize Radio control...
[INFO] [B200] Performing register loopback test...
[INFO] [B200] Register loopback test passed
[INFO] [B200] Setting master clock rate selection to 'automatic'.
[INFO] [B200] Asking for clock rate 16.000000 MHz...
[INFO] [B200] Actually got clock rate 16.000000 MHz.
Using Device: Single USRP:
  Device: B-Series Device
  Mboard 0: B200mini
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: FE-RX1
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: FE-TX1

[00:00:11.448560] Setting device timestamp to 0...
[INFO] [B200] Asking for clock rate 40.000000 MHz...
[INFO] [B200] Actually got clock rate 40.000000 MHz.
[WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1
channels) exceeds the maximum capacity of the connection (overflows (O)
MSps).
This can cause 22.7428.
[00:00:11.766752] Testing receive rate 40.000000 Msps on 1 channels
[WARNING] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1
channels) exceeds the maximum capacity of the connection (underruns (U)
MSps).
This can cause 22.7428.
[00:00:11.790580] Testing transmit rate 40.000000 Msps on 1 channels
[00:00:11.891995] Tx timeouts: 1
UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after overrun recovery ahead of
error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after overrun recovery
ahead of error timestamp! Unable to calculate number of dropped
samples.(Delta: -3170 ticks)
UUUUUUUUUUUUUO[00:00:12.108355] Timestamp after overrun recovery ahead of
error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00:12.123737] Timestamp after overrun
recovery ahead of error timestamp! Unable to calculate number of dropped
samples.(Delta: -3170 ticks)
UUUUUUUUUUUUUUUUUUUUOU[00:00:12.132437] Timestamp after overrun recovery
ahead of error timestamp! Unable to calculate number of dropped
samples.(Delta: -3170 ticks)
UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp after overrun recovery
ahead of error timestamp! Unable to calculate number of dropped
samples.(Delta: -3170 ticks)
UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp after overrun recovery ahead of
error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUUUUUUO[00:00:12.168528] Timestamp after overrun recovery ahead of
error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUU[O00:00:12.178400] Timestamp after overrun recovery ahead of
error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUU[00:00:12.193251] Timestamp after overrun recovery ahead of error
timestamp! Unable to calculate number of dropped samples.(Delta: -3170
ticks)
OUUUUUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after overrun recovery ahead
of error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after overrun recovery ahead
of error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp after overrun recovery ahead
of error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUUUU[O00:00:12.247517] Timestamp after overrun recovery ahead of
error timestamp! Unable to calculate number of dropped samples.(Delta:
-3170 ticks)
UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU[00:00:12.475571] Receiver error:
ERROR_CODE_TIMEOUT, continuing...
[00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:12.876663] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:12.976968] Receiver error: ERROR_CODE_TIMEOUT, continuing...
[00:00:13.077257] Receiver error: ERROR_CODE_TIMEOUT, continuing...
terminate called after throwing an instance of 'uhd::io_error'
  what():  EnvironmentError: IOError: usb tx2 transfer status:
LIBUSB_TRANSFER_NO_DEVICE[
00:00:13.083166] Caught an IO exception.
EnvironmentError: IOError: usb rx6 transfer status:
LIBUSB_TRANSFER_NO_DEVICE

--0000000000002ed1be05b335cfa8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am using a USRP B200mini with =
a sampling rate of 40MS that works perfectly fine connected=C2=A0to a lapto=
p with USB 3. However, when I connect it to a Raspberry Pi 4 (which has two=
 USB 3 ports) and I run the example benchmark_rate with the same sampling r=
ate I get the output that I copy below. It seems that even if it is also op=
erating over USB 3, this connection cannot meet the expected performance an=
ymore. If I reduce the sampling rate (down to 12 MS approx) everything work=
s fine. Any ideas about what might be causing this problem?</div><div><br><=
/div><div><br></div><div>By the way, I already followed all the instruction=
s explained at=C2=A0<a href=3D"https://kb.ettus.com/USRP_Host_Performance_T=
uning_Tips_and_Tricks#:~:text=3DThread%20Priority%20Scheduling,-When%20UHD%=
20spawns&amp;text=3DTo%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%=
2Flimits" target=3D"_blank">https://kb.ettus.com/USRP_Host_Performance_Tuni=
ng_Tips_and_Tricks#:~:text=3DThread%20Priority%20Scheduling,-When%20UHD%20s=
pawns&amp;text=3DTo%20address%20this%20issue%2C%20non,%2Fetc%2Fsecurity%2Fl=
imits</a>.=C2=A0</div><div><br></div><div><br></div><div>./benchmark_rate -=
-rx_rate 40e6 --tx_rate 40e6<br></div><div><br></div><div>[INFO] [UHD] linu=
x; GNU C++ version 8.3.0; Boost_106700; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INF=
O] [B200] Loading firmware image: /usr/local/share/uhd/images/usrp_b200_fw.=
hex...<br>[00:00:00.000044] Creating the usrp device with: ...<br>[INFO] [B=
200] Detected Device: B200mini<br>[INFO] [B200] Loading FPGA image: /usr/lo=
cal/share/uhd/images/usrp_b200mini_fpga.bin...<br>[INFO] [B200] Operating o=
ver USB 3.<br>[INFO] [B200] Initialize CODEC control...<br>[INFO] [B200] In=
itialize Radio control...<br>[INFO] [B200] Performing register loopback tes=
t... <br>[INFO] [B200] Register loopback test passed<br>[INFO] [B200] Setti=
ng master clock rate selection to &#39;automatic&#39;.<br>[INFO] [B200] Ask=
ing for clock rate 16.000000 MHz... <br>[INFO] [B200] Actually got clock ra=
te 16.000000 MHz.<br>Using Device: Single USRP:<br>=C2=A0 Device: B-Series =
Device<br>=C2=A0 Mboard 0: B200mini<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=
=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: FE-=
RX1<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX =
Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: FE-TX1<br><br>[00:00:11.448560] Setti=
ng device timestamp to 0...<br>[INFO] [B200] Asking for clock rate 40.00000=
0 MHz... <br>[INFO] [B200] Actually got clock rate 40.000000 MHz.<br>[WARNI=
NG] [MULTI_USRP] The total sum of rates (40.000000 MSps on 1 channels) exce=
eds the maximum capacity of the connection (overflows (O) MSps).<br>This ca=
n cause 22.7428.<br>[00:00:11.766752] Testing receive rate 40.000000 Msps o=
n 1 channels<br>[WARNING] [MULTI_USRP] The total sum of rates (40.000000 MS=
ps on 1 channels) exceeds the maximum capacity of the connection (underruns=
 (U) MSps).<br>This can cause 22.7428.<br>[00:00:11.790580] Testing transmi=
t rate 40.000000 Msps on 1 channels<br>[00:00:11.891995] Tx timeouts: 1<br>=
UUUUUUUUUUUUUUUO[00:00:12.078147] Timestamp after overrun recovery ahead of=
 error timestamp! Unable to calculate number of dropped samples.(Delta: -31=
70 ticks)<br>UUUUUUUUUUUUUUUUUUUUO[00:00:12.092404] Timestamp after overrun=
 recovery ahead of error timestamp! Unable to calculate number of dropped s=
amples.(Delta: -3170 ticks)<br>UUUUUUUUUUUUUO[00:00:12.108355] Timestamp af=
ter overrun recovery ahead of error timestamp! Unable to calculate number o=
f dropped samples.(Delta: -3170 ticks)<br>UUUUUUUUUUUUUUUUUUUUUUUUU[OU00:00=
:12.123737] Timestamp after overrun recovery ahead of error timestamp! Unab=
le to calculate number of dropped samples.(Delta: -3170 ticks)<br>UUUUUUUUU=
UUUUUUUUUUUOU[00:00:12.132437] Timestamp after overrun recovery ahead of er=
ror timestamp! Unable to calculate number of dropped samples.(Delta: -3170 =
ticks)<br>UUUUUUUUUUUUUUUUUUUUUUOU[00:00:12.142422] Timestamp after overrun=
 recovery ahead of error timestamp! Unable to calculate number of dropped s=
amples.(Delta: -3170 ticks)<br>UUUUUUUUUUUUUUO[00:00:12.155257] Timestamp a=
fter overrun recovery ahead of error timestamp! Unable to calculate number =
of dropped samples.(Delta: -3170 ticks)<br>UUUUUUUUUUUUUUUO[00:00:12.168528=
] Timestamp after overrun recovery ahead of error timestamp! Unable to calc=
ulate number of dropped samples.(Delta: -3170 ticks)<br>UUUUUUUUUUU[O00:00:=
12.178400] Timestamp after overrun recovery ahead of error timestamp! Unabl=
e to calculate number of dropped samples.(Delta: -3170 ticks)<br>UUUUUUUUU[=
00:00:12.193251] Timestamp after overrun recovery ahead of error timestamp!=
 Unable to calculate number of dropped samples.(Delta: -3170 ticks)<br>OUUU=
UUUUUUUUUUUUUUO[00:00:12.204356] Timestamp after overrun recovery ahead of =
error timestamp! Unable to calculate number of dropped samples.(Delta: -317=
0 ticks)<br>UUUUUUUUUUUUUUUUO[00:00:12.224770] Timestamp after overrun reco=
very ahead of error timestamp! Unable to calculate number of dropped sample=
s.(Delta: -3170 ticks)<br>UUUUUUUUUUUUUUUUUO[00:00:12.235145] Timestamp aft=
er overrun recovery ahead of error timestamp! Unable to calculate number of=
 dropped samples.(Delta: -3170 ticks)<br>UUUUUUUUUUUUU[O00:00:12.247517] Ti=
mestamp after overrun recovery ahead of error timestamp! Unable to calculat=
e number of dropped samples.(Delta: -3170 ticks)<br>UUUUUUUUUUUUUUUUUUUUUUU=
UUUUUUUUU[00:00:12.475571] Receiver error: ERROR_CODE_TIMEOUT, continuing..=
.<br>[00:00:12.575910] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br=
>[00:00:12.676171] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00=
:00:12.776414] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:=
12.876663] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:12.9=
76968] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>[00:00:13.07725=
7] Receiver error: ERROR_CODE_TIMEOUT, continuing...<br>terminate called af=
ter throwing an instance of &#39;uhd::io_error&#39;<br>=C2=A0 what(): =C2=
=A0EnvironmentError: IOError: usb tx2 transfer status: LIBUSB_TRANSFER_NO_D=
EVICE[<br>00:00:13.083166] Caught an IO exception. <br>EnvironmentError: IO=
Error: usb rx6 transfer status: LIBUSB_TRANSFER_NO_DEVICE<br></div></div>

--0000000000002ed1be05b335cfa8--


--===============4415648609574133100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4415648609574133100==--

