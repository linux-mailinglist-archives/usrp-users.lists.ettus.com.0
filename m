Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4537246BD
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jun 2023 16:48:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84E90380EE5
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jun 2023 10:48:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686062891; bh=n6EaeLIHP3/2lH0+H2tXSseT2aCLd7mziBHWI+8u3UQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bC5jv7G9WHNknggxYDx7Vc1mNyNyo+u8n0n+xJf/qPWisln6hVO1u+wYPXudkT2A+
	 NiTQn697lLcV6r6zloLVDLYxVmL1kIA2nmJ93qLwtZ+lA4esn1Cfvdt3LzpMopfCnK
	 crUjMx98mbwFLIbhC3SMrQ2ouF3MwKY+RkumbCjFVvfas7qzerzhKrnIMy7HQbM0fa
	 9RDMmIGTyVLvV2xuEC259KEv8ZMvZoIJ2r5+Mex2w9y6BOsCJeQ+chXwhYmhl8+J/j
	 mcLAMpZTduPCSavvxEh0LOU06v2Zw4nZ0o4QQ0fe6zMrJ6r4QPId7bz9Kx3WOSC6xz
	 2U784Q2OL/ojw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5AD1380EC6
	for <usrp-users@lists.ettus.com>; Tue,  6 Jun 2023 10:47:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686062865; bh=GpY5SPfKV+UunV3nYxVI0Cnzi9mLoxo4TqvZLnxH04c=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=geuqVQONcBLf3qFvsOAs0USaTuIja4A5mfSBxWJSbwsFvBx7IYXZ4bhreEv0Lyyu2
	 SQrXoeTiZpHmu4setTW63hMy/9jZ5IL2jILoz81XXjV+lsknW2SvL2+T0Ac8GHp5cr
	 RxQD7HkEcRZwynQvxQLdGBYtr9z3+qHi3KDHTEncTok9MMRpqaiaj4ygXKhywIdKu5
	 u72ASpU/K5pLSc3UW/Y8Cw9+8EzuSr/Nl6VNIQxLY6aTe2+HiLyMY46gq6lFOvYhNL
	 vrl5CPE8Go8741hDln8esOz0TFhT70SAHhTsNvxBxVMl89SqMLEkCW/DCQ5O9mB3Bh
	 JpT7lPhSzw9QA==
Date: Tue, 6 Jun 2023 14:47:45 +0000
To: usrp-users@lists.ettus.com
From: pistachio6981@gmail.com
Message-ID: <BE5X0UYe3cU9BDkFwRomnbSbVWUWTtGzWFIl2jHtQ8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: ff632677-36f6-8e48-c70d-c1ef5794cb76@gmail.com
MIME-Version: 1.0
Message-ID-Hash: NY3FIOOSLV3LDVHGDCP74KBKGKTYJ5EH
X-Message-ID-Hash: NY3FIOOSLV3LDVHGDCP74KBKGKTYJ5EH
X-MailFrom: pistachio6981@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 help
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NY3FIOOSLV3LDVHGDCP74KBKGKTYJ5EH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8178412332075371141=="

This is a multi-part message in MIME format.

--===============8178412332075371141==
Content-Type: multipart/alternative;
 boundary="b1_BE5X0UYe3cU9BDkFwRomnbSbVWUWTtGzWFIl2jHtQ8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BE5X0UYe3cU9BDkFwRomnbSbVWUWTtGzWFIl2jHtQ8
Content-Type: text/plain; charset=us-ascii

Sorry to bother again, but was there any other suggestions give by any other members of the Ettus support organization on this issue?

--b1_BE5X0UYe3cU9BDkFwRomnbSbVWUWTtGzWFIl2jHtQ8
Content-Type: text/html; charset=us-ascii

<p>Sorry to bother again, but was there any other suggestions give by any other members of the Ettus support organization on this issue?</p>


--b1_BE5X0UYe3cU9BDkFwRomnbSbVWUWTtGzWFIl2jHtQ8--

--===============8178412332075371141==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8178412332075371141==--
