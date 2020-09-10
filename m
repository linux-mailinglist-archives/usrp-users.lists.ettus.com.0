Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA1F264BDC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 19:51:43 +0200 (CEST)
Received: from [::1] (port=45480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGQjU-0001IZ-GY; Thu, 10 Sep 2020 13:51:40 -0400
Received: from mail-yb1-f174.google.com ([209.85.219.174]:34220)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marxwolfs@gmail.com>) id 1kGQjQ-00011E-EN
 for USRP-users@lists.ettus.com; Thu, 10 Sep 2020 13:51:36 -0400
Received: by mail-yb1-f174.google.com with SMTP id e11so1521664ybk.1
 for <USRP-users@lists.ettus.com>; Thu, 10 Sep 2020 10:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hpm41NaMNsbt08uXD/EXNDtY6IofDzesodd4Pr4qHFE=;
 b=rHPLGi3KP/hgDxQEmLyj2E7W6p4nbbM0QBAsxg0LNHJfUNSq5cTk8iNk4CTD2A6nJO
 h6zaytbCtp86GnQ3cfAnfl52qS9xVPZcus4GaAyZ9DMokDkbuG4fF87ZpB7drbyWT4vx
 kUpFHORccYBaBRmxxFB1GzN49OeSkB28tbBJJbHsk9GFq83bfo/GA2fh4IY7Xx5f7SCh
 oPd5RzvU0SbeqhR71j1EIilnaE+QG9UJn0P5Ak3zgfzosprJ4ie6JkALd8Lq8ssBU8TD
 c0NIKxRnzwMD9tud/OJsd0dGIbyaV7lhzrt/BpODV3G4uNF1SUG0hwa+hzLYNH8QiqYv
 shPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hpm41NaMNsbt08uXD/EXNDtY6IofDzesodd4Pr4qHFE=;
 b=CNBxJjyjjf8y90x9zv0rVw+WH3oZJN15KTnf3/dVQffRU0n0lQPWeCE6pVVYUCk1WB
 c/77KNshV41d5gGq6K0hu7OxM6ooBewNLBTAoucjLQfkErBQHXlFtAzijroo8w8zr1ad
 N/5pjiUYUU6bS57zHGen2XYHvRVXGjPcdmHVG2kbBpHDeLRzR5owdfpYKXS2zc3463Ef
 WEe+hmIJZaavBnC/GlKetVMIKsWAv64v/iSDV0VfvsilBCI8sPRNW95ct5Z4jrD+TCIu
 roUNh8H9eaJ4Y0XXdead/H2Uq+MjgrlF8yHxnKEkLkYm1/dvwdc8P+aBG8ewl8IsfJtx
 rr9g==
X-Gm-Message-State: AOAM531RCRdYSwX+7gdv+CoUR6YKzqL9p19LHRJvJc8NUfmMk818rSOB
 r8USW25LFgsAXqb6ZsGKbxcdm0cGO4sPqunelzI=
X-Google-Smtp-Source: ABdhPJxPUI1RFLxjyd3ebzeLQQLu6rcQi7ZvyKw5FHWnpMQlmDkFfwAJyAmCRPzQNMs2fENJhgN6sKy18jowbwj6g9A=
X-Received: by 2002:a25:260d:: with SMTP id m13mr14593315ybm.45.1599760255730; 
 Thu, 10 Sep 2020 10:50:55 -0700 (PDT)
MIME-Version: 1.0
References: <CACryqrFS9dZo5N6am5VyGFq3xqfy0rrW5z=jtP3Y947kz-5Rrw@mail.gmail.com>
 <D6AE7F12-CCA7-4CC9-B8C6-763CB6523273@gmail.com>
 <CACryqrFJrZBcJaWdq=Cknn2v9oE8+zraJd21Viqqtxpi=nCM_w@mail.gmail.com>
 <5F5A5196.7040905@gmail.com>
