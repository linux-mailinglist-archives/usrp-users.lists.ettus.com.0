Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0884EB274
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 19:06:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88443384300
	for <lists+usrp-users@lfdr.de>; Tue, 29 Mar 2022 13:06:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648573613; bh=knWsUk28Fum5XxSpw2Udq8nBbbgkeeIq6S1LenyiPOA=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=n4F+eYThUgooy0oQPlc/grpqPc9lt8FfU54fJjVdVYMb/lH78XsSljLxeh35S41x1
	 9z9y8Y3ctUgZoRMPoGCuMwQAYQnyfu8smo7ysDu59/ARI2QsPTqjmFaE27VvAZi4GV
	 xIsM8gRiKOFScyrR5RuO6CihpiTPGYzRsufVBumbHVcsEXgeDOR7vscTTBmslcCl8e
	 2d2ZG9zuBfHkMixAmXJT1hF6VmxffNDc+yZJR7IPTmUPjcrYVaGj2/MeXxtvBqQREd
	 2wMaUt/tP8YRVdNzc2bXns2tzf9XiU8pSmWYyZwTAR/8cS8NmqL2lU7SOv9eDyeZFq
	 h6Lps+piBpFXw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5409138475F
	for <usrp-users@lists.ettus.com>; Tue, 29 Mar 2022 13:05:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648573555; bh=AWb9wJtPDjhNrlW8bUIF39Xn4yqwY8vK+gOoZWMAmyk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=JhXYSWFLxazHuFuKOnfum57d+T09N7FhxH87vVYdqvvNA3Ij6GQToPZfQRnPlwFcO
	 +dyOk93s4AJXq2sOK9pMWfcAsmFAZmo4t3OcJV9/W9ccEGDaK0YUA6SqGtNtOrBKmc
	 YURo//KzNpxYW/Zgnlo+IY/inPMwkJH2PQ7KieKoVyhgbeUhsBCa39OVVx6GdFtOB+
	 D2wA4qkDTzAFhqvTp1va4ztEoT4eOLHMorgW67E3VfyBqxbf0tK6kgLBCTi5GUhrZV
	 3AvXH5y7WDHAE/bd9tXEvhdhNLw5FfVR+fa1g1nL9140p9rH33m/Y6m2gVVwVz36UN
	 vbXDd1gkSMYHQ==
Date: Tue, 29 Mar 2022 17:05:55 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <z2zAJwxR53izX4cMGIMlgB4vUpUsDRPiYtAFyyxMkw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: fa4f9975-ceb8-3f39-800e-625ba9657c7d@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 6UFYGINJ64L4NOKGYAYU7GDEARVGGLRL
X-Message-ID-Hash: 6UFYGINJ64L4NOKGYAYU7GDEARVGGLRL
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6UFYGINJ64L4NOKGYAYU7GDEARVGGLRL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0438261786362179305=="

This is a multi-part message in MIME format.

--===============0438261786362179305==
Content-Type: multipart/alternative;
 boundary="b1_z2zAJwxR53izX4cMGIMlgB4vUpUsDRPiYtAFyyxMkw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_z2zAJwxR53izX4cMGIMlgB4vUpUsDRPiYtAFyyxMkw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Marcus has perfectly summarized the issue. I think at this point my best =
bet is to handle it at baseband in software.

I=E2=80=99ve been digging through AVX intrinsics, hopefully I can write s=
omething that will meet my throughput requirements.

--b1_z2zAJwxR53izX4cMGIMlgB4vUpUsDRPiYtAFyyxMkw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Marcus has perfectly summarized the issue. I think at this point my be=
st bet is to handle it at baseband in software.</p><p><br></p><p>I=E2=80=99=
ve been digging through AVX intrinsics, hopefully I can write something t=
hat will meet my throughput requirements. </p>


--b1_z2zAJwxR53izX4cMGIMlgB4vUpUsDRPiYtAFyyxMkw--

--===============0438261786362179305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0438261786362179305==--
