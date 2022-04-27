Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E29D6511CBD
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 20:03:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6ABC384651
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 14:03:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651082597; bh=KbkuKYZXI3NK4cVsTsh1PdusTn5esYiirjcjPGlbJBc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GTNuY5CYgL/WHElb+jkjpMYkyhvnAbxfRHeMR69LTCqc7SKLj5Q2U3tbTugnq6yYV
	 HdvbWB9HlJHyXAm3tDbLthFZ0XcioCk0Ea7sxrziaVRo3nvqLlNTmQdzqnnvu4bBxD
	 dW4y/AxNdpWmwWoPcinE3ff0GhC5jdS5gIP86fw8fyF7Ytjng7GqB07maYabfGo07c
	 OkakTnC82b8OeeMv8vQbC8Wx856ZZOG+0KI42nLayO1aOuS4pG5efVpYB5Xwx496Gr
	 aEIys9WxUE4LM8nZKv/PGDgRzKgtbT/0jlx055CsOcAw3x1ZnipVbeYS/Xl3vwB1Mg
	 LicsepQT46Egg==
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 336A23845FD
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 14:01:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DgUEVq3I";
	dkim-atps=neutral
Received: by mail-qt1-f170.google.com with SMTP id bz24so1737288qtb.2
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 11:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=N8A8P9dmPpEBc7EKS1vU6y90ETOmRkEgnZW/GSMNEtE=;
        b=DgUEVq3IMg54JTz26z0vRGeWQuqL1/aAYsHQfEt6SxP69M1KU2S2UK8bMGw8zTzCRy
         OFSvkpUSyur3iEhDBYDvQ0RpTxfHDjXDsp0kXAkLVik2AKXqwmvIo/fCHcZ1pcUSv3CG
         5POsZnCshxbemQFMpPbzxqIoPi72VuvC5WPT+BoLNP4AQv6GM8+tzQGXb/ezP0w+KHr2
         +oDdZHwiCYNRoOl3wbU3eIq8q+FfWHDLlWkGYiKYtdT9y4XFDT+fEof7rYjaYJuwcB3n
         bQHl+JeSHgNQFgo49ubMNrv/yXt8mK015lgnou3ncgg/uHZOwDxz2elwJaV5QlxDq05+
         AONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=N8A8P9dmPpEBc7EKS1vU6y90ETOmRkEgnZW/GSMNEtE=;
        b=P/79pEcyo7TfVuLzOpR74rGhwmr8nL8XjRxaEeKUDjms1QHYJlx/8nfvhGeXWAmdbH
         S8WtlaIqHqLRWQG0G3C39wkpCTDARDUPVTgYxEaZ7zYXWRiWQjb+n9VQGL7ivfk9uL80
         Ezpanr92jb6hv9pp+iRAmPS/6hImRzQPHUY9Q9BaAz4zza4cv/AUDIkSJKWcqy44b55D
         S8NopaoPrD4LGA6MaPYJDm+oCF29a3FaF0skp+OxDMrjwX8loNpEc7OgcK92V05ttGTy
         ttXdCoKDJ9ENjp1fICGwYCFd/jo4I/+544vvZCzUM0xnUMj52WSgKFka9YZfKEvpj58P
         tq5Q==
X-Gm-Message-State: AOAM532ubKc6Juh85Mu4rGylq/oeqLrE/7NsOZAxBAD+98bIbs0sOAeT
	gOWafR6WMvIGH6k3+MwsL6tXB98gN1Q=
X-Google-Smtp-Source: ABdhPJyLfMImz/bxpPRDuqxArhi3wPlVwa/gD7NV9r1issiar6l+UE/TCFVLsVWHCxwbz3o2s6cEtg==
X-Received: by 2002:a05:622a:1a93:b0:2f3:8689:91df with SMTP id s19-20020a05622a1a9300b002f3868991dfmr1753269qtc.101.1651082518084;
        Wed, 27 Apr 2022 11:01:58 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c20-20020a05622a059400b002e1d59e68f3sm10447977qtb.48.2022.04.27.11.01.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 11:01:57 -0700 (PDT)
