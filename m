Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A655806AEA
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 10:42:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EC5E3384B96
	for <lists+usrp-users@lfdr.de>; Wed,  6 Dec 2023 04:42:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701855734; bh=/2mec2Bd7sb8RQZSBWLaZ9oQykbGWb3gTerSH79abgs=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lEAx8EfVfq34xQA665bqm0aX5EDYNY9ZUvI5pTYAuSeIE4Ak7mSYmTmSC4Iz45tmV
	 dymfA8AmKDjkwZ/M3HdVto9emxv3MHDlMwuS/BfjiU6XwvDumE0wi5WrQ6kqC2sHWS
	 +rYkxL1m+KzXTrxO0r9KvrjbSbwMKVxxfPnFIobHCsmNqm1PFL9k1oHD5Nrz/Rdctr
	 tebEHlHjES+vL+GZY6CIGvY8wWYgzyiXZx70N40s60cf93J/zsme5AXGwFMh0CSYa/
	 0US49W/4HctGawq46hFJCxEyBGwpauNKlUZPBNtHdXXIPHv+RAa28KVVAO1idjaPSy
	 Z0LkzhZXecYMA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CA75380A7F
	for <usrp-users@lists.ettus.com>; Wed,  6 Dec 2023 04:41:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701855708; bh=qZg4LojzJFF9g/RlDVL/u1/AsoU8q5bzCZzT8GNmrKI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=pxS4e54IL0ZJ1Wr+znqquKXsrWuzMSaBYJrgOoZvfkXdSnYL1xiuerT7OI2iPkOGm
	 xvYFc2DBUQiS35eFA+xvBQGx/AM6ePEQEeN0ggQmRiu3IFulBVwm6Id6Q5HlxVlUVq
	 8J2czW9QPf3M3oocNjmwcg3eGsXgQUSNcFFwHYpzQiqDK4p15wS0DvcrmF535jKu7v
	 UNXDMnig6/LaH7g9s71iOhPJZPIgDQC6xQJBk3vThmX8cVOrQGSxUlyPEIK9TzBM+Y
	 fobu2PtzChCKJ+10hbAZyfDK21WSDlOCz8NYFeHUnYIjhllGESweBPb/iRDVJC8VXH
	 JmYDh9gE4YeKA==
Date: Wed, 6 Dec 2023 09:41:48 +0000
To: usrp-users@lists.ettus.com
From: purva.joshi@phd.unipi.it
Message-ID: <hinbfiatY8i7AMSTWR6za3Hr6COQLZSP0X8JOzOzI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 90f41253-2eee-416f-a1df-893c658f3aff@gmail.com
MIME-Version: 1.0
Message-ID-Hash: PFLN7QGJDCD3CTWPDPHIHW6LHT2672Z4
X-Message-ID-Hash: PFLN7QGJDCD3CTWPDPHIHW6LHT2672Z4
X-MailFrom: purva.joshi@phd.unipi.it
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PFLN7QGJDCD3CTWPDPHIHW6LHT2672Z4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5460396468903225856=="

This is a multi-part message in MIME format.

--===============5460396468903225856==
Content-Type: multipart/alternative;
 boundary="b1_hinbfiatY8i7AMSTWR6za3Hr6COQLZSP0X8JOzOzI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_hinbfiatY8i7AMSTWR6za3Hr6COQLZSP0X8JOzOzI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear Marcus,=20

Here, there is one issue, I tried everything to solve the error. May be y=
ou can help me to solve the problem.=20

=E2=80=9CError: rpc::timeout: Timeout of 2000ms while calling RPC functio=
n 'set_device_id'

Kindly help me in this issue.

--b1_hinbfiatY8i7AMSTWR6za3Hr6COQLZSP0X8JOzOzI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Dear Marcus, </p><p>Here, there is one issue, I tried everything to so=
lve the error. May be you can help me to solve the problem. </p><p>=E2=80=
=9CError: rpc::timeout: Timeout of 2000ms while calling RPC function 'set=
_device_id'</p><p>Kindly help me in this issue.</p>


--b1_hinbfiatY8i7AMSTWR6za3Hr6COQLZSP0X8JOzOzI--

--===============5460396468903225856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5460396468903225856==--
