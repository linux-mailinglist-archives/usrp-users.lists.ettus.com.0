Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0930A742B9D
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 19:58:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F144538457E
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 13:58:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688061493; bh=jO+yo+XX/nzeJoOdLoIdmWj+mrhrOd3tA+sykEXTwZk=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MGD1aqN8zMNZzm4goxm1FV+AGpl5ofeHula0YQDiRLc25roe2uk/hhgq8/Jo5y8u+
	 aZKMrwQmj8FyEsPHs0CvKfNt/erHzTr3vEISQ79xw0380HHwSCBK1P70Vb5tZYqfBl
	 gGbAVIXNolCgeTO3OhY2c8oP2rxD7VlDq9F2lvZncyqYyBfLDMXYLGo3Yexr9uHGAA
	 zqegqtn4irmuGy9+r47KDILHNBUBEo+n97K4LpXGi43zU7CtMnO45S7mWYQeHHlaXU
	 PkDSFlIUVZYzhSF134Ip70F+rIOYXW70CHXey6wWIrd9nm2jBM0hSkaQg3TYbhkiin
	 hMtnNRJTkBn/w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ABA29381286
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 13:57:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688061439; bh=rQNmasvvxz9861E66YgERwLfV1PeGBaY64U3j6x4iZs=;
	h=Date:To:From:Subject:From;
	b=SvlAIi23EU3tWxveuGdU5xSWLy3wZrCqa2eJ2A4Uw492bsrE3NMeuwmR49X5Sf48U
	 uOen2Mnomj2+dq9MZk4EiKhV0DMlPqxguaa4Lz+f4S1+FKkaGtHd7c6qXjaaoOnYIX
	 Tr6axwYkaCAeLkI4A/T2AVL+XKfb1I1kHt5ShzIgQ6p3KGUcjCQPoUmUwNoK5lXDD4
	 W+IHcM5jFwdOjI+ucF7cLTgTcDxWO6cPz2jrGjjn66Wyb5h8kQCuD5HbYMgvgLXET2
	 iU8y3hdRF8/3VSmcx66VH+H03yiFypl5RaMk1p+x48CryESfp8PsW5LsJ8YHkr4Plv
	 f6bKypDn4UStg==
Date: Thu, 29 Jun 2023 17:57:19 +0000
To: usrp-users@lists.ettus.com
From: h57jafari@gmail.com
Message-ID: <MWMYMIHsubG1tz16iIq49ZgTWRZjz8gjfntbaFqIM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: MXG3MBUP6YDCJAUATS4GBS6YHRMZW7VS
X-Message-ID-Hash: MXG3MBUP6YDCJAUATS4GBS6YHRMZW7VS
X-MailFrom: h57jafari@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Host hardware specification for USRP X410/X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MXG3MBUP6YDCJAUATS4GBS6YHRMZW7VS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1956087549497132661=="

This is a multi-part message in MIME format.

--===============1956087549497132661==
Content-Type: multipart/alternative;
 boundary="b1_MWMYMIHsubG1tz16iIq49ZgTWRZjz8gjfntbaFqIM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MWMYMIHsubG1tz16iIq49ZgTWRZjz8gjfntbaFqIM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Can anyone recommend specification of host/PC model include motherboard/C=
PU/RAM/hard drive/=E2=80=A6 , if you could use it with USRP X410/X310 to =
be able send and receive with more than 100MSps successfully without unde=
rrun/overflow through 10GbE/100GbE link. Thank you.

--b1_MWMYMIHsubG1tz16iIq49ZgTWRZjz8gjfntbaFqIM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>Can anyone recommend specification of host/PC model include =
motherboard/CPU/RAM/hard drive/=E2=80=A6 , if you could use it with USRP =
X410/X310 to be able send and receive with more than 100MSps successfully=
 without underrun/overflow through 10GbE/100GbE link. Thank you.</p>


--b1_MWMYMIHsubG1tz16iIq49ZgTWRZjz8gjfntbaFqIM--

--===============1956087549497132661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1956087549497132661==--
