Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3760D656DF6
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 19:29:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BB7C381809
	for <lists+usrp-users@lfdr.de>; Tue, 27 Dec 2022 13:29:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672165776; bh=huBGOzergrVcAn0LJH0qa2u+283Pe3JjX1SD5FKbVnM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Zb0K6YkAhezBZAJu3eTgG5Wfs8USpH2tpPhVdnxZZEXFruj6EIO3P1H2yDlrzH+pj
	 S/tS//i/l1N68/WUg0wJ8+gM5WitRwL5KqXN9X5rrlg/M4FQY/NYF+I1v2r7Aj9S8u
	 03qN3hvuiuNtqlPqcCG82HtG5lEvri88wOcH/um25rG2MsCiaASFHPB4u2RTprO/1F
	 k9AATNtTc15ozkbWAUMKY/wxN4/P8xtp4ziPySqNt5gpJ5gzlYF6VKda4l38bQteji
	 hDPu0KmsB864oZFW+DZqpjEYEQsL9lXRkWb2F+ZAez9nOU1pcT0AbCTQXU+o3bkaXF
	 uCuxeQ4BqqwiA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D407380BDC
	for <usrp-users@lists.ettus.com>; Tue, 27 Dec 2022 13:28:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672165724; bh=oPFfI2bp7EDKbjyWW1DqurLtSof/cIWVL7Z15tZUyZc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=b79nrT0h9RSWkn//jPJFHxbBxlqFFLb6voFMfsvSZUF5ruswfm835G0JYhZVOPmI7
	 WsAL3O55WB3lctpRbL7BPGp4OJvrOty/iR63dmHazhQCVLnU9oI1ZmhcYuYitONZwm
	 RtABdEN2T8fENTazF4e3hEQGVwe0nA0+vYSw1N89VYXGkhRFEpZldINiVAEnF8OeFz
	 +w0sX9tDpfSio2BVPj4Iy63iOQPC5yEHSK0swJOI5u2E2xkgp7aqvCS9BgtEh5hu3L
	 9DmSuagnYMB7aYNE75laU4gu5pc1cAtynrb/FgebunsVoUcEqglG/dFz5F1K/g4F6F
	 f60tdB3Esu8+w==
Date: Tue, 27 Dec 2022 18:28:44 +0000
To: usrp-users@lists.ettus.com
From: henry.powell.xx@gmail.com
Message-ID: <aR9gxdj9z2U4Z0J7XC83202l7h6kcCcbXODRzwd0XI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5525e594-7af8-19e1-83ab-359e8801d356@gmail.com
MIME-Version: 1.0
Message-ID-Hash: R3VTSIJMU2PGOJNVMVLEXEHSIMLCS3MV
X-Message-ID-Hash: R3VTSIJMU2PGOJNVMVLEXEHSIMLCS3MV
X-MailFrom: henry.powell.xx@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device and Connection
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R3VTSIJMU2PGOJNVMVLEXEHSIMLCS3MV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1978426542600871378=="

This is a multi-part message in MIME format.

--===============1978426542600871378==
Content-Type: multipart/alternative;
 boundary="b1_aR9gxdj9z2U4Z0J7XC83202l7h6kcCcbXODRzwd0XI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aR9gxdj9z2U4Z0J7XC83202l7h6kcCcbXODRzwd0XI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If I always use usb cable, let=E2=80=99s assume i use what are the advant=
ages of using adaptor for transmitting or receiving?

I read that document. I am searching document more like book, more detail=
 is better for me. I want to research. Then I will start to development.

--b1_aR9gxdj9z2U4Z0J7XC83202l7h6kcCcbXODRzwd0XI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>If I always use usb cable, let=E2=80=99s assume i use what are the adv=
antages of using adaptor for transmitting or receiving?</p><p>I read that=
 document. I am searching document more like book, more detail is better =
for me. I want to research. Then I will start to development.</p>


--b1_aR9gxdj9z2U4Z0J7XC83202l7h6kcCcbXODRzwd0XI--

--===============1978426542600871378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1978426542600871378==--
