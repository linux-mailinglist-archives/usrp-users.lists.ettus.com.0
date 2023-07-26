Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6582A763913
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 16:28:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C295384B7C
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jul 2023 10:28:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690381706; bh=70iBE1+A4bfnTeWyTNVT+PDGDc8Q1hUKJKOSyTxIed8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RUbeFe9l3r3k6L2ykRGY73stSklBzb0iy58xGdHMlcU2KYf6JQD0S5D53QpAjiYVi
	 T/vM3afI3AvnTE36UPWwpo+fizjOI54vzIVDz+MS4FgXuZra5qhM8gB4miMDTiCKd7
	 +EQaxCRzK1OJjZA0xabS6qUi5pXZMIBMGNqZmnkUqPXgm6P+ezlBNMv1VWl4H4vHNO
	 Ze0gYcU7+GluI19XZVoKxWXTz3T6V2n1Mb+X3sc0D3x/z8xJDT0sxni6olbEWQcyI7
	 /4cVnCyG7pCmvheAJudOS4D4G323qKMszhohicjiEfTxjtZy9oDX/JFEGk3RFqJU5Q
	 uN3um5skDIy6w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 26F3C384B0D
	for <usrp-users@lists.ettus.com>; Wed, 26 Jul 2023 10:27:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690381669; bh=Pughu+vGX/liISC7RtMF2U3IHVv6qlA91LrwMCh2riM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=b8XG4Xgx7X4YBj/UatD21NHBqYRxVKYgV0DggVtXXZl3xJKpB6Ow8myMLDH4HKi2a
	 nG3svbZRrq6nEFA3WHtS7D8Ieu6L2D7Ztfovv9HcVXqhG41NBDWzWDahe9hWY4WVsG
	 i2nGMuak2JhXjTyQA+YBwDroDFblTXVlongjmVGVtuROzI1Q5SkMEfdPzgBtG+uQFB
	 T7WEkB4kklNW2ls7fr5PEeIZTUxgr6JNCpKUG+38vnBZFTAi8+maMdDoBu381i0r+u
	 akBYVC5DwSTEuvojqg/AmGaqyelRe5vBteHlGXiK/Q/Lu3q0RRBVDVfwxR9cAeFwFT
	 GpBqThhpUH+2g==
Date: Wed, 26 Jul 2023 14:27:49 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CdyUR2j2lqtJS1JiipoVzRdKDjTIBu5FMO9YTXXyCQ@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YYMBDWOWRIHQHBCW4BU6IDDMQWGLW2NG
X-Message-ID-Hash: YYMBDWOWRIHQHBCW4BU6IDDMQWGLW2NG
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Which optical transceivers are compatible with X410?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YYMBDWOWRIHQHBCW4BU6IDDMQWGLW2NG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8462612269708707019=="

This is a multi-part message in MIME format.

--===============8462612269708707019==
Content-Type: multipart/alternative;
 boundary="b1_ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There supposed to be some list of adapters that could work with X410 here=
:

https://kb.ettus.com/X410#100_Gigabit_Ethernet

There is this sentence in =E2=80=9CGuidance on SFP+ Adapters for Fiber Co=
nnectivity on NI Ettus USRP X410=E2=80=9C section:

=E2=80=9CHere are is a list of known-good cables and adapters.=E2=80=9C

But there is no list after all.

Best Regards,\
Piotr Krysik

--b1_ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>There supposed to be some list of adapters that could work with X410 h=
ere:</p><p>https://kb.ettus.com/X410#100_Gigabit_Ethernet</p><p>There is =
this sentence in =E2=80=9CGuidance on SFP+ Adapters for Fiber Connectivit=
y on NI Ettus USRP X410=E2=80=9C section:</p><p>=E2=80=9CHere are is a li=
st of known-good cables and adapters.=E2=80=9C</p><p>But there is no list=
 after all.</p><p><br></p><p>Best Regards,<br>Piotr Krysik</p>


--b1_ISUI0SMv0WzNwlprilRmKRzmo6MBHrSx7DAiylwI--

--===============8462612269708707019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8462612269708707019==--
