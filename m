Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91928581A8E
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jul 2022 21:52:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D03A2383B2D
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jul 2022 15:52:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658865138; bh=OWlhb49/OT/6YwP1CoNVgzzJgCBh3FSQbmfUWexaPmw=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=WgTRgXwHM4dwo6cZergXctOC+hk/Is/LtekNWSNwMg2aL+dgckx9Uag8Y5fwu8oGN
	 LmvmuPsD4ja8P7PeeHtG2VCjn1c60q8yN0UHtFfCQytRGCTaXDs8dS/2wvdbt+1d+0
	 wq1kqbL3BF9fp56iIF5k32GB0lHZD2cXv4haOZ1OFwFYfx2UUlsYwYgzRA2eO5K9Gz
	 ZrkqfChAqPv2UfIUaimS+x2Jdh2UwKtjEY+dgR2Dk7foIUHB5WI6Eq7bpEZ8NXjLBQ
	 4pO3E/XBEJpq65Ge2q1A+iUeatiB6c+73v6MWbfcldOxXs1d0F/u0k+KRg0pPT1jKa
	 gJIiXavBMDaSw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07FBE380F97
	for <usrp-users@lists.ettus.com>; Tue, 26 Jul 2022 15:51:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658865075; bh=7OlUIk0SY21MoH0l9gYX3O4Qj+vYQhu19Jsv56+Aa/I=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=IgpxdMsNmP9gCNZOs5rxiZM9GrxIa+Wy+8/gDyfdbmNjLZWUlak6AcrBz5amGG4yp
	 wStsUULb+inLygk7hk1TpkYJuVUrkmrZI+hoMRXTU6gcxc9PrHYRln1wfdIZuwjzUB
	 weWuSLRKFZ+sEojMNtO4d6xJd48DV+zwa8DWcP5Su7OrH77u5m2Ebzq/71RUGRVpSb
	 lI9/7zio3WaRwChfVQ89mf7pMOOW/usa1rWL5YU0xtfb9WmAXm2QarwilI5ul7H020
	 bGSU907XkemStV4beb9JDWmDaAt8uKk9Ei+EDqCNjxLcEV9BJxF4Yd2wir0Kkgf3Qu
	 VmCjeM5l+bUPQ==
Date: Tue, 26 Jul 2022 19:51:15 +0000
To: usrp-users@lists.ettus.com
Message-ID: <ixUISw5T5cn3H9hWr5TcsmXnCyiU3rY8hgBRQfOaLs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 20220726092245.yxepcz2hvgdql2fq@barbe
MIME-Version: 1.0
Message-ID-Hash: HDHHEY3FDUZNPY7PBSHXD57BV2BLKF5V
X-Message-ID-Hash: HDHHEY3FDUZNPY7PBSHXD57BV2BLKF5V
X-MailFrom: skyung@nrel.gov
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting low number of samples (USRP N310)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDHHEY3FDUZNPY7PBSHXD57BV2BLKF5V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: skyung--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: skyung@nrel.gov
Content-Type: multipart/mixed; boundary="===============8881938290419483860=="

This is a multi-part message in MIME format.

--===============8881938290419483860==
Content-Type: multipart/alternative;
 boundary="b1_ixUISw5T5cn3H9hWr5TcsmXnCyiU3rY8hgBRQfOaLs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ixUISw5T5cn3H9hWr5TcsmXnCyiU3rY8hgBRQfOaLs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Cedric,

Thanks for your response.

You are right, the packet size is way too small.. I managed to increase i=
t to 2000 and confirmed that the MTU on interfaces of both USRP and host =
was already set to 9000.

However, it still give me the =E2=80=9CERROR_CODE_OVERFLOW (Out of sequen=
ce error)=E2=80=9D.

Currently, the USRP is connected to the host via switch. Do you think I n=
eed to configure the switch in any specific way?

--b1_ixUISw5T5cn3H9hWr5TcsmXnCyiU3rY8hgBRQfOaLs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Cedric,</p><p><br></p><p>Thanks for your response.</p><p>You are ri=
ght, the packet size is way too small.. I managed to increase it to 2000 =
and confirmed that the MTU on interfaces of both USRP and host was alread=
y set to 9000.</p><p>However, it still give me the =E2=80=9CERROR_CODE_OV=
ERFLOW (Out of sequence error)=E2=80=9D.</p><p>Currently, the USRP is con=
nected to the host via switch. Do you think I need to configure the switc=
h in any specific way?</p>


--b1_ixUISw5T5cn3H9hWr5TcsmXnCyiU3rY8hgBRQfOaLs--

--===============8881938290419483860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8881938290419483860==--
