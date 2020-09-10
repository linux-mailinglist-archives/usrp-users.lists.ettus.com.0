Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2C52647CA
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 16:13:49 +0200 (CEST)
Received: from [::1] (port=43434 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGNKd-0007LM-1Z; Thu, 10 Sep 2020 10:13:47 -0400
Received: from mail-yb1-f182.google.com ([209.85.219.182]:39650)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGNKM-0005sI-S9
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 10:13:30 -0400
Received: by mail-yb1-f182.google.com with SMTP id r7so4179789ybl.6
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 07:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=pnluleA2nU3Q5RE/yfKtW7u0mQntfuCLAPP3L0RQnU0=;
 b=uFhrBqq1jjVn4LRI2OpUbyyoK+ZFJLgpr56VfTZxTkALkskPSOeSApRCsQXfq4ApLT
 hEGwTq3nTd46nF5E4i+khTe27LJCemi+3vO4B4UE+5GjX6SgO1hWkrUCaRlpF+mHze7Z
 5UH1cu97MeQHtElSLStJvf1RPF0UsTNxDgybXvX6WDC9EGHVPZe9KDKhcJ7eGB8yTynw
 NSt9dItoTsIRctxX7wQBtIhX7DwK85D9MWTtPLVfMLfuo/5npH1piD248L/gIQaCWi2J
 /+d2EPJNHJTi2OVEmQHWHg0AJTMCDvWxIXa0vQq1rPEfjVYe7e30w+7UblljreCPIHxt
 YvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pnluleA2nU3Q5RE/yfKtW7u0mQntfuCLAPP3L0RQnU0=;
 b=a4NQyAlV1o5nOSp4rc8LQXTxL4w0zUcYeFe6tPsrX+MoDmyt/0s4tQ69oe+/thuVRs
 weUIcmhq+aAe0d8t9VJ+xristQiEg+LNF7KZM3HOymskDF2SuE++ymOkgx6vrY7SFEoC
 2VBCOkXQub6i+W6N4k2U6/DVLvnAKMnJjqScaRZHR4/VUp6Xvex6nBbCSu2FmMzed7gD
 fL7sChCQDa94LDFAs+081PAVTE1IXLv5PJzloZUFCugKCUhifNdxj3DIB53bQGWgHOAF
 gTaB6RzcMu/WdzQ3YfFaUpQf+eacqGU1Imt3khbxHIRNyKK/BWEzixjE8XFvMmJxDuxv
 v8mA==
X-Gm-Message-State: AOAM533moJOaYCFJdLCOL7HMjmm4HOd7WsfKQnRAKESXJbEmsYf+a9Nv
 U4eriL7Bcg8QLeWsMEE/LXhg6CHaIz5RKF3mLaK9EZpEDCkKnA==
X-Google-Smtp-Source: ABdhPJzs/vakH4gzRwn4TwfC30J/9Qig+7n8MnGk2WL4alyrd+G0XyBmmgux45vHvUWMYBJ8NxZ+bcSag6g3C/4KNvc=
X-Received: by 2002:a25:b3c9:: with SMTP id x9mr14161666ybf.365.1599747169866; 
 Thu, 10 Sep 2020 07:12:49 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 10 Sep 2020 08:12:39 -0600
Message-ID: <CACryqrHQEgaTdm=ECtc2rAT7Bh8uuhMg9ar1H-km22wzWtiCzA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] UHD query gpsdo sensor command
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============9080217931911516294=="
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

--===============9080217931911516294==
Content-Type: multipart/alternative; boundary="000000000000ca566205aef629d4"

--000000000000ca566205aef629d4
Content-Type: text/plain; charset="UTF-8"

Hi,

   I am using the /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gps
information, but it shows:
*Waiting for the GPSDO to warm up...........No response from GPSDO in 30
seconds*

This is the whole information:
















































*hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensorsCreating the USRP
device with: ...[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de[INFO] [X300] X300 initialization
sequence...[INFO] [X300] Maximum frame size: 1472 bytes.[INFO] [X300] Radio
1x clock: 200 MHz[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
0.929b[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
0xF1F0D00000000000)[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304
MB/s)[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)[INFO]
[0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)[INFO]
[0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)[INFO]
[0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)[INFO]
[0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)[INFO]
[0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)[INFO]
[0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)Using
Device: Single USRP:  Device: X-Series Device  Mboard 0: X310  RX Channel:
0    RX DSP: 0    RX Dboard: A    RX Subdev: UBX RX  RX Channel: 1    RX
DSP: 0    RX Dboard: B    RX Subdev: UBX RX  TX Channel: 0    TX DSP: 0
TX Dboard: A    TX Subdev: UBX TX  TX Channel: 1    TX DSP: 0    TX Dboard:
B    TX Subdev: UBX TXSetting the reference clock source to "gpsdo"...Clock
source is now gpsdoSetting the reference clock source to "gpsdo"...Time
source is now gpsdoWaiting for ref_locked...USRP Locked to
Reference.**************************************Helpful Notes on Clock/PPS
Selection**************************************As you can see, the default
10 MHz Reference and 1 PPS signals are now from the GPSDO.If you would like
to use the internal reference(TCXO) in other applications, you must
configure that
explicitly.****************************************************************************************************************Waiting
for the GPSDO to warm up...........No response from GPSDO in 30 seconds*

I do plug the GPSDO to the board, and I plug the 5V active GPS antenna in
the `GPS ANT` connector at the rear panel. But I am not sure why. I just
want to get the location information. (btw, is it because I am in the
indoor area?)

Thanks,

Xiang Ma

-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--000000000000ca566205aef629d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>=C2=A0 =C2=A0I am using the /usr/lo=
cal/lib/uhd/utils/query_gpsdo_sensors to get gps information, but it shows:=
=C2=A0<i>Waiting for the GPSDO to warm up...........<br>No response from GP=
SDO in 30 seconds</i></div><div><i><br></i></div><div>This is the whole inf=
ormation:</div><div><br></div><div><i></i></div><div><div><i>hu@hu:~$ /usr/=
local/lib/uhd/utils/query_gpsdo_sensors<br><br>Creating the USRP device wit=
h: ...<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15=
.0.HEAD-0-gaea0e2de<br>[INFO] [X300] X300 initialization sequence...<br>[IN=
FO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock:=
 200 MHz<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929=
b<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)<br>[INFO=
] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)<br>[INFO] [0/Radio_0] I=
nitializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1=
] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_=
0] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC=
_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DU=
C_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/D=
UC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br>Using Devi=
ce: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X310=
<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dbo=
ard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=A0=
 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev:=
 UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0=
 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1<br=
>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX =
Subdev: UBX TX<br><br>Setting the reference clock source to &quot;gpsdo&quo=
t;...<br>Clock source is now gpsdo<br>Setting the reference clock source to=
 &quot;gpsdo&quot;...<br>Time source is now gpsdo<br>Waiting for ref_locked=
...USRP Locked to Reference.<br>**************************************Helpf=
ul Notes on Clock/PPS Selection**************************************<br>As=
 you can see, the default 10 MHz Reference and 1 PPS signals are now from t=
he GPSDO.<br>If you would like to use the internal reference(TCXO) in other=
 applications, you must configure that explicitly.<br>*********************=
***************************************************************************=
****************<br>Waiting for the GPSDO to warm up...........<br>No respo=
nse from GPSDO in 30 seconds</i></div><div><i><br></i></div><div>I do plug =
the GPSDO to the board, and I plug the 5V active GPS antenna in the `GPS AN=
T` connector at the rear panel. But I am not sure why. I just want to get t=
he location information. (btw, is it because I am in the indoor area?)</div=
><div><br></div><div>Thanks,</div><div><br></div><div>Xiang Ma</div></div><=
div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"times new roman, ser=
if" size=3D"4" style=3D"color:rgb(136,136,136)"><i><b>Xiang Ma,=C2=A0</b></=
i></font><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><d=
iv style=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of Engi=
neering</font></div><div><font color=3D"#444444">Utah State University</fon=
t></div><div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mai=
l:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" ta=
rget=3D"_blank">marxwolfs@gmail.com</a></font></div></div></div></div></div=
>

--000000000000ca566205aef629d4--


--===============9080217931911516294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9080217931911516294==--

