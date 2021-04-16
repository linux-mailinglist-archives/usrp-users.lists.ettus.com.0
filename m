Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D99736179C
	for <lists+usrp-users@lfdr.de>; Fri, 16 Apr 2021 04:31:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5329384C13
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 22:31:05 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B05D38457B
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 22:30:16 -0400 (EDT)
Date: Fri, 16 Apr 2021 02:30:16 +0000
To: usrp-users@lists.ettus.com
From: brendan.horsfield@vectalabs.com
Message-ID: <N3dGVCcyRUnh8dbxaTe4A6k2onkTMh6PfxNXbu3ys@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: wQmTx3SzaskwQtIvV7IftyXjH7d1u4LQrruiii4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 5CUVGVPTMKNK6EES2RGCLUDZI7DUYETW
X-Message-ID-Hash: 5CUVGVPTMKNK6EES2RGCLUDZI7DUYETW
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calling C++ UHD functions from Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5CUVGVPTMKNK6EES2RGCLUDZI7DUYETW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3710885472122864730=="

This is a multi-part message in MIME format.

--===============3710885472122864730==
Content-Type: multipart/alternative;
 boundary="b1_N3dGVCcyRUnh8dbxaTe4A6k2onkTMh6PfxNXbu3ys"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_N3dGVCcyRUnh8dbxaTe4A6k2onkTMh6PfxNXbu3ys
Content-Type: text/plain; charset=us-ascii

I should clarify:  The Python API that comes with the UHD driver is not an option here.  I have tried this, and found that while it works well for receiving very short bursts of samples, it cannot compete with the C++ API at high sampling rates (not surprisingly).

--b1_N3dGVCcyRUnh8dbxaTe4A6k2onkTMh6PfxNXbu3ys
Content-Type: text/html; charset=us-ascii

<p>I should clarify:  The Python API that comes with the UHD driver is not an option here.  I have tried this, and found that while it works well for receiving very short bursts of samples, it cannot compete with the C++ API at high sampling rates (not surprisingly).  </p>


--b1_N3dGVCcyRUnh8dbxaTe4A6k2onkTMh6PfxNXbu3ys--

--===============3710885472122864730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3710885472122864730==--
