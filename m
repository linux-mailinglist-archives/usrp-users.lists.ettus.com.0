Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E807C3D3032
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jul 2021 01:29:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF3A4385289
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jul 2021 19:29:10 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9DA8384EF6
	for <usrp-users@lists.ettus.com>; Thu, 22 Jul 2021 19:28:24 -0400 (EDT)
Date: Thu, 22 Jul 2021 23:28:24 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <Jo7yw1j40GZsgFEBSyg1pj5lZwEUShI8lFMRTsBqk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 2sJDDNouVjabNdTb11S7jJGYI5B0QHXIhduWjmpS00@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YK46DBX2LD54UTOJVLX2CMP66YF32U6A
X-Message-ID-Hash: YK46DBX2LD54UTOJVLX2CMP66YF32U6A
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding RFNoC DDC in Gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YK46DBX2LD54UTOJVLX2CMP66YF32U6A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7498241162979768608=="

This is a multi-part message in MIME format.

--===============7498241162979768608==
Content-Type: multipart/alternative;
 boundary="b1_Jo7yw1j40GZsgFEBSyg1pj5lZwEUShI8lFMRTsBqk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Jo7yw1j40GZsgFEBSyg1pj5lZwEUShI8lFMRTsBqk
Content-Type: text/plain; charset=us-ascii

Well it looks like in ddc.yml that num_ports modifies input and output. Is that just allowing you then to use the same DDC core for two separate input streams? How is that data sequenced through the hardware - is there 2x the amount of hardware to process the streams in parallel? Is there a difference between making 1 DDC with 2 ports or 2 DDC with 1 port?

--b1_Jo7yw1j40GZsgFEBSyg1pj5lZwEUShI8lFMRTsBqk
Content-Type: text/html; charset=us-ascii

<p>Well it looks like in ddc.yml that num_ports modifies input and output. Is that just allowing you then to use the same DDC core for two separate input streams? How is that data sequenced through the hardware - is there 2x the amount of hardware to process the streams in parallel? Is there a difference between making 1 DDC with 2 ports or 2 DDC with 1 port?</p>


--b1_Jo7yw1j40GZsgFEBSyg1pj5lZwEUShI8lFMRTsBqk--

--===============7498241162979768608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7498241162979768608==--
