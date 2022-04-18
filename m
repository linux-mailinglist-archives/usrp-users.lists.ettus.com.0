Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E36505A74
	for <lists+usrp-users@lfdr.de>; Mon, 18 Apr 2022 17:03:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 711C93844E8
	for <lists+usrp-users@lfdr.de>; Mon, 18 Apr 2022 11:03:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650294191; bh=PPA47zPpXrVwVhM5MVGyrMwSKPQMBxY6MJcASUVz2Kk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Xe0/cZalt9l1CHwhY+PV5Y7GLhZ6apTrzIX1RyadF+i1FrADq5rGb7ctXXG0i810G
	 4D0ITw1Cz8+eHWe125e029pXKboI4Sufp60C1Pk30oTYjkGYGU8NyYfKMDl6wI7UjS
	 9Aq+QJv8MKo2jpcV3Oo2m4S8ffmVz7IFiZLu6psorf8SyV2wHOQu5U+p5wvmGZvJUE
	 R4dJ9Cnhb0IoIs5Hso4KRCDSMkjX6YxJnKbU0lcz8jiZ6wp43VMi34KPh1zUkeXyd9
	 U59uv/xKZRyWdHdHq5O/t/2Fxcb8cTgNKM/zcNUrffkCAlwzYSn+ydHujKIQ1Jn3b4
	 P4qyV2xARqTIA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EE6D3844F5
	for <usrp-users@lists.ettus.com>; Mon, 18 Apr 2022 11:02:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650294120; bh=r3fi9GR67FiD0Q95MNiVbcqhiWvLcaoEzVJ700hVNmE=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=WWlvle83NNvxNR2xW2d8s/tG+MIWLiJzJwYIB9V+JX61DZXs6ikSnhpg4WSXpgn7x
	 0LMjIXst8mKf6dmHsFvVKDkeMSQ36MGrf/C/UGo3nUt7qMcilSVZjWu3CNO9lrWa7O
	 go0cda0p4M4Qlc/Kk2pqCrLVQwkcuAw4Lkh/QsXjo4gbeeJwiXfVgoeLZmj+fYwtRu
	 uGFghj0YijrLDQw7W2/RjoejLE/9LHkUQPeM21698SGDmVxE1k08+6LHjweU+3b3MO
	 DJPMSxM+UxJphyGiV8E3wobQ2t5Oq2hxfD5glCSlV9OXtLVI/nAObWow1ZpzDYaUcp
	 fjH8qtFC4gWUg==
Date: Mon, 18 Apr 2022 15:02:00 +0000
To: usrp-users@lists.ettus.com
From: vinci.22@osu.edu
Message-ID: <t244ah7Hsn3P8hzGa7NmvplTwcLNIo8Av7kr5gb72M@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: HXdIWyWnO6xtR479R7URL5cHEks26fhb9FcBcWCUek@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 35Z43CJUQ72NAOKD67U3YF2H7V57GU7A
X-Message-ID-Hash: 35Z43CJUQ72NAOKD67U3YF2H7V57GU7A
X-MailFrom: vinci.22@osu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands using two USRP-2955 (X310s with TwinRXs)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/35Z43CJUQ72NAOKD67U3YF2H7V57GU7A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0200069353662138136=="

This is a multi-part message in MIME format.

--===============0200069353662138136==
Content-Type: multipart/alternative;
 boundary="b1_t244ah7Hsn3P8hzGa7NmvplTwcLNIo8Av7kr5gb72M"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_t244ah7Hsn3P8hzGa7NmvplTwcLNIo8Av7kr5gb72M
Content-Type: text/plain; charset=us-ascii

Are there any thoughts on this? The two radios are perfectly phase locked within themselves but have quadrature error between each other. Eventually, after tuning several times, all 8 channels are in phase. I have a feeling I am simply missing a synchronization line.

--b1_t244ah7Hsn3P8hzGa7NmvplTwcLNIo8Av7kr5gb72M
Content-Type: text/html; charset=us-ascii

<p>Are there any thoughts on this? The two radios are perfectly phase locked within themselves but have quadrature error between each other. Eventually, after tuning several times, all 8 channels are in phase. I have a feeling I am simply missing a synchronization line.</p>


--b1_t244ah7Hsn3P8hzGa7NmvplTwcLNIo8Av7kr5gb72M--

--===============0200069353662138136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0200069353662138136==--
