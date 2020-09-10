Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 410A2264954
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:08:18 +0200 (CEST)
Received: from [::1] (port=44512 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGP7P-0005IA-1F; Thu, 10 Sep 2020 12:08:15 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:44908)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGP7K-0005BC-LK
 for USRP-users@lists.ettus.com; Thu, 10 Sep 2020 12:08:10 -0400
Received: by mail-qk1-f180.google.com with SMTP id n133so6551455qkn.11
 for <USRP-users@lists.ettus.com>; Thu, 10 Sep 2020 09:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=vMoMWozn5OQYT6kF+dXDj4bf049YPSMxT9gjlPxB3Q8=;
 b=Hhr6zGN9TgSn4tKA78RRKyZXcbvT5aVMxYMfioGGXalyurVzN8o5aZrw4kWk3lx7XW
 Zn46gUECJ0KWkISpJvqthr0foZhKp8v16MyupszcA7AiXS8FCw9vWhFe/tBLcDDz2vus
 6dqnZrDtWINM3BHZoCX+qHGxkIcgmUFmAl4EiilssEzbUpqt5XwjT4bFBEfvQ771S3PA
 f+GsjIiqiXpKGR9XyWM3KGd8QLXKt4s3wQt/a977UzrMO27nUIgH9sJEB2jLzPhD/dPq
 0+rNLB92i5SeGLuN1ehwbvuRUm/s6B6Qu0aWzhLhRJZ/uNFA0tOrUnU94JJsc0h3kZJS
 ao3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=vMoMWozn5OQYT6kF+dXDj4bf049YPSMxT9gjlPxB3Q8=;
 b=o3XqfwhSiLWyErgRRYo1Qvp2qKpymOrV8s9LboWXMQft/o8IQiyCf8gQEYmoXSW7NJ
 qWamFkFaEzTdpOmKXM4iQrf6xSZA8gNIQORZen2ZdgF4H7oKE9K2UtGEl3rl3K62k44z
 Vz2Xc6auw9h/oNpTqvkvrx1oO0RUlx9q/PmKALPYNW6eemle5+vnzJLUsiHfSsFlMJUb
 juribU3hTcWinWoFgxvq5Jfx+tgHTJZgQRAUXo4eunjOwOQPscRcms7ER1r/2LivQHQp
 udWPtQuBBvTYWWiuJUbBFmiTE01M2mtWjYWBH4rndO3jkpYMSqgBLAU3jsJBR+C4BySi
 UbIQ==
X-Gm-Message-State: AOAM531u4/mPDxuWMkmzhytMQFUMe1sLALeFR0e4pwpjqiwiqIUTCzFF
 fH1cLkgqkzhwL627WOegSFSUZuEjQS6rPA==
X-Google-Smtp-Source: ABdhPJzzh2S3mOcs3jotLWQIcKD7kU5GEdWG5Zj1jF1yGJgRgUp9bD7DcnQPxmWUKd89OmJpY9lhrA==
X-Received: by 2002:a05:620a:4c3:: with SMTP id
 3mr8986851qks.105.1599754049801; 
 Thu, 10 Sep 2020 09:07:29 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id u15sm7673633qtj.3.2020.09.10.09.07.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 09:07:29 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 10 Sep 2020 12:07:28 -0400
Message-Id: <D6AE7F12-CCA7-4CC9-B8C6-763CB6523273@gmail.com>
References: <CACryqrFS9dZo5N6am5VyGFq3xqfy0rrW5z=jtP3Y947kz-5Rrw@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CACryqrFS9dZo5N6am5VyGFq3xqfy0rrW5z=jtP3Y947kz-5Rrw@mail.gmail.com>
To: Xiang Ma <marxwolfs@gmail.com>
X-Mailer: iPhone Mail (17G80)
Subject: Re: [USRP-users] UHD query gpsdo sensor command
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============8350400115850606041=="
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


--===============8350400115850606041==
Content-Type: multipart/alternative; boundary=Apple-Mail-7E0E7A14-1BF6-4374-991D-0BEA830E6DB2
Content-Transfer-Encoding: 7bit


