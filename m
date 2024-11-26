Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0454F9D9033
	for <lists+usrp-users@lfdr.de>; Tue, 26 Nov 2024 02:57:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A97D0385CB5
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2024 20:57:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732586271; bh=Zt4XnWUgbxP3D8vI6Z5SldvhfOei7VlnSflFuMMAByY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PiscS7LHfTzdv1ZUUw6xsU3hwg3G7FmbLyBy7D4MMdb6U3GrASg1kNqFPiddUhPAo
	 unPEF0JEPWLUXgQTVnxQlDMISfedJN3+O+3RhUqT0Zw7CyESQ9KnxNS4h7O6mUqLEt
	 1zyrxIyTbw465oXD8bhhAXpwzxc1eUNjY+81bBv3JG1ViCNptJoxWl5qGHDf+nfV5W
	 FlJx51ItjFMP6GQwvyuxajdfGiQq+so13aPPcPBCuv03R6eEnTmuzSmIJktPfx9GmN
	 4AUiU2VHWqtksmzJqrkHnNui+iIrxEw8JSq0flj9eIjsZOa69lFudybeOYJGklOicn
	 W0c/o7UueCmag==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3A040385C3C
	for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2024 20:57:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732586252; bh=af0uToOck9Ux0ZkPeS25rXOJohljAJbgvetxPDytVbI=;
	h=Date:To:From:Subject:From;
	b=hoLBoZW+CRXA8kHXVkIehiQAqZXfqtyhik5DFR3wcTLqHVDYKIeMB3USCBqAfroMT
	 yw9rZV8nsqmYDZmOBblCTN+DEMpegvZSkMwfZgtpL8iUUSggPOvvy53PeD88Sn9YfR
	 NGPBLaQZEaD7wuwlFmbY3VZ3yyBOpg52wmaKTJyys77dSqd9bngUYLg+h9eNSaCfgo
	 YaS/O4SW7NexrocUgKmUpqeA8lktv4IFuw//iIMV8D6hR+t0HXcD3qokXQSfX4gY5S
	 lawAfgxtOleuRfVR2Y+v6c390Y6iAcXVPMzi0HfuN3jBsNjr/b60GeFOe0gdYXbFdJ
	 BOnhgH9hCu0gQ==
Date: Tue, 26 Nov 2024 01:57:32 +0000
To: usrp-users@lists.ettus.com
From: dhpanchaai@gmail.com
Message-ID: <WKNJrBm2YdpcnK8R7TYTY7tao0Evoqa54RWhFMgKG0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 3U3PTQRELYXHJQJ4AH42SYDJWD25BOWV
X-Message-ID-Hash: 3U3PTQRELYXHJQJ4AH42SYDJWD25BOWV
X-MailFrom: dhpanchaai@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] LED quickly turns back off X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3U3PTQRELYXHJQJ4AH42SYDJWD25BOWV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3556256392568314420=="

This is a multi-part message in MIME format.

--===============3556256392568314420==
Content-Type: multipart/alternative;
 boundary="b1_WKNJrBm2YdpcnK8R7TYTY7tao0Evoqa54RWhFMgKG0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WKNJrBm2YdpcnK8R7TYTY7tao0Evoqa54RWhFMgKG0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m receiving a wide bandwidth signal (\~250 MHz sample rate usin=
g DPDK) on X410 using GNURadio and I notice that the green LED light turn=
s ON and quickly turns back off whenever I have signal processing blocks =
(e.g. filter block) connected to the UHD source block. You have 1-2 overf=
lows at the beginning but the GUI seems to work fine showing the signal w=
ith the time/freq sink plots. Whenever I just have the time/freq sink blo=
cks only connected to the uhd_source, the green light stays on.=20

My question is would the green light turning quickly off be still an issu=
e? If so, any ideas how to resolve that one? I=E2=80=99m wondering becaus=
e I will need to re-transmit the signal again using UHD sink block and am=
 experiencing underflows (not been able to resolve this yet and the red t=
ransmit light doesn=E2=80=99t turn on). I=E2=80=99m wondering if that=E2=80=
=99s partly due to the green light turning back off.

--b1_WKNJrBm2YdpcnK8R7TYTY7tao0Evoqa54RWhFMgKG0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I=E2=80=99m receiving a wide bandwidth signal (~250 MHz sample rate us=
ing DPDK) on X410 using GNURadio and I notice that the green LED light tu=
rns ON and quickly turns back off whenever I have signal processing block=
s (e.g. filter block) connected to the UHD source block. You have 1-2 ove=
rflows at the beginning but the GUI seems to work fine showing the signal=
 with the time/freq sink plots. Whenever I just have the time/freq sink b=
locks only connected to the uhd_source, the green light stays on. </p><p>=
My question is would the green light turning quickly off be still an issu=
e? If so, any ideas how to resolve that one? I=E2=80=99m wondering becaus=
e I will need to re-transmit the signal again using UHD sink block and am=
 experiencing underflows (not been able to resolve this yet and the red t=
ransmit light doesn=E2=80=99t turn on). I=E2=80=99m wondering if that=E2=80=
=99s partly due to the green light turning back off.</p>


--b1_WKNJrBm2YdpcnK8R7TYTY7tao0Evoqa54RWhFMgKG0--

--===============3556256392568314420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3556256392568314420==--
