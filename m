Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF3F77033C
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 16:37:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DBAEC384A95
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 10:37:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691159822; bh=Xskyzcg7dONSb58mklHx4gvydp7u9viHyy/ggmb56v4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VjyOSarGPayoIxH1Mq4mReK5+0JnpJIm/7idjBu2J+vBhWTGiffjxbS3Eyyb8uFHR
	 lAT/PgrgcX1BziqXHoZTLr3oZHdtqU1gbVN2RETbQoBb+hOd2eYjHNmlwZdrkYBaUR
	 TPTH9T6xhNKThlHcG6P8blCZhkmR3/iesSUYnn2Tuv6sWUihrsGUIwH+1Zj1xy37GZ
	 sXW1oFgfjdgiWX+hSTCUw2MJFWZ3ahDIr/M2p/N/qTB7SRzKGSY9OYvJEdCNHuCye0
	 ug4nN7x5Obvv/jUXo15lIwGGgDn4gPQ2f6ijhoJ9IfSkH8qOX8iOtxdodAX/5WG9zn
	 iU1i1QpYkiOug==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DDE9380F86
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 10:36:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691159787; bh=KjvkXVPrsbL9d/pIzsa1QTNkjd0q9TAVBsg1BRYi4G0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=amV0eMHoDgiyCTWdo2ja1wyRjxlWZg2UwRJ3nnyGSuYAb0/iExVia7iQqCEvhL8zP
	 +X8enrCtPQyyxA/Ts7ybM1rDF4d/ga/FqO4P/yS4HuZIiuHYzh/EuEc1d/XnM26aEV
	 zDybjlDe/gsyqp8Zs9Yz0Ihke0HKzme1qzDFHRZQaKsna/bDHx2obtswvUhk8bqyFe
	 QmGfbzY/NZ5yM37uGMwLPQoP5xURTkgBBvfigIXRY+UsO2pwuTyB+Sy0stE7kmOpPo
	 toj73bnWEbbshp/m3CSdIAX+IcLfcNQ2HKGQiwCnvKQOBLj5Ah4phKYIn4JJ9olTLx
	 Z+/NhbRq1AHpQ==
Date: Fri, 4 Aug 2023 14:36:27 +0000
To: usrp-users@lists.ettus.com
From: patrice.pajusco@imt-atlantique.fr
Message-ID: <m7r7eIx9WDqMsuSWPViwutZ0NRlY8Ul4HJGHoL64@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAEXYVK7iTSsAGjnMsnKZ91hAmKejq8f_mFEc2tNC5dLxPt0i+A@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: K4AKXUPQ6J3F7XCQ6URLF4HUKWPCOQJG
X-Message-ID-Hash: K4AKXUPQ6J3F7XCQ6URLF4HUKWPCOQJG
X-MailFrom: patrice.pajusco@imt-atlantique.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to have 10MHz on REF OUT with a master clock of 184.32 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/K4AKXUPQ6J3F7XCQ6URLF4HUKWPCOQJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3357914182932505310=="

This is a multi-part message in MIME format.

--===============3357914182932505310==
Content-Type: multipart/alternative;
 boundary="b1_m7r7eIx9WDqMsuSWPViwutZ0NRlY8Ul4HJGHoL64"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_m7r7eIx9WDqMsuSWPViwutZ0NRlY8Ul4HJGHoL64
Content-Type: text/plain; charset=us-ascii

Dear Brian,

Thank you for the different possible options.

Patrice

--b1_m7r7eIx9WDqMsuSWPViwutZ0NRlY8Ul4HJGHoL64
Content-Type: text/html; charset=us-ascii

<p>Dear Brian,</p><p>Thank you for the different possible options.</p><p>Patrice</p>


--b1_m7r7eIx9WDqMsuSWPViwutZ0NRlY8Ul4HJGHoL64--

--===============3357914182932505310==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3357914182932505310==--
