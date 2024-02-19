Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF83C85AA0E
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 18:30:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C3C7F380CFC
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 12:30:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708363846; bh=K7fjgy+CbaWFrF0wT3Y1meO2T99VRk2mZwbv7Hi+XxU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Z3vD+6KhldmOflLW1BDgJbyNAhcOtN5+k8QDjmKtQYoAv+O8MqrOSXEcopJqsMpTE
	 aNB9QXt1laifIQwIcZ7+Kgn41R4hWLDIyMSZx5ab4Wjl8okUCcRxwBhZAr6VG/6b9P
	 BHglKtr05PHpAlVJMn/KH7glCnr3WZrRgjOVHwxfyLbpMH6nKV3BQfc27Y7tYYrKNH
	 HpT8w4zSBhOvPWZdxrk3b14fJu84Se02Etz6nUqexBwgPuYf5sP0nW0xLXMMgjiMVR
	 v7ApNcvQ7bojmmwlJNmxQRokJSQ+tqvV5zoqQkqQoDi5IVdCuMYeglXuINY27s/uzs
	 BZXuwpZhPPW+g==
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 24533380BD1
	for <usrp-users@lists.ettus.com>; Mon, 19 Feb 2024 12:29:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Hhnq7bku";
	dkim-atps=neutral
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6e2dfc98664so2528814a34.2
        for <usrp-users@lists.ettus.com>; Mon, 19 Feb 2024 09:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708363779; x=1708968579; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HnWEE4NYbfBaWc/dp9qoPwAD7aodPfw6FsY+jC6ugsc=;
        b=Hhnq7bku2qgTXEZ3K4G7NZkmmoPRx85sPwwBzOg+seGjCI45uCh+xoPuk+/MjfNIj9
         8LwQu4yes8Ged479XcJXr/9MqMFhOGH/X3ZUceIV5XtAlduMjzDParwKRZbBz325SbtN
         RmLXpq0r4P83gN1+H+V3o6GBUFhmBvk6Ee10BrQgon99Zhdylom3Wz90zHQH/IyZNPqF
         sfX4KuYem3ojSrRvM8EeA7Lqm+eVrqpBEPXdRb3VfxmSHyE1yto6MbPRIEYlucZvivZt
         wzAUOGw223LbSJ9Fev/Z9RFKHUghzRPOJ7eo85pG2Kd1ew1KYqox4vScE+5W912xHM1Y
         uYuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708363779; x=1708968579;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HnWEE4NYbfBaWc/dp9qoPwAD7aodPfw6FsY+jC6ugsc=;
        b=U8sz6v612VkjH/Ax8umLSXIpsH9CKeFe1Gw56MbfVoGQOv5GPTpLCyu0nYnKi9oJVF
         XovGiG5rJirPUQRnmdKqwS6T03DBLZHDxf7XZ+eFYqssCHjSr+alvyOHc8PY6gJHADc1
         lZXrUNrZqINLiPCTue6vz18IgFKYgDKXhAxVs7hHN35fzSnuQSzBpZI0kASZZiWaZW8a
         raXM7rv+BnUjJg7VMy0/SxLOvCBAQva5KnDI5YHJduNsT+Cs7U3SPXlJzzJMFEpXIGKr
         f68SiFG61X3OA7ewfqXZ5nGfAVU/RYxhfMF8le4s9gV8lUSBpxgySCa6bMa5AFpCmbIN
         yCrw==
X-Forwarded-Encrypted: i=1; AJvYcCX1WTSIyHd4kA8AjU5JDrUTnxqREYfnD78yxZDA2u0MxPi8eH2EfRgnwrlpemMAQx+joKf5WchzcXBhV+vosrWICf+X8godkC5Yug==
X-Gm-Message-State: AOJu0YypDd0qK7jpOYKXvsYpPQGxxxtA5BHm2Ugwilfd9YOIJiGxdO/j
	MDZuYqhKnZfgxm/efcwOYEVLfvE8a4845M1x16aXCDdrryS9qv5y
