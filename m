Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E358F7ADD2A
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 18:31:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFDCF381921
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 12:31:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695659510; bh=emqkV1PR18+k5uD5/1nxiZBT59y5VBr28WFwqMLce2c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Sq7+gzKqFHdhLODN/AyeKWIzIWIwgRVy1ZAacUXkWDgc75re7qisKMm7tY0g6yc6E
	 2bSMuK9j51Ti+s2Rnt5ARBnycd/bvb8WoK/5YBobdRYfS1ZyEIbx/lUP5XbU419Ea7
	 zD7/zbwGKSLkqLTO7miG5PghtXvJUlxBdknkWhnpgo3mpbiQgopaGRG48M6XCk6yNC
	 NZUTG0RRrogSGPtGcmHFSdMnztoqiv8Dvmr5tiU/gO/gCqcE1jCqwUkIjOzWEMRhr2
	 VKo5E5AzMUO4BVdQG0T+uqSZodBn5CDN01EV3Xfrhv+5qcWLNRkwMczPnxxRFJ6x+5
	 0eGvxsA6UpSzg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C1AF1380B40
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 12:31:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695659506; bh=CF2pClww9W0oqNuTDi/CaDQXsxi7paC4IRoHCqsBCTk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=n8zS7Dx2w0HNEdg+i0seYJcwAUfNoMDYvn54ub1waY8uSDzsR3aM1pxpjUN19pgX6
	 JlxSgmtxMJh5ca9LxaSuwEQVDRlE3Wib+cGCWSCFAbrAHpHUv4T9Fgn8148AGSSLzJ
	 RAcjAToImtiJMsW3TYiJ/sN0D6U9Bf3q6RmQe2l49V1Bi9YAj2Go1hqxq9S4B8Nhq2
	 ncb0qUxXCp64ArF7AxMLmSN9H7isBsuR4NXSFcWZttOSpEKGWfxDlqDd8UPjECJu8U
	 Sh7/UdzV+OKYSvNS8oxfU/lnugMgOzqLFnAoutknefZ7lKE7H7FVuE64/QbWT7ZHgR
	 Q/NnvPCZgKMRA==
Date: Mon, 25 Sep 2023 16:31:46 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <yxdWD9ahkop3CRAuU7V0LZVX7WfeNIh1fUuktT6tRE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 09ace49d-133f-b4c6-0143-f148baa52a48@gmail.com
MIME-Version: 1.0
Message-ID-Hash: TGUAWZQWHDZ3TVKIU3UZZV7IGA3CWKW2
X-Message-ID-Hash: TGUAWZQWHDZ3TVKIU3UZZV7IGA3CWKW2
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X410 Power Error State
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TGUAWZQWHDZ3TVKIU3UZZV7IGA3CWKW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1655100612463607366=="

This is a multi-part message in MIME format.

--===============1655100612463607366==
Content-Type: multipart/alternative;
 boundary="b1_yxdWD9ahkop3CRAuU7V0LZVX7WfeNIh1fUuktT6tRE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yxdWD9ahkop3CRAuU7V0LZVX7WfeNIh1fUuktT6tRE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

That was my initial guess, but now the problem has =E2=80=9Cupgraded=E2=80=
=9D from red LEDs to LEDs that are off. I was talking with my lab group a=
nd they said they had the red LED state in the field before, but giving t=
he power connector a gentle wiggle, it turned green and they were able to=
 use the x410 as usual. After I tried the same, my leds subsequently turn=
ed off and have not turned on since.

We have two x410s and two x410 power supplies, with one of them working a=
s usual. Taking the =E2=80=9Csuspect=E2=80=9D power supply, we found the =
voltage to swing between 4.5 and 12 volts. The other power supply stays a=
t a steady 12 V. Taking steady power supply and connecting it to the =E2=80=
=9Csuspect=E2=80=9D x410, still no LEDs. I could try taking the =E2=80=9C=
suspect=E2=80=9D power supply and connect it to the working x410, but fra=
nkly if the voltage is swinging I would rather not take my chances.

--b1_yxdWD9ahkop3CRAuU7V0LZVX7WfeNIh1fUuktT6tRE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>That was my initial guess, but now the problem has =E2=80=
=9Cupgraded=E2=80=9D from red LEDs to LEDs that are off. I was talking wi=
th my lab group and they said they had the red LED state in the field bef=
ore, but giving the power connector a gentle wiggle, it turned green and =
they were able to use the x410 as usual. After I tried the same, my leds =
subsequently turned off and have not turned on since.</p><p>We have two x=
410s and two x410 power supplies, with one of them working as usual. Taki=
ng the =E2=80=9Csuspect=E2=80=9D power supply, we found the voltage to sw=
ing between 4.5 and 12 volts. The other power supply stays at a steady 12=
 V. Taking steady power supply and connecting it to the =E2=80=9Csuspect=E2=
=80=9D x410, still no LEDs. I could try taking the =E2=80=9Csuspect=E2=80=
=9D power supply and connect it to the working x410, but frankly if the v=
oltage is swinging I would rather not take my chances.</p>


--b1_yxdWD9ahkop3CRAuU7V0LZVX7WfeNIh1fUuktT6tRE--

--===============1655100612463607366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1655100612463607366==--
