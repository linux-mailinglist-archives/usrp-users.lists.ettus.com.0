Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA41E361788
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 04:24:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC940384750
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 22:24:19 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81FC33843BD
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 22:23:30 -0400 (EDT)
Date: Fri, 16 Apr 2021 02:23:30 +0000
To: usrp-users@lists.ettus.com
From: brendan.horsfield@vectalabs.com
Message-ID: <wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6ZB2WQYRVYZN6GDBFOS5JIE5MMC3633Z
X-Message-ID-Hash: 6ZB2WQYRVYZN6GDBFOS5JIE5MMC3633Z
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Calling C++ UHD functions from Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6ZB2WQYRVYZN6GDBFOS5JIE5MMC3633Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2403750243285726654=="

This is a multi-part message in MIME format.

--===============2403750243285726654==
Content-Type: multipart/alternative;
 boundary="b1_wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4
Content-Type: text/plain; charset=us-ascii

Hi there,

I am trying to measure some short bursts of Rx data with my B210 at a fairly high sampling rate.  I need to perform this operation repeatedly, ideally several times per second.  The advice I have received from Ettus is that this task is best implemented using C++.  

The problem is that this task is part of a bigger project written entirely in Python.  It is not feasible to re-write the entire project in C++ just to be able to talk to the B210.

My question is:  Is there a relatively painless way that I can create a C++ function to perform the desired USRP measurement, and then call this function from Python?

Thanks,

Brendan.

--b1_wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4
Content-Type: text/html; charset=us-ascii

<p>Hi there,</p><p>I am trying to measure some short bursts of Rx data with my B210 at a fairly high sampling rate.  I need to perform this operation repeatedly, ideally several times per second.  The advice I have received from Ettus is that this task is best implemented using C++.  </p><p>The problem is that this task is part of a bigger project written entirely in Python.  It is not feasible to re-write the entire project in C++ just to be able to talk to the B210.</p><p>My question is:  Is there a relatively painless way that I can create a C++ function to perform the desired USRP measurement, and then call this function from Python?</p><p>Thanks,</p><p>Brendan.    </p>


--b1_wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4--

--===============2403750243285726654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2403750243285726654==--
