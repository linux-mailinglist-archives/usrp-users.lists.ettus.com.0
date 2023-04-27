Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9C06F043F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 12:35:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3C219384453
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 06:35:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682591744; bh=OjFMCKIGK5VFazU2KQ/zf3vTlgL+biUF7Mg8NtFyRU0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EqXfdlNihNFwGGeKuTKgyfx7ccTurhxmR02biJDJqzcO5Cmh1sh8F5+kt9qVfaGGg
	 Hp/0stR9Xh1AWxaxUFG8O4xRfjTwTOja/ZQenlywW+mB5fHp0QOYldmvqHErM/mRL5
	 8igs27ax6o1zL9j1qfYXY9WPa0iNwCsdnffqH5ciGt3bCbxGeOx58Xwt0ANqp0L7gP
	 g1yIYXXcldo9+lKsLJwsjcF92hkGUuwvXkUToINypgtEit8M0N1JrIYHSB6zMOLaZG
	 e10J/McHEwHe41q+YKTHzv2YnLqnMJwERqgj0H0xvikJ4ZOJ9lPpS96B8T/F+5wx1P
	 5SLKFY9ZKS5zw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 98E9A384346
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 06:35:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682591706; bh=CLSBQIjFH5VKnKrG5aZgs9jVX53h6fVphDzfRfvejWg=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=DV+iovhGuYBgYxXQthrYvjkBFl7VZUIj7lh+4zhVKKY3O4C05qgSMg+aCm+KNve4G
	 lEH4U1BnvIfFaYn6ISULqyPMaERQC7hQsjRyxUobRaJ+ivOYs9yyePGbSZbQM56tbP
	 1RlOAT7Vvg7OMoZr/ZsQXwUoLdl9lGoAnUy7rSwP5SA9/Ego5m1stdaC55OXNGdj4c
	 uAxnQx62zIod43W4KANiZ8L1bRAijsgiPKh2IOB0hi/tAMq4lm1p/7YtlUprRZnJba
	 FxnEsEusjqDsuydtVtQzPvrZs9d2RD7OQMNfNxiWqOYmvOSaHQqqs3DyVA6T7iGohW
	 4mI0bvuUS2sdQ==
Date: Thu, 27 Apr 2023 10:35:06 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <gOyEY18kLwEzJpQTCLPpOoELQhfceqlttNI36Ne9ky0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: evVOSnJMxcaz0XBcxvO2imtx1pl0VsV6zemJFjMV1Ds@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: N23ZBL4FQIULOUBDJLM7HAAW2TXXGXV3
X-Message-ID-Hash: N23ZBL4FQIULOUBDJLM7HAAW2TXXGXV3
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Full duplex issues with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N23ZBL4FQIULOUBDJLM7HAAW2TXXGXV3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7707009738317479634=="

This is a multi-part message in MIME format.

--===============7707009738317479634==
Content-Type: multipart/alternative;
 boundary="b1_gOyEY18kLwEzJpQTCLPpOoELQhfceqlttNI36Ne9ky0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_gOyEY18kLwEzJpQTCLPpOoELQhfceqlttNI36Ne9ky0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for your quick response. I modified the flowgraph according to =
your suggestions and now it seems to work sometimes. I don=E2=80=99t know=
 why, but it can work now if I run the test, but it probably won=E2=80=99=
t work in the following 10 tests=E2=80=A6 Do you have any idea of why it =
has this behaviour ? Thanks in advance.\
\
PS: Sorry I sent the previous message unfinished by mistake.

--b1_gOyEY18kLwEzJpQTCLPpOoELQhfceqlttNI36Ne9ky0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Marcus,</p><p>Thank you for your quick response. I modified the flo=
wgraph according to your suggestions and now it seems to work sometimes. =
I don=E2=80=99t know why, but it can work now if I run the test, but it p=
robably won=E2=80=99t work in the following 10 tests=E2=80=A6 Do you have=
 any idea of why it has this behaviour ? Thanks in advance.<br><br>PS: So=
rry I sent the previous message unfinished by mistake.</p>


--b1_gOyEY18kLwEzJpQTCLPpOoELQhfceqlttNI36Ne9ky0--

--===============7707009738317479634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7707009738317479634==--
