Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E851A264C00
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 19:57:22 +0200 (CEST)
Received: from [::1] (port=45520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGQoz-0001mo-Pl; Thu, 10 Sep 2020 13:57:21 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:35937)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGQov-0001fa-35
 for USRP-users@lists.ettus.com; Thu, 10 Sep 2020 13:57:17 -0400
Received: by mail-qk1-f172.google.com with SMTP id q63so6202882qkf.3
 for <USRP-users@lists.ettus.com>; Thu, 10 Sep 2020 10:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ceAUC5vBDkgJLvkO8eVh9OAYnKzlMuiWNd6LxO65Vc4=;
 b=g3nI2s+Luwpr4yxb5VCDbFZsZXB8sQS35HYDSc3hvVL00Rl9IR/WaJGfmHWn0FZHkb
 tuLKBOaoiIJKtlCo+2uTtNlSUZfZ2phpk5WTtTorJXQwu0aKX6DUbc2sRK2Q+AhcmJar
 NS3QryISQ+3uHT9Ir2s5n2plYQUMUZk0aPeugR9G8N1S/AWW7nnXMHuPW7x/j1ilbZmf
 VcQRT9MlGFmlqGxcusZhk8UtfDqwuoyXWBFYGXvb8JFFG7me8/nO1H1Ta9hU1b8HxoZn
 A1wLgdQj/7ZwJI057fXdEgYelONTVYAICrQILT8mjX3daOc3YH9TN8Y1Z4hBin2iB/Mo
 ewWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ceAUC5vBDkgJLvkO8eVh9OAYnKzlMuiWNd6LxO65Vc4=;
 b=hR2Uli6dES63ExgqibpPW1kyyVgIp4xiDKtMyuGm6WEQ8CyfZD2piLNkK18ejj0L3x
 zURRbrc2hOYiiy4RM0Kmobm4jIHvf3QitBCqGVh6lWQgeR2MOG9wWu+YumG69BqQ5VsJ
 ESdpWteU1834m+nchZqRdIb2FfVzGM+LEXxh0qfQ7zqfZXeEf04ArQ+VO2c/M+YAO3DX
 YW3vjA7fGbZSv3L6y62rxljkAz0fzVLLSGQzkoLoJN54aYcQ39pUoD5J6MCzCJGR4ixs
 qpDBk/AFgOLyuZL+w8l5vCnM3W2kghrfnmahII6tLl/7Am8K5srOwscMyRs6rRlJBwVt
 eAMw==
X-Gm-Message-State: AOAM532G4ZWrNtTMMb5dVQBZUF0usiCY/jZ+97IKwenix16Qq/GhVTPE
 FmZzUtPfWDn2FO06M7ggsbSNz3WwM1xZJA==
X-Google-Smtp-Source: ABdhPJx0SFlnWJ+/651pE8RCDndxFO9/snnly0MzNHwMmx7UOF7pV+8rBcddI9TRlxIqj39vS2+Tfg==
X-Received: by 2002:a05:620a:15c7:: with SMTP id
 o7mr8884008qkm.486.1599760596244; 
 Thu, 10 Sep 2020 10:56:36 -0700 (PDT)
Received: from [192.168.0.198] (d24-146-32-64.commercial.cgocable.net.
 [24.146.32.64])
 by smtp.gmail.com with ESMTPSA id w2sm5641513qki.115.2020.09.10.10.56.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 10 Sep 2020 10:56:35 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 10 Sep 2020 13:56:33 -0400
Message-Id: <F8409338-5420-492D-BFCC-A37E5238C791@gmail.com>
References: <CACryqrEoyEx3x-zeiuPevVcCm+h5jj0wgCVivpGb+Q9wOxAF+w@mail.gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <CACryqrEoyEx3x-zeiuPevVcCm+h5jj0wgCVivpGb+Q9wOxAF+w@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7574190167507732272=="
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


--===============7574190167507732272==
Content-Type: multipart/alternative; boundary=Apple-Mail-B88C9DC4-41F6-4092-A46D-BD6BD9BB76BD
Content-Transfer-Encoding: 7bit


