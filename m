Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B1D35A0CD
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 16:13:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 054FB384592
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 10:13:26 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5084B384148
	for <usrp-users@lists.ettus.com>; Fri,  9 Apr 2021 10:12:33 -0400 (EDT)
Date: Fri, 9 Apr 2021 14:12:33 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <p13QKGUy5eDhx2BVlIaQHhjGFqermKRcFYGl20leulk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: GCQZDF2DO4OHFRHRMG5WVVETJD4I2G2I
X-Message-ID-Hash: GCQZDF2DO4OHFRHRMG5WVVETJD4I2G2I
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reading metadata at host side and context configuration in passthrough mode.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GCQZDF2DO4OHFRHRMG5WVVETJD4I2G2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0855966165646346566=="

This is a multi-part message in MIME format.

--===============0855966165646346566==
Content-Type: multipart/alternative;
 boundary="b1_p13QKGUy5eDhx2BVlIaQHhjGFqermKRcFYGl20leulk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_p13QKGUy5eDhx2BVlIaQHhjGFqermKRcFYGl20leulk
Content-Type: text/plain; charset=us-ascii

Hello all,

I plan to add metadata in our custom RFNoC block, reading the RFNoC specification I noticed that the rx_streamer and tx_streamer handles metadata. my questions are:

1. Is this the same metadata specified in the context CHDR messages? if it is not, how can we read at the host side, the metadata added in the rfnoc block?

2. In the rfnoc block **gain** example shown in the video **RFNoC 4 Whorkshop**, the context data was passthrough, I would like to know for that particular case how the context header was configured and what would be its default configuration?. I wonder if it was configured based on its yaml description file.

Thank you.

--b1_p13QKGUy5eDhx2BVlIaQHhjGFqermKRcFYGl20leulk
Content-Type: text/html; charset=us-ascii

<p>Hello all,</p><p>I plan to add metadata in our custom RFNoC block, reading the RFNoC specification I noticed that the rx_streamer and tx_streamer handles metadata. my questions are:</p><p><br></p><ol><li><p>Is this the same metadata specified in the context CHDR messages? if it is not, how can we read at the host side, the metadata added in the rfnoc block?</p></li><li><p>In the rfnoc block <strong>gain</strong> example shown in the video <strong>RFNoC 4 Whorkshop</strong>, the context data was passthrough, I would like to know for that particular case how the context header was configured and what would be its default configuration?. I wonder if it was configured based on its yaml description file.</p></li></ol><p>Thank you.</p><p><br></p>


--b1_p13QKGUy5eDhx2BVlIaQHhjGFqermKRcFYGl20leulk--

--===============0855966165646346566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0855966165646346566==--