In-Reply-To: <5F5A5196.7040905@gmail.com>
Date: Thu, 10 Sep 2020 11:50:44 -0600
Message-ID: <CACryqrEoyEx3x-zeiuPevVcCm+h5jj0wgCVivpGb+Q9wOxAF+w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============6281096341723482680=="
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

--===============6281096341723482680==
Content-Type: multipart/alternative; boundary="000000000000c4c68105aef935f5"

--000000000000c4c68105aef935f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Great thanks. I moved my computer out of the building, it works. I can get
the GPS signals with ./query_gpsdo_sensors command.
However, ./sync_to_gps command still failed.

hu@hu:/usr/local/lib/uhd/examples$ ./sync_to_gps
Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_3.15.0.HEAD-0-gaea0e2de
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1302 MB/s)
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2426666 bytes.
Actual sock buff size: 1048576 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=3D2426666
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
***************************************************************************=
*************************************

Waiting for reference lock...LOCKED
WARNING:  GPS not locked - time will not be accurate until locked
USRP time: 1136073603.000000000
GPSDO time: 1136073600.000000000

ERROR: Failed to synchronize USRP time to GPS time


On Thu, Sep 10, 2020 at 10:17 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 09/10/2020 12:12 PM, Xiang Ma wrote:
>
> I double checked the installation, I think it is ok. When I start the
> USRP,
> There will be two green lights on, several seconds later, 1 light off, an=
d
> 1-2 seconds later, another light is also off.
>
> also if there is a GPSDO installation problem, why *[INFO] [GPS] Found an
> internal GPSDO: LC_XO, Firmware Rev 0.929b appears?*
>
>
>
>
>
>
>
>
> *Because it can "find" the GPSDO and there can still be problems with the
> electrical interface to it.  There are several signals between the
> motherboard and the GPSDO module.  So, if the NMEA signals work, the
> motherboard can still "find" the GPSDO, but other things will   go wrong
> despite that.  That's what the message at the bottom of your test shows--=
it
> cannot see the GPSDO-Locked signal--which in this   case might be expecte=
d,
> since you reported that you're running this inside a building--no GPS LOC=
K
> is possible in that case, since the GPSDO   cannot see the sky (and, henc=
e,
> the satellites that provide GPS service). *
>
>
> Thanks.
>
> On Thu, Sep 10, 2020 at 10:07 AM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> To me the message at the end suggests even more strongly that there=E2=
=80=99s a
>> hardware problem with the GPSDO installation.
>>
>> Sent from my iPhone
>>
>> On Sep 10, 2020, at 11:50 AM, Xiang Ma <marxwolfs@gmail.com> wrote:
>>
>> =EF=BB=BF
>> But you can see there is an info:
>> *[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b*
>>
>> Also, when I run /usr/local/lib/uhd/examples/sync_to_gps
>>
>> It shows:
>> Creating the USRP device with: ...
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_3.15.0.HEAD-0-gaea0e2de
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>> 0xF1F0D00000000000)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD10000000000=
1)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
>> Using Device: Single USRP:
>>   Device: X-Series Device
>>   Mboard 0: X310
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: UBX RX
>>   RX Channel: 1
>>     RX DSP: 0
>>     RX Dboard: B
>>     RX Subdev: UBX RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: UBX TX
>>   TX Channel: 1
>>     TX DSP: 0
>>     TX Dboard: B
>>     TX Subdev: UBX TX
>>
>> Synchronizing mboard 0: X310
>>
>> **************************************Helpful Notes on Clock/PPS
>> Selection**************************************
>> As you can see, the default 10 MHz Reference and 1 PPS signals are now
>> from the GPSDO.
>> If you would like to use the internal reference(TCXO) in other
>> applications, you must configure that explicitly.
>> You can no longer select the external SMAs for 10 MHz or 1 PPS signaling=
.
>>
>> ************************************************************************=
****************************************
>>
>> Waiting for reference lock...LOCKED
>>
>> Error: ValueError: locked(): unable to determine GPS lock statusThis
>> could mean that you have not installed the GPSDO correctly.
>>
>> Visit one of these pages if the problem persists:
>>  * N2X0/E1X0: http://files.ettus.com/manual/page_gpsdo.html * X3X0:
>> http://files.ettus.com/manual/page_gpsdo_x3x0.html
>>
>>  * E3X0: http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps
>>
>> On Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 09/10/2020 10:12 AM, Xiang Ma via USRP-users wrote:
>>>
>>> Hi,
>>>
>>>    I am using the /usr/local/lib/uhd/utils/query_gpsdo_sensors to get
>>> gps information, but it shows:
>>> *Waiting for the GPSDO to warm up........... No response from GPSDO in
>>> 30 seconds*
>>>
>>> This is the whole information:
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors Creating the USR=
P
>>> device with: ... [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_10650=
1;
>>> UHD_3.15.0.HEAD-0-gaea0e2de [INFO] [X300] X300 initialization sequence.=
..
>>> [INFO] [X300] Maximum frame size: 1472 bytes. [INFO] [X300] Radio 1x cl=
ock:
>>> 200 MHz [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929=
b
>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>> 0xF1F0D00000000000) [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304
>>> MB/s) [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s) [INFO]
>>> [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001) [IN=
FO]
>>> [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001) [IN=
FO]
>>> [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000) [INFO=
]
>>> [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000) [INFO=
]
>>> [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000) [INFO=
]
>>> [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000) Using
>>> Device: Single USRP:   Device: X-Series Device   Mboard 0: X310   RX
>>> Channel: 0     RX DSP: 0     RX Dboard: A     RX Subdev: UBX RX   RX
>>> Channel: 1     RX DSP: 0     RX Dboard: B     RX Subdev: UBX RX   TX
>>> Channel: 0     TX DSP: 0     TX Dboard: A     TX Subdev: UBX TX   TX
>>> Channel: 1     TX DSP: 0     TX Dboard: B     TX Subdev: UBX TX Setting=
 the
>>> reference clock source to "gpsdo"... Clock source is now gpsdo Setting =
the
>>> reference clock source to "gpsdo"... Time source is now gpsdo Waiting f=
or
>>> ref_locked...USRP Locked to Reference.
>>> **************************************Helpful Notes on Clock/PPS
>>> Selection************************************** As you can see, the def=
ault
>>> 10 MHz Reference and 1 PPS signals are now from the GPSDO. If you would
>>> like to use the internal reference(TCXO) in other applications, you mus=
t
>>> configure that explicitly.
>>> ***********************************************************************=
*****************************************
>>> Waiting for the GPSDO to warm up........... No response from GPSDO in 3=
0
>>> seconds*
>>>
>>> I do plug the GPSDO to the board, and I plug the 5V active GPS antenna
>>> in the `GPS ANT` connector at the rear panel. But I am not sure why. I =
just
>>> want to get the location information. (btw, is it because I am in the
>>> indoor area?)
>>>
>>> Thanks,
>>>
>>> Xiang Ma
>>>
>>> --
>>> *Xiang Ma, *Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>>
>>>
>>> I would re-check the GPSDO installation.  You may have bent one of the
>>> pins when you installed it.
>>>
>>> Also, it won't be able to get a "fix" unless the antenna can "see" the
>>> sky.  Most buildings are not that transparent at 1575MHz.
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
>> --
>> *Xiang Ma, *Ph.D. Student
>> College of Engineering
>> Utah State University
>> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>>
>>
>
> --
> *Xiang Ma, *Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com <congshanya@gmail.com>
>
>
>

--=20
*Xiang Ma, *Ph.D. Student
College of Engineering
Utah State University
E-mail:marxwolfs@gmail.com <congshanya@gmail.com>

--000000000000c4c68105aef935f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Great thanks. I moved my computer out of the building=
, it works. I can get the GPS signals with ./query_gpsdo_sensors command.</=
div><div>However, ./sync_to_gps command still failed.</div><div><br></div><=
div>hu@hu:/usr/local/lib/uhd/examples$ ./sync_to_gps <br>Creating the USRP =
device with: ...<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501=
; UHD_3.15.0.HEAD-0-gaea0e2de<br>[INFO] [X300] X300 initialization sequence=
...<br>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio=
 1x clock: 200 MHz<br>[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware=
 Rev 0.929b<br>[WARNING] [UDP] The send buffer could not be resized suffici=
ently.<br>Target sock buff size: 2426666 bytes.<br>Actual sock buff size: 1=
048576 bytes.<br>See the transport application notes on buffer resizing.<br=
>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<br>[WARNING] [UDP] =
The send buffer could not be resized sufficiently.<br>Target sock buff size=
: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transp=
ort application notes on buffer resizing.<br>Please run: sudo sysctl -w net=
.core.wmem_max=3D2426666<br>[INFO] [0/DmaFIFO_0] Initializing block control=
 (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughp=
ut: 1300 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1302 MB/s)<=
br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Ta=
rget sock buff size: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes=
.<br>See the transport application notes on buffer resizing.<br>Please run:=
 sudo sysctl -w net.core.wmem_max=3D2426666<br>[WARNING] [UDP] The send buf=
fer could not be resized sufficiently.<br>Target sock buff size: 2426666 by=
tes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport applicat=
ion notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_m=
ax=3D2426666<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12=
AD100000000001)<br>[WARNING] [UDP] The send buffer could not be resized suf=
ficiently.<br>Target sock buff size: 2426666 bytes.<br>Actual sock buff siz=
e: 1048576 bytes.<br>See the transport application notes on buffer resizing=
.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<br>[WARNING] [U=
DP] The send buffer could not be resized sufficiently.<br>Target sock buff =
size: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the tr=
ansport application notes on buffer resizing.<br>Please run: sudo sysctl -w=
 net.core.wmem_max=3D2426666<br>[INFO] [0/Radio_1] Initializing block contr=
ol (NOC ID: 0x12AD100000000001)<br>[WARNING] [UDP] The send buffer could no=
t be resized sufficiently.<br>Target sock buff size: 2426666 bytes.<br>Actu=
al sock buff size: 1048576 bytes.<br>See the transport application notes on=
 buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666=
<br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>T=
arget sock buff size: 2426666 bytes.<br>Actual sock buff size: 1048576 byte=
s.<br>See the transport application notes on buffer resizing.<br>Please run=
: sudo sysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0/DDC_0] Initializi=
ng block control (NOC ID: 0xDDC0000000000000)<br>[WARNING] [UDP] The send b=
uffer could not be resized sufficiently.<br>Target sock buff size: 2426666 =
bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport applic=
ation notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem=
_max=3D2426666<br>[WARNING] [UDP] The send buffer could not be resized suff=
iciently.<br>Target sock buff size: 2426666 bytes.<br>Actual sock buff size=
: 1048576 bytes.<br>See the transport application notes on buffer resizing.=
<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0/DDC=
_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[WARNING] [U=
DP] The send buffer could not be resized sufficiently.<br>Target sock buff =
size: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the tr=
ansport application notes on buffer resizing.<br>Please run: sudo sysctl -w=
 net.core.wmem_max=3D2426666<br>[INFO] [0/DUC_0] Initializing block control=
 (NOC ID: 0xD0C0000000000000)<br>[WARNING] [UDP] The send buffer could not =