--Apple-Mail-B88C9DC4-41F6-4092-A46D-BD6BD9BB76BD
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It takes 10a of minutes from a cold start for the GPSDO to be locked to the G=
PS satellite signals. The process is inherently slow because the PLL only ge=
ts a new phase/frequency estimate once per second.=20



Sent from my iPhone

> On Sep 10, 2020, at 1:50 PM, Xiang Ma <marxwolfs@gmail.com> wrote:
>=20
> =EF=BB=BF
> Great thanks. I moved my computer out of the building, it works. I can get=
 the GPS signals with ./query_gpsdo_sensors command.
> However, ./sync_to_gps command still failed.
>=20
> hu@hu:/usr/local/lib/uhd/examples$ ./sync_to_gps=20
> Creating the USRP device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0=
-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D0000000000=
0)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1302 MB/s)
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)=

> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)=

> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [WARNING] [UDP] The send buffer could not be resized sufficiently.
> Target sock buff size: 2426666 bytes.
> Actual sock buff size: 1048576 bytes.
> See the transport application notes on buffer resizing.
> Please run: sudo sysctl -w net.core.wmem_max=3D2426666
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
> WARNING:  GPS not locked - time will not be accurate until locked
> USRP time: 1136073603.000000000
> GPSDO time: 1136073600.000000000
>=20
> ERROR: Failed to synchronize USRP time to GPS time
>=20
>=20
>> On Thu, Sep 10, 2020 at 10:17 AM Marcus D. Leech <patchvonbraun@gmail.com=
> wrote:
>>> On 09/10/2020 12:12 PM, Xiang Ma wrote:
>>> I double checked the installation, I think it is ok. When I start the US=
RP,
>>> There will be two green lights on, several seconds later, 1 light off, a=
nd 1-2 seconds later, another light is also off.
>>>=20
>>> also if there is a GPSDO installation problem, why [INFO] [GPS] Found an=
 internal GPSDO: LC_XO, Firmware Rev 0.929b appears?
>> Because it can "find" the GPSDO and there can still be problems with the e=
lectrical interface to it.  There are several signals between the
>>   motherboard and the GPSDO module.  So, if the NMEA signals work, the mo=
therboard can still "find" the GPSDO, but other things will
>>   go wrong despite that.  That's what the message at the bottom of your t=
est shows--it cannot see the GPSDO-Locked signal--which in this
>>   case might be expected, since you reported that you're running this ins=
ide a building--no GPS LOCK is possible in that case, since the GPSDO
>>   cannot see the sky (and, hence, the satellites that provide GPS service=
).
>>=20
>>=20
>>>=20
>>> Thanks.
>>>=20
>>> On Thu, Sep 10, 2020 at 10:07 AM Marcus D Leech <patchvonbraun@gmail.com=
> wrote:
>>>> To me the message at the end suggests even more strongly that there=E2=80=
=99s a hardware problem with the GPSDO installation.=20
>>>>=20
>>>> Sent from my iPhone
>>>>=20
>>>>> On Sep 10, 2020, at 11:50 AM, Xiang Ma <marxwolfs@gmail.com> wrote:
>>>>>=20
>>>>> =EF=BB=BF
>>>>> But you can see there is an info:
>>>>> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>>>>=20
>>>>> Also, when I run /usr/local/lib/uhd/examples/sync_to_gps
>>>>>=20
>>>>> It shows:
>>>>> Creating the USRP device with: ...
>>>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HE=
AD-0-gaea0e2de
>>>>> [INFO] [X300] X300 initialization sequence...
>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)
>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)
>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000=
001)
>>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000=
001)
>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
0)
>>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
0)
>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C000000000000=
0)
>>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C000000000000=
0)
>>>>> Using Device: Single USRP:
>>>>>   Device: X-Series Device
>>>>>   Mboard 0: X310
>>>>>   RX Channel: 0
>>>>>     RX DSP: 0
>>>>>     RX Dboard: A
>>>>>     RX Subdev: UBX RX
>>>>>   RX Channel: 1
>>>>>     RX DSP: 0
>>>>>     RX Dboard: B
>>>>>     RX Subdev: UBX RX
>>>>>   TX Channel: 0
>>>>>     TX DSP: 0
>>>>>     TX Dboard: A
>>>>>     TX Subdev: UBX TX
>>>>>   TX Channel: 1
>>>>>     TX DSP: 0
>>>>>     TX Dboard: B
>>>>>     TX Subdev: UBX TX
>>>>>=20
>>>>> Synchronizing mboard 0: X310
>>>>>=20
>>>>> **************************************Helpful Notes on Clock/PPS Selec=
tion**************************************
>>>>> As you can see, the default 10 MHz Reference and 1 PPS signals are now=
 from the GPSDO.
