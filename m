Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C98672153
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 16:32:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F14B384577
	for <lists+usrp-users@lfdr.de>; Wed, 18 Jan 2023 10:32:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674055972; bh=Z5ZQ2YOpaxt1L2C56E0PvvEW3HOpt779tc3GJu33mXU=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ut4sd4p+rZ0FRsxQNS8+Vet/f70L0hj8gle/E4pCCt2HNDtCXq68BrSSYZMtaQVzU
	 W7PTvK6RmqHwFY3LgpK2aQfUJ8AHi68rxFb26xOD0qFChziRqPcSU2v5htOTjrxUYl
	 urD4EePbVMhgcwOnkgnlwnuLJAoTwDN6NMNaQBwHg2gtYfyRZJQvtkuD/EsWwU89ih
	 uwroVmzz6lorgN/k/jclcutMndJvKr7hq8tryKb3ftchBMbIhmMnUC9tbitsiMvJts
	 KciCzWD0Ys3XsUPJIIqG+uTFvm2lo60JaHUJjGmvEBXXRBeo3HH1GZImJLXdJp8I0W
	 2CzOJOfPjrk/w==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 96C99383D08
	for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 10:32:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nOXnvnO1";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id d16so17131518qtw.8
        for <usrp-users@lists.ettus.com>; Wed, 18 Jan 2023 07:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=exSsCkHGEl9CpE5NXE2abQhYh/KQjgxG0CIE6VglqKw=;
        b=nOXnvnO1V+YYb39dMXSZQ92Jw7SEMbT5flYKAYpVFwLZh+RXVLylVRXr6JqeuoVcfj
         FhUbnNSW4hZqcGbSR7clL/GURZQrgTmJIon7mLtTLiKrEWMAfohq3eepbglAEXX3rwEM
         kCsAjpkCq5RfPoRh5KMd5fsRhFtvGbaFr/DUDTsaYqvre9AL6VMPXtB+o/LdlLxP7fRX
         qYU5e4pgyEZUVvw9lHRgeav5XUatj/7Ya5H+gRFiVDriGKxnpXrm5o1dJHctVyzbqSJf
         pjnB5ltbuEQGd/0dvzC9n3yTo10oeZmtA+yFwMovFLF5y/9MGw1snJ8tuVbw2Io5HdUo
         XZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=exSsCkHGEl9CpE5NXE2abQhYh/KQjgxG0CIE6VglqKw=;
        b=yGh44PwUM5LPzeTmFtjaIWpXZW6SeH6Ll6aWLsIFfxj/9fHi7WZCyqHfjJXKDpEabx
         ncVrtHa3PjtBGHpp6yyEniR/bguAri+inuw/CWa2iyr81A4UjJnN4RC4eCNOC3/06Ch2
         8eHoAsU23CjEUbH+w0Uy+D8VGInQA/0MN5uBLm0rjg2m/hK4Q48ZI8SiOIMgHVIrmAIp
         gwtJR6L2ddos1TV76EkhJcJzhptd5noFPmRa5p6MVWzVlsVi6/kUpbakoYY+DjiaRYqB
         594bmiISwIIH/IJcTpJSb4+HXivz1nfLvfwJnLWBxR5gkdBl4fOvKVnjJcjY18TMdCjj
         CbOA==
X-Gm-Message-State: AFqh2kqWuQBwcMV3/S0GWtWZO8Bvtn6qLQ1V+7nbat3dwGw0GbJxax4a
	EudHFLQQmha0hCrr/9I2bWY=
X-Google-Smtp-Source: AMrXdXu8Ujqcix/4Y9WBH4/oorDigAdNYoqFcVnK2gn7V5LMXcyrUWGzU9rMDHtI0udR+lBaGXXleQ==
X-Received: by 2002:ac8:5ed2:0:b0:3b6:313a:f461 with SMTP id s18-20020ac85ed2000000b003b6313af461mr9154446qtx.65.1674055963870;
        Wed, 18 Jan 2023 07:32:43 -0800 (PST)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id e26-20020ac8491a000000b003b62fcd6d50sm2219845qtq.28.2023.01.18.07.32.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 07:32:43 -0800 (PST)
