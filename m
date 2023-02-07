Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6849E68DE50
	for <lists+usrp-users@lfdr.de>; Tue,  7 Feb 2023 17:56:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E8D84381231
	for <lists+usrp-users@lfdr.de>; Tue,  7 Feb 2023 11:56:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675789017; bh=ukudI8ALojBlJ63R5H8Xu5ygx1yFQAkN2j4CUqbQnto=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wi9Z97Xk3SusUeFc952Q5/mKxKGpLDre7wmiR6ktm3/6mMy9Xx/i3DidHJ4PXdiJh
	 +sQtIV9/TcSQmdmHI9+E3ALhQCByC6JBMgAOwPku4pwmtAodq+up7FWK8IHQrFnz2u
	 m3w7DTB6N+AC9pP/qKb+3QOp1IAw4AlIaQ50LRGeiDel1u8WN5Eusw8BJieekHhWxX
	 rhJMApHd7utuMDnewdQHJO6o0A/3hAAR8RRjWq1Zap4oveUOP0godHi+nMaLKTUa1S
	 QPlxswhTx4/mca8r/N0Y2fQlmvRC3vVBGZ1ppJE4lM1ZNj4q2DwYZqqLN8OfzFYnOH
	 O4xptaW6UyL7A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5CD938007C
	for <usrp-users@lists.ettus.com>; Tue,  7 Feb 2023 11:55:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675788936; bh=vOGYwsZY1kekbhJKID9pyTbODqV0zuDpXh9n8jUVZfw=;
	h=Date:To:From:Subject:From;
	b=ENddsUzx95lPRC7U6R8sjKMkgSkp3XMzITrJDOWLLGSdyIaLxOARQwuE7oZ0/a/hS
	 wr1akJ893nQV7Gn8t44DlfUccQjSiaVzq+UnF4yjCuLhDeBe/RqEvGo3IPJiteUqIQ
	 uP5N1qtfJ82PUS3UNZVOZOTr5avScHosRwvOx4jbNEHZCHj2Bqyz+yxiSURLZPNnKF
	 OaUEORzjtum4ntO3zj42Tr1LHLAAy9+JOXByhmwb+/0rN3fQHzPaSVyYQeryyJpG/9
	 Hfi/WE74jLdSViiLQR0lwlMPuqwCC2BHAxMxEYIWPcA1BMOBjNW1ZVo2PmuvvyNlB0
	 F2s2KoTdEGF8g==
Date: Tue, 7 Feb 2023 16:55:36 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <Q3fX9UZGpcmKVJRHdUO0yNAmwlAiL6p2OGeYmiKTxs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: IUBDDIE67FTW7FZG7SOCNSA752TRBQM4
X-Message-ID-Hash: IUBDDIE67FTW7FZG7SOCNSA752TRBQM4
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Module not found when creating OOT module
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IUBDDIE67FTW7FZG7SOCNSA752TRBQM4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1048682661633231491=="

This is a multi-part message in MIME format.

--===============1048682661633231491==
Content-Type: multipart/alternative;
 boundary="b1_Q3fX9UZGpcmKVJRHdUO0yNAmwlAiL6p2OGeYmiKTxs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Q3fX9UZGpcmKVJRHdUO0yNAmwlAiL6p2OGeYmiKTxs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently trying to design my own OOT module, yet when I run =E2=80=98=
make testbenches=E2=80=99 I get the following error=E2=80=A6

`ERROR: [VRFC 10-2063] Module <rfnoc_block_trigger> not found while proce=
ssing module instance <dut> [/workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_=
block_trigger/rfnoc_block_trigger_tb.sv:123]`

`ERROR: [XSIM 43-3322] Static elaboration of top level Verilog design uni=
t(s) in library work failed.`

However, it appears to have been found and added according to the console=
=E2=80=A6

`BUILDER: Adding Verilog : /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_bl=
ock_trigger/rfnoc_block_trigger.v`

`BUILDER: Adding Verilog : /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_bl=
ock_trigger/noc_shell_trigger.v`

`BUILDER: Adding Verilog : /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_bl=
ock_trigger/rfnoc_trigger.v`

`BUILDER: Adding Verilog : /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_bl=
ock_trigger/rfnoc_trigger_regs.vh`

I am wondering if anyone else has come across this and if so how to fix i=
t.

Thanks

Joe

--b1_Q3fX9UZGpcmKVJRHdUO0yNAmwlAiL6p2OGeYmiKTxs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently trying to design my own OOT module, yet when=
 I run =E2=80=98make testbenches=E2=80=99 I get the following error=
=E2=80=A6</p><p><br></p><p><code>ERROR: [VRFC 10-2063] Module &lt;rfnoc_blo=
ck_trigger&gt; not found while processing module instance &lt;dut&gt; [/wor=
karea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_block_trigger/rfnoc_block_trigger_t=
b.sv:123]</code></p><p><code>ERROR: [XSIM 43-3322] Static elaboration of to=
p level Verilog design unit(s) in library work failed.</code></p><p><br></p=
><p>However, it appears to have been found and added according to the conso=
le=E2=80=A6</p><p><br></p><p><code>BUILDER: Adding Verilog : /workarea/uhd/=
OOTs/rfnoc-trigger/fpga/rfnoc_block_trigger/rfnoc_block_trigger.v</code></p=
><p><code>BUILDER: Adding Verilog : /workarea/uhd/OOTs/rfnoc-trigger/fpga/r=
fnoc_block_trigger/noc_shell_trigger.v</code></p><p><code>BUILDER: Adding V=
erilog : /workarea/uhd/OOTs/rfnoc-trigger/fpga/rfnoc_block_trigger/rfnoc_tr=
igger.v</code></p><p><code>BUILDER: Adding Verilog : /workarea/uhd/OOTs/rfn=
oc-trigger/fpga/rfnoc_block_trigger/rfnoc_trigger_regs.vh</code></p><p><br>=
</p><p>I am wondering if anyone else has come across this and if so how to =
fix it.</p><p><br></p><p>Thanks</p><p>Joe</p>

--b1_Q3fX9UZGpcmKVJRHdUO0yNAmwlAiL6p2OGeYmiKTxs--

--===============1048682661633231491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1048682661633231491==--