X-Google-Smtp-Source: AGHT+IEpUDoPeKAPc6MLef16T0lI4PemPuQJ7ugedo7R9YjCMWMolTWt7y7zsJX2Xj53WVJa9ge7Yw==
X-Received: by 2002:a9d:76c4:0:b0:6e4:3c38:fb7d with SMTP id p4-20020a9d76c4000000b006e43c38fb7dmr10009795otl.23.1708363778976;
        Mon, 19 Feb 2024 09:29:38 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id k4-20020ac85fc4000000b0042dee3ad703sm2607256qta.65.2024.02.19.09.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 09:29:38 -0800 (PST)
Message-ID: <15f58cdb-306f-4824-a45a-5af3b9658d4b@gmail.com>
Date: Mon, 19 Feb 2024 12:29:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jim Grubb <jimgrubb@me.com>,
 Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
References: <cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com>
 <f1015d0b-f38d-4e14-ab72-364e35f16db3@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f1015d0b-f38d-4e14-ab72-364e35f16db3@me.com>
Message-ID-Hash: NDE7IWIFXRDWY5B5HNUX3GTB5IHYTBMB
X-Message-ID-Hash: NDE7IWIFXRDWY5B5HNUX3GTB5IHYTBMB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NDE7IWIFXRDWY5B5HNUX3GTB5IHYTBMB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3208653358303162783=="

This is a multi-part message in MIME format.
--===============3208653358303162783==
Content-Type: multipart/alternative;
 boundary="------------2somc3NMJBvlHh0ys8fCWB2d"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2somc3NMJBvlHh0ys8fCWB2d
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 19/02/2024 12:14, Jim Grubb wrote:
> I installed SDR Angel (which claims to support USRP devices), on my M1=20
> Macbook to test and see if it could see the B205mini-i.=C2=A0 No luck.
> j
Could you share:

/usr/lib/udev/rules.d/60-uhd-host.rules



