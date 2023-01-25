Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E607767B93F
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 19:25:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F5A3384406
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 13:25:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674671101; bh=kUbExEa48PMg+t94LZDSfnFv7xGJ40l9kgBpNNTpQA8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qPO7ZO7gxr2DYCtPnKC9gsQG4Nu7CgYtrshoIwKeZc5f7y6JaUHRCKdH0Qz/zwnM6
	 cw36ADu4S6UVH92sXKz9dfZb1GlF4TSK3P2kVEk83je+uYnFRFYjhKuKRymyr1LHN0
	 +nGdS77TmiFZWlT7nbuH1cCV60K1kC3GuckPNXl0xLh6ijmrs9mY5yGE2RTipzlegD
	 5Ig2pXfR7i45O9kU+k4MIyN109pesvisEbSSsKejkgmbAxX976rw2BFtiWaJDTcIr1
	 mLXbrf23xdW4MNzrb+8TzFGHL7cClvQYEblnQMcso4UKbPyHfoSZugj1310VwlXSMv
	 Gy9GJ1BZp4q9A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D26E3843E8
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 13:23:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674671019; bh=ZlUbvMpfGjKF2oO8qiz9DeoluKW/Nz+hXUZkBJvudMM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=cQID0zTS7Wg2T4c9CTAPaKTLx1DqGlm0k/ODtvsDKoOsZl5rihr/FkxaVcHelTug7
	 onCTYk/0f4K4avdfKnc+GNc0SoWDgkgudUIP9PzGvuRqieBuRJutjHtcGy2L5vz3qr
	 12qfRWUbsAIh7pt9R6Y1YavnqAGZ3z5ETR67P2EV00avq6HtG0tbDPe3nEc3j2nAWo
	 PlE3ITHUEWqvTJz3MbN6QdGPtJecPCNOkYJehksVz2zO0Hll0uXp8FGqNiUPYbYkGP
	 GWbtPatKILifTpBLQv6uULFbFiC+RewZ+gxbEm8TzWxpRh6bUJBqGfrbL2MhCnNRzN
	 N/ZZ2c2nSTXyw==
Date: Wed, 25 Jan 2023 18:23:39 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <rCAOMglCMKAW1fFEORoPm0G9Kv67iobBg95pUHg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: bc7b7ff5-e626-793a-97f1-8b71624fb5ba@gmail.com
MIME-Version: 1.0
Message-ID-Hash: IHUJVDL6K42B7XX3YLKJNV45WX5HQS6F
X-Message-ID-Hash: IHUJVDL6K42B7XX3YLKJNV45WX5HQS6F
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Parsing dat file produced by rfnoc_rx_to_file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IHUJVDL6K42B7XX3YLKJNV45WX5HQS6F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0267972373754394751=="

This is a multi-part message in MIME format.

--===============0267972373754394751==
Content-Type: multipart/alternative;
 boundary="b1_rCAOMglCMKAW1fFEORoPm0G9Kv67iobBg95pUHg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rCAOMglCMKAW1fFEORoPm0G9Kv67iobBg95pUHg
Content-Type: text/plain; charset=us-ascii

Thanks, Following up on this,  if I then use fc32, or fc64, how does the format change. 

Also, does there exist documentation on the default set of file formats?

--b1_rCAOMglCMKAW1fFEORoPm0G9Kv67iobBg95pUHg
Content-Type: text/html; charset=us-ascii

<p>Thanks, Following up on this,  if I then use fc32, or fc64, how does the format change. </p><p><br></p><p>Also, does there exist documentation on the default set of file formats?</p>


--b1_rCAOMglCMKAW1fFEORoPm0G9Kv67iobBg95pUHg--

--===============0267972373754394751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0267972373754394751==--