>>>>> If you would like to use the internal reference(TCXO) in other applica=
tions, you must configure that explicitly.
>>>>> You can no longer select the external SMAs for 10 MHz or 1 PPS signali=
ng.
>>>>> **********************************************************************=
******************************************
>>>>>=20
>>>>> Waiting for reference lock...LOCKED
>>>>>=20
>>>>> Error: ValueError: locked(): unable to determine GPS lock statusThis c=
ould mean that you have not installed the GPSDO correctly.
>>>>>=20
>>>>> Visit one of these pages if the problem persists:
>>>>>  * N2X0/E1X0: http://files.ettus.com/manual/page_gpsdo.html * X3X0: ht=
tp://files.ettus.com/manual/page_gpsdo_x3x0.html
>>>>>=20
>>>>>  * E3X0: http://files.ettus.com/manual/page_usrp_e3x0.html#e3x0_hw_gps=

>>>>>=20
>>>>> On Thu, Sep 10, 2020 at 9:38 AM Marcus D. Leech via USRP-users <usrp-u=
sers@lists.ettus.com> wrote:
>>>>>> On 09/10/2020 10:12 AM, Xiang Ma via USRP-users wrote:
>>>>>>> Hi,
>>>>>>>=20
>>>>>>>    I am using the /usr/local/lib/uhd/utils/query_gpsdo_sensors to ge=
t gps information, but it shows: Waiting for the GPSDO to warm up...........=

>>>>>>> No response from GPSDO in 30 seconds
>>>>>>>=20
>>>>>>> This is the whole information:
>>>>>>>=20
>>>>>>> hu@hu:~$ /usr/local/lib/uhd/utils/query_gpsdo_sensors
>>>>>>>=20
>>>>>>> Creating the USRP device with: ...
>>>>>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.=
HEAD-0-gaea0e2de
>>>>>>> [INFO] [X300] X300 initialization sequence...
>>>>>>> [INFO] [X300] Maximum frame size: 1472 bytes.
>>>>>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>>>>>> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
>>>>>>> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D0000=
0000000)
>>>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1304 MB/s)
>>>>>>> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1306 MB/s)
>>>>>>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000000=
00001)
>>>>>>> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1000000=
00001)
>>>>>>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000=
000)
>>>>>>> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000=
000)
>>>>>>> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000=
000)
>>>>>>> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000=
000)
>>>>>>> Using Device: Single USRP:
>>>>>>>   Device: X-Series Device
>>>>>>>   Mboard 0: X310
>>>>>>>   RX Channel: 0
>>>>>>>     RX DSP: 0
>>>>>>>     RX Dboard: A
>>>>>>>     RX Subdev: UBX RX
>>>>>>>   RX Channel: 1
>>>>>>>     RX DSP: 0
>>>>>>>     RX Dboard: B
>>>>>>>     RX Subdev: UBX RX
>>>>>>>   TX Channel: 0
>>>>>>>     TX DSP: 0
>>>>>>>     TX Dboard: A
>>>>>>>     TX Subdev: UBX TX
>>>>>>>   TX Channel: 1
>>>>>>>     TX DSP: 0
>>>>>>>     TX Dboard: B
>>>>>>>     TX Subdev: UBX TX
>>>>>>>=20
>>>>>>> Setting the reference clock source to "gpsdo"...
>>>>>>> Clock source is now gpsdo
>>>>>>> Setting the reference clock source to "gpsdo"...
>>>>>>> Time source is now gpsdo
>>>>>>> Waiting for ref_locked...USRP Locked to Reference.
>>>>>>> **************************************Helpful Notes on Clock/PPS Sel=
ection**************************************
>>>>>>> As you can see, the default 10 MHz Reference and 1 PPS signals are n=
ow from the GPSDO.
>>>>>>> If you would like to use the internal reference(TCXO) in other appli=
cations, you must configure that explicitly.
>>>>>>> ********************************************************************=
********************************************
>>>>>>> Waiting for the GPSDO to warm up...........
>>>>>>> No response from GPSDO in 30 seconds
>>>>>>>=20
>>>>>>> I do plug the GPSDO to the board, and I plug the 5V active GPS anten=
na in the `GPS ANT` connector at the rear panel. But I am not sure why. I ju=
st want to get the location information. (btw, is it because I am in the ind=
oor area?)
>>>>>>>=20
>>>>>>> Thanks,
>>>>>>>=20
>>>>>>> Xiang Ma
>>>>>>>=20
>>>>>>> --=20
>>>>>>> Xiang Ma, Ph.D. Student
>>>>>>> College of Engineering
>>>>>>> Utah State University
>>>>>>> E-mail:marxwolfs@gmail.com
>>>>>>>=20
>>>>>>>=20
>>>>>> I would re-check the GPSDO installation.  You may have bent one of th=
e pins when you installed it.
>>>>>>=20
>>>>>> Also, it won't be able to get a "fix" unless the antenna can "see" th=
e sky.  Most buildings are not that transparent at 1575MHz.
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list
>>>>>> USRP-users@lists.ettus.com
>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>=20
>>>>>=20
>>>>> --=20
>>>>> Xiang Ma, Ph.D. Student
>>>>> College of Engineering
>>>>> Utah State University
>>>>> E-mail:marxwolfs@gmail.com
>>>=20
>>>=20
>>> --=20
>>> Xiang Ma, Ph.D. Student
>>> College of Engineering
>>> Utah State University
>>> E-mail:marxwolfs@gmail.com
>>=20
>=20
>=20
> --=20
> Xiang Ma, Ph.D. Student
> College of Engineering
> Utah State University
> E-mail:marxwolfs@gmail.com

