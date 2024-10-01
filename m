Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B7398B811
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 11:13:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84FB3383FC4
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 05:13:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727774012; bh=fy8KdW10ksmhnXhNGwNE/Z3WWGQfYQ8UpK4nWaH5ZmI=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Nb7T++6qD2TLgiLOhdrJh+h7IT1f5p2IAo5/nngMi+GhBrzgAV1cj0b17ToX9oSRa
	 Rv0j+OqgvrI6dyALAokp1uV2vN2R/9KyfZQYgj8QH90aGFYNbvtWwr4toIPzXGT9dz
	 tuJLvIal640Eup1W9snPDV753kfM3gimxfTe292dyXHAX9aZ39dSIOe14pkkd0SkqL
	 X33v7y59ZQu/1rCPRS8GJy26kXq2KAicD2bXeVRCXD3xGJJPT/MauJ0Czqw2cHw5z/
	 lVrIokK29z7mhOOgjFRxdVgqczAu3OQrMZjN0Ki1zypWX442EpE9SM02PkIRieMdgl
	 jRq3cM9nLKsdA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D65E3380936
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 05:13:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727774007; bh=/ZqSVNsTNIoK+djh0JOKGpdkXen0oQJyF9YTcnKbMNA=;
	h=Date:To:From:Subject:From;
	b=MYpSTVJ6ylwCMoUToQGzjqZVX+bjX3NOFQ9AhTCcmvYXwNyz58RXQcmedBfGcyfoT
	 dtzm2pkBnZZTDSdi2cJNEIgEVXpRfVvCI25O3T269il0gvn9VOpUEZolE7xWBiOJPW
	 exV/v8Bf98TBWaFe/jLZeU8NaV8I/hthRc9/AUniBhAYHjneBNj/oWz4ItTPn9ywL2
	 6iiuj5wLs7IjD91Ug8a9K1Y1iGj3e4c0D5reuRxcU1Y9fxG4lzAGcjNVS2Ded9EwJP
	 CnhokkgrDzfp/6ANN9y7auAoqoPeveEkDbJJ3akt5zHEz6BUMKzNsO9KRycsfey4xg
	 P2BwbYxcOiMYw==
Date: Tue, 1 Oct 2024 09:13:27 +0000
To: usrp-users@lists.ettus.com
From: cyberphox@gmail.com
Message-ID: <OIwxnOhsDmXDO3NJd5rbRXz9CJLZ228l7bPGUCxd0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: WSDMPVX3SPHBPQW4AGIN4DD4ZMYHVKUX
X-Message-ID-Hash: WSDMPVX3SPHBPQW4AGIN4DD4ZMYHVKUX
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP-2974 FPGA core temperature
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WSDMPVX3SPHBPQW4AGIN4DD4ZMYHVKUX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7989768815074170186=="

This is a multi-part message in MIME format.

--===============7989768815074170186==
Content-Type: multipart/alternative;
 boundary="b1_OIwxnOhsDmXDO3NJd5rbRXz9CJLZ228l7bPGUCxd0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_OIwxnOhsDmXDO3NJd5rbRXz9CJLZ228l7bPGUCxd0
Content-Type: text/plain; charset=us-ascii

Hi Ettus Team

I have a couple of USRP-2974 that have a higher than normally seen FPGA core temp.  Normally I see around 58-60C something like that. But on two units I get around 70-75C.  The max temp is 85C for the FPGA, so getting close.    In all cases, the units are at a room temperature, loaded with the same FPGA bitfiles and running similar functions.

Is this a normal spread or are they outliers? Perhaps the thermal tape or paste is not doing so well.

We currently have a warning threshold set at 70C, may be this is too pedantic. 

Thank you for your help.

Regards

Marino

--b1_OIwxnOhsDmXDO3NJd5rbRXz9CJLZ228l7bPGUCxd0
Content-Type: text/html; charset=us-ascii

<p>Hi Ettus Team</p><p>I have a couple of USRP-2974 that have a higher than normally seen FPGA core temp.  Normally I see around 58-60C something like that. But on two units I get around 70-75C.  The max temp is 85C for the FPGA, so getting close.    In all cases, the units are at a room temperature, loaded with the same FPGA bitfiles and running similar functions.</p><p>Is this a normal spread or are they outliers? Perhaps the thermal tape or paste is not doing so well.</p><p>We currently have a warning threshold set at 70C, may be this is too pedantic. </p><p>Thank you for your help.</p><p>Regards</p><p>Marino</p><p><br></p><p><br></p>


--b1_OIwxnOhsDmXDO3NJd5rbRXz9CJLZ228l7bPGUCxd0--

--===============7989768815074170186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7989768815074170186==--