>
>> On Feb 19, 2024, at 9:01 AM, Jim Grubb via USRP-users=20
>> <usrp-users@lists.ettus.com> wrote:
>>
>>
>> jim@pop-os:~$ lsusb
>> Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>> Bus 002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub
>> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>> Bus 001 Device 013: ID 2500:0022 Ettus Research LLC USRP B205-mini
>> Bus 001 Device 011: ID 8087:0033 Intel Corp.
>> Bus 001 Device 007: ID 0db0:6c09 Micro Star International USB Audio
>> Bus 001 Device 010: ID 0db0:6a05 Micro Star International MEG Core=20
>> Liquid S360
>> Bus 001 Device 009: ID 0db0:9ba6 Micro Star International USB HID
>> Bus 001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub
>> Bus 001 Device 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT
>> Bus 001 Device 008: ID 3434:0100 Keychron Keychron Q1
>> Bus 001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse
>> Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub
>> Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub
>> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>> jim@pop-os:~$ uhd_find_devices
>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-=
3
>> [INFO] [B200] Loading firmware image:=20
>> /usr/share/uhd/images/usrp_b200_fw.hex...
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>> serial: 3293561
>> name: B205i
>> product: B205mini
>> type: b200
>>
>>
>> jim@pop-os:~$ uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-=
3
>> [INFO] [B200] Detected Device: B205mini
>> [INFO] [B200] Loading FPGA image:=20
>> /usr/share/uhd/images/usrp_b205mini_fpga.bin...
>> [INFO] [B200] Operating over USB 3.
>> [ERROR] [UHD] Exception caught in safe-call.
>> in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()
>> at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
>> this->peek32(0); _async_task.reset(); -> AssertionError:=20
>> accum_timeout < _timeout
>> in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>> at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>
>> Error: AssertionError: accum_timeout < _timeout
>> in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>> at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>
>> jim@pop-os:~$ lsusb
>> Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>> Bus 002 Device 003: ID 2500:0022 Ettus Research LLC USRP B205-mini
>> Bus 002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub
>> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
>> Bus 001 Device 011: ID 8087:0033 Intel Corp.
>> Bus 001 Device 007: ID 0db0:6c09 Micro Star International USB Audio
>> Bus 001 Device 010: ID 0db0:6a05 Micro Star International MEG Core=20
>> Liquid S360
>> Bus 001 Device 009: ID 0db0:9ba6 Micro Star International USB HID
>> Bus 001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub
>> Bus 001 Device 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT
>> Bus 001 Device 008: ID 3434:0100 Keychron Keychron Q1
>> Bus 001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse
>> Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub
>> Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub
>> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>>
>> Sent from iCloud
>>
>>> On Feb 19, 2024, at 8:51 AM, Marcus D. Leech=20
>>> <patchvonbraun@gmail.com> wrote:
>>>
>>>
>>> On 19/02/2024 11:27, Jim Grubb wrote:
>>>> Unfortunately, the new Y cable did not resolve the issue. =C2=A0I=E2=
=80=99m not=20
>>>> sure what else to try.
>>> Could you share the output of:
>>>
>>> lsusb
>>>
>>> With us?
>>>
>>> Just working on a hunch.
>>>
>>>
>>>
>>>>
>>>> Thanks,
>>>> j
>>>>
>>>>
>>>>> On Feb 18, 2024, at 6:36=E2=80=AFAM, Marcus D. Leech=20
>>>>> <patchvonbraun@gmail.com> wrote:
>>>>>
>>>>> On 18/02/2024 00:04, Jim Grubb wrote:
>>>>>> One other datapoint. =C2=A0I have a separate machine, intel NUC=20
>>>>>> running dragonOS which comes with gnu radio pre-installed with=20
>>>>>> uhd drivers. =C2=A0I=E2=80=99m getting the same result on that mac=
hine as=20
>>>>>> well. =C2=A0It is also using 4.1
>>>>>> j
>>>>> This may still be a power issue. Once you've tried the "Y" cable,=20
>>>>> if it still doesn't work then we might be dealing with
>>>>> =C2=A0 broken hardware.
>>>>>
>>>>>
>>>>>
>>>>>>
>>>>>>> On Feb 17, 2024, at 6:57=E2=80=AFPM, Marcus D. Leech=20
>>>>>>> <patchvonbraun@gmail.com> wrote:
>>>>>>>
>>>>>>> On 17/02/2024 21:44, Jim Grubb wrote:
>>>>>>>> I was able to get UHD 4.1.0.5-3 installed after removing the=20
>>>>>>>> ppa. =C2=A0Unfortunately I'm still running into a problem.
>>>>>>>>
>>>>>>>> Any ideas would be=C2=A0appreciated.
>>>>>>>> Thanks
>>>>>>>> j
>>>>>>>>
>>>>>>>> jim@pop-os:/usr/lib/uhd/utils=20
>>>>>>>> <http://pop-os:/usr/lib/uhd/utils>$ uhd_find_devices
>>>>>>>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;=20
>>>>>>>> UHD_4.1.0.5-3
>>>>>>>> --------------------------------------------------
>>>>>>>> -- UHD Device 0
>>>>>>>> --------------------------------------------------
>>>>>>>> Device Address:
>>>>>>>> =C2=A0 =C2=A0 serial: 3293561
>>>>>>>> =C2=A0 =C2=A0 name: B205i
>>>>>>>> =C2=A0 =C2=A0 product: B205mini
>>>>>>>> =C2=A0 =C2=A0 type: b200
>>>>>>>>
>>>>>>>>
>>>>>>>> jim@pop-os:/usr/lib/uhd/utils=20
>>>>>>>> <http://pop-os:/usr/lib/uhd/utils>$ uhd_usrp_probe
>>>>>>>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;=20
>>>>>>>> UHD_4.1.0.5-3
>>>>>>>> [INFO] [B200] Detected Device: B205mini
>>>>>>>> [INFO] [B200] Operating over USB 3.
>>>>>>>> [ERROR] [UHD] Exception caught in safe-call.
>>>>>>>> =C2=A0 in virtual=20
>>>>>>>> b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()
>>>>>>>> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
>>>>>>>> this->peek32(0); _async_task.reset(); -> AssertionError:=20
>>>>>>>> accum_timeout < _timeout
>>>>>>>> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>>>>>>> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>>>>>>>
>>>>>>>> Error: AssertionError: accum_timeout < _timeout
>>>>>>>> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>>>>>>> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>>>>>>>
>>>>>>>>
>>>>>>> The other thing that just occurred to me is that your host=20
>>>>>>> controller may not be supplying enough power. This should "never"
>>>>>>> =C2=A0 happen these days, but you might try using one of those "Y=
"=20
>>>>>>> USB cables that can provide extra power from another USB port
>>>>>>> =C2=A0 to a downstream device.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------2somc3NMJBvlHh0ys8fCWB2d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 19/02/2024 12:14, Jim Grubb wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:f1015d0b-f38d-4e14-ab72-364e35f16db3@me.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div>
        <div>
          <div>I installed SDR Angel (which claims to support USRP
            devices), on my M1 Macbook to test and see if it could see
            the B205mini-i.=C2=A0 No luck.<br>
          </div>
          <div>j<br>
          </div>
        </div>
      </div>
    </blockquote>
    Could you share:<br>
    <br>
    /usr/lib/udev/rules.d/60-uhd-host.rules<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:f1015d0b-f38d-4e14-ab72-364e35f16db3@me.com">
      <div>
        <div>
          <div><br>
          </div>
        </div>
        <blockquote type=3D"cite">
          <div>On Feb 19, 2024, at 9:01 AM, Jim Grubb via USRP-users
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@=
lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a> wrote:<br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div>
              <div>
                <div><span class=3D"font"
