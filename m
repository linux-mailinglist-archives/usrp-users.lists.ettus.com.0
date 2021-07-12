Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC993C5FCF
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 17:53:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F17038510D
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 11:53:29 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36752384C2A
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 11:49:38 -0400 (EDT)
Date: Mon, 12 Jul 2021 15:49:38 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <pB7dB3tCYPRKiPYL9j23136bzoOy7o0D5nzVzHjRhs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 600a2be8-3061-550b-4359-1ab297408c75@ettus.com
MIME-Version: 1.0
Message-ID-Hash: 35UA7VHGTRJCANHVTPZK6OQBRNSDTPUI
X-Message-ID-Hash: 35UA7VHGTRJCANHVTPZK6OQBRNSDTPUI
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ERROR: [Synth 8-439] module 'rfnoc_block_problock' not found [/home/..../rfnoc_ws/rfnoc-protocol/rfnoc/icores/x310_rfnoc_image_core.v:1087]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/35UA7VHGTRJCANHVTPZK6OQBRNSDTPUI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7306943644131804117=="

This is a multi-part message in MIME format.

--===============7306943644131804117==
Content-Type: multipart/alternative;
 boundary="b1_pB7dB3tCYPRKiPYL9j23136bzoOy7o0D5nzVzHjRhs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pB7dB3tCYPRKiPYL9j23136bzoOy7o0D5nzVzHjRhs
Content-Type: text/plain; charset=us-ascii

Hi Marcus,

Thank you for replying back, first of all I want to say that this was a silly mistake I made, and found it out when I ran the test bench. Because It was a OOT block, I renamed my previous skeleton of the RFNoC block with a different name (I wanted to use the same user logic for testing purposes) based on the new module and block I created . So the instantiation of the modules rfnoc_block and noc_shell in the verilog file had the old names and needed to be updated to reflect the new block.

I was focused on getting the YML  files in the icore and block folders updated but  not the verilog itself. 

I am currently using UHD 4. in ubuntu 20.

I hope this can help anyone when facing this issue for this particular case.

--b1_pB7dB3tCYPRKiPYL9j23136bzoOy7o0D5nzVzHjRhs
Content-Type: text/html; charset=us-ascii

<p>Hi Marcus,</p><p><br></p><p>Thank you for replying back, first of all I want to say that this was a silly mistake I made, and found it out when I ran the test bench. Because It was a OOT block, I renamed my previous skeleton of the RFNoC block with a different name (I wanted to use the same user logic for testing purposes) based on the new module and block I created . So the instantiation of the modules rfnoc_block and noc_shell in the verilog file had the old names and needed to be updated to reflect the new block.</p><p>I was focused on getting the YML  files in the icore and block folders updated but  not the verilog itself. </p><p>I am currently using UHD 4. in ubuntu 20.</p><p><br></p><p>I hope this can help anyone when facing this issue for this particular case.</p><p>  </p>


--b1_pB7dB3tCYPRKiPYL9j23136bzoOy7o0D5nzVzHjRhs--

--===============7306943644131804117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7306943644131804117==--
