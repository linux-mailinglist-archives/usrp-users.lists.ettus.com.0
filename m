Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB2A67C7F8
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 11:03:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6D64384281
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 05:03:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674727430; bh=SJK1uwQDxoJjkwqwjZ1WqG+s4LCnDLQEQs+tCR1WPnE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rmVVDhUonBzLD9cZnmaoP/sAjiBJP/rmydV//Suh5oPUvKdvDFSvUwIjAYICNE6KS
	 XH5Y/K4Js6u2i12lGO8OH4xiT8IFNmzuyGwf9MxJGVRkDI29Omt/CSL42uWISj1nDJ
	 Y74l7lyr5Ms2CocrM/KnwU4v6VgMuiox4Pm1OAytYdqLjUxpQ1SR5t9m6hMAvh2Pt0
	 DI9eVwy3GFMwQmGUzQLCm6x3mPgNHfbPin7V1XN4vg6xpAEWHP7PAUdJ5YQecqzuuN
	 yXWt+jJrdYrESl8I9CvU0MKYSymQrQFO2pBByjMTLpqg85Ko0DIK6j0sFSf88wIhzu
	 Mxf3yrLKR2BCQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F34C384053
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 05:02:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674727350; bh=THRO+QtxWMYaKyp8jZgKyB20kLxxWixtF8FsM4Lphfw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=x08jkz5zCcaiNAgDf7Qv8c4K897BBlvVJ6Vujzo8I0KBbROnqjTW7Uwar85F1oxrf
	 OTIbczGEjCesAYCDtW+A04UcSDRNqfb0X4XzQgRJKwnXA0FMbEBKxSbNFGJ0AS7gYa
	 is6V8NI/cKFHsqANDihf9RtzefGv24dyvl8rVnrmL6rEYAbi/YEFIt5Sq9bsHC41uF
	 P2wr5soTLPozbrqKWZJwWDTRtGZv6CjykSTSTs5NnTgXvTwRg0rM0vYBvYc1Hr27Db
	 rTvmryMMdgbhOH5iYsggIzkhHZiPuraersC0GtVoFCtxzcH1lmuZLRKS1sa3V8Mu6J
	 omoV29GW45j9w==
Date: Thu, 26 Jan 2023 10:02:30 +0000
To: usrp-users@lists.ettus.com
From: daviddimavd@gmail.com
Message-ID: <sVNMI80mcbRSRgCJ3ogK0MQFIYmAmtk1cwgAFxktUs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CALooG3_q_KKP-_oEO_BRUxF=CWY7g6p4FD6SFvq+7zVTCg6DNw@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: Q5HISNKSQICH3OOU22HJHE57VHVTZCVC
X-Message-ID-Hash: Q5HISNKSQICH3OOU22HJHE57VHVTZCVC
X-MailFrom: daviddimavd@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Dual-Frequency simultaneously receiver using one USRP 2901
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q5HISNKSQICH3OOU22HJHE57VHVTZCVC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4472610340350941647=="

This is a multi-part message in MIME format.

--===============4472610340350941647==
Content-Type: multipart/alternative;
 boundary="b1_sVNMI80mcbRSRgCJ3ogK0MQFIYmAmtk1cwgAFxktUs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_sVNMI80mcbRSRgCJ3ogK0MQFIYmAmtk1cwgAFxktUs
Content-Type: text/plain; charset=us-ascii

Thank you very much! I appreciate it.

Best regards,

David

--b1_sVNMI80mcbRSRgCJ3ogK0MQFIYmAmtk1cwgAFxktUs
Content-Type: text/html; charset=us-ascii

<p>Thank you very much! I appreciate it.</p><p>Best regards,</p><p>David</p>


--b1_sVNMI80mcbRSRgCJ3ogK0MQFIYmAmtk1cwgAFxktUs--

--===============4472610340350941647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4472610340350941647==--
