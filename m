Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CBA894D1F
	for <lists+usrp-users@lfdr.de>; Tue,  2 Apr 2024 10:05:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84D4C384DA3
	for <lists+usrp-users@lfdr.de>; Tue,  2 Apr 2024 04:05:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712045102; bh=8rk3uiu9FLMU/G/+pMtFu4wLUlvf3vy31+rTQ0lzDeA=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=z5IFsvfr7xtO31yCDaSpoUNAv7nMrwKiqTOX+RvjQ5W1G4k8ODUVFPcJsmbKbuQ7N
	 lNzSR9gMEHl1Jk1OGB8A7Kn0r5CUJF8A9oyEkgU+NMyiZHlVAPsr9RiBHTFkh2+1sF
	 GbqoPqZ078C/C/so4xTsZqrrbeAg7DO6dNO8hKlUaGHhNs0PkMGhJsfsTtW1fgKc7T
	 fAnRszT1PUbeA16B7Qwjo5DO+Cb4JzFsDernkx99DVE0R51jjt82LyhnFVafsKOhfO
	 +3xZslCiMTrR+FAbqqP7oMsYHqpVM5j9ZETp/bmzk0PTiGaihFiNytfojGg+cfic/K
	 2lcoovrdCFcLQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34D0A384C06
	for <usrp-users@lists.ettus.com>; Tue,  2 Apr 2024 04:04:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1712045061; bh=KZk2VZfKSC0M9GA5vqI+2m9L0MYMF+SxV3U15/IuZis=;
	h=Date:To:From:Subject:From;
	b=yhLwwLbsL5/7RaPNsDejQTqEQjIFYWcm+xj3O5N+CJCk+DBBQ+/+nMFSw0rPjzmCi
	 9Uehlazkto1T3cNCx11+/kf4PCZ9csNPi35mmDTVD1OaRKtqc2GAoDlKQ98WZ7fSNV
	 YRa72YpNNwC8+jlOFoTZgBDqTqnDzXyshTNwS50+kohod/Jgm/p4a5bFU0FTh8pL2m
	 zGsIVcEzwiN833myKe0C3+ohnuFGJY0GYyyyJ0LkMcj58MWsAIg+T95o3wJT7yrhl3
	 XxLKp0uYq7xlLmtkv56rZUJ0qPdLrXUn1Ew3u4RiahFMwmIeFPCeETkcmuZMGKxHxI
	 VFUBjCtngr2wQ==
Date: Tue, 2 Apr 2024 08:04:21 +0000
To: usrp-users@lists.ettus.com
From: djy@hawaii.edu
Message-ID: <EB7DsS1z7TZgvmq1E0rqYp3RupdOH6OgQGXODTK4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: NPRS5WZBAQF3FQ37HFYIZTU5WGJMS3JE
X-Message-ID-Hash: NPRS5WZBAQF3FQ37HFYIZTU5WGJMS3JE
X-MailFrom: djy@hawaii.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Issues running generated GNU Radio ".py" file on E310 (Embedded Mode)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NPRS5WZBAQF3FQ37HFYIZTU5WGJMS3JE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0838772513649938129=="

This is a multi-part message in MIME format.

--===============0838772513649938129==
Content-Type: multipart/alternative;
 boundary="b1_EB7DsS1z7TZgvmq1E0rqYp3RupdOH6OgQGXODTK4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_EB7DsS1z7TZgvmq1E0rqYp3RupdOH6OgQGXODTK4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m trying to run my =E2=80=9C.py=E2=80=9D file that I generated =
from GNU Radio (Host Laptop) onto my E310 (locally via SSH@root) but I'm =
getting a error saying:

"ImportError: No module named gnuradio".=20

I=E2=80=99m currently using a newly flashed a SD image (e3xx_e310_sg3_sdi=
mg_default-v4.4.0.0-rc1). From a version check it shows that both UHD and=
 GNU Radio is installed on my E310 image. But for some reason it doesn=E2=
=80=99t recognize the gnuradio-companion command on terminal. Is there so=
mething I need to make this work?=20

Current E310 Info/Version

SDR Image: e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1

GNU Radio: v 3.8.0.0

UHD: v4.4.0.0-0-g5fac246b

--b1_EB7DsS1z7TZgvmq1E0rqYp3RupdOH6OgQGXODTK4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m trying to run my =E2=80=9C.py=E2=80=9D file that I generat=
ed from GNU Radio (Host Laptop) onto my E310 (locally via SSH@root) but I=
'm getting a error saying:</p><p>"ImportError: No module named gnuradio".=
 </p><p>I=E2=80=99m currently using a newly flashed a SD image (e3xx_e310=
_sg3_sdimg_default-v4.4.0.0-rc1). From a version check it shows that both=
 UHD and GNU Radio is installed on my E310 image. But for some reason it =
doesn=E2=80=99t recognize the gnuradio-companion command on terminal. Is =
there something I need to make this work? </p><p>Current E310 Info/Versio=
n</p><p>SDR Image: e3xx_e310_sg3_sdimg_default-v4.4.0.0-rc1</p><p>GNU Rad=
io: v 3.8.0.0</p><p>UHD: v4.4.0.0-0-g5fac246b</p>


--b1_EB7DsS1z7TZgvmq1E0rqYp3RupdOH6OgQGXODTK4--

--===============0838772513649938129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0838772513649938129==--
