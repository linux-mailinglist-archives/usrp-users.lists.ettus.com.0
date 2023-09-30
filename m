Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F10AA7B4059
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 14:56:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1DA74385572
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 08:56:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696078573; bh=8M22+ciQD5XRl41OqEirF2ybTL1qyw8S/YW1TZETNZM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pwBScosyYPXMjpqWlrXegUZbxwoyAr0k5ycXcTvRF28Xaq9K4cgyzlxuI7x2HGowF
	 DZSzto/q3VtARZgl4YuGL6RqPCXCTTIHnfER7ZvLtkJrhzqUREJVZuqxcTiQKmBx+I
	 BGLiGf2Kyln1h4FvtsUsy4G7oIH0AR2JHAaX3ke4C9OixzqGkPhTQNWVIse48UDKwe
	 0CvRaSAk7m7Ub43tMzpbGmg48C+H5P6P5srDsj4GnkjhfaeXX8g7hyo7u3+2c7C+AN
	 xcA7Cn5BTHv8gyiFODmWX+LyL1+quEqNncR42w7+rnWfjBOa1Tmauuua+cXgmeO8oh
	 Sgawf3/Ut6n6g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F02E384C7D
	for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 08:56:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696078569; bh=Iri9tMMp1chWNgNtQbifYiE23bhGC/hf+qTeg6Zl5r8=;
	h=Date:To:From:Subject:From;
	b=JnupntiA5F25wKY5nG1cJ2kThE21RSUJ3lEeRZz89eLG10Z2kmiFGKlWuznFQTBGl
	 jXcUnEP+qMNBARNbD3U7IirrNQICzob4Cq02yisw0lG94YFQviXwo5SVyYArV5lJAs
	 TVSC9+3QKKL4CYI86XWM9eRLes0vGOSob2uRN0DAVmSu9+cEutDvhGSxtXfO411LCh
	 SJrogdj8u+a0P9awpE3l91uRIgHxbzRPTmgzrZtAENrNyo7b8SJ3obiT4PGEQ6Mxap
	 adIZJikrmRLt7OJZ2ceX57F7MxChYooYxWN1bNZzlwx0Z7nYO36w4wG2byQqgSG+br
	 quTpWAyw3Kmzg==
Date: Sat, 30 Sep 2023 12:56:09 +0000
To: usrp-users@lists.ettus.com
From: usama.khurram@hotmail.com
Message-ID: <UoCWH5ak6605M1YKQ9L7UbjhnBfaAsLRXG89t33UvDY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: BHOXXHLAZZGDXZD7GJUASAKWD74AZ4AZ
X-Message-ID-Hash: BHOXXHLAZZGDXZD7GJUASAKWD74AZ4AZ
X-MailFrom: usama.khurram@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] dss
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BHOXXHLAZZGDXZD7GJUASAKWD74AZ4AZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3827556333463033807=="

This is a multi-part message in MIME format.

--===============3827556333463033807==
Content-Type: multipart/alternative;
 boundary="b1_UoCWH5ak6605M1YKQ9L7UbjhnBfaAsLRXG89t33UvDY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_UoCWH5ak6605M1YKQ9L7UbjhnBfaAsLRXG89t33UvDY
Content-Type: text/plain; charset=us-ascii

sdsds

--b1_UoCWH5ak6605M1YKQ9L7UbjhnBfaAsLRXG89t33UvDY
Content-Type: text/html; charset=us-ascii

<p>sdsds</p>


--b1_UoCWH5ak6605M1YKQ9L7UbjhnBfaAsLRXG89t33UvDY--

--===============3827556333463033807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3827556333463033807==--
