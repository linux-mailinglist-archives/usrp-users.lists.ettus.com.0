Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D156D34D
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 19:57:57 +0200 (CEST)
Received: from [::1] (port=38724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoAfB-0001rw-BO; Thu, 18 Jul 2019 13:57:53 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:37534)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hoAf7-0001jF-8r
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 13:57:49 -0400
Received: by mail-oi1-f169.google.com with SMTP id t76so22246481oih.4
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 10:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uJ0SJTBgLdHrMJ9DqXFB8xG1cWCzu0p4edIy/Khy10M=;
 b=GqiPwgMfSW8U3QZqajIvXQn0WFHpybnHfIxcGwcPWVZ+qYTBL7iiXivKZzigc/NNPn
 S91f4XQDvnkyYblnRwrM/vp6AktzDe5AzfceuD37JXrBwpLzQxWMP4Ps/xKjkpxug/sn
 zC4wW9N1iz6X1wCLp2DsxbJI9pMoy+Rs+rfNIZxiWOWXkOGIcgTBVqiKDdtDiOjZVHHy
 eQAnEc8os7csgU1oG47f/Aozuooo02m5ZF+vT+F81mkMfSrZskGtP9564g5E36FKJglh
 Jmx9xAIS3Od0aJe6+AOkZjeoAfoob8aD+1ek8JV7fPyM3W08j1qRlq/1qeRlR4hOqQwq
 Yazg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uJ0SJTBgLdHrMJ9DqXFB8xG1cWCzu0p4edIy/Khy10M=;
 b=Kd3vGUI1r2CtAcyIjJ5k7gOejbi136pX1vuNlluoiJr5VqB/baJ0mO5d5kmNc+NVJ8
 V2zfiMrlWfAxwmwdXtWBHJL0mhi1z64SCyExicq2OokG9XyKRrvIbeySQKeGZwdN7QOU
 c1WiQmZb4uuXEfwfMXRJIo7NmOqzGucmIfDmfYtH3/yizqdr1maiiHlIdPAVjFvotUKZ
 2Mi7eyRXP2dCcSjXIc0ys6pILxLWRSHmjejfVXok64T+6OaOuAP3UyBK5lJ+yqn8SBPa
 VzBHyYrOK3yqFAmxCJ3BH6829Wk34GbX9J30ZvrAikae3HmoIgpOlg2LYttzps2mMupS
 KgVw==
X-Gm-Message-State: APjAAAWDPSaKaBSg5EeRbMo/K967y1JUfhqmVwuzS7nm0pA4LlIJkGLE
 7Jv05iAU5HjRiAIZFdkqYxRBwx4OY7ugPGXgOF6pbDyJXNlAHQ==
X-Google-Smtp-Source: APXvYqxT8v89h+BdBlWXqPVoKXaMzOxX15EEn6w5NDKn3EGZVIi2nfXNrZYeU3XYmkHG1bXG++TSpnTaCB4BYblmEcE=
X-Received: by 2002:aca:c795:: with SMTP id x143mr23094582oif.50.1563472628479; 
 Thu, 18 Jul 2019 10:57:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOhu+FNA7PhfLoARTej_vwzaomvvv23a4rtegYXn7seu-iQ2uQ@mail.gmail.com>
In-Reply-To: <CAOhu+FNA7PhfLoARTej_vwzaomvvv23a4rtegYXn7seu-iQ2uQ@mail.gmail.com>
Date: Thu, 18 Jul 2019 10:57:26 -0700
Message-ID: <CAL263izUy3_gvzSCeC5dxVHjSZ7N=G3OKRfq7Z=Pw3C+KdLt0A@mail.gmail.com>
To: Serge Malo <serge.malo@skydelsolutions.com>
Subject: Re: [USRP-users] Unable to Tx on 2 X300s with UHD 3.13.1.0 -
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 julien.edmond@orolia.com
Content-Type: multipart/mixed; boundary="===============7215466186420158732=="
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

--===============7215466186420158732==
Content-Type: multipart/alternative; boundary="000000000000a320b5058df8563b"

