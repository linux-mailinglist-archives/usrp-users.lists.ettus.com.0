Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7240985A994
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 18:04:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CD36380B93
	for <lists+usrp-users@lfdr.de>; Mon, 19 Feb 2024 12:04:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708362292; bh=WkFmDCpAxoaZo8tpL5m1uxS1bmxeg1vn+H2XXtaqmmA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gpqQjslo/AyH1hVP5SvTf1PlT8ahdafKoyrLJIYdlQ9963B6+b9+H6qY4JKGF0ysk
	 8q1AE4GXOToqZEK6qgcRaJTjEkNJp6Haxncg6UflT6LVsElzcl23szLcr8zYn49c1k
	 15Yw/uzhegMAKWYSGk24g4uwCLbgIIgKWWcN5k/tmoc4ZSC+mF9L1nJegmeyXihyRE
	 RFQWDl1OxGlkpgf2q3qESd1y4epuAI3d364d8QfjJPZ8yEU+fOBUNHwjrEqrBQS1p0
	 uC5fjx2fSriP2TueeFIx14LblKPYsDwBrrZ51eyps5WrNHT8ttTD/fvvjsPrDWR233
	 D5QECIlAzVffA==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 60ECF380B7C
	for <usrp-users@lists.ettus.com>; Mon, 19 Feb 2024 12:03:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fShdbIhd";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6818aa07d81so34431606d6.0
        for <usrp-users@lists.ettus.com>; Mon, 19 Feb 2024 09:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708362217; x=1708967017; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGRUnCRJq71WzCTFS4cbf44+J5gIDDoXKORO+FGCzwM=;
        b=fShdbIhdDNpW/y1eqiIyHSbdpRF3TpEcXF1cSVGQmDoBZaznWlZpQvjn+62VRnEgYA
         AKZ9XHFahNazqrqNMQWZ/hSh5DLDBZa84Tz2FkIS3hIOmgcKg8+kmaYnTgSmFNF+eeec
         CnGfj8GPe+SricV3b85+63bHaCKBDEIrETfkEUjgDQyIxjY4POIuVKndPyH0hbPqEXPi
         mbzyUGdn5UL+hjpNO8gh6ccvCyHpcVBR3Ybk/0rkHAtD72/RYADFvajmRcnR3Ve6jWwi
         RyLHBaNNSUbHBhLoJQr5pk4K+OytEPP4CbejFbqrh0agmYlFPTT1+HLNDRJXF0bV+8St
         O7Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708362217; x=1708967017;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aGRUnCRJq71WzCTFS4cbf44+J5gIDDoXKORO+FGCzwM=;
        b=BJmu841VYV9Y6zmXesDND15fdFyCe2zv1p2gyCPLr/kzBH0zXsoQzYIiOW3G5TN0fC
         x6uI65FPzU0SsSxQ+SOecYNEJtybxHG960WQdxnYvLq7jOXlKI26DZCETrmyBsufRjCM
         q06fMNzr7miBa+ncDFh1qVbhWFo28/LV7lUVS9qPtItrwe5w/oSWALZpPYvDm4QJ5BLf
         nK3QVBhxt1Cj3gRR/+kH76WMDzzcyBsmQ5kxr6oCGmApz4oH9zZ6xjRhdltvfUTuGF6C
         U4HdVupx0X7/NFGBnb/OaLzmNkf38eOnktk7qQdoyaqaH1z5xbz63RqMDForWdxrhzI+
         cEgA==
X-Gm-Message-State: AOJu0Yy2wbtWcbt88TDGIfnOX+sI34/3F5be+xjKxYUwGgbfv46D4njB
	tL9yVvljp3vTvGlZpCUxdlOemfLOTOEobDSsS1+yo7UUcDH8Y0CH
