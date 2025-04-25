Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97060A9D10A
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 21:03:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F2A9386250
	for <lists+usrp-users@lfdr.de>; Fri, 25 Apr 2025 15:03:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745607811; bh=Aw2xYnBhP1mITAuRlCA3AV5r8RmPmmL25q0tJwjr6t0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rw3JFPgt6N+RBLli79ehfcZ2Kgrj0vAl6BJislKKNa/hr0ruiurAHvh3LtzVK54F4
	 Aq23IMfkMSogUbvtwzQkKd1/dIHeuud6kI6xka7mHXU4oJ18yHPjMmGfJGkUOFGvju
	 l0NohGXLKX3IDPJ7Z5hrVlRXIeTK4gtdlfrkQiyzaGJm4mGSganAO+nAuIWHxxlV2/
	 XjNewRMC96Fs1blssUi6xHPwJhopWZ3fHswAJ9sgyqI5ArDEMn/m92oExtrId6weXS
	 zDlB8eCudV4gARq1tYlW5IVKOVdNd/Nuih4vWeFVZjVnT39hBdMDYFUM2gSDg4wod+
	 3vioOQjcBFLxw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F60D385D96
	for <usrp-users@lists.ettus.com>; Fri, 25 Apr 2025 15:02:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745607747; bh=F9FBreJDdjkdZcU3Zb7ExzXooK9mrUKxX30gv4XuXN0=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=iLNUAUbAJB+wg5pgyOSZfVPW40gRhcbodlaHPOpwR4DTvwl0cZixu+Edou9n7w1aN
	 63lNKdW8A/9ijpEVLFazGgo2RLqESql2KLNM392P5KcGu2rCcY6Pwq1pXxxxwDF+Av
	 7+eu4TVixczulavTaS82kv3YDFTRlEtO8tmcd/0BG0hgVKTfVWXEzekXxE56c0nxF3
	 w1q6pURwM+4/LWgsQ/jaupuBvXvZI6idy6VsitEtNN64c0vQTePscXeFUDZDvjzlW1
	 IXALJLgm8E53PA7mXwLyZqsWP0KYXIsNfi/Uiv7VruMuSXnQvx5zBLdV/dFW976QN4
	 Fo1sTmqPm/fBQ==
Date: Fri, 25 Apr 2025 19:02:27 +0000
To: usrp-users@lists.ettus.com
From: temirkarakurum@gmail.com
Message-ID: <RlRDgZoDbU9DYRJ5N3MqkhYRVVT4269ou8FPOkWbk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a3623d8c-f10a-4b96-acda-ffce28a93007@gmail.com
MIME-Version: 1.0
Message-ID-Hash: LJCF72DCNMTECHH6OOIAUBVOPOJSY6AJ
X-Message-ID-Hash: LJCF72DCNMTECHH6OOIAUBVOPOJSY6AJ
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: max input power
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LJCF72DCNMTECHH6OOIAUBVOPOJSY6AJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0386187617877547920=="

This is a multi-part message in MIME format.

--===============0386187617877547920==
Content-Type: multipart/alternative;
 boundary="b1_RlRDgZoDbU9DYRJ5N3MqkhYRVVT4269ou8FPOkWbk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_RlRDgZoDbU9DYRJ5N3MqkhYRVVT4269ou8FPOkWbk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

NI mentions:\
\
=E2=80=9DThe maximum input power specification of -15 dBm is based off a =
continuous acquisition, meaning that -15 dBm is the max average power tha=
t the RF frontend should receive.=C2=A0**It is always recommended to keep=
 the input signal power level below specification to avoid damaging the d=
evice.**=C2=A0

The maximum always-safe peak input power is 0 dBm, across all frequencies=
.=E2=80=9C\
\
Is not this different from what you are suggesting here?\
\
\
\[https://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA03q000001DqecCA=
C&l=3Den-US\]

--b1_RlRDgZoDbU9DYRJ5N3MqkhYRVVT4269ou8FPOkWbk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>NI mentions:<br><br>=E2=80=9DThe maximum input power specification of =
-15 dBm is based off a continuous acquisition, meaning that -15 dBm is th=
e max average power that the RF frontend should receive.&nbsp;<strong>It =
is always recommended to keep the input signal power level below specific=
ation to avoid damaging the device.&nbsp;</strong></p><p>The maximum alwa=
ys-safe peak input power is 0 dBm, across all frequencies.=E2=80=9C<br><b=
r>Is not this different from what you are suggesting here?<br><br><br>[ht=
tps://knowledge.ni.com/KnowledgeArticleDetails?id=3DkA03q000001DqecCAC&am=
p;l=3Den-US]</p>


--b1_RlRDgZoDbU9DYRJ5N3MqkhYRVVT4269ou8FPOkWbk--

--===============0386187617877547920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0386187617877547920==--