--Apple-Mail-7E0E7A14-1BF6-4374-991D-0BEA830E6DB2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

To me the message at the end suggests even more strongly that there=E2=80=99=
s a hardware problem with the GPSDO installation.=20

Sent from my iPhone

> On Sep 10, 2020, at 11:50 AM, Xiang Ma <marxwolfs@gmail.com> wrote:
>=20
> =EF=BB=BF
> But you can see there is an info:
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>=20
> Also, when I run /usr/local/lib/uhd/examples/sync_to_gps
>=20
> It shows:
> Creating the USRP device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0=
-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D0000000000=
0)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)=

> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)=

> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
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
>=20
> Synchronizing mboard 0: X310
>=20
> **************************************Helpful Notes on Clock/PPS Selection=
**************************************
> As you can see, the default 10 MHz Reference and 1 PPS signals are now fro=
m the GPSDO.
> If you would like to use the internal reference(TCXO) in other application=
s, you must configure that explicitly.
> You can no longer select the external SMAs for 10 MHz or 1 PPS signaling.
> **************************************************************************=
**************************************
>=20
> Waiting for reference lock...LOCKED
>=20
> Error: ValueError: locked(): unable to determine GPS lock statusThis could=
 mean that you have not installed the GPSDO correctly.
>=20
> Visit one of these pages if the problem persists:
>  * N2X0/E1X0: http://files.ettus.com/manual/page_gpsdo.html * X3X0: http:/=
/files.ettus.com/manual/page_gpsdo_x3x0.html
>=20
>  * E3X0: http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps
>=20
>> On Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>> On 09/10/2020 10:12 AM, Xiang Ma via USRP-users wrote:
>>> Hi,
>>>=20
>>>    I am using the /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gp=
s information, but it shows: Waiting for the GPSDO to warm up...........
>>> No response from GPSDO in 30 seconds
>>>=20
>>> This is the whole information:
>>>=20
>>> hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors
>>>=20
>>> Creating the USRP device with: ...
>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD=
-0-gaea0e2de
>>> [INFO] [X300] X300 initialization sequence...
>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000=
000)
>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)=

>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)=

>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)=

>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)=

>>> Using Device: Single USRP:
>>>   Device: X-Series Device
>>>   Mboard 0: X310
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: UBX RX
>>>   RX Channel: 1
>>>     RX DSP: 0
>>>     RX Dboard: B
>>>     RX Subdev: UBX RX
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: UBX TX
>>>   TX Channel: 1
>>>     TX DSP: 0
>>>     TX Dboard: B
>>>     TX Subdev: UBX TX
>>>=20
>>> Setting the reference clock source to "gpsdo"...
>>> Clock source is now gpsdo
>>> Setting the reference clock source to "gpsdo"...
>>> Time source is now gpsdo
>>> Waiting for ref_locked...USRP Locked to Reference.
>>> **************************************Helpful Notes on Clock/PPS Selecti=
on**************************************
>>> As you can see, the default 10 MHz Reference and 1 PPS signals are now f=
rom the GPSDO.
>>> If you would like to use the internal reference(TCXO) in other applicati=
ons, you must configure that explicitly.
>>> ************************************************************************=
****************************************
>>> Waiting for the GPSDO to warm up...........
>>> No response from GPSDO in 30 seconds
>>>=20
>>> I do plug the GPSDO to the board, and I plug the 5V active GPS antenna i=
n the `GPS ANT` connector at the rear panel. But I am not sure why. I just w=
ant to get the location information. (btw, is it because I am in the indoor a=
rea?)
>>>=20
>>> Thanks,
>>>=20
>>> Xiang Ma
>>>=20
>>> --=20
>>> Xiang Ma, Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com
>>>=20
>>>=20
>> I would re-check the GPSDO installation.  You may have bent one of the pi=
ns when you installed it.
>>=20
>> Also, it won't be able to get a "fix" unless the antenna can "see" the sk=
y.  Most buildings are not that transparent at 1575MHz.
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=20
>=20
> --=20
> Xiang Ma, Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com