X-Google-Smtp-Source: AGHT+IGtfQfZYcXW5eGSM+x+bZO5f22gW3GDWGsGux5L8fDJX1fg7puatslZmNi3MAw3nOrzBH0ceQ==
X-Received: by 2002:a0c:f543:0:b0:68f:4c3d:7189 with SMTP id p3-20020a0cf543000000b0068f4c3d7189mr5869251qvm.42.1708362216030;
        Mon, 19 Feb 2024 09:03:36 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id nf7-20020a0562143b8700b0068cdc0a0d42sm3379947qvb.25.2024.02.19.09.03.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Feb 2024 09:03:35 -0800 (PST)
Message-ID: <44285218-ebb5-4fcd-b643-9a40f293cc81@gmail.com>
Date: Mon, 19 Feb 2024 12:03:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jim Grubb <jimgrubb@me.com>
References: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
 <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
 <164C83CE-6546-4971-ACFA-B79657294389@me.com>
 <4e44e92f-23ff-470c-9d23-0a4329513dc9@gmail.com>
 <B27745C3-863A-4BC9-91E6-0AB46965E8C0@me.com>
 <3e087895-b2fb-41e2-91e2-6861516101e0@gmail.com>
 <cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com>
Message-ID-Hash: KD35V3TZ4MDICRISU5ETMYST535D5MX5
X-Message-ID-Hash: KD35V3TZ4MDICRISU5ETMYST535D5MX5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KD35V3TZ4MDICRISU5ETMYST535D5MX5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0400215759171097392=="

This is a multi-part message in MIME format.
--===============0400215759171097392==
Content-Type: multipart/alternative;
 boundary="------------rW9P8OAH50A9jyO6ylWJgUqk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rW9P8OAH50A9jyO6ylWJgUqk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 19/02/2024 12:00, Jim Grubb wrote:
> jim@pop-os:~$ lsusb
> Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub
> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 001 Device 013: ID 2500:0022 Ettus Research LLC USRP B205-mini
> Bus 001 Device 011: ID 8087:0033 Intel Corp.
> Bus 001 Device 007: ID 0db0:6c09 Micro Star International USB Audio
> Bus 001 Device 010: ID 0db0:6a05 Micro Star International MEG Core=20
> Liquid S360
> Bus 001 Device 009: ID 0db0:9ba6 Micro Star International USB HID
> Bus 001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub
> Bus 001 Device 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT
> Bus 001 Device 008: ID 3434:0100 Keychron Keychron Q1
> Bus 001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse
> Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub
> Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> jim@pop-os:~$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3
> [INFO] [B200] Loading firmware image:=20
> /usr/share/uhd/images/usrp_b200_fw.hex...
OK, and what does:

