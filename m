Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D641334F1EC
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 22:03:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8768A383768
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 16:03:41 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AAF78383794
	for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 16:02:07 -0400 (EDT)
Date: Tue, 30 Mar 2021 20:02:07 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <aS3ZFFCSXczhyhpL1m0z0dNgzwZiuUMisOIAJPvHcg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DYO2NEC26243O3CJG5ZEWCBPHHOUYOUZ
X-Message-ID-Hash: DYO2NEC26243O3CJG5ZEWCBPHHOUYOUZ
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to control ctrlport_rst to reset gain RFNoC block from UHD layer?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DYO2NEC26243O3CJG5ZEWCBPHHOUYOUZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6001108049000071481=="

This is a multi-part message in MIME format.

--===============6001108049000071481==
Content-Type: multipart/alternative;
 boundary="b1_aS3ZFFCSXczhyhpL1m0z0dNgzwZiuUMisOIAJPvHcg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aS3ZFFCSXczhyhpL1m0z0dNgzwZiuUMisOIAJPvHcg
Content-Type: text/plain; charset=us-ascii

hi,

Following the tutorial RFNoC 4 video, I noticed that it is using ctrlport_rst to  set reg_user to the default value. 

My question is if I want to send a reset command from UHD layer, do I need to create another user register that handles the reset besides the user_reg that sets the gain? or I wonder if there is a internal register that can control the ctrlport_rst?

Thanks

--b1_aS3ZFFCSXczhyhpL1m0z0dNgzwZiuUMisOIAJPvHcg
Content-Type: text/html; charset=us-ascii

<p>hi,</p><p>Following the tutorial RFNoC 4 video, I noticed that it is using ctrlport_rst to  set reg_user to the default value. </p><p>My question is if I want to send a reset command from UHD layer, do I need to create another user register that handles the reset besides the user_reg that sets the gain? or I wonder if there is a internal register that can control the ctrlport_rst?</p><p><br></p><p>Thanks</p>


--b1_aS3ZFFCSXczhyhpL1m0z0dNgzwZiuUMisOIAJPvHcg--

--===============6001108049000071481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6001108049000071481==--
