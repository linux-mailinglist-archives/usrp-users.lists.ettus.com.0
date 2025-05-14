Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E8215AB76BA
	for <lists+usrp-users@lfdr.de>; Wed, 14 May 2025 22:21:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3634B386273
	for <lists+usrp-users@lfdr.de>; Wed, 14 May 2025 16:21:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747254071; bh=6UGneL2Haf38c3uNbqYiwTEIFF850bq+roM6oLEcG0k=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eR5iFB1kHkGNwAFaOZoYD4OjqEaMDiWbz+mjqATg9R3ugSFd7Y5dNZSVNr1f/UTQx
	 b8TAF/LCAPuwRYy4qJUAFm0OaQxDHVEeWO+JaTc5DDjsyDrtSNUbQEx3lES7e90YX3
	 NQExzvfFA9v7UtRhxKz1Ob40UDa3SrJEz+GZ16LhjY2ohxybwKEGrbE7BEZ72elUDu
	 sMObw+S2JEAsOTh62zxD30lr8+262igFDxab0q0nC4b1y8eruX9AjTuFFCjKb3JQ9t
	 wBS7oRAVXLQ3KSnFhvVbG+Se2yC2gBPhiDT8ipr3T3+kMoOyIcBAqbQ0wuE+7iQbEW
	 w2ud1PE54YTNw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEDCB383E81
	for <usrp-users@lists.ettus.com>; Wed, 14 May 2025 16:19:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747253941; bh=3LlgqdzpTzAVXnh6c9M38r5UAztP/B9To57JOqvdAq8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=M9PBtSK2eQK0Xk4eo5fsrnAqCTUEnsj6vkeBdBdHSeqoTX7ZfJjtoQe+QZcW2bg/X
	 Ku+l/HU0vIF2N/ern6e/MXx6HfHFaX3/nPBhhqtnVA8jynDVwkpXwSBS9CUZPXSmjH
	 Mmn+uj9PBkbJLuoL/Xw2wGvzSI/FsSZ2c+viT3P2ElApf1zsGfrVpv2wf1AjR1/CVC
	 6s56UIuFxdf2iDPN2l3Gfz7lmFZhnuxUnnP7PS6xb8aoM6Go3/ZTrK7XYB7kEiLj23
	 jCGjjoEWxE6UELTW8Aa8HXFm+UWhARZTD+mZuwJzapirCShsEGLorOc+BoORqd9/Mc
	 SR+M7tldJaFmg==
Date: Wed, 14 May 2025 20:19:00 +0000
To: usrp-users@lists.ettus.com
From: carmixdev@gmail.com
Message-ID: <yuCEofPQj7xWtaI6HmXPDI9JolEWljK2hUYzvKLX5k@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: lqabe5WujPiVlqbf1e56vfXreWYjQABwRasikR2vRE@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: JLNESBVATFATPW6QFOQXWCJ6A3HYKAEH
X-Message-ID-Hash: JLNESBVATFATPW6QFOQXWCJ6A3HYKAEH
X-MailFrom: carmixdev@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JLNESBVATFATPW6QFOQXWCJ6A3HYKAEH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8676801587015712684=="

This is a multi-part message in MIME format.

--===============8676801587015712684==
Content-Type: multipart/alternative;
 boundary="b1_yuCEofPQj7xWtaI6HmXPDI9JolEWljK2hUYzvKLX5k"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_yuCEofPQj7xWtaI6HmXPDI9JolEWljK2hUYzvKLX5k
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I discovered it myself, I wasn=E2=80=99t sending the tune_request_action =
to the system, but just setting the radio frequency through the radio_con=
trol block.

If you forget the tune request the radio will not fine tune to the desire=
d frequency=20

It was not obvious and maybe I=E2=80=99m wrong but it seems not well docu=
mented( the unique clue that I found was the tune request on the replay e=
xample, but it was sent on the replay block)

--b1_yuCEofPQj7xWtaI6HmXPDI9JolEWljK2hUYzvKLX5k
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I discovered it myself, I wasn=E2=80=99t sending the tune_request_acti=
on to the system, but just setting the radio frequency through the radio_=
control block.</p><p>If you forget the tune request the radio will not fi=
ne tune to the desired frequency </p><p>It was not obvious and maybe I=E2=
=80=99m wrong but it seems not well documented( the unique clue that I fo=
und was the tune request on the replay example, but it was sent on the re=
play block)</p>


--b1_yuCEofPQj7xWtaI6HmXPDI9JolEWljK2hUYzvKLX5k--

--===============8676801587015712684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8676801587015712684==--
