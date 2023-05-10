Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D65556FE82D
	for <lists+usrp-users@lfdr.de>; Thu, 11 May 2023 01:44:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E36A38469E
	for <lists+usrp-users@lfdr.de>; Wed, 10 May 2023 19:44:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683762296; bh=VLaIMCdGM0Ljdl0Lg8s6CQAg7Hh3MPTZBhTfj1Wonus=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=DkMxD8CRERSfNF/LSZVSxzCjY/t9hIs1X5i4MMvgl2A4gT0bfP/sn7ujDjFrVDJdt
	 Zp6FUUXo5dtbHTN8HtpqxzkA4jNr4NCttWrIHQy6mAFiWvaKfAxi1qRmJFj7UdY1Cc
	 39NqMjsQ1Dw+IdmeTmLSAyWFbUE9ez53nNCCMe4bkG/pWLIzRN3FWt6RqcD6f9nXsZ
	 Yo0UbyzTiGfFfnt59oSpIRXoRuAStFvL1XFym5hFMaVKHI/NpMsJXq/alQH4YeWvyo
	 r9+F6L/u95D4U9cxQrhxynwEZ2o0ylfn4RBYV7H24nGcv4xmFSOxW07C1Vw/nfRR5o
	 QCESjjf3fLLxQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53213384541
	for <usrp-users@lists.ettus.com>; Wed, 10 May 2023 19:44:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683762258; bh=Vv2Ni7nSq99QDyi0TNTaTJ1k2bOg+k0xjlBfVaOQGQU=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=lXiZfYb1MJWmtIJCo8b5+CfUhcIRJ7pxGsFsFdUhxHqhfVLxfkpWPgFkLsWUN5oM4
	 bUN7MXAEve7UL4Vq3GLN1pOp/CXUGL+yjLsKI78Gy7fji34s4nC9GorEFqdmNygn36
	 oa4bvbztNOaYIG6MAzyvRNsAdrCUkUwytp/TWw7HTO7jA7widEYLAxeXdv1b6HShUE
	 Hk5vK1VDKwWhNsZHedl0hS4RU4ctMjeiNxw3D5I8g/wf0531BbkQiQa2WPUAr765jS
	 u77VnX4S7As1A23HKrOCUqv7QsCLTLtQKYFgIyGvhOOqcPfWd1dkvUNaXnX6wBI/ST
	 Zue0qVpFi971A==
Date: Wed, 10 May 2023 23:44:18 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <aN8KeuC4E3O672Jo2nmznuzQT0FxuB0ttHN93gkXk@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: fcb5da47-1d14-7bae-7150-3aaae6ef6797@gmail.com
MIME-Version: 1.0
Message-ID-Hash: RFBJSU62ELX5DO5IWWMPZ2ECBF6NYP3H
X-Message-ID-Hash: RFBJSU62ELX5DO5IWWMPZ2ECBF6NYP3H
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Setting GPIO Input for RFNOC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RFBJSU62ELX5DO5IWWMPZ2ECBF6NYP3H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4931344900058251773=="

This is a multi-part message in MIME format.

--===============4931344900058251773==
Content-Type: multipart/alternative;
 boundary="b1_aN8KeuC4E3O672Jo2nmznuzQT0FxuB0ttHN93gkXk"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_aN8KeuC4E3O672Jo2nmznuzQT0FxuB0ttHN93gkXk
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I tried using set_gpio_attr using both multi_usrp and radio_control=E2=80=
=A6

When I use uhd::usrp::multi_usrp, I get an error trying to make a multi_u=
srp object

```
[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: Runtime=
Error: Cannot create! Property already exists at: /blocks/0/Radio#0/noc_i=
d
```

I already created an rfnoc graph for my own custom application, so it mak=
es sense I get this error.

When the radio block controller, it appears to be unable to find any GPIO=
 banks available after I attempt to list them using radio->get_gpio_banks=
.

I tried using uhd::usrp::dboard_iface::set_gpio_ddr, since all I need to =
do is change the direction of the GPIO pins, but I get a Segmentation Fau=
lt (core dumped) eerror.

I did try creating a motherboard controller using uhd::rfnoc:rfnoc_graph:=
:get_mb_controller, then calling get_gpio_banks, and I was able to list o=
ut the available GPIO from there. However, it does not appear the directi=
on can be set from the mb_controller, only the source.

Thanks

Joe

--b1_aN8KeuC4E3O672Jo2nmznuzQT0FxuB0ttHN93gkXk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p><br></p><p>I tried using set_gpio_attr using both multi_usr=
p and radio_control=E2=80=A6</p><p>When I use uhd::usrp::multi_usrp, I get =
an error trying to make a multi_usrp object</p><pre><code>[ERROR] [RFNOC::G=
RAPH] Caught exception while initializing graph: RuntimeError: Cannot creat=
e! Property already exists at: /blocks/0/Radio#0/noc_id</code></pre><p>I al=
ready created an rfnoc graph for my own custom application, so it makes sen=
se I get this error.</p><p>When the radio block controller, it appears to b=
e unable to find any GPIO banks available after I attempt to list them usin=
g radio-&gt;get_gpio_banks.</p><p><br></p><p>I tried using uhd::usrp::dboar=
d_iface::set_gpio_ddr, since all I need to do is change the direction of th=
e GPIO pins, but I get a Segmentation Fault (core dumped) eerror.</p><p><br=
></p><p>I did try creating a motherboard controller using uhd::rfnoc:rfnoc_=
graph::get_mb_controller, then calling get_gpio_banks, and I was able to li=
st out the available GPIO from there. However, it does not appear the direc=
tion can be set from the mb_controller, only the source.</p><p>Thanks</p><p=
>Joe</p>

--b1_aN8KeuC4E3O672Jo2nmznuzQT0FxuB0ttHN93gkXk--

--===============4931344900058251773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4931344900058251773==--
