Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9471B7C6081
	for <lists+usrp-users@lfdr.de>; Thu, 12 Oct 2023 00:44:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BF883850B3
	for <lists+usrp-users@lfdr.de>; Wed, 11 Oct 2023 18:44:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697064256; bh=BZopCJ6qTUiIlsEoSkXNlX39T9MntjMUf+x4t4mr6DA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=UFqn5bPfkl3Rnkju+2RY3BT26EJtSDgED+btcLTtKY4XY1R/yudFWSwPpP77ZUbti
	 HTf9dohR2PH31Mq+jSBGcss4N3eCQl8qmJlzn8VRjYJrpjT5ulEb0r2W695yHNj1zf
	 9BAg82tirl/jpgnZ0cuFt4bMtMN5KtjgCT2SG8eMTY/ugmUumidrG60KQFKkfoIktF
	 4AbN/msQQpyzawcv9JOJej80puUi57UZWAW0g+zOr0lrY0WZAWKTIA+Ax8taJjALEa
	 U11icO8sHdTa811ZCH1brfR/f3pjPWmkiiukMbLb6tkW1jvsD++smtExlwci9LOWxk
	 t+2UccQLkVdvA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C000385040
	for <usrp-users@lists.ettus.com>; Wed, 11 Oct 2023 18:43:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697064217; bh=m3f4V8KTx5b6w/L0gOhmm7V5t58Bud06HM/eGDpK99U=;
	h=Date:To:From:Subject:From;
	b=0KfqrFwQFov6uQ9DBntt6tA+xcw2jufzOJY5N/Qz4kJT5Gx6h0c09mWTlaPHJUHbT
	 gESdV4KvZ4EOl866cTCQrD6Ya8aqWatTakxRqhjhadBDptXMcx6ushoxXgC3+MtCsd
	 LHgK3mVFjK17fyyz8ZXxXLRQeNiL0pgDESunBn3Miclrr1c1vSH7IE2TQ/HBKUDmqx
	 uaglIbJ3Hd8EHP+l+mctXeC8IeB+aqbJrN/GNThOeMiXmqvLGioVspwekdAR4YT8b7
	 HN0vzHXHHzvkz+MyR4eTNy6eVyfW0bQmufW6inbWMMVFYrXofkZw44TnNYrJsU+Rbf
	 soY/T1yHHJowg==
Date: Wed, 11 Oct 2023 22:43:37 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: DFY4UQWWAVCUTTUQPJ7AY3PCD5LUSZOJ
X-Message-ID-Hash: DFY4UQWWAVCUTTUQPJ7AY3PCD5LUSZOJ
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Not all UHD logs showing after adjusting log level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DFY4UQWWAVCUTTUQPJ7AY3PCD5LUSZOJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8446225125358618780=="

This is a multi-part message in MIME format.

--===============8446225125358618780==
Content-Type: multipart/alternative;
 boundary="b1_QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently trying to change the UHD logging settings, however, it see=
ms that when I adjust my environment variables, the new environment varia=
ble does not propagate to all logs, specifically, it seems it does not ch=
ange the log level on the MPM side.

For example, if I adjust the log level in my bashrc file to the lowest le=
vel=E2=80=A6

`export UHD_LOG_FILE_LEVEL=3D0`

I see the console/log file log level adjust accordingly, where now I see =
additional debug and trace level logs.

However, when I inspect the UHD software, I see some logs that are not pr=
inted, but should be according to the new log level. For example in x4xx_=
clock_mgr.py, there is a debug log on line 695 that never gets printed to=
 console, yet it appears it never does.

Does setting the respective log level environment variables not universal=
ly change the log level for all scripts in the UHD software?

Thanks

Joe

--b1_QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I am currently trying to change the UHD loggin=
g settings, however, it seems that when I adjust my environment variables=
, the new environment variable does not propagate to all logs, specifical=
ly, it seems it does not change the log level on the MPM side.</p><p>For =
example, if I adjust the log level in my bashrc file to the lowest level=E2=
=80=A6</p><p><code>export UHD_LOG_FILE_LEVEL=3D0</code></p><p>I see the c=
onsole/log file log level adjust accordingly, where now I see additional =
debug and trace level logs.</p><p>However, when I inspect the UHD softwar=
e, I see some logs that are not printed, but should be according to the n=
ew log level. For example in x4xx_clock_mgr.py, there is a debug log on l=
ine 695 that never gets printed to console, yet it appears it never does.=
</p><p>Does setting the respective log level environment variables not un=
iversally change the log level for all scripts in the UHD software?</p><p=
>Thanks</p><p>Joe </p><p><br></p>


--b1_QS2Iw5JaLCoOu8e3DqFTKyHBvfc6VJGeaPqRRi5CQ--

--===============8446225125358618780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8446225125358618780==--
