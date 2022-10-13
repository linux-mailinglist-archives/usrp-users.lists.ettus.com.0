Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0733D5FDC36
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 16:16:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E04EA383CD2
	for <lists+usrp-users@lfdr.de>; Thu, 13 Oct 2022 10:16:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665670584; bh=L28j14e3MfhqOLLxC2QAfvqfl7nLCDJhNnb7WsEiNlA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WnOwjWmypyMfO4IH3Xc7wFLV0gZ1yFY3OxhnpCnG/2hFrWKeu41oFMkjD87grQZ/l
	 xP7cb6jpHkisZx8dkLupebzizTm4d16NX5sntwIsk7mA31XE/uky/70C3KaIKRp00U
	 V8ifFTnxtQaMCtiDGtKGeM4YA+NEaS2/Y0K0h6o8Vc3CQXGOz3oPe2drec/BSQVXjU
	 0+IiWRz3WtBBwy5S2+sOKXACd0fG3rXEVnoaiZE+5WqSb+ZI9lSnLLXZwxQekCeKX9
	 AXyZqkKP9MdgwKWy6IJ7sAxaQUDI1Bev80t2VF9LPm0X1RDipHtI+KNNMvvYZuQqLd
	 xfko3Db2hDiSw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BBF0383D96
	for <usrp-users@lists.ettus.com>; Thu, 13 Oct 2022 10:00:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665669624; bh=Uk1So/SivcoCiuNohy5I9Z4wdySa/APGl4u2VssCkfE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=aMkUxSaBbvHgRyVGb6g9cYiiKkaG0UQVwt0fCnmx3+TQcqurZiCL+WBEhMqY+TPKF
	 P6W6cp24Fp2OKaR6j1gKUtyLx5mgDLbRWby9wnvPygkYePoMrPdQS+wX/gwjc4nXrf
	 G5DtRMg3sehP0w1pltvenH4kGIzSRbWN5tHogEyeDJZD9Y4qB7r7Y2sUCU324Sm9JG
	 KNpoLqn9PtX4/aIekdJzv929Ec7X2oLkyuX0Y802jLryGaefdYx4wFr3F9DD6xr58Z
	 0y8H8CDNsWYVtxOEDvwMJdVyNkprbkPrX4diSHhJKbNE1GTG7XwivUiq7C7kEs6+Ua
	 nQOHSE/5gQBog==
Date: Thu, 13 Oct 2022 14:00:24 +0000
To: usrp-users@lists.ettus.com
From: adri96roll@gmail.com
Message-ID: <Ozp2jPKMVfQNL1RvQRYdEeVe5r50KLApC0w3MTU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 60771baa-588b-7c7e-e642-c13f449310e7@gmail.com
MIME-Version: 1.0
Message-ID-Hash: QV5TQVUQIXW7KLXRQ52ZZFRNT646GNOI
X-Message-ID-Hash: QV5TQVUQIXW7KLXRQ52ZZFRNT646GNOI
X-MailFrom: adri96roll@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD_IMAGE_LOADER load another .bit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QV5TQVUQIXW7KLXRQ52ZZFRNT646GNOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1124224508731429122=="

This is a multi-part message in MIME format.

--===============1124224508731429122==
Content-Type: multipart/alternative;
 boundary="b1_Ozp2jPKMVfQNL1RvQRYdEeVe5r50KLApC0w3MTU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Ozp2jPKMVfQNL1RvQRYdEeVe5r50KLApC0w3MTU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I tried but i didn=C2=B4t work. Anyway, i have no problems loading others=
 projects only with this.

--b1_Ozp2jPKMVfQNL1RvQRYdEeVe5r50KLApC0w3MTU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I tried but i didn=C2=B4t work. Anyway, i have no problems loading oth=
ers projects only with this.</p>


--b1_Ozp2jPKMVfQNL1RvQRYdEeVe5r50KLApC0w3MTU--

--===============1124224508731429122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1124224508731429122==--
