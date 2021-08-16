Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 767003ED7F7
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 15:54:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D2AD38453C
	for <lists+usrp-users@lfdr.de>; Mon, 16 Aug 2021 09:54:10 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6677383FBD
	for <usrp-users@lists.ettus.com>; Mon, 16 Aug 2021 09:53:21 -0400 (EDT)
Date: Mon, 16 Aug 2021 13:53:21 +0000
To: usrp-users@lists.ettus.com
From: rblack@swri.org
Message-ID: <j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CsSC0c6ADBbha0ZodXT7eNGB227Cgj13Uh4Oo0@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: P42F6YDPPNJE3M63P2FTQRXCVA47KC4S
X-Message-ID-Hash: P42F6YDPPNJE3M63P2FTQRXCVA47KC4S
X-MailFrom: rblack@swri.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Software Loopback RFNoC TX/RX same flowgraph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P42F6YDPPNJE3M63P2FTQRXCVA47KC4S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2663673570466829022=="

This is a multi-part message in MIME format.

--===============2663673570466829022==
Content-Type: multipart/alternative;
 boundary="b1_j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

at present we have data flowing in a loopback mode- that=E2=80=99s good. =
  However, the data flowing is the full 200MHz BW of the radio blocks, as=
 if the DDC and DUC rfnoc blocks were using output/input rates of 200M, i=
.e. no decimation, despite being configured for various decimated output =
rates.  Don=E2=80=99t know why, since the DDC properly decimates data whe=
n connected to a streamer for host QT display.

--b1_j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>at present we have data flowing in a loopback mode- that=E2=80=99s goo=
d.   However, the data flowing is the full 200MHz BW of the radio blocks,=
 as if the DDC and DUC rfnoc blocks were using output/input rates of 200M=
, i.e. no decimation, despite being configured for various decimated outp=
ut rates.  Don=E2=80=99t know why, since the DDC properly decimates data =
when connected to a streamer for host QT display.     </p>


--b1_j5F6YtEoVo0Wldzr6rY6XpoIFJknRKuXqspmRY5wCz8--

--===============2663673570466829022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2663673570466829022==--
