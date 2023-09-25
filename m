Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1AD7ADC4F
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 17:50:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 480E3381074
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 11:50:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695657027; bh=olH1IyL+frPQn6dsW0mT4EkFef9gY//8SWn6nYpbIG8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lrbQNPf3kBGHmcR7Z+fsZ3R5QhVLWuPUyaC6QVJGbfP0G2kYUYby34taL7pjQE5IK
	 vFtq4iH3LkOLXm7Rrg0UTeeti1z8jdxgwgxNjVu4WXvbKjbiLxRdSxiWoffVKROP6C
	 pEHlLjLTilFMUcabsxICGd7Ps//uESP9Olop3IlDAAMm+GsUTNWWQ7Xzc6P53xOmO3
	 XRSbydWbCrQeP/Z+HQTomaDaVqWA195OAbh4DbAew//mYYngwbyFPPGtKyIDTjslmf
	 O5/G2l+ycn/yaBi089ztNsiAKeN5R5EWrHoer6Fy1f1AyXKb5PxIPPcluyYVL8tbpk
	 +OV9JDWlExScQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44634380BD1
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 11:50:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695657023; bh=Ban9642u4rOXDQ1nDgSiiVFI0LcLlLg2HmVEs7+zBQI=;
	h=Date:To:From:Subject:From;
	b=wW1wt64BPzHMldO4j+0b8Cz5eWTltFWM8wBNvT41urI/ZSzqN/GsRRcWYDN9kUnRG
	 4zSKhFezgs7aLAiEO0i6hnYT3ZANpeiLO0cf0E2HYvAeA4TANQFt06tf9D5taVZSdw
	 xGRF7yRxkKy0Cyz+7i93H2zxAj8yRIyV32VvvRHSjUVlQAyDKasR9oKvQ9wXdhsjk5
	 hU0h3UoSoWSKBNQ0brSH7WM0ElthZCjPM8v5lv3go5ZQe0yCbbU2QeiqJKI5nbkPso
	 rlK7WhMYUZlO3kz4q6YUOmIg1naUU+bavUJ3TKFDH5uchCDHWyznMznoCQd0xfC0GK
	 6/RWrf9swot5g==
Date: Mon, 25 Sep 2023 15:50:23 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <uAnvROOF6It3wgEUpWWxCRsobOCWW5NUI860hZOM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 6VDP5CM7Z3WB5TXN6BS5ZFS77YSDA7Q5
X-Message-ID-Hash: 6VDP5CM7Z3WB5TXN6BS5ZFS77YSDA7Q5
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Ettus X410 Power Error State
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6VDP5CM7Z3WB5TXN6BS5ZFS77YSDA7Q5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3903204468199162795=="

This is a multi-part message in MIME format.

--===============3903204468199162795==
Content-Type: multipart/alternative;
 boundary="b1_uAnvROOF6It3wgEUpWWxCRsobOCWW5NUI860hZOM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uAnvROOF6It3wgEUpWWxCRsobOCWW5NUI860hZOM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

My x410 has a red power button led. The docs say this is a =E2=80=9Cpower=
 error=E2=80=9D state, but it does not describe what to do further. Does =
anyone know how to recover the device.

Thanks

Joe

--b1_uAnvROOF6It3wgEUpWWxCRsobOCWW5NUI860hZOM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>My x410 has a red power button led. The docs say this is =
a =E2=80=9Cpower error=E2=80=9D state, but it does not describe what to d=
o further. Does anyone know how to recover the device.</p><p>Thanks</p><p=
>Joe</p>


--b1_uAnvROOF6It3wgEUpWWxCRsobOCWW5NUI860hZOM--

--===============3903204468199162795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3903204468199162795==--
