Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9A626490A
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 17:50:55 +0200 (CEST)
Received: from [::1] (port=44156 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGOqZ-0008Q6-Uk; Thu, 10 Sep 2020 11:50:51 -0400
Received: from mail-yb1-f179.google.com ([209.85.219.179]:45909)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGOqV-00082t-O3
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 11:50:47 -0400
Received: by mail-yb1-f179.google.com with SMTP id p81so4370640ybc.12
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 08:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fiUztykH6uJIjnlw7K3NaTxJdMhiRyRGQiSwtozYo1Y=;
 b=OYTDi0ja5vxm5yYH0l2qNIXQuM8yygFyHRQHVIEkVdkIlUpcQJIHVwQ/JUpWqipwmd
 RIT13fYpkX/SCkuKEr22IM5Watgi0XsbqtFXHUOeLA/+5nCNa5GWnMGU1RVfF34uGJbK
 eivqFmEx3SzLhb/CaFjB6rT/6BPoj2n+WeHtiKDIkr4HTFme72ozqEMjdsYQuP/M701+
 zBPvnh9f1GZCmAAuBrv4m0JVKfoNnK+cBCkIDTAQRbj4VqxgnZawpDWWa2QB6XfQdp+A
 6gD3ojyhK/AqULPWiGYlGaewPRuXowFffoPd0u8Dtey4lgqTvk7Bq0iwI/kLnXbxCU29
 KEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fiUztykH6uJIjnlw7K3NaTxJdMhiRyRGQiSwtozYo1Y=;
 b=NrVw6c39VhDInYL2KMp0/ZrcQD/MXpBtzm6DZErRhYKtcJk/lN26UlaQlID47kxkIS
 xjMXtuDxOhR3/AqsBhQKIX+0Ngvn7E6KnCe5SLf31kReorNmOQprilOuViqeXuR+JUfu
 Uedelce4Baugh2vS1xbknfT8IFdDub9Ah6u1DGshrddpsL1Lt/fyknAI6nzOX5WpUD5c
 NLzKteOrEqfrtwTCgfeJOtWxdpb0vNAbBMgQVg/SY785D4x3WvriGUhsvUeYY8F3RbG+
 8hLZdXLpUsjofL/2xiqPhJGXBLblauTgixrSX4cRhxFQKqFO6etdcLTIzgW43nyI6E2B
 CvmA==
X-Gm-Message-State: AOAM533ouvHvLKoI4wGyoZNRYjegZpVAwbjRLee43KdovSE7UHdTcfh1
 qG4AabZs5DxIj25tzq/kjX2rP32QQl4khYofviA=
X-Google-Smtp-Source: ABdhPJyDHoAb2DrCIAoWnaKDJGpGvjfokDOZyb7QPxFQP+cvOkL72bqxGSakJ8PE1aHQxiLcNxrtcsDAjozGBIFHMsE=
X-Received: by 2002:a25:81cd:: with SMTP id n13mr13498038ybm.514.1599753007128; 
 Thu, 10 Sep 2020 08:50:07 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrHQEgaTdm=ECtc2rAT7Bh8uuhMg9ar1H-km22wzWtiCzA@mail.gmail.com>
 <5F5A483C.8010506@gmail.com>
In-Reply-To: <5F5A483C.8010506@gmail.com>
Date: Thu, 10 Sep 2020 09:49:56 -0600
Message-ID: <CACryqrFS9dZo5N6am5VyGFq3xqfy0rrW5z=jtP3Y947kz-5Rrw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
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
From: Xiang Ma via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xiang Ma <marxwolfs@gmail.com>
Content-Type: multipart/mixed; boundary="===============5616866079429025506=="
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

--===============5616866079429025506==
Content-Type: multipart/alternative; boundary="000000000000b7e16505aef7851c"

--000000000000b7e16505aef7851c
Content-Type: text/plain; charset="UTF-8"

But you can see there is an info:
*[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b*

Also, when I run /usr/local/lib/uhd/examples/sync_to_gps

It shows:
Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
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

Synchronizing mboard 0: X310

**************************************Helpful Notes on Clock/PPS
Selection**************************************
As you can see, the default 10 MHz Reference and 1 PPS signals are now from
the GPSDO.
If you would like to use the internal reference(TCXO) in other
applications, you must configure that explicitly.
You can no longer select the external SMAs for 10 MHz or 1 PPS signaling.
****************************************************************************************************************

Waiting for reference lock...LOCKED

Error: ValueError: locked(): unable to determine GPS lock statusThis could
mean that you have not installed the GPSDO correctly.

Visit one of these pages if the problem persists:
 * N2X0/E1X0: http://files.ettus.com/manual/page_gpsdo.html * X3X0:
http://files.ettus.com/manual/page_gpsdo_x3x0.html

 * E3X0: http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps

On Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 09/10/2020 10:12 AM, Xiang Ma via USRP-users wrote:
>
> Hi,
>
>    I am using the /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gps
> information, but it shows:
> *Waiting for the GPSDO to warm up........... No response from GPSDO in 30
> seconds*
>
> This is the whole information:
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors Creating the USRP
> device with: ... [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes. [INFO] [X300] Radio 1x clock:
> 200 MHz [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000) [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304
> MB/s) [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s) [INFO]
> [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001) [INFO]
> [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001) [INFO]
> [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000) [INFO]
> [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000) [INFO]
> [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000) [INFO]
> [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000) Using
> Device: Single USRP:   Device: X-Series Device   Mboard 0: X310   RX
> Channel: 0     RX DSP: 0     RX Dboard: A     RX Subdev: UBX RX   RX
> Channel: 1     RX DSP: 0     RX Dboard: B     RX Subdev: UBX RX   TX
> Channel: 0     TX DSP: 0     TX Dboard: A     TX Subdev: UBX TX   TX
> Channel: 1     TX DSP: 0     TX Dboard: B     TX Subdev: UBX TX Setting the
> reference clock source to "gpsdo"... Clock source is now gpsdo Setting the
> reference clock source to "gpsdo"... Time source is now gpsdo Waiting for
> ref_locked...USRP Locked to Reference.
> **************************************Helpful Notes on Clock/PPS
> Selection************************************** As you can see, the default
> 10 MHz Reference and 1 PPS signals are now from the GPSDO. If you would
> like to use the internal reference(TCXO) in other applications, you must
> configure that explicitly.
> ****************************************************************************************************************
> Waiting for the GPSDO to warm up........... No response from GPSDO in 30
> seconds*
>
> I do plug the GPSDO to the board, and I plug the 5V active GPS antenna in
> the `GPS ANT` connector at the rear panel. But I am not sure why. I just
> want to get the location information. (btw, is it because I am in the
> indoor area?)
>
> Thanks,
>
> Xiang Ma
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>
>
> I would re-check the GPSDO installation.  You may have bent one of the
> pins when you installed it.
>
> Also, it won't be able to get a "fix" unless the antenna can "see" the
> sky.  Most buildings are not that transparent at 1575MHz.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--000000000000b7e16505aef7851c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">But you can see there is an info:<div><i>[INFO] [GPS] Foun=
d an internal GPSDO: LC_XO, Firmware Rev 0.929b</i></div><div><br></div><di=
v>Also, when I run /usr/local/lib/uhd/examples/sync_to_gps</div><div><br></=
div><div>It shows:</div><div>Creating the USRP device with: ...<br>[INFO] [=
UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2d=
e<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum=
 frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO]=
 [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b<br>[INFO] [0/Dma=
FIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [=
0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)<br>[INFO] [0/DmaFIFO_0] BI=
ST passed (Throughput: 1317 MB/s)<br>[INFO] [0/Radio_0] Initializing block =
control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/Radio_1] Initializing blo=
ck control (NOC ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Initializing bl=
ock control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initializing b=
lock control (NOC ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing =
block control (NOC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Initializing=
 block control (NOC ID: 0xD0C0000000000000)<br>Using Device: Single USRP:<b=
r>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Chan=
nel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =
=C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 0=
<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0=
 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=
=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX=
 DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br=
><br>Synchronizing mboard 0: X310<br><br>**********************************=
****Helpful Notes on Clock/PPS Selection***********************************=
***<br>As you can see, the default 10 MHz Reference and 1 PPS signals are n=
ow from the GPSDO.<br>If you would like to use the internal reference(TCXO)=
 in other applications, you must configure that explicitly.<br>You can no l=
onger select the external SMAs for 10 MHz or 1 PPS signaling.<br>**********=
***************************************************************************=
***************************<br><br>Waiting for reference lock...LOCKED<br><=
br>Error: ValueError: locked(): unable to determine GPS lock statusThis cou=
ld mean that you have not installed the GPSDO correctly.<br><br>Visit one o=
f these pages if the problem persists:<br>=C2=A0* N2X0/E1X0: <a href=3D"htt=
p://files.ettus.com/manual/page_gpsdo.html">http://files.ettus.com/manual/p=
age_gpsdo.html</a> * X3X0: <a href=3D"http://files.ettus.com/manual/page_gp=
sdo_x3x0.html">http://files.ettus.com/manual/page_gpsdo_x3x0.html</a><br><b=
r>=C2=A0* E3X0: <a href=3D"http://files.ettus.com/manual/page_usrp_e3x0.htm=
l#e3x0_hw_gps">http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gp=
s</a><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-us=
ers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
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
        <div>=C2=A0 =C2=A0I am using the
          /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gps
          information, but it shows:=C2=A0<i>Waiting for the GPSDO to warm
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
              =C2=A0 Device: X-Series Device<br>
              =C2=A0 Mboard 0: X310<br>
              =C2=A0 RX Channel: 0<br>
              =C2=A0 =C2=A0 RX DSP: 0<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
              =C2=A0 RX Channel: 1<br>
              =C2=A0 =C2=A0 RX DSP: 0<br>
              =C2=A0 =C2=A0 RX Dboard: B<br>
              =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
              =C2=A0 TX Channel: 0<br>
              =C2=A0 =C2=A0 TX DSP: 0<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
              =C2=A0 TX Channel: 1<br>
              =C2=A0 =C2=A0 TX DSP: 0<br>
              =C2=A0 =C2=A0 TX Dboard: B<br>
              =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
              <br>
              Setting the reference clock source to &quot;gpsdo&quot;...<br=
>
              Clock source is now gpsdo<br>
              Setting the reference clock source to &quot;gpsdo&quot;...<br=
>
              Time source is now gpsdo<br>
              Waiting for ref_locked...USRP Locked to Reference.<br>
              **************************************Helpful Notes on
              Clock/PPS Selection**************************************<br>
              As you can see, the default 10 MHz Reference and 1 PPS
              signals are now from the GPSDO.<br>
              If you would like to use the internal reference(TCXO) in
              other applications, you must configure that explicitly.<br>
***************************************************************************=
*************************************<br>
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
          <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D"4=
" face=3D"times new roman, serif"><i><b>Xiang Ma,=C2=A0</b></i></font><span=
 style=3D"color:rgb(136,136,136)">Ph.D. Student</span>
            <div>
              <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444"=
>College
                  of Engineering</font></div>
              <div><font color=3D"#444444">Utah State University</font></di=
v>
              <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444"=
>E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,20=
4)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    I would re-check the GPSDO installation.=C2=A0 You may have bent one of
    the pins when you installed it.<br>
    <br>
    Also, it won&#39;t be able to get a &quot;fix&quot; unless the antenna =
can &quot;see&quot;
    the sky.=C2=A0 Most buildings are not that transparent at 1575MHz.<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D"4" face=3D=
"times new roman, serif"><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D=
"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"color:rgb(1=
36,136,136)"><font color=3D"#444444">College of Engineering</font></div><di=
v><font color=3D"#444444">Utah State University</font></div><div style=3D"c=
olor:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mailto:con=
gshanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">marxwol=
fs@gmail.com</a></font></div></div></div></div>

--000000000000b7e16505aef7851c--


--===============5616866079429025506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5616866079429025506==--