grep 022 /usr/lib/udev/rules.d/*uhd*



Return?


> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
> serial: 3293561
> name: B205i
> product: B205mini
> type: b200
>
>
> jim@pop-os:~$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5-3
> [INFO] [B200] Detected Device: B205mini
> [INFO] [B200] Loading FPGA image:=20
> /usr/share/uhd/images/usrp_b205mini_fpga.bin...
> [INFO] [B200] Operating over USB 3.
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl=
()
> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
> this->peek32(0); _async_task.reset(); -> AssertionError: accum_timeout=20
> < _timeout
> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>
> Error: AssertionError: accum_timeout < _timeout
> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>
> jim@pop-os:~$ lsusb
> Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
> Bus 002 Device 003: ID 2500:0022 Ettus Research LLC USRP B205-mini
> Bus 002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub
> Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
> Bus 001 Device 011: ID 8087:0033 Intel Corp.
> Bus 001 Device 007: ID 0db0:6c09 Micro Star International USB Audio
> Bus 001 Device 010: ID 0db0:6a05 Micro Star International MEG Core=20
> Liquid S360
> Bus 001 Device 009: ID 0db0:9ba6 Micro Star International USB HID
> Bus 001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub
> Bus 001 Device 003: ID 1462:7d89 Micro Star International MYSTIC LIGHT
> Bus 001 Device 008: ID 3434:0100 Keychron Keychron Q1
> Bus 001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse
> Bus 001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub
> Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub
> Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
>
> Sent from iCloud
>
>> On Feb 19, 2024, at 8:51 AM, Marcus D. Leech=20
>> <patchvonbraun@gmail.com> wrote:
>>
>>
>> On 19/02/2024 11:27, Jim Grubb wrote:
>>> Unfortunately, the new Y cable did not resolve the issue. =C2=A0I=E2=80=
=99m not=20
>>> sure what else to try.
>> Could you share the output of:
>>
>> lsusb
>>
>> With us?
>>
>> Just working on a hunch.
>>
>>
>>
>>>
>>> Thanks,
>>> j
>>>
>>>
>>>> On Feb 18, 2024, at 6:36=E2=80=AFAM, Marcus D. Leech=20
>>>> <patchvonbraun@gmail.com> wrote:
>>>>
>>>> On 18/02/2024 00:04, Jim Grubb wrote:
>>>>> One other datapoint. =C2=A0I have a separate machine, intel NUC run=
ning=20
>>>>> dragonOS which comes with gnu radio pre-installed with uhd=20
>>>>> drivers. =C2=A0I=E2=80=99m getting the same result on that machine =
as well. =C2=A0It=20
>>>>> is also using 4.1
>>>>> j
>>>> This may still be a power issue.=C2=A0 Once you've tried the "Y" cab=
le,=20
>>>> if it still doesn't work then we might be dealing with
>>>> =C2=A0 broken hardware.
>>>>
>>>>
>>>>
>>>>>
>>>>>> On Feb 17, 2024, at 6:57=E2=80=AFPM, Marcus D. Leech=20
>>>>>> <patchvonbraun@gmail.com> wrote:
>>>>>>
>>>>>> On 17/02/2024 21:44, Jim Grubb wrote:
>>>>>>> I was able to get UHD 4.1.0.5-3 installed after removing the=20
>>>>>>> ppa. =C2=A0Unfortunately I'm still running into a problem.
>>>>>>>
>>>>>>> Any ideas would be=C2=A0appreciated.
>>>>>>> Thanks
>>>>>>> j
>>>>>>>
>>>>>>> jim@pop-os:/usr/lib/uhd/utils=20
>>>>>>> <http://pop-os:/usr/lib/uhd/utils>$ uhd_find_devices
>>>>>>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;=20
>>>>>>> UHD_4.1.0.5-3
>>>>>>> --------------------------------------------------
>>>>>>> -- UHD Device 0
>>>>>>> --------------------------------------------------
>>>>>>> Device Address:
>>>>>>> =C2=A0 serial: 3293561
>>>>>>> =C2=A0 name: B205i
>>>>>>> =C2=A0 product: B205mini
>>>>>>> =C2=A0 type: b200
>>>>>>>
>>>>>>>
>>>>>>> jim@pop-os:/usr/lib/uhd/utils=20
>>>>>>> <http://pop-os:/usr/lib/uhd/utils>$ uhd_usrp_probe
>>>>>>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;=20
>>>>>>> UHD_4.1.0.5-3
>>>>>>> [INFO] [B200] Detected Device: B205mini
>>>>>>> [INFO] [B200] Operating over USB 3.
>>>>>>> [ERROR] [UHD] Exception caught in safe-call.
>>>>>>> in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl(=
)
>>>>>>> at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
>>>>>>> this->peek32(0); _async_task.reset(); -> AssertionError:=20
>>>>>>> accum_timeout < _timeout
>>>>>>> in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>>>>>> at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>>>>>>
>>>>>>> Error: AssertionError: accum_timeout < _timeout
>>>>>>> in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>>>>>> at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>>>>>>
>>>>>>>
>>>>>> The other thing that just occurred to me is that your host=20
>>>>>> controller may not be supplying enough power.=C2=A0 This should "n=
ever"
>>>>>> =C2=A0 happen these days, but you might try using one of those "Y"=
 USB=20
>>>>>> cables that can provide extra power from another USB port
>>>>>> =C2=A0 to a downstream device.
>>>>>>
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------rW9P8OAH50A9jyO6ylWJgUqk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 19/02/2024 12:00, Jim Grubb wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div>
        <div>
          <div><span class=3D"font"
              style=3D"font-family: courier new,monospace, sans-serif;">j=
im@pop-os:~$
              lsusb</span><span class=3D"font"
              style=3D"font-family: courier new,monospace, sans-serif;"><=
br>
            </span></div>
        </div>
      </div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</spa=
n><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</spa=
n><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub</sp=
an><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</spa=
n><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 013: ID 2500:0022 Ettus Research LLC USRP B205-mini<=
/span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 011: ID 8087:0033 Intel Corp.</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 007: ID 0db0:6c09 Micro Star International USB
          Audio</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 010: ID 0db0:6a05 Micro Star International MEG Core
          Liquid S360</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 009: ID 0db0:9ba6 Micro Star International USB HID</=
span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub</span><spa=
n
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 003: ID 1462:7d89 Micro Star International MYSTIC
          LIGHT</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 008: ID 3434:0100 Keychron Keychron Q1</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical
          Mouse</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub</span><spa=
n
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub</span><spa=
n
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</spa=
n><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">jim@p=
op-os:~$
          uhd_find_devices</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">[INFO=
]
          [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
          UHD_4.1.0.5-3</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">[INFO=
]
          [B200] Loading firmware image:
          /usr/share/uhd/images/usrp_b200_fw.hex...</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
    </blockquote>
    OK, and what does:<br>
    <br>
    grep 022 /usr/lib/udev/rules.d/*uhd*<br>
    <br>
    <br>
    <br>
    Return?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:cc4c93ff-ff5b-4a6f-9572-01e0d99e4482@me.com">
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">-----=
---------------------------------------------</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">-- UH=
D
          Device 0</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">-----=
---------------------------------------------</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Devic=
e
          Address:</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
=C2=A0=C2=A0
          serial: 3293561</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
=C2=A0=C2=A0
          name: B205i</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
=C2=A0=C2=A0
          product: B205mini</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
=C2=A0=C2=A0
          type: b200</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">jim@p=
op-os:~$
          uhd_usrp_probe</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">[INFO=
]
          [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
          UHD_4.1.0.5-3</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">[INFO=
]
          [B200] Detected Device: B205mini</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">[INFO=
]
          [B200] Loading FPGA image:
          /usr/share/uhd/images/usrp_b205mini_fpga.bin...</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">[INFO=
]
          [B200] Operating over USB 3.</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">[ERRO=
R]
          [UHD] Exception caught in safe-call.</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
 in
          virtual
          b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_impl()</span><=
span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
 at
          ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">this-=
&gt;peek32(0);
          _async_task.reset(); -&gt; AssertionError: accum_timeout &lt;
          _timeout</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
 in
          uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)</span><s=
pan
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
 at
          ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Error=
:
          AssertionError: accum_timeout &lt; _timeout</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
 in
          uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)</span><s=
pan
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">=C2=A0=
 at
          ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">jim@p=
op-os:~$
          lsusb</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</spa=
n><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</spa=
n><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          002 Device 003: ID 2500:0022 Ettus Research LLC USRP B205-mini<=
/span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          002 Device 002: ID 05e3:0625 Genesys Logic, Inc. USB3.2 Hub</sp=
an><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</spa=
n><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 011: ID 8087:0033 Intel Corp.</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 007: ID 0db0:6c09 Micro Star International USB
          Audio</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 010: ID 0db0:6a05 Micro Star International MEG Core
          Liquid S360</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 009: ID 0db0:9ba6 Micro Star International USB HID</=
span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 005: ID 05e3:0608 Genesys Logic, Inc. Hub</span><spa=
n
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 003: ID 1462:7d89 Micro Star International MYSTIC
          LIGHT</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 008: ID 3434:0100 Keychron Keychron Q1</span><span
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 006: ID 046d:c05a Logitech, Inc. M90/M100 Optical
          Mouse</span><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 004: ID 05e3:0610 Genesys Logic, Inc. Hub</span><spa=
n
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 002: ID 05e3:0610 Genesys Logic, Inc. Hub</span><spa=
n
          class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;"><br>
        </span></div>
      <div><span class=3D"font"
          style=3D"font-family: courier new,monospace, sans-serif;">Bus
          001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</spa=
n><br>
      </div>
      <div><br>
      </div>
      <div>
        <div>
          <div class=3D"x-apple-signature" style=3D"white-space: pre-wrap=
">Sent from iCloud
</div>
        </div>
        <div><br>
        </div>
        <blockquote type=3D"cite">
          <div>On Feb 19, 2024, at 8:51 AM, Marcus D. Leech
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbra=
un@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:<br>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div class=3D"moz-cite-prefix">On 19/02/2024 11:27, Jim Grubb
              wrote:<br>
            </div>
            <blockquote type=3D"cite">Unfortunately, the new Y cable did
              not resolve the issue. =C2=A0I=E2=80=99m not sure what else=
 to try.<br>
            </blockquote>
            <div>Could you share the output of:<br>
            </div>
            <div> <br>
            </div>
            <div> lsusb<br>
            </div>
            <div> <br>
            </div>
            <div> With us?<br>
            </div>
            <div> <br>
            </div>
            <div> Just working on a hunch.<br>
            </div>
            <div> <br>
            </div>
            <div> <br>
            </div>
            <div> <br>
            </div>
            <blockquote type=3D"cite">
              <div><br>
              </div>
              <div>Thanks,<br>
              </div>
              <div>
                <div>j<br>
                </div>
                <div> <br>
                </div>
                <div>
                  <div><br>
                  </div>
                  <blockquote type=3D"cite">
                    <div>On Feb 18, 2024, at 6:36=E2=80=AFAM, Marcus D. L=
eech <a
                        class=3D"moz-txt-link-rfc2396E"
                        href=3D"mailto:patchvonbraun@gmail.com"
                        moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.=
com&gt;</a>
                      wrote:<br>
                    </div>
                    <div><br>
                    </div>
                    <div>
                      <div>
                        <div class=3D"moz-cite-prefix">On 18/02/2024
                          00:04, Jim Grubb wrote:<br>
                        </div>
                        <blockquote type=3D"cite">
                          <div>One other datapoint. =C2=A0I have a separa=
te
                            machine, intel NUC running dragonOS which
                            comes with gnu radio pre-installed with uhd
                            drivers. =C2=A0I=E2=80=99m getting the same r=
esult on
                            that machine as well. =C2=A0It is also using =
4.1
                            <br>
                          </div>
                          <div>j<br>
                          </div>
                        </blockquote>
                        <div>This may still be a power issue.=C2=A0 Once
                          you've tried the "Y" cable, if it still
                          doesn't work then we might be dealing with<br>
                        </div>
                        <div> =C2=A0 broken hardware.<br>
                        </div>
                        <div> <br>
                        </div>
                        <div> <br>
                        </div>
                        <div> <br>
                        </div>
                        <blockquote type=3D"cite">
                          <div>
                            <div>
                              <div><br>
                              </div>
                              <blockquote type=3D"cite">
                                <div>On Feb 17, 2024, at 6:57=E2=80=AFPM,=
 Marcus
                                  D. Leech <a
                                    class=3D"moz-txt-link-rfc2396E"
href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"true">&lt;patc=
hvonbraun@gmail.com&gt;</a>
                                  wrote:<br>
                                </div>
                                <div><br>
                                </div>
                                <div>
                                  <div>
                                    <div class=3D"moz-cite-prefix">On
                                      17/02/2024 21:44, Jim Grubb wrote:<=
br>
                                    </div>
                                    <blockquote type=3D"cite">
                                      <div><span class=3D"font"
                                          style=3D"font-family:Monaco">I
                                          was able to get UHD 4.1.0.5-3
                                          installed after removing the
                                          ppa. =C2=A0Unfortunately I'm st=
ill
                                          running into a problem.</span><=
br>
                                      </div>
                                      <div><span class=3D"font"
                                          style=3D"font-family:Monaco"></=
span><br>
                                      </div>
                                      <div><span class=3D"font"
                                          style=3D"font-family:Monaco">An=
y
                                          ideas would be=C2=A0appreciated=
.</span><br>
                                      </div>
                                      <div><span class=3D"font"
                                          style=3D"font-family:Monaco">Th=
anks</span><br>
                                      </div>
                                      <div><span class=3D"font"
                                          style=3D"font-family:Monaco">j<=
/span><br>
                                      </div>
                                      <div><span class=3D"font"
                                          style=3D"font-family:Monaco"></=
span><br>
                                      </div>
                                      <div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
jim@<a
href=3D"http://pop-os:/usr/lib/uhd/utils" rel=3D"noopener noreferrer"
                                              moz-do-not-send=3D"true">po=
p-os:/usr/lib/uhd/utils</a>$
                                            uhd_find_devices</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
[INFO]
                                            [UHD] linux; GNU C++ version
                                            11.2.0; Boost_107400;
                                            UHD_4.1.0.5-3</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
--------------------------------------------------</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
--
                                            UHD Device 0</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
--------------------------------------------------</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
Device
                                            Address:</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            =C2=A0 serial: 3293561</span>=
<br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            =C2=A0 name: B205i</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            =C2=A0 product: B205mini</spa=
n><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            =C2=A0 type: b200</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
jim@<a
href=3D"http://pop-os:/usr/lib/uhd/utils" rel=3D"noopener noreferrer"
                                              moz-do-not-send=3D"true">po=
p-os:/usr/lib/uhd/utils</a>$
                                            uhd_usrp_probe</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
[INFO]
                                            [UHD] linux; GNU C++ version
                                            11.2.0; Boost_107400;
                                            UHD_4.1.0.5-3</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
[INFO]
                                            [B200] Detected Device:
                                            B205mini</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
[INFO]
                                            [B200] Operating over USB 3.<=
/span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
[ERROR]
                                            [UHD] Exception caught in
                                            safe-call.</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            in virtual
                                            b200_radio_ctrl_core_impl::~b=
200_radio_ctrl_core_impl()</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            at
                                            ./host/lib/usrp/b200/b200_rad=
io_ctrl_core.cpp:66</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
this-&gt;peek32(0);
                                            _async_task.reset(); -&gt;
                                            AssertionError:
                                            accum_timeout &lt; _timeout</=
span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            in uint64_t
                                            b200_radio_ctrl_core_impl::wa=
it_for_ack(bool)</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            at
                                            ./host/lib/usrp/b200/b200_rad=
io_ctrl_core.cpp:228</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
Error:
                                            AssertionError:
                                            accum_timeout &lt; _timeout</=
span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            in uint64_t
                                            b200_radio_ctrl_core_impl::wa=
it_for_ack(bool)</span><br>
                                        </div>
                                        <div><span class=3D"font"
                                            style=3D"font-family:Monaco">=
=C2=A0
                                            at
                                            ./host/lib/usrp/b200/b200_rad=
io_ctrl_core.cpp:228</span><br>
                                        </div>
                                      </div>
                                      <div><br>
                                      </div>
                                      <div><br>
                                      </div>
                                    </blockquote>
                                    <div>The other thing that just
                                      occurred to me is that your host
                                      controller may not be supplying
                                      enough power.=C2=A0 This should "ne=
ver"<br>
                                    </div>
                                    <div> =C2=A0 happen these days, but y=
ou
                                      might try using one of those "Y"
                                      USB cables that can provide extra
                                      power from another USB port<br>
                                    </div>
                                    <div> =C2=A0 to a downstream device.<=
br>
                                    </div>
                                    <div> <br>
                                    </div>
                                    <div> <br>
                                    </div>
                                    <div> <br>
                                    </div>
                                  </div>
                                  <div>__________________________________=
_____________<br>
                                  </div>
                                  <div> USRP-users mailing list -- <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"true">usrp-=
users@lists.ettus.com</a><br>
                                  </div>
                                  <div> To unsubscribe send an email to
                                    <a
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
    </blockquote>
    <br>
  </body>
</html>

--------------rW9P8OAH50A9jyO6ylWJgUqk--

--===============0400215759171097392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0400215759171097392==--
