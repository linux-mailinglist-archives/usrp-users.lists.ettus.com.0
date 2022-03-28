Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 853AD4EA270
	for <lists+usrp-users@lfdr.de>; Mon, 28 Mar 2022 23:33:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 712CC38439A
	for <lists+usrp-users@lfdr.de>; Mon, 28 Mar 2022 17:33:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648503181; bh=HtMZNSGw2wADVflyW8A5v2hL2U4fsxRt39k9Jq8JsiE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=N1S3SIDWj94nmH9YUJrO5mGpl1Ufkd75Yy9xxVG0Gh6FlyTnbFxqDV7mlq8ZxyGrH
	 uN3NaFiHPKzBYow4wboLIAyz+qd4KkScslUlTndrL6DkqZMzT0xqx2n9h4arlBOkg2
	 bsW/LTCKS2YcJOroAg4dHr//dqVAPa5ePiIzj2XzpDuxJ3m1TdKsQ4BUHqlgX1oqvw
	 IesDWSVqitu6ibjQnbyDwTojwI7MkbB9hVJG0G8IX2PPbtInqNo2UBi6NMCvvbjzqA
	 5gRz42YVuqghfAy17AprgGmvwKPLSTVOB/Zx1/WrjZ4dfpCBD/U8bTJQI1Dgqze7QV
	 g5mLvG1xafxSQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8ED61384375
	for <usrp-users@lists.ettus.com>; Mon, 28 Mar 2022 17:32:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1648503122; bh=C7fE7WEwnL0kQG3lIkthbVbCauNj48ixQoOzEqLD1po=;
	h=Date:To:From:Subject:From;
	b=oLjf3WaIW19WUuAqYw2OM0iGTCvud8uLifZXpaDLcTlVv8AfSDlT+40OQq58VmOni
	 dKLuIMSbDjoUrsunjGBhlEisU7YNMW4rlkbOutAwLuMFmJHKUgYpb6lclJD7PRzqrc
	 3S4IM2kmN2lXSNsqGbQca7AdKILUNkPppklPzwHxljK4h0OXfg561SMu+zbe4bIX3m
	 vFLQxi6AABEflQbWooBjdz1GlJf8Nsa1moCqunUYXbIbJY2RVcljt/Y0FsVnBU9yug
	 a1XsU64KG5cYve345dztPOPzvVUEHw7Yh54zJgbdJkRMT4aGmIkz83LjcokdKSBuZL
	 LUPHeIFtDLqxw==
Date: Mon, 28 Mar 2022 21:32:02 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <UqyP0dluXKcvxZCZtNIuPSCvZPQKc7h5nFrpCogQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: SK74SM3OQ2LC642KRDGGXZAUO6YCZGNR
X-Message-ID-Hash: SK74SM3OQ2LC642KRDGGXZAUO6YCZGNR
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Apply transmit scaling factor
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SK74SM3OQ2LC642KRDGGXZAUO6YCZGNR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0491588898746689832=="

This is a multi-part message in MIME format.

--===============0491588898746689832==
Content-Type: multipart/alternative;
 boundary="b1_UqyP0dluXKcvxZCZtNIuPSCvZPQKc7h5nFrpCogQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_UqyP0dluXKcvxZCZtNIuPSCvZPQKc7h5nFrpCogQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is there a convenient in the UHD API to apply a digital scaling factor be=
fore transmitting a burst?

I have a C++ application and X310 attached to a beamforming antenna, and =
I want to account for the scan loss. I know there are a number of ways to=
 achieve this, such as handling it in my own software or likely using an =
RFNoC block (although I=E2=80=99ve never done it before), but I want to k=
now if there=E2=80=99s an easier way first.

--b1_UqyP0dluXKcvxZCZtNIuPSCvZPQKc7h5nFrpCogQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Is there a convenient in the UHD API to apply a digital scaling factor=
 before transmitting a burst?</p><p>I have a C++ application and X310 att=
ached to a beamforming antenna, and I want to account for the scan loss. =
I know there are a number of ways to achieve this, such as handling it in=
 my own software or likely using an RFNoC block (although I=E2=80=99ve ne=
ver done it before), but I want to know if there=E2=80=99s an easier way =
first. </p><p><br></p>


--b1_UqyP0dluXKcvxZCZtNIuPSCvZPQKc7h5nFrpCogQ--

--===============0491588898746689832==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0491588898746689832==--
