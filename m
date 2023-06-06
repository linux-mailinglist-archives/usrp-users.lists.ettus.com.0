Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83925724E6C
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jun 2023 23:03:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2A43E380D15
	for <lists+usrp-users@lfdr.de>; Tue,  6 Jun 2023 17:03:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686085422; bh=FMhFL2eHbQBk3itKbPCn9OTtjOoh7N7DDL/zhyB1IZE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=SUsz/lWFZkNngrHygX+RuWeMVx3kcSNL8jC7TzdJMCq9YHcSOu5mDBk6kL/OSzbyL
	 HZHo16b8TzVecATSrN2O+2BdG8zSL00Z/dWtbFN9lVKnoSHfl/rze3KHv34GurTPxe
	 ViKERlEcSU+EBUwEnoDzKoqatlZUlKWupBpRhr3CslTJKiUiAWUGq+eYimXdL1wJQp
	 9UEzlT42Ow86ZETmYlucnHt7PrRm8CjL5FKnNfSYbod3Tr1dCbp4xKuOujN65f6EK9
	 51jrZLZv3N9s2xCcYytZmBDhgkHRmDARiAo0l43CqHN/m1tbGV94doBe42Aq0VPciZ
	 9oY+pR6aLm50w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFE3C380BB2
	for <usrp-users@lists.ettus.com>; Tue,  6 Jun 2023 17:02:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686085359; bh=Jgj0cNZ1+y91lU+8SRWrxeqdL9vTbuspj96in4bsZ+8=;
	h=Date:To:From:Subject:From;
	b=ZA7JlVSIK3zGXJCR+1VARd3Ons44XzwVc2GQ8bjK5CjMX1iKudW/DbmPv7DOPOAfr
	 eTBgx1AVeruJxjaBC09oSoi8ttYqY5bcs80zUSVhhGugqY/xag8Wxw96gQl4iNyb3r
	 lTJIwkzbvayOa9eZjO9Fy/8C7ZrxwG3SZ6kQZzGtrLduf6bR3NDjtKddK11cJ/R4l1
	 OJASP+eU4EAxh8LAENnllYvikv513oMStyF7tGu2b2M2CiZdTDnNcYWByYColXN+9W
	 xgh0xUSPN9z+QJw+nKvg0iPXFId3xv9EdHapQfb9nsx4VWA8fyLVqWZY5Le6sREPZs
	 MJmzMQBV1uZRA==
Date: Tue, 6 Jun 2023 21:02:39 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <8DpT0mSkfhgpS7kGA88W5nswj9kP9mAqMIsbDdqx0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 2ZIGLLYTP2GY5BUAIMCOQCIKMD24UAIC
X-Message-ID-Hash: 2ZIGLLYTP2GY5BUAIMCOQCIKMD24UAIC
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ZIGLLYTP2GY5BUAIMCOQCIKMD24UAIC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2627053811728737796=="

This is a multi-part message in MIME format.

--===============2627053811728737796==
Content-Type: multipart/alternative;
 boundary="b1_8DpT0mSkfhgpS7kGA88W5nswj9kP9mAqMIsbDdqx0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8DpT0mSkfhgpS7kGA88W5nswj9kP9mAqMIsbDdqx0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently running a custom image, however, I am having trouble trans=
mitting data from the replay block to the TX antenna.

When I created my project, I used a similar RFNOC structure to the one fo=
und in =E2=80=9Cx410_400_128_rfnoc_image.yml=E2=80=9D - I use the same co=
nnections for my radio blocks and replay blocks, and I do not have static=
 connections.

However, the generated image does not seem to work with transmit. I don=E2=
=80=99t get any warnings, but the red light next to the port does not tur=
n on either, nor does any voltage come out. RX works just fine.

I am wondering if anyone else has come across this issue or if anyone kno=
ws how to debug this.

Thanks

Joe

--b1_8DpT0mSkfhgpS7kGA88W5nswj9kP9mAqMIsbDdqx0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently running a custom image, however, I am havi=
ng trouble transmitting data from the replay block to the TX antenna.</p>=
<p>When I created my project, I used a similar RFNOC structure to the one=
 found in =E2=80=9Cx410_400_128_rfnoc_image.yml=E2=80=9D - I use the same=
 connections for my radio blocks and replay blocks, and I do not have sta=
tic connections.</p><p>However, the generated image does not seem to work=
 with transmit. I don=E2=80=99t get any warnings, but the red light next =
to the port does not turn on either, nor does any voltage come out. RX wo=
rks just fine.</p><p>I am wondering if anyone else has come across this i=
ssue or if anyone knows how to debug this.</p><p>Thanks</p><p>Joe</p>


--b1_8DpT0mSkfhgpS7kGA88W5nswj9kP9mAqMIsbDdqx0--

--===============2627053811728737796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2627053811728737796==--
