Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F61372639B
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 17:02:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B984384916
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 11:02:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686150166; bh=1kYoBuvBAR7gqNZnLbijtTXa+QYAywUVtwSNhiE8pqA=;
	h=References:In-Reply-To:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Y6Zdu8fLYXqWt2Q1HozOvmz5vzH6eVG+6uKjiuVTYQRvYRm4UPPVXw3+1DLkO7MXM
	 qV1L89mP3aT+i3oMVEmpNMDO7J6Lv/0f2UyfKWmhn0RjSEH3CIhpUhdQNUCqvKEY+O
	 9CwQAP1tUsvht6aaDyfRxoL9Jf5R2k7YiRpSFlUd8a0npHP5fqNeQousJXLMMlH36V
	 WHrAqzhTpV0v3b5nKqDgHRC/tk+KV4CyfrZZwM3tuNtHjdx6U2/VrNgbcA2T6tAjtm
	 SLFMrbLp9drBbMb0QZB/rnwzXr4/+ZpCwtGiqGYolIKRJi9qFXY5ZzGYrIL/cN1ym0
	 FL/XBAPtr/p+w==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5CE30384394
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 11:01:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=mail-pucv-cl.20221208.gappssmtp.com header.i=@mail-pucv-cl.20221208.gappssmtp.com header.b="enkUmhEc";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-51456392cbbso1448900a12.0
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 08:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-pucv-cl.20221208.gappssmtp.com; s=20221208; t=1686150080; x=1688742080;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DnBg8U12OOxyKN/sY/CYKvb5KYlnM44fzZstNtCyYHE=;
        b=enkUmhEce9XI9v9D4+0ArSdA2uZOmOSfHBLWOpct8eTtwhTUgwnuKSS9l+Y9aBp+lT
         0jp3He3D2ivB1qp5cDlGk2Z8R9q/98FMrzMslJx474glHEtR05IJiJCDrsnoWTYWxmss
         ZosHUM4Sh0seAi+AdsjGo9Dj1O8QPWhKahnbM5AHzTHLRO6Dzby8lDzVreeunKrvXZhL
         teJQSw7e1YP0jVyRsaB1hCHAKebZlIkDfQOzagklD1BzsnqPoIas6NnuRkjzXRF37BqU
         /390Yc0sx8TVRQoccpa+Bl5oc7dXjXf4wv3hoFjLNV844zdBhpsIppC8SXn2/zNeEXSb
         hXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686150080; x=1688742080;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DnBg8U12OOxyKN/sY/CYKvb5KYlnM44fzZstNtCyYHE=;
        b=SUH2EsD5xFj1rQy1uNekzEoFm+NKLz+Xrgq/bO5se6FcOrc4C8ke6Pl8E9by8eorgZ
         s7vDfaG1TokEcthyAzQKjQYIj774AcTtx6a6ZTUKVhFL7mkh/c9SGqDm1htB5qQaVrVE
         fRoO0Yufv1se3PDN/gX/JOnJwRT82HYJzDZ5XRP9R1uQq7VdG6JQOfVzeNQzBJE0c+yN
         mSttzq1UryaPOh8Ix34KIy75L0ZtorxEJwcd+9qN1uZle3YMTSRrQ1p7/v3FOrq8cM1+
         0z8qEHwZ0cOVrQa1lQ3p01om1Cdv+l0CSxLIWdx5ROy5b8ONGLxXzjWVznFpiLGJ+yqG
         Obhg==
X-Gm-Message-State: AC+VfDw1PzZ0/L1uLLV4iuzNENw5/JX8Y9wvYFh1YWiNANufwtTvX1ZL
	csrS9TBwtYupXy9ZLwkOv6tUB+CUbteY5ttKGxXVF0wFLVGNihzjLw==
X-Google-Smtp-Source: ACHHUZ7dl6AhapIR6emaLbZ3MIiKia/w1ForvvX1vEP0hkA4iC9FlDUJ5g3j74shyFTPVUBGAUe/KkrrvI1aRLc8VrY=
X-Received: by 2002:aa7:c256:0:b0:514:a302:c334 with SMTP id
 y22-20020aa7c256000000b00514a302c334mr5392530edo.14.1686150079679; Wed, 07
 Jun 2023 08:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAFFpLrGe-Dnc=bUJk6+ebzDf_SqziwoMXRQCSDeZGZ9kJ687ng@mail.gmail.com>
 <c3e840ff-501f-85ba-f8e0-170308846f6f@ettus.com> <CAFFpLrG-EfEdn6g65fMrzYtBQ5U0nFzjh-ZT21Od9RiD+P3VEA@mail.gmail.com>
