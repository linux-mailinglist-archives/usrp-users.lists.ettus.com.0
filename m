Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6439FD770
	for <lists+usrp-users@lfdr.de>; Fri, 27 Dec 2024 20:16:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3630F385B6A
	for <lists+usrp-users@lfdr.de>; Fri, 27 Dec 2024 14:16:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735326993; bh=hTbncRMPLBJG2nWfwC+hGmfxnTmZ9HeSZjkYQbKgdGo=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=oHECXSs0zprIv6P5FrOfuaeFUL0BZgf3PLuofHzyUMs3vciZDmypN7W3+W+miOLJ+
	 8CBfDFsf+SqwTxGTgJCaP1CIEvvTqgxRGhgXCILBIaA2ZmoW+pVr3WFpBW+gCaOwM1
	 lEArhJ+nTROI/bAp9SB2pzJa9XhTrKPXGJyyxmDL8Uwk1CK50GZ7SpPQMXdPVRWmvC
	 SQblaqVP7j1uRmeQZqYAKGmqG5wtcDDzHwRPO8nqJfQT1s6PDZsYwsWM65cVZmOUDS
	 sRwEs5EJVQYvvlmQidyCSJ8vFJ5NGSam302i8IbQf+eZzVblJwJUbH5PwQZDDq/Nh3
	 OSnQ5C+2SztyQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30D8E385B4E
	for <usrp-users@lists.ettus.com>; Fri, 27 Dec 2024 14:16:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735326988; bh=4L+WauFaNfrnxqg6bZQF7W4Jq1p9dViOM+/qZOtQSV4=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=faJh4XONNIyNzJR8yKuiiA9i1JzDDr+jbqXdeI2cYJiGyiGbWkVa1hC7T7E6bjEVS
	 fv/g8IHpwNST+wHFJ9pviu3zCUnMfcDMFw34sgyc1H0KPg1akImMcmbN2OlsXpnnuY
	 iQKJOLhT0DYBDpUmnhZpZ+0Lz8fd+IQaY/G8zi3o472nxN0fOX8rpSx84PsVorocgi
	 ++2v7fK3E9V6F/JoGX5W+0+MtwonIzj0/0H7H6A5cDCB/KWcCGQSzyDqdbHzLjU1lp
	 zcjReh4p3cwPY3mImRjEGYwcRf0+c7jl3aYyQC8ll5U18rw83eP5d1ch/dfBo4Xc8v
	 ZhBmJM1FuJjUQ==
Date: Fri, 27 Dec 2024 19:16:28 +0000
To: usrp-users@lists.ettus.com
From: cjohnson@serranosystems.com
Message-ID: <Ps8hX65exJZMYvSf7aAWHhZ8y1GUl2q5ajmG71EN3U@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: YGXELHDIMKDIGCPXKCS3HDLCSTT4L5WW
X-Message-ID-Hash: YGXELHDIMKDIGCPXKCS3HDLCSTT4L5WW
X-MailFrom: cjohnson@serranosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YGXELHDIMKDIGCPXKCS3HDLCSTT4L5WW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2299110594774503018=="

This is a multi-part message in MIME format.

--===============2299110594774503018==
Content-Type: multipart/alternative;
 boundary="b1_Ps8hX65exJZMYvSf7aAWHhZ8y1GUl2q5ajmG71EN3U"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Ps8hX65exJZMYvSf7aAWHhZ8y1GUl2q5ajmG71EN3U
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I know it=E2=80=99s the holiday=E2=80=A6so I understand.

Trying to bring this back to the top of the queue.

Best

--b1_Ps8hX65exJZMYvSf7aAWHhZ8y1GUl2q5ajmG71EN3U
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I know it=E2=80=99s the holiday=E2=80=A6so I understand.</p>=
<p>Trying to bring this back to the top of the queue.</p><p>Best</p>


--b1_Ps8hX65exJZMYvSf7aAWHhZ8y1GUl2q5ajmG71EN3U--

--===============2299110594774503018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2299110594774503018==--
