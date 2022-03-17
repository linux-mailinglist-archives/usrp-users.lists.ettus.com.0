Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EED4DC1DB
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 09:50:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 49D663851DE
	for <lists+usrp-users@lfdr.de>; Thu, 17 Mar 2022 04:50:12 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7EB64384FA7
	for <usrp-users@lists.ettus.com>; Thu, 17 Mar 2022 04:49:11 -0400 (EDT)
Date: Thu, 17 Mar 2022 08:49:11 +0000
To: usrp-users@lists.ettus.com
From: armand.fontes@syrlinks.com
Message-ID: <pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LSI7FEIHIJIPTV6WTBNTQN2QHW7XGHCW
X-Message-ID-Hash: LSI7FEIHIJIPTV6WTBNTQN2QHW7XGHCW
X-MailFrom: armand.fontes@syrlinks.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [USRP E312] Disable bb dc offset tracking
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LSI7FEIHIJIPTV6WTBNTQN2QHW7XGHCW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6171961288274753597=="

This is a multi-part message in MIME format.

--===============6171961288274753597==
Content-Type: multipart/alternative;
 boundary="b1_pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk
Content-Type: text/plain; charset=us-ascii

Hello,\
\
I'm using usrp e312 for acquisitions on modulated signals and i have undesired power variations in time domain (2 to 10%). Thanks to analog devices tools, i discovered that disabling bb_dc_offset tracking on AD9361 settled the problem. As far as I know, uhd only provides "rf_dc_offset" and "iq_imbalance" control and this doesn't settle the problem. My question is how, on an uspr e312, can I disable bb_dc_offset tracking ? (Or at least modify bb_dc_offset loop parameters).

Thanks for any help,

Armand

--b1_pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk
Content-Type: text/html; charset=us-ascii

<p>Hello,<br><br>I'm using usrp e312 for acquisitions on modulated signals and i have undesired power variations in time domain (2 to 10%). Thanks to analog devices tools, i discovered that disabling bb_dc_offset tracking on AD9361 settled the problem. As far as I know, uhd only provides "rf_dc_offset" and "iq_imbalance" control and this doesn't settle the problem. My question is how, on an uspr e312, can I disable bb_dc_offset tracking ? (Or at least modify bb_dc_offset loop parameters).</p><p>Thanks for any help,</p><p>Armand</p>


--b1_pMJt13hKIG0H5eDyn6OUWFHlog07KhItvBFzBIuRQTk--

--===============6171961288274753597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6171961288274753597==--
