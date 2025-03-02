Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94502A4B0C9
	for <lists+usrp-users@lfdr.de>; Sun,  2 Mar 2025 10:08:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 452BF385742
	for <lists+usrp-users@lfdr.de>; Sun,  2 Mar 2025 04:08:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740906505; bh=V3PHw6Ir+W6OHZp5d/yssTc8VlT62hpR1CPb0152Xk8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=W2tBYD3jZ0V153TlB8ft3V9QEt8Wc8Y8nziFT7kz+sI1O/SSTK7nnPBpAgjpDbPkK
	 241e26W3uTpSTfu5maTxNKwU1ImdRZBQcwoFPPMTjNtoHOIbc6jaGySVvbaysaQhi5
	 BlSKVgH4rfyG18DVjSFVNZlmQKrbVd6/E9zF4CMH+FiEtPm32QOzCaOjyZl4COl2o0
	 lDzZC9v/iXyVTSlgjAwtQ6ITwJ2dhillCcCydxpvYRWOP/uzBwB12wGOrHbAE6jhF9
	 pcoz1UsYqolVuQpaFyR/AnmFs57QDcVIcyW5ChZZ9H2d/yKLrgzOHf139Q6zbjYzJR
	 BLnmDrSs010Eg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D1C53854C4
	for <usrp-users@lists.ettus.com>; Sun,  2 Mar 2025 04:07:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740906448; bh=etIz11XjW0G+JhbbwrHGtcpDM31A3Nbc+taDxNn97yE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=uhpYOZi4623O14att/nUGWDoSrPodmncezqgaPGkuR63fbFQTuruTSjk5mdx9l1in
	 UNToRwdfLQKKojzQvyNvQyLs+84BBgBEubNb48soF5yGzJmVvFGMHUng55impCjjtv
	 gTd84LgRrwmp+U7/f6xkPyndd31RSDOXj7tSyoauewnSyIBAo1DUPIWa52fTFH6FcE
	 LjS0HKMdEmJWPUcHFqHlrPohETz4FD6it99NZv2vn2mDLI4B8nOfYUU52Vmp/kCBns
	 dRhprbAxSnieqhUUG1N5F+MI6Cx90/TaJc1WoHWaZVTjlLkknPPhX+nzTsDU9wfmd8
	 TGCSOJR9m4Xsw==
Date: Sun, 2 Mar 2025 09:07:28 +0000
To: usrp-users@lists.ettus.com
From: michalgorny01@gmail.com
Message-ID: <fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8542b078-32bf-4232-bfc6-af0b6ecac261@gmail.com
MIME-Version: 1.0
Message-ID-Hash: C625DYSIQHLISTVEBEHIOKFTJZ7NOXPO
X-Message-ID-Hash: C625DYSIQHLISTVEBEHIOKFTJZ7NOXPO
X-MailFrom: michalgorny01@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: strange behavior related to gain
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C625DYSIQHLISTVEBEHIOKFTJZ7NOXPO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8269012007995925048=="

This is a multi-part message in MIME format.

--===============8269012007995925048==
Content-Type: multipart/alternative;
 boundary="b1_fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There is one =E2=80=9CRF A=E2=80=9D channel, one antenna for the TX/RX po=
rt, and one antenna for the RX. I don=E2=80=99t need to use a circulator =
because I made my custom conjugate multiplication block.

--b1_fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>There is one =E2=80=9CRF A=E2=80=9D channel, one antenna for the TX/RX=
 port, and one antenna for the RX. I don=E2=80=99t need to use a circulat=
or because I made my custom conjugate multiplication block. </p>


--b1_fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA--

--===============8269012007995925048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8269012007995925048==--