Message-ID: <6b538660-e051-c354-a9c3-a1fbde33e591@gmail.com>
Date: Wed, 27 Apr 2022 14:01:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a10bc1673342466f9c2a166280d57643@lanl.gov>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a10bc1673342466f9c2a166280d57643@lanl.gov>
Message-ID-Hash: NXCTZ5ZN3CQUNEUZSWMQ3BTX2I6QJRWG
X-Message-ID-Hash: NXCTZ5ZN3CQUNEUZSWMQ3BTX2I6QJRWG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: sychronous receiving from multiple e320's repeatedly results in ERROR_CODE_LATE_COMMAND
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NXCTZ5ZN3CQUNEUZSWMQ3BTX2I6QJRWG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4333596420128467455=="

This is a multi-part message in MIME format.
--===============4333596420128467455==
Content-Type: multipart/alternative;
 boundary="------------RMs3XD5k2Q0kTRVN0SIf50fp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RMs3XD5k2Q0kTRVN0SIf50fp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-27 13:52, Caffrey, Michael Paul via USRP-users wrote:
>
> Hi all,
>
> I am trying to use two e320=E2=80=99s to collect data at the same time =
derived=20
> from some examples. I would like to perform this repeatedly, however=20
> it only succeeds on the=C2=A0 1^st attempt, subsequently I get mysterio=
us=20
> =E2=80=98LL=E2=80=A6=E2=80=9D and no data with an ERROR_CODE_LATE_COMMA=
ND. The modified=20
> example is below the output. Any suggestions are appreciated! -Mike
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.1.0.5-0-g6bd0be9c
>
> [INFO] [MPMD] Initializing 2 device(s) in parallel with args:=20
> mgmt_addr0=3D192.168.50.201,type0=3De3xx,product0=3De320,serial0=3D31DF=
BB8,fpga0=3D1G,claimed0=3DFalse,mgmt_addr1=3D192.168.50.202,type1=3De3xx,=
product1=3De320,serial1=3D31DE2CC,fpga1=3D1G,claimed1=3DFalse,addr0=3D192=
.168.50.201,addr1=3D192.168.50.202
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3D1G,mgmt_addr=3D192.168.50.201,product=3De320'.
>
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3D1G,mgmt_addr=3D192.168.50.202,product=3De320'.
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>
> [INFO] [0/Radio#0] CODEC loopback test passed
>
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB=
/s)
>
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB=
/s)
>
> [INFO] [1/Radio#0] Performing CODEC loopback test on channel 0 ...
>
> [INFO] [1/Radio#0] CODEC loopback test passed
>
> [INFO] [1/Radio#0] Performing CODEC loopback test on channel 1 ...
>
> [INFO] [1/Radio#0] CODEC loopback test passed
>
> [INFO] [1/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB=
/s)
>
> [INFO] [1/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB=
/s)
>
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> [WARNING] [1/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> Has timespec: No=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Time of firs=
t sample: 0
>
> Fragmented: No=C2=A0 Fragmentation offset: 0
>
> Start of burst: No=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 End of burst: No
>
> Error Code: ERROR_CODE_TIMEOUT=C2=A0 Out of sequence: No
>
> 500000
>
> Backend TkAgg is interactive backend. Turning interactive mode on.
>
> LLHas timespec: No=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Time of first sample: =
0
>
> Fragmented: No=C2=A0 Fragmentation offset: 0
>
> Start of burst: No=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 End of burst: No
>
> Error Code: ERROR_CODE_LATE_COMMAND=C2=A0=C2=A0=C2=A0=C2=A0 Out of sequ=
ence: No
>
> 0
>
> Done!
>
> ----------------------------------------------------------------------=20
> code
>
> #!/usr/bin/env python3
>
> #
>
> # Copyright 2017-2018 Ettus Research, a National Instruments Company
>
> #
>
> # SPDX-License-Identifier: GPL-3.0-or-later
>
> #
>
> """
>
> RX samples to file using Python API
>
> """
>
> import argparse
>
> from xml.etree.ElementTree import tostring
>
> import numpy as np
>
> import uhd
>
> import matplotlib.pyplot as plt
>
> import time
>
> #./rx_to_file.py -f 80.0e6 -o ./test1.dat -d 1.0 -r 1.0e6 -a=20
> addr=3D192.168.50.201
>
> def parse_args():
>
> =C2=A0=C2=A0=C2=A0 """Parse the command line arguments"""
>
> =C2=A0=C2=A0=C2=A0 parser =3D argparse.ArgumentParser()
>
> =C2=A0=C2=A0=C2=A0 parser.add_argument("-a", "--args", default=3D"addr=3D=
192.168.50.201",=20
> type=3Dstr)
>
> =C2=A0=C2=A0=C2=A0 parser.add_argument("-o", "--output-file",=20
> default=3D"./test.bin",type=3Dstr, required=3DFalse)
>
> =C2=A0=C2=A0=C2=A0 parser.add_argument("-f", "--freq", default=3D80e6, =
type=3Dfloat,=20
> required=3DFalse)
>
> =C2=A0=C2=A0=C2=A0 parser.add_argument("-r", "--rate", default=3D5e5, t=
ype=3Dfloat)
>
> =C2=A0=C2=A0=C2=A0=C2=A0parser.add_argument("-d", "--duration", default=
=3D1.0, type=3Dfloat)
>
> =C2=A0=C2=A0=C2=A0 parser.add_argument("-c", "--channels", default=3D0,=
 nargs=3D"+",=20
> type=3Dint)
>
> =C2=A0=C2=A0=C2=A0 parser.add_argument("-g", "--gain", type=3Dint, defa=
ult=3D1) # range=20
> is int supposedly 0 - 76db range,
>
> =C2=A0=C2=A0=C2=A0 parser.add_argument("-n", "--numpy", default=3DFalse=
,=20
> action=3D"store_true",
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 help=3D=
"Save output file in NumPy format=20
> (default: No)")
>
> =C2=A0=C2=A0=C2=A0 return parser.parse_args()
>
> timeStep =3D 10.0
>
> class multiRcvr:
>
> =C2=A0=C2=A0=C2=A0 def __init__(self, addr, args) :
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.usrp =3D uhd.usrp.Multi=
USRP(addr)
>
> self.usrp.set_clock_source("gpsdo",0)
>
> self.usrp.set_time_source("gpsdo",0)
>
> self.usrp.set_clock_source("gpsdo",1)
>
> self.usrp.set_time_source("gpsdo",1)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for mboard in range(2):
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 t0 =3D=
 time.time()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 whil=
e=20
> self.usrp.get_mboard_sensor("gps_locked",mboard).value =3D=3D 'false':
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 time.sleep(1.0)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if time.time() - t0 > 30.0:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print("COULD NOT GET GPS LOCK =
on " + str(mboard) +=20
> " ********************************")
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_=
UHD
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # https://files.ettus.com/ma=
nual/page_sync.html
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0self.num_samps =3D int(=
np.ceil(args.duration*args.rate))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if not isinstance(args.chann=
els, list):
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 args=
.channels =3D [args.channels]
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.channels =3D [0, 1]
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # time_at_last_pps =3D usrp.=
get_time_last_pps().get_real_secs()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # print(time_at_last_pps)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # usrp.set_time_next_pps(uhd=
.libpyuhd.types.time_spec(0.0))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# time.sleep(1)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # To =3D usrp.get_time_now()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # print( To.get_real_secs() =
)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # https://files.ettus.com/ma=
nual/page_multiple.html#multiple_setup
>
> self.usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec("A:0"),0) # disable=20
> other channels on 1st usrp
>
> self.usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec("A:0"),1) # disable=20
> other channels on 2nd usrp
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # https://pysdr.org/content/=
usrp.html
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # second arg is channel (int=
); if not present channels=20
> defaults to 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # gain can vary 0 - 76
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.usrp.set_rx_rate(args.r=
ate,0)
>
> self.usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq),0)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.usrp.set_rx_gain(10,0)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.usrp.set_rx_rate(args.r=
ate,1)
>
> self.usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq), 1)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.usrp.set_rx_gain(args.g=
ain, 1)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Set up the stream and rece=
ive buffer
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.st_args =3D uhd.usrp.St=
reamArgs("fc32", "sc16")
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.st_args.channels =3D se=
lf.channels
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.metadata =3D uhd.types.=
RXMetadata()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.recv_buffer =3D np.zero=
s((len(self.channels), 1000),=20
> dtype=3Dnp.complex64)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0self.stream_cmd =3D=20
> uhd.types.StreamCMD(uhd.types.StreamMode.num_more) # num_done
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.stream_cmd.num_samps =3D=
 self.num_samps
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.stream_cmd.stream_now =3D=
 False
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0self.stream_cmd.time_sp=
ec =3D=20
> uhd.libpyuhd.types.time_spec(timeStep) # set start time (try tweaking=20
> this)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.streamer =3D self.usrp.=
get_rx_stream(self.st_args)
>
> =C2=A0=C2=A0=C2=A0 def printMultiUsrpInfo(self):
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print('rx channels in multi =
usrp : ' +=20
> str(self.usrp.get_rx_num_channels()))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0for chan in self.channels:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mboa=
rd =3D chan
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prin=
t('clock_source ' + str(mboard) + ' : ' +=20
> self.usrp.get_clock_source(mboard)) # really mboard
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prin=
t('time_source ' + str(mboard) + ' : ' +=20
> self.usrp.get_time_source(mboard)) # this isn't really channel , it is=20
> mboard
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prin=
t('rx_info ' + str(chan) + ' : ' +=20
> str(self.usrp.get_usrp_rx_info(chan)))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rxfi=
ltername =3D self.usrp.get_rx_filter_names(chan)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prin=
t('rxfiltername ' + str(chan) + ' : '=C2=A0 +=20
> str(rxfiltername)) # why doesn't this work?
>
> #print(self.usrp.get_rx_filter(rxfiltername,chan))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prin=
t('rx_gain_range ' + str(chan) + ' : ' +=20
> str(self.usrp.get_rx_gain_range(chan)))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prin=
t('rx_gain ' + str(chan) + ' : ' +=20
> str(self.usrp.get_rx_gain(chan)))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 prin=
t('rx_freq ' + str(chan) + ' : ' +=20
> str(self.usrp.get_rx_freq(chan)))
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rx_s=
ensors =3D self.usrp.get_rx_sensor_names(chan)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for =
rx_sensor in rx_sensors:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 print("\t" + rx_sensor + " : " +=20
> self.usrp.get_rx_sensor(rx_sensor,mboard).value)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mboa=
rd_sensors =3D self.usrp.get_mboard_sensor_names(mboard)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for =
mboard_sensor in mboard_sensors:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 print("\t" + mboard_sensor + " : " +=20
> self.usrp.get_mboard_sensor(mboard_sensor,mboard).value)
>
> =C2=A0=C2=A0=C2=A0 def wait4pps(self):
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Wait for 1 PPS to happen, =
then set the time at next PPS to 0.0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time_at_last_pps =3D self.us=
rp.get_time_last_pps().get_real_secs()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 while time_at_last_pps =3D=3D=
=20
> self.usrp.get_time_last_pps().get_real_secs():
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time=
.sleep(0.05) # keep waiting till it happens- if this=20
> while loop never finishes then the PPS signal isn't there
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time.sleep(.01) # make sure =
all devices are into the next second
>
> self.usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0)) #=20
> defaults to all devices
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Schedule Rx of num_samps s=
amples exactly N seconds from last PPS
>
> self.streamer.issue_stream_cmd(self.stream_cmd)
>
> =C2=A0=C2=A0=C2=A0 def capture(self):
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # Receive Samples.=C2=A0 rec=
v() will return zeros, then our=20
> samples, then more zeros, letting us know it's done
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 waiting_to_start =3D True # =
keep track of where we are in the=20
> cycle (see above comment)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nsamps =3D 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i =3D 0
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # re-initialize samples ever=
y time so we don't see old data
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.samples =3D np.zeros([l=
en(self.channels),self.num_samps],=20
> dtype=3Dnp.complex64)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #while nsamps !=3D 0 or wait=
ing_to_start:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 t0 =3D time.time()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 metadataLast =3D uhd.types.R=
XMetadata()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 while i < self.num_samps:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nsam=
ps =3D self.streamer.recv(self.recv_buffer,=20
> self.metadata, timeout=3DtimeStep)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if s=
elf.metadata !=3D metadataLast:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 print(self.metadata)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 metadataLast =3D self.metadata
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # if=
 nsamps and waiting_to_start:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=
