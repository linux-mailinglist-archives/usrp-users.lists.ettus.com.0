Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 723AA9D2F5F
	for <lists+usrp-users@lfdr.de>; Tue, 19 Nov 2024 21:17:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1660238615A
	for <lists+usrp-users@lfdr.de>; Tue, 19 Nov 2024 15:17:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732047457; bh=kRbUmjTPKxcE9avrkXQBxKPqPfw/Zcwy76tZ2N6ys4o=;
	h=Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=0EQhKxUcGgKfIvy56KqhkBe8tICW/fDx1o8YHjNXVPEeOAZBF+/Kz6Rqm8SkrNbS/
	 x/3qsx5azb2rkOGJ9KiMqqykxFdho3am4tX2CAjLzR3Ak2h+PjlNkpIu7csX0pCOf5
	 gVUspz/+zqnyI5diXS1+6x6L56A/y2HjN/Hrp1U1UwxDDG7w8zU+jn8hyttnx8qTLU
	 5Jghypr2vrtQRtjm5fkiYfDiyGzKcw0cC0ETgJigFut318dXc9A96BQUzaXKYGb12u
	 k2x4Gnmcafoe+J3AoSbXP/PqUqsB+LxUJMcR3PAahEAd+P7cQ/qw/+8si9cZq3jbp0
	 +Dyr4hz0zEcdA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 409833860DE
	for <usrp-users@lists.ettus.com>; Tue, 19 Nov 2024 15:17:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732047440; bh=n4QHlkm7WCQa5T/uRQjHArCfH/peiyEjbXbltmIlV3o=;
	h=Date:To:From:Subject:From;
	b=fOKHm/cdm8lQOBCjQNjIT06ZrGk5GGmc4f/Lx6mKrbn7FgbI0al+d5pia5a+6G3Aa
	 xHAZqGV5y2fuJfwirsGMvcBYbWWdpjC9ooDe2P/VJy21Nl/M6p3RnDtVxn/nZ2feRa
	 FT4c45QWHEgLSzGz57xfeP+IjGURubUROthemUfVbrft75MWJml98FGlqh2rCvmuMQ
	 ESJQuV20pIEm4GDVGCXZqYXAr3yaykMFFH3mjVtce815+rWNOkTulOxbH2wBenkkdA
	 8HGex1qDFoHDwQuzJEay7i2HAeolzJA595bkUP3JeZpbQzHAbldOjdOtkoKNgDQZB/
	 kEndPrvd965aQ==
Date: Tue, 19 Nov 2024 20:17:20 +0000
To: usrp-users@lists.ettus.com
Message-ID: <m0kwRgcE6IqIxgoZNdg445uOHr6Gm0EBZsiw5wg@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: SBPKL3LVCVSHU3W3TMAO76B4ILNFAJY5
X-Message-ID-Hash: SBPKL3LVCVSHU3W3TMAO76B4ILNFAJY5
X-MailFrom: william.haftel@bluehalo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can only control 1 pin of x310 GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SBPKL3LVCVSHU3W3TMAO76B4ILNFAJY5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Will Haftel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: william.haftel@bluehalo.com
Content-Type: multipart/mixed; boundary="===============3299756751705490131=="

This is a multi-part message in MIME format.

--===============3299756751705490131==
Content-Type: multipart/alternative;
 boundary="b1_m0kwRgcE6IqIxgoZNdg445uOHr6Gm0EBZsiw5wg"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_m0kwRgcE6IqIxgoZNdg445uOHr6Gm0EBZsiw5wg
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am having some issues controlling the GPIO on the x310.  So far I have =
only been able to control the output of pin 0.  Here are some code snippe=
ts of things I have tried:

I have these lines before trying to control pins:

usrp->set_gpio_attr("FP0", "CTRL", 0x000, 0xFFF);

usrp->set_gpio_attr("FP0", "DDR", 0xFFF, 0xFFF);

This block works - set pin 0 to high, and pins 1 and 2 to low:\
\
usrp->set_gpio_attr("FP0", "OUT", 1, 1);

usrp->set_gpio_attr("FP0", "OUT", 0, (1<<1));

usrp->set_gpio_attr("FP0", "OUT", 0, (1<<2));

This block does not work - trying to set pins 0 and 1 to high, but only p=
in 0 outputs high:

usrp->set_gpio_attr("FP0", "OUT", 1, 1);

usrp->set_gpio_attr("FP0", "OUT", 1, (1<<1));

usrp->set_gpio_attr("FP0", "OUT", 0, (1<<2));

I attempt to set all pins to high using this line, but again only pin 0 o=
utputs high:

usrp->set_gpio_attr("FP0", "OUT", 1, 0xFFF);

Am I doing something wrong in the cases where the GPIO doesn=E2=80=99t ha=
ve my desired outputs?

Thanks,

Will

--b1_m0kwRgcE6IqIxgoZNdg445uOHr6Gm0EBZsiw5wg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p><p>I am having some issues controlling the GPIO on the x310.  So =
far I have only been able to control the output of pin 0.  Here are some co=
de snippets of things I have tried:</p><p><br></p><p>I have these lines bef=
ore trying to control pins:</p><p>usrp-&gt;set_gpio_attr("FP0", "CTRL", 0x0=
00, 0xFFF);</p><p>usrp-&gt;set_gpio_attr("FP0", "DDR", 0xFFF, 0xFFF);</p><p=
><br></p><p>This block works - set pin 0 to high, and pins 1 and 2 to low:<=
br><br>usrp-&gt;set_gpio_attr("FP0", "OUT", 1, 1);</p><p>usrp-&gt;set_gpio_=
attr("FP0", "OUT", 0, (1&lt;&lt;1));</p><p>usrp-&gt;set_gpio_attr("FP0", "O=
UT", 0, (1&lt;&lt;2));</p><p><br></p><p>This block does not work - trying t=
o set pins 0 and 1 to high, but only pin 0 outputs high:</p><p>usrp-&gt;set=
_gpio_attr("FP0", "OUT", 1, 1);</p><p>usrp-&gt;set_gpio_attr("FP0", "OUT", =
1, (1&lt;&lt;1));</p><p>usrp-&gt;set_gpio_attr("FP0", "OUT", 0, (1&lt;&lt;2=
));</p><p><br></p><p>I attempt to set all pins to high using this line, but=
 again only pin 0 outputs high:</p><p>usrp-&gt;set_gpio_attr("FP0", "OUT", =
1, 0xFFF);</p><p><br></p><p>Am I doing something wrong in the cases where t=
he GPIO doesn=E2=80=99t have my desired outputs?</p><p><br></p><p>Thanks,</=
p><p>Will</p><p><br></p><p><br></p>

--b1_m0kwRgcE6IqIxgoZNdg445uOHr6Gm0EBZsiw5wg--

--===============3299756751705490131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3299756751705490131==--
