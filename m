Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA269718515
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 16:36:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7826384819
	for <lists+usrp-users@lfdr.de>; Wed, 31 May 2023 10:36:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685543773; bh=8a5sNyIlPjTAeEKPvrrrjevS3NifLichFx8Gn4D0Wc0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PNtWVirdgrkQ1XjLO+YmSXEMfrpNdx0sugRuUWSRxTlSTj+yquuPg+T8QStmMRua8
	 4t+IWnC/4fQFVoq7MjevpKcJBARogOECp9QoXijjUzqSvdT4d5TX8d37hIJ22wngWB
	 s12NO6TWFvOBuniuEJw7AIXytbnWIyYetNtmsjjXuOhzml/KwXEVzegW6M98wUAoFp
	 IF2eC7+41oDn9yb7quw+YA4e3Ql7j529uGQyTLsr/ABKvr7N48cnACzT2C6YKXoJ+L
	 wxz8syHFHhRm7boD6Wz8dfZtz5yXyfkXesc0eKQ0H6ZJY8uWnZ2X6+jEYGS2+kUpY8
	 llVwBhdkiUKFw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3739E384831
	for <usrp-users@lists.ettus.com>; Wed, 31 May 2023 10:35:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685543744; bh=Jfus/9ADJsPOPQFcdaoii+WPUk/nFeKuCWFiGMg1eJs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=gkajSiKuqKjsEjYFQqrpYwMseRmBmZ6juCTKFjgAPiTTblZI3TVdY3OPE+iKWzw6p
	 hBHbht5GZ/F66+Y/Zxs7VcleAYdCpFUAeh99QFyYkN0dNSWxY8P7SoH1cGblSpRyW5
	 MRfaMIHHEaFkOHj5NVfPvd4MkwPiHFk0ezpk8YzRJkNt3Rd1yn5Rm+utpu5P5fI3d3
	 i3jBLgQ2mcmwYPVueDXyNfpRolS29Y1k0PWfT3XRrapx5bbcx2PKoce+h5unaLPjV5
	 1DHSZ5pd526CRhlrhc0CRsZIOMBoetNQKr3BZHDJcaRYvwV6FkuElVTgBc3qbls1E2
	 oKAI4bVew4qug==
Date: Wed, 31 May 2023 14:35:44 +0000
To: usrp-users@lists.ettus.com
From: pistachio6981@gmail.com
Message-ID: <AO5ozBGqz23O7t5MdERBSKVbhVFt94ICiSwVwtqd4Jo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8319f56e-6c2f-0fce-fec1-c57b87b0c268@gmail.com
MIME-Version: 1.0
Message-ID-Hash: CGGYDIPTLHA45LCC33LPHLCRRFJY3JXS
X-Message-ID-Hash: CGGYDIPTLHA45LCC33LPHLCRRFJY3JXS
X-MailFrom: pistachio6981@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGGYDIPTLHA45LCC33LPHLCRRFJY3JXS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4777835244766847533=="

This is a multi-part message in MIME format.

--===============4777835244766847533==
Content-Type: multipart/alternative;
 boundary="b1_AO5ozBGqz23O7t5MdERBSKVbhVFt94ICiSwVwtqd4Jo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_AO5ozBGqz23O7t5MdERBSKVbhVFt94ICiSwVwtqd4Jo
Content-Type: text/plain; charset=us-ascii

I agree that it is probably a simple networking thing. I can ping each of the addresses and the device pongs back. I did try to run the the benchmark program while specifying an IP address and USRP type and got the same error as shown below:\
\
/usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 --tx_rate 10e6 --args "addr=192.168.10.2,type=x4xx"

\[INFO\] \[UHD\] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-g5fac246b

\[00:00:00.000281\] Creating the usrp device with: addr=192.168.10.2,type=x4xx...

\[INFO\] \[MPMD\] Initializing 1 device(s) in parallel with args: mgmt_addr=192.168.10.2,type=x4xx,product=x410,serial=326B6ED,name=ni-x4xx-326B6ED,fpga=X4_200,claimed=False,addr=192.168.10.2

\[INFO\] \[MPM.PeriphManager\] init() called with device args \`fpga=X4_200,mgmt_addr=192.168.10.2,name=ni-x4xx-326B6ED,product=x410,clock_source=internal,time_source=internal'.

\[ERROR\] \[RFNOC::MGMT\] EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] IO Error during GSM initialization. EnvironmentError: IOError: recv error on socket: Connection refused

\[ERROR\] \[RFNOC::GRAPH\] Caught exception while initializing graph: EnvironmentError: IOError: recv error on socket: Connection refused

Error: RuntimeError: Failure to create rfnoc_graph.\
\
Any other suggestions?

--b1_AO5ozBGqz23O7t5MdERBSKVbhVFt94ICiSwVwtqd4Jo
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>I agree that it is probably a simple networking thing. I can ping each o=
f the addresses and the device pongs back. I did try to run the the benchma=
rk program while specifying an IP address and USRP type and got the same er=
ror as shown below:<br><br>/usr/local/lib/uhd/examples$ ./benchmark_rate --=
rx_rate 10e6 --tx_rate 10e6 --args "addr=3D192.168.10.2,type=3Dx4xx"</p><p>=
[INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; UHD_4.4.0.HEAD-0-=
g5fac246b</p><p>[00:00:00.000281] Creating the usrp device with: addr=3D192=
.168.10.2,type=3Dx4xx...</p><p>[INFO] [MPMD] Initializing 1 device(s) in pa=
rallel with args: mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,seria=
l=3D326B6ED,name=3Dni-x4xx-326B6ED,fpga=3DX4_200,claimed=3DFalse,addr=3D192=
.168.10.2</p><p>[INFO] [MPM.PeriphManager] init() called with device args `=
fpga=3DX4_200,mgmt_addr=3D192.168.10.2,name=3Dni-x4xx-326B6ED,product=3Dx41=
0,clock_source=3Dinternal,time_source=3Dinternal'.</p><p>[ERROR] [RFNOC::MG=
MT] EnvironmentError: IOError: recv error on socket: Connection refused</p>=
<p>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentEr=
ror: IOError: recv error on socket: Connection refused</p><p>[ERROR] [RFNOC=
::GRAPH] Caught exception while initializing graph: EnvironmentError: IOErr=
or: recv error on socket: Connection refused</p><p>Error: RuntimeError: Fai=
lure to create rfnoc_graph.<br><br>Any other suggestions?</p>

--b1_AO5ozBGqz23O7t5MdERBSKVbhVFt94ICiSwVwtqd4Jo--

--===============4777835244766847533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4777835244766847533==--
