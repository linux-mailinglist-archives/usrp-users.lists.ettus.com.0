Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F056C5945
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 23:08:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 811FD380A36
	for <lists+usrp-users@lfdr.de>; Wed, 22 Mar 2023 18:08:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679522897; bh=IV6p8nwZG9JiUbcqS4ol5l4hunDaKpIaLbU/HoMS+Xg=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Uqq3Z+RVQ+hMd4+v0cWhlalzhYLq58PccG84QHcJk+EKdU4AgPWBVUP0Aisuiq3j5
	 3zNX+qr66333Mi5XjQiNQuEI796baJdH+HjAxk0BmcrBwne3LHKKc5nTxtqZHwCdhc
	 3fSrW6Dr9OwtUHUNp40nojhIgg58Y8pd4aUI3/YSQONp+NmLLWZxjs2lzDI0o11AnY
	 zMoNroQAMslgZ3Y+AkV2hVFGilRX6yQVGMczK2asGqS+QVfIUt0vdxD876srLYx8QA
	 ZOn+0OvAHYMulHjsaZE/JtYGR9XP3/kDq1/sbGD2TsBh/7kYfEYUqWW7U4K72ZZY5o
	 oqH8FuqTipaIg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B71A38097E
	for <usrp-users@lists.ettus.com>; Wed, 22 Mar 2023 18:06:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679522789; bh=UzWgasAEy0v3Bi19YV4KkyEWSBEzWH3JEfH5U1sXgZk=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=SX8YCjyol0iY33243bDEttumztouNlOAZOcxHYhgIoAWEsZge71M0dAqNejzcAC42
	 PF+VXiWZdvurN8tVwhJpRDQ9hf/XT4DCsIUjOrk+bq6LLd//Y0PV25JHsfLc6k6evv
	 DD7SpG11pfGmzpSxbwmkAc0YGuY3okw7MMD23Kwn4oRaBdZKjmJA5+VJU1Cjb3uzAQ
	 4opVCO4gYelvXN4gNfJjYB0W94pqwfdcn8k5ijcRk/LpCcOREKf5JxM6Hqb0EZYGMu
	 TjJBzU0yJXe/vDYwAQ97fSuBED4N0i1uQEHwjux6c+GTPmbNtgjuDQNktudJ1pfP53
	 OCVTgbu6+39mQ==
Date: Wed, 22 Mar 2023 22:06:29 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6c269307-bf72-6c84-593f-d447d77e00c5@gmail.com
MIME-Version: 1.0
Message-ID-Hash: E2FVFXXLEXIPIZI2CKBLKVFEX6YNMYP5
X-Message-ID-Hash: E2FVFXXLEXIPIZI2CKBLKVFEX6YNMYP5
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recovering signal from IQ
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E2FVFXXLEXIPIZI2CKBLKVFEX6YNMYP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3178156750739044088=="

This is a multi-part message in MIME format.

--===============3178156750739044088==
Content-Type: multipart/alternative;
 boundary="b1_3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY
Content-Type: text/plain; charset=us-ascii

When the frequency is called back, it gives back that it is set to 100 Khz. The lowest it goes is 5 hz.

--b1_3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY
Content-Type: text/html; charset=us-ascii

<p>When the frequency is called back, it gives back that it is set to 100 Khz. The lowest it goes is 5 hz.</p>


--b1_3nMG7rhWUC5MOs2HfLHD9SywiXtKSG18L1hU5uSb3JY--

--===============3178156750739044088==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3178156750739044088==--
