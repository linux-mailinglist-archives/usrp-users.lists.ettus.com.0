Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1337F6FF769
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 18:33:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7AD4038462F
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 12:33:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683822803; bh=BG5gupPIogtSaOBHMZU7Y/GjNbC64e8G8RJEBVr878Y=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tx1h+JigHKFmKskzD2szfqsGC2wV9o5alTr3vZLrPIwE9bcHOaFcyHHeEz4xRX3ZL
	 bjCp3sb6Fa4Ov+73Iep7cWYDqTMZB9l1oE+ywJhzGyg4N3t1V72lhM6QoWNVCRnj/I
	 KMi/Nu1GfkvDF7uiN5RMqrrKEIPCUic46P1y3cgEioTlieV8M7lUKCBk+u46Qdsia6
	 QejiLoBitsE/4hnq+SDlDFYYmb4qBeiBPfVh7/r4PS9qavgbgCHJEEqwY9MC+14Srv
	 zBKH4IaGGyxXsdomdxnTrRUQ/84yn9P4Go9WIZcA7Cwmg8jb5qAyM3L5eIe7svU+yA
	 tKX7nB8Kk842Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D9918384555
	for <usrp-users@lists.ettus.com>; Thu, 11 May 2023 12:32:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683822762; bh=myHdClYf+GYNVlaysqoaM62G+IPGBComgWfxNNapsJQ=;
	h=Date:To:From:Subject:From;
	b=zxAd7n+xgo5Y4/1S9tgrXYljo8OSpaiGUwWhMserHlpDJCiGYeQ8x6bwca4neOOuB
	 6QHLJcBXWsKgDbjWHfyjadJmRBrdjEvP5VghrZLgVhp8jx9nnPMe9LnYksJcQQIToL
	 tmO9K/PvqmAjrb0Mcq0fnofQygbbMRke2iTsipzy5eGRG9JsBihpFRju31kNzKdkCm
	 jeVMBjWYiSi6zXFX3Wnn0lJChV3P6vnHN16xkX+AlGctxnASav3TEvm2lb6zM3gdpa
	 mjkeqa2p3zaxM7LYwgKTEKKrNsVvM0KsYz3eDACo7DKTMgHghD+K18/Cwco1kKIL0M
	 9r0OgM5Rr2RSQ==
Date: Thu, 11 May 2023 16:32:42 +0000
To: usrp-users@lists.ettus.com
From: david.fernandes@viveris.fr
Message-ID: <8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: JDG5VY327NXZLZ5TF3Z3ZCDTWMMBWTEW
X-Message-ID-Hash: JDG5VY327NXZLZ5TF3Z3ZCDTWMMBWTEW
X-MailFrom: david.fernandes@viveris.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Minimal sample rate with X310 ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JDG5VY327NXZLZ5TF3Z3ZCDTWMMBWTEW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5009650769073152293=="

This is a multi-part message in MIME format.

--===============5009650769073152293==
Content-Type: multipart/alternative;
 boundary="b1_8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I would like to transmit and receive with a sample rate of 280KHz but whe=
n I try it, I get the following messages  :

\[WARNING\] \[MULTI_USRP\] The hardware does not support the requested TX=
 sample rate:\
Target sample rate: 0.280000 MSps\
Actual sample rate: 0.390625 MSps

\[WARNING\] \[MULTI_USRP\] The hardware does not support the requested RX=
 sample rate:\
Target sample rate: 0.280000 MSps\
Actual sample rate: 0.279330 MSps\
\
So there is a problem specially in Tx side. I have understood that the **=
master clock rate must be an integer multiple of the sampling rate**, but=
 the only clock rate values working with the X310 are 200MHz and 184.32MH=
z which are too high to be able to use a sampling rate of 280 KHz.

Is there any way to use a sampling rate of 2800 KHz ?  I am forced to use=
 the UHD version 3.15 for other reasons but when I tried the UHD version =
4.1.0 I didn=E2=80=99t notice this issues.

Thank you very much in advance.

--b1_8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi everyone,</p><p>I would like to transmit and receive with a sample ra=
te of 280KHz but when I try it, I get the following messages  :</p><p>[WARN=
ING] [MULTI_USRP] The hardware does not support the requested TX sample rat=
e:<br>Target sample rate: 0.280000 MSps<br>Actual sample rate: 0.390625 MSp=
s</p><p>[WARNING] [MULTI_USRP] The hardware does not support the requested =
RX sample rate:<br>Target sample rate: 0.280000 MSps<br>Actual sample rate:=
 0.279330 MSps<br><br>So there is a problem specially in Tx side. I have un=
derstood that the <strong>master clock rate must be an integer multiple of =
the sampling rate</strong>, but the only clock rate values working with the=
 X310 are 200MHz and 184.32MHz which are too high to be able to use a sampl=
ing rate of 280 KHz.</p><p>Is there any way to use a sampling rate of 2800 =
KHz ?  I am forced to use the UHD version 3.15 for other reasons but when I=
 tried the UHD version 4.1.0 I didn=E2=80=99t notice this issues.</p><p>Tha=
nk you very much in advance.</p><p><br></p>

--b1_8Mh9f914K4i9wEzfygSuelQ4BRcQWbKoBzoaNOcfPYM--

--===============5009650769073152293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5009650769073152293==--
