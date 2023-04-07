Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9A76DB11A
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 19:05:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 058D8384B65
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 13:05:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680887101; bh=5gyxZENejR/BXAdIfaoSDR/ta+Qq+se7VTldp1XnjDg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ilC2PRZTEM3Al2TITabahqxC9048yD9iXS8CcbXss4CA01br7eZ/ZCBgriT2D4cNa
	 /hLZABS09DUKyp1U5+in/y9Pno2tApAqLxKA9ZsJivTZCoPpjTgpDmlXa87DqDA4qq
	 lPCbsJIhHotrkK01QBIhrQFWfKSoyYA0RT6ZFGO2Paa7EvSxrcjvjYyk0RroKIi5CA
	 As68IU40scckSnvu1ER2cgXTe3wJJfSOvaZR5OcDrAUsTNZ5euVl1FtkvuU2cmqsVR
	 eB2/XB1Sw2s1fNDIKKSr+JaslyhAoQQ58U5UugN1L6MoZbFU5QABfP2HA11z9CxTAH
	 VcRBStc6wKvDg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21AF538492B
	for <usrp-users@lists.ettus.com>; Fri,  7 Apr 2023 13:04:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680887056; bh=/OqQDvM3ew9BY6sCzVfvjAgkTdjWmSzsHj3ePRBsEfo=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aPHxHVOzSE38cj911WTchhEoWIl21LPONVmL5GsRUg8unS+mv0U8LmK5GeSGxvlpW
	 DWZZNHbzqP+5F5Ubw9S+qnCQUa54tGnjwAjzdGgO6bIWzvC1wAJtOY6Wq78o00syIZ
	 ZuZf6ziD+G0VYtbva4uycbTghptS/YxEC0RApuYVC60z29dyJRsMEphAqrM0c6wRlz
	 yvvcx4us/n8+VYw/6XNyZfGVn04ofDwCs/UhPX0+sZZNbiSU9/FLhDzkYaW0t5qnpu
	 AVRx9SajOXKmMF5vJIY8diKkzIxxB28YHAwbffAxPc4dwDEz5Q4ADDnn20DxvK4eyv
	 W21V51dQ+mktg==
Date: Fri, 7 Apr 2023 17:04:16 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <2XCCblboMCnKLTrOONVoiMY1jV0KI4CnJzBaJ6Tx2A@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: FMlqmtwCjGKZzT09itvp44hBuRbnz51eUeJuP0TbVE4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: Q4OKSXQKSPNWE6XH33BV6R36RJMLTWUU
X-Message-ID-Hash: Q4OKSXQKSPNWE6XH33BV6R36RJMLTWUU
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Integrate USRP-X410 with XL710 intel PCIe NIC card through QSFP ports
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4OKSXQKSPNWE6XH33BV6R36RJMLTWUU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7843634447801390335=="

This is a multi-part message in MIME format.

--===============7843634447801390335==
Content-Type: multipart/alternative;
 boundary="b1_2XCCblboMCnKLTrOONVoiMY1jV0KI4CnJzBaJ6Tx2A"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2XCCblboMCnKLTrOONVoiMY1jV0KI4CnJzBaJ6Tx2A
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,=20

I tried to using =E2=80=9CIntel=C2=AE QSFP+ Configuration Utility=E2=80=9D=
 to configure XL710 NIC card from current 40GbE to 4\*10GbE. But as I men=
tioned earlier, because my card is not from intel directly, it is actuall=
y from one of OEM. So it does not support this functionality, here is the=
 error:

=E2=80=9CQSFP+ Configuration modification is not supported by this adapte=
r.=E2=80=9D

 I am going to return the NIC card and buy different one. Thank you.

--b1_2XCCblboMCnKLTrOONVoiMY1jV0KI4CnJzBaJ6Tx2A
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr, </p><p>I tried to using =E2=80=9CIntel=C2=AE QSFP+ Configura=
tion Utility=E2=80=9D to configure XL710 NIC card from current 40GbE to 4=
*10GbE. But as I mentioned earlier, because my card is not from intel dir=
ectly, it is actually from one of OEM. So it does not support this functi=
onality, here is the error:</p><p>=E2=80=9CQSFP+ Configuration modificati=
on is not supported by this adapter.=E2=80=9D</p><p> I am going to return=
 the NIC card and buy different one. Thank you.</p>


--b1_2XCCblboMCnKLTrOONVoiMY1jV0KI4CnJzBaJ6Tx2A--

--===============7843634447801390335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7843634447801390335==--