--Apple-Mail-7E0E7A14-1BF6-4374-991D-0BEA830E6DB2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">To me the message at the end suggests even m=
ore strongly that there=E2=80=99s a hardware problem with the GPSDO installa=
tion.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr=
"><br><blockquote type=3D"cite">On Sep 10, 2020, at 11:50 AM, Xiang Ma &lt;m=
arxwolfs@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"=
cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">But you can see there is an=
 info:<div><i>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.92=
9b</i></div><div><br></div><div>Also, when I run /usr/local/lib/uhd/examples=
/sync_to_gps</div><div><br></div><div>It shows:</div><div>Creating the USRP d=
evice with: ...<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; U=
HD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [X300] X300 initialization sequence...<=
br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x c=
lock: 200 MHz<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0=
.929b<br>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000=
00000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)<br>[IN=
FO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)<br>[INFO] [0/Radio_0] I=
nitializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1]=
 Initializing block control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0]=
 Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1]=
 Initializing block control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0]=
 Initializing block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1]=
 Initializing block control (NOC ID: 0xD0C0000000000000)<br>Using Device: Si=
ngle USRP:<br>&nbsp; Device: X-Series Device<br>&nbsp; Mboard 0: X310<br>&nb=
sp; RX Channel: 0<br>&nbsp; &nbsp; RX DSP: 0<br>&nbsp; &nbsp; RX Dboard: A<b=
r>&nbsp; &nbsp; RX Subdev: UBX RX<br>&nbsp; RX Channel: 1<br>&nbsp; &nbsp; R=
X DSP: 0<br>&nbsp; &nbsp; RX Dboard: B<br>&nbsp; &nbsp; RX Subdev: UBX RX<br=
>&nbsp; TX Channel: 0<br>&nbsp; &nbsp; TX DSP: 0<br>&nbsp; &nbsp; TX Dboard:=
 A<br>&nbsp; &nbsp; TX Subdev: UBX TX<br>&nbsp; TX Channel: 1<br>&nbsp; &nbs=
p; TX DSP: 0<br>&nbsp; &nbsp; TX Dboard: B<br>&nbsp; &nbsp; TX Subdev: UBX T=
X<br><br>Synchronizing mboard 0: X310<br><br>*******************************=
*******Helpful Notes on Clock/PPS Selection*********************************=
*****<br>As you can see, the default 10 MHz Reference and 1 PPS signals are n=
ow from the GPSDO.<br>If you would like to use the internal reference(TCXO) i=
n other applications, you must configure that explicitly.<br>You can no long=
er select the external SMAs for 10 MHz or 1 PPS signaling.<br>**************=
****************************************************************************=
**********************<br><br>Waiting for reference lock...LOCKED<br><br>Err=
or: ValueError: locked(): unable to determine GPS lock statusThis could mean=
 that you have not installed the GPSDO correctly.<br><br>Visit one of these p=
