Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7038F7FD5F8
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 12:46:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55358384DA7
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 06:46:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701258388; bh=dETky9rRHmDZYBC/8x2uEy82Z0/8pWwD0x6mSl2NG9w=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SqGibzu+poPDBsCyPkGrpNe8jUnI5Nhf5mWfJJtavj+wmRb9cCa/BdbTGWZmDLTHK
	 riBDpSZh64XJbCmqvRU1ANZ4BV+MsnoeeEEB3dyDtlO4K22sMBcqdbKRWqxvaFVnYp
	 DGhEajpflZ0Iy2o/2TVS2q8vTjsipWGrFi5vXRzlnyjagQ2HIPy1n6z28RCADarRCt
	 NjgQiyh2/tf11BgsU+KN1Lc+of9wslHKRj6mRvJ6eQjKjkRs+y3bLe92UiKbMpEf7n
	 y169A9SX+irmJYC7BL0pGDwkndDi3EnaN3QjH2WJc3SBGQi4OO8I3otbQ1xfPSJ+ag
	 YW9nsNvYdXstA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A270384B6D
	for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 06:45:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701258336; bh=4r9/M8u5KpRuiC8/orcpBeuJKfpUTqKGcS/6pla6Am4=;
	h=Date:To:From:Subject:From;
	b=NNG+pAI6bujEm7XoEjVxZ7J85+6QpjG8Qmfw878kj4/CCBuOI824+STeI0rIbRphC
	 xzs6D95WWYSjo4WSFB0HhzPZy7pGAotKlVCQNtAmx7TJi+bcPz4tMk3C2xeWccE1u7
	 fmypmHQQmn4a6u/RvVRQthNgJQtNBX47JYKvz0hbuTGz5h4NVYqWQgqBZOvMZw8JUo
	 VvCjIm7qjS1uLURC3ymPtcStpsfEvOC4DvsyNE5tInfu2VuEuHYRiLwy6At+d0pr4p
	 5K2ABXg288ZQQfi+nnebCA7EpKhvIsMXnrA6XGtdC9wBAXtP+utba4P+ztDFZ2ZhvN
	 c8+fMYYJOGdbA==
Date: Wed, 29 Nov 2023 11:45:36 +0000
To: usrp-users@lists.ettus.com
From: matthew.t.hunter@aero.org
Message-ID: <KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: D2SOOHTLIK6MDBDXMWR7TB2PV5Z45UKX
X-Message-ID-Hash: D2SOOHTLIK6MDBDXMWR7TB2PV5Z45UKX
X-MailFrom: matthew.t.hunter@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Timestamp Accuracy
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D2SOOHTLIK6MDBDXMWR7TB2PV5Z45UKX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1893383178209099159=="

This is a multi-part message in MIME format.

--===============1893383178209099159==
Content-Type: multipart/alternative;
 boundary="b1_KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

=C2=A0

We have an X310 that is connected to a high precision GPSDO 10 MHz refere=
nce and 1 PPS signal.

=C2=A0

1. How precise is the timestamp generated from the 1 PPS signal (assuming=
 a perfect 1 PPS)?

2. Is it limited by the master 200 MHz clock to +/- 5 ns? Or the sample r=
ate?

3. Is there a way to achieve sub-nanosecond precision?

=C2=A0

Thanks

--b1_KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII
Content-Type: text/html; charset=us-ascii

<p>Hello,</p><p>&nbsp;</p><p>We have an X310 that is connected to a high precision GPSDO 10 MHz reference and 1 PPS signal.</p><p>&nbsp;</p><ol><li><p>How precise is the timestamp generated from the 1 PPS signal (assuming a perfect 1 PPS)?</p></li><li><p>Is it limited by the master 200 MHz clock to +/- 5 ns? Or the sample rate?</p></li><li><p>Is there a way to achieve sub-nanosecond precision?</p></li></ol><p>&nbsp;</p><p>Thanks</p>


--b1_KUBPy9I9B1QcVFsiJfMNV87wLxnpzaQAQl75cKoII--

--===============1893383178209099159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1893383178209099159==--
