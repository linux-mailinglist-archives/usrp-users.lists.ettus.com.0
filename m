Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B65EA9AF3BC
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 22:36:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C7F9385C6D
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2024 16:36:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729802201; bh=amAIwV7p6l1LEEqXc8hqV5I37uzxzkHORlEE86Jbk9E=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jutfJZoiv1eSTjLpzKJqrwKnmPPVeZVO7LmV+ZuDIx/Rf9ldir2b+4Qp/nekG+h6r
	 4bQ6l4RxDOiKxT1r//l+96kGhmENd7cpdrcQFiTAfoCHZi9SRwpzGDcPtM+LLGLM9a
	 EJ8baYOl6wJuH7jN5gR6eupvC0h4W60JjOh+aF5rYYevjHDbwIJZxlwgHLEC4ddttJ
	 pJ+3KsZLZuUBjS3UxgM6b4l3FMnUvpG5bSWmdKvZ7Mz3esQBV8KOm5J9iULpyd7wXu
	 wxgIaPVYe8qU+/o3mhPF8EzpuNbZMt8ebUtZLHdXBiwv79RCGl8Fvt3skY7rccDkj4
	 Mh4F9/uwiy/sA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BD92385A90
	for <usrp-users@lists.ettus.com>; Thu, 24 Oct 2024 16:36:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729802179; bh=Ed37UfvWnDZjF6a2Od5WjVfdqgqgQ2pojQdVKK7q2a8=;
	h=Date:To:From:Subject:From;
	b=vhdM8vRJtxXIUhs/ZK1OHmD6aHhVXqL9RiPZq9xXYW0ASHJ+KSlMS4Uo6QePFO/2k
	 IX3oGu7u4Xj8Xph3SBVRJL2QEOpxvcSGg1qiz3clOZOUutg1fIWr4nG7KHyAkjIrtV
	 BIYYF/gGWZSkptwr59e/tgqDIc9vzLGD22T2O+6VR82/X1opcxpRYSV4dJ6/QpDR/Q
	 OMLD4ddL5e+O935MBvOD7xYzRX0UrezrlQZ5CcVjfDsMMWhGHjOd85a+XZx4Cr08cD
	 dFN6fvOjhasoU93WKw0YZHmiH0v9A6ptWJBdy7tuy853Z9fkqpy4/AKqu+ZgDguIwV
	 BroYunGZ+n9jw==
Date: Thu, 24 Oct 2024 20:36:19 +0000
To: usrp-users@lists.ettus.com
From: c1337rogers@gmail.com
Message-ID: <nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: Q4T5ZDWT2VC7LDGUVMHDAOASE5DERZBF
X-Message-ID-Hash: Q4T5ZDWT2VC7LDGUVMHDAOASE5DERZBF
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 -  RfnocError: OpTimeout: Control operation timed out waiting for ACK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4T5ZDWT2VC7LDGUVMHDAOASE5DERZBF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2934521131288411409=="

This is a multi-part message in MIME format.

--===============2934521131288411409==
Content-Type: multipart/alternative;
 boundary="b1_nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

My setup: Ubuntu 20.04, UHD_4.7.0.HEAD-0-ga5ed1872, DPDK_19.11, X310 w/ n=
ewly updated XG image, Intel X710 NIC

I=E2=80=99m trying to get DPDK working with the X310 but I=E2=80=99m fail=
ing on step 0. Running any of the example programs (without DPDK for now)=
 gives me the same error:\
\
`/usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate 10e6 --rx_channe=
ls 1 --args addr=3D192.168.30.2,second_addr=3D192.168.41.2`

`[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; DPDK_19.11; UHD=
_4.7.0.HEAD-0-ga5ed1872`

`[00:00:00.000200] Creating the usrp device with: addr=3D192.168.30.2,sec=
ond_addr=3D192.168.41.2...`

`[INFO] [X300] X300 initialization sequence...`

`[INFO] [X300] Maximum frame size: 8000 bytes.`

`[INFO] [X300] Maximum frame size: 8000 bytes.`

`[INFO] [X300] Radio 1x clock: 200 MHz`

`[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocE=
rror: OpTimeout: Control operation timed out waiting for ACK`

`Error: RuntimeError: Failure to create rfnoc_graph.`

I know the 192.168.41.2 address is non-standard=E2=80=A6 this is correct =
though and I can ping both addresses just fine. There=E2=80=99s no errors=
 when running uhd_find_devices. uhd_usrp_probe fails with the same error =
as the example programs.=20

Any thoughts on what=E2=80=99s wrong here? Disclaimer: this X310 is a com=
munity resource so I can=E2=80=99t speak to the full pedigree. I did just=
 update the FPGA after a fresh UHD 4.7 install and image_downloader run\
\
Thanks,

Chris

--b1_nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi all,</p><p>My setup: Ubuntu 20.04, UHD_4.7.0.HEAD-0-ga5ed1872, DPDK_1=
9.11, X310 w/ newly updated XG image, Intel X710 NIC</p><p>I=E2=80=99m tryi=
ng to get DPDK working with the X310 but I=E2=80=99m failing on step 0. Run=
ning any of the example programs (without DPDK for now) gives me the same e=
rror:<br><code><br>/usr/local/lib/uhd/examples$ ./benchmark_rate --rx_rate =
10e6 --rx_channels 1 --args addr=3D192.168.30.2,second_addr=3D192.168.41.2<=
/code></p><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=
 DPDK_19.11; UHD_4.7.0.HEAD-0-ga5ed1872</code></p><p><code>[00:00:00.000200=
] Creating the usrp device with: addr=3D192.168.30.2,second_addr=3D192.168.=
41.2...</code></p><p><code>[INFO] [X300] X300 initialization sequence...</c=
ode></p><p><code>[INFO] [X300] Maximum frame size: 8000 bytes.</code></p><p=
><code>[INFO] [X300] Maximum frame size: 8000 bytes.</code></p><p><code>[IN=
FO] [X300] Radio 1x clock: 200 MHz</code></p><p><code>[ERROR] [RFNOC::GRAPH=
] Caught exception while initializing graph: RfnocError: OpTimeout: Control=
 operation timed out waiting for ACK</code></p><p><code>Error: RuntimeError=
: Failure to create rfnoc_graph.</code></p><p>I know the 192.168.41.2 addre=
ss is non-standard=E2=80=A6 this is correct though and I can ping both addr=
esses just fine. There=E2=80=99s no errors when running uhd_find_devices. u=
hd_usrp_probe fails with the same error as the example programs. </p><p>Any=
 thoughts on what=E2=80=99s wrong here? Disclaimer: this X310 is a communit=
y resource so I can=E2=80=99t speak to the full pedigree. I did just update=
 the FPGA after a fresh UHD 4.7 install and image_downloader run<br><br>Tha=
nks,</p><p>Chris</p>

--b1_nTAStEeEHUFCLFpTODDxZxARez7keaH9BbpdJr7o--

--===============2934521131288411409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2934521131288411409==--
