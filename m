Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC3091CF62
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jun 2024 00:04:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00E453850A8
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2024 18:04:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719698662; bh=Bj2lltNataFxIttObKUMzhbiZ8mTRWdiHMHUSl/DMbo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ljz3riY4jM9bLi74aOYswAJQYtkmHrkvDBG3iA7VFlRxi59xX++Z0WPQ/2f5JrB50
	 /enPOKIGnDEgQOsSrcgUYGFVuINKjuCuiTneoJw+FUBJs/oWiFqFrJ2pSLu9b2vIXL
	 yEwV4qa6LIne1W5J2/ZQpjSk113cbstEGu9cocwBoPY2mSNTx+R5aHaS3VoPX1Ag38
	 aZq4+N7DW9IFow3h7IqptFc48OHsAp9bsMIkRYlVI8AeISiaeXs+oonO5rBLwkyE5b
	 lTlzid8m4a6WpwLaD4Vgo3D+XnFC5QK+PyHQD9cpqnLlLqa0UqQBXj7XnMvw7PPiSQ
	 ObQo2ROT33ZLw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6BF0F384849
	for <usrp-users@lists.ettus.com>; Sat, 29 Jun 2024 18:03:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719698623; bh=ULuYXVd3GFl4eCB1RnOydc35hm2nczy61jL597ghuas=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=I9PTIS8j6k2H+UzunPJT3UDaiJOmX79kL4MS7cKV5Z4bTYYhhuX44WMVNKIj6QBvD
	 Lyzirh2nHrRJbpLyLE/dIk4ItyabzdA+VnLoYpIv+8qrVjhDo1DpWBNPDdQ4omo9HD
	 9SB95UyBcBy/WMRqD1grcJ+WvSEUjol1f7yTbxvlU58CMfZlKofB0wxFGOwQzQRAvL
	 TK60XSj3T4czB+EJ+Z+Mx4d8aWyQXDCcS7toSDVp2r2jDFZ3aQxQ9o0wRm4UK8FqdZ
	 ExIglePbMZKnS2NOy4EBuTjSQyTKfRX9lsfw6/rDjlSOl+XrPX8kEUFV17HKNrn97C
	 F08LBdGCx5XSQ==
Date: Sat, 29 Jun 2024 22:03:43 +0000
To: usrp-users@lists.ettus.com
From: hoosac19@hotmail.com
Message-ID: <0mM4VmZ8arDRhsbwjS14ngM28H6LaeNdhh0KwjW6SeQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a39267f5-9892-47b1-8055-4d4cd8659e6c@gmail.com
MIME-Version: 1.0
Message-ID-Hash: GQUIWSONUSBJ7Q24OR7DUHNK6NSZC3DD
X-Message-ID-Hash: GQUIWSONUSBJ7Q24OR7DUHNK6NSZC3DD
X-MailFrom: hoosac19@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot find N210 FPGA images in Ubuntu uhd installation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQUIWSONUSBJ7Q24OR7DUHNK6NSZC3DD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3162806329360375675=="

This is a multi-part message in MIME format.

--===============3162806329360375675==
Content-Type: multipart/alternative;
 boundary="b1_0mM4VmZ8arDRhsbwjS14ngM28H6LaeNdhh0KwjW6SeQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0mM4VmZ8arDRhsbwjS14ngM28H6LaeNdhh0KwjW6SeQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus, thank you for the prompt reply.

I=E2=80=99m still not able to locate those subdirectories.  Here are two =
more screenshots from my ubuntu file browser.  The first points to =E2=80=
=9CUbuntu/usr/lib=E2=80=9D (no uhd folder visible), and the second points=
 to =E2=80=9CUbuntu/usr/share/uhd=E2=80=9D (no images folder visible).  I=
 double checked to make sure that Show Hidden Files is checked in the men=
u.

--b1_0mM4VmZ8arDRhsbwjS14ngM28H6LaeNdhh0KwjW6SeQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus, thank you for the prompt reply.</p><p>I=E2=80=99m still not=
 able to locate those subdirectories.  Here are two more screenshots from=
 my ubuntu file browser.  The first points to =E2=80=9CUbuntu/usr/lib=E2=80=
=9D (no uhd folder visible), and the second points to =E2=80=9CUbuntu/usr=
/share/uhd=E2=80=9D (no images folder visible).  I double checked to make=
 sure that Show Hidden Files is checked in the menu. </p>


--b1_0mM4VmZ8arDRhsbwjS14ngM28H6LaeNdhh0KwjW6SeQ--

--===============3162806329360375675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3162806329360375675==--
