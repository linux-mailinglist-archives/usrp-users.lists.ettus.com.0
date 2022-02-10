Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0054B1403
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 18:20:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16941384E74
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 12:20:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lVQwDMVt";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 1265B384A64
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 12:19:27 -0500 (EST)
Received: by mail-qt1-f176.google.com with SMTP id k25so6036898qtp.4
        for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 09:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=eN0gFsdft3bxU4tLKNGnYwssRN8dlW9yz8I+1CsZAr0=;
        b=lVQwDMVt1RykRNAM+LH9if1P7sj7gJ46bj/iGdKWtYJuUk6nGMHUQIbpJNaJT8hIsH
         7nHz/hDXnkeejx3NfbijSLqvKTVvYY+cvdxEYioSQl7brYbOdbdg2eUUEMhkoC2V+acU
         GIdKtYWAEZSZLQbhul0RnCzvp0/jUdkFwyo3YHYYh2XcjDTI9ai/m4mTZZMgwRLmzIpj
         L5INpPcuavojQqVMOFC3ZnUIabW4ePdP2YTW9+WysUpYUPjFUhZDBE82yesFsAVn6EKt
         tfsRhN55KjS+gWxAHZb3VJAchIvbmq3vhyG03PCmdeeEx/w4eCLiyXgTXKwp60RLqjqI
         uS+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=eN0gFsdft3bxU4tLKNGnYwssRN8dlW9yz8I+1CsZAr0=;
        b=zIKWgCOsBedZU5/OTvMNoarIlseDZCSVR8KI4+gR1eOkLg5iYBrEsXEHCTQebRKknC
         gxZ5W9zXlS1Lx25UAOkuwKtYNzalt905omm4ov6r23RGDeVj/VHAPHcg+Dagbd6wxVo+
         1s73Ahhx3TdSdz29i17mLmKRevE8OwYupiP8ff0u7O55uXrwSnd+ORQa9+52C+gmweY+
         wt5WbGo8jVKXMIVGzLmezxXLVBZbX2FUp19M9rhCbZB4ldSyDAdPs3iTGfBSQntzTZV3
         hzV/RK0U2eBcZIj/S+Zgk6uFcFost8fG/rDeoNA6fXS3Uaxgb3dVVfPypmgZ3Tsju4cs
         1WXQ==
X-Gm-Message-State: AOAM532RhZjgOT34TsaS8H+8dbhDCm8+bnaXz6CrBqMb9H/F2bZT4DmM
	vfSPCtNDcMptGI8ySiz45qYKU6hNL9rGkQ==
X-Google-Smtp-Source: ABdhPJwm0NnyHEBVRJqrPsX1y4jcG7sBVJPZUJKane3VR+fSJi2Bs9LVA8m0E1ge1f1OXfJ2WK+aPA==
X-Received: by 2002:ac8:4446:: with SMTP id m6mr5503258qtn.360.1644513567089;
        Thu, 10 Feb 2022 09:19:27 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id e17sm11169050qte.94.2022.02.10.09.19.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 09:19:26 -0800 (PST)
Message-ID: <e275c2d9-0411-f4d3-b95f-3f0f7b01a8b7@gmail.com>
Date: Thu, 10 Feb 2022 12:19:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB33128DBAE432D3F74D996B4DB82C9@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB331297AEAA500247C6D335D5B82F9@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB331297AEAA500247C6D335D5B82F9@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: DDLI3HSEQMY3KJAPSU7WLMBMZUMF6PWO
X-Message-ID-Hash: DDLI3HSEQMY3KJAPSU7WLMBMZUMF6PWO
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DDLI3HSEQMY3KJAPSU7WLMBMZUMF6PWO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0394210523687851254=="

This is a multi-part message in MIME format.
--===============0394210523687851254==
Content-Type: multipart/alternative;
 boundary="------------CL1UY5sqGsh3LUWBZkdqerLE"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CL1UY5sqGsh3LUWBZkdqerLE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-10 11:59, Jim Palladino wrote:
> I
>
> I'm assuming that the issue is either related to command length, or=20
> that when I call a function like set_rx_freq(), it really sends a=20
> series of commands that might vary depending on the frequency I'm=20
> tuning from/to. So, what I'm wondering is: how I can tell how much=20
> room remains in the command FIFO -- or some way to know how many=20
> future timed commands I can issue.
>
> Thanks,
> Jim
>
A "command" from the perspective of the FPGA is a register setting. Any=20
given high-level UHD function call may well result in
 =C2=A0 several such register-setting commands.=C2=A0 By design, the FPGA=
 doesn't=20
*know* much beyond "you asked me to set a register
 =C2=A0 at address <X> to <Y>".

I'm surprised that the command FIFOs are so small, but perhaps they=20
consume more FPGA real-estate than you might think.