be resized sufficiently.<br>Target sock buff size: 2426666 bytes.<br>Actual=
 sock buff size: 1048576 bytes.<br>See the transport application notes on b=
uffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<b=
r>[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<=
br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Ta=
rget sock buff size: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes=
.<br>See the transport application notes on buffer resizing.<br>Please run:=
 sudo sysctl -w net.core.wmem_max=3D2426666<br>Using Device: Single USRP:<b=
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
***************************<br><br>Waiting for reference lock...LOCKED<br>W=
ARNING: =C2=A0GPS not locked - time will not be accurate until locked<br>US=
RP time: 1136073603.000000000<br>GPSDO time: 1136073600.000000000<br><br>ER=
ROR: Failed to synchronize USRP time to GPS time</div><div><br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Sep 10, 2020 at 10:17 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/10/2020 12:12 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I double checked the installation, I think it is
        ok. When I start the USRP,
        <div>There will be two green lights on, several seconds=C2=A0later,=
 1
          light off, and 1-2 seconds later, another light is also off.</div=
>
        <div><br>
        </div>
        <div>also if there is a GPSDO installation problem, why=C2=A0<i sty=
le=3D"color:rgb(80,0,80)">[INFO] [GPS] Found an internal
            GPSDO: LC_XO, Firmware Rev 0.929b appears?</i></div>
      </div>
    </blockquote>
    <i>Because it can &quot;find&quot; the GPSDO and there can still be pro=
blems
      with the electrical interface to it.=C2=A0 There are several signals
      between the<br>
      =C2=A0 motherboard and the GPSDO module.=C2=A0 So, if the NMEA signal=
s work,
      the motherboard can still &quot;find&quot; the GPSDO, but other thing=
s will<br>
      =C2=A0 go wrong despite that.=C2=A0 That&#39;s what the message at th=
e bottom of
      your test shows--it cannot see the GPSDO-Locked signal--which in
      this<br>
      =C2=A0 case might be expected, since you reported that you&#39;re run=
ning
      this inside a building--no GPS LOCK is possible in that case,
      since the GPSDO<br>
      =C2=A0 cannot see the sky (and, hence, the satellites that provide GP=
S
      service).<br>
      <br>
      <br>
    </i>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div><i style=3D"color:rgb(80,0,80)"><br>
          </i></div>
        <div><span style=3D"color:rgb(80,0,80)">Thanks.</span></div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020 at 10:07
          AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">To me the message at the end suggests even
            more strongly that there=E2=80=99s a hardware problem with the =
GPSDO
            installation.=C2=A0<br>
            <br>
            <div dir=3D"ltr">Sent from my iPhone</div>
            <div dir=3D"ltr"><br>
              <blockquote type=3D"cite">On Sep 10, 2020, at 11:50 AM,
                Xiang Ma &lt;<a href=3D"mailto:marxwolfs@gmail.com" target=
=3D"_blank">marxwolfs@gmail.com</a>&gt;
                wrote:<br>
                <br>
              </blockquote>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">=EF=BB=BF
                <div dir=3D"ltr">But you can see there is an info:
                  <div><i>[INFO] [GPS] Found an internal GPSDO: LC_XO,
                      Firmware Rev 0.929b</i></div>
                  <div><br>
                  </div>
                  <div>Also, when I run
                    /usr/local/lib/uhd/examples/sync_to_gps</div>
                  <div><br>
                  </div>
                  <div>It shows:</div>
                  <div>Creating the USRP device with: ...<br>
                    [INFO] [UHD] linux; GNU C++ version 7.5.0;
                    Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br>
                    [INFO] [X300] X300 initialization sequence...<br>
                    [INFO] [X300] Maximum frame size: 1472 bytes.<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    [INFO] [GPS] Found an internal GPSDO: LC_XO,
                    Firmware Rev 0.929b<br>
                    [INFO] [0/DmaFIFO_0] Initializing block control (NOC
                    ID: 0xF1F0D00000000000)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300
                    MB/s)<br>
                    [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317
                    MB/s)<br>
                    [INFO] [0/Radio_0] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
                    [INFO] [0/Radio_1] Initializing block control (NOC
                    ID: 0x12AD100000000001)<br>
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
                    Synchronizing mboard 0: X310<br>
                    <br>
                    **************************************Helpful Notes
                    on Clock/PPS
                    Selection**************************************<br>
                    As you can see, the default 10 MHz Reference and 1
                    PPS signals are now from the GPSDO.<br>
                    If you would like to use the internal
                    reference(TCXO) in other applications, you must
                    configure that explicitly.<br>
                    You can no longer select the external SMAs for 10
                    MHz or 1 PPS signaling.<br>
