Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB90264973
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:13:25 +0200 (CEST)
Received: from [::1] (port=44576 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGPCN-0005tE-Fr; Thu, 10 Sep 2020 12:13:23 -0400
Received: from mail-yb1-f182.google.com ([209.85.219.182]:36879)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGPCJ-0005dS-Cv
 for USRP-users@lists.ettus.com; Thu, 10 Sep 2020 12:13:19 -0400
Received: by mail-yb1-f182.google.com with SMTP id h126so4440597ybg.4
 for <USRP-users@lists.ettus.com>; Thu, 10 Sep 2020 09:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dIWls2htw8mBZJuUtcC8kdWl7rsdgPc65yXFm4u6d/Y=;
 b=ZtRqtU22UMIrMbAK2remk732h8J6Qpbilf6LfVHqc55ygBVPwDake6uQ34Ur5WpRm8
 R5srqDyajV3lhySjWG6WEImCbTn/rNVfciU5JSKrGvpop1auEOa94Rcy0UJRPk0+5Izr
 TeEC00UnfmP6dvKjkS+hS1HCRaxGF6YdIc3qbzpcuLIN6jqJMEvcmlD/7s9WuMSSu0if
 zQxhfuUkwLXXOW10s/EFDmS+f7ouC8YUvzO+Nljx0KFcWL9IXnm2pj9NA36ysCsb/xYi
 7C5KxGn+QmDv0uewhZPNLl0aEqqzwcYkKXOTwVsS62y3OMi6C6/P4qXfRFd8WC0+RHIT
 1rfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dIWls2htw8mBZJuUtcC8kdWl7rsdgPc65yXFm4u6d/Y=;
 b=XFHg1661XtwW7QWh3+f/AaPA9a/1nhX2S2/OO5A++XcsydwSP2QLnT18Yy1rQnrNW4
 kuuAa9oCbFXboEj96EPO26aJ39oCFGpZHpOEWteqVx4bGQh6zEuwDOw4TGDX5kI1lhrs
 TyPQLOZjyvTmCwZm4Q8S7p0otW8bdEz++u8B6ORD5blTs1PdZDPXJMTT3oWgk8kwpqfF
 3f4qAxlwV24lwwoX2OiD3HPOLwAWAQGpwN70E/Wv76z5zCzgpNU8ImBhCnjB+9m9F+Ce
 D+cB4VWWMaCATtv+dInCzdfHAW0la2fFUCK+3GudPh9QQBWy/XZR8f40A1uHucb9lOAB
 bA/A==
X-Gm-Message-State: AOAM532U0+ZUkZ9y1jowgBRwTkpSr9u+B5d4fPdOv3p8UpoDDnHSenbz
 VgqoOEruP2Z5Eiq7rx4ePvWuxIFEOPTsjCyDQ6Y=
X-Google-Smtp-Source: ABdhPJx8m0BfDkNdjMGltCMeRybiZFuaTf6y3UWxuXsZ6+jqkk8haXAcG4foWj8Q8cPX8T9WZuXWV1cSqqUnx9pWoVE=
X-Received: by 2002:a25:81cd:: with SMTP id n13mr13649976ybm.514.1599754358812; 
 Thu, 10 Sep 2020 09:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrFS9dZo5N6am5VyGFq3xqfy0rrW5z=jtP3Y947kz-5Rrw@mail.gmail.com>
 <D6AE7F12-CCA7-4CC9-B8C6-763CB6523273@gmail.com>
In-Reply-To: <D6AE7F12-CCA7-4CC9-B8C6-763CB6523273@gmail.com>
Date: Thu, 10 Sep 2020 10:12:28 -0600
Message-ID: <CACryqrFJrZBcJaWdq=Cknn2v9oE8+zraJd21Viqqtxpi=nCM_w@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
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
Content-Type: multipart/mixed; boundary="===============6088031783459625597=="
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

--===============6088031783459625597==
Content-Type: multipart/alternative; boundary="00000000000048f56b05aef7d6d8"

--00000000000048f56b05aef7d6d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I double checked the installation, I think it is ok. When I start the USRP,
There will be two green lights on, several seconds later, 1 light off, and
1-2 seconds later, another light is also off.

also if there is a GPSDO installation problem, why *[INFO] [GPS] Found an
internal GPSDO: LC_XO, Firmware Rev 0.929b appears?*

Thanks.

On Thu, Sep 10, 2020 at 10:07 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> To me the message at the end suggests even more strongly that there=E2=80=
=99s a
> hardware problem with the GPSDO installation.
>
> Sent from my iPhone
>
> On Sep 10, 2020, at 11:50 AM, Xiang Ma <marxwolfs@gmail.com> wrote:
>
> =EF=BB=BF
> But you can see there is an info:
> *[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b*
>
> Also, when I run /usr/local/lib/uhd/examples/sync_to_gps
>
> It shows:
> Creating the USRP device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001=
)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001=
)
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
>
> Synchronizing mboard 0: X310
>
> **************************************Helpful Notes on Clock/PPS
> Selection**************************************
> As you can see, the default 10 MHz Reference and 1 PPS signals are now
> from the GPSDO.
> If you would like to use the internal reference(TCXO) in other
> applications, you must configure that explicitly.
> You can no longer select the external SMAs for 10 MHz or 1 PPS signaling.
>
> *************************************************************************=
***************************************
>
> Waiting for reference lock...LOCKED
>
> Error: ValueError: locked(): unable to determine GPS lock statusThis coul=
d
> mean that you have not installed the GPSDO correctly.
>
> Visit one of these pages if the problem persists:
>  * N2X0/E1X0: http://files.ettus.com/manual/page_gpsdo.html * X3X0:
> http://files.ettus.com/manual/page_gpsdo_x3x0.html
>
>  * E3X0: http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps
>
> On Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 09/10/2020 10:12 AM, Xiang Ma via USRP-users wrote:
>>
>> Hi,
>>
>>    I am using the /usr/local/lib/uhd/utils/query_gpsdo_sensors to get gp=
s
>> information, but it shows:
>> *Waiting for the GPSDO to warm up........... No response from GPSDO in 3=
0
>> seconds*
>>
>> This is the whole information:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors Creating the USRP
>> device with: ... [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501=
;
>> UHD_3.15.0.HEAD-0-gaea0e2de [INFO] [X300] X300 initialization sequence..=
.
>> [INFO] [X300] Maximum frame size: 1472 bytes. [INFO] [X300] Radio 1x clo=
ck:
>> 200 MHz [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>> 0xF1F0D00000000000) [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304
>> MB/s) [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s) [INFO]
>> [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001) [INF=
O]
>> [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001) [INF=
O]
>> [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000) [INFO]
>> [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000) [INFO]
>> [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000) [INFO]
>> [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000) Using
>> Device: Single USRP:   Device: X-Series Device   Mboard 0: X310   RX
>> Channel: 0     RX DSP: 0     RX Dboard: A     RX Subdev: UBX RX   RX
>> Channel: 1     RX DSP: 0     RX Dboard: B     RX Subdev: UBX RX   TX
>> Channel: 0     TX DSP: 0     TX Dboard: A     TX Subdev: UBX TX   TX
>> Channel: 1     TX DSP: 0     TX Dboard: B     TX Subdev: UBX TX Setting =
the
>> reference clock source to "gpsdo"... Clock source is now gpsdo Setting t=
he
>> reference clock source to "gpsdo"... Time source is now gpsdo Waiting fo=
r
>> ref_locked...USRP Locked to Reference.
>> **************************************Helpful Notes on Clock/PPS
>> Selection************************************** As you can see, the defa=
ult
>> 10 MHz Reference and 1 PPS signals are now from the GPSDO. If you would
>> like to use the internal reference(TCXO) in other applications, you must
>> configure that explicitly.
>> ************************************************************************=
****************************************
>> Waiting for the GPSDO to warm up........... No response from GPSDO in 30
>> seconds*
>>
>> I do plug the GPSDO to the board, and I plug the 5V active GPS antenna i=
n
>> the `GPS ANT` connector at the rear panel. But I am not sure why. I just
>> want to get the location information. (btw, is it because I am in the
>> indoor area?)
>>
>> Thanks,
>>
>> Xiang Ma
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>
>>
>> I would re-check the GPSDO installation.  You may have bent one of the
>> pins when you installed it.
>>
>> Also, it won't be able to get a "fix" unless the antenna can "see" the
>> sky.  Most buildings are not that transparent at 1575MHz.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>
>

--=20
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--00000000000048f56b05aef7d6d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I double checked the installation, I think it is ok. When =
I start the USRP,<div>There will be two green lights on, several seconds=C2=
=A0later, 1 light off, and 1-2 seconds later, another light is also off.</d=
iv><div><br></div><div>also if there is a GPSDO installation problem, why=
=C2=A0<i style=3D"color:rgb(80,0,80)">[INFO] [GPS] Found an internal GPSDO:=
 LC_XO, Firmware Rev 0.929b appears?</i></div><div><i style=3D"color:rgb(80=
,0,80)"><br></i></div><div><span style=3D"color:rgb(80,0,80)">Thanks.</span=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Sep 10, 2020 at 10:07 AM Marcus D Leech &lt;<a href=3D"mailt=
o:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">To me t=
he message at the end suggests even more strongly that there=E2=80=99s a ha=
rdware problem with the GPSDO installation.=C2=A0<br><br><div dir=3D"ltr">S=
ent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On S=
ep 10, 2020, at 11:50 AM, Xiang Ma &lt;<a href=3D"mailto:marxwolfs@gmail.co=
m" target=3D"_blank">marxwolfs@gmail.com</a>&gt; wrote:<br><br></blockquote=
></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"=
>But you can see there is an info:<div><i>[INFO] [GPS] Found an internal GP=
SDO: LC_XO, Firmware Rev 0.929b</i></div><div><br></div><div>Also, when I r=
un /usr/local/lib/uhd/examples/sync_to_gps</div><div><br></div><div>It show=
s:</div><div>Creating the USRP device with: ...<br>[INFO] [UHD] linux; GNU =
C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [X30=
0] X300 initialization sequence...<br>[INFO] [X300] Maximum frame size: 147=
2 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [GPS] Found an =
internal GPSDO: LC_XO, Firmware Rev 0.929b<br>[INFO] [0/DmaFIFO_0] Initiali=
zing block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIS=
T passed (Throughput: 1300 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throu=
ghput: 1317 MB/s)<br>[INFO] [0/Radio_0] Initializing block control (NOC ID:=
 0x12AD100000000001)<br>[INFO] [0/Radio_1] Initializing block control (NOC =
ID: 0x12AD100000000001)<br>[INFO] [0/DDC_0] Initializing block control (NOC=
 ID: 0xDDC0000000000000)<br>[INFO] [0/DDC_1] Initializing block control (NO=
C ID: 0xDDC0000000000000)<br>[INFO] [0/DUC_0] Initializing block control (N=
OC ID: 0xD0C0000000000000)<br>[INFO] [0/DUC_1] Initializing block control (=
NOC ID: 0xD0C0000000000000)<br>Using Device: Single USRP:<br>=C2=A0 Device:=
 X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0=
 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev:=
 UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0=
 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br=
