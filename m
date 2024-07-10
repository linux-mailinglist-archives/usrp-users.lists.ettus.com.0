Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1252492CEE4
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jul 2024 12:14:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D02DA38465D
	for <lists+usrp-users@lfdr.de>; Wed, 10 Jul 2024 06:14:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720606449; bh=IEqRdLsu8ed+3SxHKaeSN/M3C5yVE6UxE5hKS+a2bFc=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=chGOJkr8sWLquVXHy5VFHyvYi0pNEMMiv1pJiEW9sa3Sq+xidLlYzUNoVuRNjJkQN
	 qkhbEjTd95SNooJf6xffHvX1h/ff4tV/Q2dbUuaE4QPTxeKuHPinYxnCHuUEk8UpTH
	 pDr55NhnCnNstncjYJBjcKAFZmkkUKjC995lky16VUTjqOkN0h4Xfgl1qDChcW4XmU
	 4eGQAv62iSx3E+SHWy+wJocAXdFFgL68g+mVvIpF67Zq/U6hxiJmgOiRrFvp9q77tQ
	 H9YErdOCx26zW+DQmRzkIJ901R1imynuVucVS7Js2bO0VFM7poLD0qY2vtjWSYDpnU
	 NAAub9xbctPBA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AC425383892
	for <usrp-users@lists.ettus.com>; Wed, 10 Jul 2024 06:13:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1720606420; bh=+2XjEWt2nkL43vPN60W2clv0XGW7LZsS/XggAY/wndk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=P+HGl/bCEIcR52KBgThFKAGe+ti0OpsNtiZwSpPMZy4SRTQFsFpo/ldEBBYn0SQH4
	 EeEt991ebVS6Yx6TXOUhpfhsa4/CbQC3WCDzhV6h6SdgidUtzfUesWWSwKidjBdPf5
	 Wy7pn8JlLewcm0Og6YWb7EpGJ/QT5p5pexh9rvcs9ZhfhIzl1qR+Iq7L6iPdaCsWUu
	 48AhhrHeikNF0DnA/Q5+IdMaHcOlrI/exqUkVolsbUWVH0zDJg8RJZDrTSumJp6vVg
	 8cajec49rn0lpoY7tn2FdgIwwZ8ivFZZhltee04733+cExyTfzpTCq6oK+C5kaZd47
	 25Gn24c7gzymg==
Date: Wed, 10 Jul 2024 10:13:40 +0000
To: usrp-users@lists.ettus.com
Message-ID: <EiOE9ZEApGgvYrBneC1cdyeMR2Xg7zFFFyZz9Ig3P8Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A55ptFUQ3ym=m31=0-65DQCa0LafW=n9z5UiuE92LU60g@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: J2GHZQSB7DDRGO4XMOPX7535EQ4ZLZCE
X-Message-ID-Hash: J2GHZQSB7DDRGO4XMOPX7535EQ4ZLZCE
X-MailFrom: hiroki_iwata@ieee.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: device tree and GPIO pin for x4xx
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J2GHZQSB7DDRGO4XMOPX7535EQ4ZLZCE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: hiroki_iwata--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hiroki_iwata@ieee.org
Content-Type: multipart/mixed; boundary="===============6250651019803672164=="

This is a multi-part message in MIME format.

--===============6250651019803672164==
Content-Type: multipart/alternative;
 boundary="b1_EiOE9ZEApGgvYrBneC1cdyeMR2Xg7zFFFyZz9Ig3P8Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EiOE9ZEApGgvYrBneC1cdyeMR2Xg7zFFFyZz9Ig3P8Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Martin,

Thank you so much your reply.

I checked the dts file for FPGA side as you saied. But, I still cannot id=
entify the GPIO pin named =E2=80=9CRFDC_POWERD=E2=80=9C.

Finally, I found it in ec-titanium-rev7.bin file.=20

Thanks a lot.

BR,

Hiroki

--b1_EiOE9ZEApGgvYrBneC1cdyeMR2Xg7zFFFyZz9Ig3P8Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Martin,</p><p><br></p><p>Thank you so much your reply.</p><p>I ch=
ecked the dts file for FPGA side as you saied. But, I still cannot identi=
fy the GPIO pin named =E2=80=9CRFDC_POWERD=E2=80=9C.</p><p>Finally, I fou=
nd it in ec-titanium-rev7.bin file. </p><p>Thanks a lot.</p><p><br></p><p=
>BR,</p><p>Hiroki</p><p><br></p>


--b1_EiOE9ZEApGgvYrBneC1cdyeMR2Xg7zFFFyZz9Ig3P8Q--

--===============6250651019803672164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6250651019803672164==--
