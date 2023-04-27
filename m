Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA81D6F0A0E
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:41:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB8D3383EDA
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:41:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682613667; bh=08YUC2YGESHDFUjYpEoiCrxR9ysMcjZD60yUO9TgIz4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gv7Sd0obzJLBtrj1d3J+zS5KOWkTnR8DgP9RvgjY6tYgN9kK/UG4skLbimU9BD4qY
	 dAR7FeVvefyt4s0m1x9otGEQxT3/6yVgYS34oLUKvxN/kR6B0uGrdSbAb6uPTEjBHm
	 8nDcodxb26IvBoMVMEtBaWB6Z3I2BJHV94gWCmvEk2llSR8z9v6OFE6i7ixlGJqY4/
	 vt8jTiaP9YSGltRwbn7t5d8JJqCOIVhmZnqMjy6ALSBYjpx2VxhfULKNZF+KhJ7Jr4
	 E2Bi2vmWTEJ1L6VRQF+/u0w/IMMPYTGKYXVyq8UXQLL56kbzc4bk0K02COzVbNkNY4
	 yxKJFdbm0f0NQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB5C1384200
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:40:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682613626; bh=osmewjgF7LVskibOA+KVFsmi2JG+EPe8Ae9stGkPQhQ=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=UOaMPYL/puQBm8FwQq5e/QKoCuQJNRe4kI+8PSiMMm7hnAs/bvNmztp2Y++hvR1Gc
	 PEhE9sRfqAO1uSo8tu+NQlSbDspZu9K5RWdIqVXuE/Hj4DhWJsXGtUke+S3kC+F9Yu
	 0Jas1w/7RUw7up5sBG+Ci/6/cob3nLkM206XCzi+zeAOOuQ/rrCNbamNwqXVyj24MM
	 X8rFZYOliLg0M2l8Dcsk5b2pHBr+QzT/TYMaqYSlTULw8YiEYnrACn/rnj/BbBMcXL
	 iRiVAsJirPnpxZDB1ph2V22CJlG9dWRnh6JzLQI5hWV60RHmxoXfP9DqSmwbQJNW3Y
	 W6Yj8qEW2Al+g==
Date: Thu, 27 Apr 2023 16:40:26 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <M5LIfRdisudzM8vjpb1TozrASTXh7qDVr7XC3xU59w@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 70f6c471-e4aa-800b-35c4-482d80eb40cd@gmail.com
MIME-Version: 1.0
Message-ID-Hash: PMSIZWIDEO3RM5CVGPI24AQJ2NIDZM43
X-Message-ID-Hash: PMSIZWIDEO3RM5CVGPI24AQJ2NIDZM43
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PMSIZWIDEO3RM5CVGPI24AQJ2NIDZM43/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0797741118089041431=="

This is a multi-part message in MIME format.

--===============0797741118089041431==
Content-Type: multipart/alternative;
 boundary="b1_M5LIfRdisudzM8vjpb1TozrASTXh7qDVr7XC3xU59w"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_M5LIfRdisudzM8vjpb1TozrASTXh7qDVr7XC3xU59w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I tested with =E2=80=9CNo Sync=E2=80=9D in both Sink and source and there=
 is no difference. I tested using the =E2=80=9CStart Time=E2=80=9D parame=
ter in order to start first the Rx and then some seconds later the Tx, bu=
t I have no luck..=E2=80=A6

--b1_M5LIfRdisudzM8vjpb1TozrASTXh7qDVr7XC3xU59w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I tested with =E2=80=9CNo Sync=E2=80=9D in both Sink and source and th=
ere is no difference. I tested using the =E2=80=9CStart Time=E2=80=9D par=
ameter in order to start first the Rx and then some seconds later the Tx,=
 but I have no luck..=E2=80=A6</p>


--b1_M5LIfRdisudzM8vjpb1TozrASTXh7qDVr7XC3xU59w--

--===============0797741118089041431==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0797741118089041431==--