Message-ID: <d0ebe026-1452-9867-e867-dafacce9288f@gmail.com>
Date: Wed, 18 Jan 2023 10:32:42 -0500
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
 <78fc5b80-da7f-bb4b-df33-388f02af5ee2@gmail.com>
 <CAEygNrZYaHU1mHBnVET8MPdYB7GEspHcFuf+aTEu4i6G8c936A@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEygNrZYaHU1mHBnVET8MPdYB7GEspHcFuf+aTEu4i6G8c936A@mail.gmail.com>
Message-ID-Hash: 4V5RVLLPJJTBFMJ2IAIVZ65FHUS6Y2RC
X-Message-ID-Hash: 4V5RVLLPJJTBFMJ2IAIVZ65FHUS6Y2RC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM compat error using USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4V5RVLLPJJTBFMJ2IAIVZ65FHUS6Y2RC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0257392796901553939=="

This is a multi-part message in MIME format.
--===============0257392796901553939==
Content-Type: multipart/alternative;
 boundary="------------Vk9I6g5ra2NVPerMsDFUsoXH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Vk9I6g5ra2NVPerMsDFUsoXH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/01/2023 06:58, mychk1 1 wrote:
> Thank you for your suggestion.
>
> I ran this example:
>     ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20 --duration 10=
 usrp_samples.dat
>
> The response with the following warning:
The warnings aren't important in this case.=C2=A0 What this means is that=
=20
your PC and N310 versions of UHD are compatible and
 =C2=A0 working properly with each other.

This also implies that your OAI is using a different version of=20
UHD--either it's bundled into a container that uses different
 =C2=A0 versions of the library, or it was statically linked against a=20
different version of UHD.=C2=A0 Since I personally know NOTHING
 =C2=A0 about OAI, that's as far as *I* can take you, but perhaps others =
on=20
this list have some insights into it.


