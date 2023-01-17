Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9282C66E2C3
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 16:51:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84D5C3845C4
	for <lists+usrp-users@lfdr.de>; Tue, 17 Jan 2023 10:51:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673970693; bh=CJEPAehIup8N/jNvnQlTw6ONSO03PJP5ABVoPfrPeYw=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AJShV8VpK4nDvFg5rDb53nuwfK071vqYh2Lv2byzC9x/qkNvK0UxwEIkuH6pBsXNA
	 vRTAGGea4x4Vk3FxjlhM5coPq4TO/dlpm+aJwIkETyazC9eShY5X2gdADXVk3eGVX5
	 Ga1d5ufU0juKKb+ivE7SjXn21bte/gbjxhPQI+5L25IPhiB+j8AAaxyOXNijZD9Dwl
	 avimwpzjT7Fsi0OxOTBrtno1GbPDMEjPy66enm9ca04Q2p/dNKIhukcvbqAoRvFoAq
	 YF4kBJtZJYUF9JWEeZt3uk3x7Uq4tFjSMqRwA0eOwDde3ynxue3Z13f4WpBqsZ8ILY
	 CkI/cVLegDsGA==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 885C23845BC
	for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 10:51:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Zrw1vmsx";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id j9so4725309qtv.4
        for <usrp-users@lists.ettus.com>; Tue, 17 Jan 2023 07:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJ0COYK+vrHN0o15O6Fv/xU0HbW0UFPgAJ6bvL+b0Lg=;
        b=Zrw1vmsxcFIXY+yO6lw0sXCvuDLH6AcsVNNZhMP0zrW4bSJnXWTa1rwwukveU3Sper
         EbYkkuDNd+ktE3PZxXGDbQX8OR0LagLjPgdujrGdimJiEFG54ki/WAoQCK0DK88vK7Xb
         uRGLNBSJdtgWOrolMQ6rF/RmDEbB5u6SvTq8NmoE1NP3IN+QdeXE9sVQrVzNC1ZscQ/N
         UnwRuPGT6D91H+/dRUL0dG63qKta1r1gcAbWVeIEBg1MuOG9AvU2Xa4B6zPTseupJuMA
         ZRj2lEJ+GhZYAn9Goqf7Iz8EFeMZaDSx3SVarMRvzLB6usfODI95w9YIr0t8thd849Y/
         tD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TJ0COYK+vrHN0o15O6Fv/xU0HbW0UFPgAJ6bvL+b0Lg=;
        b=qB1rate8mBQM7UNlCkNw8pvjZcM0D0tqI2ozt4Qye0rtnaxkF3ufL5FGkFDLjWbSyg
         FVALd5oKSdhati59/HW/t4FL3BwgimQHX91q9k+GYCeLMj5SKg96thRsR7Y+MoKgfQgK
         +0dNe5bokLjXCbb9NwNE8lHrEiddudFBZv0vcvuI/+2COx9u+buSoXpxiuDKFgZjUNfp
         Ts+CpsvjNaUQNrEEm0BaES384npSDGY7KxmxICdEEz7noq0K3QsuZ5HxHITPlmB+6auK
         Lu5LlF1nGPbQQoIuSI/bOqWTFKwRd34vuPdtpLIIVThAnHz8rQDBEcmFcspTpFBzq9oT
         jk0w==
X-Gm-Message-State: AFqh2kr4U35AXM+Qe6JD/Zzr3E0KMpaGubf4xm6oexydQED/9pmeMSKp
	3nwi9CndXVgWNP/fJ/m1f7dFSB9L4P8=
X-Google-Smtp-Source: AMrXdXt5mUIgvK4ritElUk+TilM+EzMIGzAOLGpjbqI1NiffNY96dUk6oi8nlGsuIr3wvQGsXT5Gww==
X-Received: by 2002:a05:622a:1b28:b0:3a9:763b:4a61 with SMTP id bb40-20020a05622a1b2800b003a9763b4a61mr4589071qtb.28.1673970685937;
        Tue, 17 Jan 2023 07:51:25 -0800 (PST)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id n21-20020a05620a295500b007063036cb03sm7780011qkp.126.2023.01.17.07.51.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 07:51:25 -0800 (PST)