--000000000000a320b5058df8563b
Content-Type: text/plain; charset="UTF-8"

Hi Serge,

We are aware of this issue and have an open issue on our internal bug
tracker for it. We currently do not have any work around and hope to have a
fix for it soon.

Regards,
Nate Temple

On Thu, Jul 18, 2019 at 10:53 AM Serge Malo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> We are facing a important issue with UHD 3.13.1.0 with the X300:
> We can not Tx on the 4 channels of 2 X300s, even with the benchmark_rate
> example.
> We were able to do this flawlessly with UHD 3.10.3 for a long time.
>
> Here's the command we use:
> ./benchmark_rate --args addr0=192.168.40.2,addr1=192.168.50.2
> --tx_cpu=sc16 --tx_rate=25000000 --ref=external --pps=external
> --tx_channels=0,1,2,3
>
> When using this command, the benchmark_rate hangs forever (See below the
> whole output)
> We have reproduced this error under Ubutun 18.04, with gcc 7.4 and Boost
> 1.68 (statically linked).
> We also saw the same problem under Windows 10.
>
> Please, let us if this issue was observed before, and if there is a
> correction available.
>
> Thanks,
> Serge
>
>
>
> benchmark_rate output:
> ./benchmark_rate --args addr0=192.168.40.2,addr1=192.168.50.2
> --tx_cpu=sc16 --tx_rate=25000000 --ref=external --pps=external
> --tx_channels=0,1,2,3
>
> [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106800;
> UHD_3.13.1.skydel-1-ga4c99ab3
> [00:00:00.000002] Creating the usrp device with:
> addr0=192.168.40.2,addr1=192.168.50.2...
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [1/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1298 MB/s)
> [INFO] [1/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [1/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [1/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1294 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> Using Device: Multi USRP:
>   Device: X-Series Device
>   Mboard 0: X300
>   Mboard 1: X300
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: UBX RX
>   RX Channel: 2
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 3
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: UBX TX
>   TX Channel: 2
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 3
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: UBX TX
>
> Now confirming lock on clock signals...
> [00:00:05.059918] Setting device timestamp to 0...
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [00:00:06.714193] Testing transmit rate 25.000000 Msps on 4 channels
> ^C
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a320b5058df8563b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Serge,<br><br>We are aware of this issue and have an=
 open issue on our internal bug tracker for it. We currently do not have an=
y work around and hope to have a fix for it soon.<br><br>Regards,<br>Nate T=
emple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Jul 18, 2019 at 10:53 AM Serge Malo via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail-m_-821866425436625457gmail_sig=
nature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div style=3D"color:rgb(0,0,0)"><div style=3D"color:rgb(34,34,34);font-=
family:LucidaGrande;font-size:12.8px">Hi all,</div><div style=3D"color:rgb(=
34,34,34);font-family:LucidaGrande;font-size:12.8px"><br></div><div style=
=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px">We are f=
acing a important issue with UHD 3.13.1.0 with the X300:</div><div style=3D=
"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px">We can not =
Tx on the 4 channels of 2 X300s, even with the benchmark_rate example.</div=
><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8p=
x"><span style=3D"font-size:12.8px">We were able to do this flawlessly with=
 UHD 3.10.3 for a long time.</span><br></div><div style=3D"color:rgb(34,34,=
34);font-family:LucidaGrande;font-size:12.8px"><br></div><div style=3D"colo=
r:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px">Here&#39;s the c=
ommand we use:</div><div style=3D"color:rgb(34,34,34);font-family:LucidaGra=
nde;font-size:12.8px">./benchmark_rate --args addr0=3D192.168.40.2,addr1=3D=
192.168.50.2 --tx_cpu=3Dsc16 --tx_rate=3D25000000 --ref=3Dexternal --pps=3D=
external --tx_channels=3D0,1,2,3</div><div style=3D"color:rgb(34,34,34);fon=
t-family:LucidaGrande;font-size:12.8px"><br></div><div style=3D"color:rgb(3=
4,34,34);font-family:LucidaGrande;font-size:12.8px">When using this command=
, the benchmark_rate hangs forever (See below the whole output)</div><div s=
tyle=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px">We h=
ave reproduced this error under Ubutun 18.04, with gcc 7.4 and Boost 1.68 (=
statically linked).</div><div style=3D"color:rgb(34,34,34);font-family:Luci=
daGrande;font-size:12.8px">We also saw the same problem under Windows 10.</=
div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12=
.8px"><br></div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;=
font-size:12.8px"><span style=3D"font-size:12.8px">Please, let us if this i=
ssue was observed before, and if there is a correction available.</span><br=
></div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size=
:12.8px"><span style=3D"font-size:12.8px"><br></span></div><div style=3D"co=
lor:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px"><span style=3D=
"font-size:12.8px">Thanks,</span></div><div style=3D"color:rgb(34,34,34);fo=
nt-family:LucidaGrande;font-size:12.8px"><span style=3D"font-size:12.8px">S=
erge</span></div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande=
;font-size:12.8px"><span style=3D"font-size:12.8px"><br></span></div><div s=
tyle=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px"><spa=
n style=3D"font-size:12.8px"><br></span></div><div style=3D"color:rgb(34,34=
,34);font-family:LucidaGrande;font-size:12.8px"><span style=3D"font-size:12=
.8px"><br></span></div><div style=3D"color:rgb(34,34,34);font-family:Lucida=
Grande;font-size:12.8px"><span style=3D"font-size:12.8px">benchmark_rate ou=
tput:</span></div><div style=3D"color:rgb(34,34,34);font-size:12.8px"><font=
 face=3D"courier new, monospace">./benchmark_rate --args addr0=3D192.168.40=
.2,addr1=3D192.168.50.2 --tx_cpu=3Dsc16 --tx_rate=3D25000000 --ref=3Dextern=
al --pps=3Dexternal --tx_channels=3D0,1,2,3<br><br>[INFO] [UHD] linux; GNU =
C++ version 7.4.0; Boost_106800; UHD_3.13.1.skydel-1-ga4c99ab3<br>[00:00:00=
.000002] Creating the usrp device with: addr0=3D192.168.40.2,addr1=3D192.16=
8.50.2...<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300]=
 Maximum frame size: 8000 bytes.<br>[INFO] [X300] Maximum frame size: 8000 =
bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [X300] Radio 1x c=
lock: 200 MHz<br>[INFO] [1/DmaFIFO_0] Initializing block control (NOC ID: 0=
xF1F0D00000000000)<br>[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1300 MB=
/s)<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a<br>=
[INFO] [1/DmaFIFO_0] BIST passed (Throughput: 1298 MB/s)<br>[INFO] [1/Radio=
_0] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [1/Ra=
dio_1] Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [1=
/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [=
1/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] =
[1/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO]=
 [1/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO=
] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)<br>=
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1299 MB/s)<br>[INFO] [0/DmaFI=
FO_0] BIST passed (Throughput: 1294 MB/s)<br>[INFO] [0/Radio_0] Initializin=
g block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1] Initiali=
zing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Initial=
izing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initia=
lizing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initi=
alizing block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Init=
ializing block control (NOC ID: 0xD0C0000000000000)<br>Using Device: Multi =
USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X300<br>=C2=A0 =
Mboard 1: X300<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0=
 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channe=
l: 1<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=
=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 2<br>=C2=A0 =C2=A0 RX DSP: 0<br=
>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX=
 Channel: 3<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=
=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DS=
P: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=
=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard:=
 B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 2<br>=C2=A0 =C2=
=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX=
 TX<br>=C2=A0 TX Channel: 3<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX =
Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Now confirming lock on =
clock signals...<br>[00:00:05.059918] Setting device timestamp to 0...<br>[=
INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps edge<br>[I=
NFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchronously)<br>[0=
0:00:06.714193] Testing transmit rate 25.000000 Msps on 4 channels<br>^C</f=
ont><br></div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;fo=
nt-size:12.8px"><br><br></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a320b5058df8563b--


--===============7215466186420158732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7215466186420158732==--

