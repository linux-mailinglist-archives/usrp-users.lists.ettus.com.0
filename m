Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6856A3D300E
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jul 2021 01:08:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CF89385041
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jul 2021 19:08:51 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EA03384B6C
	for <usrp-users@lists.ettus.com>; Thu, 22 Jul 2021 19:08:02 -0400 (EDT)
Date: Thu, 22 Jul 2021 23:08:02 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <2sJDDNouVjabNdTb11S7jJGYI5B0QHXIhduWjmpS00@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1lYlL38ULXqb3Vsi7dh9pMG6Bm52E2eB0UT3DKifzY@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: UXKH4OSOXI3UCUDZR3PSUCIDNUS2BFKJ
X-Message-ID-Hash: UXKH4OSOXI3UCUDZR3PSUCIDNUS2BFKJ
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding RFNoC DDC in Gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UXKH4OSOXI3UCUDZR3PSUCIDNUS2BFKJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8211428639930725079=="

This is a multi-part message in MIME format.

--===============8211428639930725079==
Content-Type: multipart/alternative;
 boundary="b1_2sJDDNouVjabNdTb11S7jJGYI5B0QHXIhduWjmpS00"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2sJDDNouVjabNdTb11S7jJGYI5B0QHXIhduWjmpS00
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

To add on a few things -

I=E2=80=99m not quite understanding what the ports and channels mean when=
 configuring the rfnoc yaml files. I=E2=80=99m trying to connect the radi=
o up to three DDC running at different frequency offsets to do a bit of c=
hannelization. In the yaml file, am I allowed to attach the output port o=
f the rx radio to the input ports of three DDC, or do I need to use the s=
plit stream block?

On ports - I noticed the default image defines num_ports =3D 2 for the DD=
C and DUC. What is that number defining? That there is 1 input and 1 outp=
ut? 2 inputs and 2 outputs? How does that map to the gnuradio =E2=80=9Cnu=
mber of channels=E2=80=9D block attribute?

--b1_2sJDDNouVjabNdTb11S7jJGYI5B0QHXIhduWjmpS00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>To add on a few things -</p><p><br></p><p>I=E2=80=99m not quite unders=
tanding what the ports and channels mean when configuring the rfnoc yaml =
files. I=E2=80=99m trying to connect the radio up to three DDC running at=
 different frequency offsets to do a bit of channelization. In the yaml f=
ile, am I allowed to attach the output port of the rx radio to the input =
ports of three DDC, or do I need to use the split stream block?</p><p>On =
ports - I noticed the default image defines num_ports =3D 2 for the DDC a=
nd DUC. What is that number defining? That there is 1 input and 1 output?=
 2 inputs and 2 outputs? How does that map to the gnuradio =E2=80=9Cnumbe=
r of channels=E2=80=9D block attribute?</p>


--b1_2sJDDNouVjabNdTb11S7jJGYI5B0QHXIhduWjmpS00--

--===============8211428639930725079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8211428639930725079==--
