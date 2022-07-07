Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9669D5699F0
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 07:38:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D20DB384384
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jul 2022 01:38:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657172334; bh=5ZAK5TBU7vn48thfAMaYJ5gCpkWUKkBBJVlYLQ8ytUw=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hwVfgUdUJzktPD5A3AleQ2fRqirfwL1sGGJ1R0CL9Dus8GlVPdWUjUuqAd8egfZ6B
	 dcW03DHEQaDigjbnhMlSopxGt24ZwuMaCJJdNh68GtV4C1hblEYJ5ChYW6oKnwxb1U
	 amf6ExbTqarqzF8k5eJy5b0ODtMvLTdAcMS56jZtWmjmKhzibJIDNKYi1Ycx3S15hE
	 w1r9YGnAkcIIPm5g7RXqooEEsJ3TyyxpLqyRyU67MswKtg33BiWigheEAPAb/UE9md
	 xMc8Z5/f4sqmStPbsorO5mbNLRJIU2PVLnumglrYxTSPQBEqCwBnetroPwyNez63xu
	 pq0XGmqoX3pNA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5AAB383C8C
	for <usrp-users@lists.ettus.com>; Thu,  7 Jul 2022 01:37:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657172259; bh=b/IxP4dqjPaWhvRsPbBBMdScO1No7SLDZyq4x2iRtrk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=W8MS3t2BXLdGIaOsC2n6RaGyg0j4wsSwF+CamsbGuivEophNp1A3tcK+c4TcqI8m5
	 vsIsO6m0a7P8SAiBD8kEhf7c33Wl+y5PxySoe8XbX8+7RsG/hqrEDIooaQE8K94eJx
	 yd/exEi58WcxiJ7gi3FUZsfe5KrenA0jcCECj371sDNbcawANN/fwpuGYnILiN2u1B
	 ik6m6yUQzIxUoCs6WX802isyiLEkQ4afct+OvDXmPJw/YtAhpd2D4TqiJ/accLfOcD
	 cd+ZKiWPVwM8x4EzzmgLwe/47NycbdWRbROfZelRQExpCsUqzIZbbvMiRKWyivmj8I
	 9YZFnmhNBl5yA==
Date: Thu, 7 Jul 2022 05:37:39 +0000
To: usrp-users@lists.ettus.com
From: ouzan_ts@hotmail.com
Message-ID: <CV8DeEDMsqfJioag3HC2GiPoINC8BITyuMsH8iywYgc@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: kgMwpkSlFj0ZiipenNmcEtSnxd2pivnWH9jOPR3fP8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: OR6BTNIFBLHVASYGA2FSXCJQ3KICQ5WL
X-Message-ID-Hash: OR6BTNIFBLHVASYGA2FSXCJQ3KICQ5WL
X-MailFrom: ouzan_ts@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency Switch with USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OR6BTNIFBLHVASYGA2FSXCJQ3KICQ5WL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9098526105137248943=="

This is a multi-part message in MIME format.

--===============9098526105137248943==
Content-Type: multipart/alternative;
 boundary="b1_CV8DeEDMsqfJioag3HC2GiPoINC8BITyuMsH8iywYgc"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_CV8DeEDMsqfJioag3HC2GiPoINC8BITyuMsH8iywYgc
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

\*\*I can=E2=80=99t even set sample rate to 3MHz because underflows and o=
verflows occur.

--b1_CV8DeEDMsqfJioag3HC2GiPoINC8BITyuMsH8iywYgc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>**I can=E2=80=99t even set sample rate to 3MHz because underflows and =
overflows occur.</p>


--b1_CV8DeEDMsqfJioag3HC2GiPoINC8BITyuMsH8iywYgc--

--===============9098526105137248943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9098526105137248943==--
