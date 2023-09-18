Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5A87A3FD5
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 06:02:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA592384CED
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 00:02:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695009745; bh=MNwScH2jW2nsYnHBZFFepqvQnk4+O1EJdSTxrRIeKFc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wcEz4BgU6FVNQwaMhGp1FE1d9+jJqrvQJH3eN0ZGPJg8OheCIGzZdPUwzGondDNXJ
	 PJSfN6CAexjrkNQZWIWNJSAajLVdRuNaqrmXCVwz+fcZCh+ReDXSUhQGx606UvPvle
	 I+WrfwwuF4fyEg2ZYU+SEK6+SlCfEesGtVhPjMSbYb4F12Hk8g5jsrB56oS6Cq/HTU
	 m7bm+u4Wx2beVLcA2rdS7xgft5kbF5H6BaG+REMQg7J7CNd5BOTssN3nc/kG5JzAeG
	 dR9foFDiOnJ4JzXpGMED9gvDOfLdeBq5MzW5uP5mvZTM8cU3a2+ube8DmQYgi3SJrH
	 LM7LIhDHPs9rw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E04AD384C58
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 00:02:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695009729; bh=/uWbjtClWUb4eMFlUynuKDFn33fo1NX8UffiG7IsoDM=;
	h=Date:To:From:Subject:From;
	b=uzZIzcUQWc8qzWYLOal1o/4BNV6oXdT2Ay1D7zdqnTLHRZKxV7nscMRyPnt3gPAJw
	 lK21EyRWiMoR6Klw5xFw70McxEaZawv2WUOpK+XKUlgqp+NS95GcXy8PZOnaB+Y+we
	 tIyS/npbQLM5TLe1qfiAI8TVRH4f2qP2Mg3wM6c2FagSL5gbsSrrG3dttrUmyzTp/5
	 7fVzKdtULJmR8A9Xcz435QbpD/M5QWLuernnmXvD87vAPyx3I2ANwJG7Bnb5PFdW3L
	 /+TTT6OqDe4LooOUfx9cGkQ7oekC0fRZ+lQC2kg7SIhAZP/uEI43bF0ssc51JLp1K+
	 Re+6fhPtL+NLA==
Date: Mon, 18 Sep 2023 04:02:09 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <fBvfquWRynpmDICGJ95YPzoM3TfNEtSuyxqM4ca1w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: ADXYOXB3673LUNTBSSEZSOBFEEB4OPCW
X-Message-ID-Hash: ADXYOXB3673LUNTBSSEZSOBFEEB4OPCW
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Delay between TX and RX channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ADXYOXB3673LUNTBSSEZSOBFEEB4OPCW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5273013664005969206=="

This is a multi-part message in MIME format.

--===============5273013664005969206==
Content-Type: multipart/alternative;
 boundary="b1_fBvfquWRynpmDICGJ95YPzoM3TfNEtSuyxqM4ca1w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fBvfquWRynpmDICGJ95YPzoM3TfNEtSuyxqM4ca1w
Content-Type: text/plain; charset=us-ascii

Hi

I am transmitting and receiving simultaneously from two ports/channels of USRPX410, in the same GNU Radio flowgraph. It seems that for TX and RX channels in USRPX410 there is delay (similar to the other USRP models). While I am saving both transmitted and received IQ samples to two files. How can I have IQ sample level synchronization between TX and RX channels. Thank you.

--b1_fBvfquWRynpmDICGJ95YPzoM3TfNEtSuyxqM4ca1w
Content-Type: text/html; charset=us-ascii

<p>Hi</p><p>I am transmitting and receiving simultaneously from two ports/channels of USRPX410, in the same GNU Radio flowgraph. It seems that for TX and RX channels in USRPX410 there is delay (similar to the other USRP models). While I am saving both transmitted and received IQ samples to two files. How can I have IQ sample level synchronization between TX and RX channels. Thank you.</p>


--b1_fBvfquWRynpmDICGJ95YPzoM3TfNEtSuyxqM4ca1w--

--===============5273013664005969206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5273013664005969206==--
