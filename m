Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C86F5742E36
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 22:19:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E52DA3844E1
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 16:19:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688069950; bh=LKpkYTwfHxdO47eHKUMDXS5WD8lC7Cek/D4I4/9DN9M=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=i5t61smoe4BEd6UPNcWa09fDRmzy7QHG4D+PD+s9CRir5nCVJxwYFa0YFKANn1SVC
	 XIAr/+HeSZXKIokPWFUOb7rVEdA54FTlZhCcewbtiiSfhxIw3hiF0+wEE47fkVdffB
	 VgJhFD7JetlbENzuLr0bjkEe2XcGz5gwXe37g0xycAJjIOOzUy9zkNi0wUA/obNPZ4
	 wYhqrGiTZlZ7+JM5bn1GQfvCHQyxFhnuzgDW2qD1soi45hQ8HmkKKMDYwlmLBuOyQ2
	 1d45YdJotPSmlda5X3Aj4MnQqpji6nPbBiGsOtbzCKCvtMx0I9r8mfyqe0f/FastS3
	 G3fwJTh3vTvUg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D4903812B6
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 16:18:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688069927; bh=TcfWTNiUIVSEaVnImfy9zlWjmSIHRIicW2A07cz1sCc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=eEG6EVogjlny55q9MvYO6UVxfaYuoKtGa2KsjXEmBGIw62As/GwdICEnhUoBed91j
	 XvgsOsVtMCEGFuudGZVsV5rfHBEAud3e8b6Pe97DRpIJILQv+6Hc7I2TY9cTnVCfI7
	 HJDPWXvBSmlAXsCbsBmF1GgR1reVWpxrJHFk2OHrJqyI7iUx6YdCLtgSANL4p4R7+x
	 RT3RPp01QOglJZ2SKKlBNEIFTa8lW0b7SPaOutJ54rHd2ZunZPoCifVgDzTsEcufuB
	 WXQEcfv2NO94BS2u3RlTGEjyuVS1sN1q3oflTa/M7J4m0wwzhp0SPWOsguXHUnlfI1
	 wz2lt23MgqggQ==
Date: Thu, 29 Jun 2023 20:18:47 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <yWkIOim7njZWvZZ02ts9PFNBQXSzHX1NCts4PVwY1Pg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: aSZl5NarNEbxkbDR5xrauRGqLQSjfHNZdf1CgjIZxAk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: JDJQ7A57IGNS3JBT4JNPABYUBQ2GZEFE
X-Message-ID-Hash: JDJQ7A57IGNS3JBT4JNPABYUBQ2GZEFE
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Host hardware specification for USRP X410/X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JDJQ7A57IGNS3JBT4JNPABYUBQ2GZEFE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4487559585184568713=="

This is a multi-part message in MIME format.

--===============4487559585184568713==
Content-Type: multipart/alternative;
 boundary="b1_yWkIOim7njZWvZZ02ts9PFNBQXSzHX1NCts4PVwY1Pg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yWkIOim7njZWvZZ02ts9PFNBQXSzHX1NCts4PVwY1Pg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Helo,

The most compact system that I use for recording with device similar to U=
SRP X410 (X411 based on ZCU111 eval board) is Dream Machines RX3080 lapto=
p that has 8 core desktop CPU: 11th Gen Intel(R) Core(TM) i7-11700K. The =
laptop has 64GB of RAM. As a network adapter I=E2=80=99m using Intel netw=
ork adapter that is connected to Thunderbolt port (Intel Corporation 8259=
9ES 10-Gigabit SFI/SFP+). On side of the PC there is UHD with DPDK and cu=
stom C++ program that does the recording. This system can stream 256MS/s =
to NVME drive.

Best Regards,\
Piotr Krysik

--b1_yWkIOim7njZWvZZ02ts9PFNBQXSzHX1NCts4PVwY1Pg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Helo,</p><p>The most compact system that I use for recording with devi=
ce similar to USRP X410 (X411 based on ZCU111 eval board) is Dream Machin=
es RX3080 laptop that has 8 core desktop CPU: 11th Gen Intel(R) Core(TM) =
i7-11700K. The laptop has 64GB of RAM. As a network adapter I=E2=80=99m u=
sing Intel network adapter that is connected to Thunderbolt port (Intel C=
orporation 82599ES 10-Gigabit SFI/SFP+). On side of the PC there is UHD w=
ith DPDK and custom C++ program that does the recording. This system can =
stream 256MS/s to NVME drive.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_yWkIOim7njZWvZZ02ts9PFNBQXSzHX1NCts4PVwY1Pg--

--===============4487559585184568713==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4487559585184568713==--