--Apple-Mail-B88C9DC4-41F6-4092-A46D-BD6BD9BB76BD
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It takes 10a of minutes from a cold start f=
or the GPSDO to be locked to the GPS satellite signals. The process is inher=
ently slow because the PLL only gets a new phase/frequency estimate once per=
 second.&nbsp;<div><br></div><div><br><br><div dir=3D"ltr">Sent from my iPho=
ne</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Sep 10, 2020, at 1=
:50 PM, Xiang Ma &lt;marxwolfs@gmail.com&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>=
Great thanks. I moved my computer out of the building, it works. I can get t=
he GPS signals with ./query_gpsdo_sensors command.</div><div>However, ./sync=
_to_gps command still failed.</div><div><br></div><div>hu@hu:/usr/local/lib/=
uhd/examples$ ./sync_to_gps <br>Creating the USRP device with: ...<br>[INFO]=
 [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2=
de<br>[INFO] [X300] X300 initialization sequence...<br>[INFO] [X300] Maximum=
 frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x clock: 200 MHz<br>[INFO] [=
GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b<br>[WARNING] [UDP] T=
he send buffer could not be resized sufficiently.<br>Target sock buff size: 2=
426666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport a=
pplication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.=
wmem_max=3D2426666<br>[WARNING] [UDP] The send buffer could not be resized s=
ufficiently.<br>Target sock buff size: 2426666 bytes.<br>Actual sock buff si=
ze: 1048576 bytes.<br>See the transport application notes on buffer resizing=
.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0/Dma=
FIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000)<br>[INFO] [0=
/DmaFIFO_0] BIST passed (Throughput: 1300 MB/s)<br>[INFO] [0/DmaFIFO_0] BIST=
 passed (Throughput: 1302 MB/s)<br>[WARNING] [UDP] The send buffer could not=
 be resized sufficiently.<br>Target sock buff size: 2426666 bytes.<br>Actual=
 sock buff size: 1048576 bytes.<br>See the transport application notes on bu=
ffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<br>=
[WARNING] [UDP] The send buffer could not be resized sufficiently.<br>Target=
 sock buff size: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>=
See the transport application notes on buffer resizing.<br>Please run: sudo s=
ysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0/Radio_0] Initializing bloc=
k control (NOC ID: 0x12AD100000000001)<br>[WARNING] [UDP] The send buffer co=
uld not be resized sufficiently.<br>Target sock buff size: 2426666 bytes.<br=
>Actual sock buff size: 1048576 bytes.<br>See the transport application note=
s on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426=
666<br>[WARNING] [UDP] The send buffer could not be resized sufficiently.<br=
>Target sock buff size: 2426666 bytes.<br>Actual sock buff size: 1048576 byt=
es.<br>See the transport application notes on buffer resizing.<br>Please run=
: sudo sysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0/Radio_1] Initializ=
ing block control (NOC ID: 0x12AD100000000001)<br>[WARNING] [UDP] The send b=
uffer could not be resized sufficiently.<br>Target sock buff size: 2426666 b=
ytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport applicat=
ion notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wmem_ma=
x=3D2426666<br>[WARNING] [UDP] The send buffer could not be resized sufficie=
ntly.<br>Target sock buff size: 2426666 bytes.<br>Actual sock buff size: 104=
8576 bytes.<br>See the transport application notes on buffer resizing.<br>Pl=
ease run: sudo sysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0/DDC_0] Ini=
tializing block control (NOC ID: 0xDDC0000000000000)<br>[WARNING] [UDP] The s=
end buffer could not be resized sufficiently.<br>Target sock buff size: 2426=
666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transport app=
lication notes on buffer resizing.<br>Please run: sudo sysctl -w net.core.wm=
em_max=3D2426666<br>[WARNING] [UDP] The send buffer could not be resized suf=
ficiently.<br>Target sock buff size: 2426666 bytes.<br>Actual sock buff size=
: 1048576 bytes.<br>See the transport application notes on buffer resizing.<=
br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0/DDC_1=
] Initializing block control (NOC ID: 0xDDC0000000000000)<br>[WARNING] [UDP]=
 The send buffer could not be resized sufficiently.<br>Target sock buff size=