>
>
> -----------------------------------------------------------------------=
-
> *From:* Jim Palladino <jim@gardettoengineering.com>
> *Sent:* Monday, February 7, 2022 10:37 AM
> *To:* Dustin Widmann <dw2zq@virginia.edu>; usrp-users@lists.ettus.com=20
> <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Timed Commands Not Working
> Thanks Dustin and David -- that is good info regarding UHD versions=20
> that worked or didn't work with the test_timed_commands example=20
> application.
>
> David, I'm not sure of the answer to your question regarding=20
> get_time_now() and blocking . . . now that you got me thinking about=20
> it, I'm a little confused by that, too. But I'm confident that the=20
> set_rx_freq() commands are not working in my own test code either. In=20
> that case, the response isn't an issue -- I can see that the LO gets=20
> tuned immediately when I call set_rx_freq() -- not at the time I=20
> specify with set_time_command().
>
> Thanks,
> Jim
>
>
>
> -----------------------------------------------------------------------=
-
> *From:* Dustin Widmann
> *Sent:* Friday, February 4, 2022 1:23 PM
> *To:* Jim Palladino; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: Timed Commands Not Working
>
> For reference, I've done it over again with the latest commits from=20
> the UHD-4.0=C2=A0 and UHD-3.15.LTS branches.
>
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;=20
> UHD_4.0.0.0-240-gb38c9d83
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> Using Device: Single USRP:
> =C2=A0 Device: X-Series Device
> =C2=A0 Mboard 0: X310
> =C2=A0 RX Channel: 0
> =C2=A0=C2=A0=C2=A0 RX DSP: 0
> =C2=A0=C2=A0=C2=A0 RX Dboard: A
> =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
> =C2=A0 RX Channel: 1
> =C2=A0=C2=A0=C2=A0 RX DSP: 1
> =C2=A0=C2=A0=C2=A0 RX Dboard: B
> =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
> =C2=A0 TX Channel: 0
> =C2=A0=C2=A0=C2=A0 TX DSP: 0
> =C2=A0=C2=A0=C2=A0 TX Dboard: A
> =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
> =C2=A0 TX Channel: 1
> =C2=A0=C2=A0=C2=A0 TX DSP: 1
> =C2=A0=C2=A0=C2=A0 TX Dboard: B
> =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
>
>
> Testing support for timed commands on this hardware... pass
>
> Perform fast readback of registers:
> =C2=A0Difference between paired reads: 1060.659100 us
>
> Testing control timed command:
> =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us
> =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 249431.750000 us
> =C2=A0Response 1: 250515.950000 us
> =C2=A0Response 2: 251521.850000 us
> =C2=A0Difference of response time 1: -98915.800000 us
> =C2=A0Difference of response time 2: -197909.900000 us
> =C2=A0Difference between actual and expected time delta: -98994.100000 =
us
>
> About to start streaming using timed command:
> =C2=A0Received packet: 100 samples, 0 full secs, 0.359452 frac secs
> =C2=A0Stream time was: 0 full secs, 0.359452 frac secs
> =C2=A0Difference between stream time and first packet: 0.000000 us
>
> Done!
>
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;=20
> UHD_3.15.0.0-74-ge35f66e8
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] No GPSDO found
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:=20
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD1000000000=
01)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD1000000000=
01)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000=
)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000=
)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000=
)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000=
)
> Using Device: Single USRP:
> =C2=A0 Device: X-Series Device
> =C2=A0 Mboard 0: X310
> =C2=A0 RX Channel: 0
> =C2=A0=C2=A0=C2=A0 RX DSP: 0
> =C2=A0=C2=A0=C2=A0 RX Dboard: A
> =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
> =C2=A0 RX Channel: 1
> =C2=A0=C2=A0=C2=A0 RX DSP: 0
> =C2=A0=C2=A0=C2=A0 RX Dboard: B
> =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
> =C2=A0 TX Channel: 0
> =C2=A0=C2=A0=C2=A0 TX DSP: 0
> =C2=A0=C2=A0=C2=A0 TX Dboard: A
> =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
> =C2=A0 TX Channel: 1
> =C2=A0=C2=A0=C2=A0 TX DSP: 0
> =C2=A0=C2=A0=C2=A0 TX Dboard: B
> =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
>
>
> Testing support for timed commands on this hardware... pass
>
> Perform fast readback of registers:
> =C2=A0Difference between paired reads: 60.434350 us
>
> Testing control timed command:
> =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us
> =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 1848964.600000 us
> =C2=A0Response 1: 1948964.655000 us
> =C2=A0Response 2: 2048964.655000 us
> =C2=A0Difference of response time 1: 0.055000 us
> =C2=A0Difference of response time 2: 0.055000 us
> =C2=A0Difference between actual and expected time delta: 0.000000 us
>
> About to start streaming using timed command:
> =C2=A0Received packet: 100 samples, 2 full secs, 0.155770 frac secs
> =C2=A0Stream time was: 2 full secs, 0.155770 frac secs
> =C2=A0Difference between stream time and first packet: 0.005000 us
>
> Done!
>
>
>
> --=20
>
>
> This is pretty concerning, looks like the latest commit of the UHD-4.0=20
> branch has this broken as well? Timed commands at least used to work=20
> in UHD 4.0, but I hadn't tried in a while, and never with this nifty=20
> test program. I'm going to have to see if I can find where the=20
> breakage occurred, so I can roll back for the time being.
>
>
> -Dustin
>
>
> On 2/4/22 11:23, Jim Palladino wrote:
>> Dustin,
>>
>> Thank you for running that. So apparently, it isn't just an issue on=20
>> my end.
>>
>> Thanks,
>> Jim
>>
>> ----------------------------------------------------------------------=
--
>> *From:* Dustin Widmann <dw2zq@virginia.edu> <mailto:dw2zq@virginia.edu=
>
>> *Sent:* Friday, February 4, 2022 11:16 AM
>> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>=20
>> <usrp-users@lists.ettus.com> <mailto:usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Re: Timed Commands Not Working
>>
>> "Hopefully, someone can try the uhd "test_timed_commands" example in=20
>> 4.1 to..."
>>
>>
>> Figure I ought to be about as good as the next somebody.
>>
>> test_timed_commands output with UHD 4.1.0 and an X310
>>
>>
>> Creating the usrp device with: ...
>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800;=20
>> UHD_4.1.0.HEAD-0-g6bd0be9c
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 8000 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> Using Device: Single USRP:
>> =C2=A0 Device: X-Series Device
>> =C2=A0 Mboard 0: X310
>> =C2=A0 RX Channel: 0
>> =C2=A0=C2=A0=C2=A0 RX DSP: 0
>> =C2=A0=C2=A0=C2=A0 RX Dboard: A
>> =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
>> =C2=A0 RX Channel: 1
>> =C2=A0=C2=A0=C2=A0 RX DSP: 1
>> =C2=A0=C2=A0=C2=A0 RX Dboard: B
>> =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX
>> =C2=A0 TX Channel: 0
>> =C2=A0=C2=A0=C2=A0 TX DSP: 0
>> =C2=A0=C2=A0=C2=A0 TX Dboard: A
>> =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
>> =C2=A0 TX Channel: 1
>> =C2=A0=C2=A0=C2=A0 TX DSP: 1
>> =C2=A0=C2=A0=C2=A0 TX Dboard: B
>> =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX
>>
>>
>> Testing support for timed commands on this hardware... pass
>>
>> Perform fast readback of registers:
>> =C2=A0Difference between paired reads: 1079.015300 us
>>
>> Testing control timed command:
>> =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us
>> =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 253256.340000 us
>> =C2=A0Response 1: 254437.230000 us
>> =C2=A0Response 2: 255676.840000 us
>> =C2=A0Difference of response time 1: -98819.110000 us
>> =C2=A0Difference of response time 2: -197579.500000 us
>> =C2=A0Difference between actual and expected time delta: -98760.390000=
 us
