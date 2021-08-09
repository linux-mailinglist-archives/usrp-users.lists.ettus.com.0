Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 012A03E4A30
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 18:46:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D9EB38515F
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 12:46:40 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F18DF38442B
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 12:45:51 -0400 (EDT)
Date: Mon, 9 Aug 2021 16:45:51 +0000
To: usrp-users@lists.ettus.com
From: rblack@swri.org
Message-ID: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: R5LT5W2PQ5MYPF2ZW3UPZBDSUGEO2D7B
X-Message-ID-Hash: R5LT5W2PQ5MYPF2ZW3UPZBDSUGEO2D7B
X-MailFrom: rblack@swri.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 RFNoc radio block question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R5LT5W2PQ5MYPF2ZW3UPZBDSUGEO2D7B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4527895973362927237=="

This is a multi-part message in MIME format.

--===============4527895973362927237==
Content-Type: multipart/alternative;
 boundary="b1_A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ettus documentation suggests the radio can be configured for a 25 MS samp=
ling rate (The master 200M / 8).  I=E2=80=99m wondering if it is possible=
 to get the RFNoc RX \*Radio block \*to do this without the DDC block.   =
Is that possible?   Entering anything other than 200M in the =E2=80=9CSam=
ple Rate (Hz)=E2=80=9D field causes errors.

In these Radio blocks, what is the Bandwidth(Hz) entry used for?

Is there any reason that you cannot use a Radio block \*without\* the DDC=
 block, sampling rates aside?

thanks-  rb

--b1_A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Ettus documentation suggests the radio can be configured for a 25 MS s=
ampling rate (The master 200M / 8).  I=E2=80=99m wondering if it is possi=
ble to get the RFNoc RX *Radio block *to do this without the DDC block.  =
 Is that possible?   Entering anything other than 200M in the =E2=80=9CSa=
mple Rate (Hz)=E2=80=9D field causes errors.</p><p>In these Radio blocks,=
 what is the Bandwidth(Hz) entry used for?</p><p><br></p><p>Is there any =
reason that you cannot use a Radio block *without* the DDC block, samplin=
g rates aside?</p><p><br></p><p>thanks-  rb</p>


--b1_A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc--

--===============4527895973362927237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4527895973362927237==--
