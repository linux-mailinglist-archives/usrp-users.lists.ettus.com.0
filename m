Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53962A357AF
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2025 08:14:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 56940385DBB
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2025 02:14:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739517262; bh=smgDfqw1UQO3faqjuTzim7WNhDY65Pnhn/Nr9UP0gVs=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=BWz7+6QzSJ2PZCJqS9E64Iytk8foNn3QLjRG6gdiwZrsCskXBiXP8kS3VRFGaHe+b
	 I6Vb6FKLXN6Cuh6gg5xhKWCiRXaeVNQr5rhox0Sb7+TU3FQWhKKe1pbF+dgmwGvPWg
	 cdso1Ap3wO6XT7j0BewukdoSMb9Vn+KAf1Cp1LAQshCQ6CGE8GwTUMlWwtW+JI59M/
	 VL4UKg9wiCEHSSeAsWrbFqUZkg9buYAupMvdrTvk3PVGJ4EX2EO+JaEisqr4tNhama
	 G1B/BnZ9YeiiqTfiwmgatiSdUgdLOd5BEBnw1SMtXRop/FLNds0wlBeKAB3wqqbZ5G
	 pKXAZzsDfus7Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C4563385C48
	for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2025 02:13:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739517216; bh=5k0BzlDijQ9BS/PD6QWwnPds6v1G7z9O5060aRoAFCE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=VLezkh2AL9dnlknZsO27mH4WH19GS5OHSeyPbfuyIxR1hKyk8iQJxq2+KwI8qb/4r
	 WAqgxoOrEkpsQozcwI8IIF/pVvJ6UT1h+yQdTdAxpgJjyDifr6X+kbKMSUyn69hb7e
	 EuHbR8PBDLib8NfieJiphRiKi2AtTU9azoIbP7EkloUH+J9JyoKYbDRRC1RiG9279t
	 IAzQ/w18LYBoHtKvnbwTx/X3dXxRe0ls8SoS+kShGwLftCUozIZE+BRXQA2jvbuiHT
	 migYrlotWkuHnbHVVyG8J6q8vb8R55sm8Wt6FKNa1zEkCXMvOTM3KFdwc8yju6Rm8p
	 ywSjgTxczxuQg==
Date: Fri, 14 Feb 2025 07:13:36 +0000
To: usrp-users@lists.ettus.com
Message-ID: <FDTrRNxbTm47npzk0fHYOTcayhuiKC1GzrqOmIsL25A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: j3sSdw4i4MYWjBkne9fCIr3I21OA4IvuSeD9FjaZ1G4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: ING4CC74NDIUF4R6IA3EDPBDQ7FSYR3D
X-Message-ID-Hash: ING4CC74NDIUF4R6IA3EDPBDQ7FSYR3D
X-MailFrom: joerg.hofrichter@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Build custom fpga image for x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ING4CC74NDIUF4R6IA3EDPBDQ7FSYR3D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "joerg.hofrichter--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: joerg.hofrichter@emerson.com
Content-Type: multipart/mixed; boundary="===============3198605758370977440=="

This is a multi-part message in MIME format.

--===============3198605758370977440==
Content-Type: multipart/alternative;
 boundary="b1_FDTrRNxbTm47npzk0fHYOTcayhuiKC1GzrqOmIsL25A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_FDTrRNxbTm47npzk0fHYOTcayhuiKC1GzrqOmIsL25A
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

the correct value for the --target parameter when building for x410 is =E2=
=80=9CX410=E2=80=9D:

```
$ rfnoc_image_builder -y x410_CG_400_rfnoc_image_core.yml --target X410 -=
-vivado-path /opt/tools/Xilinx/Vivado/
```

However, the image core file already includes the default target value, t=
his means it is sufficient if you run:

```
$ rfnoc_image_builder -y x410_CG_400_rfnoc_image_core.yml --vivado-path /=
opt/tools/Xilinx/Vivado/
```

--b1_FDTrRNxbTm47npzk0fHYOTcayhuiKC1GzrqOmIsL25A
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>the correct value for the --target parameter when building f=
or x410 is =E2=80=9CX410=E2=80=9D:</p><pre><code>$ rfnoc_image_builder -y=
 x410_CG_400_rfnoc_image_core.yml --target X410 --vivado-path /opt/tools/=
Xilinx/Vivado/
<br></code></pre><p>However, the image core file already includes the def=
ault target value, this means it is sufficient if you run:</p><pre><code>=
$ rfnoc_image_builder -y x410_CG_400_rfnoc_image_core.yml --vivado-path /=
opt/tools/Xilinx/Vivado/</code></pre><p><br></p>


--b1_FDTrRNxbTm47npzk0fHYOTcayhuiKC1GzrqOmIsL25A--

--===============3198605758370977440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3198605758370977440==--