***************************************************************************=
*************************************<br>
                    <br>
                    Waiting for reference lock...LOCKED<br>
                    <br>
                    Error: ValueError: locked(): unable to determine GPS
                    lock statusThis could mean that you have not
                    installed the GPSDO correctly.<br>
                    <br>
                    Visit one of these pages if the problem persists:<br>
                    =C2=A0* N2X0/E1X0: <a href=3D"http://files.ettus.com/ma=
nual/page_gpsdo.html" target=3D"_blank">http://files.ettus.com/manual/page_=
gpsdo.html</a>
                    * X3X0: <a href=3D"http://files.ettus.com/manual/page_g=
psdo_x3x0.html" target=3D"_blank">http://files.ettus.com/manual/page_gpsdo_=
x3x0.html</a><br>
                    <br>
                    =C2=A0* E3X0: <a href=3D"http://files.ettus.com/manual/=
page_usrp_e3x0.html#e3x0_hw_gps" target=3D"_blank">http://files.ettus.com/m=
anual/page_usrp_e3x0.html#e3x0_hw_gps</a><br>
                  </div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 202=
0
                    at 9:38 AM Marcus D. Leech via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div bgcolor=3D"#FFFFFF">
                      <div>On 09/10/2020 10:12 AM, Xiang Ma via
                        USRP-users wrote:<br>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">Hi,
                          <div><br>
                          </div>
                          <div>=C2=A0 =C2=A0I am using the
                            /usr/local/lib/uhd/utils/query_gpsdo_sensors
                            to get gps information, but it shows:=C2=A0<i>W=