>>
>> About to start streaming using timed command:
>> =C2=A0Received packet: 100 samples, 0 full secs, 0.365935 frac secs
>> =C2=A0Stream time was: 0 full secs, 0.365935 frac secs
>> =C2=A0Difference between stream time and first packet: 0.000000 us
>>
>> Done!
>>
>> -Dustin
>>
>> On 2/3/22 08:02, Jim Palladino wrote:
>>> Thanks, Rob. I always appreciate when you "chime in". Hopefully,=20
>>> someone can try the uhd "test_timed_commands" example in 4.1 to help=20
>>> confirm whether or not it's a problem with something on my end or=20
>>> with UHD. Marcus already confirmed its working for him with an N310=20
>>> and UHD 3.15.
>>>
>>> Thanks,
>>> Jim
>>>
>>> ---------------------------------------------------------------------=
---
>>> *From:* Rob Kossler <rkossler@nd.edu> <mailto:rkossler@nd.edu>
>>> *Sent:* Wednesday, February 2, 2022 3:26 PM
>>> *To:* Jim Palladino <jim@gardettoengineering.com>=20
>>> <mailto:jim@gardettoengineering.com>
>>> *Cc:* Marcus D. Leech <patchvonbraun@gmail.com>=20
>>> <mailto:patchvonbraun@gmail.com>; usrp-users@lists.ettus.com=20
>>> <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com>=20
>>> <mailto:usrp-users@lists.ettus.com>
>>> *Subject:* Re: [USRP-users] Re: Timed Commands Not Working
>>> Hi Jim,
>>> This sounds like a pretty big issue. I haven't chimed in because I=20
>>> couldn't say for sure if timed commands were working for me or not=20
>>> in UHD 4.1. I am using N321s with shared LO, so the normal commands=20
>>> I use for setting frequency aren't critical (from a timed command=20
>>> perspective) except for how the DDC/DUC might be handling them. In=20
>>> any case, once you find out the issue, could you please share the=20
>>> solution here. If I get a chance, I will try this on some of my devic=
es.
>>> Rob
>>>
>>> On Wed, Feb 2, 2022 at 12:22 PM Jim Palladino=20
>>> <jim@gardettoengineering.com <mailto:jim@gardettoengineering.com>>=20
>>> wrote:
>>>
>>>     Just to add one more data point, I just ran test_timed_commands
>>>     on a different computer connected to an X310 -- still UHD 4.1. I
>>>     have the same problem with that device where it looks like timed
>>>     commands are not working right.
>>>
>>>     Thanks,
>>>     Jim
>>>
>>>     -----------------------------------------------------------------=
-------
>>>     *From:* Jim Palladino <jim@gardettoengineering.com
>>>     <mailto:jim@gardettoengineering.com>>
>>>     *Sent:* Wednesday, February 2, 2022 10:44 AM
>>>     *To:* Marcus D. Leech <patchvonbraun@gmail.com
>>>     <mailto:patchvonbraun@gmail.com>>; usrp-users@lists.ettus.com
>>>     <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com
>>>     <mailto:usrp-users@lists.ettus.com>>
>>>     *Subject:* Re: [USRP-users] Re: Timed Commands Not Working
>>>     Correct -- I am using the stock FPGA image for the E320 and the
>>>     N320.
>>>
>>>     Thanks,
>>>     Jim
>>>
>>>     -----------------------------------------------------------------=
-------
>>>     *From:* Marcus D. Leech <patchvonbraun@gmail.com
>>>     <mailto:patchvonbraun@gmail.com>>
>>>     *Sent:* Wednesday, February 2, 2022 10:39 AM
>>>     *To:* Jim Palladino <jim@gardettoengineering.com
>>>     <mailto:jim@gardettoengineering.com>>;
>>>     usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>>>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>>     *Subject:* Re: [USRP-users] Re: Timed Commands Not Working
>>>     On 2022-02-02 10:21, Jim Palladino wrote:
>>>>     Thanks Marcus. Please let me know if R&D comes back with
>>>>     anything. I'm at a bit of a loss . . .
>>>>
>>>>     Thanks,
>>>>     Jim
>>>>
>>>>     ----------------------------------------------------------------=
--------
>>>>
>>>     Just to clarify--this is with the stock FPGA image, correct?
>>>
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>>     <mailto:usrp-users@lists.ettus.com>
>>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>     <mailto:usrp-users-leave@lists.ettus.com>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-us=
ers@lists.ettus.com>
>>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mai=
lto:usrp-users-leave@lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------CL1UY5sqGsh3LUWBZkdqerLE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-10 11:59, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331297AEAA500247C6D335D5B82F9@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I'm assuming that the issue is either related to command length,
        or that when I call a function like set_rx_freq(), it really
        sends a series of commands that might vary depending on the
        frequency I'm tuning from/to. So, what I'm wondering is: how I
        can tell how much room remains in the command FIFO -- or some
        way to know how many future timed commands I can issue.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
    </blockquote>
    A "command" from the perspective of the FPGA is a register setting.=C2=
