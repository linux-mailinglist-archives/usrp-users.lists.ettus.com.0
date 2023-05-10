Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F1A6FE837
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 01:54:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0006B38469E
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 19:54:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683762853; bh=3C+uk9eYK9hJzz2C0u7DgMjFJurFRdJIAkKVPxWM+5c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pTGuXeL3FYTCNlMNC1zUGfOn885wP1nzz8xQ6OacKYtzYBW+gogO5Jfzv+YWCb5IP
	 Ngc6vyv0gN3ON/up8RxZfatxsLVsVmArqffl288i/SL0nf3NhHK1uEO1yPJShyyuF2
	 lTXi6B2Q3B4HtLQn50v0obVcUaz/Y+jjwALMW2T9BL7mc/XEOE6J08fTTlrzJlV1Zo
	 qkJlH5xEyfW6ATwnyLLytXTKccBSQGwQhXPwN++VWUszUSwOgKHX9D/ytvg0un2yo7
	 W2NJ+amDl/hzqH/CsbmQyRL920meM/Zw84rUA2ZqmK2Q/Nsz2SQcS/uxWaG5dqn1d7
	 gs28eSMpHJH9w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7DD538464D
	for <usrp-users@lists.ettus.com>; Wed, 10 May 2023 19:53:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683762818; bh=qOcK6P2kag09iDW4Q9ORE9aax1wwPtR+C15ljXWqnGE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=MrkKuuXvJ0B3HOgoy2lGON1mX+zMMCND4sHM3zbhS7D4q1KYBTKH5uovviMxohFKJ
	 1FWSK1HhXYV8JkVJvlsxKoNP1c1fKcvYp35MyeZDj4IztmfdoERZZHvzXostn4vnzX
	 tXbD6rlgpbUx96whj1yKK9dTZvAt55trjbUq1+4mRnQYWcFCOuYQLUj/SOCfrSqQMo
	 vpOU/038mV7ayKdeqcDb1yRBGloJql1wQmH4zYiPVD0FPKjM38+hYJbV4YhqHcgTJx
	 P8UI2/6sXSjWMV9ZLVrgEQm9oFve8HJL6KB7ZpGCa41IboWU5G5tScdAOcX9sA+UNt
	 0yPFcYJ9+92Rw==
Date: Wed, 10 May 2023 23:53:38 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <8tYsnsUgzgVmW2FPzcjO4eXbIQghBPddC92OtaSle3s@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: aN8KeuC4E3O672Jo2nmznuzQT0FxuB0ttHN93gkXk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: BUEAOXDILMGJQS5S22522FVAL6F3S4YE
X-Message-ID-Hash: BUEAOXDILMGJQS5S22522FVAL6F3S4YE
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting GPIO Input for RFNOC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BUEAOXDILMGJQS5S22522FVAL6F3S4YE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7432299581553580496=="

This is a multi-part message in MIME format.

--===============7432299581553580496==
Content-Type: multipart/alternative;
 boundary="b1_8tYsnsUgzgVmW2FPzcjO4eXbIQghBPddC92OtaSle3s"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8tYsnsUgzgVmW2FPzcjO4eXbIQghBPddC92OtaSle3s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Apologies, using the radio_control did in fact list a GPIO bank, it is ju=
st listed as =E2=80=9CGPIO=E2=80=9D, not =E2=80=9CGPIO0=E2=80=9D or =E2=80=
=9CGPIOA=E2=80=9D

--b1_8tYsnsUgzgVmW2FPzcjO4eXbIQghBPddC92OtaSle3s
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Apologies, using the radio_control did in fact list a GPIO bank, it is=
 just listed as =E2=80=9CGPIO=E2=80=9D, not =E2=80=9CGPIO0=E2=80=9D or =E2=
=80=9CGPIOA=E2=80=9D</p>


--b1_8tYsnsUgzgVmW2FPzcjO4eXbIQghBPddC92OtaSle3s--

--===============7432299581553580496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7432299581553580496==--