aiting
                              for the GPSDO to warm up...........<br>
                              No response from GPSDO in 30 seconds</i></div=
>
                          <div><i><br>
                            </i></div>
                          <div>This is the whole information:</div>
                          <div><br>
                          </div>
                          <div>
                            <div><i>hu@hu:~$
                                /usr/local/lib/uhd/utils/query_gpsdo_sensor=
s<br>
                                <br>
                                Creating the USRP device with: ...<br>
                                [INFO] [UHD] linux; GNU C++ version
                                7.5.0; Boost_106501;
                                UHD_3.15.0.HEAD-0-gaea0e2de<br>
                                [INFO] [X300] X300 initialization
                                sequence...<br>
                                [INFO] [X300] Maximum frame size: 1472
                                bytes.<br>
                                [INFO] [X300] Radio 1x clock: 200 MHz<br>
                                [INFO] [GPS] Found an internal GPSDO:
                                LC_XO, Firmware Rev 0.929b<br>
                                [INFO] [0/DmaFIFO_0] Initializing block
                                control (NOC ID: 0xF1F0D00000000000)<br>
                                [INFO] [0/DmaFIFO_0] BIST passed
                                (Throughput: 1304 MB/s)<br>
                                [INFO] [0/DmaFIFO_0] BIST passed
                                (Throughput: 1306 MB/s)<br>
                                [INFO] [0/Radio_0] Initializing block
                                control (NOC ID: 0x12AD100000000001)<br>
                                [INFO] [0/Radio_1] Initializing block
                                control (NOC ID: 0x12AD100000000001)<br>
                                [INFO] [0/DDC_0] Initializing block
                                control (NOC ID: 0xDDC0000000000000)<br>
                                [INFO] [0/DDC_1] Initializing block
                                control (NOC ID: 0xDDC0000000000000)<br>
                                [INFO] [0/DUC_0] Initializing block
                                control (NOC ID: 0xD0C0000000000000)<br>
                                [INFO] [0/DUC_1] Initializing block
                                control (NOC ID: 0xD0C0000000000000)<br>
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
                                Setting the reference clock source to
                                &quot;gpsdo&quot;...<br>
                                Clock source is now gpsdo<br>
                                Setting the reference clock source to
                                &quot;gpsdo&quot;...<br>
                                Time source is now gpsdo<br>
                                Waiting for ref_locked...USRP Locked to
                                Reference.<br>
                                **************************************Helpf=
