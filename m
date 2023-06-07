Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7617269EF
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 21:39:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB0C2384A97
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 15:39:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686166743; bh=ytPkMAk+tG5j9DRVNbh92xSS744TYVUYa1R2TGLtcmY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=It0BSNAdO9gmchFUD38+1KD1VwUnCZXNAw1gen8ZmLT42E5nj1FV2poyzkMjC4IZH
	 jJaNnU+/cOsV/EA1VL5T0cctcSF+McyYWU9IvcN4JLZIVEyyNlaGs0D345c0GdiAUf
	 QHL7RUkgNALs7ivKBGzMXArV8YGpTh7oJ9fcOhQaf47nAAA6r723SMUgqqL7Lt/7+w
	 0lEMFvpaXwHRXLnsyahaLKwdxKHMDMMAm3vlG4vnA5cCw1vpBH14WmOgP/KH/9yeKH
	 XbnaNDoMmTgK7jI/6NLOcoPGd0FwzGoSu75AYS6rCiJZdsRySja8BaWusGoM6/RgpT
	 CbxPmyaldTnIQ==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 726AB384A4E
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 15:38:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bjCj+RVQ";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-75ec7e8e826so277966685a.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 12:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686166681; x=1688758681;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H5g8ZLwRxJGzCFSw8i/144diqpGNEpVK9JeV83aH3pM=;
        b=bjCj+RVQffbxUACAn1q/zkwM5CY2Yf7wSCDQ7aqtCZDSCcJW5+3Ra1jwPax6l0ZoF1
         8w8J+aPuvbZlFHV9w17+H0zAvG8rBJy73OZbBbV+q7uXdSXYSjDJd+ab0jXSCf3MEKt1
         U71EUuNgLfyCRJVk+CY7x/I04WIi6DbxzSFCK3t5Aa50mQ1DtQhGp25GJRMkw37L+6jJ
         TE3E/HFKlYnCoulSQr/GBOvgGo1+iifCQ6HpjlIQqIVgCoE8ppEUx3TuqqepegN4m5hb
         WKsz2stds6HYZ1+vHsel+wt88xpAagqmUJMSzupn7Z74etrFGnierEyyZWua3U3gVlHy
         cd/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686166681; x=1688758681;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H5g8ZLwRxJGzCFSw8i/144diqpGNEpVK9JeV83aH3pM=;
        b=U3hncXBdn3DswUtoJOCCLvjCnTZTfgJik/wQ0tiCLsN0KcIoRXvRxncFIGrsN+tNPc
         MdH2CKybhtKHaWUDZVv0W3uKmrdlmNCfcb3bmszvB++Etnh5t6bcUCndrJ+gTsFq31mQ
         vFf3C99Wyya7O5ICyR47IaUn67jvqk6DPeNTSNgDqdZvchPWVHOHDFCKSQIs4dCbhPTs
         0+P2/3K42MvFKMfBioTQ4k0T7Q1FJlnm5pW34ZEBgQ9UReMmOToyjAAgmIiKNzqFfjkL
         ESjuHNTDVyBLlhsUriSCTXzfWsE7I2VYCp9MN0i//+rzB3GmvGQ3Akba+36VD8xES481
         H5Zw==
X-Gm-Message-State: AC+VfDyk4YioSRHLDKsKT1bQ7YDAIDXIQH3uTy9FhF/ge1MOsMCLUF7T
	eeNFLV6NE2jK/BKG8MW+1+VDDyLnYhWH2g==
X-Google-Smtp-Source: ACHHUZ56AbE4bui/IHREOJ3BYseMA2EEMoTvHMH6tPJx9GamWWIEYyps/EIU7EbW4qFNucp5vrJjmw==
X-Received: by 2002:a05:620a:9d5:b0:75b:23a1:368d with SMTP id y21-20020a05620a09d500b0075b23a1368dmr2929152qky.78.1686166681534;
        Wed, 07 Jun 2023 12:38:01 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f7-20020a05620a068700b007593af0c85fsm120259qkh.88.2023.06.07.12.38.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 12:38:01 -0700 (PDT)
Message-ID: <187224b5-d6f3-0109-9dad-59b3ab63a263@gmail.com>
Date: Wed, 7 Jun 2023 15:38:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFFpLrGe-Dnc=bUJk6+ebzDf_SqziwoMXRQCSDeZGZ9kJ687ng@mail.gmail.com>
 <c3e840ff-501f-85ba-f8e0-170308846f6f@ettus.com>
 <CAFFpLrG-EfEdn6g65fMrzYtBQ5U0nFzjh-ZT21Od9RiD+P3VEA@mail.gmail.com>
 <CAFFpLrHakCGzGv-1NGfgtHpT8xpccijvTqojhsQXz-kXXe_o3w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFFpLrHakCGzGv-1NGfgtHpT8xpccijvTqojhsQXz-kXXe_o3w@mail.gmail.com>
Message-ID-Hash: 4HFKSTGEMUBQOOBA44LW6H5XUHTNZYG3
X-Message-ID-Hash: 4HFKSTGEMUBQOOBA44LW6H5XUHTNZYG3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Segmentation fault in OFDM implementation on USRP E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4HFKSTGEMUBQOOBA44LW6H5XUHTNZYG3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1144179385930943392=="

This is a multi-part message in MIME format.
--===============1144179385930943392==
Content-Type: multipart/alternative;
 boundary="------------QmCuq04xQl9gCy2K9HnmhsKP"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QmCuq04xQl9gCy2K9HnmhsKP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/06/2023 11:01, JORGE GONZALEZ ORELLANA via USRP-users wrote:
> Hi all, i re-ask this question because I can't find answers on Google.
> There is a segmentation fault error when I try to run an ofdm workflow=20
> example on a USRP E312, I am currently working on Ubuntu 20.04 with=20
> UHD 4.3 and GRC 3.8.
>
> This is the terminal output from the E312.
> -----------------------------------------------------------------------=
----
> root@ni-e31x-32132F0:~# python3 ofdm_loopback.py
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;=20
> UHD_4.3.0.0-0-g1f8fd345
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132F0,n=
ame=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd345
> [INFO] [MPM.main] Spawning RPC process...
> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
> [INFO] [MPM.PeriphManager] Device serial number: 32132F0
> [WARNING] [MPM.PeriphManager] Found more EEPROM paths than=20
> daughterboards. Ignoring some of them.
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [INFO] [MPM.PeriphManager] init() called with device args=20
> `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132F0,product=3De310=
_sg3'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is=20
> deprecated and can lead to unexpected behaviour. Prefer calling=20
> tx_stream::recv_async_msg().
> [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps edge
> [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchronously)
> Press Enter to quit: Fatal Python error: Segmentation fault
>
> Thread 0xb6c09010 (most recent call first):
> =C2=A0 File "ofdm_loopback.py", line 132 in main
> =C2=A0 File "ofdm_loopback.py", line 140 in <module>
> Segmentation fault
> root@ni-e31x-32132F0:~#
> -----------------------------------------------------------------------=
-
>
> This is the python script generated from GRC
> -----------------------------------------------------------------------=
-
>
>  1. #!/usr/bin/env python3
>  2. # -*- coding: utf-8 -*-
> 3.
>
>  4. #
>  5. # SPDX-License-Identifier: GPL-3.0
>  6. #
>  7. # GNU Radio Python Flow Graph
>  8. # Title: OFDM Loopback Example
>  9. # Description: Transmit a pre-defined signal (a complex sine) as
>     OFDM packets.
> 10. # GNU Radio version: 3.8.1.0
>11.
>
> 12. from gnuradio import blocks
> 13. from gnuradio import digital
> 14. from gnuradio import gr
> 15. from gnuradio.filter import firdes
> 16. import sys
> 17. import signal
> 18. from argparse import ArgumentParser
> 19. from gnuradio.eng_arg import eng_float, intx
> 20. from gnuradio import eng_notation
> 21. from gnuradio import
>     uhdhttps://github.com/bastibl/gr-foo/tree/maint-3.9/lib
> 22. import time
> 23. import faulthandler; faulthandler.enable()
>24.
>
> 25. class ofdm_loopback(gr.top_block):
>26.
>
> 27. =C2=A0 =C2=A0 def __init__(self):
> 28. =C2=A0 =C2=A0 =C2=A0 =C2=A0 gr.top_block.__init__(self, "OFDM Loopb=
ack Example")
>29.
>
> 30. ##################################################
> 31. =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Variables
> 32. ##################################################
> 33. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate =3D 100e3
> 34. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_len =3D 50
> 35. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_tag_key =3D "p=
acket_len"
> 36. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D frecuencia_=
central =3D 0
> 37. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len =3D 64
>38.
>
> 39. ##################################################
> 40. =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Blocks
> 41. ##################################################
> 42. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(
> 43. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ",".join(("", "")),
> 44. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_args(
> 45. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_format=3D=
"fc32",
> 46. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 args=3D'',
> 47. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 channels=3D=
list(range(0,1)),
> 48. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),
> 49. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 '',
> 50. =C2=A0 =C2=A0 =C2=A0 =C2=A0 )
> 51. self.uhd_usrp_sink_0.set_center_freq(frecuencia_central, 0)
> 52. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(10, 0)
> 53. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna('TX/RX=
', 0)
> 54. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rate(samp=
_rate)
> 55. self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec())
> 56. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.digital_ofdm_tx_0 =3D digital.ofdm=
_tx(
> 57. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fft_len=3Dfft_len,
> 58. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp_len=3Dfft_len//4,
> 59. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 packet_length_tag_key=3Dl=
en_tag_key,
> 60. occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),
> 61. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_carriers=3D((-6,-5,=
5,6),),
> 62. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_symbols=3D((-1,1,-1=
,1),),
> 63. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word1=3DNone,
> 64. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word2=3DNone,
> 65. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_header=3D1,
> 66. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_payload=3D2,
> 67. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rolloff=3D0,
> 68. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debug_log=3DFalse,
> 69. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 scramble_bits=3DFalse)
> 70. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_vector_source_x_0 =3D
>     blocks.vector_source_b(range(packet_len), True, 1, ())
> 71. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tagged_stream_0 =3D
>     blocks.stream_to_tagged_stream(gr.sizeof_char, 1, packet_len,
>     len_tag_key)
>72.
>
>73.
>
>
>74.
>
>
>
> 75. ##################################################
> 76. =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Connections
> 77. ##################################################
> 78. self.connect((self.blocks_stream_to_tagged_stream_0, 0),
>     (self.digital_ofdm_tx_0, 0))
> 79. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks_vector_source=
_x_0, 0),
>     (self.blocks_stream_to_tagged_stream_0, 0))
> 80. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.digital_ofdm_tx_0, 0=
),
>     (self.uhd_usrp_sink_0, 0))
> 81. https://github.com/bastibl/gr-foo/tree/maint-3.9/lib
> 82. =C2=A0=C2=A0=C2=A0 def get_samp_rate(self):
> 83. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.samp_rate
>84.
>
> 85. =C2=A0=C2=A0=C2=A0 def set_samp_rate(self, samp_rate):
> 86. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate
> 87. self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)
>88.
>
> 89. =C2=A0=C2=A0=C2=A0 def get_packet_len(self):
> 90. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.packet_len
>91.
>
> 92. =C2=A0=C2=A0=C2=A0 def set_packet_len(self, packet_len):
> 93. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_len
> 94. self.blocks_stream_to_tagged_stream_0.set_packet_len(self.packet_le=
n)
> 95. self.blocks_stream_to_tagged_stream_0.set_packet_len_pmt(self.packe=
t_len)
> 96. self.blocks_vector_source_x_0.set_data(range(self.packet_len), ())
>97.
>
> 98. =C2=A0=C2=A0=C2=A0 def get_len_tag_key(self):
> 99. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.len_tag_key
>100.
>
> 101. =C2=A0=C2=A0=C2=A0 def set_len_tag_key(self, len_tag_key):
> 102. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_tag_key
>103.
>
> 104. =C2=A0=C2=A0=C2=A0 def get_frecuencia_central(self):
> 105. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.frecuencia_central
>106.
>
> 107. =C2=A0=C2=A0=C2=A0 def set_frecuencia_central(self, frecuencia_cen=
tral):
> 108. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D frecuencia=
_central
> 109. self.uhd_usrp_sink_0.set_center_freq(self.frecuencia_central, 0)
>110.
>
> 111. =C2=A0=C2=A0=C2=A0 def
>     get_fft_len(self):https://github.com/bastibl/gr-foo/tree/maint-3.9/=
lib
> 112. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.fft_len
>113.
>
> 114. =C2=A0=C2=A0=C2=A0 def set_fft_len(self, fft_len):
> 115. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len
>116.
>
>117.
>
>
>118.
>
>
>
> 119. def main(top_block_cls=3Dofdm_loopback, options=3DNone):
> 120. =C2=A0 =C2=A0 tb =3D top_block_cls()
>121.
>
> 122. =C2=A0=C2=A0 def sig_handler(sig=3DNone, frame=3DNone):
> 123. =C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.stop()
> 124. =C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.wait()
> 125. sys.exit(0)https://github.com/bastibl/gr-foo/tree/maint-3.9/lib
>126.
>
> 127. =C2=A0=C2=A0=C2=A0 signal.signal(signal.SIGINT, sig_handler)
> 128. =C2=A0 =C2=A0 signal.signal(signal.SIGTERM, sig_handler)
>129.
>
> 130. =C2=A0=C2=A0=C2=A0 tb.start()
> 131. =C2=A0 =C2=A0 try:
> 132. =C2=A0 =C2=A0 =C2=A0 =C2=A0 input('Press Enter to quit: ')
> 133. =C2=A0 =C2=A0 except EOFError:
> 134. =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass
> 135. =C2=A0 =C2=A0 tb.stop()
> 136. =C2=A0 =C2=A0 tb.wait()
>137.
>
>138.
>
>
> 139. if __name__ =3D=3D '__main__':
> 140. =C2=A0 =C2=A0 main()
>141.
>
>
> El mar, 6 jun 2023 a las 10:14, JORGE GONZALEZ ORELLANA=20
> (<jorge.gonzalez.o@mail.pucv.cl>) escribi=C3=B3:
>
>     Hi Marcus.
>     My mistake, sorry
>
>     This is the terminal output from the E312.
>     -------------------------------------------------------------------=
--------
>     root@ni-e31x-32132F0:~# python3 ofdm_loopback.py
>     [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
>     UHD_4.3.0.0-0-g1f8fd345
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132=
F0,name=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse
>     [INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd345
>     [INFO] [MPM.main] Spawning RPC
>     process...https://github.com/bastibl/gr-foo/tree/maint-3.9/lib
>     [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
>     [INFO] [MPM.PeriphManager] Device serial number: 32132F0
>     [WARNING] [MPM.PeriphManager] Found more EEPROM paths than
>     daughterboards. Ignoring some of them.
>     [INFO] [MPM.RPCServer] RPC server ready!
>     [INFO] [MPM.RPCServer] Spawning watchdog task...
>     [INFO] [MPM.PeriphManager] init() called with device args
>     `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132F0,product=3D=
e310_sg3'.
>     [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>     [INFO] [0/Radio#0] CODEC loopback test passed
>     [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>     [INFO] [0/Radio#0] CODEC loopback test passed
>     [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is
>     deprecated and can lead to unexpected behaviour. Prefer calling
>     tx_stream::recv_async_msg().
>     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps
>     edgehttps://github.com/bastibl/gr-foo/tree/maint-3.9/lib
>     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchronou=
sly)
>     Press Enter to quit: Fatal Python error: Segmentation fault
>
>     Thread 0xb6c09010 (most recent call first):
>     =C2=A0 File "ofdm_loopback.py", line 132 in main
>     =C2=A0 File "ofdm_loopback.py", line 140 in <module>
>     Segmentation fault
>     root@ni-e31x-32132F0:~#
>     -------------------------------------------------------------------=
-----
>
>     This is the python script generated from GRC
>     -------------------------------------------------------------------=
-----
>
>      1. #!/usr/bin/env python3
>      2. # -*- coding: utf-8 -*-
>     3.
>
>      4. #
>      5. # SPDX-License-Identifier: GPL-3.0
>      6. #
>      7. # GNU Radio Python Flow Graph
>      8. # Title: OFDM Loopback Example
>      9. # Description: Transmit a pre-defined signal (a complex sine)
>         as OFDM packets.
>     10. # GNU Radio version: 3.8.1.0
>    11.
>
>     12. from gnuradio import blocks
>     13. from gnuradio import digital
>     14. from gnuradio import gr
>     15. from gnuradio.filter import firdes
>     16. import sys
>     17. import signal
>     18. from argparse import ArgumentParser
>     19. from gnuradio.eng_arg import eng_float, intx
>     20. from gnuradio import eng_notation
>     21. from gnuradio import uhd
>     22. import time
>     23. import faulthandler; faulthandler.enable()
>    24.
>
>     25. class ofdm_loopback(gr.top_block):
>    26.
>
>     27. =C2=A0 =C2=A0 def __init__(self):
>     28. =C2=A0 =C2=A0 =C2=A0 =C2=A0 gr.top_block.__init__(self, "OFDM L=
oopback Example")
>    29.
>
>     30. ##################################################
>     31. =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Variables
>     32. ##################################################
>     33. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate =3D 10=
0e3
>     34. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_len =3D =
50
>     35. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_tag_key =3D=
 "packet_len"
>     36. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D frecuen=
cia_central =3D 0
>     37. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len =3D 64
>    38.
>
>     39. ##################################################
>     40. =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Blocks
>     41. ##################################################
>     42. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_s=
ink(
>     43. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ",".join(("", "")),
>     44. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_args(
>     45. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_for=
mat=3D"fc32",
>     46. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 args=3D=
'',
>     47. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 channel=
s=3Dlist(range(0,1)),
>     48. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),
>     49. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 '',
>     50. =C2=A0 =C2=A0 =C2=A0 =C2=A0 )
>     51. self.uhd_usrp_sink_0.set_center_freq(frecuencia_central, 0)
>     52. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(10, 0=
)
>     53. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna('T=
X/RX', 0)
>     54. self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
>     55. self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec())
>     56. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.digital_ofdm_tx_0 =3D digital.=
ofdm_tx(
>     57. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fft_len=3Dfft_len,
>     58. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp_len=3Dfft_len//4,
>     59. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 packet_length_tag_key=
=3Dlen_tag_key,
>     60. occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),
>     61. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_carriers=3D((-6=
,-5,5,6),),
>     62. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_symbols=3D((-1,=
1,-1,1),),
>     63. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word1=3DNone,
>     64. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word2=3DNone,
>     65. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_header=3D1,
>     66. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_payload=3D2,
>     67. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rolloff=3D0,
>     68. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debug_log=3DFalse,
>     69. =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 scramble_bits=3DFalse=
)
>     70. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_vector_source_x_0 =3D
>         blocks.vector_source_b(range(packet_len), True, 1, ())
>     71. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tagged_stream=
_0 =3D
>         blocks.stream_to_tagged_stream(gr.sizeof_char, 1, packet_len,
>         len_tag_key)
>    72.
>
>    73.
>
>
>    74.
>
>
>
>     75. ##################################################
>     76. =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Connections
>     77. ##################################################
>     78. self.connect((self.blocks_stream_to_tagged_stream_0, 0),
>         (self.digital_ofdm_tx_0, 0))
>     79. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks_vector_so=
urce_x_0, 0),
>         (self.blocks_stream_to_tagged_stream_0, 0))
>     80. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.digital_ofdm_tx_=
0, 0),
>         (self.uhd_usrp_sink_0, 0))
>    81.
>
>     82. =C2=A0=C2=A0=C2=A0 def get_samp_rate(self):
>     83. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.samp_rate
>    84.
>
>     85. =C2=A0=C2=A0=C2=A0 def set_samp_rate(self, samp_rate):
>     86. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate
>     87. self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)
>    88.
>
>     89. =C2=A0=C2=A0=C2=A0 def get_packet_len(self):
>     90. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.packet_len
>    91.
>
>     92. =C2=A0=C2=A0=C2=A0 def set_packet_len(self, packet_len):
>     93. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_len
>     94. self.blocks_stream_to_tagged_stream_0.set_packet_len(self.packe=
t_len)
>     95. self.blocks_stream_to_tagged_stream_0.set_packet_len_pmt(self.p=
acket_len)
>     96. self.blocks_vector_source_x_0.set_data(range(self.packet_len), =
())
>    97.
>
>     98. =C2=A0=C2=A0=C2=A0 def get_len_tag_key(self):
>     99. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.len_tag_key
>   100.
>
>    101. =C2=A0=C2=A0=C2=A0 def set_len_tag_key(self, len_tag_key):
>    102. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_tag_key
>   103.
>
>    104. =C2=A0=C2=A0=C2=A0 def get_frecuencia_central(self):
>    105. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.frecuencia_central
>   106.
>
>    107. =C2=A0=C2=A0=C2=A0 def set_frecuencia_central(self, frecuencia_=
central):
>    108. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D frecuen=
cia_central
>    109. self.uhd_usrp_sink_0.set_center_freq(self.frecuencia_central, 0=
)
>   110.
>
>    111. =C2=A0=C2=A0=C2=A0 def get_fft_len(self):
>    112. =C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.fft_len
>   113.
>
>    114. =C2=A0=C2=A0=C2=A0 def set_fft_len(self, fft_len):
>    115. =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len
>   116.
>
>   117.
>
>
>   118.
>
>
>
>    119. def main(top_block_cls=3Dofdm_loopback, options=3DNone):
>    120. =C2=A0 =C2=A0 tb =3D top_block_cls()
>   121.
>
>    122. =C2=A0=C2=A0 def sig_handler(sig=3DNone, frame=3DNone):
>    123. =C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.stop()
>    124. =C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.wait()
>    125. =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.exit(0)
>   126.
>
>    127. =C2=A0=C2=A0=C2=A0 signal.signal(signal.SIGINT, sig_handler)
>    128. =C2=A0 =C2=A0 signal.signal(signal.SIGTERM, sig_handler)
>   129.
>
>    130. =C2=A0=C2=A0=C2=A0 tb.start()
>    131. =C2=A0 =C2=A0 try:
>    132. =C2=A0 =C2=A0 =C2=A0 =C2=A0 input('Press Enter to quit: ')
>    133. =C2=A0 =C2=A0 except EOFError:
>    134. =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass
>    135. =C2=A0 =C2=A0 tb.stop()
>    136. =C2=A0 =C2=A0 tb.wait()
>    137. i
>   138.
>
>    139. f __name__ =3D=3D '__main__':
>    140. =C2=A0 =C2=A0 main()
>
>
>     El lun, 5 jun 2023 a las 17:33, Marcus M=C3=BCller
>     (<marcus.mueller@ettus.com>) escribi=C3=B3:
>
>         HI Jorge,
>
>         you didn't attach screenshots, but that's OK: We would much
>         rather have you include
>         copy&pasted text. Images are always inferior when it comes to
>         understanding text messages.
>
>         Best regards,
>         Marcus
>
>         On 05.06.23 22:19, JORGE GONZALEZ ORELLANA via USRP-users wrote=
:
>         > Hi all, I have been trying to implement the OFDM blocks on a
>         USRP E312, I am currently
>         > working on Ubuntu 20.04 with GRC 3.8 y UHD 4.3.
>         >
>         > When I try to run the python script generated from the GRC,
>         a segmentation fault error
>         > appears on the E312, I tried to use the faulthandler module
>         to see the root of this
>         > error, but i cannot get an idea of what could it be.
>         >
>         > I attached some screenshots, so you can see what I mean
>         >
>         > thanks for your time
>         :)https://github.com/bastibl/gr-foo/tree/maint-3.9/lib
>         >
>         > _______________________________________________
>         > USRP-users mailing list -- usrp-users@lists.ettus.com
>         > To unsubscribe send an email to usrp-users-leave@lists.ettus.=
com
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>
>
My guess is that there's something going awry in the digital.ofdm=20
blocks--probably a non-portability to ARM hardware or some
 =C2=A0 such.=C2=A0 Not something that Ettus/NI can fix--GR is NOT Ettus/=
