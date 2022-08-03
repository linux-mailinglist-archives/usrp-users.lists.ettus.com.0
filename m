Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D33D2588E69
	for <lists+usrp-users@lfdr.de>; Wed,  3 Aug 2022 16:19:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A1F0383A7C
	for <lists+usrp-users@lfdr.de>; Wed,  3 Aug 2022 10:19:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659536379; bh=Jet7Kc5yyI9/tt2Lslr27RzhM4NctmfQoVEtFuleKRA=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=lQb7hNihMiH7NYWAq+zHtnmXyQF/DUDPRi/QR+DMzvtRZlL3GWcUNSJQgL1h0S3Y+
	 oQ0J0rI8AlsnXzmrrD7LzagkLMyGY0H/Otiz+esgn+XyIePzQw6BQd3vbSa+EGTwqQ
	 StN63QNOz1QemfR9ee1h53NwoEu38uLq62+z/f8bOM5Acp16OzQmqDerCvDl71uVHu
	 lB+EUeOBN6D59BWa6CsKAiDY1Yz02cWsia+1D3tbZmCaixm/mbOXtkyF4yznAPONQN
	 MQFNqBTkXlzdMrRiBvaxKrwAb4Bb4cjDoppQhGeMHRMvtlRt1z1x4kDttdayBJp25u
	 o4bHFIcLIHWLQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA27E3812C4
	for <usrp-users@lists.ettus.com>; Wed,  3 Aug 2022 09:25:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659533146; bh=D2RxtstCEOZ1zQRTm7/MgOVJxVhnVfq6B/tIsJoW90k=;
	h=Date:To:From:Subject:From;
	b=Kkt49jqemZx5quuHZOp83FuUAPAb4iM+zvi3cj6y4D+T95bdLEtFeAwoFe0Zcn/Oh
	 7N69iHG82+59Lvwvxv1U75HR2WoBj5acoCEhevNEEDUFQLMY9p+BdSSR3I4L6yYCfY
	 2rq5CNbkxUBAnAV69bzPHf/4AM7454W4aouvvjH7u8RvnHQkp2muy3po9g0HFuTVrn
	 ncFSkaRqLjQJEeGJHuF3NoGsA26nAX5on+EU6njTVWO6cRDtFcDtpBmHO7Cn4BAqQm
	 ppU1ry5D3ndGw7BWSSggfE6JLTO0tA8E5T3+YQm5SPVvjhfJ5Rb2O8UErTldjZ6lwX
	 TwSYGRmIfpGHA==
Date: Wed, 3 Aug 2022 13:25:46 +0000
To: usrp-users@lists.ettus.com
Message-ID: <H7eF9EnYkdH4fpAXJ7k8MHrEUYl5zcyB9dkIdHE7o@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XTRHS4FJGGA4TVP4A3MDOP3SIY5NCS43
X-Message-ID-Hash: XTRHS4FJGGA4TVP4A3MDOP3SIY5NCS43
X-MailFrom: k19033844@kcl.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] nr-softmodem run error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XTRHS4FJGGA4TVP4A3MDOP3SIY5NCS43/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: k19033844--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: k19033844@kcl.ac.uk
Content-Type: multipart/mixed; boundary="===============3134378383684214447=="

This is a multi-part message in MIME format.

--===============3134378383684214447==
Content-Type: multipart/alternative;
 boundary="b1_H7eF9EnYkdH4fpAXJ7k8MHrEUYl5zcyB9dkIdHE7o"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_H7eF9EnYkdH4fpAXJ7k8MHrEUYl5zcyB9dkIdHE7o
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear All,

I=E2=80=99ve successfully built uhd and other dependencies, by executing =
this command: `sudo ./nr-softmodem -O ../../../targets/PROJECTS/GENERIC-N=
R-5GC/CONF/gnb.sa.band78.fr1.106PRB.usrpb210.conf --sa -E --continuous-tx=
`.=20

I got following error: nr-softmodem: /usr/include/boost/smart_ptr/shared_=
ptr.hpp:734: typename boost::detail::sp_member_access<T>::type boost::sha=
red_ptr<T>::operator->() const \[with T =3D uhd::property_tree; typename =
boost::detail::sp_member_access<T>::type =3D uhd::property_tree\*\]: Asse=
rtion \`px !=3D 0' failed. Aborted.

MY software information is linux; GNU C++ version 7.4.0; Boost_106501; UH=
D_3.14.1.1-release.

Can anyone help me on this error?

Thanks a lot.

Warm regards,

Guang

--b1_H7eF9EnYkdH4fpAXJ7k8MHrEUYl5zcyB9dkIdHE7o
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear All,</p><p>I=E2=80=99ve successfully built uhd and other dependen=
cies, by executing this command: <code>sudo ./nr-softmodem -O ../../../ta=
rgets/PROJECTS/GENERIC-NR-5GC/CONF/gnb.sa.band78.fr1.106PRB.usrpb210.conf=
 --sa -E --continuous-tx</code>. </p><p>I got following error: nr-softmod=
em: /usr/include/boost/smart_ptr/shared_ptr.hpp:734: typename boost::deta=
il::sp_member_access&lt;T&gt;::type boost::shared_ptr&lt;T&gt;::operator-=
&gt;() const [with T =3D uhd::property_tree; typename boost::detail::sp_m=
ember_access&lt;T&gt;::type =3D uhd::property_tree*]: Assertion `px !=3D =
0' failed. Aborted.</p><p>MY software information is linux; GNU C++ versi=
on 7.4.0; Boost_106501; UHD_3.14.1.1-release.</p><p>Can anyone help me on=
 this error?</p><p>Thanks a lot.</p><p>Warm regards,</p><p>Guang</p>


--b1_H7eF9EnYkdH4fpAXJ7k8MHrEUYl5zcyB9dkIdHE7o--

--===============3134378383684214447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3134378383684214447==--
