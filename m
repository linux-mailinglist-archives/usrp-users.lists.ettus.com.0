Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C355B94138
	for <lists+usrp-users@lfdr.de>; Tue, 23 Sep 2025 05:16:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA5243862F8
	for <lists+usrp-users@lfdr.de>; Mon, 22 Sep 2025 23:16:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758597412; bh=Mr5KSIqRsCcaPkX6FTbd5q01u0XPuh1lIch0ZR9f7LU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XZOCxPVyno8xgY99dszYsB7wlxS4XJ19eIKKu5C+TbutnqLBY0GlNhSG+6VCywoeU
	 0Ny4b0hxZJWL8JxoYE/3pPSRmYGj95VeFsLj1tcX/lHBJJ/t5GVVdBfRaKhxi3hD3e
	 l+Bu+E84vKE5TJb9qNittkZfAbsH1qy2RkejvWbg4HF22kL+PoXeX95V8S0Sh9AT7K
	 bLys0tDpPifWhcVxz8bU0uKHnzPdOLZoCJekwXEnv/fQwvNQzNQeRCIEGhX7VTzNyj
	 RRzEDZB8qDgfEjVEIrpjmzUzskhtecB10CECawRG1CttHoZi+N0kksIActk3W+/4Sd
	 PvPVOjNWKVP0A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AC2D3862EC
	for <usrp-users@lists.ettus.com>; Mon, 22 Sep 2025 23:15:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758597358; bh=eBIA4uvRL38RJRck2HF6H1RY3bnw3UW/B5cVdXan4jI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=o8g8maCI6bNa3rbW2E5jGs/tfeO6XJt2n19UFug4h4QC8x9kLdplgmsC5H3/q94TI
	 qvtpoVDnAgDxtkTAC2+GLi858HtEwdBwYUsEw/TRvqJF0HrKGWooGjvLK3O76U1hnU
	 62UzZtNo4Cua4jyi5CaV0w6p+0A06ez7BHI+XsRBnwXTLI3aMti0Owe4YUYaDLW4gQ
	 E4BJs+/T5u9wLzKOmqU61bvgvMXZpzoxeFzam8iIiQhdct4UvANq2AU+uersO4nB40
	 Ye65vwmodNA4nuNmxSTrnh+Hq8PQ/8x8H+KwOlJzyUF77Yn64dW83FM0QeLCF2UTsc
	 Htf71g8cWck/w==
Date: Tue, 23 Sep 2025 03:15:58 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <DWyCFTcUUpewxcwXn70xJ3RTrseY6tvfsQPOhqDdHk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: edF0kZYjfRJ5jGC3eYUDuzWwzkyI95EInMq4flkCk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: QNWBGOGZ44UGRRQP7JDT2NGZ5G535N6R
X-Message-ID-Hash: QNWBGOGZ44UGRRQP7JDT2NGZ5G535N6R
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Rebuilding boot.bin
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QNWBGOGZ44UGRRQP7JDT2NGZ5G535N6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7423611052805376499=="

This is a multi-part message in MIME format.

--===============7423611052805376499==
Content-Type: multipart/alternative;
 boundary="b1_DWyCFTcUUpewxcwXn70xJ3RTrseY6tvfsQPOhqDdHk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_DWyCFTcUUpewxcwXn70xJ3RTrseY6tvfsQPOhqDdHk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

perper@o2.pl wrote:

> https://github.com/EttusResearch/uhd/blob/07a7a92ad6e09cc7e84aae5990aff=
563a4546e83/fpga/usrp3/top/x400/build_x4xx.tcl#L11tovivado_utils::initial=
ize_project 1Then in uhd/pga/usrp3/top/x400/ do:source setupenv.shmakeAft=
er this ends you should have an \*.xpr file in one of build directories. =
You can open this file Vivado. Then find x4xx_ps_rfdc_bd block diagram, o=
pen it and edit ZYNQ configuration to enable the bus that you need. After=
 that I don=E2=80=99t remember if you have to do synthesis or you can str=
aight away go to File->Export->Export Hardware and create a zip file with=
 psu_init_gpl.c and a header (psu_init_gpl.h ?).

Something was messed with this paragraph. It was:

https://github.com/EttusResearch/uhd/blob/07a7a92ad6e09cc7e84aae5990aff56=
3a4546e83/fpga/usrp3/top/x400/build_x4xx.tcl#L11

to

vivado_utils::initialize_project 1

Then in uhd/pga/usrp3/top/x400/ do:

source setupenv.sh\
make

After this ends you should have an \*.xpr file in one of build directorie=
s. You can open this file Vivado. Then find x4xx_ps_rfdc_bd block diagram=
, open it and edit ZYNQ configuration to enable the bus that you need. Af=
ter that I don=E2=80=99t remember if you have to do synthesis or you can =
straight away go to File->Export->Export Hardware and create a zip file w=
ith psu_init_gpl.c and a header (psu_init_gpl.h ?).

=E2=80=A6

Piotr Krysik

--b1_DWyCFTcUUpewxcwXn70xJ3RTrseY6tvfsQPOhqDdHk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>perper@o2.pl wrote:</p><blockquote><p>https://github.com/EttusResearch/u=
hd/blob/07a7a92ad6e09cc7e84aae5990aff563a4546e83/fpga/usrp3/top/x400/build_=
x4xx.tcl#L11tovivado_utils::initialize_project 1Then in uhd/pga/usrp3/top/x=
400/ do:source setupenv.shmakeAfter this ends you should have an *.xpr file=
 in one of build directories. You can open this file Vivado. Then find x4xx=
_ps_rfdc_bd block diagram, open it and edit ZYNQ configuration to enable th=
e bus that you need. After that I don=E2=80=99t remember if you have to do =
synthesis or you can straight away go to File-&gt;Export-&gt;Export Hardwar=
e and create a zip file with psu_init_gpl.c and a header (psu_init_gpl.h ?)=
.</p></blockquote><p>Something was messed with this paragraph. It was:<br><=
br></p><p>https://github.com/EttusResearch/uhd/blob/07a7a92ad6e09cc7e84aae5=
990aff563a4546e83/fpga/usrp3/top/x400/build_x4xx.tcl#L11</p><p>to</p><p>viv=
ado_utils::initialize_project 1</p><p>Then in uhd/pga/usrp3/top/x400/ do:</=
p><p>source setupenv.sh<br>make</p><p>After this ends you should have an *.=
xpr file in one of build directories. You can open this file Vivado. Then f=
ind x4xx_ps_rfdc_bd block diagram, open it and edit ZYNQ configuration to e=
nable the bus that you need. After that I don=E2=80=99t remember if you hav=
e to do synthesis or you can straight away go to File-&gt;Export-&gt;Export=
 Hardware and create a zip file with psu_init_gpl.c and a header (psu_init_=
gpl.h ?).</p><p>=E2=80=A6</p><p>Piotr Krysik</p>

--b1_DWyCFTcUUpewxcwXn70xJ3RTrseY6tvfsQPOhqDdHk--

--===============7423611052805376499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7423611052805376499==--