: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the transpo=
rt application notes on buffer resizing.<br>Please run: sudo sysctl -w net.c=
ore.wmem_max=3D2426666<br>[INFO] [0/DUC_0] Initializing block control (NOC I=
D: 0xD0C0000000000000)<br>[WARNING] [UDP] The send buffer could not be resiz=
ed sufficiently.<br>Target sock buff size: 2426666 bytes.<br>Actual sock buf=
f size: 1048576 bytes.<br>See the transport application notes on buffer resi=
zing.<br>Please run: sudo sysctl -w net.core.wmem_max=3D2426666<br>[INFO] [0=
/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br>[WARNING]=
 [UDP] The send buffer could not be resized sufficiently.<br>Target sock buf=
f size: 2426666 bytes.<br>Actual sock buff size: 1048576 bytes.<br>See the t=
ransport application notes on buffer resizing.<br>Please run: sudo sysctl -w=
 net.core.wmem_max=3D2426666<br>Using Device: Single USRP:<br>&nbsp; Device:=
 X-Series Device<br>&nbsp; Mboard 0: X310<br>&nbsp; RX Channel: 0<br>&nbsp; &=
nbsp; RX DSP: 0<br>&nbsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: UB=
X RX<br>&nbsp; RX Channel: 1<br>&nbsp; &nbsp; RX DSP: 0<br>&nbsp; &nbsp; RX D=
board: B<br>&nbsp; &nbsp; RX Subdev: UBX RX<br>&nbsp; TX Channel: 0<br>&nbsp=
; &nbsp; TX DSP: 0<br>&nbsp; &nbsp; TX Dboard: A<br>&nbsp; &nbsp; TX Subdev:=
 UBX TX<br>&nbsp; TX Channel: 1<br>&nbsp; &nbsp; TX DSP: 0<br>&nbsp; &nbsp; T=
X Dboard: B<br>&nbsp; &nbsp; TX Subdev: UBX TX<br><br>Synchronizing mboard 0=
: X310<br><br>**************************************Helpful Notes on Clock/P=
PS Selection**************************************<br>As you can see, the de=
fault 10 MHz Reference and 1 PPS signals are now from the GPSDO.<br>If you w=
ould like to use the internal reference(TCXO) in other applications, you mus=
t configure that explicitly.<br>You can no longer select the external SMAs f=
or 10 MHz or 1 PPS signaling.<br>*******************************************=
*********************************************************************<br><br=
>Waiting for reference lock...LOCKED<br>WARNING: &nbsp;GPS not locked - time=
 will not be accurate until locked<br>USRP time: 1136073603.000000000<br>GPS=
DO time: 1136073600.000000000<br><br>ERROR: Failed to synchronize USRP time t=
o GPS time</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020 at 10:17 AM Marcus D. Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 09/10/2020 12:12 PM, Xiang Ma wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I double checked the installation, I think it is
        ok. When I start the USRP,
        <div>There will be two green lights on, several seconds&nbsp;later, 1=

          light off, and 1-2 seconds later, another light is also off.</div>=

        <div><br>
        </div>
        <div>also if there is a GPSDO installation problem, why&nbsp;<i styl=
e=3D"color:rgb(80,0,80)">[INFO] [GPS] Found an internal
            GPSDO: LC_XO, Firmware Rev 0.929b appears?</i></div>
      </div>
    </blockquote>
    <i>Because it can "find" the GPSDO and there can still be problems
      with the electrical interface to it.&nbsp; There are several signals
      between the<br>
      &nbsp; motherboard and the GPSDO module.&nbsp; So, if the NMEA signals=
 work,
      the motherboard can still "find" the GPSDO, but other things will<br>
      &nbsp; go wrong despite that.&nbsp; That's what the message at the bot=
tom of
      your test shows--it cannot see the GPSDO-Locked signal--which in
      this<br>
      &nbsp; case might be expected, since you reported that you're running
      this inside a building--no GPS LOCK is possible in that case,
      since the GPSDO<br>
      &nbsp; cannot see the sky (and, hence, the satellites that provide GPS=

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
          AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">To me the message at the end suggests even
            more strongly that there=E2=80=99s a hardware problem with the G=
PSDO
            installation.&nbsp;<br>
            <br>
            <div dir=3D"ltr">Sent from my iPhone</div>
            <div dir=3D"ltr"><br>
              <blockquote type=3D"cite">On Sep 10, 2020, at 11:50 AM,
                Xiang Ma &lt;<a href=3D"mailto:marxwolfs@gmail.com" target=3D=
"_blank">marxwolfs@gmail.com</a>&gt;
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
****************************************************************************=
************************************<br>
                    <br>
                    Waiting for reference lock...LOCKED<br>
                    <br>
                    Error: ValueError: locked(): unable to determine GPS
                    lock statusThis could mean that you have not
                    installed the GPSDO correctly.<br>
                    <br>
                    Visit one of these pages if the problem persists:<br>
                    &nbsp;* N2X0/E1X0: <a href=3D"http://files.ettus.com/man=
ual/page_gpsdo.html" target=3D"_blank">http://files.ettus.com/manual/page_gp=
sdo.html</a>
                    * X3X0: <a href=3D"http://files.ettus.com/manual/page_gp=
sdo_x3x0.html" target=3D"_blank">http://files.ettus.com/manual/page_gpsdo_x3=
x0.html</a><br>
                    <br>
                    &nbsp;* E3X0: <a href=3D"http://files.ettus.com/manual/p=
age_usrp_e3x0.html#e3x0_hw_gps" target=3D"_blank">http://files.ettus.com/man=
ual/page_usrp_e3x0.html#e3x0_hw_gps</a><br>
                  </div>
                </div>
                <br>
                <div class=3D"gmail_quote">
                  <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 10, 2020=

                    at 9:38 AM Marcus D. Leech via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                    <div bgcolor=3D"#FFFFFF">
                      <div>On 09/10/2020 10:12 AM, Xiang Ma via
                        USRP-users wrote:<br>
                      </div>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">Hi,
                          <div><br>
                          </div>
                          <div>&nbsp; &nbsp;I am using the
                            /usr/local/lib/uhd/utils/query_gpsdo_sensors
                            to get gps information, but it shows:&nbsp;<i>Wa=
iting
                              for the GPSDO to warm up...........<br>
                              No response from GPSDO in 30 seconds</i></div>=

                          <div><i><br>
                            </i></div>
                          <div>This is the whole information:</div>
                          <div><br>
                          </div>
                          <div>
                            <div><i>hu@hu:~$
                                /usr/local/lib/uhd/utils/query_gpsdo_sensors=
<br>
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
                                Setting the reference clock source to
                                "gpsdo"...<br>
                                Clock source is now gpsdo<br>
                                Setting the reference clock source to
                                "gpsdo"...<br>
                                Time source is now gpsdo<br>
                                Waiting for ref_locked...USRP Locked to
                                Reference.<br>
                                **************************************Helpfu=
l
                                Notes on Clock/PPS
                                Selection***********************************=
***<br>
                                As you can see, the default 10 MHz
                                Reference and 1 PPS signals are now from
                                the GPSDO.<br>
                                If you would like to use the internal
                                reference(TCXO) in other applications,
                                you must configure that explicitly.<br>
****************************************************************************=
************************************<br>
                                Waiting for the GPSDO to warm
                                up...........<br>
                                No response from GPSDO in 30 seconds</i></di=
v>
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
                            <div dir=3D"ltr"><font style=3D"color:rgb(136,13=
6,136)" size=3D"4" face=3D"times new roman, serif"><i><b>Xiang
                                    Ma,&nbsp;</b></i></font><span style=3D"c=
olor:rgb(136,136,136)">Ph.D.
                                Student</span>
                              <div>
                                <div style=3D"color:rgb(136,136,136)"><font c=
olor=3D"#444444">College of
                                    Engineering</font></div>
                                <div><font color=3D"#444444">Utah State
                                    University</font></div>
                                <div style=3D"color:rgb(136,136,136)"><font c=
olor=3D"#444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"col=
or:rgb(17,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <br>
                        <br>
                      </blockquote>
                      I would re-check the GPSDO installation.&nbsp; You may=

                      have bent one of the pins when you installed it.<br>
                      <br>
                      Also, it won't be able to get a "fix" unless the
                      antenna can "see" the sky.&nbsp; Most buildings are no=
t
                      that transparent at 1575MHz.<br>
                      <br>
                      <br>
                      <br>
                    </div>
                    _______________________________________________<br>
                    USRP-users mailing list<br>
                    <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
                    <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-=
users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                  </blockquote>
                </div>
                <br clear=3D"all">
                <div><br>
                </div>
                -- <br>
                <div dir=3D"ltr">
                  <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" si=
ze=3D"4" face=3D"times new roman, serif"><i><b>Xiang
                          Ma,&nbsp;</b></i></font><span style=3D"color:rgb(1=
36,136,136)">Ph.D. Student</span>
                    <div>
                      <div style=3D"color:rgb(136,136,136)"><font color=3D"#=
444444">College of Engineering</font></div>
                      <div><font color=3D"#444444">Utah State University</fo=
nt></div>
                      <div style=3D"color:rgb(136,136,136)"><font color=3D"#=
444444">E-mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17=
,85,204)" target=3D"_blank">marxwolfs@gmail.com</a></font></div>
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
        <div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D"4" f=
