Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 384599CDCB6
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 11:37:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD5BE385BEE
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 05:37:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731667023; bh=ePyYRF66rmv/cydhN/mMQoIfXzfduMFR11qS6nT54Oc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vmr7a+ze1lsi3ejztx8SJYULhFErKx6FK2iqihayuPrWpupqzAbn0D6CWs7v5ZlDy
	 JdWepPza4bdqqwsefc1US50vNyABWnCzfamHEQ4PA/U9w7TxVgwB1rleWj5w3mn/CY
	 YXrj2ChFkHfSG25ROdCsnUSIz3wOrlAiEkX5vfpdEW4Je0Ygj73SssLE92zliXHT1k
	 e0G9SNlsk2ONDzvmTBgyZhrSDGlgNEFMtzE9/QQ8e9bxBOP27JxZd0D6yGTe1rAXir
	 5nrNk0rkWGE2i+MxWdNAi6VZqTCARpZJFKRPvKyl7rzKh//z/Fhst8Mh90g1uVGoja
	 ReMEHexUWbE/g==
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	by mm2.emwd.com (Postfix) with ESMTPS id F2C0F385ABD
	for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2024 05:36:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LsxrZbA5";
	dkim-atps=neutral
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-83ac4dacaf9so19548739f.2
        for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2024 02:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731667017; x=1732271817; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2eTkNg2YmuYABIWuCPYAf+EASMYQrpBvbr6+tHbIGgo=;
        b=LsxrZbA5AoppEh0xF0nDNEsEM9pedyMg96CTSOtzwZMovUUhpG6FGyZVW0sQ55eI7q
         P68RnPVumYr4gKOnKK3V+y+s6WSVV7wzhKKunSzAUI8XhczoAZFfECJPFWIpPCMOl7WA
         D+jBCTMMdQ85anKDdHETAeCMl/qBZfUMRpmyJdXR4YpcvAMp14xNScV49Ojcs7KywpGN
         DB24oU0netWVWs6FvHRFfuAKjmnNvR6zds0J5gFjuDlJyxGP6Afq1iWpmgU/BPSF30J4
         bCxS886AqNmYGXkfNn4CPwOGUZ6rBQdZF9L8I12mnVm32AxNodqJnhKlZdTNr3qAOyvK
         Ph6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731667017; x=1732271817;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2eTkNg2YmuYABIWuCPYAf+EASMYQrpBvbr6+tHbIGgo=;
        b=oZMN0TSiZ+DIzINhSme54yA2nu3w4r8UoF9Cy1WO8gk7Yz1Mr8E7aLDE31yUAbqA1H
         Y7y6075GhyqwzVm7iZyDTk71A4K03GOlTHiPB9LYHzl1QZ8V/+QSWTx2/YKoadv42F5P
         z2m3cFyG8+j2j6uI8eUwuSjeMFCfmloxE06HIE1Le2UeNe9/hA2n3zMCEcplFTa2yWAf
         l/4OjTs0WMBn/woQ0U4wjTa/IZXWWh/97nffbpL6yhtBh0UAjHo80NdhTuVkh74myr6/
         eTzUnh+f2lhGB1a0RiQ3doxTu1Vz3Jg2QHtvxl1MKT+uh4U7uWX6t8ePS2T1ZgPHOSgj
         ROAg==
X-Gm-Message-State: AOJu0Yy6Pb7+NKTBw54vyyu79FYhTDPchefFavgHW5DR6qPP8qcxZtoP
	UtgbXetKFYMLAeFVMJg+qrP47toGiMGnuVQBCu4NYx1Skov4nv6KtWyeTMMuxZi6xrPyARqhAyD
	F1V0u951bs/8EfiJlvG3n0SmSV0ZhvCWO
X-Google-Smtp-Source: AGHT+IG+jIlVdWh7x4t2VdaSBoPiHhr4MTzSgv62zD2yZAf8lPYqEl9LB+v3YUBJIRtudrxyOFFRaQTq00fJ/nY334c=
X-Received: by 2002:a05:6602:1487:b0:83b:7164:ebb4 with SMTP id
 ca18e2360f4ac-83e6c154846mr245159139f.14.1731667016788; Fri, 15 Nov 2024
 02:36:56 -0800 (PST)