>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX =
Subdev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0=
 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Synchronizin=
g mboard 0: X310<br><br>**************************************Helpful Notes=
 on Clock/PPS Selection**************************************<br>As you can=
 see, the default 10 MHz Reference and 1 PPS signals are now from the GPSDO=
.<br>If you would like to use the internal reference(TCXO) in other applica=
tions, you must configure that explicitly.<br>You can no longer select the =
external SMAs for 10 MHz or 1 PPS signaling.<br>***************************=
***************************************************************************=
**********<br><br>Waiting for reference lock...LOCKED<br><br>Error: ValueEr=
ror: locked(): unable to determine GPS lock statusThis could mean that you =
have not installed the GPSDO correctly.<br><br>Visit one of these pages if =
the problem persists:<br>=C2=A0* N2X0/E1X0: <a href=3D"http://files.ettus.c=
om/manual/page_gpsdo.html" target=3D"_blank">http://files.ettus.com/manual/=
page_gpsdo.html</a> * X3X0: <a href=3D"http://files.ettus.com/manual/page_g=
psdo_x3x0.html" target=3D"_blank">http://files.ettus.com/manual/page_gpsdo_=
x3x0.html</a><br><br>=C2=A0* E3X0: <a href=3D"http://files.ettus.com/manual=
/page_usrp_e3x0.html#e3x0_hw_gps" target=3D"_blank">http://files.ettus.com/=
manual/page_usrp_e3x0.html#e3x0_hw_gps</a><br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020 at=
 9:38 AM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
</div></blockquote></div></blockquote></div><br clear=3D"all"><div><br></di=
v>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><font =
face=3D"times new roman, serif" size=3D"4" style=3D"color:rgb(136,136,136)"=
><i><b>Xiang Ma,=C2=A0</b></i></font><span style=3D"color:rgb(136,136,136)"=
>Ph.D. Student</span><div><div style=3D"color:rgb(136,136,136)"><font color=
=3D"#444444">College of Engineering</font></div><div><font color=3D"#444444=
">Utah State University</font></div><div style=3D"color:rgb(136,136,136)"><=
font color=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=
=3D"color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font><=
/div></div></div></div>

--00000000000048f56b05aef7d6d8--


--===============6088031783459625597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6088031783459625597==--