ages if the problem persists:<br>&nbsp;* N2X0/E1X0: <a href=3D"http://files.=
ettus.com/manual/page_gpsdo.html">http://files.ettus.com/manual/page_gpsdo.h=
tml</a> * X3X0: <a href=3D"http://files.ettus.com/manual/page_gpsdo_x3x0.htm=
l">http://files.ettus.com/manual/page_gpsdo_x3x0.html</a><br><br>&nbsp;* E3X=
0: <a href=3D"http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps"=
>http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps</a><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/10/2020 10:12 AM, Xiang Ma via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>&nbsp; &nbsp;I am using the
          /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gps
          information, but it shows:&nbsp;<i>Waiting for the GPSDO to warm
            up...........<br>
            No response from GPSDO in 30 seconds</i></div>
        <div><i><br>
          </i></div>
        <div>This is the whole information:</div>
        <div><br>
        </div>
        <div>
          <div><i>hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors<br>
              <br>
              Creating the USRP device with: ...<br>
              [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
              UHD_3.15.0.HEAD-0-gaea0e2de<br>
              [INFO] [X300] X300 initialization sequence...<br>
              [INFO] [X300] Maximum frame size: 1472 bytes.<br>
              [INFO] [X300] Radio 1x clock: 200 MHz<br>
              [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
              0.929b<br>
              [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
              0xF1F0D00000000000)<br>
              [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)<br>
              [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)<br>
              [INFO] [0/Radio_0] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [0/Radio_1] Initializing block control (NOC ID:
              0x12AD100000000001)<br>
              [INFO] [0/DDC_0] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [0/DDC_1] Initializing block control (NOC ID:
              0xDDC0000000000000)<br>
              [INFO] [0/DUC_0] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              [INFO] [0/DUC_1] Initializing block control (NOC ID:
              0xD0C0000000000000)<br>
              Using Device: Single USRP:<br>
              &nbsp; Device: X-Series Device<br>
              &nbsp; Mboard 0: X310<br>
              &nbsp; RX Channel: 0<br>
              &nbsp; &nbsp; RX DSP: 0<br>
              &nbsp; &nbsp; RX Dboard: A<br>
              &nbsp; &nbsp; RX Subdev: UBX RX<br>
              &nbsp; RX Channel: 1<br>
              &nbsp; &nbsp; RX DSP: 0<br>
              &nbsp; &nbsp; RX Dboard: B<br>
              &nbsp; &nbsp; RX Subdev: UBX RX<br>
              &nbsp; TX Channel: 0<br>
              &nbsp; &nbsp; TX DSP: 0<br>
              &nbsp; &nbsp; TX Dboard: A<br>
              &nbsp; &nbsp; TX Subdev: UBX TX<br>
              &nbsp; TX Channel: 1<br>
              &nbsp; &nbsp; TX DSP: 0<br>
              &nbsp; &nbsp; TX Dboard: B<br>
              &nbsp; &nbsp; TX Subdev: UBX TX<br>
              <br>
              Setting the reference clock source to "gpsdo"...<br>
              Clock source is now gpsdo<br>
              Setting the reference clock source to "gpsdo"...<br>
              Time source is now gpsdo<br>
              Waiting for ref_locked...USRP Locked to Reference.<br>
              **************************************Helpful Notes on
              Clock/PPS Selection**************************************<br>
              As you can see, the default 10 MHz Reference and 1 PPS
              signals are now from the GPSDO.<br>
              If you would like to use the internal reference(TCXO) in
              other applications, you must configure that explicitly.<br>
****************************************************************************=
************************************<br>
              Waiting for the GPSDO to warm up...........<br>
              No response from GPSDO in 30 seconds</i></div>
          <div><i><br>
            </i></div>
          <div>I do plug the GPSDO to the board, and I plug the 5V
            active GPS antenna in the `GPS ANT` connector at the rear
            panel. But I am not sure why. I just want to get the
            location information. (btw, is it because I am in the indoor
            area?)</div>
          <div><br>
          </div>
          <div>Thanks,</div>
          <div><br>
          </div>
          <div>Xiang Ma</div>
        </div>
        <div><br>
        </div>
        -- <br>
        <div dir=3D"ltr">
          <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D"4"=
 face=3D"times new roman, serif"><i><b>Xiang Ma,&nbsp;</b></i></font><span s=
tyle=3D"color:rgb(136,136,136)">Ph.D. Student</span>
            <div>
              <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">=
College
                  of Engineering</font></div>
              <div><font color=3D"#444444">Utah State University</font></div=
>
              <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">=
E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)=
" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    I would re-check the GPSDO installation.&nbsp; You may have bent one of
    the pins when you installed it.<br>
    <br>
    Also, it won't be able to get a "fix" unless the antenna can "see"
    the sky.&nbsp; Most buildings are not that transparent at 1575MHz.<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr">=
<div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D"4" face=3D"t=
imes new roman, serif"><i><b>Xiang Ma,&nbsp;</b></i></font><span style=3D"co=
lor:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(136,1=
36,136)"><font color=3D"#444444">College of Engineering</font></div><div><fo=
nt color=3D"#444444">Utah State University</font></div><div style=3D"color:r=
gb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:congshanya=
@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail=
.com</a></font></div></div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-7E0E7A14-1BF6-4374-991D-0BEA830E6DB2--


--===============8350400115850606041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8350400115850606041==--

