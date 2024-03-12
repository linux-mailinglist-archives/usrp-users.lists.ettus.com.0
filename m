Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F14C879CB0
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 21:12:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C6F2384B7C
	for <lists+usrp-users@lfdr.de>; Tue, 12 Mar 2024 16:12:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710274342; bh=JxD/AVzfHnhbXbXh8iex1T6vGsGoVoCGLyFipU42VIM=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=t+3VBFw+NbgHNxusasiCOEH7MrQ3dhhYDmkGUJJ+pHaye0vXS/EHXgS2MFbgX0FO/
	 pNmEMNMNml1y+mrRhasQjHZJZkmX7XEGrWcMpONxJnkpAi4uWQKaL8xxknpFDG2vij
	 +N8S+2fnVN06cfcZ+SanP5v3Q/8DYXKdUpvZu2deaR9ab7G/y03v8PusAXMSrQsthp
	 u30icjyHRCCGtYWS1HdG13xTq1LFXIaAP5v5U9TryISI2IlH5MUZ5sm4saOKxXtEju
	 +boNQ6zwnuGQl/gwJpSNPHyTSCtwI7V2H1Nyx2H5BYY/HsixUl3c20Vd4iPA+/CqAo
	 1KREQe+jA+Euw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A7148384E69
	for <usrp-users@lists.ettus.com>; Tue, 12 Mar 2024 16:11:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1710274305; bh=OSXzjLusCFEayFdZr1o17z+24UDt+jJHRujpEG8Oj44=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FO5fG2PwCqj+BBPDLNekOBLF49rOnq78gi1/tnoLRCYkqybC35iJOkfDQdEjnEb5k
	 CItOHi0wOOKOxgwr/Jh+592GPrP1iZ/x2uwosKskC97VYNg6C0HsR3X+ak9o6V4uqb
	 e64WDxtmPwvzEqaCeLEVdndfzljpoj/f/0AXpi0xUqThG4Ssy00gMS3ePshX4j/HWL
	 O65YB0stXsvK8kGrL+rGA/NayDSo9NsIWuLpVoCvo3zGIPapun76rfABpgwb9Z9ZFe
	 yvoi7R55D6s9oRkN/iuXviFEIs2sX4Qp+eel3we6qgsQKUAhr8/QAwg3Jziwvca8cP
	 F6Egz6MT/GWQg==
Date: Tue, 12 Mar 2024 20:11:45 +0000
To: usrp-users@lists.ettus.com
From: zackkomo@utexas.edu
Message-ID: <bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: e740d276-afd3-4cb2-baef-a5317ced161f@gmail.com
MIME-Version: 1.0
Message-ID-Hash: PJWVI6FWSX3RGMXHJKKT2V5RAEK3C5BF
X-Message-ID-Hash: PJWVI6FWSX3RGMXHJKKT2V5RAEK3C5BF
X-MailFrom: zackkomo@utexas.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Extending duration of high-rate captures with the X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PJWVI6FWSX3RGMXHJKKT2V5RAEK3C5BF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8659681482795402096=="

This is a multi-part message in MIME format.

--===============8659681482795402096==
Content-Type: multipart/alternative;
 boundary="b1_bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Rob and Marcus,

Thanks for the responses! I have a basic understanding of linux, but am n=
ot very experienced. I tried the following to create the RAM filesystem:

```
sudo mount -t tmpfs -o size=3D8G tmpfs /mnt/tmpfs/
```

```
sudo mount -t ramfs -o size=3D8G ramfs /mnt/ramfs/
```

And ran the rx_samples_to_file, once with --file /mnt/tmpfs/test.bin, and=
 once with --file /mnt/ramfs/test.bin, both times still getting o=E2=80=99=
s for overruns.

By my calculations, at \~500 M complex samples per second, each complex s=
ample 4 bytes (defaulting to short for I and Q), that means just 1 second=
 of capturing equates to 2 GB of data. My system has 64 GB of RAM. Am I c=
reating the RAM filesystem correctly? Am I using it correctly?

--b1_bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hey Rob and Marcus,</p><p>Thanks for the responses! I have a basic und=
erstanding of linux, but am not very experienced. I tried the following t=
o create the RAM filesystem:</p><pre><code>sudo mount -t tmpfs -o size=3D=
8G tmpfs /mnt/tmpfs/</code></pre><pre><code>sudo mount -t ramfs -o size=3D=
8G ramfs /mnt/ramfs/
<br></code></pre><p>And ran the rx_samples_to_file, once with --file /mnt=
/tmpfs/test.bin, and once with --file /mnt/ramfs/test.bin, both times sti=
ll getting o=E2=80=99s for overruns.</p><p>By my calculations, at ~500 M =
complex samples per second, each complex sample 4 bytes (defaulting to sh=
ort for I and Q), that means just 1 second of capturing equates to 2 GB o=
f data. My system has 64 GB of RAM. Am I creating the RAM filesystem corr=
ectly? Am I using it correctly?</p><p><br></p>


--b1_bTN1Tg4QsmScf6SLVRoATiBNT2bp2o6x0s58Z8iA--

--===============8659681482795402096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8659681482795402096==--
