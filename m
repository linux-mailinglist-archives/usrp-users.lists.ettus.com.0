Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA0CA2202A
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 16:24:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D0EA385B05
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jan 2025 10:24:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738164259; bh=w/Xq6H/xlrC27rQs+SjKYvwOgbOcBRupvlQZ0Yz8oQ0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Dp2M/uklAWyt1pOKLXe4I0h458wiwPAyBTvLnBHbDRJxU1lMC88QVkJh/zeeSBiJx
	 I6zm3f4fEZIBvPj30m8nLq6h3edGA1D3yS3zx8S1UXOjbQGlbigVQiSqKJkh/rGzD9
	 tuURMcOdvcd4dGyiB+RMGijki4XpPoKUrRp/WsrxCK/ue16Rn3Cx/2JpJIzm1abYWJ
	 kgmmHW6uP/BK8Gf+xDROkKJKW0AmjsXHlKKFG4vQ8DTbDk470gXu3QtIf/fXJwyeui
	 8O83Eg8SRDvYcUrCVwDRclC52+9QUleuOxujMnF5iHNQZ5lErf0MYczX8izrVuMpVL
	 mt5ug+otMw2ng==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 460C13859EB
	for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 10:23:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nEZorj6p";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-467a3c85e11so50883431cf.2
        for <usrp-users@lists.ettus.com>; Wed, 29 Jan 2025 07:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738164220; x=1738769020; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sJfYAPlEbXtHw2MeFys9OC4lXp/NKzQdw/3HKfUQTAU=;
        b=nEZorj6pufHbTf9FJec9iluivU9PqVloOvzO9eD3hwDW+DvEzHoV8NBrU9kCkg7i9f
         +YSbmhwbwe8Bv68XxwHABm5mcWt+Pxp3Qr+rIshFeexl0Ds6MGL3ytgBQ4EODefzO6Hr
         s6VGdEiafAyoiDlrmVRYj4ynZYVvHEBV4dhy3hLrtWqt/uiAAZFxHj2Rewkzdx3kTZZc
         t1/ghuw7lPNF+W+F1SoV+yEIwVUpx+oHQbb88XM4tIJ1KJhpfjBjl4UmUKxeF95fFEq0
         ebgez6DJQRsXlM59qaw++pF/0rP9vefhhltpwJlnbC6hIlwkSFaoGEG+Fm7519v0r0jZ
         o4Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738164220; x=1738769020;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sJfYAPlEbXtHw2MeFys9OC4lXp/NKzQdw/3HKfUQTAU=;
        b=WiCFx1TV6nBmLafUqp2Tg3gMnzSTbxq5Ww5KJSrGqFNcCNu/0c18ntTmUP2Q3hXiM/
         353fFo3Jc4GU1DMMK0nP7GSFMMk2ZG9QEikvzqTdIV8FPrGSVgeLrb4iCnuR5HvtuaIe
         5nRj0dI9YZy40xlCA7Rw4Dq5mF5jGDbvCHDLGx2K4K2W7fwJEL2vN+u9hcOS/5jx3eyA
         PzubQOYvLawiGMiJlSDR0E29tcKxh1ra8tiA2AgcqWS9zJKIPqJnEUR7iroDyHB6yYBj
         Hi2dn2OGAmHDtPLcVZRuBMdQp2F/tbnMgwugCjtngkD7aoHhjaOEBGbfTEkSgEA9bSXI
         2SdA==
X-Gm-Message-State: AOJu0YwTWOd9SYH/iYiIOzXO+ufWCtrcCtXLFZXlkGh61gj4NBnaNslJ
	LjteuW9DNpt56BSnqP49NfxaUelEjUGWgCic/ZSmR9DKH++/kucQ
X-Gm-Gg: ASbGncvBxaqIs9/mlL2oDhI8MuUfiD2IkCFHBKBzR+64vuijDMOzd7ClwlUyeTkKeVX
	t8eeF7eEEupnCmkQX3ySBNv+Tl4kggjVIyl/UXHAZbkfojw+C5+u6EB6e5Kgyqq3Ia+lIShSZgH
	reqpP5LUzjK7C5kdBYA7pXDuXDfavOw1T1Jz3oXUR1DGLhkn6HyIQfkRr+iOwEwpvTMbZHps2/D
	meo3JUxDK6YEaKAIW/+dV6ErA5bKoPvQ7wrfXsqZwkWkY81eOff4caqWTQ9MOBQUJNpSqZirK8a
	Oq2d8E1Ii4EIxUlKS5Hq3h6MTg==
X-Google-Smtp-Source: AGHT+IEqwKjc7X3cqRINJZhZ29fGwsucKO9dusQ3zJGUjWpOZ/bc6BNWjngQPR9kjQfOJuySZhrEBw==
X-Received: by 2002:a05:622a:4184:b0:46c:9f53:4a45 with SMTP id d75a77b69052e-46fd0b904a0mr62279571cf.43.1738164218787;
        Wed, 29 Jan 2025 07:23:38 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-46e668634d7sm62624351cf.6.2025.01.29.07.23.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 07:23:38 -0800 (PST)
Message-ID: <1a0a29d2-4ebb-4498-944e-ce40f257e301@gmail.com>
Date: Wed, 29 Jan 2025 10:23:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Heinz, Dominik" <dominik.heinz@h-da.de>,
 Martin Braun <martin.braun@ettus.com>
References: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>
 <39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
 <a82baa39532e4545a88e3eb828100f8e@h-da.de>
 <CAFOi1A5K0wHVMRoeO3B7RL5DgoOsmw_96C7y_L8zz+RBo1SDpA@mail.gmail.com>
 <800ca492ec564e52a9cb1f4f238513f3@h-da.de>
 <014bb7ee02bd4da889078fb810a83284@h-da.de>
 <1b4c4d5ab84449c6a8aca889a6c264d8@h-da.de>
 <9c486a6d-d53d-49a1-a6f6-ebcc5a5e025c@gmail.com>
 <60472923d5234b818d25ae5a5c07ee43@h-da.de>
 <a7880729-9aa7-40b5-a4d9-61b92cf6b509@gmail.com>
 <a656d6919da94001bcf6b0424c5df6cb@h-da.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a656d6919da94001bcf6b0424c5df6cb@h-da.de>
