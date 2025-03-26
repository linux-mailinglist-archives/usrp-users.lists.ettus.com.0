Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2C6A71486
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 11:14:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE0DE385896
	for <lists+usrp-users@lfdr.de>; Wed, 26 Mar 2025 06:14:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742984084; bh=9gGvk5uHV8zEkeFnjfFCSkRB70XytxlmIxZsiUb81Sc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=So9WwJrdb4gFflV1UDWA4frvczzGSEvgJt/I56J95i8cs2wqV72dWRE5COvpk2Xdu
	 51/4ovnuf4kZfX9taIVRVOXFnFnKq5/AUmJx6OpxseZr8eIXlRYpBCEhhaP6Q/1QlI
	 RnwuWrPfdZf0YdzWYg56e8lsNixoR/1fKrlUStAlfhTA9vXVKArnBo7EQm3/pYdU+E
	 aWJeTdUaXpklkP2vDQVlzuNAUhD95Jb/OkNnd0ldUhRwEZeEGVo7HzfY5ObLQy//iW
	 zTrPoMMWIabSAiUhO9mQfLNUBEWR8HIKKcuc7PXLNNav57I/lGzoXw+dl5U9d8TMOZ
	 tZb0wkFpn6JHA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6497E38534D
	for <usrp-users@lists.ettus.com>; Wed, 26 Mar 2025 06:13:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742984027; bh=7DkH9QQeWkuBNVDzkOHodDxJB2pTmQxdfwJQrEUQHH0=;
	h=Date:To:From:Subject:From;
	b=Q1afbiRK3Aps5Wr31oOR6rhs0lkI6wNoPy52fsXvLJtCrrClQlVNql5moKYAWyOd1
	 6b3/YWCXdPtn4ipHXAHbJxjccSHyfsL/j6ujV8O0mTJXCKNe/moN8s/bY0i89xIUXO
	 FuUx0sHpIzGAxxG9WeXfsjL+BJBv/m3mVNWfOGZppFO0Uo3XlZQnETDWMyIxkewuhd
	 eTzHnilSgTVeQdd1Uph63Sxc+V4XiaKyX3NAbl+r27SDLNz38RtP1imh5GD4227Y4w
	 0bkrkb1Dw6FkJKrrKrTa/UxQulFSFDsgYvk/7LAdY9ttok7Xe9E2zOcDXbU/nlbr4S
	 TnnMfMTBqzRMw==
Date: Wed, 26 Mar 2025 10:13:47 +0000
To: usrp-users@lists.ettus.com
From: je.amghar@gmail.com
Message-ID: <buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: HSA2HCPG6LVO26VU5HEO7YDGUEDZ4OVZ
X-Message-ID-Hash: HSA2HCPG6LVO26VU5HEO7YDGUEDZ4OVZ
X-MailFrom: je.amghar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [X310] set_command_time introduces unexpected delay dependent on sampling rate.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HSA2HCPG6LVO26VU5HEO7YDGUEDZ4OVZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8223555325171660915=="

This is a multi-part message in MIME format.

--===============8223555325171660915==
Content-Type: multipart/alternative;
 boundary="b1_buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm using timed commands to set the RX gain at a precise moment with the =
following command:

set_command_time(md.time_spec + uhd::time_spec_t(0.02), 0);

However, I noticed that there is a delay between the specified time and t=
he actual time when the gain is applied. This delay is significantly larg=
er than the component latency responsible for changing the gain and appea=
rs to depend on the sampling frequency. Specifically, the delay is approx=
imately 20 samples.

I=E2=80=99m trying to understand why this delay is much greater than the =
expected component latency and why it scales with the sampling frequency.=
 Any insights on this behavior?\
\
Regards.\
Jamaleddine

--b1_buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I'm using timed commands to set the RX gain at a precise moment with t=
he following command:</p><p>set_command_time(md.time_spec + uhd::time_spe=
c_t(0.02), 0);</p><p>However, I noticed that there is a delay between the=
 specified time and the actual time when the gain is applied. This delay =
is significantly larger than the component latency responsible for changi=
ng the gain and appears to depend on the sampling frequency. Specifically=
, the delay is approximately 20 samples.</p><p>I=E2=80=99m trying to unde=
rstand why this delay is much greater than the expected component latency=
 and why it scales with the sampling frequency. Any insights on this beha=
vior?<br><br>Regards.<br>Jamaleddine</p>


--b1_buPmixowFqBNjcHYfLX6r17HUMSoFxZbBs7YZTE1mIg--

--===============8223555325171660915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8223555325171660915==--
