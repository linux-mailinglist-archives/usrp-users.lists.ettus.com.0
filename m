Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60081639B88
	for <lists+usrp-users@lfdr.de>; Sun, 27 Nov 2022 16:28:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFBC0384111
	for <lists+usrp-users@lfdr.de>; Sun, 27 Nov 2022 10:27:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669562878; bh=jG+67p2FaXOAO1yegRm0TQf2GIrft59aCr2OIeH+TFU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tgU1J3HNClAs9tHV2B2IjQXknTI4kqjWpuSeN9C52dgZOrTN2xAQ/g81RNf8IN8u1
	 FDjN4Z6VBfAShFq8pWiXMq8Rd4AAP9sWC7nuRSH8p8w/uGBrVKMTgAM7rfws9U41Yp
	 LJNs5ZyME7g7/vM930mlbnA97QRdrJ3JESkJBcTz+n4o9tD/RJ9q39hEPQ0Zow7Sc7
	 yLbR/E+1NqSiG3JTshl53xWvVvGrHB5S6FD8LoRH2txXqTcd1de+KY+m1f+9P1AIsX
	 y0aLA5/UiTcr68EHvOvE/bwR3Icm5S7bF4t1wu5ksDPIxzwH08QtxkKmKvsmkeKJP1
	 UFD6go1aODi5w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CD75384018
	for <usrp-users@lists.ettus.com>; Sun, 27 Nov 2022 10:27:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669562827; bh=5kosDfTr90H5ZLNTYSJuiI1HtSjImHYqyTZjjfb01Uc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=v85ChoyA66EGrFM4f42KUKC9dPIS7qzQ7i4jUOoSvTqiIw/u29GTs7YxSVRyZJ3u0
	 327+JMt3PX9je3jB5IFv/ac0nDmlnCVbSajGa+5a43LYeBX4GoHBkMdMVzwvYor8q3
	 3jFQGFJg+jT0tLWAPxzwWdVF7FYTYH8h9Oh4HPLo42Wjy8j9/Sj6/DugxkCgJdXyJ+
	 JGqyBxpIFuPYdR0910FuxQKABIYKOjVDbMSY6XJJRxkU23/H7zbUslcAqX4QSzKm8o
	 X9Da0UgloJ1EpsHOWZI7Dyfr0w46TT3rcZYTsb1t7r8UDsqbRW+QJM4vNLTdGABquA
	 FovNTUySHbmGQ==
Date: Sun, 27 Nov 2022 15:27:07 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <zGVHuBuKrFaRyvIxJ8uH2Nw7eRrDXWfnV3Jj1XRCqQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAKHaR3k26mQ6CQ=gbkHVqNUB=pxipg2CF9VvTBJb+j0267rS4w@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: YNYJLOGWV72ITUHVSFBUFF44TDAZ4PSF
X-Message-ID-Hash: YNYJLOGWV72ITUHVSFBUFF44TDAZ4PSF
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YNYJLOGWV72ITUHVSFBUFF44TDAZ4PSF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4850292639361384376=="

This is a multi-part message in MIME format.

--===============4850292639361384376==
Content-Type: multipart/alternative;
 boundary="b1_zGVHuBuKrFaRyvIxJ8uH2Nw7eRrDXWfnV3Jj1XRCqQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zGVHuBuKrFaRyvIxJ8uH2Nw7eRrDXWfnV3Jj1XRCqQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I meant x4xx_clk_mgr.py not [zcu111_clk_mgr.py](https://github.com/ptrkry=
sik/uhd/commit/719257702b788703e24fa8595d190c70114f5011#diff-d91773ec3db6=
663fcee00c00022faff9981ec5902f6ae807f09f9519903fe276 "mpm/python/usrp_mpm=
/periph_manager/zcu111_clk_mgr.py"). The latter is zcu111-specific\
implementation that of course is not in the main UHD repo. Modyfying that=
\
file is not necessary in Dario=E2=80=99s case, but it might be needed if =
someone wants\
to implement master clock rate that requires to create a new PRC (PLL Ref=
erence Clock)\
frequency.

Piotr Krysik

--b1_zGVHuBuKrFaRyvIxJ8uH2Nw7eRrDXWfnV3Jj1XRCqQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I meant x4xx_clk_mgr.py not <a href=3D"https://github.com=
/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c70114f5011#diff-d9177=
3ec3db6663fcee00c00022faff9981ec5902f6ae807f09f9519903fe276" title=3D"mpm=
/python/usrp_mpm/periph_manager/zcu111_clk_mgr.py">zcu111_clk_mgr.py</a>.=
 The latter is zcu111-specific<br>implementation that of course is not in=
 the main UHD repo. Modyfying that<br>file is not necessary in Dario=E2=80=
=99s case, but it might be needed if someone wants<br>to implement master=
 clock rate that requires to create a new PRC (PLL Reference Clock)<br>fr=
equency.</p><p>Piotr Krysik</p>


--b1_zGVHuBuKrFaRyvIxJ8uH2Nw7eRrDXWfnV3Jj1XRCqQ--

--===============4850292639361384376==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4850292639361384376==--