style=3D"font-family: courier new,monospace, sans-serif;">jim@pop-os:~$
                    lsusb</span><br>
                </div>
              </div>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
                hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
                hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2
                Hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
                hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 013: ID 2500:0022 Ettus Research LLC USRP
                B205-mini</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 011: ID 8087:0033 Intel Corp.</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 007: ID 0db0:6c09 Micro Star International
                USB Audio</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 010: ID 0db0:6a05 Micro Star International
                MEG Core Liquid S360</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 009: ID 0db0:9ba6 Micro Star International
                USB HID</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 003: ID 1462:7d89 Micro Star International
                MYSTIC LIGHT</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 008: ID 3434:0100 Keychron Keychron Q1</span><=
br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100
                Optical Mouse</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
                hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>jim@pop-os:~$
                uhd_find_devices</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>[INFO]
                [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
                UHD_4.1.0.5-3</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>[INFO]
                [B200] Loading firmware image:
                /usr/share/uhd/images/usrp_b200_fw.hex...</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>--------------------------------------------------</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>--
                UHD Device 0</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>--------------------------------------------------</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Device
                Address:</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0=C2=A0=C2=A0
                serial: 3293561</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0=C2=A0=C2=A0
                name: B205i</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0=C2=A0=C2=A0
                product: B205mini</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0=C2=A0=C2=A0
                type: b200</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
></span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
></span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>jim@pop-os:~$
                uhd_usrp_probe</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>[INFO]
                [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
                UHD_4.1.0.5-3</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>[INFO]
                [B200] Detected Device: B205mini</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>[INFO]
                [B200] Loading FPGA image:
                /usr/share/uhd/images/usrp_b205mini_fpga.bin...</span><br=
>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>[INFO]
                [B200] Operating over USB 3.</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>[ERROR]
                [UHD] Exception caught in safe-call.</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0
                in virtual
                b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()</=
span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0
                at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66</span=
><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>this-&gt;peek32(0);
                _async_task.reset(); -&gt; AssertionError: accum_timeout
                &lt; _timeout</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0
                in uint64_t
                b200_radio_ctrl_core_impl::wait_for_ack(bool)</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0
                at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
></span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Error:
                AssertionError: accum_timeout &lt; _timeout</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0
                in uint64_t
                b200_radio_ctrl_core_impl::wait_for_ack(bool)</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>=C2=A0
                at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
></span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>jim@pop-os:~$
                lsusb</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
                hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
                hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                002 Device 003: ID 2500:0022 Ettus Research LLC USRP
                B205-mini</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2
                Hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root
                hub</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 011: ID 8087:0033 Intel Corp.</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 007: ID 0db0:6c09 Micro Star International
                USB Audio</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 010: ID 0db0:6a05 Micro Star International
                MEG Core Liquid S360</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 009: ID 0db0:9ba6 Micro Star International
                USB HID</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 003: ID 1462:7d89 Micro Star International
                MYSTIC LIGHT</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 008: ID 3434:0100 Keychron Keychron Q1</span><=
br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100
                Optical Mouse</span><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub</spa=
n><br>
            </div>
            <div><span class=3D"font"
                style=3D"font-family: courier new,monospace, sans-serif;"=
>Bus
                001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root
                hub</span><br>
            </div>
            <div><br>
            </div>
            <div>
              <div>
                <div class=3D"x-apple-signature"
                style=3D"white-space: pre-wrap">Sent from iCloud
</div>
              </div>
              <div><br>
              </div>
              <blockquote type=3D"cite">
                <div>On Feb 19, 2024, at 8:51 AM, Marcus D. Leech
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br>
                </div>
                <div><br>
                </div>
                <div><br>
                </div>
                <div>
                  <div class=3D"moz-cite-prefix">On 19/02/2024 11:27, Jim
                    Grubb wrote:<br>
                  </div>
                  <blockquote type=3D"cite">Unfortunately, the new Y cabl=
e
                    did not resolve the issue. =C2=A0I=E2=80=99m not sure=
 what else
                    to try.<br>
                  </blockquote>
                  <div>Could you share the output of:<br>
                  </div>
                  <div><br>
                  </div>
                  <div>lsusb<br>
                  </div>
                  <div><br>
                  </div>
                  <div>With us?<br>
                  </div>
                  <div><br>
                  </div>
                  <div>Just working on a hunch.<br>
                  </div>
                  <div><br>
                  </div>
                  <div><br>
                  </div>
                  <div><br>
                  </div>
                  <blockquote type=3D"cite">
                    <div><br>
                    </div>
                    <div>Thanks,<br>
                    </div>
                    <div>
                      <div>j<br>
                      </div>
                      <div><br>
                      </div>
                      <div>
                        <div><br>
                        </div>
                        <blockquote type=3D"cite">
                          <div>On Feb 18, 2024, at 6:36=E2=80=AFAM, Marcu=
s D.
                            Leech <a class=3D"moz-txt-link-rfc2396E"
                              href=3D"mailto:patchvonbraun@gmail.com"
                              moz-do-not-send=3D"true">&lt;patchvonbraun@=
gmail.com&gt;</a>
                            wrote:<br>
                          </div>
                          <div><br>
                          </div>
                          <div>
                            <div>
                              <div class=3D"moz-cite-prefix">On 18/02/202=
4
                                00:04, Jim Grubb wrote:<br>
                              </div>
                              <blockquote type=3D"cite">
                                <div>One other datapoint. =C2=A0I have a
                                  separate machine, intel NUC running
                                  dragonOS which comes with gnu radio
                                  pre-installed with uhd drivers. =C2=A0I=
=E2=80=99m
                                  getting the same result on that
                                  machine as well. =C2=A0It is also using=
 4.1
                                  <br>
                                </div>
                                <div>j<br>
                                </div>
                              </blockquote>
                              <div>This may still be a power issue.=C2=A0
                                Once you've tried the "Y" cable, if it
                                still doesn't work then we might be
                                dealing with<br>
                              </div>
                              <div>=C2=A0 broken hardware.<br>
                              </div>
                              <div><br>
                              </div>
                              <div><br>
                              </div>
                              <div><br>
                              </div>
                              <blockquote type=3D"cite">
                                <div>
                                  <div>
                                    <div><br>
                                    </div>
                                    <blockquote type=3D"cite">
                                      <div>On Feb 17, 2024, at 6:57=E2=80=
=AFPM,
                                        Marcus D. Leech <a
                                          class=3D"moz-txt-link-rfc2396E"
href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"true">&lt;patc=
hvonbraun@gmail.com&gt;</a>
                                        wrote:<br>
                                      </div>
                                      <div><br>
                                      </div>
                                      <div>
                                        <div>
                                          <div class=3D"moz-cite-prefix">=
On
                                            17/02/2024 21:44, Jim Grubb
                                            wrote:<br>
                                          </div>
                                          <blockquote type=3D"cite">
                                            <div><span class=3D"font"
style=3D"font-family:Monaco">I was able to get UHD 4.1.0.5-3 installed
                                                after removing the ppa.
                                                =C2=A0Unfortunately I'm s=
till
                                                running into a problem.</=
span><br>
                                            </div>
                                            <div><span class=3D"font"
style=3D"font-family:Monaco"></span><br>
                                            </div>
                                            <div><span class=3D"font"
style=3D"font-family:Monaco">Any ideas would be=C2=A0appreciated.</span><=
br>
                                            </div>
                                            <div><span class=3D"font"
style=3D"font-family:Monaco">Thanks</span><br>
                                            </div>
                                            <div><span class=3D"font"
style=3D"font-family:Monaco">j</span><br>
                                            </div>
                                            <div><span class=3D"font"
style=3D"font-family:Monaco"></span><br>
                                            </div>
                                            <div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">jim@<a
href=3D"http://pop-os:/usr/lib/uhd/utils" rel=3D"noopener noreferrer"
moz-do-not-send=3D"true">pop-os:/usr/lib/uhd/utils</a>$ uhd_find_devices<=
/span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">[INFO] [UHD] linux; GNU C++ version 11.2.0;
                                                  Boost_107400;
                                                  UHD_4.1.0.5-3</span><br=
>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">--------------------------------------------=
------</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">-- UHD Device 0</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">--------------------------------------------=
------</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">Device Address:</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 =C2=A0 serial: 3293561</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 =C2=A0 name: B205i</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 =C2=A0 product: B205mini</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 =C2=A0 type: b200</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco"></span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco"></span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">jim@<a
href=3D"http://pop-os:/usr/lib/uhd/utils" rel=3D"noopener noreferrer"
moz-do-not-send=3D"true">pop-os:/usr/lib/uhd/utils</a>$ uhd_usrp_probe</s=
pan><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">[INFO] [UHD] linux; GNU C++ version 11.2.0;
                                                  Boost_107400;
                                                  UHD_4.1.0.5-3</span><br=
>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">[INFO] [B200] Detected Device: B205mini</spa=
n><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">[INFO] [B200] Operating over USB 3.</span><b=
r>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">[ERROR] [UHD] Exception caught in safe-call.=
</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 in virtual
                                                  b200_radio_ctrl_core_im=
pl::~b200_radio_ctrl_core_impl()</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 at
                                                  ./host/lib/usrp/b200/b2=
00_radio_ctrl_core.cpp:66</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">this-&gt;peek32(0); _async_task.reset();
                                                  -&gt; AssertionError:
                                                  accum_timeout &lt;
                                                  _timeout</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 in uint64_t
                                                  b200_radio_ctrl_core_im=
pl::wait_for_ack(bool)</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 at
                                                  ./host/lib/usrp/b200/b2=
00_radio_ctrl_core.cpp:228</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco"></span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">Error: AssertionError: accum_timeout &lt;
                                                  _timeout</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 in uint64_t
                                                  b200_radio_ctrl_core_im=
pl::wait_for_ack(bool)</span><br>
                                              </div>
                                              <div><span class=3D"font"
style=3D"font-family:Monaco">=C2=A0 at
                                                  ./host/lib/usrp/b200/b2=
00_radio_ctrl_core.cpp:228</span><br>
                                              </div>
                                            </div>
                                            <div><br>
                                            </div>
                                            <div><br>
                                            </div>
                                          </blockquote>
                                          <div>The other thing that just
                                            occurred to me is that your
                                            host controller may not be
                                            supplying enough power.=C2=A0
                                            This should "never"<br>
                                          </div>
                                          <div>=C2=A0 happen these days, =
but
                                            you might try using one of
                                            those "Y" USB cables that
                                            can provide extra power from
                                            another USB port<br>
                                          </div>
                                          <div>=C2=A0 to a downstream dev=
ice.<br>
                                          </div>
                                          <div><br>
                                          </div>
                                          <div><br>
                                          </div>
                                          <div><br>
                                          </div>
                                        </div>
                                        <div>____________________________=
___________________<br>
                                        </div>
                                        <div>USRP-users mailing list --
                                          <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"true">usrp-=
users@lists.ettus.com</a><br>
                                        </div>
                                        <div>To unsubscribe send an
                                          email to <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-do-not-send=3D"true"=
>usrp-users-leave@lists.ettus.com</a><br>
                                        </div>
                                      </div>
                                    </blockquote>
                                  </div>
                                </div>
                              </blockquote>
                            </div>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </blockquote>
                </div>
              </blockquote>
            </div>
            <div><br>
            </div>
            <div>
              <div>_______________________________________________<br>
              </div>
              <div>USRP-users mailing list -- <a
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a><br>
              </div>
              <div>To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users-leave@lists.ettus.com</a><br>
              </div>
            </div>
          </div>
        </blockquote>
      </div>
      <div><br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------2somc3NMJBvlHh0ys8fCWB2d--

--===============3208653358303162783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3208653358303162783==--
