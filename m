Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADEA56B2C0
	for <lists+usrp-users@lfdr.de>; Fri,  8 Jul 2022 08:26:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86BE13843A0
	for <lists+usrp-users@lfdr.de>; Fri,  8 Jul 2022 02:26:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657261613; bh=VPXK0GjcKX/GAIswtm0qkoaj6dcnpuvA8MtKccfEJAo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=KezE3Aq94Ggg/C2W+Y02ATXwxmQWovPKvv3MP+6p0RQnvMPSMscug7eApubL3U4n6
	 CxHiBbUD3RpGq73XxoACviecQf17DC6ZfTvDyFrfb0bT8xHsZW6Uk5kJPKz7FCtKYo
	 f/BvagehhxJdb6WUrBGhbJMROp65Yf0EAoMzIt/DyyXowDtZx/VExMvWRYsFi31xx9
	 xwJt01Q2WuE1BsKzwU+PY7Ciy1IlA3LRWxyq6j1AE5BjgralH3QZglXTRF1dA3kHCQ
	 zMotsokBGUAkDUS6u+XvmBPMhvY6xbtJ9O0hVwZnQW9y6UH0kH8Pwx4dCqTrcdSkNC
	 VRQ+I5ArUW/5A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A0FB3842A5
	for <usrp-users@lists.ettus.com>; Fri,  8 Jul 2022 02:25:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657261538; bh=DAxBH0SlrDJNCvB0opCE6cpnvbdjRutGKCBnHydWzFk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Aj8Qiud6tkA7B+l2H7p5vveHOlpww+orJxrvKKEA1oA2H598BntdQrc6sK+iTLe3n
	 xoH+XWi7Y4T758fN3U1C76ayg0WA1GzAejvMoilSljeBzs/6P7rR/hIwr8jpmtVVZZ
	 4iYDj2TRWgQGyOLOSC7sjIixFc++qmoc6HDURJcwrELGtiwUhhAYdD+IB3vWH1LHsq
	 Zn5fXjz9+ycCLKw7WtPJAn3LfzeQEOAYFvpvpczJ3UKcVP7krjh5xbja9QJokEWj9f
	 Bek6OZ+/whfbo/30h+aTv+k+JaGOT8NxongXwyGokIS/YXFVfFdSRWjCxTevwhAtgU
	 jCzTWyvTf1J+Q==
Date: Fri, 8 Jul 2022 06:25:38 +0000
To: usrp-users@lists.ettus.com
From: ouzan_ts@hotmail.com
Message-ID: <BWb3kjn2aCHggrjJX8tOPY8S3JzAGzwuQzjB2SYE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1404e3a5-9320-62e8-6a61-3031830fb9d7@gmail.com
MIME-Version: 1.0
Message-ID-Hash: W5JXAZ2C5DTSY5QYAQ3NRFVKVJR34HJ7
X-Message-ID-Hash: W5JXAZ2C5DTSY5QYAQ3NRFVKVJR34HJ7
X-MailFrom: ouzan_ts@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency Switch with USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W5JXAZ2C5DTSY5QYAQ3NRFVKVJR34HJ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4089440786559870207=="

This is a multi-part message in MIME format.

--===============4089440786559870207==
Content-Type: multipart/alternative;
 boundary="b1_BWb3kjn2aCHggrjJX8tOPY8S3JzAGzwuQzjB2SYE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_BWb3kjn2aCHggrjJX8tOPY8S3JzAGzwuQzjB2SYE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I made all design on GNU Radio. Now, I am struggling to make system more =
efficient.

To decrease frequency switch time, I found IQ Imbalance mode. AD9364 is a=
utomatically made IQ balance. If I turn off this, the switch process is s=
peeding up almost %30. Is there any relation with this? And I don=E2=80=99=
t know why but every 100Mhz frequency step, the card makes different cali=
bration and process is taking longer. Is there any solution to make this =
process shorter? Can I change this set?

--b1_BWb3kjn2aCHggrjJX8tOPY8S3JzAGzwuQzjB2SYE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I made all design on GNU Radio. Now, I am struggling to make system mo=
re efficient.</p><p>To decrease frequency switch time, I found IQ Imbalan=
ce mode. AD9364 is automatically made IQ balance. If I turn off this, the=
 switch process is speeding up almost %30. Is there any relation with thi=
s? And I don=E2=80=99t know why but every 100Mhz frequency step, the card=
 makes different calibration and process is taking longer. Is there any s=
olution to make this process shorter? Can I change this set?</p>


--b1_BWb3kjn2aCHggrjJX8tOPY8S3JzAGzwuQzjB2SYE--

--===============4089440786559870207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4089440786559870207==--
