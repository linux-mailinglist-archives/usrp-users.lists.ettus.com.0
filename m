Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6234370C2E7
	for <lists+usrp-users@lfdr.de>; Mon, 22 May 2023 18:01:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E16213809CC
	for <lists+usrp-users@lfdr.de>; Mon, 22 May 2023 12:01:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684771276; bh=mGhs6CY7RSg4auPQgkxj/KBL8KXlF03QAFf9IhV+3LQ=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=014jPHCoMwhhVjt+ro0kZZUDnutitMGtPt+fAdwycPi2loZk4ZPhkA7hkGb9pigJV
	 iHvhFbpnbFcOAIMl7oOGVIrV/1nlGxBdZMeiKPCCNB0lVOZ9p7CUTG+vFI7PhpxUxg
	 R8oDKXpe/F3+kFvHm/tmJijVIeE6Whml4OL+kWdDaFAlnRk6edtOz8EKJClEBB9LN/
	 nQ44kKzLs73lyUWVNUo9qnBYDwHUSEF04U1Jd0CuJjC91Vg/X1TCciMLJrR/ujzSXC
	 NGOAXNDjHJ/bREmOhbxxWIH1m9Q57T28I19bRY4dlJuoj6zjQ4PtCT8Pnj4mX6R080
	 mxkuwqs+Qd4BA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB6A6383C1F
	for <usrp-users@lists.ettus.com>; Mon, 22 May 2023 12:00:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684771249; bh=rIyqH2O+JmSK3T8R4gU5TrGCGMiVVpBudx/ws92mOBs=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Neu2xpfWDWpCkUnLXrlHgxaRmtf2jTpcAIfHXy99BEUzMSL8CHcZiFYm+EKHpU2MJ
	 wToRszDqgo7GOdCeuflDtHtXIEDd2mxJ2D5clwkN5P3o/apJ3seQQTZSJtUqC8MQBY
	 2uuje+CRWTStx3dUrjG7Yj2zQXFVCJ7OaMyX08NScuaeAY8/MSjZl8Ekz4+ICi/M0M
	 rNq8RJRqEtOkhbUw9gQ39LzEfmPVkNkTnZ7X5LqVNyHa8/j4409sf4fYGB7b9yqZHJ
	 e2cfmcHyw7zIOvlhi/h12albxWrX0/SOCMBwaQ2d6eLfBKbw9Bk8C+1DatlIiB5jfM
	 VofGzIixYZkkA==
Date: Mon, 22 May 2023 16:00:49 +0000
To: usrp-users@lists.ettus.com
From: lopsorse@gmail.com
Message-ID: <5K2of8x9g55VdZVseJXyrZDEGlMGfQ7qq7ohwrGqyE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAFOi1A4SqF9HMVqWOR1T7WbLipJasrLZ19fX6dPkdH+JdZw9dA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: KJFY752I3USEYSORYHCEU3ERG5TTZWUC
X-Message-ID-Hash: KJFY752I3USEYSORYHCEU3ERG5TTZWUC
X-MailFrom: lopsorse@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: gr-ettus status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KJFY752I3USEYSORYHCEU3ERG5TTZWUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6358010755507371743=="

This is a multi-part message in MIME format.

--===============6358010755507371743==
Content-Type: multipart/alternative;
 boundary="b1_5K2of8x9g55VdZVseJXyrZDEGlMGfQ7qq7ohwrGqyE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5K2of8x9g55VdZVseJXyrZDEGlMGfQ7qq7ohwrGqyE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99m working with gnuradio 3.10.5 and UHD 4.4, trying to fix some =
issues related to underflows in my package.

I want to create an rfnoc block to replay the data from another custom bl=
ock in the gnuradio-companion, and I want to modify the block messages wi=
th respect to the replay block already present in the examples.

However, it looks like the rfnocmodtool is not installed. Can you give me=
 some advise on how to proceed?

thanks,

Sergi

--b1_5K2of8x9g55VdZVseJXyrZDEGlMGfQ7qq7ohwrGqyE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I=E2=80=99m working with gnuradio 3.10.5 and UHD 4.4, try=
ing to fix some issues related to underflows in my package.</p><p>I want =
to create an rfnoc block to replay the data from another custom block in =
the gnuradio-companion, and I want to modify the block messages with resp=
ect to the replay block already present in the examples.</p><p>However, i=
t looks like the rfnocmodtool is not installed. Can you give me some advi=
se on how to proceed?</p><p>thanks,</p><p>Sergi</p><p><br></p>


--b1_5K2of8x9g55VdZVseJXyrZDEGlMGfQ7qq7ohwrGqyE--

--===============6358010755507371743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6358010755507371743==--
