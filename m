Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 888D93C7253
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 16:35:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 474B33845F4
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jul 2021 10:35:56 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B71D383E27
	for <usrp-users@lists.ettus.com>; Tue, 13 Jul 2021 10:35:07 -0400 (EDT)
Date: Tue, 13 Jul 2021 14:35:07 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <oBnUtuH1qxAUJYscwhnzrmrWnNNEKy3MNxex0MJBYQY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6QZB2IS2KDGRNPJNC3DBD7D3O6MXRDH6
X-Message-ID-Hash: 6QZB2IS2KDGRNPJNC3DBD7D3O6MXRDH6
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RX in streaming mode and TX in schedule with Late Errors - UHD 4 using RFNoC block.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QZB2IS2KDGRNPJNC3DBD7D3O6MXRDH6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7187396648780974039=="

This is a multi-part message in MIME format.

--===============7187396648780974039==
Content-Type: multipart/alternative;
 boundary="b1_oBnUtuH1qxAUJYscwhnzrmrWnNNEKy3MNxex0MJBYQY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_oBnUtuH1qxAUJYscwhnzrmrWnNNEKy3MNxex0MJBYQY
Content-Type: text/plain; charset=us-ascii

Hi all,

We are continuously receiving data and then we try to transmit some synthesized data within an schedule. The issue we are noticing is that we are getting **L**ate errors when the schedule is in the order of microseconds, for instance Tx 800us ON, 400us OFF, we are using data rate of 12.5MHZ in x310 with UHD4 Ubuntu 20.

If we use Rx in one x310 and Tx in another x310, it works, but when using both in the same x310 we have the **L**ate errors.

I wonder if anyone has any advice how to improve our timing and avoid those L errors?

Thanks

--b1_oBnUtuH1qxAUJYscwhnzrmrWnNNEKy3MNxex0MJBYQY
Content-Type: text/html; charset=us-ascii

<p>Hi all,</p><p>We are continuously receiving data and then we try to transmit some synthesized data within an schedule. The issue we are noticing is that we are getting <strong>L</strong>ate errors when the schedule is in the order of microseconds, for instance Tx 800us ON, 400us OFF, we are using data rate of 12.5MHZ in x310 with UHD4 Ubuntu 20.</p><p>If we use Rx in one x310 and Tx in another x310, it works, but when using both in the same x310 we have the <strong>L</strong>ate errors.</p><p><br></p><p>I wonder if anyone has any advice how to improve our timing and avoid those L errors?</p><p><br></p><p>Thanks</p>


--b1_oBnUtuH1qxAUJYscwhnzrmrWnNNEKy3MNxex0MJBYQY--

--===============7187396648780974039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7187396648780974039==--