NI software.

If you can get a core dump, you could pull it into GDB to see where it's=20
running off the rails.



--------------QmCuq04xQl9gCy2K9HnmhsKP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/06/2023 11:01, JORGE GONZALEZ
      ORELLANA via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFFpLrHakCGzGv-1NGfgtHpT8xpccijvTqojhsQXz-kXXe_o3w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Hi all, i re-ask this question because I can't find answers
          on Google.</div>
        <div>There is a segmentation fault error when I try to run an
          ofdm workflow example on a USRP E312, I am currently working
          on Ubuntu 20.04 with UHD 4.3 and GRC 3.8.</div>
        <div><br>
        </div>
        <div>
          <div>This is the terminal output from the E312.</div>
          <div>----------------------------------------------------------=
-----------------</div>
          <div>root@ni-e31x-32132F0:~# python3 ofdm_loopback.py<br>
            [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
            UHD_4.3.0.0-0-g1f8fd345<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132F0,nam=
e=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse<br>
            [INFO] [MPM.main] Launching USRP/MPM, version:
            4.3.0.0-g1f8fd345<br>
            [INFO] [MPM.main] Spawning RPC process...<br>
            [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility
            check!<br>
            [INFO] [MPM.PeriphManager] Device serial number: 32132F0<br>
            [WARNING] [MPM.PeriphManager] Found more EEPROM paths than
            daughterboards. Ignoring some of them.<br>
            [INFO] [MPM.RPCServer] RPC server ready!<br>
            [INFO] [MPM.RPCServer] Spawning watchdog task...<br>
            [INFO] [MPM.PeriphManager] init() called with device args
            `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132F0,prod=
uct=3De310_sg3'.<br>
            [INFO] [0/Radio#0] Performing CODEC loopback test on channel
            0 ... <br>
            [INFO] [0/Radio#0] CODEC loopback test passed<br>
            [INFO] [0/Radio#0] Performing CODEC loopback test on channel
            1 ... <br>
            [INFO] [0/Radio#0] CODEC loopback test passed<br>
            [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg()
            is deprecated and can lead to unexpected behaviour. Prefer
            calling tx_stream::recv_async_msg().<br>
            [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at=
 pps edge<br>
            [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
            (synchronously)<br>
            Press Enter to quit: Fatal Python error: Segmentation fault<b=
r>
            <br>
            Thread 0xb6c09010 (most recent call first):<br>
            =C2=A0 File "ofdm_loopback.py", line 132 in main<br>
            =C2=A0 File "ofdm_loopback.py", line 140 in &lt;module&gt;<br=
>
            Segmentation fault<br>
            root@ni-e31x-32132F0:~# <br>
------------------------------------------------------------------------<=
/div>
          <div><br>
          </div>
          <div>This is the python script generated from GRC<br>
          </div>
          <div>----------------------------------------------------------=
--------------</div>
          <div>
            <ol>
              <li>#!/usr/bin/env python3</li>
              <li># -*- coding: utf-8 -*-</li>
              <li><br>
              </li>
              <li>#</li>
              <li># SPDX-License-Identifier: GPL-3.0</li>
              <li>#</li>
              <li># GNU Radio Python Flow Graph</li>
              <li># Title: OFDM Loopback Example</li>
              <li># Description: Transmit a pre-defined signal (a
                complex sine) as OFDM packets.</li>
              <li># GNU Radio version: 3.8.1.0</li>
              <li><br>
              </li>
              <li>from gnuradio import blocks</li>
              <li>from gnuradio import digital</li>
              <li>from gnuradio import gr</li>
              <li>from gnuradio.filter import firdes</li>
              <li>import sys</li>
              <li>import signal</li>
              <li>from argparse import ArgumentParser</li>
              <li>from gnuradio.eng_arg import eng_float, intx</li>
              <li>from gnuradio import eng_notation</li>
              <li>from gnuradio import
                uhdhttps://github.com/bastibl/gr-foo/tree/maint-3.9/lib</=
li>
              <li>import time</li>
              <li>import faulthandler; faulthandler.enable()</li>
              <li><br>
              </li>
              <li>class ofdm_loopback(gr.top_block):</li>
              <li><br>
              </li>
              <li>=C2=A0 =C2=A0 def __init__(self):</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 gr.top_block.__init__(self,=
 "OFDM Loopback
                Example")</li>
              <li><br>
              </li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                ##################################################</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Variables</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                ##################################################</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rat=
e =3D 100e3</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_=
len =3D 50</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_ta=
g_key =3D "packet_len"</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D=
 frecuencia_central =3D
                0</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len =3D=
 64</li>
              <li><br>
              </li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                ##################################################</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Blocks</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                ##################################################</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0 =3D uh=
d.usrp_sink(</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ",".join(("",=
 "")),</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_ar=
gs(</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 cpu_format=3D"fc32",</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 args=3D'',</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 channels=3Dlist(range(0,1)),</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 '',</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 )</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                self.uhd_usrp_sink_0.set_center_freq(frecuencia_central,
                0)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_ga=
in(10, 0)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_an=
tenna('TX/RX', 0)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_sa=
mp_rate(samp_rate)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec()=
)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.digital_ofdm_tx_0 =3D =
digital.ofdm_tx(</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fft_len=3Dfft=
_len,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp_len=3Dfft_=
len//4,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 packet_length=
_tag_key=3Dlen_tag_key,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_carrier=
s=3D((-6,-5,5,6),),</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_symbols=
=3D((-1,1,-1,1),),</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word1=3D=
None,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word2=3D=
None,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_header=3D=
1,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_payload=3D=
2,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rolloff=3D0,<=
/li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debug_log=3DF=
alse,</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 scramble_bits=
=3DFalse)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_vector_source_x=
_0 =3D
                blocks.vector_source_b(range(packet_len), True, 1, ())</l=
i>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tagge=
d_stream_0 =3D
                blocks.stream_to_tagged_stream(gr.sizeof_char, 1,
                packet_len, len_tag_key)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
              </li>
              <li><br>
              </li>
              <li><br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                ##################################################</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Connections</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                ##################################################</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                self.connect((self.blocks_stream_to_tagged_stream_0, 0),
                (self.digital_ofdm_tx_0, 0))</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks_v=
ector_source_x_0,
                0), (self.blocks_stream_to_tagged_stream_0, 0))</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.digital_=
ofdm_tx_0, 0),
                (self.uhd_usrp_sink_0, 0))</li>
              <li>=C2=A0 =C2=A0
                <a class=3D"moz-txt-link-freetext" href=3D"https://github=
.com/bastibl/gr-foo/tree/maint-3.9/lib">https://github.com/bastibl/gr-foo=
/tree/maint-3.9/lib</a><br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def get_samp_rate(self):</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.samp_rate</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def set_samp_rate(self, samp_rate):<=
/li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rat=
e</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def get_packet_len(self):</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.packet_len</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def set_packet_len(self, packet_len)=
:</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_=
len</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                self.blocks_stream_to_tagged_stream_0.set_packet_len(self=
.packet_len)</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
self.blocks_stream_to_tagged_stream_0.set_packet_len_pmt(self.packet_len)=
</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                self.blocks_vector_source_x_0.set_data(range(self.packet_=
len),
                ())</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def get_len_tag_key(self):</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.len_tag_key</li=
>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def set_len_tag_key(self, len_tag_ke=
y):</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_ta=
g_key</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def get_frecuencia_central(self):</l=
i>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.frecuencia_cent=
ral</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def set_frecuencia_central(self,
                frecuencia_central):</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D=
 frecuencia_central</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                self.uhd_usrp_sink_0.set_center_freq(self.frecuencia_cent=
ral,
                0)</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def
                get_fft_len(self):<a class=3D"moz-txt-link-freetext" href=
=3D"https://github.com/bastibl/gr-foo/tree/maint-3.9/lib">https://github.=
com/bastibl/gr-foo/tree/maint-3.9/lib</a></li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.fft_len</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 def set_fft_len(self, fft_len):</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len</l=
i>
              <li><br>
              </li>
              <li><br>
              </li>
              <li><br>
              </li>
              <li>def main(top_block_cls=3Dofdm_loopback, options=3DNone)=
:</li>
              <li>=C2=A0 =C2=A0 tb =3D top_block_cls()</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0 def sig_handler(sig=3DNone, frame=3DNone):=
</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.stop()</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.wait()</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                sys.exit(0)<a class=3D"moz-txt-link-freetext" href=3D"htt=
ps://github.com/bastibl/gr-foo/tree/maint-3.9/lib">https://github.com/bas=
tibl/gr-foo/tree/maint-3.9/lib</a></li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 signal.signal(signal.SIGINT, sig_han=
dler)</li>
              <li>=C2=A0 =C2=A0 signal.signal(signal.SIGTERM, sig_handler=
)</li>
              <li>=C2=A0 =C2=A0 <br>
              </li>
              <li>=C2=A0=C2=A0=C2=A0 tb.start()</li>
              <li>=C2=A0 =C2=A0 try:</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 input('Press Enter to quit:=
 ')</li>
              <li>=C2=A0 =C2=A0 except EOFError:</li>
              <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pass</li>
              <li>=C2=A0 =C2=A0 tb.stop()</li>
              <li>=C2=A0 =C2=A0 tb.wait()</li>
              <li><br>
              </li>
              <li><br>
              </li>
              <li>if __name__ =3D=3D '__main__':</li>
              <li>=C2=A0 =C2=A0 main()</li>
              <li><br>
              </li>
            </ol>
          </div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">El mar, 6 jun 2023 a las
          10:14, JORGE GONZALEZ ORELLANA (&lt;<a
            href=3D"mailto:jorge.gonzalez.o@mail.pucv.cl"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">jorg=
e.gonzalez.o@mail.pucv.cl</a>&gt;)
          escribi=C3=B3:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>Hi Marcus.<br>
            </div>
            <div>My mistake, sorry</div>
            <div><br>
            </div>
            <div>This is the terminal output from the E312.</div>
            <div>--------------------------------------------------------=
-------------------</div>
            <div>root@ni-e31x-32132F0:~# python3 ofdm_loopback.py<br>
              [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
              UHD_4.3.0.0-0-g1f8fd345<br>
              [INFO] [MPMD] Initializing 1 device(s) in parallel with
              args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132F0,nam=
e=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse<br>
              [INFO] [MPM.main] Launching USRP/MPM, version:
              4.3.0.0-g1f8fd345<br>
              [INFO] [MPM.main] Spawning RPC
              process...https://github.com/bastibl/gr-foo/tree/maint-3.9/=
lib<br>
              [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility
              check!<br>
              [INFO] [MPM.PeriphManager] Device serial number: 32132F0<br=
>
              [WARNING] [MPM.PeriphManager] Found more EEPROM paths than
              daughterboards. Ignoring some of them.<br>
              [INFO] [MPM.RPCServer] RPC server ready!<br>
              [INFO] [MPM.RPCServer] Spawning watchdog task...<br>
              [INFO] [MPM.PeriphManager] init() called with device args
`fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132F0,product=3De310_s=
g3'.<br>
              [INFO] [0/Radio#0] Performing CODEC loopback test on
              channel 0 ... <br>
              [INFO] [0/Radio#0] CODEC loopback test passed<br>
              [INFO] [0/Radio#0] Performing CODEC loopback test on
              channel 1 ... <br>
              [INFO] [0/Radio#0] CODEC loopback test passed<br>
              [WARNING] [MULTI_USRP] Calling
              multi_usrp::recv_async_msg() is deprecated and can lead to
              unexpected behaviour. Prefer calling
              tx_stream::recv_async_msg().<br>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition =
at pps
              edgehttps://github.com/bastibl/gr-foo/tree/maint-3.9/lib<br=
>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
              (synchronously)<br>
              Press Enter to quit: Fatal Python error: Segmentation
              fault<br>
              <br>
              Thread 0xb6c09010 (most recent call first):<br>
              =C2=A0 File "ofdm_loopback.py", line 132 in main<br>
              =C2=A0 File "ofdm_loopback.py", line 140 in &lt;module&gt;<=
br>
              Segmentation fault<br>
              root@ni-e31x-32132F0:~# <br>
------------------------------------------------------------------------<=
/div>
            <div><br>
            </div>
            <div>This is the python script generated from GRC<br>
            </div>
            <div>--------------------------------------------------------=
----------------</div>
            <div>
              <ol>
                <li>#!/usr/bin/env python3</li>
                <li># -*- coding: utf-8 -*-</li>
                <li><br>
                </li>
                <li>#</li>
                <li># SPDX-License-Identifier: GPL-3.0</li>
                <li>#</li>
                <li># GNU Radio Python Flow Graph</li>
                <li># Title: OFDM Loopback Example</li>
                <li># Description: Transmit a pre-defined signal (a
                  complex sine) as OFDM packets.</li>
                <li># GNU Radio version: 3.8.1.0</li>
                <li><br>
                </li>
                <li>from gnuradio import blocks</li>
                <li>from gnuradio import digital</li>
                <li>from gnuradio import gr</li>
                <li>from gnuradio.filter import firdes</li>
                <li>import sys</li>
                <li>import signal</li>
                <li>from argparse import ArgumentParser</li>
                <li>from gnuradio.eng_arg import eng_float, intx</li>
                <li>from gnuradio import eng_notation</li>
                <li>from gnuradio import uhd</li>
                <li>import time</li>
                <li>import faulthandler; faulthandler.enable()</li>
                <li><br>
                </li>
                <li>class ofdm_loopback(gr.top_block):</li>
                <li><br>
                </li>
                <li>=C2=A0 =C2=A0 def __init__(self):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 gr.top_block.__init__(sel=
f, "OFDM Loopback
                  Example")</li>
                <li><br>
                </li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  ##################################################</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Variables</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  ##################################################</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_r=
ate =3D 100e3</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packe=
t_len =3D 50</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_=
tag_key =3D
                  "packet_len"</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D=
 frecuencia_central
                  =3D 0</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len =
=3D 64</li>
                <li><br>
                </li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  ##################################################</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Blocks</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  ##################################################</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0 =3D =
uhd.usrp_sink(</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ",".join(("=
", "")),</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_=
args(</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 cpu_format=3D"fc32",</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 args=3D'',</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 channels=3Dlist(range(0,1)),</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ),</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 '',</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 )</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.uhd_usrp_sink_0.set_center_freq(frecuencia_central=
,
                  0)</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_=
gain(10, 0)</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_=
antenna('TX/RX', 0)</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.uhd_usrp_sink_0.set_samp_rate(samp_rate)</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec=
())</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.digital_ofdm_tx_0 =3D=
 digital.ofdm_tx(</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fft_len=3Df=
ft_len,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp_len=3Dff=
t_len//4,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 packet_leng=
th_tag_key=3Dlen_tag_key,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                  occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_carri=
ers=3D((-6,-5,5,6),),</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_symbo=
ls=3D((-1,1,-1,1),),</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word1=3D=
None,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word2=3D=
None,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_header=3D=
1,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_payload=
=3D2,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rolloff=3D0=
,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debug_log=3D=
False,</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 scramble_bi=
ts=3DFalse)</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_vector_source=
_x_0 =3D
                  blocks.vector_source_b(range(packet_len), True, 1, ())<=
/li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tag=
ged_stream_0 =3D
                  blocks.stream_to_tagged_stream(gr.sizeof_char, 1,
                  packet_len, len_tag_key)</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
                </li>
                <li><br>
                </li>
                <li><br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                  ##################################################</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Connections</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  ##################################################</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.connect((self.blocks_stream_to_tagged_stream_0,
                  0), (self.digital_ofdm_tx_0, 0))</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks=
_vector_source_x_0,
                  0), (self.blocks_stream_to_tagged_stream_0, 0))</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.digita=
l_ofdm_tx_0, 0),
                  (self.uhd_usrp_sink_0, 0))</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def get_samp_rate(self):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.samp_rate</li=
>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def set_samp_rate(self, samp_rate)=
:</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_r=
ate</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def get_packet_len(self):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.packet_len</l=
i>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def set_packet_len(self, packet_le=
n):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packe=
t_len</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.blocks_stream_to_tagged_stream_0.set_packet_len(se=
lf.packet_len)</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
self.blocks_stream_to_tagged_stream_0.set_packet_len_pmt(self.packet_len)=
</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.blocks_vector_source_x_0.set_data(range(self.packe=
t_len),
                  ())</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def get_len_tag_key(self):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.len_tag_key</=
li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def set_len_tag_key(self, len_tag_=
key):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_=
tag_key</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def get_frecuencia_central(self):<=
/li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.frecuencia_ce=
ntral</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def set_frecuencia_central(self,
                  frecuencia_central):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D=
 frecuencia_central</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0
                  self.uhd_usrp_sink_0.set_center_freq(self.frecuencia_ce=
ntral,
                  0)</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def get_fft_len(self):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.fft_len</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 def set_fft_len(self, fft_len):</l=
i>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft_len<=
/li>
                <li><br>
                </li>
                <li><br>
                </li>
                <li><br>
                </li>
                <li>def main(top_block_cls=3Dofdm_loopback, options=3DNon=
e):</li>
                <li>=C2=A0 =C2=A0 tb =3D top_block_cls()</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0 def sig_handler(sig=3DNone, frame=3DNone=
):</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.stop()</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.wait()</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.exit(0)</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 signal.signal(signal.SIGINT, sig_h=
andler)</li>
                <li>=C2=A0 =C2=A0 signal.signal(signal.SIGTERM, sig_handl=
er)</li>
                <li>=C2=A0 =C2=A0 <br>
                </li>
                <li>=C2=A0=C2=A0=C2=A0 tb.start()</li>
                <li>=C2=A0 =C2=A0 try:</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 input('Press Enter to qui=
t: ')</li>
                <li>=C2=A0 =C2=A0 except EOFError:</li>
                <li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pass</li>
                <li>=C2=A0 =C2=A0 tb.stop()</li>
                <li>=C2=A0 =C2=A0 tb.wait()</li>
                <li>i</li>
                <li><br>
                </li>
                <li>f __name__ =3D=3D '__main__':</li>
                <li>=C2=A0 =C2=A0 main()</li>
              </ol>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">El lun, 5 jun 2023 a la=
s
              17:33, Marcus M=C3=BCller (&lt;<a
                href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank=
"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
marcus.mueller@ettus.com</a>&gt;)
              escribi=C3=B3:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">HI Jorge,<br>
              <br>
              you didn't attach screenshots, but that's OK: We would
              much rather have you include <br>
              copy&amp;pasted text. Images are always inferior when it
              comes to understanding text messages.<br>
              <br>
              Best regards,<br>
              Marcus<br>
              <br>
              On 05.06.23 22:19, JORGE GONZALEZ ORELLANA via USRP-users
              wrote:<br>
              &gt; Hi all, I have been trying to implement the OFDM
              blocks on a USRP E312, I am currently <br>
              &gt; working on Ubuntu 20.04 with GRC 3.8 y UHD 4.3.<br>
              &gt;<br>
              &gt; When I try to run the python script generated from
              the GRC, a segmentation fault error <br>
              &gt; appears on the E312, I tried to use the faulthandler
              module to see the root of this <br>
              &gt; error, but i cannot get an idea of what could it be.<b=
r>
              &gt;<br>
              &gt; I attached some screenshots, so you can see what I
              mean<br>
              &gt;<br>
              &gt; thanks for your time
              :)<a class=3D"moz-txt-link-freetext" href=3D"https://github=
.com/bastibl/gr-foo/tree/maint-3.9/lib">https://github.com/bastibl/gr-foo=
/tree/maint-3.9/lib</a><br>
              &gt;<br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              &gt; To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <br>
    </blockquote>
    My guess is that there's something going awry in the digital.ofdm
    blocks--probably a non-portability to ARM hardware or some<br>
    =C2=A0 such.=C2=A0 Not something that Ettus/NI can fix--GR is NOT Ett=
us/NI
    software.<br>
    <br>
    If you can get a core dump, you could pull it into GDB to see where
    it's running off the rails.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------QmCuq04xQl9gCy2K9HnmhsKP--

--===============1144179385930943392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1144179385930943392==--