Message-ID: <78fc5b80-da7f-bb4b-df33-388f02af5ee2@gmail.com>
Date: Tue, 17 Jan 2023 10:51:25 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: mychk1 1 <mychk2@gmail.com>
References: <CAEygNraa096PUD+3D_EUzKoOW4PnxbmyxZ7O5tNqEUW3zmudfQ@mail.gmail.com>
 <71fccf0a-dc79-2695-7433-42382fb02c2c@gmail.com>
 <CAEygNrYO8Ji0dqY3-TcUsFJ1CVkCLVX7B09hUudnBJ+JY2UK6g@mail.gmail.com>
 <20f83cf4-3f8a-0729-a5e5-5c07f13e95ca@gmail.com>
 <CAEygNrZ1KAm9U_X5EQCR_nXntLs_ip27-inL_44vxnV5r34a4Q@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEygNrZ1KAm9U_X5EQCR_nXntLs_ip27-inL_44vxnV5r34a4Q@mail.gmail.com>
Message-ID-Hash: NGI7LKEIBWPJU55BZ6JNUNYIDEQNLXXK
X-Message-ID-Hash: NGI7LKEIBWPJU55BZ6JNUNYIDEQNLXXK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NGI7LKEIBWPJU55BZ6JNUNYIDEQNLXXK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6360457087348601431=="

This is a multi-part message in MIME format.
--===============6360457087348601431==
Content-Type: multipart/alternative;
 boundary="------------MCgyd6JtryJ12gxx3J4eASvs"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MCgyd6JtryJ12gxx3J4eASvs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/01/2023 10:19, mychk1 1 wrote:
> I think, Yes
> root@ni-n3xx-31FD9DD:~# uhd_config_info --version
> UHD 4.1.0.0-0-gd21735d5
>
> On the PC
> uhd_config_info --version
> UHD 4.1.0.HEAD-0-gd21735d5
So, my guess is that your OAI code was statically linked against a=20
different version of UHD, or it is configured to use a
 =C2=A0 different set of dynamic libraries.

Try a simple uhd example on your host computer, like the=20
rx_samples_to_file example:


> UHD RX samples to file Allowed options:
> =C2=A0 --help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 help message
> =C2=A0 --args arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 multi =
uhd device address args
> =C2=A0 --file arg (=3Dusrp_samples.dat) name of the file to write binar=
y=20
> samples to
> =C2=A0 --type arg (=3Dshort)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 sample type: double, float, or short
> =C2=A0 --nsamps arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of samples to receive
> =C2=A0 --duration arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 total number of seconds to receive
> =C2=A0 --spb arg (=3D10000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 samples per buffer
> =C2=A0 --rate arg (=3D1000000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 rate of incoming samples
> =C2=A0 --freq arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RF center frequency in Hz
> =C2=A0 --lo-offset arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Offset for frontend LO in Hz (optional)
> =C2=A0 --gain arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gain f=
or the RF chain
> =C2=A0 --ant arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ant=
enna selection
> =C2=A0 --subdev arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subdevice specific=
ation
> =C2=A0 --channel arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 which channel to use
> =C2=A0 --bw arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 analog frontend filter bandwidth in Hz
> =C2=A0 --ref arg (=3Dinternal)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 reference source (internal, external,=20
> mimo)
> =C2=A0 --wirefmt arg (=3Dsc16)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 wire format (sc8, sc16 or s16)
> =C2=A0 --setup arg (=3D1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seconds of setup time
> =C2=A0 --progress=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 period=
ically display short-term bandwidth
> =C2=A0 --stats=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 show average bandwidth on exit
> =C2=A0 --sizemap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tra=
ck packet size and display=20
> breakdown on
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit
> =C2=A0 --null=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 run without writing to file
> =C2=A0 --continue=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 don't =
abort on a bad packet
> =C2=A0 --skip-lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ski=
p checking LO lock status
> =C2=A0 --int-n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 tune USRP with integer-N tuning
>
>
> This application streams data from a single channel of a USRP device=20
> to a file.
>
> On Tue, Jan 17, 2023 at 5:07 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 17/01/2023 09:51, mychk1 1 wrote:
>>     Yes, I'm running OAI on a workstation.
>     Run:
>
>     uhd_config_info --version
>
>     on BOTH your PC and the N310 -- do they match?
>
>
>>
>>     I already updated the SDCard using this command:
>>     >>
>>     sudo dd if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg
>>     of=3D/dev/sdb bs=3D1M
>>     <<
>>     and get this output:
>>     >>
>>     =C2=A0=C2=A0 15160+0 records in
>>     =C2=A0 =C2=A015160+0 records out
>>     =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) copied, 1160.93 s, =
13.7 MB/s
>>     <<
>>     But the MPM Version still 4 not 4.2.
>>
>>     what do you think?
>>
>>
>>     BR,
>>
>>     On Tue, Jan 17, 2023 at 4:35 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 17/01/2023 06:28, mychk1 1 wrote:
>>>
>>>         Hello Community,
>>>
>>>         I using the USRP N310 with openairinterface5G code.
>>>
>>>         recently,=C2=A0 I faced an error called updating MPM version.=
 Is
>>>         there a commend to update MPM version?
>>>
>>>         [INFO] [MPM.main] Launching USRP/MPM, version: 4.1.0.0-gd2173=
5d5
>>>         [INFO] [MPM.main] Spawning RPC process...
>>>         [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
>>>         [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
>>>         [INFO] [MPM.PeriphManager] init() called with device args
>>>         `clock_source=3Dinternal,time_source=3Dinternal'.
>>>         [INFO] [MPM.RPCServer] RPC server ready!
>>>         [INFO] [MPM.RPCServer] Spawning watchdog task...
>>>         [ERROR] [MPMD] MPM minor compat number mismatch. Expected:
>>>         4.2 Actual: 4.0. Please update the version of MPM on your
>>>         USRP device.
>>>         terminate called after throwing an instance of
>>>         'uhd::runtime_error'
>>>         =C2=A0 what(): =C2=A0RuntimeError: MPM minor compat number mi=
smatch.
>>>         Expected: 4.2 Actual: 4.0. Please update the version of MPM
>>>         on your USRP device.
>>>         Aborted
>>>
>>>
>>>
>>>         Some useful logs:
>>>         =C2=A0- In the host : uhd_usrp_probe
>>>         [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>>         UHD_4.1.0.HEAD-0-gd21735d5
>>>         [INFO] [MPMD] Initializing 1 device(s) in parallel with
>>>         args:
>>>         mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D=
31FD9DD,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2
>>>         [WARNING] [MPM.RPCServer] A timeout event occured!
>>>         [INFO] [MPM.PeriphManager] init() called with device args
>>>         `fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_sou=
rce=3Dinternal,time_source=3Dinternal'.
>>>         _____________________________________________________
>>>         =C2=A0/
>>>         | =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device
>>>         | _____________________________________________________
>>>         | =C2=A0 =C2=A0/
>>>         | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-31FD9DD
>>>         | =C2=A0 | =C2=A0 dboard_0_pid: 336
>>>         | =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC8
>>>         | =C2=A0 | =C2=A0 dboard_1_pid: 336
>>>         | =C2=A0 | =C2=A0 dboard_1_serial: 31F6BF2
>>>         | =C2=A0 | =C2=A0 eeprom_version: 3
>>>         | =C2=A0 | =C2=A0 fs_version: 20210630170909
>>>         | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.0_n3xx
>>>         | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.0-gd21735d5
>>>         | =C2=A0 | =C2=A0 pid: 16962
>>>         | =C2=A0 | =C2=A0 product: n310
>>>         | =C2=A0 | =C2=A0 rev: 10
>>>         | =C2=A0 | =C2=A0 rpc_connection: remote
>>>         | =C2=A0 | =C2=A0 serial: 31FD9DD
>>>         | =C2=A0 | =C2=A0 type: n3xx
>>>         | =C2=A0 | =C2=A0 MPM Version: 4.0
>>>         | =C2=A0 | =C2=A0 FPGA Version: 8.0
>>>         | =C2=A0 | =C2=A0 FPGA git hash: d5c2750.clean
>>>         | =C2=A0 |
>>>         | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gps=
do, sfp0
>>>         | =C2=A0 | =C2=A0 Clock sources: external, internal, gpsdo
>>>         | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp, fan,
>>>         gps_gpgga, gps_sky, gps_time, gps_tpv
>>>         | _____________________________________________________
>>>
>>>
>>>
>>>         - The UHD version SD-card attached with the USRP
>>>
>>>         root@ni-n3xx-31FD9DD:~# uhd_config_info --version
>>>         UHD 4.1.0.0-0-gd21735d5
>>>
>>>         BR,
>>>         Marcin
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om
>>         To clarify.
>>
>>         You're running OAI on a PC, attached to the N310?
>>
>>         The N310 system image can be easily updated:
>>
>>         https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_=
Guide#Updating_the_files_system_by_writing_the_disk_image
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>

--------------MCgyd6JtryJ12gxx3J4eASvs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/01/2023 10:19, mychk1 1 wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEygNrZ1KAm9U_X5EQCR_nXntLs_ip27-inL_44vxnV5r34a4Q@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I think, Yes <br>
        root@ni-n3xx-31FD9DD:~# uhd_config_info --version<br>
        <div>UHD 4.1.0.0-0-gd21735d5</div>
        <div><br>
          On the PC<br>
        </div>
        <div>uhd_config_info --version<br>
          UHD 4.1.0.HEAD-0-gd21735d5<br>
        </div>
      </div>
    </blockquote>
    So, my guess is that your OAI code was statically linked against a
    different version of UHD, or it is configured to use a<br>
    =C2=A0 different set of dynamic libraries.<br>
    <br>
    Try a simple uhd example on your host computer, like the
    rx_samples_to_file example:<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEygNrZ1KAm9U_X5EQCR_nXntLs_ip27-inL_44vxnV5r34a4Q@mail.gmai=
l.com">UHD
      RX samples to file Allowed options:<br>
      =C2=A0 --help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 help message<br>
      =C2=A0 --args arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mul=
ti uhd device address args<br>
      =C2=A0 --file arg (=3Dusrp_samples.dat) name of the file to write b=
inary
      samples to<br>
      =C2=A0 --type arg (=3Dshort)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample type: double, float, or
      short<br>
      =C2=A0 --nsamps arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of samples to
      receive<br>
      =C2=A0 --duration arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of seconds to
      receive<br>
      =C2=A0 --spb arg (=3D10000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 samples per buffer<br>
      =C2=A0 --rate arg (=3D1000000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 rate of incoming samples<br>
      =C2=A0 --freq arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RF center frequency in Hz<b=
r>
      =C2=A0 --lo-offset arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Offset for frontend LO in Hz
      (optional)<br>
      =C2=A0 --gain arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gai=
n for the RF chain<br>
      =C2=A0 --ant arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 antenna selection<br>
      =C2=A0 --subdev arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subdevice sp=
ecification<br>
      =C2=A0 --channel arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 which channel to use<br>
      =C2=A0 --bw arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 analog frontend filter bandwidth
      in Hz<br>
      =C2=A0 --ref arg (=3Dinternal)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 reference source (internal,
      external, mimo)<br>
      =C2=A0 --wirefmt arg (=3Dsc16)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 wire format (sc8, sc16 or s16)<br>
      =C2=A0 --setup arg (=3D1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seconds of setup time<br>
      =C2=A0 --progress=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 per=
iodically display short-term
      bandwidth<br>
      =C2=A0 --stats=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 show average bandwidth on exit<br>
      =C2=A0 --sizemap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 track packet size and display
      breakdown on <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit<br>
      =C2=A0 --null=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 run without writing to file<br>
      =C2=A0 --continue=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 don=
't abort on a bad packet<br>
      =C2=A0 --skip-lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 skip checking LO lock status<br>
      =C2=A0 --int-n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 tune USRP with integer-N tuning<br>
      <br>
      <br>
      This application streams data from a single channel of a USRP
      device to a file.<br>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 2023 at 5:0=
7
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 17/01/2023 09:51, mychk1 1 wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div>
                    <div>Yes, I'm running OAI on a workstation. <br>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            Run:<br>
            <br>
            uhd_config_info --version<br>
            <br>
            on BOTH your PC and the N310 -- do they match?<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div>
                    <div><br>
                    </div>
                    I already updated the SDCard using this command: <br>
                    &gt;&gt;<br>
                    sudo dd
                    if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg
                    of=3D/dev/sdb bs=3D1M<br>
                    &lt;&lt;<br>
                  </div>
                  <div>and get this output: <br>
                  </div>
                  <div>&gt;&gt;<br>
                    =C2=A0=C2=A0 15160+0 records in<br>
                    =C2=A0 =C2=A015160+0 records out<br>
                    =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) copied=
, 1160.93
                    s, 13.7 MB/s</div>
                  <div>&lt;&lt;<br>
                  </div>
                  But the MPM Version still 4 not 4.2.<br>
                  <br>
                </div>
                <div>what do you think? <br>
                </div>
                <div><br>
                </div>
                <div><br>
                </div>
                BR,<br>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 202=
3
                  at 4:35 PM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 17/01/2023 06:28, mychk1 1 wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div><br>
                        </div>
                        <div>Hello Community, <br>
                          <br>
                        </div>
                        <div>I using the USRP N310 with
                          openairinterface5G code. <br>
                          <br>
                        </div>
                        <div>recently,=C2=A0 I faced an error called upda=
ting
                          MPM version. Is there a commend to update MPM
                          version? <br>
                          <br>
                          [INFO] [MPM.main] Launching USRP/MPM, version:
                          4.1.0.0-gd21735d5<br>
                          [INFO] [MPM.main] Spawning RPC process...<br>
                          [INFO] [MPM.PeriphManager] Device serial
                          number: 31FD9DD<br>
                          [INFO] [MPM.PeriphManager] Initialized 2
                          daughterboard(s).<br>
                          [INFO] [MPM.PeriphManager] init() called with
                          device args
                          `clock_source=3Dinternal,time_source=3Dinternal=
'.<br>
                          [INFO] [MPM.RPCServer] RPC server ready!<br>
                          [INFO] [MPM.RPCServer] Spawning watchdog
                          task...<br>
                          <span style=3D"color:rgb(255,0,0)">[ERROR]
                            [MPMD] MPM minor compat number mismatch.
                            Expected: 4.2 Actual: 4.0. Please update the
                            version of MPM on your USRP device.</span><br=
>
                          terminate called after throwing an instance of
                          'uhd::runtime_error'<br>
                          =C2=A0 what(): =C2=A0RuntimeError: MPM minor co=
mpat
                          number mismatch. Expected: 4.2 Actual: 4.0.
                          Please update the version of MPM on your USRP
                          device.<br>
                          Aborted<br>
                          <br>
                          <br>
                          <br>
                        </div>
                        <div>Some useful logs: <br>
                        </div>
                        <div>=C2=A0- In the host : uhd_usrp_probe <br>
                          <div>
                            <div>
                              <div>
                                <div>[INFO] [UHD] linux; GNU C++ version
                                  7.5.0; Boost_106501;
                                  UHD_4.1.0.HEAD-0-gd21735d5<br>
                                  [INFO] [MPMD] Initializing 1 device(s)
                                  in parallel with args:
mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpg=
a=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>
                                  [WARNING] [MPM.RPCServer] A timeout
                                  event occured!<br>
                                  [INFO] [MPM.PeriphManager] init()
                                  called with device args
`fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dintern=
al,time_source=3Dinternal'.<br>
                                  =C2=A0
                                  _______________________________________=
______________<br>
                                  =C2=A0/<br>
                                  | =C2=A0 =C2=A0 =C2=A0 Device: N300-Ser=
ies Device<br>
                                  | =C2=A0 =C2=A0
                                  _______________________________________=
______________<br>
                                  | =C2=A0 =C2=A0/<br>
                                  | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard:=
 ni-n3xx-31FD9DD<br>
                                  | =C2=A0 | =C2=A0 dboard_0_pid: 336<br>
                                  | =C2=A0 | =C2=A0 dboard_0_serial: 31F6=
BC8<br>
                                  | =C2=A0 | =C2=A0 dboard_1_pid: 336<br>
                                  | =C2=A0 | =C2=A0 dboard_1_serial: 31F6=
BF2<br>
                                  | =C2=A0 | =C2=A0 eeprom_version: 3<br>
                                  | =C2=A0 | =C2=A0 fs_version: 202106301=
70909<br>
                                  | =C2=A0 | =C2=A0 mender_artifact: v4.1=
.0.0_n3xx<br>
                                  | =C2=A0 | =C2=A0 mpm_sw_version:
                                  4.1.0.0-gd21735d5<br>
                                  | =C2=A0 | =C2=A0 pid: 16962<br>
                                  | =C2=A0 | =C2=A0 product: n310<br>
                                  | =C2=A0 | =C2=A0 rev: 10<br>
                                  | =C2=A0 | =C2=A0 rpc_connection: remot=
e<br>
                                  | =C2=A0 | =C2=A0 serial: 31FD9DD<br>
                                  | =C2=A0 | =C2=A0 type: n3xx<br>
                                  | =C2=A0 | =C2=A0 MPM Version: 4.0<br>
                                  | =C2=A0 | =C2=A0 FPGA Version: 8.0<br>
                                  | =C2=A0 | =C2=A0 FPGA git hash: d5c275=
0.clean<br>
                                  | =C2=A0 | =C2=A0 <br>
                                  | =C2=A0 | =C2=A0 Time sources: =C2=A0i=
nternal,
                                  external, gpsdo, sfp0<br>
                                  | =C2=A0 | =C2=A0 Clock sources: extern=
al,
                                  internal, gpsdo<br>
                                  | =C2=A0 | =C2=A0 Sensors: ref_locked,
                                  gps_locked, temp, fan, gps_gpgga,
                                  gps_sky, gps_time, gps_tpv<br>
                                  | =C2=A0 =C2=A0
                                  _______________________________________=
______________</div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                                <div>- The UHD version SD-card attached
                                  with the USRP <br>
                                  <br>
                                  root@ni-n3xx-31FD9DD:~#
                                  uhd_config_info --version<br>
                                  UHD 4.1.0.0-0-gd21735d5</div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div><br>
                        </div>
                        <div>BR,<br>
                        </div>
                        <div>Marcin <br>
                        </div>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
                    </blockquote>
                    To clarify.<br>
                    <br>
                    You're running OAI on a PC, attached to the N310?<br>
                    <br>
                    The N310 system image can be easily updated:<br>
                    <br>
                    <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Updating_the_files_system_by_writing_the_disk_image"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://kb.ettus.co=
m/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_files_syste=
m_by_writing_the_disk_image</a><br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------MCgyd6JtryJ12gxx3J4eASvs--

--===============6360457087348601431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6360457087348601431==--
