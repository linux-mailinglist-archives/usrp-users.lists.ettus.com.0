Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE846EE3D7
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 16:23:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E4B4238484F
	for <lists+usrp-users@lfdr.de>; Tue, 25 Apr 2023 10:23:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682432618; bh=qxpQbvOOX4oQbIsAk4Bd9noe7PPC8GVMOw1gfkRjy5E=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=kv8uXJCwnjxm1uItX4Ps/SnFpCsesLUosMfZrhZSYEr2jHnCXL88UpRpO5nrakEZN
	 qmrlDn+ENZFoS0cLQWHgG0lWOppvqUPNSsUrwjfxvlrAPcLuqL1ylbN/7l8sCu7UrF
	 aOR9vGPdsA7PEirQpPExFXM1O48bKixc+zGpfaaG8vbBfiVS2av8ffn9aogpjKtybg
	 TuVTuIrD364cdexp13jrtQgx0OSY7fYYsLb02BI0eD6L3M+Vrnq/HHy1/U/Cq4UEdB
	 /wxXuvS33d4iVgn1TvAbn2fQRR10yffHBvjmaeyKZaXh5eLtCYDSd3IeGKSHxlan7C
	 zmxzCnzm5sjQA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDD94384821
	for <usrp-users@lists.ettus.com>; Tue, 25 Apr 2023 10:22:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682432577; bh=/c769XcqzpNkaA9oN1iLthqkW5TQhg7KsjDuVnoGKAo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=YDfRltNKJhjYhF1UeHm8zb42uwJ4YDaROSQeunZin4rovoOxPKOSW1vGP22bhp8sq
	 tqeXVrWm+PpeFqL7p2YMIgn4FI3KlR8uD8hQlg+6Hfh7gn3Pm5Fj18M5M3DteDa1Eo
	 UY6+MdXVSK961V6oO0gPU/lRCf3W8SN5tZgGZxELir3aOBpde+po1nSBGjLwmGYV6c
	 k28FRiz6Sgrtb0eB9TIoB4ziJ2t4fW+QUSKOJVWnJxFL5KttJx3x185Azp7WLX633P
	 FabOuUuyO/QU9S5aur2P5cAqPmFYpIKQhQhyAp2BHULblDlmHZiV6rntVHur/+vFIy
	 3oPeLl2/RT5jg==
Date: Tue, 25 Apr 2023 14:22:56 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 1e958c37-f136-f933-fe9b-ed015b7527f8@gmail.com
MIME-Version: 1.0
Message-ID-Hash: AR2ATQRSQZ7FOEYXHCZZTM5DMUA737YV
X-Message-ID-Hash: AR2ATQRSQZ7FOEYXHCZZTM5DMUA737YV
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AR2ATQRSQZ7FOEYXHCZZTM5DMUA737YV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5980754239065417248=="

This is a multi-part message in MIME format.

--===============5980754239065417248==
Content-Type: multipart/alternative;
 boundary="b1_tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I almost follow the link to tune all the parameters setting except instal=
ling DPDK, but for more than 20M sample rate I see =E2=80=9CU=E2=80=9D un=
derflow. Is it normal? can it been solved to achieve more than 20M sample=
 rate without installing DPDK? thank you.

--b1_tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I almost follow the link to tune all the parameters setting =
except installing DPDK, but for more than 20M sample rate I see =E2=80=9C=
U=E2=80=9D underflow. Is it normal? can it been solved to achieve more th=
an 20M sample rate without installing DPDK? thank you.</p>


--b1_tRSG1KVOqqD5tsKb7mlmloONWhmcMMejFMckVGTM--

--===============5980754239065417248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5980754239065417248==--
