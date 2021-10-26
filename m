Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D19F743AA13
	for <lists+usrp-users@lfdr.de>; Tue, 26 Oct 2021 04:03:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B278A38155E
	for <lists+usrp-users@lfdr.de>; Mon, 25 Oct 2021 22:03:41 -0400 (EDT)
Received: from smtp98.ord1d.emailsrvr.com (smtp98.ord1d.emailsrvr.com [184.106.54.98])
	by mm2.emwd.com (Postfix) with ESMTPS id 1218B383ACA
	for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 22:02:54 -0400 (EDT)
X-Auth-ID: epoletaev@i-blades.com
Received: by smtp13.relay.ord1d.emailsrvr.com (Authenticated sender: epoletaev-AT-i-blades.com) with ESMTPSA id CA5C5C015D
	for <usrp-users@lists.ettus.com>; Mon, 25 Oct 2021 22:02:53 -0400 (EDT)
Date: Tue, 26 Oct 2021 09:02:43 +0700
From: Ernest Poletaev <epoletaev@i-blades.com>
To: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Message-ID: <88176baf-365a-4d9b-ba20-cd6676fc6fce@Spark>
References: <42128c85-a3d7-4777-8524-23cbd5823524@Spark>
X-Readdle-Message-ID: 88176baf-365a-4d9b-ba20-cd6676fc6fce@Spark
MIME-Version: 1.0
X-Classification-ID: 18639953-7b39-4e98-a0e2-553922afe794-1-1
Message-ID-Hash: 7T5EHK36GPV5ZNOVX4T7ECKP54FQ5PB7
X-Message-ID-Hash: 7T5EHK36GPV5ZNOVX4T7ECKP54FQ5PB7
X-MailFrom: epoletaev@i-blades.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] b205 carrier signal
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7T5EHK36GPV5ZNOVX4T7ECKP54FQ5PB7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9080160570447475955=="

--===============9080160570447475955==
Content-Type: multipart/alternative; boundary="617761c8_3352255a_22a"

--617761c8_3352255a_22a
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello,

I'm trying to get clean carrier signal out of Ettus b205 using GNU Radio =
(see top screenshot by the link).

I have a few boards and TX signal I see on the scope is quite different f=
rom expected sine wave (tried different sample rates but results are the =
same) (middle screenshot).

Do I need to set things differently on the GNU Radio or is it limitation =
of the board=3F

Some of the boards give even weirder output (bottom screenshot). Is it br=
oken=3F

Screenshots:=C2=A0https://imgur.com/a/doA1Syv

Best Regards,
Ernest

--617761c8_3352255a_22a
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hello,<br />
<br />
I'm trying to get clean carrier signal out of Ettus b205 using GNU Radio =
(see top screenshot by the link).<br />
<br />
I have a few boards and TX signal I see on the scope is quite different f=
rom expected sine wave (tried different sample rates but results are the =
same) (middle screenshot).<br />
<br />
Do I need to set things differently on the GNU Radio or is it limitation =
of the board=3F<br />
<br />
Some of the boards give even weirder output (bottom screenshot). Is it br=
oken=3F<br />
<br />
Screenshots:&=23160;<a href=3D=22https://imgur.com/a/doA1Syv=22 target=3D=
=22=5Fblank=22>https://imgur.com/a/doA1Syv</a><br /></div>
</div>
<div name=3D=22messageSignatureSection=22><br />
<div class=3D=22match=46ont=22>
<div dir=3D=22auto=22>Best Regards,
<div dir=3D=22auto=22>Ernest</div>
</div>
</div>
</div>
</body>
</html>

--617761c8_3352255a_22a--

--===============9080160570447475955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9080160570447475955==--
