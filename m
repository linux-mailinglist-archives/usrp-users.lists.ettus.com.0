Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D9A745F6D
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 17:07:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3AB1384575
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 11:07:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688396840; bh=8PEMDfQ4oCeNmdpurGI/99NKn48d9Ysghpt5bRwBgz4=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Q183ueuKTl8H75Am537bSWQ4X5fwOYta/4CHnbsHJT4BbkZ+pPSzVvAQMRgRuLocr
	 diLJXxfkRWfAZcQfUB+P65KzZHIIzDrna0RnwbgZ3A9JT8qrrMoXU232Jr+Gija9Em
	 /ldB1mMEL0yA0E8L0kk91jud8iedhZsqcw0OwstMKHePGA2ZV0g4J+YBFYEjvw1VLN
	 sqZOuxdw2eMWWUjPlVq2ETRue9kiBijskupaDlm6BHV+aTVIJ7gYVcga3tcPZjfkY6
	 imTtp8AwTFxFNgAftMMBeOf6RKsGk7kwI7CVUjUCjdzKUWKw9rpwBUDeFCguEkjrDz
	 v6TzsCN7pfw2g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEE63380953
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 11:06:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688396815; bh=bDBNLZUNag3kWPS66CUw82+F6Jep6zFXvoGHLBH2+Lc=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=b9FSuh7eV9yR96/DZfzR8wzwrG7LJIKp/dPVayvREkryFzeuEPn64ORzPDLkvCy1W
	 Z9q/jEgRZQ9iNRysgWpSTzd/DMZ0SFxfJ2fgvxJXSoLVF81pLHbMj9f0xDemlgz/ev
	 15qYCh6ohC/IX173eoObNccMbglUMuq4KRHCbmZwmStuL8KQ2x2TMrClgFnCmYw8v4
	 3vWC1BcJOfX3pxr35Z7ynGvtkFliGQZjY5FM/NcTWtVbUx6/zmw9EbfU/LET3HakE/
	 lQG0JF3dKVE1w5X6r2NpXXhWJvBntDG7UIwCv0UsX7VwkFNkwN+KNjWC4TB/LOnWbY
	 PALw4lOldwvQg==
Date: Mon, 3 Jul 2023 15:06:54 +0000
To: usrp-users@lists.ettus.com
From: jnunez@cud.uvigo.es
Message-ID: <RotugE5DxhMTuw46FQdmhupeP3NyN0okC59Sc8eJI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 8587005d-f1b8-1c5a-59df-096f27b43891@gmail.com
MIME-Version: 1.0
Message-ID-Hash: P7IGR6SB7YVLXO2PJUG52DFDBLMB3KEM
X-Message-ID-Hash: P7IGR6SB7YVLXO2PJUG52DFDBLMB3KEM
X-MailFrom: jnunez@cud.uvigo.es
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P7IGR6SB7YVLXO2PJUG52DFDBLMB3KEM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8410797934937869703=="

This is a multi-part message in MIME format.

--===============8410797934937869703==
Content-Type: multipart/alternative;
 boundary="b1_RotugE5DxhMTuw46FQdmhupeP3NyN0okC59Sc8eJI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RotugE5DxhMTuw46FQdmhupeP3NyN0okC59Sc8eJI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

But there is only a delay of 103.7 ms between signals and not a delay of =
(4 s + 103.7 ms). What about this 4 extra seconds? Why 4 and not 6?=20

Sorry, I can=E2=80=99t see what you mean in the generated code.

--b1_RotugE5DxhMTuw46FQdmhupeP3NyN0okC59Sc8eJI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>But there is only a delay of 103.7 ms between signals and not a delay =
of (4 s + 103.7 ms). What about this 4 extra seconds? Why 4 and not 6? </=
p><p>Sorry, I can=E2=80=99t see what you mean in the generated code.</p>


--b1_RotugE5DxhMTuw46FQdmhupeP3NyN0okC59Sc8eJI--

--===============8410797934937869703==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8410797934937869703==--