>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD=
-0-gd21735d5
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=3DHG,cl=
aimed=3DFalse,addr=3D192.168.10.2
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,mg=
mt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dinternal,time_sourc=
e=3Dinternal'.
> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
> Using Device: Single USRP:
>  =C2=A0 Device: N300-Series Device
>  =C2=A0 Mboard 0: n310
>  =C2=A0 RX Channel: 0
>  =C2=A0 =C2=A0 RX DSP: 0
>  =C2=A0 =C2=A0 RX Dboard: A
>  =C2=A0 =C2=A0 RX Subdev: Magnesium
>  =C2=A0 RX Channel: 1
>  =C2=A0 =C2=A0 RX DSP: 1
>  =C2=A0 =C2=A0 RX Dboard: A
>  =C2=A0 =C2=A0 RX Subdev: Magnesium
>  =C2=A0 RX Channel: 2
>  =C2=A0 =C2=A0 RX DSP: 2
>  =C2=A0 =C2=A0 RX Dboard: B
>  =C2=A0 =C2=A0 RX Subdev: Magnesium
>  =C2=A0 RX Channel: 3
>  =C2=A0 =C2=A0 RX DSP: 3
>  =C2=A0 =C2=A0 RX Dboard: B
>  =C2=A0 =C2=A0 RX Subdev: Magnesium
>  =C2=A0 TX Channel: 0
>  =C2=A0 =C2=A0 TX DSP: 0
>  =C2=A0 =C2=A0 TX Dboard: A
>  =C2=A0 =C2=A0 TX Subdev: Magnesium
>  =C2=A0 TX Channel: 1
>  =C2=A0 =C2=A0 TX DSP: 1
>  =C2=A0 =C2=A0 TX Dboard: A
>  =C2=A0 =C2=A0 TX Subdev: Magnesium
>  =C2=A0 TX Channel: 2
>  =C2=A0 =C2=A0 TX DSP: 2
>  =C2=A0 =C2=A0 TX Dboard: B
>  =C2=A0 =C2=A0 TX Subdev: Magnesium
>  =C2=A0 TX Channel: 3
>  =C2=A0 =C2=A0 TX DSP: 3
>  =C2=A0 =C2=A0 TX Dboard: B
>  =C2=A0 =C2=A0 TX Subdev: Magnesium
>
> Setting RX Rate: 5.000000 Msps...
> [WARNING] [0/DDC#0] The requested decimation is odd; the user should=20
> expect passband CIC rolloff. Select an even decimation to ensure that=20
> a halfband filter is enabled. Decimations factorable by 4 will enable=20
> 2 halfbands, those factorable by 8 will enable 3 halfbands. decimation=20
> =3D dsp_rate/samp_rate -> 25 [WARNING] [0/DDC#0] The requested=20
> decimation is odd; the user should expect passband CIC rolloff. Select=20
> an even decimation to ensure that a halfband filter is enabled.=20
> Decimations factorable by 4 will enable 2 halfbands, those factorable=20
> by 8 will enable 3 halfbands. decimation =3D dsp_rate/samp_rate -> 25=20
> Actual RX Rate: 5.000000 Msps...
>
> Setting RX Freq: 98.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> Actual RX Freq: 98.000000 MHz...
>
> Setting RX Gain: 20.000000 dB...
> Actual RX Gain: 20.000000 dB...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
> DGot an overflow indication. Please consider the following:
>  =C2=A0 Your write medium must sustain a rate of 20.000000MB/s.
>  =C2=A0 Dropped samples will not be written to the file.
>  =C2=A0 Please modify this example for your purposes.
>  =C2=A0 This message will not appear again.
>
> Done!
>
> On Tue, Jan 17, 2023 at 5:51 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 17/01/2023 10:19, mychk1 1 wrote:
>>     I think, Yes
>>     root@ni-n3xx-31FD9DD:~# uhd_config_info --version
>>     UHD 4.1.0.0-0-gd21735d5
>>
>>     On the PC
>>     uhd_config_info --version
>>     UHD 4.1.0.HEAD-0-gd21735d5
>     So, my guess is that your OAI code was statically linked against a
>     different version of UHD, or it is configured to use a
>     =C2=A0 different set of dynamic libraries.
>
>     Try a simple uhd example on your host computer, like the
>     rx_samples_to_file example:
>
>
>>     UHD RX samples to file Allowed options:
>>     =C2=A0 --help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 help message
>>     =C2=A0 --args arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mul=
ti uhd device address args
>>     =C2=A0 --file arg (=3Dusrp_samples.dat) name of the file to write =
binary
>>     samples to
>>     =C2=A0 --type arg (=3Dshort)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample type: double, float, or short
>>     =C2=A0 --nsamps arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of samples to receive
>>     =C2=A0 --duration arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of seconds to receive
>>     =C2=A0 --spb arg (=3D10000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 samples per buffer
>>     =C2=A0 --rate arg (=3D1000000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 rate of incoming samples
>>     =C2=A0 --freq arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RF center frequency in H=
z
>>     =C2=A0 --lo-offset arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Offset for frontend LO in Hz
>>     (optional)
>>     =C2=A0 --gain arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gai=
n for the RF chain
>>     =C2=A0 --ant arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 antenna selection
>>     =C2=A0 --subdev arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subdevice sp=
ecification
>>     =C2=A0 --channel arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 which channel to use
>>     =C2=A0 --bw arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 analog frontend filter bandwidth
>>     in Hz
>>     =C2=A0 --ref arg (=3Dinternal)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 reference source (internal,
>>     external, mimo)
>>     =C2=A0 --wirefmt arg (=3Dsc16)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 wire format (sc8, sc16 or s16)
>>     =C2=A0 --setup arg (=3D1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seconds of setup time
>>     =C2=A0 --progress=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 per=
iodically display short-term
>>     bandwidth
>>     =C2=A0 --stats=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 show average bandwidth on exit
>>     =C2=A0 --sizemap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 track packet size and display
>>     breakdown on
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit
>>     =C2=A0 --null=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 run without writing to file
>>     =C2=A0 --continue=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 don=
't abort on a bad packet
>>     =C2=A0 --skip-lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 skip checking LO lock status
>>     =C2=A0 --int-n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 tune USRP with integer-N tuning
>>
>>
>>     This application streams data from a single channel of a USRP
>>     device to a file.
>>
>>     On Tue, Jan 17, 2023 at 5:07 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 17/01/2023 09:51, mychk1 1 wrote:
>>>         Yes, I'm running OAI on a workstation.
>>         Run:
>>
>>         uhd_config_info --version
>>
>>         on BOTH your PC and the N310 -- do they match?
>>
>>
>>>
>>>         I already updated the SDCard using this command:
>>>         >>
>>>         sudo dd if=3D/usr/local/share/uhd/images/usrp_n3xx_fs.sdimg
>>>         of=3D/dev/sdb bs=3D1M
>>>         <<
>>>         and get this output:
>>>         >>
>>>         =C2=A0=C2=A0 15160+0 records in
>>>         =C2=A0 =C2=A015160+0 records out
>>>         =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB) copied, 1160.9=
3 s, 13.7
>>>         MB/s
>>>         <<
>>>         But the MPM Version still 4 not 4.2.
>>>
>>>         what do you think?
>>>
>>>
>>>         BR,
>>>
>>>         On Tue, Jan 17, 2023 at 4:35 PM Marcus D. Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             On 17/01/2023 06:28, mychk1 1 wrote:
>>>>
>>>>             Hello Community,
>>>>
>>>>             I using the USRP N310 with openairinterface5G code.
>>>>
>>>>             recently,=C2=A0 I faced an error called updating MPM
>>>>             version. Is there a commend to update MPM version?
>>>>
>>>>             [INFO] [MPM.main] Launching USRP/MPM, version:
>>>>             4.1.0.0-gd21735d5
>>>>             [INFO] [MPM.main] Spawning RPC process...
>>>>             [INFO] [MPM.PeriphManager] Device serial number: 31FD9DD
>>>>             [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s=
).
>>>>             [INFO] [MPM.PeriphManager] init() called with device
>>>>             args `clock_source=3Dinternal,time_source=3Dinternal'.
>>>>             [INFO] [MPM.RPCServer] RPC server ready!
>>>>             [INFO] [MPM.RPCServer] Spawning watchdog task...
>>>>             [ERROR] [MPMD] MPM minor compat number mismatch.
>>>>             Expected: 4.2 Actual: 4.0. Please update the version of
>>>>             MPM on your USRP device.
>>>>             terminate called after throwing an instance of
>>>>             'uhd::runtime_error'
>>>>             =C2=A0 what(): =C2=A0RuntimeError: MPM minor compat numb=
er
>>>>             mismatch. Expected: 4.2 Actual: 4.0. Please update the
>>>>             version of MPM on your USRP device.
>>>>             Aborted
>>>>
>>>>
>>>>
>>>>             Some useful logs:
>>>>             =C2=A0- In the host : uhd_usrp_probe
>>>>             [INFO] [UHD] linux; GNU C++ version 7.5.0;
>>>>             Boost_106501; UHD_4.1.0.HEAD-0-gd21735d5
>>>>             [INFO] [MPMD] Initializing 1 device(s) in parallel with
>>>>             args:
>>>>             mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,ser=
ial=3D31FD9DD,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2
>>>>             [WARNING] [MPM.RPCServer] A timeout event occured!
>>>>             [INFO] [MPM.PeriphManager] init() called with device
>>>>             args
>>>>             `fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,cloc=
k_source=3Dinternal,time_source=3Dinternal'.
>>>>             _____________________________________________________
>>>>             =C2=A0/
>>>>             | =C2=A0 =C2=A0 =C2=A0 Device: N300-Series Device
>>>>             | _____________________________________________________
>>>>             | =C2=A0 =C2=A0/
>>>>             | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-n3xx-31FD9DD
>>>>             | =C2=A0 | =C2=A0 dboard_0_pid: 336
>>>>             | =C2=A0 | =C2=A0 dboard_0_serial: 31F6BC8
>>>>             | =C2=A0 | =C2=A0 dboard_1_pid: 336
>>>>             | =C2=A0 | =C2=A0 dboard_1_serial: 31F6BF2
>>>>             | =C2=A0 | =C2=A0 eeprom_version: 3
>>>>             | =C2=A0 | =C2=A0 fs_version: 20210630170909
>>>>             | =C2=A0 | =C2=A0 mender_artifact: v4.1.0.0_n3xx
>>>>             | =C2=A0 | =C2=A0 mpm_sw_version: 4.1.0.0-gd21735d5
>>>>             | =C2=A0 | =C2=A0 pid: 16962
>>>>             | =C2=A0 | =C2=A0 product: n310
>>>>             | =C2=A0 | =C2=A0 rev: 10
>>>>             | =C2=A0 | =C2=A0 rpc_connection: remote
>>>>             | =C2=A0 | =C2=A0 serial: 31FD9DD
>>>>             | =C2=A0 | =C2=A0 type: n3xx
>>>>             | =C2=A0 | =C2=A0 MPM Version: 4.0
>>>>             | =C2=A0 | =C2=A0 FPGA Version: 8.0
>>>>             | =C2=A0 | =C2=A0 FPGA git hash: d5c2750.clean
>>>>             | =C2=A0 |
>>>>             | =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external=
, gpsdo, sfp0
>>>>             | =C2=A0 | =C2=A0 Clock sources: external, internal, gps=
do
>>>>             | =C2=A0 | =C2=A0 Sensors: ref_locked, gps_locked, temp,=
 fan,
>>>>             gps_gpgga, gps_sky, gps_time, gps_tpv
>>>>             | _____________________________________________________
>>>>
>>>>
>>>>
>>>>             - The UHD version SD-card attached with the USRP
>>>>
>>>>             root@ni-n3xx-31FD9DD:~# uhd_config_info --version
>>>>             UHD 4.1.0.0-0-gd21735d5
>>>>
>>>>             BR,
>>>>             Marcin
>>>>
>>>>             _______________________________________________
>>>>             USRP-users mailing list --usrp-users@lists.ettus.com
>>>>             To unsubscribe send an email tousrp-users-leave@lists.et=
tus.com
>>>             To clarify.
>>>
>>>             You're running OAI on a PC, attached to the N310?
>>>
>>>             The N310 system image can be easily updated:
>>>
>>>             https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Sta=
rted_Guide#Updating_the_files_system_by_writing_the_disk_image
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>
>>
>

--------------Vk9I6g5ra2NVPerMsDFUsoXH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/01/2023 06:58, mychk1 1 wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEygNrZYaHU1mHBnVET8MPdYB7GEspHcFuf+aTEu4i6G8c936A@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Thank you for your suggestion.<br>
        </div>
        <div><br>
        </div>
        <div>I ran this example: <br>
          <pre>   ./rx_samples_to_file --freq 98e6 --rate 5e6 --gain 20 -=
-duration 10 usrp_samples.dat

</pre>
          <pre>The response with the following warning:
</pre>
        </div>
      </div>
    </blockquote>
    The warnings aren't important in this case.=C2=A0 What this means is =
that
    your PC and N310 versions of UHD are compatible and<br>
    =C2=A0 working properly with each other. <br>
    <br>
    This also implies that your OAI is using a different version of
    UHD--either it's bundled into a container that uses different<br>
    =C2=A0 versions of the library, or it was statically linked against a
    different version of UHD.=C2=A0 Since I personally know NOTHING<br>
    =C2=A0 about OAI, that's as far as *I* can take you, but perhaps othe=
rs
    on this list have some insights into it.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEygNrZYaHU1mHBnVET8MPdYB7GEspHcFuf+aTEu4i6G8c936A@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>
          <pre>

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.HEAD-0=
-gd21735d5
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D=
10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpga=3DHG,claim=
ed=3DFalse,addr=3D192.168.10.2
[WARNING] [MPM.RPCServer] A timeout event occured!
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,mgmt=
_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dinternal,time_source=3D=
internal'.
[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
Using Device: Single USRP:
=C2=A0 Device: N300-Series Device
=C2=A0 Mboard 0: n310
=C2=A0 RX Channel: 0
=C2=A0 =C2=A0 RX DSP: 0
=C2=A0 =C2=A0 RX Dboard: A
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 RX Channel: 1
=C2=A0 =C2=A0 RX DSP: 1
=C2=A0 =C2=A0 RX Dboard: A
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 RX Channel: 2
=C2=A0 =C2=A0 RX DSP: 2
=C2=A0 =C2=A0 RX Dboard: B
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 RX Channel: 3
=C2=A0 =C2=A0 RX DSP: 3
=C2=A0 =C2=A0 RX Dboard: B
=C2=A0 =C2=A0 RX Subdev: Magnesium
=C2=A0 TX Channel: 0
=C2=A0 =C2=A0 TX DSP: 0
=C2=A0 =C2=A0 TX Dboard: A
=C2=A0 =C2=A0 TX Subdev: Magnesium
=C2=A0 TX Channel: 1
=C2=A0 =C2=A0 TX DSP: 1
=C2=A0 =C2=A0 TX Dboard: A
=C2=A0 =C2=A0 TX Subdev: Magnesium
=C2=A0 TX Channel: 2
=C2=A0 =C2=A0 TX DSP: 2
=C2=A0 =C2=A0 TX Dboard: B
=C2=A0 =C2=A0 TX Subdev: Magnesium
=C2=A0 TX Channel: 3
=C2=A0 =C2=A0 TX DSP: 3
=C2=A0 =C2=A0 TX Dboard: B
=C2=A0 =C2=A0 TX Subdev: Magnesium

Setting RX Rate: 5.000000 Msps...
<span style=3D"color:rgb(127,96,0)">[WARNING] [0/DDC#0] The requested dec=
imation is odd; the user should expect passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8 will enable 3 halfbands.
decimation =3D dsp_rate/samp_rate -&gt; 25
[WARNING] [0/DDC#0] The requested decimation is odd; the user should expe=
ct passband CIC rolloff.
Select an even decimation to ensure that a halfband filter is enabled.
Decimations factorable by 4 will enable 2 halfbands, those factorable by =
8 will enable 3 halfbands.
decimation =3D dsp_rate/samp_rate -&gt; 25
Actual RX Rate: 5.000000 Msps...</span>

Setting RX Freq: 98.000000 MHz...
Setting RX LO Offset: 0.000000 MHz...
Actual RX Freq: 98.000000 MHz...

Setting RX Gain: 20.000000 dB...
Actual RX Gain: 20.000000 dB...

Waiting for "lo_locked": ++++++++++ locked.

Press Ctrl + C to stop streaming...
DGot an overflow indication. Please consider the following:
=C2=A0 Your write medium must sustain a rate of 20.000000MB/s.
=C2=A0 Dropped samples will not be written to the file.
=C2=A0 Please modify this example for your purposes.
=C2=A0 This message will not appear again.

Done!
</pre>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 2023 at 5:5=
1
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
            <div>On 17/01/2023 10:19, mychk1 1 wrote:<br>
            </div>
            <blockquote type=3D"cite">
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
            So, my guess is that your OAI code was statically linked
            against a different version of UHD, or it is configured to
            use a<br>
            =C2=A0 different set of dynamic libraries.<br>
            <br>
            Try a simple uhd example on your host computer, like the
            rx_samples_to_file example:<br>
            <br>
            <br>
            <blockquote type=3D"cite">UHD RX samples to file Allowed
              options:<br>
              =C2=A0 --help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 help message<br>
              =C2=A0 --args arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 multi uhd device address
              args<br>
              =C2=A0 --file arg (=3Dusrp_samples.dat) name of the file to=
 write
              binary samples to<br>
              =C2=A0 --type arg (=3Dshort)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sample type: double,
              float, or short<br>
              =C2=A0 --nsamps arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of samples
              to receive<br>
              =C2=A0 --duration arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 total number of seconds
              to receive<br>
              =C2=A0 --spb arg (=3D10000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 samples per buffer<br>
              =C2=A0 --rate arg (=3D1000000)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 rate of incoming samples<br>
              =C2=A0 --freq arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RF center frequenc=
y in Hz<br>
              =C2=A0 --lo-offset arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Offset for frontend LO in
              Hz (optional)<br>
              =C2=A0 --gain arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 gain for the RF chain<br>
              =C2=A0 --ant arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 antenna selection<br>
              =C2=A0 --subdev arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 subdev=
ice specification<br>
              =C2=A0 --channel arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 which channel to use<br>
              =C2=A0 --bw arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 analog frontend filter
              bandwidth in Hz<br>
              =C2=A0 --ref arg (=3Dinternal)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 reference source
              (internal, external, mimo)<br>
              =C2=A0 --wirefmt arg (=3Dsc16)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 wire format (sc8, sc16 or
              s16)<br>
              =C2=A0 --setup arg (=3D1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 seconds of setup time<br=
>
              =C2=A0 --progress=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 periodically display
              short-term bandwidth<br>
              =C2=A0 --stats=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 show average bandwidth on
              exit<br>
              =C2=A0 --sizemap=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 track packet size and
              display breakdown on <br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 exit<br>
              =C2=A0 --null=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 run without writing to
              file<br>
              =C2=A0 --continue=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 don't abort on a bad
              packet<br>
              =C2=A0 --skip-lo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 skip checking LO lock
              status<br>
              =C2=A0 --int-n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 tune USRP with integer-N
              tuning<br>
              <br>
              <br>
              This application streams data from a single channel of a
              USRP device to a file.<br>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 17, 202=
3
                  at 5:07 PM Marcus D. Leech &lt;<a
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
                    <div>On 17/01/2023 09:51, mychk1 1 wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div>
                          <div>
                            <div>Yes, I'm running OAI on a workstation.
                              <br>
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
                            I already updated the SDCard using this
                            command: <br>
                            &gt;&gt;<br>
                            sudo dd
                            if=3D/usr/local/share/uhd/images/usrp_n3xx_fs=
.sdimg
                            of=3D/dev/sdb bs=3D1M<br>
                            &lt;&lt;<br>
                          </div>
                          <div>and get this output: <br>
                          </div>
                          <div>&gt;&gt;<br>
                            =C2=A0=C2=A0 15160+0 records in<br>
                            =C2=A0 =C2=A015160+0 records out<br>
                            =C2=A0 =C2=A015896412160 bytes (16 Gb, 15 GiB=
) copied,
                            1160.93 s, 13.7 MB/s</div>
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
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan
                          17, 2023 at 4:35 PM Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
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
                                <div>recently,=C2=A0 I faced an error cal=
led
                                  updating MPM version. Is there a
                                  commend to update MPM version? <br>
                                  <br>
                                  [INFO] [MPM.main] Launching USRP/MPM,
                                  version: 4.1.0.0-gd21735d5<br>
                                  [INFO] [MPM.main] Spawning RPC
                                  process...<br>
                                  [INFO] [MPM.PeriphManager] Device
                                  serial number: 31FD9DD<br>
                                  [INFO] [MPM.PeriphManager] Initialized
                                  2 daughterboard(s).<br>
                                  [INFO] [MPM.PeriphManager] init()
                                  called with device args
                                  `clock_source=3Dinternal,time_source=3D=
internal'.<br>
                                  [INFO] [MPM.RPCServer] RPC server
                                  ready!<br>
                                  [INFO] [MPM.RPCServer] Spawning
                                  watchdog task...<br>
                                  <span style=3D"color:rgb(255,0,0)">[ERR=
OR]
                                    [MPMD] MPM minor compat number
                                    mismatch. Expected: 4.2 Actual: 4.0.
                                    Please update the version of MPM on
                                    your USRP device.</span><br>
                                  terminate called after throwing an
                                  instance of 'uhd::runtime_error'<br>
                                  =C2=A0 what(): =C2=A0RuntimeError: MPM =
minor
                                  compat number mismatch. Expected: 4.2
                                  Actual: 4.0. Please update the version
                                  of MPM on your USRP device.<br>
                                  Aborted<br>
                                  <br>
                                  <br>
                                  <br>
                                </div>
                                <div>Some useful logs: <br>
                                </div>
                                <div>=C2=A0- In the host : uhd_usrp_probe=
 <br>
                                  <div>
                                    <div>
                                      <div>
                                        <div>[INFO] [UHD] linux; GNU C++
                                          version 7.5.0; Boost_106501;
                                          UHD_4.1.0.HEAD-0-gd21735d5<br>
                                          [INFO] [MPMD] Initializing 1
                                          device(s) in parallel with
                                          args:
mgmt_addr=3D10.237.72.103,type=3Dn3xx,product=3Dn310,serial=3D31FD9DD,fpg=
a=3DHG,claimed=3DFalse,addr=3D192.168.10.2<br>
                                          [WARNING] [MPM.RPCServer] A
                                          timeout event occured!<br>
                                          [INFO] [MPM.PeriphManager]
                                          init() called with device args
`fpga=3DHG,mgmt_addr=3D10.237.72.103,product=3Dn310,clock_source=3Dintern=
al,time_source=3Dinternal'.<br>
                                          =C2=A0
                                          _______________________________=
______________________<br>
                                          =C2=A0/<br>
                                          | =C2=A0 =C2=A0 =C2=A0 Device: =
N300-Series
                                          Device<br>
                                          | =C2=A0 =C2=A0
                                          _______________________________=
______________________<br>
                                          | =C2=A0 =C2=A0/<br>
                                          | =C2=A0 | =C2=A0 =C2=A0 =C2=A0=
 Mboard:
                                          ni-n3xx-31FD9DD<br>
                                          | =C2=A0 | =C2=A0 dboard_0_pid:=
 336<br>
                                          | =C2=A0 | =C2=A0 dboard_0_seri=
al:
                                          31F6BC8<br>
                                          | =C2=A0 | =C2=A0 dboard_1_pid:=
 336<br>
                                          | =C2=A0 | =C2=A0 dboard_1_seri=
al:
                                          31F6BF2<br>
                                          | =C2=A0 | =C2=A0 eeprom_versio=
n: 3<br>
                                          | =C2=A0 | =C2=A0 fs_version:
                                          20210630170909<br>
                                          | =C2=A0 | =C2=A0 mender_artifa=
ct:
                                          v4.1.0.0_n3xx<br>
                                          | =C2=A0 | =C2=A0 mpm_sw_versio=
n:
                                          4.1.0.0-gd21735d5<br>
                                          | =C2=A0 | =C2=A0 pid: 16962<br=
>
                                          | =C2=A0 | =C2=A0 product: n310=
<br>
                                          | =C2=A0 | =C2=A0 rev: 10<br>
                                          | =C2=A0 | =C2=A0 rpc_connectio=
n: remote<br>
                                          | =C2=A0 | =C2=A0 serial: 31FD9=
DD<br>
                                          | =C2=A0 | =C2=A0 type: n3xx<br=
>
                                          | =C2=A0 | =C2=A0 MPM Version: =
4.0<br>
                                          | =C2=A0 | =C2=A0 FPGA Version:=
 8.0<br>
                                          | =C2=A0 | =C2=A0 FPGA git hash=
:
                                          d5c2750.clean<br>
                                          | =C2=A0 | =C2=A0 <br>
                                          | =C2=A0 | =C2=A0 Time sources:
                                          =C2=A0internal, external, gpsdo=
,
                                          sfp0<br>
                                          | =C2=A0 | =C2=A0 Clock sources=
:
                                          external, internal, gpsdo<br>
                                          | =C2=A0 | =C2=A0 Sensors: ref_=
locked,
                                          gps_locked, temp, fan,
                                          gps_gpgga, gps_sky, gps_time,
                                          gps_tpv<br>
                                          | =C2=A0 =C2=A0
                                          _______________________________=
______________________</div>
                                        <div><br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div><br>
                                        </div>
                                        <div>- The UHD version SD-card
                                          attached with the USRP <br>
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
                              <pre>______________________________________=
_________
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
                            You're running OAI on a PC, attached to the
                            N310?<br>
                            <br>
                            The N310 system image can be easily updated:<=
br>
                            <br>
                            <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Updating_the_files_system_by_writing_the_disk_image"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">https://kb.=
ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updating_the_fil=
es_system_by_writing_the_disk_image</a><br>
                            <br>
                            <br>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          To unsubscribe send an email to <a
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
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

--------------Vk9I6g5ra2NVPerMsDFUsoXH--

--===============0257392796901553939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0257392796901553939==--
