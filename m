Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D066F74F3F5
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 17:44:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DBA3D383BEA
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jul 2023 11:44:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689090281; bh=lVz0BtChvGEytn4TZwpC+g1Z1EiEmnJBZxvr4qaA8gk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j9I6o6QPNneoMwMoTzFs7BpUkNq4idXyVItfu1gvvJ5Yi/zBFtGjGVuIVthJeY/6O
	 XhgjD5/BDjfVczDdDhRsaz3nrs7EgSKDNEwQbGlF6iI6d0C0H51Ao7G+FmTo+cpU2u
	 Kl02gCU11pZ+0ox9eot8tjFqiLiPsTeN76YN7P4fKqFxX4Mu4nG5m25t40eXmd7PhI
	 2ZJ9sexXCfeB/A7/e+gGt32oJaknZougpQZ8XE0QneLjeuhFyi3m0FLqqHLvPKm8LF
	 8ReCeVymjJPg7+bnIda6q2VwCLJppYBDEntgB40zdnOBd7nQMYKVgyGSfw1rPXqWZp
	 41SCPtXlNoUAA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9CE61380D9E
	for <usrp-users@lists.ettus.com>; Tue, 11 Jul 2023 11:44:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689090266; bh=T2zImlBwNqHMKCGeNrUdMkBNp4ueCdxsuikL23WpKMs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iX1+4fZBps92ENajJC1UhCOl2X9WIArQrbcq3qqQLKxW20atEdG8pPhIQMBq41GQ7
	 +t0QXAMv9zpFcsKuZzCldHIBFY6NoYM8mSNvIaG+cwU6NcaSOoT6JTTvSW2zVC9T0x
	 /xQ8iSSejrwzhF74fstGaoJb/1QOZHkcKM/2NIfmHA/Xms+pUNIb5VH//vOyZdrSaF
	 dile+yDnB/OuQrbcD9eoI1+lHd4b284XheejmDprf4WCOVsZGm569Up5NTkDPcEVd/
	 TAoBjAdfpVtFOUPr6YqmC6B1yV63VWY6uxr+VPH+FEd6kuE9ieEPpgyFaO+l2wHmlt
	 qQXgZbjBbodVQ==
Date: Tue, 11 Jul 2023 15:44:26 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <m1K5EwezzvXcOqMKHv4pRggbiupqFuTWpsLApTRW6TU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 97a6a660-e9be-a9b9-1bb9-c613386d8729@gmail.com
MIME-Version: 1.0
Message-ID-Hash: V7H35JY7UL57KLBVJSKYUU6TWUXTXZKB
X-Message-ID-Hash: V7H35JY7UL57KLBVJSKYUU6TWUXTXZKB
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Voltage Specification of x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V7H35JY7UL57KLBVJSKYUU6TWUXTXZKB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1910309659918735553=="

This is a multi-part message in MIME format.

--===============1910309659918735553==
Content-Type: multipart/alternative;
 boundary="b1_m1K5EwezzvXcOqMKHv4pRggbiupqFuTWpsLApTRW6TU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_m1K5EwezzvXcOqMKHv4pRggbiupqFuTWpsLApTRW6TU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

When I maximize the Gain on the my board, but keep the input into the rec=
eive at 14 dBm, I =E2=80=9Csaturate=E2=80=9D my ADC, however, I get huge =
peaks(greater than the frequency I am transmitting at) in other parts of =
my frequency spectrum, which I believe to be an artifact of the LO leakag=
e. When I keep the gain of the daughterboard low I only see a peak at the=
 frequency of the signal I am transmitting.

I want to see if I can get away with increasing the input voltage going i=
nto the RX port.

--b1_m1K5EwezzvXcOqMKHv4pRggbiupqFuTWpsLApTRW6TU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>When I maximize the Gain on the my board, but keep the in=
put into the receive at 14 dBm, I =E2=80=9Csaturate=E2=80=9D my ADC, howe=
ver, I get huge peaks(greater than the frequency I am transmitting at) in=
 other parts of my frequency spectrum, which I believe to be an artifact =
of the LO leakage. When I keep the gain of the daughterboard low I only s=
ee a peak at the frequency of the signal I am transmitting.</p><p>I want =
to see if I can get away with increasing the input voltage going into the=
 RX port.</p>


--b1_m1K5EwezzvXcOqMKHv4pRggbiupqFuTWpsLApTRW6TU--

--===============1910309659918735553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1910309659918735553==--