In-Reply-To: <CAFFpLrG-EfEdn6g65fMrzYtBQ5U0nFzjh-ZT21Od9RiD+P3VEA@mail.gmail.com>
Date: Wed, 7 Jun 2023 11:01:08 -0400
Message-ID: <CAFFpLrHakCGzGv-1NGfgtHpT8xpccijvTqojhsQXz-kXXe_o3w@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: IOS7CZPEXIIBLFBL5HRNJXHADZPAKCMQ
X-Message-ID-Hash: IOS7CZPEXIIBLFBL5HRNJXHADZPAKCMQ
X-MailFrom: jorge.gonzalez.o@mail.pucv.cl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Segmentation fault in OFDM implementation on USRP E312
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IOS7CZPEXIIBLFBL5HRNJXHADZPAKCMQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: JORGE GONZALEZ ORELLANA via USRP-users <usrp-users@lists.ettus.com>
Reply-To: JORGE GONZALEZ ORELLANA <jorge.gonzalez.o@mail.pucv.cl>
Content-Type: multipart/mixed; boundary="===============1904399247661534886=="

--===============1904399247661534886==
Content-Type: multipart/alternative; boundary="00000000000089a70505fd8b6895"

--00000000000089a70505fd8b6895
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all, i re-ask this question because I can't find answers on Google.
There is a segmentation fault error when I try to run an ofdm workflow
example on a USRP E312, I am currently working on Ubuntu 20.04 with UHD 4.3
and GRC 3.8.

