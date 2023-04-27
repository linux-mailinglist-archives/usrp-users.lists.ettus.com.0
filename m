Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 736F16F0917
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 18:06:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0534383B9F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:06:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682611596; bh=Da8IlrWlXKSIhkIuT3o4WKVMN+++4Eq/HLNnFi3ANMw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=e12DD21WBXaZX8QFLhUoh93YPMuS2/0CgdnNzvfBE/a+idI3A11eTZxJOl0e9BQ1r
	 cp43Vc8npvPI/PtWReFDQJmk27Q95tYI+MzpiswQ7cpGLYePmZagSE3gm4zacmoEsS
	 bbnSDr/gUpZ9Nqq1smBkTxvL1Svl+dd8Rz3hpHtocxluWIt6Hhb6EcoH4FHcGL7nqc
	 eunVwTU56Q/57Ez3dG+kZ32hwA6n7uBz7h0O+ldGG1vJU9GaSyPcRsPNu+42GUSgdS
	 GN+wQZgyjAUD3ojfHrh5oIrezgPTEJY8hzPhWImTIwLBsslLWOhGfffYYSnum5WEPu
	 yDckBme4GoUDg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 275FE38005C
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 12:05:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682611553; bh=FaxfoEZLV0Qo/ZAm9G9p/dWTxkW0bO4k1DXHF5fo+nM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=EJqEjpl8IZXCIZ0o3xJJYGUiZ/3eNBCGs63foD9wg4sHvTKKHR0nsMv8TXw6q0OiW
	 mXVXFPtM6jtjCW4bD4w9QRTceyQn+8y3DtAg/c0rZZ5wAl+S/LB5aqiiPh+My5DaiQ
	 FUrDx6idf7i8cijtApTL2WLU5RkXJiC0YpQz0YloY++aPT+cG9G9/ZXGqlVuCUnWTq
	 F8GD0/L37k3ggzt5nhUVdj9yzIoDYRQBTAID5pBND1r3GlKrxjMLgsIcYIkNB3wZjl
	 3fZEKwS8kadzoFaXEebitK//c5k4Ik0ULNUv64O7jpS8uUvUFLcYi2sY2vUGBupub7
	 i9/woIk9cq3dA==
Date: Thu, 27 Apr 2023 16:05:53 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <KqHtkyJ3IGSJx9GAxqQRNU7LhinylFEMHmpPBrSs3I@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: c5a60683-4595-7d6b-882c-abd0c6add1d5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: OZTLKSQIZHPYNYMO5A5LU27NDAHPQMO2
X-Message-ID-Hash: OZTLKSQIZHPYNYMO5A5LU27NDAHPQMO2
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OZTLKSQIZHPYNYMO5A5LU27NDAHPQMO2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6010807877388500238=="

This is a multi-part message in MIME format.

--===============6010807877388500238==
Content-Type: multipart/alternative;
 boundary="b1_KqHtkyJ3IGSJx9GAxqQRNU7LhinylFEMHmpPBrSs3I"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_KqHtkyJ3IGSJx9GAxqQRNU7LhinylFEMHmpPBrSs3I
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for the information, I didn=E2=80=99t know it. Sadly, I performed =
tests with 1Msps and 0.5Msps and 20 db Gain in Rx and it doesn=E2=80=99t =
change.

I'm trying to figure out if there is any condition of when it works and w=
hen it doesn't, but I can't, it seems quite random.

--b1_KqHtkyJ3IGSJx9GAxqQRNU7LhinylFEMHmpPBrSs3I
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks for the information, I didn=E2=80=99t know it. Sadly, I perform=
ed tests with 1Msps and 0.5Msps and 20 db Gain in Rx and it doesn=E2=80=99=
t change.</p><p>I'm trying to figure out if there is any condition of whe=
n it works and when it doesn't, but I can't, it seems quite random.</p>


--b1_KqHtkyJ3IGSJx9GAxqQRNU7LhinylFEMHmpPBrSs3I--

--===============6010807877388500238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6010807877388500238==--
