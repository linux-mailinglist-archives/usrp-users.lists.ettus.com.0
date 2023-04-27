Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7916F072C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 16:21:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3801383DBC
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 10:21:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682605318; bh=US1UGa4ha5vOKZt4spd1Vgez/f1enOk3f2b+e0JHXoE=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xk0xHVFV3wKAd7e67BdnTBAtgI5aP/VvvyuxpabYkJ3GK7VfXvJsG2+Qz3peNvLK1
	 om6O1Pc7gH44r5kjOQfyrKv6bmIPIVIj9Gt2zeFXUrDH3B50ywfiF/VOXdmrywmJp4
	 5w2Adx8TT4c1RUZKTDugrJ3PjGw/IiqLWhNPyL8a+N4/3Ako6NXCPfikIrYw3kjAJo
	 Bg5LrLH3SYWzYBl4pzEkQZpYd7+LEMY/8L9clASoCaUJPVE8RlnHaOf9gfBOdy11kA
	 ZS9sZMtWbBbCv/70TcD16wInYAjlT58J9+zfngb3JbNBNHC6S/yFJAwuBqISV7rVUR
	 6SgtID2bmG4mw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B1893383D1E
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:21:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682605279; bh=kxc6QymXo8H01L5uacMbs7Qo66LicnXxAWAk81FL08c=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=pe1s8pDt2tzY7QeGymXnarmJyhkd2euWtYeGlBJOr2hJ59KW5bkgklSpmi2lmrVMe
	 xTnFM+rS9EeS0Gnn3egxCj2ZEitgJP+SIll4qxPY/9bJHD5198yOBfZU7DaKGNNbVK
	 xkTZaIixWbh9wZS4obgGZIpBtUOnQjbhLoD9Ij9VzmzEriVjkbmpMqxkpZaEsdZ4Zb
	 +OWxNSBqSUHrS2+O1QFqFDKZRVQTEqSRvM1/SpmrKbJxt7Jt2OX+LmSENR54MOUkpk
	 13m4zk5rpkXCrZs8m6Em4ipFrAn75FA5mNVJh+Wi0O+OVsnuUIThKZVhn6zAJDp595
	 HK9fT70Mawxzw==
Date: Thu, 27 Apr 2023 14:21:19 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <e1npWlLULkbLJZKattbBTmg4U1E1dUic2bisozLmxY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6676e9c4-ce09-4f04-d60f-2cc5ad449eb4@gmail.com
MIME-Version: 1.0
Message-ID-Hash: V64IYX7E5MXKF47EEQTWXNDCKMNSW3F2
X-Message-ID-Hash: V64IYX7E5MXKF47EEQTWXNDCKMNSW3F2
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: configuring X410 USRP to work with higher sampling frequency/band width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V64IYX7E5MXKF47EEQTWXNDCKMNSW3F2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0120741952242561367=="

This is a multi-part message in MIME format.

--===============0120741952242561367==
Content-Type: multipart/alternative;
 boundary="b1_e1npWlLULkbLJZKattbBTmg4U1E1dUic2bisozLmxY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_e1npWlLULkbLJZKattbBTmg4U1E1dUic2bisozLmxY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for support.

I tried to test TX and RX operation separately. I set USRP X410 as receiv=
er, it can works with sample rate more than 100Msps. But for TX configura=
tion, it can not handle more than 10Msps and I have several U, underflow =
error.=20

While I am using both TX and RX configuration simultaneously it can not g=
o beyond 10Msps. BTW, here is my TX side code:

Signal_sourcce (Triangle)=E2=80=94->VCO(Complex)=E2=80=94=E2=80=94>UHD/US=
RP_Sink

Any suggestion? Thank you.

--b1_e1npWlLULkbLJZKattbBTmg4U1E1dUic2bisozLmxY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Thank you for support.</p><p>I tried to test TX and R=
X operation separately. I set USRP X410 as receiver, it can works with sa=
mple rate more than 100Msps. But for TX configuration, it can not handle =
more than 10Msps and I have several U, underflow error. </p><p>While I am=
 using both TX and RX configuration simultaneously it can not go beyond 1=
0Msps. BTW, here is my TX side code:</p><p>Signal_sourcce (Triangle)=E2=80=
=94-&gt;VCO(Complex)=E2=80=94=E2=80=94&gt;UHD/USRP_Sink</p><p>Any suggest=
ion? Thank you.</p>


--b1_e1npWlLULkbLJZKattbBTmg4U1E1dUic2bisozLmxY--

--===============0120741952242561367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0120741952242561367==--