=A0
    Any given high-level UHD function call may well result in<br>
    =C2=A0 several such register-setting commands.=C2=A0 By design, the F=
PGA
    doesn't *know* much beyond "you asked me to set a register<br>
    =C2=A0 at address &lt;X&gt; to &lt;Y&gt;".<br>
    <br>
    I'm surprised that the command FIFOs are so small, but perhaps they
    consume more FPGA real-estate than you might think.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331297AEAA500247C6D335D5B82F9@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Jim
          Palladino <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jim=
@gardettoengineering.com">&lt;jim@gardettoengineering.com&gt;</a><br>
          <b>Sent:</b> Monday, February 7, 2022 10:37 AM<br>
          <b>To:</b> Dustin Widmann <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:dw2zq@virginia.edu">&lt;dw2zq@virginia.edu&gt;</a>;
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@list=
s.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</fo=
nt>
        <div>=C2=A0</div>
      </div>
      <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
      <div dir=3D"ltr">
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          Thanks Dustin and David -- that is good info regarding UHD
          versions that worked or didn't work with the
          test_timed_commands example application.</div>
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <br>
        </div>
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          David, I'm not sure of the answer to your question regarding
          get_time_now() and blocking . . . now that you got me thinking
          about it, I'm a little confused by that, too. But I'm
          confident that the set_rx_freq() commands are not working in
          my own test code either. In that case, the response isn't an
          issue -- I can see that the LO gets tuned immediately when I
          call set_rx_freq() -- not at the time I specify with
          set_time_command().</div>
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <br>
        </div>
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          Thanks,</div>
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          Jim</div>
        <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
          font-size:12pt; color:rgb(0,0,0)">
          <br>
        </div>
        <div>
          <div><br>
          </div>
          <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
            <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%"=
