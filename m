Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 100CF3AF6AB
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 22:10:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6155F3842A0
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 16:10:14 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC03E3818A9
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 16:09:20 -0400 (EDT)
Date: Mon, 21 Jun 2021 20:09:20 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <pRweDt82qOjIowdXsRgGfluQuLAHyTdbYbuT7j9LfI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AF22NUV2UKHOQTJKI6HYLQTSEIEJNO3H
X-Message-ID-Hash: AF22NUV2UKHOQTJKI6HYLQTSEIEJNO3H
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Delay blocks
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AF22NUV2UKHOQTJKI6HYLQTSEIEJNO3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1443296700515259662=="

This is a multi-part message in MIME format.

--===============1443296700515259662==
Content-Type: multipart/alternative;
 boundary="b1_pRweDt82qOjIowdXsRgGfluQuLAHyTdbYbuT7j9LfI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_pRweDt82qOjIowdXsRgGfluQuLAHyTdbYbuT7j9LfI
Content-Type: text/plain; charset=us-ascii

Hi all,

I am planning to implement a RFNoC delay block, but first I would like to go through the RFNoC delay blocks examples like delay_fifo and type 2, 3 and 4, to this regard,  here are my questions:

System UHD 4.0 on the x310, 2 UBX dboards.

1. If we are using the data rate 25Msps, I wonder if we can have delays up to the second order. Based on the verilog code of those blocks, I can see max lengths of 1023 samples which will give a very short delay and is not what we want.

2. All the applications I have been working on, use rx_streamer and tx_streamer, I wonder if the delay can be implemented in following way, so we do not need to send the command start streaming but the time start for the radio to receive a signal.

Rx_radio -> DDC -> Delay -> DUC  -> TX Radio

Thanks

J

--b1_pRweDt82qOjIowdXsRgGfluQuLAHyTdbYbuT7j9LfI
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p>I am planning to implement a RFNoC delay block, but first I would like to go through the RFNoC delay blocks examples like delay_fifo and type 2, 3 and 4, to this regard,  here are my questions:</p><p>System UHD 4.0 on the x310, 2 UBX dboards.</p><ol><li><p>If we are using the data rate 25Msps, I wonder if we can have delays up to the second order. Based on the verilog code of those blocks, I can see max lengths of 1023 samples which will give a very short delay and is not what we want.</p></li><li><p>All the applications I have been working on, use rx_streamer and tx_streamer, I wonder if the delay can be implemented in following way, so we do not need to send the command start streaming but the time start for the radio to receive a signal.</p></li></ol><p>Rx_radio -&gt; DDC -&gt; Delay -&gt; DUC  -&gt; TX Radio</p><p><br></p><p>Thanks</p><p>J</p>


--b1_pRweDt82qOjIowdXsRgGfluQuLAHyTdbYbuT7j9LfI--

--===============1443296700515259662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1443296700515259662==--
