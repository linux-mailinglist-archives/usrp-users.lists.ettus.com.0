Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6E35B075C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 16:46:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47780385F16
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 10:46:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662561987; bh=UXGnWaA8BoIq61ZDgxlK52Igj8lt1Pq8ftom6vrVpt8=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zz5j65swWKi2bg4ykQ+Tc9b1Vkfp60/lji1bITT0AcwuPtGNKZeMLak56wAcS6K5p
	 +qcMlEDpfnCbAz3EO1FSvsYAPirlwnGvY2PtkM2DHMLjdddjB9mU2lfZ+EPMBKaX4L
	 WhWhBazULTW9kLWJ/CgpXB8dEy4XNvPjdlIUzt27Ppqb/8unlD75uW1kHpD7bdz8a7
	 jYYsS7bKpt48Rx8Vhp7FRxLuSzXX58vMgzueiDbzPju4Df97qN2WPH1GHRnTQhfDJd
	 UyHH0bSYFWIA6wNDn1XlCkaUFxHrAA3zw5jlcYH/szMj910N8t09f9me7XIWiKYlq4
	 Lq0xrltHEVfGw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 645043859B0
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 10:31:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662561069; bh=JhH5N4BTn2pr34StxQME8hnyb6pn06RuIr2HdjfREx8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=B2QxdajiDeQm3KTXhAGWNgnC0x0X2sHaLbO4fnMVc4yIsLvDcF2gtboGPb5/9jawA
	 CQQ5LHjximd0pto5Y22HGGj5z0UfKI1T357dB/x60vh7hHYhNAePvuiK8QefwZBU4V
	 YP49L5fwMr8i9ombcOyCqM0L0+zKpfQh6GTlPajztr4q4LjDb8Kdj6IVjNSOBaYfik
	 882pU6H58gKmTkgX8m+1adTEM3GmKjo/g244pncTtrR3spEju9EdDIgVoJzj+tMFhE
	 MecCNSLxr8wa4oR8bgS2wu5Pf/pZx8pMebN6/OKYiGEfyjcdg6lBtC22LKTioOElVo
	 NUwNx6I2PiARg==
Date: Wed, 7 Sep 2022 14:31:09 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5CPOCsCjADnqip4sl8BepUaxi1pEfA85HInaxPKEM8@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: 6AMFR5VBPUIGLAZ6JDEMGYAAXN2RBW2G
X-Message-ID-Hash: 6AMFR5VBPUIGLAZ6JDEMGYAAXN2RBW2G
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AMFR5VBPUIGLAZ6JDEMGYAAXN2RBW2G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2913900217322677021=="

This is a multi-part message in MIME format.

--===============2913900217322677021==
Content-Type: multipart/alternative;
 boundary="b1_1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

perper@o2.pl wrote:

> perper@o2.pl wrote:
>
> > Hi,
> >
> > I can only confirm that I see the same result: 24MHz is working, star=
ting from about 24.5MHz there=E2=80=99s a lot of underruns.
> >
> > My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus X3=
99.
>
> =E2=80=A6 and the system is Ubuntu 20.04 with UHD 4.2.0.1.

But with UHD 4.1.0.6 there situation is exactly the same (not working for=
 >=3D 24.5M), so if you=E2=80=99ve got it somewhere working it would be w=
orth sharing:\
\- your exact UHD revision,\
\- specs of your PC.

Best Regards,\
Piotr Krysik

--b1_1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>perper@o2.pl wrote:</p><blockquote><p>perper@o2.pl wrote:</p><blockquo=
te><p>Hi,</p><p>I can only confirm that I see the same result: 24MHz is w=
orking, starting from about 24.5MHz there=E2=80=99s a lot of underruns.</=
p><p>My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard Asus X=
399.</p></blockquote><p>=E2=80=A6 and the system is Ubuntu 20.04 with UHD=
 4.2.0.1.</p></blockquote><p>But with UHD 4.1.0.6 there situation is exac=
tly the same (not working for &gt;=3D 24.5M), so if you=E2=80=99ve got it=
 somewhere working it would be worth sharing:<br>- your exact UHD revisio=
n,<br>- specs of your PC.</p><p>Best Regards,<br>Piotr Krysik</p>


--b1_1Hm1rldjLwi6DwGdCNSyE1y532Znn4wDTXq11ctA--

--===============2913900217322677021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2913900217322677021==--
