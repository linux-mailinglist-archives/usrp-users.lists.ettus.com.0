Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 784E898EB0C
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 10:07:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 87FE33857D1
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 04:07:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727942829; bh=BSix8EqtijmOv/PDUlwQJmZLNpH9pHiHijxXx9wbMYU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LMR3XT7/tvZkvMxxg609bC7dmQGBRraLy13KUVaToWH6bQJl6Y9v4iwUJ50ndMVLG
	 8PFXCC5oFHb5X0cI6MPI5q5oK23dkSuxA1FuP2FB9RIjoni/gCNEju6GW5ufEk0jFF
	 XvSgBhj/qWDfNklzS3BnQWrUe9ixOiYQ1v07lqoHw0aPe2tMIkH89zEVsP73xmTSBt
	 0sVZSVFeNMWgNspHm4Etc+ZsdvgeL/CxymFz9fXBtGN+K3+ZDLx3cuv+Mbo3n6tKwg
	 kgbyth1/GHYq/UdiRl+hZt8eDHSRpWRV1XiFoxX8TnyTshqbtMW7sr80JkFL3tVBxC
	 pJJr7umRLGLnQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 89B8A3857B2
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 04:07:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727942825; bh=sxFL2hzuudz7t0kNqMcBTMuVVajPfUgIO5y6q4FQaXw=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=j4K8/MzSVroHspqmpVvNei5Vs+H4qa7DTtUQAdM02CDb0gkbLq2QaUeycW5P/m4MN
	 BL7jhj1K6xns2ZUr8S7wgdtXqm4gTCkdFcX4kzqEB3yVG2hLWftyl5TX8gyWnszYPT
	 Gtuh1XPOieWtF6BkHnQKnQoJf+aiNq2KrTogmSqc2WU33k2nc1GYUkZZhFw87DmR7f
	 azfzzeiaL7ShEMXnlAFCn9FHTGdEvxLqKAJClUFXLWAFEQH5LN2I6hryMgE63NqGLg
	 TFzi3ZTJOkiXy19cWJf1cC5PSQ82m+pQXptS2W0tUDsEBbUcOxUQKqGoeD9/1vvHEA
	 kskQNyTYUrFFw==
Date: Thu, 3 Oct 2024 08:07:05 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <iMan4OLWVYET38UBwW8cl0h7XHnCvA8T0TWKagcVew@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: km6r0kYO6dXkLQlHrZ4BPY4r94e0lFo1dgB6GwMk@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: RY667LRDAYLTDRZE5ZCRFMDPPFV22Q7B
X-Message-ID-Hash: RY667LRDAYLTDRZE5ZCRFMDPPFV22Q7B
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: KAS kirkstone build of ni-titanium-rev5 on x410 with Vitis-AI Library and DPU drivers: Mainline kernel incompatible with zocl DPU driver; possible to use linux-xlnx kernel and make titanium-related additions?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RY667LRDAYLTDRZE5ZCRFMDPPFV22Q7B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4605236887192074323=="

This is a multi-part message in MIME format.

--===============4605236887192074323==
Content-Type: multipart/alternative;
 boundary="b1_iMan4OLWVYET38UBwW8cl0h7XHnCvA8T0TWKagcVew"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_iMan4OLWVYET38UBwW8cl0h7XHnCvA8T0TWKagcVew
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mike,

I can see that one thing have changed since I did that patching. At the t=
ime most recent linux-xlnx was based on linux 5.10 and USRP X410 used 5.1=
5.

Now the situation is different: most recent linux-xlnx is 6.6 and USRP st=
ill uses the same kernel.

Of course you don=E2=80=99t have to rely on most recent linux-xlnx kernel=
, but just the version for which DPU is supported. But it=E2=80=99s addit=
ional factor that requires consideration.

Best Regards,\
Piotr Krysik

--b1_iMan4OLWVYET38UBwW8cl0h7XHnCvA8T0TWKagcVew
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Mike,</p><p>I can see that one thing have changed since I did that =
patching. At the time most recent linux-xlnx was based on linux 5.10 and =
USRP X410 used 5.15.</p><p>Now the situation is different: most recent li=
nux-xlnx is 6.6 and USRP still uses the same kernel.</p><p>Of course you =
don=E2=80=99t have to rely on most recent linux-xlnx kernel, but just the=
 version for which DPU is supported. But it=E2=80=99s additional factor t=
hat requires consideration.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_iMan4OLWVYET38UBwW8cl0h7XHnCvA8T0TWKagcVew--

--===============4605236887192074323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4605236887192074323==--