Message-ID-Hash: VO6PQ7MT57UPKJIMVQLV4OAJYCMGOEZH
X-Message-ID-Hash: VO6PQ7MT57UPKJIMVQLV4OAJYCMGOEZH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERN] Re: [EXTERN] Re: [EXTERN] Re: [EXTERN] Re: [EXTERN] Re: Re: [EXTERN] Re: X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VO6PQ7MT57UPKJIMVQLV4OAJYCMGOEZH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5449429885885036698=="

This is a multi-part message in MIME format.
--===============5449429885885036698==
Content-Type: multipart/alternative;
 boundary="------------qNCHtjCXvhuk4Uwc6GmZaksd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qNCHtjCXvhuk4Uwc6GmZaksd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/01/2025 09:37, Heinz, Dominik wrote:
>
> Thanks for the reply.
>
> I don't see how the host PC has the same IP address.
>
>
> The subnets are different? I also created a separate thread for=20
> discussing this, since it does not have anything to do with the PCIe=20
> problems discussed earlier.
>
Please see here.

https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_setup_network_hos=
t_interface


>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Wednesday, January 29, 2025 3:21:51 PM
> *To:* Heinz, Dominik; Martin Braun
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXTERN] Re: [EXTERN] Re: [EXTERN] [USRP-users] Re:=20
> [EXTERN] Re: [EXTERN] Re: Re: [EXTERN] Re: X310 RIO Session=20
> Initialization Failure (Error code -63150)
> On 29/01/2025 04:32, Heinz, Dominik wrote:
>>
>> Okay,
>>
>> So I am having trouble to interface with the X310, despite having set=20
>> the correct IP addresses for both interfaces..?
>>
>>
>> gnb@xgoss-host:~$ ip a
>> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN=20
>> group default qlen 1000
>> =C2=A0=C2=A0=C2=A0 link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:=
00
>> =C2=A0=C2=A0=C2=A0 inet 127.0.0.1/8 scope host lo
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> =C2=A0=C2=A0=C2=A0 inet6 ::1/128 scope host
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> 2: enp77s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel=20
>> state UP group default qlen 1000
>> =C2=A0=C2=A0=C2=A0 link/ether 9c:6b:00:56:a3:a5 brd ff:ff:ff:ff:ff:ff
>> 3: enp1s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq=20
>> state UP group default qlen 1000
>> =C2=A0=C2=A0=C2=A0 link/ether f8:f2:1e:9b:f1:60 brd ff:ff:ff:ff:ff:ff
>> =C2=A0=C2=A0=C2=A0 inet 192.168.30.2/24 brd 192.168.30.255 scope globa=
l=20
>> noprefixroute enp1s0f0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> =C2=A0=C2=A0=C2=A0 inet6 fe80::a1a4:f18c:ce2c:bbf1/64 scope link nopre=
fixroute
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> 4: enp1s0f1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq=20
>> state UP group default qlen 1000
>> =C2=A0=C2=A0=C2=A0 link/ether f8:f2:1e:9b:f1:61 brd ff:ff:ff:ff:ff:ff
>> =C2=A0=C2=A0=C2=A0 inet 192.168.40.2/24 brd 192.168.40.255 scope globa=
l=20
>> noprefixroute enp1s0f1
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> =C2=A0=C2=A0=C2=A0 inet6 fe80::f167:b030:ddfa:a249/64 scope link nopre=
fixroute
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> 5: ogstun: <POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP> mtu 1400 qdisc=20
>> fq_codel state UP group default qlen 500
>> =C2=A0=C2=A0=C2=A0 link/none
>> =C2=A0=C2=A0=C2=A0 inet 10.45.0.1/16 brd 10.45.255.255 scope global og=
stun
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> =C2=A0=C2=A0=C2=A0 inet6 2001:db8:cafe::1/48 scope global
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> =C2=A0=C2=A0=C2=A0 inet6 fe80::d4:8229:f90e:9ef8/64 scope link stable-=
privacy
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> 6: wlp76s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue=20
>> state UP group default qlen 1000
>> =C2=A0=C2=A0=C2=A0 link/ether f4:46:37:30:ee:5e brd ff:ff:ff:ff:ff:ff
>> =C2=A0=C2=A0=C2=A0 inet 192.168.1.146/24 brd 192.168.1.255 scope globa=
l dynamic=20
>> noprefixroute wlp76s0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft 6788sec preferred_lft 6=
788sec
>> =C2=A0=C2=A0=C2=A0 inet6 fe80::ee0a:9d:d428:6cb4/64 scope link noprefi=
xroute
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> 7: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue=20
>> state DOWN group default qlen 1000
>> =C2=A0=C2=A0=C2=A0 link/ether 52:54:00:6d:72:20 brd ff:ff:ff:ff:ff:ff
>> =C2=A0=C2=A0=C2=A0 inet 192.168.122.1/24 brd 192.168.122.255 scope glo=
bal virbr0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> 8: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc=20
>> noqueue state DOWN group default
>> =C2=A0=C2=A0=C2=A0 link/ether 02:42:87:6d:5c:d9 brd ff:ff:ff:ff:ff:ff
>> =C2=A0=C2=A0=C2=A0 inet 172.17.0.1/16 brd 172.17.255.255 scope global =
docker0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> 9: br-add5841a3206: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500=20
>> qdisc noqueue state DOWN group default
>> =C2=A0=C2=A0=C2=A0 link/ether 02:42:9c:fa:66:b5 brd ff:ff:ff:ff:ff:ff
>> =C2=A0=C2=A0=C2=A0 inet 192.168.11.1/24 brd 192.168.11.255 scope globa=
l br-add5841a3206
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever preferred_lft f=
orever
>> gnb@xgoss-host:~$ uhd_find_devices
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
>> UHD_4.7.0.0-0ubuntu1~jammy1
>> No UHD Devices Found
>> gnb@xgoss-host:~$ uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
>> UHD_4.7.0.0-0ubuntu1~jammy1
>> Error: LookupError: KeyError: No devices found for ----->
>> Empty Device Address
>>
>>
>> I got the SDR working before but for some reason I can't get this=20
>> working reliably.
>>
>> I assigned the IP addresses to the interfaces with the Network GUI in=20
>> Ubuntu.
>>
>> But I can't find the device neither via uhd_find_devices, not with=20
>> uhd_usrp_probe.
>>
>>
>> The X310 is flashed with the XG image for dual SFP+.
>>
>>
>> Do you mind guiding me step by step how to configure the IPs for the=20
>> interfaces correctly and interface with the SDR? I don't see what I=20
>> am missing?
>>
> You've given your HOST PC the same addresses as the X310. Choose some=20
> other address.=C2=A0 Like=C2=A0=C2=A0 .1 or .3
>
>
>> ----------------------------------------------------------------------=
--
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>> *Sent:* Monday, January 27, 2025 12:32:14 PM
>> *To:* Heinz, Dominik; Martin Braun
>> *Cc:* usrp-users@lists.ettus.com
>> *Subject:* [EXTERN] Re: [EXTERN] [USRP-users] Re: [EXTERN] Re:=20
>> [EXTERN] Re: Re: [EXTERN] Re: X310 RIO Session Initialization Failure=20
>> (Error code -63150)
>> On 27/01/2025 05:29, Heinz, Dominik wrote:
>>>
>>> Okay, seems like I had to manually set the IP addresses for the=20
>>> interfaces. Now I can interact perfectly with the device.
>>>
>>> Tho, I don't know how to configure it to use both Links=20
>>> simultaneously, like you suggested (to do 2x200 Msps streaming).
>>>
>>>
>>> Any advice on that would be appreciated :)
>>>
>> Use the second_addr argument:
>>
>> https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_usage
>>
>> So, assuming the XG image, your device arguments would include:
>>
>> addr=3D192.168.30.2,second_addr=3D192.168.40.2
>>
>>
>>> ---------------------------------------------------------------------=
---
>>> *From:* Heinz, Dominik <dominik.heinz@h-da.de>
>>> *Sent:* Monday, January 27, 2025 10:32:27 AM
>>> *To:* Martin Braun
>>> *Cc:* Marcus D. Leech; usrp-users@lists.ettus.com
>>> *Subject:* [EXTERN] [USRP-users] Re: [EXTERN] Re: [EXTERN] Re: Re:=20
>>> [EXTERN] Re: X310 RIO Session Initialization Failure (Error code=20
>>> -63150)
>>>
>>> When I run the image loader without the IP address parameter it=20
>>> seems to be flashing the correctly.
>>>
>>>
>>> uhd_image_loader --args=3D"type=3Dx300"
>>>
>>>
>>> However, I don't see how I can configure the IP address to be able=20
>>> to interact via the 10GbE links (?)
>>>
>>> ---------------------------------------------------------------------=
---
>>> *From:* Heinz, Dominik <dominik.heinz@h-da.de>
>>> *Sent:* Monday, January 27, 2025 10:18:41 AM
>>> *To:* Martin Braun
>>> *Cc:* Marcus D. Leech; usrp-users@lists.ettus.com
>>> *Subject:* [EXTERN] [USRP-users] Re: [EXTERN] Re: Re: [EXTERN] Re:=20
>>> X310 RIO Session Initialization Failure (Error code -63150)
>>> Hello Martin,
>>> Hello Marcus,
>>>
>>> The X310 does not show up as a RIO device, but rather like this:
>>>
>>> 4a:00.0 Signal processing controller: National Instruments PXIe/PCIe=20
>>> Device (rev ff) (prog-if ff)
>>> =C2=A0=C2=A0=C2=A0 !!! Unknown header type 7f
>>> =C2=A0=C2=A0=C2=A0 Kernel driver in use: niusrpriok
>>> =C2=A0=C2=A0=C2=A0 Kernel modules: niusrpriok
>>>
>>> This seems already problematic (?)
>>>
>>> The nisrpriorpc server seems to be running fine:
>>>
>>> gnb@xgoss-host:~$ sudo systemctl status niusrpriorpc
>>> =E2=97=8F niusrpriorpc.service - LSB: National Instruments USRP RIO S=
ervice
>>> =C2=A0=C2=A0=C2=A0=C2=A0 Loaded: loaded (/etc/init.d/niusrpriorpc; ge=
nerated)
>>> =C2=A0=C2=A0=C2=A0=C2=A0 Active: active (running) since Mon 2025-01-2=
7 09:37:21 CET;=20
>>> 23min ago
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Docs: man:systemd-sysv-generator=
(8)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tasks: 4 (limit: 153252)
>>> =C2=A0=C2=A0=C2=A0=C2=A0 Memory: 98.6M
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU: 13.872s
>>> =C2=A0=C2=A0=C2=A0=C2=A0 CGroup: /system.slice/niusrpriorpc.service
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =E2=94=94=E2=94=801631 /usr/sbin/niusrpriorpc --daemon
>>>
>>> Jan 27 09:37:21 xgoss-host systemd[1]: Starting LSB: National=20
>>> Instruments USRP RIO Service...
>>> Jan 27 09:37:21 xgoss-host systemd[1]: Started LSB: National=20
>>> Instruments USRP RIO Service.
>>>
>>> You also mentioned that the X310 needs to be powered on before the=20
>>> host system.
>>> I have of course done this - since to my knowledge hot plugging is=20
>>> not possible in the case of PCIe.
>>>
>>> Running uhd_usrp_probe as root doesn't change anything.
>>>
>>> I am okay with trying out the 10GbE instead, but I am not able to=20
>>> interact with the device that way.
>>> I can't seem to specify an IP or load a firmware image this way. I=20
>>> tried:
>>>
>>> gnb@xgoss-host:~$ uhd_image_loader=20
>>> --args=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG"
>>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
>>> UHD_4.7.0.0-0ubuntu1~jammy1
>>> No applicable UHD devices found
>>>
>>> Any idea how to proceed? Can't seem to get the device running via=20
>>> PCIe, and via 10GbE I can't interact with the device either.
>>> I will provide the details in the Github issue shortly.
>>>
>>>
>>> ---------------------------------------------------------------------=
---
>>> *From:* Martin Braun <martin.braun@ettus.com>
>>> *Sent:* Friday, January 24, 2025 12:19:00 PM
>>> *To:* Heinz, Dominik
>>> *Cc:* Marcus D. Leech; usrp-users@lists.ettus.com
>>> *Subject:* [EXTERN] Re: [USRP-users] Re: [EXTERN] Re: X310 RIO=20
>>> Session Initialization Failure (Error code -63150)
>>> Dominik,
>>>
>>> can you provide as much info as you can here:=20
>>> https://github.com/EttusResearch/uhd/issues/818?
>>>
>>> Like Marcus said, the PCIe interface is not used a lot (except by=20
>>> LabView users), so if you can use 10 GbE instead I recommend doing=20
>>> that (that also allows you to do 2x200 Msps streaming, if you have=20
>>> two ports).
>>>
>>> --M
>>>
>>> On Wed, Jan 22, 2025 at 2:58=E2=80=AFPM Heinz, Dominik=20
>>> <dominik.heinz@h-da.de> wrote:
>>>
>>>     I followed the steps in the guide you linked, - however, I still
>>>     have the issue.
>>>
>>>     The uhd drivers are installed, and the niuspriorpc service is
>>>     running. However, I still the the RIO session initialization
>>>     failure.
>>>
>>>
>>>     Anything else I could try? I still don't understand what is the
>>>     cause for this.
>>>
>>>     -----------------------------------------------------------------=
-------
>>>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>>>     *Sent:* Tuesday, January 21, 2025 8:32:39 PM
>>>     *To:* usrp-users@lists.ettus.com
>>>     *Subject:* [EXTERN] [USRP-users] Re: X310 RIO Session
>>>     Initialization Failure (Error code -63150)
>>>     On 21/01/2025 09:26, Heinz, Dominik wrote:
>>>>
>>>>     I'm experiencing an initialization issue with my Ettus X310
>>>>     USRP device.
>>>>
>>>>     My setup consists of an Ettus X310 connected through a PCIe
>>>>     Card using a Molex cable to my Linux machine.
>>>>
>>>>     I'm running Ubuntu with kernel version 6.8.0-51-generic and
>>>>     have installed all the necessary UHD packages on the system.
>>>>
>>>>
>>>>     The X310 is properly detected when running |uhd_find_devices|,
>>>>     but attempting to probe the device with |uhd_usrp_probe|
>>>>     results in a RIO session initialization error.
>>>>     I attached the error output below.
>>>>     What is causing this RIO session initialization failure and how
>>>>     can it be resolved?
>>>>
>>>>     gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
>>>>     uhd_find_devices
>>>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>>>     UHD_4.7.0.0-0ubuntu1~jammy1
>>>>     --------------------------------------------------
>>>>     -- UHD Device 0
>>>>     --------------------------------------------------
>>>>     Device Address:
>>>>     =C2=A0=C2=A0=C2=A0 serial:
>>>>     =C2=A0=C2=A0=C2=A0 fpga: HG
>>>>     =C2=A0=C2=A0=C2=A0 name:
>>>>     =C2=A0=C2=A0=C2=A0 product: X310
>>>>     =C2=A0=C2=A0=C2=A0 resource: RIO0
>>>>     =C2=A0=C2=A0=C2=A0 type: x300
>>>>
>>>>     gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
>>>>     uhd_usrp_probe
>>>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>>>     UHD_4.7.0.0-0ubuntu1~jammy1
>>>>     [INFO] [X300] X300 initialization sequence...
>>>>     [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>>>>     [INFO] [X300] Using LVBITX bitfile
>>>>     /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx
>>>>     Error: RuntimeError: x300_impl: Could not initialize RIO
>>>>     session. Unknown error. (Error code -63150)
>>>>
>>>>
>>>>
>>>>     _______________________________________________
>>>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>>>     The procedures for making this work are here:
>>>
>>>     https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie
>>>
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list -- usrp-users@lists.ettus.com
>>>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>

--------------qNCHtjCXvhuk4Uwc6GmZaksd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/01/2025 09:37, Heinz, Dominik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a656d6919da94001bcf6b0424c5df6cb@h-da.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>Thanks for the reply.</p>
        <p>I don't see how the host PC has the same IP address.</p>
        <p><br>
        </p>
        <p>The subnets are different? I also created a separate thread
          for discussing this, since it does not have anything to do
          with the PCIe problems discussed earlier.</p>
      </div>
    </blockquote>
    Please see here.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_usrp_x3x0.html#x3x0_setup_network_host_interface">https://files.ett=
us.com/manual/page_usrp_x3x0.html#x3x0_setup_network_host_interface</a><b=
r>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:a656d6919da94001bcf6b0424c5df6cb@h-da.de">
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p><br>
        </p>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Wednesday, January 29, 2025 3:21:51 PM<br>
          <b>To:</b> Heinz, Dominik; Martin Braun<br>
          <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          <b>Subject:</b> [EXTERN] Re: [EXTERN] Re: [EXTERN]
          [USRP-users] Re: [EXTERN] Re: [EXTERN] Re: Re: [EXTERN] Re:
          X310 RIO Session Initialization Failure (Error code -63150)</fo=
nt>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"moz-cite-prefix">On 29/01/2025 04:32, Heinz, Domini=
k
          wrote:<br>
        </div>
        <blockquote type=3D"cite"
          cite=3D"mid:60472923d5234b818d25ae5a5c07ee43@h-da.de">
          <style type=3D"text/css" style=3D"display:none;">P {margin-top:=
0;margin-bottom:0;}</style>
          <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
            dir=3D"ltr">
            <p>Okay,</p>
            <p>So I am having trouble to interface with the X310,
              despite having set the correct IP addresses for both
              interfaces..?</p>
            <p><br>
            </p>
            <div>gnb@xgoss-host:~$ ip a<br>
              1: lo: &lt;LOOPBACK,UP,LOWER_UP&gt; mtu 65536 qdisc
              noqueue state UNKNOWN group default qlen 1000<br>
              =C2=A0=C2=A0=C2=A0 link/loopback 00:00:00:00:00:00 brd 00:0=
0:00:00:00:00<br>
              =C2=A0=C2=A0=C2=A0 inet 127.0.0.1/8 scope host lo<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              =C2=A0=C2=A0=C2=A0 inet6 ::1/128 scope host <br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              2: enp77s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
              1500 qdisc fq_codel state UP group default qlen 1000<br>
              =C2=A0=C2=A0=C2=A0 link/ether 9c:6b:00:56:a3:a5 brd ff:ff:f=
f:ff:ff:ff<br>
              3: enp1s0f0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
              1500 qdisc mq state UP group default qlen 1000<br>
              =C2=A0=C2=A0=C2=A0 link/ether f8:f2:1e:9b:f1:60 brd ff:ff:f=
f:ff:ff:ff<br>
              =C2=A0=C2=A0=C2=A0 inet 192.168.30.2/24 brd 192.168.30.255 =
scope global
              noprefixroute enp1s0f0<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              =C2=A0=C2=A0=C2=A0 inet6 fe80::a1a4:f18c:ce2c:bbf1/64 scope=
 link
              noprefixroute <br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              4: enp1s0f1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
              1500 qdisc mq state UP group default qlen 1000<br>
              =C2=A0=C2=A0=C2=A0 link/ether f8:f2:1e:9b:f1:61 brd ff:ff:f=
f:ff:ff:ff<br>
              =C2=A0=C2=A0=C2=A0 inet 192.168.40.2/24 brd 192.168.40.255 =
scope global
              noprefixroute enp1s0f1<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              =C2=A0=C2=A0=C2=A0 inet6 fe80::f167:b030:ddfa:a249/64 scope=
 link
              noprefixroute <br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              5: ogstun: &lt;POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP&gt;
              mtu 1400 qdisc fq_codel state UP group default qlen 500<br>
              =C2=A0=C2=A0=C2=A0 link/none <br>
              =C2=A0=C2=A0=C2=A0 inet 10.45.0.1/16 brd 10.45.255.255 scop=
e global
              ogstun<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              =C2=A0=C2=A0=C2=A0 inet6 2001:db8:cafe::1/48 scope global <=
br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              =C2=A0=C2=A0=C2=A0 inet6 fe80::d4:8229:f90e:9ef8/64 scope l=
ink
              stable-privacy <br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              6: wlp76s0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu
              1500 qdisc noqueue state UP group default qlen 1000<br>
              =C2=A0=C2=A0=C2=A0 link/ether f4:46:37:30:ee:5e brd ff:ff:f=
f:ff:ff:ff<br>
              =C2=A0=C2=A0=C2=A0 inet 192.168.1.146/24 brd 192.168.1.255 =
scope global
              dynamic noprefixroute wlp76s0<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft 6788sec pref=
erred_lft 6788sec<br>
              =C2=A0=C2=A0=C2=A0 inet6 fe80::ee0a:9d:d428:6cb4/64 scope l=
ink
              noprefixroute <br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              7: virbr0: &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu
              1500 qdisc noqueue state DOWN group default qlen 1000<br>
              =C2=A0=C2=A0=C2=A0 link/ether 52:54:00:6d:72:20 brd ff:ff:f=
f:ff:ff:ff<br>
              =C2=A0=C2=A0=C2=A0 inet 192.168.122.1/24 brd 192.168.122.25=
5 scope global
              virbr0<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              8: docker0: &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu
              1500 qdisc noqueue state DOWN group default
              <br>
              =C2=A0=C2=A0=C2=A0 link/ether 02:42:87:6d:5c:d9 brd ff:ff:f=
f:ff:ff:ff<br>
              =C2=A0=C2=A0=C2=A0 inet 172.17.0.1/16 brd 172.17.255.255 sc=
ope global
              docker0<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              9: br-add5841a3206:
              &lt;NO-CARRIER,BROADCAST,MULTICAST,UP&gt; mtu 1500 qdisc
              noqueue state DOWN group default
              <br>
              =C2=A0=C2=A0=C2=A0 link/ether 02:42:9c:fa:66:b5 brd ff:ff:f=
f:ff:ff:ff<br>
              =C2=A0=C2=A0=C2=A0 inet 192.168.11.1/24 brd 192.168.11.255 =
scope global
              br-add5841a3206<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 valid_lft forever pref=
erred_lft forever<br>
              gnb@xgoss-host:~$ uhd_find_devices <br>
              [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
              UHD_4.7.0.0-0ubuntu1~jammy1<br>
              No UHD Devices Found<br>
              gnb@xgoss-host:~$ uhd_usrp_probe<br>
              [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
              UHD_4.7.0.0-0ubuntu1~jammy1<br>
              Error: LookupError: KeyError: No devices found for
              -----&gt;<br>
              Empty Device Address<br>
              <br>
            </div>
            <p><br>
            </p>
            <p>I got the SDR working before but for some reason I can't
              get this working reliably.</p>
            <p>I assigned the IP addresses to the interfaces with the
              Network GUI in Ubuntu.<br>
            </p>
            <p>But I can't find the device neither via uhd_find_devices,
              not with uhd_usrp_probe.</p>
            <p><br>
            </p>
            <p>The X310 is flashed with the XG image for dual SFP+.</p>
            <p><br>
            </p>
            <p>Do you mind guiding me step by step how to configure the
              IPs for the interfaces correctly and interface with the
              SDR? I don't see what I am missing?<br>
            </p>
          </div>
        </blockquote>
        You've given your HOST PC the same addresses as the X310.=C2=A0=C2=
=A0
        Choose some other address.=C2=A0 Like=C2=A0=C2=A0 .1 or .3<br>
        <br>
        <br>
        <blockquote type=3D"cite"
          cite=3D"mid:60472923d5234b818d25ae5a5c07ee43@h-da.de">
          <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
            dir=3D"ltr">
          </div>
          <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
          <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:=
11pt"
              face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
              Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E"
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&gt;<=
/a><br>
              <b>Sent:</b> Monday, January 27, 2025 12:32:14 PM<br>
              <b>To:</b> Heinz, Dominik; Martin Braun<br>
              <b>Cc:</b> <a
                class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true">
                usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [EXTERN] Re: [EXTERN] [USRP-users] Re:
              [EXTERN] Re: [EXTERN] Re: Re: [EXTERN] Re: X310 RIO
              Session Initialization Failure (Error code -63150)</font>
            <div>=C2=A0</div>
          </div>
          <div>
            <div class=3D"moz-cite-prefix">On 27/01/2025 05:29, Heinz,
              Dominik wrote:<br>
            </div>
            <blockquote type=3D"cite"
              cite=3D"mid:1b4c4d5ab84449c6a8aca889a6c264d8@h-da.de">
              <style type=3D"text/css" style=3D"display:none;">P {margin-=
top:0;margin-bottom:0;}</style>
              <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
                dir=3D"ltr">
                <p>Okay, seems like I had to manually set the IP
                  addresses for the interfaces. Now I can interact
                  perfectly with the device.</p>
                <p>Tho, I don't know how to configure it to use both
                  Links simultaneously, like you suggested (to do
                  <span>2x200 Msps streaming</span>).<br>
                </p>
                <p><br>
                </p>
                <p>Any advice on that would be appreciated :)<br>
                </p>
              </div>
            </blockquote>
            Use the second_addr argument:<br>
            <br>
            <a class=3D"moz-txt-link-freetext"
href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_usage"
              moz-do-not-send=3D"true">https://files.ettus.com/manual/pag=
e_usrp_x3x0.html#x3x0_usage</a><br>
            <br>
            So, assuming the XG image, your device arguments would
            include:<br>
            <br>
            addr=3D192.168.30.2,second_addr=3D192.168.40.2<br>
            <br>
          </div>
        </blockquote>
        <blockquote type=3D"cite"
          cite=3D"mid:60472923d5234b818d25ae5a5c07ee43@h-da.de">
          <div><br>
            <blockquote type=3D"cite"
              cite=3D"mid:1b4c4d5ab84449c6a8aca889a6c264d8@h-da.de">
              <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
                dir=3D"ltr">
              </div>
              <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1=
">
              <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                  style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                  color=3D"#000000"><b>From:</b> Heinz, Dominik
                  <a class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:dominik.heinz@h-da.de"
                    moz-do-not-send=3D"true">
                    &lt;dominik.heinz@h-da.de&gt;</a><br>
                  <b>Sent:</b> Monday, January 27, 2025 10:32:27 AM<br>
                  <b>To:</b> Martin Braun<br>
                  <b>Cc:</b> Marcus D. Leech; <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true">
                    usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [EXTERN] [USRP-users] Re: [EXTERN] Re:
                  [EXTERN] Re: Re: [EXTERN] Re: X310 RIO Session
                  Initialization Failure (Error code -63150)</font>
                <div>=C2=A0</div>
              </div>
              <div>
                <style type=3D"text/css" style=3D"display:none;">P {margi=
n-top:0;margin-bottom:0;}</style>
                <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
                  dir=3D"ltr">
                  <p>When I run the image loader without the IP address
                    parameter it seems to be flashing the correctly.</p>
                  <p><br>
                  </p>
                  <p><font
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, &quot;EmojiF=
ont&quot;;"
                      size=3D"3" face=3D"Calibri,Helvetica,sans-serif"
                      color=3D"black"><span style=3D"font-size:12pt;"
                        dir=3D"ltr" id=3D"divtagdefaultwrapper">uhd_image=
_loader
                        --args=3D"type=3Dx300"</span></font></p>
                  <p><font
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, &quot;EmojiF=
ont&quot;;"
                      size=3D"3" face=3D"Calibri,Helvetica,sans-serif"
                      color=3D"black"><span style=3D"font-size:12pt;"
                        dir=3D"ltr" id=3D"divtagdefaultwrapper"><br>
                      </span></font></p>
                  <p><font
style=3D"font-family: Calibri, Helvetica, sans-serif, serif, &quot;EmojiF=
ont&quot;;"
                      size=3D"3" face=3D"Calibri,Helvetica,sans-serif"
                      color=3D"black"><span style=3D"font-size:12pt;"
                        dir=3D"ltr" id=3D"divtagdefaultwrapper">However, =
I
                        don't see how I can configure the IP address to
                        be able to interact via the 10GbE links (?)<br>
                      </span></font></p>
                </div>
                <hr style=3D"display:inline-block;width:98%" tabindex=3D"=
-1">
                <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                    style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                    color=3D"#000000"><b>From:</b> Heinz, Dominik
                    <a class=3D"moz-txt-link-rfc2396E"
                      href=3D"mailto:dominik.heinz@h-da.de"
                      moz-do-not-send=3D"true">
                      &lt;dominik.heinz@h-da.de&gt;</a><br>
                    <b>Sent:</b> Monday, January 27, 2025 10:18:41 AM<br>
                    <b>To:</b> Martin Braun<br>
                    <b>Cc:</b> Marcus D. Leech; <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true">
                      usrp-users@lists.ettus.com</a><br>
                    <b>Subject:</b> [EXTERN] [USRP-users] Re: [EXTERN]
                    Re: Re: [EXTERN] Re: X310 RIO Session Initialization
                    Failure (Error code -63150)</font>
                  <div>=C2=A0</div>
                </div>
                <div>
                  <style type=3D"text/css" style=3D"display:none;">P {mar=
gin-top:0;margin-bottom:0;}</style>
                  <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
                    dir=3D"ltr">
                    <div>Hello Martin,<br>
                      Hello Marcus,<br>
                      <br>
                      The X310 does not show up as a RIO device, but
                      rather like this:<br>
                      <br>
                      4a:00.0 Signal processing controller: National
                      Instruments PXIe/PCIe Device (rev ff) (prog-if ff)<=
br>
                      =C2=A0=C2=A0=C2=A0 !!! Unknown header type 7f<br>
                      =C2=A0=C2=A0=C2=A0 Kernel driver in use: niusrpriok=
<br>
                      =C2=A0=C2=A0=C2=A0 Kernel modules: niusrpriok<br>
                      <br>
                      This seems already problematic (?)<br>
                      <br>
                      The nisrpriorpc server seems to be running fine:<br=
>
                      <br>
                      gnb@xgoss-host:~$ sudo systemctl status
                      niusrpriorpc<br>
                      =E2=97=8F niusrpriorpc.service - LSB: National Inst=
ruments
                      USRP RIO Service<br>
                      =C2=A0=C2=A0=C2=A0=C2=A0 Loaded: loaded (/etc/init.=
d/niusrpriorpc;
                      generated)<br>
                      =C2=A0=C2=A0=C2=A0=C2=A0 Active: active (running) s=
ince Mon 2025-01-27
                      09:37:21 CET; 23min ago<br>
                      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Docs: <a class=
=3D"moz-txt-link-freetext"
                        href=3D"man:systemd-sysv-generator(8)"
                        moz-do-not-send=3D"true">
                        man:systemd-sysv-generator(8)</a><br>
                      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tasks: 4 (limit: 153=
252)<br>
                      =C2=A0=C2=A0=C2=A0=C2=A0 Memory: 98.6M<br>
                      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU: 13.=
872s<br>
                      =C2=A0=C2=A0=C2=A0=C2=A0 CGroup: /system.slice/nius=
rpriorpc.service<br>
                      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=801631 /usr/sbin/niusrpriorpc
                      --daemon<br>
                      <br>
                      Jan 27 09:37:21 xgoss-host systemd[1]: Starting
                      LSB: National Instruments USRP RIO Service...<br>
                      Jan 27 09:37:21 xgoss-host systemd[1]: Started
                      LSB: National Instruments USRP RIO Service.<br>
                      <br>
                      You also mentioned that the X310 needs to be
                      powered on before the host system.<br>
                      I have of course done this - since to my knowledge
                      hot plugging is not possible in the case of PCIe.<b=
r>
                      <br>
                      Running uhd_usrp_probe as root doesn't change
                      anything.<br>
                      <br>
                      I am okay with trying out the 10GbE instead, but I
                      am not able to interact with the device that way.<b=
r>
                      I can't seem to specify an IP or load a firmware
                      image this way. I tried:<br>
                      <br>
                      gnb@xgoss-host:~$ uhd_image_loader
                      --args=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG=
"<br>
                      [INFO] [UHD] linux; GNU C++ version 11.4.0;
                      Boost_107400; UHD_4.7.0.0-0ubuntu1~jammy1<br>
                      No applicable UHD devices found<br>
                      <br>
                      Any idea how to proceed? Can't seem to get the
                      device running via PCIe, and via 10GbE I can't
                      interact with the device either.<br>
                      I will provide the details in the Github issue
                      shortly.<br>
                      <br>
                    </div>
                    <br>
                  </div>
                  <hr style=3D"display:inline-block;width:98%"
                    tabindex=3D"-1">
                  <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                      style=3D"font-size:11pt" face=3D"Calibri, sans-seri=
f"
                      color=3D"#000000"><b>From:</b> Martin Braun
                      <a class=3D"moz-txt-link-rfc2396E"
                        href=3D"mailto:martin.braun@ettus.com"
                        moz-do-not-send=3D"true">
                        &lt;martin.braun@ettus.com&gt;</a><br>
                      <b>Sent:</b> Friday, January 24, 2025 12:19:00 PM<b=
r>
                      <b>To:</b> Heinz, Dominik<br>
                      <b>Cc:</b> Marcus D. Leech; <a
class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        moz-do-not-send=3D"true">
                        usrp-users@lists.ettus.com</a><br>
                      <b>Subject:</b> [EXTERN] Re: [USRP-users] Re:
                      [EXTERN] Re: X310 RIO Session Initialization
                      Failure (Error code -63150)</font>
                    <div>=C2=A0</div>
                  </div>
                  <div>
                    <div dir=3D"ltr">
                      <div>Dominik,</div>
                      <div><br>
                      </div>
                      <div>can you provide as much info as you can here:
                        <a
href=3D"https://github.com/EttusResearch/uhd/issues/818"
                          moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
https://github.com/EttusResearch/uhd/issues/818</a>?</div>
                      <div><br>
                      </div>
                      <div>Like Marcus said, the PCIe interface is not
                        used a lot (except by LabView users), so if you
                        can use 10 GbE instead I recommend doing that
                        (that also allows you to do 2x200 Msps
                        streaming, if you have two ports).</div>
                      <div><br>
                      </div>
                      <div>--M<br>
                      </div>
                    </div>
                    <br>
                    <div class=3D"gmail_quote gmail_quote_container">
                      <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 2=
2,
                        2025 at 2:58=E2=80=AFPM Heinz, Dominik &lt;<a
                          href=3D"mailto:dominik.heinz@h-da.de"
                          moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">dominik.heinz@h=
-da.de</a>&gt;
                        wrote:<br>
                      </div>
                      <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
                        <div>
                          <div
id=3D"m_-810124041727098465divtagdefaultwrapper"
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sa=
ns-serif"
                            dir=3D"ltr">
                            <p>I followed the steps in the guide you
                              linked, - however, I still have the issue.<=
/p>
                            <p>The uhd drivers are installed, and the
                              niuspriorpc service is running. However, I
                              still the the RIO session initialization
                              failure.</p>
                            <p><br>
                            </p>
                            <p>Anything else I could try? I still don't
                              understand what is the cause for this.<br>
                            </p>
                          </div>
                          <hr style=3D"display:inline-block;width:98%">
                          <div id=3D"m_-810124041727098465divRplyFwdMsg"
                            dir=3D"ltr"><font style=3D"font-size:11pt"
                              face=3D"Calibri, sans-serif" color=3D"#0000=
00"><b>From:</b>
                              Marcus D. Leech &lt;<a
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">patchvonb=
raun@gmail.com</a>&gt;<br>
                              <b>Sent:</b> Tuesday, January 21, 2025
                              8:32:39 PM<br>
                              <b>To:</b> <a
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">
                                usrp-users@lists.ettus.com</a><br>
                              <b>Subject:</b> [EXTERN] [USRP-users] Re:
                              X310 RIO Session Initialization Failure
                              (Error code -63150)</font>
                            <div>=C2=A0</div>
                          </div>
                          <div>
                            <div>On 21/01/2025 09:26, Heinz, Dominik
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div
id=3D"m_-810124041727098465divtagdefaultwrapper"
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sa=
ns-serif"
                                dir=3D"ltr">
                                <p><span>I'm experiencing an
                                    initialization issue with my Ettus
                                    X310 USRP device.</span></p>
                                <p><span><span>My setup consists of an
                                      Ettus X310 connected through a
                                      PCIe Card using a Molex cable to
                                      my Linux machine.
                                      <br>
                                    </span></span></p>
                                <p><span><span>I'm running Ubuntu with
                                      kernel version 6.8.0-51-generic
                                      and have installed all the
                                      necessary UHD packages on the
                                      system.</span></span></p>
                                <p><span><span><br>
                                    </span></span></p>
                                <p><span><span></span></span></p>
                                <div>The X310 is properly detected when
                                  running <code>uhd_find_devices</code>,
                                  but attempting to probe the device
                                  with
                                  <code>uhd_usrp_probe</code> results in
                                  a RIO session initialization error.</di=
v>
                                <div>I attached the error output below.</=
div>
                                <div>What is causing this RIO session
                                  initialization failure and how can it
                                  be resolved?</div>
                                <div><br>
                                </div>
                                <div>
                                  <div><span
style=3D"font-family:Consolas,Courier,monospace">gnb@xgoss-host:~/srsRAN_=
Project/build4ac5300/apps/gnb$
                                      uhd_find_devices
                                    </span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [UHD] linux; GNU
                                      C++ version 11.4.0; Boost_107400;
                                      UHD_4.7.0.0-0ubuntu1~jammy1</span><=
br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">------------------------=
--------------------------</span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">-- UHD Device 0</span><b=
r>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">------------------------=
--------------------------</span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">Device Address:</span><b=
r>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 seria=
l: </span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 fpga:=
 HG</span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 name:=
 </span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 produ=
ct: X310</span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 resou=
rce: RIO0</span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">=C2=A0=C2=A0=C2=A0 type:=
 x300</span></div>
                                  <div><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">gnb@xgoss-host:~/srsRAN_=
Project/build4ac5300/apps/gnb$
                                      uhd_usrp_probe
                                    </span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [UHD] linux; GNU
                                      C++ version 11.4.0; Boost_107400;
                                      UHD_4.7.0.0-0ubuntu1~jammy1</span><=
br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] X300
                                      initialization sequence...</span><b=
r>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] Connecting
                                      to niusrpriorpc at
                                      localhost:5444...</span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">[INFO] [X300] Using
                                      LVBITX bitfile
                                      /usr/share/uhd/images/usrp_x310_fpg=
a_HG.lvbitx</span><br>
                                    <span
style=3D"font-family:Consolas,Courier,monospace">Error: RuntimeError:
                                      x300_impl: Could not initialize
                                      RIO session. Unknown error. (Error
                                      code -63150)</span></div>
                                  <br>
                                </div>
                                <br>
                              </div>
                              <br>
                              <fieldset></fieldset>
                              <pre>______________________________________=
_________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">usrp-users@=
lists.ettus.com</a>
To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                              moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">usrp-users-=
leave@lists.ettus.com</a>
</pre>
                            </blockquote>
                            The procedures for making this work are
                            here:<br>
                            <br>
                            <a
href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">https://fil=
es.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie</a><br>
                            <br>
                            <br>
                          </div>
                        </div>
                        _______________________________________________<b=
r>
                        USRP-users mailing list -- <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users@lists.ettus.com</a><br>
                        To unsubscribe send an email to <a
                          href=3D"mailto:usrp-users-leave@lists.ettus.com=
"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">
                          usrp-users-leave@lists.ettus.com</a><br>
                      </blockquote>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------qNCHtjCXvhuk4Uwc6GmZaksd--

--===============5449429885885036698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5449429885885036698==--
