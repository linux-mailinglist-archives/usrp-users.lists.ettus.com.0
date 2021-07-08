Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1AF3C13F9
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 15:12:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7B57384587
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jul 2021 09:12:26 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97D27383F77
	for <usrp-users@lists.ettus.com>; Thu,  8 Jul 2021 09:11:12 -0400 (EDT)
Date: Thu, 8 Jul 2021 13:11:12 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <y7qyE8dHIDrEMyEWy9rEFdFiMD5X8rMN2n6qQVUtOI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6RUMXMIXVWWK4GTSNMTUOP3DJDR5DHPH
X-Message-ID-Hash: 6RUMXMIXVWWK4GTSNMTUOP3DJDR5DHPH
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] ERROR: [Synth 8-439] module 'rfnoc_block_problock' not found [/home/..../rfnoc_ws/rfnoc-protocol/rfnoc/icores/x310_rfnoc_image_core.v:1087]
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6RUMXMIXVWWK4GTSNMTUOP3DJDR5DHPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4587456689721865127=="

This is a multi-part message in MIME format.

--===============4587456689721865127==
Content-Type: multipart/alternative;
 boundary="b1_y7qyE8dHIDrEMyEWy9rEFdFiMD5X8rMN2n6qQVUtOI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_y7qyE8dHIDrEMyEWy9rEFdFiMD5X8rMN2n6qQVUtOI
Content-Type: text/plain; charset=us-ascii

Hi all,

I am getting this error, when running the following command:

`rfnoc_image_builder -F ~/uhd/fpga  -I ~/rfnoc_ws/rfnoc-protocol/rfnoc/blocks/ -y ~/rfnoc_ws/rfnoc-protocol/rfnoc/icores/problock_x310_rfnoc_image_core.yml -t X310_XG`

 I have checked that the description block yml file is installed correctly in the /usr/local/share/uhd/rfnoc/blocks folder, I made sure that it is pointing to the right folder Makefile.srcs, I double checked the files in the icores folder are there and the image_core.yml file is correct.

I have created many images before but now creating this fpga image with OOT does not work. The only thing different here is that I add this block in a different module.

Thanks

--b1_y7qyE8dHIDrEMyEWy9rEFdFiMD5X8rMN2n6qQVUtOI
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p>I am getting this error, when running the following command:</p><p><code>rfnoc_image_builder -F ~/uhd/fpga  -I ~/rfnoc_ws/rfnoc-protocol/rfnoc/blocks/ -y ~/rfnoc_ws/rfnoc-protocol/rfnoc/icores/problock_x310_rfnoc_image_core.yml -t X310_XG</code></p><p> I have checked that the description block yml file is installed correctly in the /usr/local/share/uhd/rfnoc/blocks folder, I made sure that it is pointing to the right folder Makefile.srcs, I double checked the files in the icores folder are there and the image_core.yml file is correct.</p><p>I have created many images before but now creating this fpga image with OOT does not work. The only thing different here is that I add this block in a different module.</p><p>Thanks</p><p><br></p><p><br></p>


--b1_y7qyE8dHIDrEMyEWy9rEFdFiMD5X8rMN2n6qQVUtOI--

--===============4587456689721865127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4587456689721865127==--