This is the terminal output from the E312.
---------------------------------------------------------------------------
root@ni-e31x-32132F0:~# python3 ofdm_loopback.py
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
UHD_4.3.0.0-0-g1f8fd345
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132F0,name=
=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse
[INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd345
[INFO] [MPM.main] Spawning RPC process...
[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
[INFO] [MPM.PeriphManager] Device serial number: 32132F0
[WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards.
Ignoring some of them.
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPM.PeriphManager] init() called with device args
`fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132F0,product=3De310_sg3=
'.
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
[INFO] [0/Radio#0] CODEC loopback test passed
[WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated
and can lead to unexpected behaviour. Prefer calling
tx_stream::recv_async_msg().
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
Press Enter to quit: Fatal Python error: Segmentation fault

Thread 0xb6c09010 (most recent call first):
  File "ofdm_loopback.py", line 132 in main
  File "ofdm_loopback.py", line 140 in <module>
Segmentation fault
root@ni-e31x-32132F0:~#
------------------------------------------------------------------------

This is the python script generated from GRC
------------------------------------------------------------------------

   1. #!/usr/bin/env python3
   2. # -*- coding: utf-8 -*-
   3.
   4. #
   5. # SPDX-License-Identifier: GPL-3.0
   6. #
   7. # GNU Radio Python Flow Graph
   8. # Title: OFDM Loopback Example
   9. # Description: Transmit a pre-defined signal (a complex sine) as OFDM
   packets.
   10. # GNU Radio version: 3.8.1.0
   11.
   12. from gnuradio import blocks
   13. from gnuradio import digital
   14. from gnuradio import gr
   15. from gnuradio.filter import firdes
   16. import sys
   17. import signal
   18. from argparse import ArgumentParser
   19. from gnuradio.eng_arg import eng_float, intx
   20. from gnuradio import eng_notation
   21. from gnuradio import uhd
   22. import time
   23. import faulthandler; faulthandler.enable()
   24.
   25. class ofdm_loopback(gr.top_block):
   26.
   27.     def __init__(self):
   28.         gr.top_block.__init__(self, "OFDM Loopback Example")
   29.
   30.         ##################################################
   31.         # Variables
   32.         ##################################################
   33.         self.samp_rate =3D samp_rate =3D 100e3
   34.         self.packet_len =3D packet_len =3D 50
   35.         self.len_tag_key =3D len_tag_key =3D "packet_len"
   36.         self.frecuencia_central =3D frecuencia_central =3D 0
   37.         self.fft_len =3D fft_len =3D 64
   38.
   39.         ##################################################
   40.         # Blocks
   41.         ##################################################
   42.         self.uhd_usrp_sink_0 =3D uhd.usrp_sink(
   43.             ",".join(("", "")),
   44.             uhd.stream_args(
   45.                 cpu_format=3D"fc32",
   46.                 args=3D'',
   47.                 channels=3Dlist(range(0,1)),
   48.             ),
   49.             '',
   50.         )
   51.         self.uhd_usrp_sink_0.set_center_freq(frecuencia_central, 0)
   52.         self.uhd_usrp_sink_0.set_gain(10, 0)
   53.         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
   54.         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
   55.         self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec())
   56.         self.digital_ofdm_tx_0 =3D digital.ofdm_tx(
   57.             fft_len=3Dfft_len,
   58.             cp_len=3Dfft_len//4,
   59.             packet_length_tag_key=3Dlen_tag_key,
   60.             occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),
   61.             pilot_carriers=3D((-6,-5,5,6),),
   62.             pilot_symbols=3D((-1,1,-1,1),),
   63.             sync_word1=3DNone,
   64.             sync_word2=3DNone,
   65.             bps_header=3D1,
   66.             bps_payload=3D2,
   67.             rolloff=3D0,
   68.             debug_log=3DFalse,
   69.             scramble_bits=3DFalse)
   70.         self.blocks_vector_source_x_0 =3D
   blocks.vector_source_b(range(packet_len), True, 1, ())
   71.         self.blocks_stream_to_tagged_stream_0 =3D
   blocks.stream_to_tagged_stream(gr.sizeof_char, 1, packet_len, len_tag_ke=
y)
   72.
   73.
   74.
   75.         ##################################################
   76.         # Connections
   77.         ##################################################
   78.         self.connect((self.blocks_stream_to_tagged_stream_0, 0),
   (self.digital_ofdm_tx_0, 0))
   79.         self.connect((self.blocks_vector_source_x_0, 0),
   (self.blocks_stream_to_tagged_stream_0, 0))
   80.         self.connect((self.digital_ofdm_tx_0, 0),
   (self.uhd_usrp_sink_0, 0))
   81.
   82.     def get_samp_rate(self):
   83.         return self.samp_rate
   84.
   85.     def set_samp_rate(self, samp_rate):
   86.         self.samp_rate =3D samp_rate
   87.         self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)
   88.
   89.     def get_packet_len(self):
   90.         return self.packet_len
   91.
   92.     def set_packet_len(self, packet_len):
   93.         self.packet_len =3D packet_len
   94.
   self.blocks_stream_to_tagged_stream_0.set_packet_len(self.packet_len)
   95.
   self.blocks_stream_to_tagged_stream_0.set_packet_len_pmt(self.packet_len=
)
   96.
   self.blocks_vector_source_x_0.set_data(range(self.packet_len), ())
   97.
   98.     def get_len_tag_key(self):
   99.         return self.len_tag_key
   100.
   101.     def set_len_tag_key(self, len_tag_key):
   102.         self.len_tag_key =3D len_tag_key
   103.
   104.     def get_frecuencia_central(self):
   105.         return self.frecuencia_central
   106.
   107.     def set_frecuencia_central(self, frecuencia_central):
   108.         self.frecuencia_central =3D frecuencia_central
   109.
   self.uhd_usrp_sink_0.set_center_freq(self.frecuencia_central, 0)
   110.
   111.     def get_fft_len(self):
   112.         return self.fft_len
   113.
   114.     def set_fft_len(self, fft_len):
   115.         self.fft_len =3D fft_len
   116.
   117.
   118.
   119. def main(top_block_cls=3Dofdm_loopback, options=3DNone):
   120.     tb =3D top_block_cls()
   121.
   122.    def sig_handler(sig=3DNone, frame=3DNone):
   123.         tb.stop()
   124.         tb.wait()
   125.         sys.exit(0)
   126.
   127.     signal.signal(signal.SIGINT, sig_handler)
   128.     signal.signal(signal.SIGTERM, sig_handler)
   129.
   130.     tb.start()
   131.     try:
   132.         input('Press Enter to quit: ')
   133.     except EOFError:
   134.         pass
   135.     tb.stop()
   136.     tb.wait()
   137.
   138.
   139. if __name__ =3D=3D '__main__':
   140.     main()
   141.


El mar, 6 jun 2023 a las 10:14, JORGE GONZALEZ ORELLANA (<
jorge.gonzalez.o@mail.pucv.cl>) escribi=C3=B3:

> Hi Marcus.
> My mistake, sorry
>
> This is the terminal output from the E312.
> -------------------------------------------------------------------------=
--
> root@ni-e31x-32132F0:~# python3 ofdm_loopback.py
> [INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100;
> UHD_4.3.0.0-0-g1f8fd345
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132F0,nam=
e=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse
> [INFO] [MPM.main] Launching USRP/MPM, version: 4.3.0.0-g1f8fd345
> [INFO] [MPM.main] Spawning RPC process...
> [WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility check!
> [INFO] [MPM.PeriphManager] Device serial number: 32132F0
> [WARNING] [MPM.PeriphManager] Found more EEPROM paths than daughterboards=
.
> Ignoring some of them.
> [INFO] [MPM.RPCServer] RPC server ready!
> [INFO] [MPM.RPCServer] Spawning watchdog task...
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132F0,product=3De310_s=
g3'.
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [WARNING] [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated
> and can lead to unexpected behaviour. Prefer calling
> tx_stream::recv_async_msg().
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> Press Enter to quit: Fatal Python error: Segmentation fault
>
> Thread 0xb6c09010 (most recent call first):
>   File "ofdm_loopback.py", line 132 in main
>   File "ofdm_loopback.py", line 140 in <module>
> Segmentation fault
> root@ni-e31x-32132F0:~#
> ------------------------------------------------------------------------
>
> This is the python script generated from GRC
> ------------------------------------------------------------------------
>
>    1. #!/usr/bin/env python3
>    2. # -*- coding: utf-8 -*-
>    3.
>    4. #
>    5. # SPDX-License-Identifier: GPL-3.0
>    6. #
>    7. # GNU Radio Python Flow Graph
>    8. # Title: OFDM Loopback Example
>    9. # Description: Transmit a pre-defined signal (a complex sine) as
>    OFDM packets.
>    10. # GNU Radio version: 3.8.1.0
>    11.
>    12. from gnuradio import blocks
>    13. from gnuradio import digital
>    14. from gnuradio import gr
>    15. from gnuradio.filter import firdes
>    16. import sys
>    17. import signal
>    18. from argparse import ArgumentParser
>    19. from gnuradio.eng_arg import eng_float, intx
>    20. from gnuradio import eng_notation
>    21. from gnuradio import uhd
>    22. import time
>    23. import faulthandler; faulthandler.enable()
>    24.
>    25. class ofdm_loopback(gr.top_block):
>    26.
>    27.     def __init__(self):
>    28.         gr.top_block.__init__(self, "OFDM Loopback Example")
>    29.
>    30.         ##################################################
>    31.         # Variables
>    32.         ##################################################
>    33.         self.samp_rate =3D samp_rate =3D 100e3
>    34.         self.packet_len =3D packet_len =3D 50
>    35.         self.len_tag_key =3D len_tag_key =3D "packet_len"
>    36.         self.frecuencia_central =3D frecuencia_central =3D 0
>    37.         self.fft_len =3D fft_len =3D 64
>    38.
>    39.         ##################################################
>    40.         # Blocks
>    41.         ##################################################
>    42.         self.uhd_usrp_sink_0 =3D uhd.usrp_sink(
>    43.             ",".join(("", "")),
>    44.             uhd.stream_args(
>    45.                 cpu_format=3D"fc32",
>    46.                 args=3D'',
>    47.                 channels=3Dlist(range(0,1)),
>    48.             ),
>    49.             '',
>    50.         )
>    51.         self.uhd_usrp_sink_0.set_center_freq(frecuencia_central, 0=
)
>    52.         self.uhd_usrp_sink_0.set_gain(10, 0)
>    53.         self.uhd_usrp_sink_0.set_antenna('TX/RX', 0)
>    54.         self.uhd_usrp_sink_0.set_samp_rate(samp_rate)
>    55.         self.uhd_usrp_sink_0.set_time_unknown_pps(uhd.time_spec())
>    56.         self.digital_ofdm_tx_0 =3D digital.ofdm_tx(
>    57.             fft_len=3Dfft_len,
>    58.             cp_len=3Dfft_len//4,
>    59.             packet_length_tag_key=3Dlen_tag_key,
>    60.             occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),
>    61.             pilot_carriers=3D((-6,-5,5,6),),
>    62.             pilot_symbols=3D((-1,1,-1,1),),
>    63.             sync_word1=3DNone,
>    64.             sync_word2=3DNone,
>    65.             bps_header=3D1,
>    66.             bps_payload=3D2,
>    67.             rolloff=3D0,
>    68.             debug_log=3DFalse,
>    69.             scramble_bits=3DFalse)
>    70.         self.blocks_vector_source_x_0 =3D
>    blocks.vector_source_b(range(packet_len), True, 1, ())
>    71.         self.blocks_stream_to_tagged_stream_0 =3D
>    blocks.stream_to_tagged_stream(gr.sizeof_char, 1, packet_len, len_tag_=
key)
>    72.
>    73.
>    74.
>    75.         ##################################################
>    76.         # Connections
>    77.         ##################################################
>    78.         self.connect((self.blocks_stream_to_tagged_stream_0, 0),
>    (self.digital_ofdm_tx_0, 0))
>    79.         self.connect((self.blocks_vector_source_x_0, 0),
>    (self.blocks_stream_to_tagged_stream_0, 0))
>    80.         self.connect((self.digital_ofdm_tx_0, 0),
>    (self.uhd_usrp_sink_0, 0))
>    81.
>    82.     def get_samp_rate(self):
>    83.         return self.samp_rate
>    84.
>    85.     def set_samp_rate(self, samp_rate):
>    86.         self.samp_rate =3D samp_rate
>    87.         self.uhd_usrp_sink_0.set_samp_rate(self.samp_rate)
>    88.
>    89.     def get_packet_len(self):
>    90.         return self.packet_len
>    91.
>    92.     def set_packet_len(self, packet_len):
>    93.         self.packet_len =3D packet_len
>    94.
>    self.blocks_stream_to_tagged_stream_0.set_packet_len(self.packet_len)
>    95.
>    self.blocks_stream_to_tagged_stream_0.set_packet_len_pmt(self.packet_l=
en)
>    96.
>    self.blocks_vector_source_x_0.set_data(range(self.packet_len), ())
>    97.
>    98.     def get_len_tag_key(self):
>    99.         return self.len_tag_key
>    100.
>    101.     def set_len_tag_key(self, len_tag_key):
>    102.         self.len_tag_key =3D len_tag_key
>    103.
>    104.     def get_frecuencia_central(self):
>    105.         return self.frecuencia_central
>    106.
>    107.     def set_frecuencia_central(self, frecuencia_central):
>    108.         self.frecuencia_central =3D frecuencia_central
>    109.
>    self.uhd_usrp_sink_0.set_center_freq(self.frecuencia_central, 0)
>    110.
>    111.     def get_fft_len(self):
>    112.         return self.fft_len
>    113.
>    114.     def set_fft_len(self, fft_len):
>    115.         self.fft_len =3D fft_len
>    116.
>    117.
>    118.
>    119. def main(top_block_cls=3Dofdm_loopback, options=3DNone):
>    120.     tb =3D top_block_cls()
>    121.
>    122.    def sig_handler(sig=3DNone, frame=3DNone):
>    123.         tb.stop()
>    124.         tb.wait()
>    125.         sys.exit(0)
>    126.
>    127.     signal.signal(signal.SIGINT, sig_handler)
>    128.     signal.signal(signal.SIGTERM, sig_handler)
>    129.
>    130.     tb.start()
>    131.     try:
>    132.         input('Press Enter to quit: ')
>    133.     except EOFError:
>    134.         pass
>    135.     tb.stop()
>    136.     tb.wait()
>    137. i
>    138.
>    139. f __name__ =3D=3D '__main__':
>    140.     main()
>
>
> El lun, 5 jun 2023 a las 17:33, Marcus M=C3=BCller (<marcus.mueller@ettus=
.com>)
> escribi=C3=B3:
>
>> HI Jorge,
>>
>> you didn't attach screenshots, but that's OK: We would much rather have
>> you include
>> copy&pasted text. Images are always inferior when it comes to
>> understanding text messages.
>>
>> Best regards,
>> Marcus
>>
>> On 05.06.23 22:19, JORGE GONZALEZ ORELLANA via USRP-users wrote:
>> > Hi all, I have been trying to implement the OFDM blocks on a USRP E312=
,
>> I am currently
>> > working on Ubuntu 20.04 with GRC 3.8 y UHD 4.3.
>> >
>> > When I try to run the python script generated from the GRC, a
>> segmentation fault error
>> > appears on the E312, I tried to use the faulthandler module to see the
>> root of this
>> > error, but i cannot get an idea of what could it be.
>> >
>> > I attached some screenshots, so you can see what I mean
>> >
>> > thanks for your time :)
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000089a70505fd8b6895
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, i re-ask this question because I can&#39;t fi=
nd answers on Google.</div><div>There is a segmentation fault error when I =
try to run an ofdm workflow example on a USRP E312, I am currently working =
on Ubuntu 20.04 with UHD 4.3 and GRC 3.8.</div><div><br></div><div><div>Thi=
s is the terminal output from the E312.</div><div>-------------------------=
--------------------------------------------------</div><div>root@ni-e31x-3=
2132F0:~# python3 ofdm_loopback.py<br>[INFO] [UHD] linux; GNU C++ version 9=
.2.0; Boost_107100; UHD_4.3.0.0-0-g1f8fd345<br>[INFO]
 [MPMD] Initializing 1 device(s) in parallel with args:=20
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132F0,name=
=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse<br>[INFO] [MPM.main] Launchin=
g USRP/MPM, version: 4.3.0.0-g1f8fd345<br>[INFO] [MPM.main] Spawning RPC pr=
ocess...<br>[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility chec=
k!<br>[INFO] [MPM.PeriphManager] Device serial number: 32132F0<br>[WARNING]=
 [MPM.PeriphManager] Found more EEPROM paths than daughterboards. Ignoring =
some of them.<br>[INFO] [MPM.RPCServer] RPC server ready!<br>[INFO] [MPM.RP=
CServer] Spawning watchdog task...<br>[INFO] [MPM.PeriphManager] init() cal=
led with device args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132=
F0,product=3De310_sg3&#39;.<br>[INFO] [0/Radio#0] Performing CODEC loopback=
 test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br=
>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... <br>[IN=
FO] [0/Radio#0] CODEC loopback test passed<br>[WARNING]
 [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated and can
 lead to unexpected behaviour. Prefer calling=20
tx_stream::recv_async_msg().<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch =
time transition at pps edge<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set tim=
es next pps (synchronously)<br>Press Enter to quit: Fatal Python error: Seg=
mentation fault<br><br>Thread 0xb6c09010 (most recent call first):<br>=C2=
=A0 File &quot;ofdm_loopback.py&quot;, line 132 in main<br>=C2=A0 File &quo=
t;ofdm_loopback.py&quot;, line 140 in &lt;module&gt;<br>Segmentation fault<=
br>root@ni-e31x-32132F0:~# <br>--------------------------------------------=
----------------------------</div><div><br></div><div>This is the python sc=
ript generated from GRC<br></div><div>-------------------------------------=
-----------------------------------</div><div><ol><li>#!/usr/bin/env python=
3</li><li># -*- coding: utf-8 -*-</li><li><br></li><li>#</li><li># SPDX-Lic=
ense-Identifier: GPL-3.0</li><li>#</li><li># GNU Radio Python Flow Graph</l=
i><li># Title: OFDM Loopback Example</li><li># Description: Transmit a pre-=
defined signal (a complex sine) as OFDM packets.</li><li># GNU Radio versio=
n: 3.8.1.0</li><li><br></li><li>from gnuradio import blocks</li><li>from gn=
uradio import digital</li><li>from gnuradio import gr</li><li>from gnuradio=
.filter import firdes</li><li>import sys</li><li>import signal</li><li>from=
 argparse import ArgumentParser</li><li>from gnuradio.eng_arg import eng_fl=
oat, intx</li><li>from gnuradio import eng_notation</li><li>from gnuradio i=
mport uhd</li><li>import time</li><li>import faulthandler; faulthandler.ena=
ble()</li><li><br></li><li>class ofdm_loopback(gr.top_block):</li><li><br><=
/li><li>=C2=A0 =C2=A0 def __init__(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 gr.top_block.__init__(self, &quot;OFDM Loopback Example&quot;)</li><li>=
<br></li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ##################################=
################</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Variables</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ###############################################=
###</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate =3D 10=
0e3</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_len =3D =
50</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_tag_key =3D=
 &quot;packet_len&quot;</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia=
_central =3D frecuencia_central =3D 0</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
elf.fft_len =3D fft_len =3D 64</li><li><br></li><li>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ##################################################</li><li>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Blocks</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #########=
#########################################</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(</li><li>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;,&quot;.join((&quot;&quot;, &quot;&quot;)),</li>=
<li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_args(</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_format=3D&quot;fc3=
2&quot;,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ar=
gs=3D&#39;&#39;,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 channels=3Dlist(range(0,1)),</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ),</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;,=
</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 )</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
self.uhd_usrp_sink_0.set_center_freq(frecuencia_central, 0)</li><li>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(10, 0)</li><li>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/RX&#39;, 0)</=
li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rate(samp_=
rate)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_time_unk=
nown_pps(uhd.time_spec())</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.digital_=
ofdm_tx_0 =3D digital.ofdm_tx(</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 fft_len=3Dfft_len,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 cp_len=3Dfft_len//4,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pac=
ket_length_tag_key=3Dlen_tag_key,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),</li><li>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_carriers=3D((-6,-5,5,6),),</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_symbols=3D((-1,1,-1,1),),</=
li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word1=3DNone,</li><li=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word2=3DNone,</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_header=3D1,</li><li>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_payload=3D2,</li><li>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 rolloff=3D0,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 debug_log=3DFalse,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 scramble_bits=3DFalse)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blo=
cks_vector_source_x_0 =3D blocks.vector_source_b(range(packet_len), True, 1=
, ())</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tagged_stre=
am_0 =3D blocks.stream_to_tagged_stream(gr.sizeof_char, 1, packet_len, len_=
tag_key)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br></li><li><br></li><li><br>=
</li><li>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #######################=
###########################</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Connectio=
ns</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ####################################=
##############</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.block=
s_stream_to_tagged_stream_0, 0), (self.digital_ofdm_tx_0, 0))</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks_vector_source_x_0, 0), (=
self.blocks_stream_to_tagged_stream_0, 0))</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.connect((self.digital_ofdm_tx_0, 0), (self.uhd_usrp_sink_0, 0))</l=
i><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def get_samp_rate(self)=
:</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.samp_rate</li><li>=C2=A0 =
=C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_samp_rate(self, samp_rate):<=
/li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rate(self.samp_ra=
te)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def get_packet_le=
n(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.packet_len</li><li=
>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_packet_len(self, pac=
ket_len):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_le=
n</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tagged_stream_0=
.set_packet_len(self.packet_len)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.b=
locks_stream_to_tagged_stream_0.set_packet_len_pmt(self.packet_len)</li><li=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_vector_source_x_0.set_data(range(s=
elf.packet_len), ())</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 =
def get_len_tag_key(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.=
len_tag_key</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_l=
en_tag_key(self, len_tag_key):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len=
_tag_key =3D len_tag_key</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=
=A0 def get_frecuencia_central(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 r=
eturn self.frecuencia_central</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=
=A0=C2=A0 def set_frecuencia_central(self, frecuencia_central):</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D frecuencia_central</li=
><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(self.=
frecuencia_central, 0)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=
=A0 def get_fft_len(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.=
fft_len</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_fft_l=
en(self, fft_len):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft=
_len</li><li><br></li><li><br></li><li><br></li><li>def main(top_block_cls=
=3Dofdm_loopback, options=3DNone):</li><li>=C2=A0 =C2=A0 tb =3D top_block_c=
ls()</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0 def sig_handler(sig=3D=
None, frame=3DNone):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.stop()</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.wait()</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
ys.exit(0)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 signal.sig=
nal(signal.SIGINT, sig_handler)</li><li>=C2=A0 =C2=A0 signal.signal(signal.=
SIGTERM, sig_handler)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0=
 tb.start()</li><li>=C2=A0 =C2=A0 try:</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
input(&#39;Press Enter to quit: &#39;)</li><li>=C2=A0 =C2=A0 except EOFErro=
r:</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pass</li><li>=C2=A0 =C2=A0 tb.stop()=
</li><li>=C2=A0 =C2=A0 tb.wait()</li><li><br></li><li><br></li><li>if __nam=
e__ =3D=3D &#39;__main__&#39;:</li><li>=C2=A0 =C2=A0 main()</li><li><br></l=
i></ol></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">El mar, 6 jun 2023 a las 10:14, JORGE GONZALEZ ORELLANA =
(&lt;<a href=3D"mailto:jorge.gonzalez.o@mail.pucv.cl">jorge.gonzalez.o@mail=
.pucv.cl</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hi Marcus.<br></div><div>My mistake,=
 sorry</div><div><br></div><div>This is the terminal output from the E312.<=
/div><div>-----------------------------------------------------------------=
----------</div><div>root@ni-e31x-32132F0:~# python3 ofdm_loopback.py<br>[I=
NFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.3.0.0-0-g1f8fd=
345<br>[INFO]
 [MPMD] Initializing 1 device(s) in parallel with args:=20
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg3,serial=3D32132F0,name=
=3Dni-e31x-32132F0,fpga=3Dn/a,claimed=3DFalse<br>[INFO] [MPM.main] Launchin=
g USRP/MPM, version: 4.3.0.0-g1f8fd345<br>[INFO] [MPM.main] Spawning RPC pr=
ocess...<br>[WARNING] [MPM.PeriphManager] Skipping HW/SW compatibility chec=
k!<br>[INFO] [MPM.PeriphManager] Device serial number: 32132F0<br>[WARNING]=
 [MPM.PeriphManager] Found more EEPROM paths than daughterboards. Ignoring =
some of them.<br>[INFO] [MPM.RPCServer] RPC server ready!<br>[INFO] [MPM.RP=
CServer] Spawning watchdog task...<br>[INFO] [MPM.PeriphManager] init() cal=
led with device args `fpga=3Dn/a,mgmt_addr=3D127.0.0.1,name=3Dni-e31x-32132=
F0,product=3De310_sg3&#39;.<br>[INFO] [0/Radio#0] Performing CODEC loopback=
 test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br=
>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... <br>[IN=
FO] [0/Radio#0] CODEC loopback test passed<br>[WARNING]
 [MULTI_USRP] Calling multi_usrp::recv_async_msg() is deprecated and can
 lead to unexpected behaviour. Prefer calling=20
tx_stream::recv_async_msg().<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch =
time transition at pps edge<br>[INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set tim=
es next pps (synchronously)<br>Press Enter to quit: Fatal Python error: Seg=
mentation fault<br><br>Thread 0xb6c09010 (most recent call first):<br>=C2=
=A0 File &quot;ofdm_loopback.py&quot;, line 132 in main<br>=C2=A0 File &quo=
t;ofdm_loopback.py&quot;, line 140 in &lt;module&gt;<br>Segmentation fault<=
br>root@ni-e31x-32132F0:~# <br>--------------------------------------------=
----------------------------</div><div><br></div><div>This is the python sc=
ript generated from GRC<br></div><div>-------------------------------------=
-----------------------------------</div><div><ol><li>#!/usr/bin/env python=
3</li><li># -*- coding: utf-8 -*-</li><li><br></li><li>#</li><li># SPDX-Lic=
ense-Identifier: GPL-3.0</li><li>#</li><li># GNU Radio Python Flow Graph</l=
i><li># Title: OFDM Loopback Example</li><li># Description: Transmit a pre-=
defined signal (a complex sine) as OFDM packets.</li><li># GNU Radio versio=
n: 3.8.1.0</li><li><br></li><li>from gnuradio import blocks</li><li>from gn=
uradio import digital</li><li>from gnuradio import gr</li><li>from gnuradio=
.filter import firdes</li><li>import sys</li><li>import signal</li><li>from=
 argparse import ArgumentParser</li><li>from gnuradio.eng_arg import eng_fl=
oat, intx</li><li>from gnuradio import eng_notation</li><li>from gnuradio i=
mport uhd</li><li>import time</li><li>import faulthandler; faulthandler.ena=
ble()</li><li><br></li><li>class ofdm_loopback(gr.top_block):</li><li><br><=
/li><li>=C2=A0 =C2=A0 def __init__(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 gr.top_block.__init__(self, &quot;OFDM Loopback Example&quot;)</li><li>=
<br></li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ##################################=
################</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Variables</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ###############################################=
###</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate =3D 10=
0e3</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_len =3D =
50</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len_tag_key =3D len_tag_key =3D=
 &quot;packet_len&quot;</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia=
_central =3D frecuencia_central =3D 0</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
elf.fft_len =3D fft_len =3D 64</li><li><br></li><li>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ##################################################</li><li>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 # Blocks</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 #########=
#########################################</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(</li><li>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 &quot;,&quot;.join((&quot;&quot;, &quot;&quot;)),</li>=
<li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.stream_args(</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cpu_format=3D&quot;fc3=
2&quot;,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ar=
gs=3D&#39;&#39;,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 channels=3Dlist(range(0,1)),</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ),</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;&#39;,=
</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 )</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
self.uhd_usrp_sink_0.set_center_freq(frecuencia_central, 0)</li><li>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_gain(10, 0)</li><li>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_antenna(&#39;TX/RX&#39;, 0)</=
li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rate(samp_=
rate)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_time_unk=
nown_pps(uhd.time_spec())</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.digital_=
ofdm_tx_0 =3D digital.ofdm_tx(</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 fft_len=3Dfft_len,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 cp_len=3Dfft_len//4,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pac=
ket_length_tag_key=3Dlen_tag_key,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 occupied_carriers=3D((-4,-3,-2,-1,1,2,3,4),),</li><li>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_carriers=3D((-6,-5,5,6),),</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pilot_symbols=3D((-1,1,-1,1),),</=
li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word1=3DNone,</li><li=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sync_word2=3DNone,</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_header=3D1,</li><li>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bps_payload=3D2,</li><li>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 rolloff=3D0,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 debug_log=3DFalse,</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 scramble_bits=3DFalse)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blo=
cks_vector_source_x_0 =3D blocks.vector_source_b(range(packet_len), True, 1=
, ())</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tagged_stre=
am_0 =3D blocks.stream_to_tagged_stream(gr.sizeof_char, 1, packet_len, len_=
tag_key)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <br></li><li><br></li><li><br>=
</li><li>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #######################=
###########################</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Connectio=
ns</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ####################################=
##############</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.block=
s_stream_to_tagged_stream_0, 0), (self.digital_ofdm_tx_0, 0))</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.connect((self.blocks_vector_source_x_0, 0), (=
self.blocks_stream_to_tagged_stream_0, 0))</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.connect((self.digital_ofdm_tx_0, 0), (self.uhd_usrp_sink_0, 0))</l=
i><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def get_samp_rate(self)=
:</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.samp_rate</li><li>=C2=A0 =
=C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_samp_rate(self, samp_rate):<=
/li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.samp_rate =3D samp_rate</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_samp_rate(self.samp_ra=
te)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def get_packet_le=
n(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.packet_len</li><li=
>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_packet_len(self, pac=
ket_len):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.packet_len =3D packet_le=
n</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_stream_to_tagged_stream_0=
.set_packet_len(self.packet_len)</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.b=
locks_stream_to_tagged_stream_0.set_packet_len_pmt(self.packet_len)</li><li=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.blocks_vector_source_x_0.set_data(range(s=
elf.packet_len), ())</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 =
def get_len_tag_key(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.=
len_tag_key</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_l=
en_tag_key(self, len_tag_key):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.len=
_tag_key =3D len_tag_key</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=
=A0 def get_frecuencia_central(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 r=
eturn self.frecuencia_central</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=
=A0=C2=A0 def set_frecuencia_central(self, frecuencia_central):</li><li>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 self.frecuencia_central =3D frecuencia_central</li=
><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.uhd_usrp_sink_0.set_center_freq(self.=
frecuencia_central, 0)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=
=A0 def get_fft_len(self):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.=
fft_len</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 def set_fft_l=
en(self, fft_len):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.fft_len =3D fft=
_len</li><li><br></li><li><br></li><li><br></li><li>def main(top_block_cls=
=3Dofdm_loopback, options=3DNone):</li><li>=C2=A0 =C2=A0 tb =3D top_block_c=
ls()</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0 def sig_handler(sig=3D=
None, frame=3DNone):</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.stop()</li><li>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 tb.wait()</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
ys.exit(0)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0 signal.sig=
nal(signal.SIGINT, sig_handler)</li><li>=C2=A0 =C2=A0 signal.signal(signal.=
SIGTERM, sig_handler)</li><li>=C2=A0 =C2=A0 <br></li><li>=C2=A0=C2=A0=C2=A0=
 tb.start()</li><li>=C2=A0 =C2=A0 try:</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
input(&#39;Press Enter to quit: &#39;)</li><li>=C2=A0 =C2=A0 except EOFErro=
r:</li><li>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pass</li><li>=C2=A0 =C2=A0 tb.stop()=
</li><li>=C2=A0 =C2=A0 tb.wait()</li><li>i</li><li><br></li><li>f __name__ =
=3D=3D &#39;__main__&#39;:</li><li>=C2=A0 =C2=A0 main()</li></ol></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El l=
un, 5 jun 2023 a las 17:33, Marcus M=C3=BCller (&lt;<a href=3D"mailto:marcu=
s.mueller@ettus.com" target=3D"_blank">marcus.mueller@ettus.com</a>&gt;) es=
cribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">HI =
Jorge,<br>
<br>
you didn&#39;t attach screenshots, but that&#39;s OK: We would much rather =
have you include <br>
copy&amp;pasted text. Images are always inferior when it comes to understan=
ding text messages.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 05.06.23 22:19, JORGE GONZALEZ ORELLANA via USRP-users wrote:<br>
&gt; Hi all, I have been trying to implement the OFDM blocks on a USRP E312=
, I am currently <br>
&gt; working on Ubuntu 20.04 with GRC 3.8 y UHD 4.3.<br>
&gt;<br>
&gt; When I try to run the python script generated from the GRC, a segmenta=
tion fault error <br>
&gt; appears on the E312, I tried to use the faulthandler module to see the=
 root of this <br>
&gt; error, but i cannot get an idea of what could it be.<br>
&gt;<br>
&gt; I attached some screenshots, so you can see what I mean<br>
&gt;<br>
&gt; thanks for your time :)<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000089a70505fd8b6895--

--===============1904399247661534886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1904399247661534886==--