=A0=C2=A0=C2=A0=C2=A0 waiting_to_start =3D False
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # el=
if nsamps:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if n=
samps:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 self.samples[:,i:i+nsamps] =3D self.recv_buffer[:,0:ns=
amps]
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i +=3D=
 nsamps
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if t=
ime.time() - t0 > 16.0:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 break
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0print(i)
>
> def main():
>
> =C2=A0=C2=A0=C2=A0 """RX samples and write to file"""
>
> =C2=A0=C2=A0=C2=A0 args =3D parse_args()
>
> =C2=A0=C2=A0=C2=A0 usrp =3D multiRcvr ("addr0=3D192.168.50.201,addr1=3D=
192.168.50.202",args)
>
> =C2=A0=C2=A0=C2=A0 for _ in range(2):
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp.wait4pps()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 usrp.capture()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 timeIdx =3D np.arange(usrp.n=
um_samps)/args.rate
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fig, ax =3D plt.subplots()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l1 =3D ax.plot(usrp.samples[=
0,:].real,label=3D'201 R')
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l2 =3D ax.plot(usrp.samples[=
0,:].imag,label=3D'201 I')
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l3 =3D ax.plot(usrp.samples[=
1,:].real,label=3D'202 R')
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 l4 =3D ax.plot(usrp.samples[=
1,:].imag,label=3D'202 I')
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ax.legend( loc=3D'upper righ=
t', shadow=3DTrue)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ax.grid()
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 plt.show(block=3DFalse)
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time.sleep(10.0)
>
> =C2=A0=C2=A0=C2=A0 print('Done!')
>
> =C2=A0=C2=A0=C2=A0 # with open(args.output_file, 'wb') as out_file:
>
> =C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 if args.numpy:
>
> =C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 np=
.save(out_file, samps, allow_pickle=3DFalse,=20
> fix_imports=3DFalse)
>
> =C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 else:
>
> =C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sa=
mps.tofile(out_file)
>
> if __name__ =3D=3D "__main__":
>
> =C2=A0=C2=A0=C2=A0 main()
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
If you just wait "a while" does it succeed again, or do you have to=20
reset the E320?


--------------RMs3XD5k2Q0kTRVN0SIf50fp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-27 13:52, Caffrey, Michael
      Paul via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a10bc1673342466f9c2a166280d57643@lanl.gov">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi all, <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I am trying to use two e320=E2=80=99s to c=
ollect
          data at the same time derived from some examples. I would like
          to perform this repeatedly, however it only succeeds on the=C2=A0=
 1<sup>st</sup>=C2=A0
          attempt, subsequently I get mysterious =E2=80=98LL=E2=80=A6=E2=80=
=9D and no data with
          an ERROR_CODE_LATE_COMMAND. The modified example is below the
          output. Any suggestions are appreciated! -Mike<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">[INFO] [UHD] linux; GNU C++ version 9.4.0;
          Boost_107100; UHD_4.1.0.5-0-g6bd0be9c<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPMD] Initializing 2 device(s) in
          parallel with args:
mgmt_addr0=3D192.168.50.201,type0=3De3xx,product0=3De320,serial0=3D31DFBB=
8,fpga0=3D1G,claimed0=3DFalse,mgmt_addr1=3D192.168.50.202,type1=3De3xx,pr=
oduct1=3De320,serial1=3D31DE2CC,fpga1=3D1G,claimed1=3DFalse,addr0=3D192.1=
68.50.201,addr1=3D192.168.50.202<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MPM.RPCServer] A timeout event
          occured!<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [MPM.RPCServer] A timeout event
          occured!<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called
          with device args
          `fpga=3D1G,mgmt_addr=3D192.168.50.201,product=3De320'.<o:p></o:=
p></p>
        <p class=3D"MsoNormal">[INFO] [MPM.PeriphManager] init() called
          with device args
          `fpga=3D1G,mgmt_addr=3D192.168.50.202,product=3De320'.<o:p></o:=
