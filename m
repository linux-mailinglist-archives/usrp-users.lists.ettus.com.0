Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C42600DFE
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 13:44:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 007393800A2
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 07:44:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666007094; bh=icUMUPrmc3k4wyXdKang56Y/hrwc+NAL5NkMBUFJLm8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ibAtm3SXfcsXxf5wxJI2vUc4mxxotY0WCa4kOL3ptfxb8RjiMXlZlD278E+S+Ltsc
	 WqfwfpSJRDNwAH23AP9D/Xcq3vitL+nc74hwmQfFnVUeMIH23Lx9qmR1nikHBbP/G7
	 no2/jtgEv7r809L1KomdCRSLQyhTLij2izB8LZYoWhXv3xbKt6k9QOMcaNM8WymaOW
	 uPT5Na/EF2lF0bPziNXOcH29y823sV1vLONTuYqUnQ7/j+xxst+JYKSU3W4joaG1Cn
	 1ghqCJP4OVh7PIlj+KZg77I8X8GYTQGZURtxv0FLV2HYV5879WNawXXbqGEhVB7Exj
	 7CD58eC2y9yVQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97057383B5D
	for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 07:44:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666007042; bh=k8qsbP42NqyzgIpEHleMevllGPGZXsRT2LDMZ1TEcEo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=AJwMshwn9qGenVskm9EI2FlTtEEIbN9e1hp/TarbMhPcNTC4+rb5D0y8eyJbNtPEG
	 27tQUm8GlO6wEHX71CFibdqCzq420W/g2mC02aqq7Yze8HQrIc8o9NZKy2aN2kl1Xg
	 2neyN9c98J3VGKyhGpvYy3kDQgDNhOL0EWhquKoVv+RtgUfHedEQaUoOvu11nMWn3H
	 v3JQo2ml3z4wAjx9gO8f7gWrr8if7e7bssQP/IB3LttklBEfwSiprNo3yod/ht/onZ
	 m7UJ0rv1pgOE3hhPjR4p7tzdrAtUBRhcfimSbgmlxVyj2vsuhtMvexoB89dpL7eZro
	 9Q37iHf+bRGtA==
Date: Mon, 17 Oct 2022 11:44:02 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <z0C7QdxlGLcMHumVuPKk2DgpGnzXbaMBQCvgkVSMqtk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAA7+tqS8E1owkG2hUvd0mDsW0p2V0aDY4a3b=KdjAw1_2xZJGA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YUYPP2AGS7SR2BKHCZVPA3JIVXJRLKXE
X-Message-ID-Hash: YUYPP2AGS7SR2BKHCZVPA3JIVXJRLKXE
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD+DPDK - some of the old and new quirks during installation and configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YUYPP2AGS7SR2BKHCZVPA3JIVXJRLKXE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9178930357503322241=="

This is a multi-part message in MIME format.

--===============9178930357503322241==
Content-Type: multipart/alternative;
 boundary="b1_z0C7QdxlGLcMHumVuPKk2DgpGnzXbaMBQCvgkVSMqtk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_z0C7QdxlGLcMHumVuPKk2DgpGnzXbaMBQCvgkVSMqtk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Berkay,

I tried it with signal recorder. I remember that without additional effor=
t the result was very disappointing.

I needed to assign blocks (with use of function *set_processor_affinity)*=
 to CPU cores other than the ones used for DPDK. Then it started to work =
better than without DPDK.

I haven=E2=80=99t tested this GNU Radio based recorder with DPDK recently=
. Currently I=E2=80=99m using a custom C++ program that can write constan=
t stream of 245.76MS/s from X411 (my name for ZCU111 using ported X410 co=
de) to an NVME based SSD without interruptions.

Best Regards,\
Piotr Krysik

--b1_z0C7QdxlGLcMHumVuPKk2DgpGnzXbaMBQCvgkVSMqtk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello Berkay,</p><p>I tried it with signal recorder. I remember that w=
ithout additional effort the result was very disappointing.</p><p>I neede=
d to assign blocks (with use of function <em>set_processor_affinity)</em>=
 to CPU cores<em> </em>other than the ones used for DPDK. Then it started=
 to work better than without DPDK.</p><p>I haven=E2=80=99t tested this GN=
U Radio based recorder with DPDK recently. Currently I=E2=80=99m using a =
custom C++ program that can write constant stream of 245.76MS/s from X411=
 (my name for ZCU111 using ported X410 code) to an NVME based SSD without=
 interruptions.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_z0C7QdxlGLcMHumVuPKk2DgpGnzXbaMBQCvgkVSMqtk--

--===============9178930357503322241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9178930357503322241==--