ul
                                Notes on Clock/PPS
                                Selection**********************************=
****<br>
                                As you can see, the default 10 MHz
                                Reference and 1 PPS signals are now from
                                the GPSDO.<br>
                                If you would like to use the internal
                                reference(TCXO) in other applications,
                                you must configure that explicitly.<br>
***************************************************************************=
*************************************<br>
                                Waiting for the GPSDO to warm
                                up...........<br>
                                No response from GPSDO in 30 seconds</i></d=
iv>
                            <div><i><br>
                              </i></div>
                            <div>I do plug the GPSDO to the board, and I
                              plug the 5V active GPS antenna in the `GPS
                              ANT` connector at the rear panel. But I am
                              not sure why. I just want to get the
                              location information. (btw, is it because
                              I am in the indoor area?)</div>
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
                            <div dir=3D"ltr"><font style=3D"color:rgb(136,1=
36,136)" size=3D"4" face=3D"times new roman, serif"><i><b>Xiang
                                    Ma,=C2=A0</b></i></font><span style=3D"=
color:rgb(136,136,136)">Ph.D.
                                Student</span>
                              <div>
                                <div style=3D"color:rgb(136,136,136)"><font=
 color=3D"#444444">College of
                                    Engineering</font></div>
                                <div><font color=3D"#444444">Utah State
                                    University</font></div>
                                <div style=3D"color:rgb(136,136,136)"><font=
 color=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"=
color:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div=
>
                              </div>
                            </div>
                          </div>
                        </div>
                        <br>
                        <br>
                      </blockquote>
                      I would re-check the GPSDO installation.=C2=A0 You ma=
y
                      have bent one of the pins when you installed it.<br>
                      <br>
                      Also, it won&#39;t be able to get a &quot;fix&quot; u=
nless the
                      antenna can &quot;see&quot; the sky.=C2=A0 Most build=
ings are not
                      that transparent at 1575MHz.<br>
                      <br>
                      <br>
                      <br>
                    </div>
                    _______________________________________________<br>
                    USRP-users mailing list<br>
                    <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D=
"_blank">USRP-users@lists.ettus.com</a><br>
                    <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp=
-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  </blockquote>
                </div>
                <br clear=3D"all">
                <div><br>
                </div>
                -- <br>
                <div dir=3D"ltr">
                  <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" s=
ize=3D"4" face=3D"times new roman, serif"><i><b>Xiang
                          Ma,=C2=A0</b></i></font><span style=3D"color:rgb(=
136,136,136)">Ph.D. Student</span>
                    <div>
                      <div style=3D"color:rgb(136,136,136)"><font color=3D"=
#444444">College of Engineering</font></div>
                      <div><font color=3D"#444444">Utah State University</f=
ont></div>
                      <div style=3D"color:rgb(136,136,136)"><font color=3D"=
#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(=
17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr">
        <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D"4" =
face=3D"times
            new roman, serif"><i><b>Xiang Ma,=C2=A0</b></i></font><span sty=
le=3D"color:rgb(136,136,136)">Ph.D. Student</span>
          <div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">C=
ollege
                of Engineering</font></div>
            <div><font color=3D"#444444">Utah State University</font></div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E=
-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)=
" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" siz=
e=3D"4" face=3D"times new roman, serif"><i><b>Xiang Ma,=C2=A0</b></i></font=
><span style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=
=3D"color:rgb(136,136,136)"><font color=3D"#444444">College of Engineering<=
/font></div><div><font color=3D"#444444">Utah State University</font></div>=
<div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a hre=
f=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"=
_blank">marxwolfs@gmail.com</a></font></div></div></div></div>

--000000000000c4c68105aef935f5--


--===============6281096341723482680==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6281096341723482680==--