>
            <b>From:</b> Dustin Widmann<br>
            <b>Sent:</b> Friday, February 4, 2022 1:23 PM<br>
            <b>To:</b> Jim Palladino; <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a><br>
            <b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not
            Working
            <div><br>
            </div>
          </div>
          <div class=3D"x_rps_fb58">
            <div>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px">For reference, I've
                done it over again with the latest commits from the
                UHD-4.0=C2=A0 and UHD-3.15.LTS branches.</p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px"><br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px">Creating the usrp
                device with: ...<br>
                [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;
                UHD_4.0.0.0-240-gb38c9d83<br>
                [INFO] [X300] X300 initialization sequence...<br>
                [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                [INFO] [X300] Radio 1x clock: 200 MHz<br>
                Using Device: Single USRP:<br>
                =C2=A0 Device: X-Series Device<br>
                =C2=A0 Mboard 0: X310<br>
                =C2=A0 RX Channel: 0<br>
                =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
                =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
                =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
                =C2=A0 RX Channel: 1<br>
                =C2=A0=C2=A0=C2=A0 RX DSP: 1<br>
                =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
                =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
                =C2=A0 TX Channel: 0<br>
                =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
                =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
                =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
                =C2=A0 TX Channel: 1<br>
                =C2=A0=C2=A0=C2=A0 TX DSP: 1<br>
                =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
                =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
                <br>
                <br>
                Testing support for timed commands on this hardware...
                pass<br>
                <br>
                Perform fast readback of registers:<br>
                =C2=A0Difference between paired reads: 1060.659100 us<br>
                <br>
                Testing control timed command:<br>
                =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 =
us<br>
                =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 249431.75=
0000 us<br>
                =C2=A0Response 1: 250515.950000 us<br>
                =C2=A0Response 2: 251521.850000 us<br>
                =C2=A0Difference of response time 1: -98915.800000 us<br>
                =C2=A0Difference of response time 2: -197909.900000 us<br=
>
                =C2=A0Difference between actual and expected time delta:
                -98994.100000 us<br>
                <br>
                About to start streaming using timed command:<br>
                =C2=A0Received packet: 100 samples, 0 full secs, 0.359452
                frac secs<br>
                =C2=A0Stream time was: 0 full secs, 0.359452 frac secs<br=
>
                =C2=A0Difference between stream time and first packet:
                0.000000 us<br>
                <br>
                Done!<br>
                <br>
                <br>
                Creating the usrp device with: ...<br>
                [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;
                UHD_3.15.0.0-74-ge35f66e8<br>
                [INFO] [X300] X300 initialization sequence...<br>
                [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                [INFO] [X300] Radio 1x clock: 200 MHz<br>
                [INFO] [GPS] No GPSDO found<br>
                [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
                0xF1F0D00000000000)<br>
                [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)<=
br>
                [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)<=
br>
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
                =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
                =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
                =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
                =C2=A0 RX Channel: 1<br>
                =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
                =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
                =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
                =C2=A0 TX Channel: 0<br>
                =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
                =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
                =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
                =C2=A0 TX Channel: 1<br>
                =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
                =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
                =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
                <br>
                <br>
                Testing support for timed commands on this hardware...
                pass<br>
                <br>
                Perform fast readback of registers:<br>
                =C2=A0Difference between paired reads: 60.434350 us<br>
                <br>
                Testing control timed command:<br>
                =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 =
us<br>
                =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 1848964.6=
00000 us<br>
                =C2=A0Response 1: 1948964.655000 us<br>
                =C2=A0Response 2: 2048964.655000 us<br>
                =C2=A0Difference of response time 1: 0.055000 us<br>
                =C2=A0Difference of response time 2: 0.055000 us<br>
                =C2=A0Difference between actual and expected time delta:
                0.000000 us<br>
                <br>
                About to start streaming using timed command:<br>
                =C2=A0Received packet: 100 samples, 2 full secs, 0.155770
                frac secs<br>
                =C2=A0Stream time was: 2 full secs, 0.155770 frac secs<br=
>
                =C2=A0Difference between stream time and first packet:
                0.005000 us<br>
                <br>
                Done!<br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px"><br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px"><br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px">--
                <br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px"><br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px">This is pretty
                concerning, looks like the latest commit of the UHD-4.0
                branch has this broken as well? Timed commands at least
                used to work in UHD 4.0, but I hadn't tried in a while,
                and never with this nifty test program. I'm going to
                have to see if I can find where the breakage occurred,
                so I can roll back for the time being.
                <br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px"><br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px">-Dustin<br>
              </p>
              <p style=3D"margin-top:0px; margin-bottom:0px;
                margin-top:0px; margin-bottom:0px"><br>
              </p>
              <div class=3D"x_x_moz-cite-prefix">On 2/4/22 11:23, Jim
                Palladino wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  Dustin,</div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  <br>
                </div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  Thank you for running that. So apparently, it isn't
                  just an issue on my end.</div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  <br>
                </div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  Thanks,</div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  Jim</div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  <br>
                </div>
                <hr tabindex=3D"-1" style=3D"display:inline-block;
                  width:98%">
                <div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font
                    style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                    color=3D"#000000"><b>From:</b> Dustin Widmann
                    <a href=3D"mailto:dw2zq@virginia.edu" target=3D"_blan=
k"
                      rel=3D"noopener noreferrer"
                      class=3D"x_x_moz-txt-link-rfc2396E"
                      moz-do-not-send=3D"true">
                      &lt;dw2zq@virginia.edu&gt;</a><br>
                    <b>Sent:</b> Friday, February 4, 2022 11:16 AM<br>
                    <b>To:</b> <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" rel=3D"noopener noreferrer"
                      class=3D"x_x_moz-txt-link-abbreviated
                      moz-txt-link-freetext" moz-do-not-send=3D"true">
                      usrp-users@lists.ettus.com</a> <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" rel=3D"noopener noreferrer"
                      class=3D"x_x_moz-txt-link-rfc2396E"
                      moz-do-not-send=3D"true">
                      &lt;usrp-users@lists.ettus.com&gt;</a><br>
                    <b>Subject:</b> [USRP-users] Re: Timed Commands Not
                    Working</font>
                  <div>=C2=A0</div>
                </div>
                <div>
                  <p style=3D"margin-top:0px; margin-bottom:0px;
                    margin-top:0px; margin-bottom:0px">"Hopefully,
                    someone can try the uhd "test_timed_commands"
                    example in 4.1 to..."</p>
                  <p style=3D"margin-top:0px; margin-bottom:0px;
                    margin-top:0px; margin-bottom:0px"><br>
                  </p>
                  <p style=3D"margin-top:0px; margin-bottom:0px;
                    margin-top:0px; margin-bottom:0px">Figure I ought to
                    be about as good as the next somebody.
                    <br>
                  </p>
                  <p style=3D"margin-top:0px; margin-bottom:0px;
                    margin-top:0px; margin-bottom:0px">test_timed_command=
s
                    output with UHD 4.1.0 and an X310</p>
                  <p style=3D"margin-top:0px; margin-bottom:0px;
                    margin-top:0px; margin-bottom:0px"><br>
                    Creating the usrp device with: ...<br>
                    [INFO] [UHD] linux; GNU C++ version 11.2.0;
                    Boost_107800; UHD_4.1.0.HEAD-0-g6bd0be9c<br>
                    [INFO] [X300] X300 initialization sequence...<br>
                    [INFO] [X300] Maximum frame size: 8000 bytes.<br>
                    [INFO] [X300] Radio 1x clock: 200 MHz<br>
                    Using Device: Single USRP:<br>
                    =C2=A0 Device: X-Series Device<br>
                    =C2=A0 Mboard 0: X310<br>
                    =C2=A0 RX Channel: 0<br>
                    =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
                    =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
                    =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
                    =C2=A0 RX Channel: 1<br>
                    =C2=A0=C2=A0=C2=A0 RX DSP: 1<br>
                    =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
                    =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
                    =C2=A0 TX Channel: 0<br>
                    =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
                    =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
                    =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
                    =C2=A0 TX Channel: 1<br>
                    =C2=A0=C2=A0=C2=A0 TX DSP: 1<br>
                    =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
                    =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
                    <br>
                    <br>
                    Testing support for timed commands on this
                    hardware... pass<br>
                    <br>
                    Perform fast readback of registers:<br>
                    =C2=A0Difference between paired reads: 1079.015300 us=
<br>
                    <br>
                    Testing control timed command:<br>
                    =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000=
000 us<br>
                    =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 25325=
6.340000 us<br>
                    =C2=A0Response 1: 254437.230000 us<br>
                    =C2=A0Response 2: 255676.840000 us<br>
                    =C2=A0Difference of response time 1: -98819.110000 us=
<br>
                    =C2=A0Difference of response time 2: -197579.500000 u=
s<br>
                    =C2=A0Difference between actual and expected time del=
ta:
                    -98760.390000 us<br>
                    <br>
                    About to start streaming using timed command:<br>
                    =C2=A0Received packet: 100 samples, 0 full secs, 0.36=
5935
                    frac secs<br>
                    =C2=A0Stream time was: 0 full secs, 0.365935 frac sec=
s<br>
                    =C2=A0Difference between stream time and first packet=
:
                    0.000000 us<br>
                    <br>
                    Done!<br>
                    <br>
                    -Dustin<br>
                    <br>
                  </p>
                  <div class=3D"x_x_x_moz-cite-prefix">On 2/3/22 08:02,
                    Jim Palladino wrote:<br>
                  </div>
                  <blockquote type=3D"cite">
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Thanks, Rob. I always appreciate when you "chime
                      in". Hopefully, someone can try the uhd
                      "test_timed_commands" example in 4.1 to help
                      confirm whether or not it's a problem with
                      something on my end or with UHD. Marcus already
                      confirmed its working for him with an N310 and UHD
                      3.15.</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      <br>
                    </div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Thanks,</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Jim</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      <br>
                    </div>
                    <hr tabindex=3D"-1" style=3D"display:inline-block;
                      width:98%">
                    <div id=3D"x_x_x_divRplyFwdMsg" dir=3D"ltr"><font
                        style=3D"font-size:11pt" face=3D"Calibri,
                        sans-serif" color=3D"#000000"><b>From:</b> Rob
                        Kossler
                        <a href=3D"mailto:rkossler@nd.edu" target=3D"_bla=
nk"
                          rel=3D"noopener noreferrer"
                          class=3D"x_x_x_moz-txt-link-rfc2396E"
                          moz-do-not-send=3D"true">
                          &lt;rkossler@nd.edu&gt;</a><br>
                        <b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<=
br>
                        <b>To:</b> Jim Palladino <a
                          href=3D"mailto:jim@gardettoengineering.com"
                          target=3D"_blank" rel=3D"noopener noreferrer"
                          class=3D"x_x_x_moz-txt-link-rfc2396E"
                          moz-do-not-send=3D"true">
                          &lt;jim@gardettoengineering.com&gt;</a><br>
                        <b>Cc:</b> Marcus D. Leech <a
                          href=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank" rel=3D"noopener noreferrer"
                          class=3D"x_x_x_moz-txt-link-rfc2396E"
                          moz-do-not-send=3D"true">
                          &lt;patchvonbraun@gmail.com&gt;</a>; <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" rel=3D"noopener noreferrer"
                          class=3D"x_x_x_moz-txt-link-abbreviated
                          x_x_moz-txt-link-freetext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>
                          usrp-users@lists.ettus.com</a> <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" rel=3D"noopener noreferrer"
                          class=3D"x_x_x_moz-txt-link-rfc2396E"
                          moz-do-not-send=3D"true">
                          &lt;usrp-users@lists.ettus.com&gt;</a><br>
                        <b>Subject:</b> Re: [USRP-users] Re: Timed
                        Commands Not Working</font>
                      <div>=C2=A0</div>
                    </div>
                    <div>
                      <div dir=3D"ltr">Hi Jim,
                        <div>This sounds like a pretty big issue. I
                          haven't chimed in because I couldn't say for
                          sure if timed commands were working for me or
                          not in UHD 4.1. I am using N321s with shared
                          LO, so the normal commands I use for setting
                          frequency aren't critical (from a timed
                          command perspective) except for how the
                          DDC/DUC might be handling them. In any case,
                          once you find out the issue, could you please
                          share the solution here. If I get a chance, I
                          will try this on some of my devices.</div>
                        <div>Rob</div>
                      </div>
                      <br>
                      <div class=3D"x_x_x_x_gmail_quote">
                        <div dir=3D"ltr" class=3D"x_x_x_x_gmail_attr">On
                          Wed, Feb 2, 2022 at 12:22 PM Jim Palladino
                          &lt;<a
                            href=3D"mailto:jim@gardettoengineering.com"
                            target=3D"_blank" rel=3D"noopener noreferrer"
                            class=3D"x_x_x_moz-txt-link-freetext
                            x_x_moz-txt-link-freetext
                            moz-txt-link-freetext"
                            moz-do-not-send=3D"true">jim@gardettoengineer=
ing.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"x_x_x_x_gmail_quote"
                          style=3D"margin:0px 0px 0px 0.8ex;
                          border-left:1px solid rgb(204,204,204);
                          padding-left:1ex">
                          <div dir=3D"ltr">
                            <div
                              style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif;
                              font-size:12pt; color:rgb(0,0,0)">
                              Just to add one more data point, I just
                              ran test_timed_commands on a different
                              computer connected to an X310 -- still UHD
                              4.1. I have the same problem with that
                              device where it looks like timed commands
                              are not working right.</div>
                            <div
                              style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif;
                              font-size:12pt; color:rgb(0,0,0)">
                              <br>
                            </div>
                            <div
                              style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif;
                              font-size:12pt; color:rgb(0,0,0)">
                              Thanks,</div>
                            <div
                              style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif;
                              font-size:12pt; color:rgb(0,0,0)">
                              Jim</div>
                            <div
                              style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif;
                              font-size:12pt; color:rgb(0,0,0)">
                              <br>
                            </div>
                            <hr style=3D"display:inline-block; width:98%"=
>
                            <div
                              id=3D"x_x_x_x_gmail-m_7375824889804353296di=
vRplyFwdMsg"
                              dir=3D"ltr"><font style=3D"font-size:11pt"
                                face=3D"Calibri, sans-serif"
                                color=3D"#000000"><b>From:</b> Jim
                                Palladino &lt;<a
                                  href=3D"mailto:jim@gardettoengineering.=
com"
                                  target=3D"_blank" rel=3D"noopener
                                  noreferrer"
                                  class=3D"x_x_x_moz-txt-link-freetext
                                  x_x_moz-txt-link-freetext
                                  moz-txt-link-freetext"
                                  moz-do-not-send=3D"true">jim@gardettoen=
gineering.com</a>&gt;<br>
                                <b>Sent:</b> Wednesday, February 2, 2022
                                10:44 AM<br>
                                <b>To:</b> Marcus D. Leech &lt;<a
                                  href=3D"mailto:patchvonbraun@gmail.com"
                                  target=3D"_blank" rel=3D"noopener
                                  noreferrer"
                                  class=3D"x_x_x_moz-txt-link-freetext
                                  x_x_moz-txt-link-freetext
                                  moz-txt-link-freetext"
                                  moz-do-not-send=3D"true">patchvonbraun@=
gmail.com</a>&gt;;
                                <a
                                  href=3D"mailto:usrp-users@lists.ettus.c=
om"
                                  target=3D"_blank" rel=3D"noopener
                                  noreferrer"
                                  class=3D"x_x_x_moz-txt-link-freetext
                                  x_x_moz-txt-link-freetext
                                  moz-txt-link-freetext"
                                  moz-do-not-send=3D"true">
                                  usrp-users@lists.ettus.com</a> &lt;<a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noope=
ner
                                  noreferrer"
                                  class=3D"x_x_x_moz-txt-link-freetext
                                  x_x_moz-txt-link-freetext
                                  moz-txt-link-freetext"
                                  moz-do-not-send=3D"true">usrp-users@lis=
ts.ettus.com</a>&gt;<br>
                                <b>Subject:</b> Re: [USRP-users] Re:
                                Timed Commands Not Working</font>
                              <div>=C2=A0</div>
                            </div>
                            <div dir=3D"ltr">
                              <div
                                style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif;
                                font-size:12pt; color:rgb(0,0,0)">
                                Correct -- I am using the stock FPGA
                                image for the E320 and the N320.</div>
                              <div
                                style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif;
                                font-size:12pt; color:rgb(0,0,0)">
                                <br>
                              </div>
                              <div
                                style=3D"font-family:Calibri,Arial,Helvet=
ica,sans-serif;
                                font-size:12pt; color:rgb(0,0,0)">
                                Thanks,
                                <div>Jim</div>
                                <div><br>
                                </div>
                              </div>
                              <hr style=3D"display:inline-block;
                                width:98%">
                              <div
                                id=3D"x_x_x_x_gmail-m_7375824889804353296=
x_divRplyFwdMsg"
                                dir=3D"ltr"><font style=3D"font-size:11pt=
"
                                  face=3D"Calibri, sans-serif"
                                  color=3D"#000000"><b>From:</b> Marcus D=
.
                                  Leech &lt;<a
                                    href=3D"mailto:patchvonbraun@gmail.co=
m"
                                    target=3D"_blank" rel=3D"noopener
                                    noreferrer"
                                    class=3D"x_x_x_moz-txt-link-freetext
                                    x_x_moz-txt-link-freetext
                                    moz-txt-link-freetext"
                                    moz-do-not-send=3D"true">patchvonbrau=
n@gmail.com</a>&gt;<br>
                                  <b>Sent:</b> Wednesday, February 2,
                                  2022 10:39 AM<br>
                                  <b>To:</b> Jim Palladino &lt;<a
                                    href=3D"mailto:jim@gardettoengineerin=
g.com"
                                    target=3D"_blank" rel=3D"noopener
                                    noreferrer"
                                    class=3D"x_x_x_moz-txt-link-freetext
                                    x_x_moz-txt-link-freetext
                                    moz-txt-link-freetext"
                                    moz-do-not-send=3D"true">jim@gardetto=
engineering.com</a>&gt;;
                                  <a
                                    href=3D"mailto:usrp-users@lists.ettus=
.com"
                                    target=3D"_blank" rel=3D"noopener
                                    noreferrer"
                                    class=3D"x_x_x_moz-txt-link-freetext
                                    x_x_moz-txt-link-freetext
                                    moz-txt-link-freetext"
                                    moz-do-not-send=3D"true">
                                    usrp-users@lists.ettus.com</a> &lt;<a
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noope=
ner
                                    noreferrer"
                                    class=3D"x_x_x_moz-txt-link-freetext
                                    x_x_moz-txt-link-freetext
                                    moz-txt-link-freetext"
                                    moz-do-not-send=3D"true">usrp-users@l=
ists.ettus.com</a>&gt;<br>
                                  <b>Subject:</b> Re: [USRP-users] Re:
                                  Timed Commands Not Working</font>
                                <div>=C2=A0</div>
                              </div>
                              <div>
                                <div>On 2022-02-02 10:21, Jim Palladino
                                  wrote:<br>
                                </div>
                                <blockquote type=3D"cite">
                                  <div
                                    style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif;
                                    font-size:12pt; color:rgb(0,0,0)">
                                    Thanks Marcus. Please let me know if
                                    R&amp;D comes back with anything.
                                    I'm at a bit of a loss . . .=C2=A0</d=
iv>
                                  <div
                                    style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif;
                                    font-size:12pt; color:rgb(0,0,0)">
                                    <br>
                                  </div>
                                  <div
                                    style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif;
                                    font-size:12pt; color:rgb(0,0,0)">
                                    Thanks,</div>
                                  <div
                                    style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif;
                                    font-size:12pt; color:rgb(0,0,0)">
                                    Jim</div>
                                  <div
                                    style=3D"font-family:Calibri,Arial,He=
lvetica,sans-serif;
                                    font-size:12pt; color:rgb(0,0,0)">
                                    <br>
                                  </div>
                                  <hr style=3D"display:inline-block;
                                    width:98%">
                                  <br>
                                </blockquote>
                                Just to clarify--this is with the stock
                                FPGA image, correct?<br>
                                <br>
                                <br>
                              </div>
                            </div>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" rel=3D"noopener noreferrer"
                            class=3D"x_x_x_moz-txt-link-freetext
                            x_x_moz-txt-link-freetext
                            moz-txt-link-freetext"
                            moz-do-not-send=3D"true">
                            usrp-users@lists.ettus.com</a><br>
                          To unsubscribe send an email to <a
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            target=3D"_blank" rel=3D"noopener noreferrer"
                            class=3D"x_x_x_moz-txt-link-freetext
                            x_x_moz-txt-link-freetext
                            moz-txt-link-freetext"
                            moz-do-not-send=3D"true">
                            usrp-users-leave@lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </div>
                    <br>
                    <fieldset class=3D"x_x_x_moz-mime-attachment-header">=
</fieldset>
                    <pre class=3D"x_x_x_moz-quote-pre">__________________=
_____________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link=
-abbreviated x_x_moz-txt-link-freetext moz-txt-link-freetext" moz-do-not-=
send=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_m=
oz-txt-link-abbreviated x_x_moz-txt-link-freetext moz-txt-link-freetext" =
moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------CL1UY5sqGsh3LUWBZkdqerLE--

--===============0394210523687851254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0394210523687851254==--
