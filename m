Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2B06D6C62
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 20:38:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69BEF384776
	for <lists+usrp-users@lfdr.de>; Tue,  4 Apr 2023 14:38:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680633531; bh=S/8XaYNovmXZgSQUIKK+OJH1KVqZaXFtRfzK0nIVK5c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=CgwPF1UJOTAQYFnZFg6HldNd+1Y5AU+uEL/kztQbLsFj6tbIWh/Yd8Dtw40Fz2Y/Z
	 v0i29hpiLXdSxcjWIZwZaRUszK5eh1G7NVqJwy9WAKjfp3HfimyuOZ9Dal2K5ljZcL
	 m54pGn3kTB0EZUrCbFhdZS8PJ5iqKyLoBcrc2qP9lIcr0D+uS2+Q9wWcUXopuYos1R
	 ib6uNeIgoyOLuSQCsNsc4xxslqSgHZryGn93f0Vk+HKUhRQTIw/kOCVJVXi/pogWKg
	 QVbmPTvpJ3Dj3BGMH30GnOkW5bTyGku3ysNYCdluAuGJb7valCr+Au7ZTKvyHBe+n/
	 jicjRXU9rOt8g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9376C384776
	for <usrp-users@lists.ettus.com>; Tue,  4 Apr 2023 14:38:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680633527; bh=n8oGOWZxohdKNnMrbVsFeZnIu9dOgjjqeQflV2v5HyM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Ua7Hak5/ildCJt/CMU2ibxdAGlOwD4w306lV+MMBxjyTUs+l1jvyPwdJCdBEXFQco
	 6OI7DNQxRSR8bddO3a8cV+8O5mbgaPXS5Y8R1nRLKFwp1LewSVBQX2FHuHD+Lb4L9W
	 hW0qAa0oxrW8jTYORIOtLGqhN7LduCFyicfMJrmt0aoCnUNtcU6r1HsGv/c2UTf35F
	 qnCpgCxmxEubAouplrnALAkdV8n748cQOjkwJtwfrpu4MiLbfRkbQtxDPhngj6987d
	 5ifuV8HEejuGjSzMhh0McE+aGE+oMfdmdlqadcnUXY/2+TgXjf4rNCcicoAblaQJZR
	 BslkhoLwpKInw==
Date: Tue, 4 Apr 2023 18:38:47 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <QXmf97jb5MYA5TV9F6D7vtLLQoVUqrqFvtkMl8ITnY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTTgHDAxzmP59jM9+iMmvCN60HrNF4WOfbW4_x5mMvzx_g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: CCQYDZ4LHTW2JNYTYSNMNR5VKVOQV4U7
X-Message-ID-Hash: CCQYDZ4LHTW2JNYTYSNMNR5VKVOQV4U7
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CCQYDZ4LHTW2JNYTYSNMNR5VKVOQV4U7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4706001025843890815=="

This is a multi-part message in MIME format.

--===============4706001025843890815==
Content-Type: multipart/alternative;
 boundary="b1_QXmf97jb5MYA5TV9F6D7vtLLQoVUqrqFvtkMl8ITnY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QXmf97jb5MYA5TV9F6D7vtLLQoVUqrqFvtkMl8ITnY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Rob,=20

In USRP-X410 I can load X4_200 FPGA image to set QSFP28 port 0 interface =
to 4\*10G, and as you said I need to set XL710-NIC similarly with some ut=
ility tools. Does that mean I do not need any extra adaptor between them =
for rate/protocol match.

please correct me for the following step:

1- then for connection between USRP-X410 and XL710-NIC in such 4\*10G con=
figuration, does this cable works:

=C2=A040G QSFP+ DAC Cable - 40GBASE-CR4 Passive Direct Attach Copper Twin=
ax QSFP Cable (from 10Gtek)

2- Do I need other settings in USRP-X410 or XL710-NIC sides to establish =
communication links.

3- I assume I may need also install DPDK later.

Thank you for support.

--b1_QXmf97jb5MYA5TV9F6D7vtLLQoVUqrqFvtkMl8ITnY
Content-Type: text/html; charset=us-ascii

<p>Thank you Rob, </p><p>In USRP-X410 I can load X4_200 FPGA image to set QSFP28 port 0 interface to 4*10G, and as you said I need to set XL710-NIC similarly with some utility tools. Does that mean I do not need any extra adaptor between them for rate/protocol match.</p><p>please correct me for the following step:</p><p>1- then for connection between USRP-X410 and XL710-NIC in such 4*10G configuration, does this cable works:</p><p>&nbsp;40G QSFP+ DAC Cable - 40GBASE-CR4 Passive Direct Attach Copper Twinax QSFP Cable (from 10Gtek)</p><p>2- Do I need other settings in USRP-X410 or XL710-NIC sides to establish communication links.</p><p>3- I assume I may need also install DPDK later.</p><p>Thank you for support.</p>


--b1_QXmf97jb5MYA5TV9F6D7vtLLQoVUqrqFvtkMl8ITnY--

--===============4706001025843890815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4706001025843890815==--
