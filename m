Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9BD6B2B16
	for <lists+usrp-users@lfdr.de>; Thu,  9 Mar 2023 17:45:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A09A8384BFF
	for <lists+usrp-users@lfdr.de>; Thu,  9 Mar 2023 11:45:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678380352; bh=sJ/SRDnyfxlpg7AYWq2sQXgGzzq7VK4lblttyo3fXmM=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=n0Uzv+GOlqELgbV5xlhlWfNo1DJJcCTfgBayKS2549GizXmWONiS75xAwQQ6ZjoB+
	 xDhmlkb4HpupXhVP67DYWBafZZN8iubcGzrv2wNrkikmvDVKfh1SRrr7FTcYmjKp5N
	 t1jAyN8wZFuFxJgKv/u1t5Sp81toNRO5jjlnIYRQLdff+btTO6c2q/cmpjI0MrKNmd
	 0YxMLhX9qXR86uvSxWAwBh57UPndZUd4D39TcJc7ZqAPlTK5CWYF4xtpyDdi6bPalY
	 MkUKMYvs/w8B7nuu7A9yQHrFqyrk71DvA41i/ekL6OkZNRCXijgdz6oUuc0AEnwW42
	 /R3SOvQRQBn8w==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44AE43850D7
	for <usrp-users@lists.ettus.com>; Thu,  9 Mar 2023 11:45:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678380347; bh=gN6B3qO568vYKTcK1IfaZAX3Lp1M4AS0xEB7N1GwvGU=;
	h=Date:To:From:Subject:From;
	b=eTOt0cbV9Xy+01CGt8pdETmkQ8Yl52bunzQ5qalQftV206BHeK/2S9Pxvx2CJrYQY
	 1joilWgbz4JezYjGtVApv95fMcC4ITyniP1eBhbWYCYM4zgDV4U+9hfZjIdqAeplnw
	 9fskeHH5y3JDdvvkHpC44BdPEMqBW8Wtd4q6NQamKdtwKkJV1YxfPWFCgh4wfgcUh/
	 0IeumxxRxFaLWL3AXJefNSUYsyX87tZBIwgCVxwG3OyXt17KYZgNJPz3MN4lR1syNi
	 1Xn/5sLKV88sOSGDgpYcsnatGFNBJgJu0b5GHhgKRH/ijOJNF5/9o8fBSQQcEOwPdL
	 DP96N6BNDH9HA==
Date: Thu, 9 Mar 2023 16:45:47 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <nanXPkclUush2Is5jFaC0hSQQFGh83xJ3ROVTOPbQ@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: BIZIADVTW2KC7MBAKK5YHFPFIB2TQPXD
X-Message-ID-Hash: BIZIADVTW2KC7MBAKK5YHFPFIB2TQPXD
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Import error libpyuhd
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BIZIADVTW2KC7MBAKK5YHFPFIB2TQPXD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4461323571743944902=="

This is a multi-part message in MIME format.

--===============4461323571743944902==
Content-Type: multipart/alternative;
 boundary="b1_nanXPkclUush2Is5jFaC0hSQQFGh83xJ3ROVTOPbQ"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_nanXPkclUush2Is5jFaC0hSQQFGh83xJ3ROVTOPbQ
Content-Type: text/plain; charset=us-ascii

Hello,

When I run the rfnoc_image_builder, I receive the following error 

`Traceback (most recent call last):`

`  File "/usr/local/bin/rfnoc_image_builder", line 29, in <module>`

`    from uhd.imgbuilder import image_builder`

`  File "/usr/local/lib/python3.8/site-packages/uhd/__init__.py", line 10, in <module>`

`    from . import types`

`  File "/usr/local/lib/python3.8/site-packages/uhd/types.py", line 10, in <module>`

`    from . import libpyuhd as lib`

`ImportError: cannot import name 'libpyuhd' from partially initialized module 'uhd' (most likely due to a circular import) (/usr/local/lib/python3.8/site-packages/uhd/__init__.py)`

I have PYTHONPATH currently set to PYTHONPATH=/usr/local/lib/python3.8/site-packages so that it can find the uhd module, but the builder halts here and I am unsure how to debug it.

Thanks

Joe

--b1_nanXPkclUush2Is5jFaC0hSQQFGh83xJ3ROVTOPbQ
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>When I run the rfnoc_image_builder, I receive th=
e following error </p><p><code>Traceback (most recent call last):</code></p=
><p><code>  File "/usr/local/bin/rfnoc_image_builder", line 29, in &lt;modu=
le&gt;</code></p><p><code>    from uhd.imgbuilder import image_builder</cod=
e></p><p><code>  File "/usr/local/lib/python3.8/site-packages/uhd/__init__.=
py", line 10, in &lt;module&gt;</code></p><p><code>    from . import types<=
/code></p><p><code>  File "/usr/local/lib/python3.8/site-packages/uhd/types=
.py", line 10, in &lt;module&gt;</code></p><p><code>    from . import libpy=
uhd as lib</code></p><p><code>ImportError: cannot import name 'libpyuhd' fr=
om partially initialized module 'uhd' (most likely due to a circular import=
) (/usr/local/lib/python3.8/site-packages/uhd/__init__.py)</code></p><p>I h=
ave PYTHONPATH currently set to PYTHONPATH=3D/usr/local/lib/python3.8/site-=
packages so that it can find the uhd module, but the builder halts here and=
 I am unsure how to debug it.</p><p>Thanks</p><p>Joe</p>

--b1_nanXPkclUush2Is5jFaC0hSQQFGh83xJ3ROVTOPbQ--

--===============4461323571743944902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4461323571743944902==--