p></p>
        <p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC
          loopback test on channel 0 ...
          <o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [0/Radio#0] CODEC loopback test
          passed<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [0/Radio#0] Performing CODEC
          loopback test on channel 1 ...
          <o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [0/Radio#0] CODEC loopback test
          passed<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [0/DmaFIFO#0] BIST passed (Estimate=
d
          Minimum Throughput: 1361 MB/s)<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [0/DmaFIFO#0] BIST passed (Estimate=
d
          Minimum Throughput: 1361 MB/s)<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [1/Radio#0] Performing CODEC
          loopback test on channel 0 ...
          <o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [1/Radio#0] CODEC loopback test
          passed<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [1/Radio#0] Performing CODEC
          loopback test on channel 1 ...
          <o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [1/Radio#0] CODEC loopback test
          passed<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [1/DmaFIFO#0] BIST passed (Estimate=
d
          Minimum Throughput: 1361 MB/s)<o:p></o:p></p>
        <p class=3D"MsoNormal">[INFO] [1/DmaFIFO#0] BIST passed (Estimate=
d
          Minimum Throughput: 1361 MB/s)<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [0/Radio#0] Attempting to set
          tick rate to 0. Skipping.<o:p></o:p></p>
        <p class=3D"MsoNormal">[WARNING] [1/Radio#0] Attempting to set
          tick rate to 0. Skipping.<o:p></o:p></p>
        <p class=3D"MsoNormal">Has timespec: No=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Time of first
          sample: 0<o:p></o:p></p>
        <p class=3D"MsoNormal">Fragmented: No=C2=A0 Fragmentation offset:=
 0<o:p></o:p></p>
        <p class=3D"MsoNormal">Start of burst: No=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 End of burst: No<o:p></o:p></p>
        <p class=3D"MsoNormal">Error Code: ERROR_CODE_TIMEOUT=C2=A0 Out o=
f
          sequence: No<o:p></o:p></p>
        <p class=3D"MsoNormal">500000<o:p></o:p></p>
        <p class=3D"MsoNormal">Backend TkAgg is interactive backend.
          Turning interactive mode on.<o:p></o:p></p>
        <p class=3D"MsoNormal">LLHas timespec: No=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Time of first
          sample: 0<o:p></o:p></p>
        <p class=3D"MsoNormal">Fragmented: No=C2=A0 Fragmentation offset:=
 0<o:p></o:p></p>
        <p class=3D"MsoNormal">Start of burst: No=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 End of burst: No<o:p></o:p></p>
        <p class=3D"MsoNormal">Error Code: ERROR_CODE_LATE_COMMAND=C2=A0=C2=
=A0=C2=A0=C2=A0 Out
          of sequence: No<o:p></o:p></p>
        <p class=3D"MsoNormal">0<o:p></o:p></p>
        <p class=3D"MsoNormal">Done!<o:p></o:p></p>
        <p class=3D"MsoNormal">------------------------------------------=
----------------------------
          code<o:p></o:p></p>
        <p class=3D"MsoNormal">#!/usr/bin/env python3<o:p></o:p></p>
        <p class=3D"MsoNormal">#<o:p></o:p></p>
        <p class=3D"MsoNormal"># Copyright 2017-2018 Ettus Research, a
          National Instruments Company<o:p></o:p></p>
        <p class=3D"MsoNormal">#<o:p></o:p></p>
        <p class=3D"MsoNormal"># SPDX-License-Identifier: GPL-3.0-or-late=
r<o:p></o:p></p>
        <p class=3D"MsoNormal">#<o:p></o:p></p>
        <p class=3D"MsoNormal">"""<o:p></o:p></p>
        <p class=3D"MsoNormal">RX samples to file using Python API<o:p></=
o:p></p>
        <p class=3D"MsoNormal">"""<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">import argparse<o:p></o:p></p>
        <p class=3D"MsoNormal">from xml.etree.ElementTree import tostring=
<o:p></o:p></p>
        <p class=3D"MsoNormal">import numpy as np<o:p></o:p></p>
        <p class=3D"MsoNormal">import uhd<o:p></o:p></p>
        <p class=3D"MsoNormal">import matplotlib.pyplot as plt<o:p></o:p>=
</p>
        <p class=3D"MsoNormal">import time<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">#./rx_to_file.py -f 80.0e6 -o ./test1.dat
          -d 1.0 -r 1.0e6 -a addr=3D192.168.50.201<o:p></o:p></p>
        <p class=3D"MsoNormal">def parse_args():<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 """Parse the command li=
ne arguments"""<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser =3D argparse.Arg=
umentParser()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser.add_argument("-a=
", "--args",
          default=3D"addr=3D192.168.50.201", type=3Dstr)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser.add_argument("-o=
",
          "--output-file", default=3D"./test.bin",type=3Dstr,
          required=3DFalse)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser.add_argument("-f=
", "--freq",
          default=3D80e6, type=3Dfloat, required=3DFalse)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser.add_argument("-r=
", "--rate",
          default=3D5e5, type=3Dfloat)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 <o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0parser.add_argumen=
t("-d", "--duration",
          default=3D1.0, type=3Dfloat)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser.add_argument("-c=
", "--channels",
          default=3D0, nargs=3D"+", type=3Dint)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser.add_argument("-g=
", "--gain",
          type=3Dint, default=3D1) # range is int supposedly 0 - 76db ran=
ge,<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 parser.add_argument("-n=
", "--numpy",
          default=3DFalse, action=3D"store_true",<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 help=3D"Save output
          file in NumPy format (default: No)")<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 return parser.parse_arg=
s()<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">timeStep =3D 10.0<o:p></o:p></p>
        <p class=3D"MsoNormal">class multiRcvr:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 def __init__(self, addr=
, args) :<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.usrp =3D
          uhd.usrp.MultiUSRP(addr)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_clock_source("gpsdo",0)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_time_source("gpsdo",0)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_clock_source("gpsdo",1)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_time_source("gpsdo",1)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 for mboard in range(2):<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 t0 =3D time.time()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 while
          self.usrp.get_mboard_sensor("gps_locked",mboard).value =3D=3D
          'false':<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 time.sleep(1.0)<o:p></o:=
p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if time.time() - t0 &gt;
          30.0:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
print("COULD NOT GET
          GPS LOCK on " + str(mboard) + "
          ********************************")<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
break<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # <a
href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comman=
ds_in_UHD"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UH=
D</a><o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # <a
            href=3D"https://files.ettus.com/manual/page_sync.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
            https://files.ettus.com/manual/page_sync.html</a> <o:p></o:p>=
</p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0self.num_samps =3D
          int(np.ceil(args.duration*args.rate))<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 if not isinstance(args.channels,
          list):<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 args.channels =3D [args.channels]<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.channels =3D [0, 1]<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # time_at_last_pps =3D
          usrp.get_time_last_pps().get_real_secs()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # print(time_at_last_pps)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 #
          usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0))<o:p><=
/o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
# time.sleep(1)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # To =3D usrp.get_time_now()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # print( To.get_real_secs() )<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # <a
            href=3D"https://files.ettus.com/manual/page_multiple.html#mul=
tiple_setup"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
https://files.ettus.com/manual/page_multiple.html#multiple_setup</a><o:p>=
</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec("A:0"),0) #
          disable other channels on 1st usrp<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_rx_subdev_spec(uhd.usrp.SubdevSpec("A:0"),1) #
          disable other channels on 2nd usrp<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # <a
            href=3D"https://pysdr.org/content/usrp.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://pysdr.org/content/usrp.html</a><o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # second arg is channel (int); if
          not present channels defaults to 0<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # gain can vary 0 - 76<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.usrp.set_rx_rate(args.rate,0)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq=
),0)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.usrp.set_rx_gain(10,0)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.usrp.set_rx_rate(args.rate,1)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_rx_freq(uhd.libpyuhd.types.tune_request(args.freq=
),
          1)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.usrp.set_rx_gain(args.gain, 1)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # Set up the stream and receive
          buffer<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.st_args =3D
          uhd.usrp.StreamArgs("fc32", "sc16")<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.st_args.channels =3D
          self.channels<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.metadata =3D
          uhd.types.RXMetadata()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.recv_buffer =3D
          np.zeros((len(self.channels), 1000), dtype=3Dnp.complex64)=C2=A0=
=C2=A0=C2=A0=C2=A0
          <o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0self.stream_cmd =3D
          uhd.types.StreamCMD(uhd.types.StreamMode.num_more) #=C2=A0=C2=A0
          num_done<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.stream_cmd.num_samps =3D
          self.num_samps<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.stream_cmd.stream_now =3D
          False=C2=A0=C2=A0 <o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0self.stream_cmd.time_spec =3D
          uhd.libpyuhd.types.time_spec(timeStep) # set start time (try
          tweaking this)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.streamer =3D
          self.usrp.get_rx_stream(self.st_args)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 def printMultiUsrpInfo(=
self):<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 print('rx channels in multi usrp :
          ' + str(self.usrp.get_rx_num_channels()))<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=
for chan in self.channels:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 mboard =3D chan<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 print('clock_source ' +
          str(mboard) + ' : ' + self.usrp.get_clock_source(mboard)) #
          really mboard<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 print('time_source ' +
          str(mboard) + ' : ' + self.usrp.get_time_source(mboard)) #
          this isn't really channel , it is mboard<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 print('rx_info ' + str(chan) +
          ' : ' + str(self.usrp.get_usrp_rx_info(chan)))<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 rxfiltername =3D
          self.usrp.get_rx_filter_names(chan)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 print('rxfiltername ' +
          str(chan) + ' : '=C2=A0 + str(rxfiltername)) # why doesn't this
          work?<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
          #print(self.usrp.get_rx_filter(rxfiltername,chan))<o:p></o:p></=
p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 print('rx_gain_range ' +
          str(chan) + ' : ' + str(self.usrp.get_rx_gain_range(chan)))<o:p=
></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 print('rx_gain ' + str(chan) +
          ' : ' + str(self.usrp.get_rx_gain(chan)))<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 print('rx_freq ' + str(chan) +
          ' : ' + str(self.usrp.get_rx_freq(chan)))<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 rx_sensors =3D
          self.usrp.get_rx_sensor_names(chan)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 for rx_sensor in rx_sensors:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print("\t" + rx_sensor +=
 "
          : " + self.usrp.get_rx_sensor(rx_sensor,mboard).value)<o:p></o:=
p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 mboard_sensors =3D
          self.usrp.get_mboard_sensor_names(mboard)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 for mboard_sensor in
          mboard_sensors:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print("\t" + mboard_sens=
or
          + " : " +
          self.usrp.get_mboard_sensor(mboard_sensor,mboard).value)<o:p></=
o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 def wait4pps(self):<o:p=
></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # Wait for 1 PPS to happen, then
          set the time at next PPS to 0.0<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 time_at_last_pps =3D
          self.usrp.get_time_last_pps().get_real_secs()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 while time_at_last_pps =3D=3D
          self.usrp.get_time_last_pps().get_real_secs():<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 time.sleep(0.05) # keep waiting
          till it happens- if this while loop never finishes then the
          PPS signal isn't there<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 time.sleep(.01) # make sure all
          devices are into the next second<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.usrp.set_time_next_pps(uhd.libpyuhd.types.time_spec(0.0))
          # defaults to all devices<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # Schedule Rx of num_samps samples
          exactly N seconds from last PPS<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
          self.streamer.issue_stream_cmd(self.stream_cmd)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 def capture(self):<o:p>=
</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # Receive Samples.=C2=A0 recv() will
          return zeros, then our samples, then more zeros, letting us
          know it's done<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 waiting_to_start =3D True # keep
          track of where we are in the cycle (see above comment)<o:p></o:=
p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 nsamps =3D 0<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 i =3D 0<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 # re-initialize samples every time
          so we don't see old data<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 self.samples =3D
          np.zeros([len(self.channels),self.num_samps],
          dtype=3Dnp.complex64)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 #while nsamps !=3D 0 or
          waiting_to_start:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 t0 =3D time.time()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 metadataLast =3D
          uhd.types.RXMetadata()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 while i &lt; self.num_samps:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 nsamps =3D
          self.streamer.recv(self.recv_buffer, self.metadata,
          timeout=3DtimeStep)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if self.metadata !=3D
          metadataLast:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 print(self.metadata)<o:p=
></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 metadataLast =3D
          self.metadata<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 # if nsamps and
          waiting_to_start:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0 waiting_to_start =3D F=
alse<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 # elif nsamps:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if nsamps:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.samples[:,i:i+nsamp=
s]
          =3D self.recv_buffer[:,0:nsamps]<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 i +=3D nsamps<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 if time.time() - t0 &gt; 16.0:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break=C2=A0 <o:p></o:p><=
/p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0print(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">def main():<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 """RX samples and write=
 to file"""<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 args =3D parse_args()<o=
:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 usrp =3D multiRcvr
          ("addr0=3D192.168.50.201,addr1=3D192.168.50.202",args)<o:p></o:=
p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 for _ in range(2):<o:p>=
</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 usrp.wait4pps()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 usrp.capture()<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 timeIdx =3D
          np.arange(usrp.num_samps)/args.rate<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 fig, ax =3D plt.subplots()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 l1 =3D
          ax.plot(usrp.samples[0,:].real,label=3D'201 R')<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 l2 =3D
          ax.plot(usrp.samples[0,:].imag,label=3D'201 I')<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 l3 =3D
          ax.plot(usrp.samples[1,:].real,label=3D'202 R')<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 l4 =3D
          ax.plot(usrp.samples[1,:].imag,label=3D'202 I')<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ax.legend( loc=3D'upper right',
          shadow=3DTrue)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ax.grid()<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 plt.show(block=3DFalse)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 time.sleep(10.0)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 print('Done!')<o:p></o:=
p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 # with open(args.output=
_file, 'wb') as
          out_file:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0=
 if args.numpy:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 np.save(out_file, samps,
          allow_pickle=3DFalse, fix_imports=3DFalse)<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0=
 else:<o:p></o:p></p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 #=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 samps.tofile(out_file)<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">if __name__ =3D=3D "__main__":<o:p></o:p><=
/p>
        <p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 main()<o:p></o:p></p>
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
    If you just wait "a while" does it succeed again, or do you have to
    reset the E320?<br>
    <br>
    <br>
  </body>
</html>

--------------RMs3XD5k2Q0kTRVN0SIf50fp--

--===============4333596420128467455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4333596420128467455==--