ace=3D"times
            new roman, serif"><i><b>Xiang Ma,&nbsp;</b></i></font><span styl=
e=3D"color:rgb(136,136,136)">Ph.D. Student</span>
          <div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">Co=
llege
                of Engineering</font></div>
            <div><font color=3D"#444444">Utah State University</font></div>
            <div style=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-=
mail:<a href=3D"mailto:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" t=
arget=3D"_blank">marxwolfs@gmail.com</a></font></div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gm=
ail_signature"><div dir=3D"ltr"><font style=3D"color:rgb(136,136,136)" size=3D=
"4" face=3D"times new roman, serif"><i><b>Xiang Ma,&nbsp;</b></i></font><spa=
n style=3D"color:rgb(136,136,136)">Ph.D. Student</span><div><div style=3D"co=
lor:rgb(136,136,136)"><font color=3D"#444444">College of Engineering</font><=
/div><div><font color=3D"#444444">Utah State University</font></div><div sty=
le=3D"color:rgb(136,136,136)"><font color=3D"#444444">E-mail:<a href=3D"mail=
to:congshanya@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">ma=
rxwolfs@gmail.com</a></font></div></div></div></div>
</div></blockquote></div></body></html>=

--Apple-Mail-B88C9DC4-41F6-4092-A46D-BD6BD9BB76BD--


--===============7574190167507732272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7574190167507732272==--

