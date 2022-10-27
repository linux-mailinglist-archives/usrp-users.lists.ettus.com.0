Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F2660F6A4
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 13:59:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07BF838197D
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 07:59:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666871970; bh=2RylMdJqGXyq9aT3+rxr36IpgSbYDfp+ykd9FH/8yuw=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cokZ9AFb8X4wD4SoB2jpozI/pz4L2fas1aWnrpOzLCNkIR0NG7AtgteVWF3MPeNmL
	 i2seJ8o05+/8HI7qqUX64FJXEUJTmaQPni49Uu97XD2Mxkxtdn14Wj3vwj5ozrnQUM
	 PoS3Ek1dgN9FsRNFeSur1rjxIlvA85/Ku1j8ALr488mne99UIYuD2b8LOSbmHwA+r/
	 zxPkbFVKlKpV5ylyErXcP4oZerZaGgV3ytnKJI9YXbcJ/m7vu3ARK7UH2N1Cko9IOP
	 SesPW2rQoreVcNtzrkBEvAT6fXkVthq6NWDffflW05MvhcmA89edpmk+uYWebAq9Y9
	 9ICxJH9hPpG8Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BC44381809
	for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 07:57:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666871867; bh=kdBasjj/uD/9rfLRd6zSALHeHWGy8UUbLLFb+qlTzAc=;
	h=Date:To:From:Subject:From;
	b=chmNfp3+FURX45PNG/ccHYxi4mqP6xGIgACjq9h0q/gOiU/nv7hFp6tsVLjEcVL0k
	 q0oAFjvkh+hxYHpfslh9cvg8Yyi2QzBZYtHBpBMado7zLLUET/D0p10CpgJg6mKzgj
	 yZaTCWuJN7Jlos/Ao4U5hUtCPUCfiUq9WyhlZj0Vhc+qRFDDk+NZFZbM929UguwKKn
	 9CviHfX+P32keNaQSgwmZjcmPQx3cn/sXti46ciFLmSaM1hhS95/ejzL9A/M+QsqPi
	 43tkil0ZYcVZTpa+uuve4AhegIzsuX+AR7tzhNJvtFSJKQz4UdZ1rQiLo64kWnDP+q
	 DU70R3FTNRnEA==
Date: Thu, 27 Oct 2022 11:57:47 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: J23YX4NFAAQLBUAVKI7V2J6BZGPBRWG5
X-Message-ID-Hash: J23YX4NFAAQLBUAVKI7V2J6BZGPBRWG5
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?AXI=5FRAM=5FFIFO_doesn=C2=B4t_return_any_information?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J23YX4NFAAQLBUAVKI7V2J6BZGPBRWG5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0332683007134457441=="

This is a multi-part message in MIME format.

--===============0332683007134457441==
Content-Type: multipart/alternative;
 boundary="b1_sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0 Hello everyone,

I am trying to make use of axi_ram_fifo together with a rfnoc block of my=
 own. Basically, my block receives 2 inputs (one from outside and one fro=
m FIFO) and sends 2 outputs (one to outside and one toFIFO) . These are c=
onverted to the payload and function of my block is to store the data my =
block receives from a specific value and receives them later from FIFO af=
ter some time. I had thought the control by means of the valid of sending=
 to FIFO and the ready of reception from FIFO. However, when I synthesize=
 and execute, I do not receive any data and checking I have realized that=
 I do not receive any ready (when I am going to send) nor any valid (when=
 I am going to receive) from the axi_ram_fifo block.=20

I don't know if the error is in the conversion from chdr to payload becau=
se, I get the ready from the context but I really don't know.=20

In my e320 synthesis file I have the connections like this:

Memory characteristics are: 64 mem_data, 31 addres and 1 port.

`# MioRAM0 to fifo0(0)`

`=C2=A0 - { srcblk: MioRAM0,=C2=A0=C2=A0=C2=A0 srcport: out_1,=C2=A0 dstb=
lk: fifo0,=C2=A0 dstport: in_0 }`

`=C2=A0 - { srcblk: fifo0,=C2=A0 srcport: out_0, dstblk: MioRAM0,=C2=A0=C2=
=A0=C2=A0 dstport: in_1=C2=A0 }`

`=C2=A0 # Custom block connection: ep4 to MioRAM0 and MioRAM0 to ep4`

`=C2=A0 - { srcblk: ep2, srcport: out0, dstblk: MioRAM0, dstport: in_0 }`

`=C2=A0 - { srcblk: MioRAM0, srcport: out_0, dstblk: ep2, dstport: in0 }`

`=C2=A0`

`=C2=A0 - { srcblk: fifo0,=C2=A0=C2=A0=C2=A0 srcport: axi_ram,=C2=A0=C2=A0=
=C2=A0=C2=A0 dstblk: _device_, dstport: dram=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 }`

Thanks in advance.

Adrian CR

--b1_sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>&nbsp; Hello everyone,</p><p>I am trying to make use of axi_ram_fifo tog=
ether with a rfnoc block of my own. Basically, my block receives 2 inputs (=
one from outside and one from FIFO) and sends 2 outputs (one to outside and=
 one toFIFO) . These are converted to the payload and function of my block =
is to store the data my block receives from a specific value and receives t=
hem later from FIFO after some time. I had thought the control by means of =
the valid of sending to FIFO and the ready of reception from FIFO. However,=
 when I synthesize and execute, I do not receive any data and checking I ha=
ve realized that I do not receive any ready (when I am going to send) nor a=
ny valid (when I am going to receive) from the axi_ram_fifo block. </p><p>I=
 don't know if the error is in the conversion from chdr to payload because,=
 I get the ready from the context but I really don't know. </p><p>In my e32=
0 synthesis file I have the connections like this:</p><p>Memory characteris=
tics are: 64 mem_data, 31 addres and 1 port.</p><p><code># MioRAM0 to fifo0=
(0)</code></p><p><code>&nbsp; - { srcblk: MioRAM0,&nbsp;&nbsp;&nbsp; srcpor=
t: out_1,&nbsp; dstblk: fifo0,&nbsp; dstport: in_0 }</code></p><p><code>&nb=
sp; - { srcblk: fifo0,&nbsp; srcport: out_0, dstblk: MioRAM0,&nbsp;&nbsp;&n=
bsp; dstport: in_1&nbsp; }</code></p><p><code>&nbsp; # Custom block connect=
ion: ep4 to MioRAM0 and MioRAM0 to ep4</code></p><p><code>&nbsp; - { srcblk=
: ep2, srcport: out0, dstblk: MioRAM0, dstport: in_0 }</code></p><p><code>&=
nbsp; - { srcblk: MioRAM0, srcport: out_0, dstblk: ep2, dstport: in0 }</cod=
e></p><p><code>&nbsp;</code></p><p><code>&nbsp; - { srcblk: fifo0,&nbsp;&nb=
sp;&nbsp; srcport: axi_ram,&nbsp;&nbsp;&nbsp;&nbsp; dstblk: _device_, dstpo=
rt: dram&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</code></p><p><br></p><=
p>Thanks in advance.</p><p><br></p><p>Adrian CR</p>

--b1_sB5TvlRcfVtJKttU0cUFnkZh6atOk9qLHaAgjZFN0g--

--===============0332683007134457441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0332683007134457441==--
