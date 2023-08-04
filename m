Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 461A876FA23
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 08:31:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E38DF380864
	for <lists+usrp-users@lfdr.de>; Fri,  4 Aug 2023 02:31:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691130700; bh=SezU0TeN8S9cMfl5m31CknDP4WWgMsjStHm7luSC2o0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=llnYAmbIq1Srwx6L7nIqWnQCWaBoAVRJs7zhGz5Ji266BrTI0oxphjd/vgiPedjX6
	 dl3fNGfOdPuHRZpWwaKAy8QpHEbO86YN1QUtyR+QDv34FFFD5oaPHk+t5K6y2vlWv5
	 KMQPYKfXihedqwQmrtmJVf+dgKT8YtwcB6dFtOjmDxYEyPTyuyN13I4xABA9TjOC3U
	 aRJI5Vd23FaPhSrhTISbFJkLMwnsTYzkb2CQW4u4ak6CYK9HXWCRxzRM+RswD6B7F3
	 q2PDDaGtwmrtkhnWxGOixAzEYKuNqxyuLBXtqppxD82cI0VmUd+ufsH+Hmwk+pdYKR
	 UcTNIpCfG2EiQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C199384ABA
	for <usrp-users@lists.ettus.com>; Fri,  4 Aug 2023 02:31:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691130667; bh=vdwULZNNnA1IXH9WeimtDpK+65oNmxh0b5zgJEmB9Y0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Blspd8MFhcTjYuo10ZJesx1KyMXbqemWAVUYqA5joyFp7zigdrnRoL4456ihngCE6
	 I2uZtCreYFp1Jvoy3u/ZgIhDRwW31dPEtmM9LBh3BzK0gpbfcXFib6g78A3FJTH+Bn
	 Nom/y/2Yrc8VO54kNo9wqN6/XKfRnT6FcygT9AUK37wDAX6hyka5OiFpiey7IC6pYT
	 wTjX0Wmt78Lkv8pAT7S5hMWYnsMQEdKSsD1aaxKieNe5MyHV2OqOXJ/b5WAVdb5GYf
	 4k6xS+EzTYhFJdBSeGDrrDWlbBJTAzobt3oA2zk0aGrs0ggAxlvOSqAemidBQqosKN
	 +VA4um+iB6w3g==
Date: Fri, 4 Aug 2023 06:31:07 +0000
To: usrp-users@lists.ettus.com
From: evan.laurans2@imt-atlantique.fr
Message-ID: <A5XZkcQHHdIvJR4cFuieifnab0IEmr9pp2Iw2GM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3d1a03c5-bcc9-58b0-8888-49df4bb29215@gmail.com
MIME-Version: 1.0
Message-ID-Hash: UAQC6UUV6F6UHKAMDBO74UU34KWBCPJ5
X-Message-ID-Hash: UAQC6UUV6F6UHKAMDBO74UU34KWBCPJ5
X-MailFrom: evan.laurans2@imt-atlantique.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to have 10MHz on REF OUT with a master clock of 184.32 MHz
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UAQC6UUV6F6UHKAMDBO74UU34KWBCPJ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3163561213551587846=="

This is a multi-part message in MIME format.

--===============3163561213551587846==
Content-Type: multipart/alternative;
 boundary="b1_A5XZkcQHHdIvJR4cFuieifnab0IEmr9pp2Iw2GM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_A5XZkcQHHdIvJR4cFuieifnab0IEmr9pp2Iw2GM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> > The REF OUT support on X310 has never been a top priority for the dev=
 team, and I suspect that this is a shortcoming in the =C2=A0 FPGA.=C2=A0=
 I've put in a query into Ettus R&D, but it might be a day or two until I=
 get an answer.

Thank you for your reply, I await your return.

> Are you using REF IN as well?

No I don=E2=80=99t use REF IN but it may be my solution for the moment.

--b1_A5XZkcQHHdIvJR4cFuieifnab0IEmr9pp2Iw2GM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<blockquote><blockquote><p>The REF OUT support on X310 has never been a t=
op priority for the dev team, and I suspect that this is a shortcoming in=
 the &nbsp; FPGA.&nbsp; I've put in a query into Ettus R&amp;D, but it mi=
ght be a day or two until I get an answer.</p></blockquote></blockquote><=
p>Thank you for your reply, I await your return.</p><blockquote><p>Are yo=
u using REF IN as well?</p></blockquote><p>No I don=E2=80=99t use REF IN =
but it may be my solution for the moment.</p>


--b1_A5XZkcQHHdIvJR4cFuieifnab0IEmr9pp2Iw2GM--

--===============3163561213551587846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3163561213551587846==--