MIME-Version: 1.0
From: Muneer Al-Zubi <muneermaz85@gmail.com>
Date: Fri, 15 Nov 2024 13:36:46 +0300
Message-ID: <CAEjVBOnEWfAQxi3q8bDHpJPGgvr+CZczpA9zeScK7LWDTG+kQw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FJG45DFHYNN6XMZGKIHLAXAPOMVLRWY5
X-Message-ID-Hash: FJG45DFHYNN6XMZGKIHLAXAPOMVLRWY5
X-MailFrom: muneermaz85@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Benchmark module for over-the-air wireless communication
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FJG45DFHYNN6XMZGKIHLAXAPOMVLRWY5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0183489748255045391=="

--===============0183489748255045391==
Content-Type: multipart/alternative; boundary="00000000000067b38f0626f125e8"

--00000000000067b38f0626f125e8
Content-Type: text/plain; charset="UTF-8"

Dear USRP Community,

I have developed a flexible and easy-to-use benchmark module that can
evaluate the over-the-air performance of various software-defined radio
(SDR)-based communication systems in GNU Radio.

This module can provide the system performance metrics of packet
transmission in realistic communication channels including packet error
rate (PER), packet loss rate (PLR), signal-to-noise ratio (SNR), latency,
and throughput. It can be easily added and used in the GUI GRC flowgraph. I
have tested this module outdoors with over-the-air transmission using USRP
N210 and DQPSK, GMSK, GFSK, etc.

This tool provides a flexible benchmark method that works with various
communication systems that use different communication protocols,
signal-processing techniques, and SDR hardware in GNU Radio. This is
because this benchmark module depends mainly on the received radio signal
and data packets, unlike other benchmark tools which are limited by
specific SDR hardware and communication techniques.

We believe that this tool will provide great help to the GNU Radio
community in evaluating the performance of the developed communication
testbeds and prototypes in GNU Radio.

The module and its instructions is uploaded to GitHub:

https://github.com/muneer85/gr-benchmark

I would appreciate it if you could try it out and send me your feedback and
if you could share it with your friends.

Thanks.

Best Regards
Muneer

--00000000000067b38f0626f125e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear USRP Community,<br><br>I have developed a flexible an=
d easy-to-use benchmark module that can evaluate the over-the-air performan=
ce of various software-defined radio (SDR)-based communication systems in G=
NU Radio.<br><br>This module can provide the system performance metrics of =
packet transmission in realistic communication channels including packet er=
ror rate (PER), packet loss rate (PLR), signal-to-noise ratio (SNR), latenc=
y, and throughput. It can be easily added and used in the GUI GRC flowgraph=
. I have tested this module outdoors with over-the-air transmission using U=
SRP N210 and DQPSK, GMSK, GFSK, etc. <br><br>This tool provides a flexible =
benchmark method that works with various communication systems that use dif=
ferent communication protocols, signal-processing techniques, and SDR hardw=
are in GNU Radio. This is because this benchmark module depends mainly on t=
he received radio signal and data packets, unlike other benchmark tools whi=
ch are limited by specific SDR hardware and communication techniques. <br><=
br>We believe that this tool will provide great help to the GNU Radio commu=
nity in evaluating the performance of the developed communication testbeds =
and prototypes in GNU Radio. =C2=A0<br><br>The module and its instructions =
is uploaded to GitHub:<br><br><a href=3D"https://github.com/muneer85/gr-ben=
chmark">https://github.com/muneer85/gr-benchmark<br></a><br>I would appreci=
ate it if you could try it out and send me your feedback and if you could s=
hare it with your friends.<br><br>Thanks.<br><br>Best Regards<br>Muneer</di=
v>

--00000000000067b38f0626f125e8--

--===============0183489748255045391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0183489748255045391==--
