Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 709317276ED
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 07:56:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BC15384A23
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 01:56:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686203760; bh=7VmXTrIc38AuCjA+4oCHtWwkFbhZFzFdGEgyL6k1zZc=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ugfqu1zh7J6zySy3Ssr5O9SCfA8UvjG8M3DaHgw48XgCjUWlk1z2v4TL0XcmCb5bU
	 IlHAvJgEdtxQTHEc+GT/2fg87do9nCbkufH4d340mV/H1JZoMaUfy07brnXo/FZ2FK
	 OqlDKrXblaK2tRc97L+pMyGrJZSEceBW8Izn/Q/0IFQkB/ZB77byIC+FZTNRh+EmuF
	 5ySwp+rVKzTuugYrRBDGDKjAAZ/yyenK/dMxpKYQl6oiZLWgGbcrbb4QdqOUaDRBIS
	 YQ0ndUTp4WqQUycpc9xFq3x3oFdBOqKzpCdUkNIIPLtfpNAoT0vn0pMmOtLvSM7Zc2
	 TgvuHpYHoqROA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77F683849FA
	for <usrp-users@lists.ettus.com>; Thu,  8 Jun 2023 01:55:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686203704; bh=oR2EDj1JnIQ1m08xWn8J8SkYbwdx1xfF93r1VUEY9sc=;
	h=Date:To:From:Subject:From;
	b=U1KGWpEjqDVQHssv70tX+Elzybzrm8f4wXGyH1Qc9R2Hgq9mZNhHp2j0sIhEKEIBP
	 eorr6Aa4vkf7a7gIHJskJND91lXsPT3w24GUYEHLYwzlTW/D5v6dk1dJDOIuqkDeaa
	 KrQrn9GL5XZiJwngS4v4G3u9vcWK6X0QBi1dfKezer/4vw8Ycf9Ep1hemkWEkyG96H
	 GB/4Qi6Ufc57UVTT0B1qyAf9AQzw3kxyDxkrNae+i6VnWZe5U4Cu49mCnLeHQibfn5
	 HP36F/lXfpsAAhyv/ZPloJYQrbOgj/wEwm6h8BVFVqh6FGuj/ipkFVkkTAKGi/XMKM
	 u+Qs1BNeey2Dg==
Date: Thu, 8 Jun 2023 05:55:04 +0000
To: usrp-users@lists.ettus.com
From: eesa.nikahd@gmail.com
Message-ID: <Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: YXUMSIDTMBDMZLWAVLMWKCZZ6IBH56XT
X-Message-ID-Hash: YXUMSIDTMBDMZLWAVLMWKCZZ6IBH56XT
X-MailFrom: eesa.nikahd@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Creating TX usrp and RX usrp objects using Two different threads using X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YXUMSIDTMBDMZLWAVLMWKCZZ6IBH56XT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0330324681343901436=="

This is a multi-part message in MIME format.

--===============0330324681343901436==
Content-Type: multipart/alternative;
 boundary="b1_Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI
Content-Type: text/plain; charset=us-ascii

Hi dears,

I created a TX usrp an RX usrp object (using uhd::usrp::multiusrp::make()) using two different threads.

When I try to set subdevice for them the first thread can set subdevice successfully but hte later fails to set it and throw an excption with this error message: "Error: map::at". 

(Example setting=> TX subdev=A:0, antenna=TX/RX; RX subdev=A:0 (or B:0), antenna= RX2)

If I comment the methods to set subdevice for the later thread (e.g. for RX: rx_usrp->set_rx_subdev_spec("B:0")) my code works correctly.

I wonder why this problem is for! As UHD examples such as txrx_loopback_tofile, set subdevice for both TX and RX separately and it works fine. The only difference between this example and mine is that I am using two different threads.

It is worth noting that my code works correctly for N200 usrp.

My UHD version is "UHD 4.3.0.0.-0g1f8fd345"

Can anyone help me to resolve this issue?

Thank you.

Eesa

--b1_Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hi dears,</p><p>I created a TX usrp an RX usrp object (using uhd::usrp::=
multiusrp::make()) using two different threads.</p><p>When I try to set sub=
device for them the first thread can set subdevice successfully but hte lat=
er fails to set it and throw an excption with this error message: "Error: m=
ap::at". <br><br></p><p>(Example setting=3D&gt; TX subdev=3DA:0, antenna=3D=
TX/RX; RX subdev=3DA:0 (or B:0), antenna=3D RX2)<br><br></p><p>If I comment=
 the methods to set subdevice for the later thread (e.g. for RX: rx_usrp-&g=
t;set_rx_subdev_spec("B:0")) my code works correctly.</p><p>I wonder why th=
is problem is for! As UHD examples such as txrx_loopback_tofile, set subdev=
ice for both TX and RX separately and it works fine. The only difference be=
tween this example and mine is that I am using two different threads.</p><p=
>It is worth noting that my code works correctly for N200 usrp.</p><p>My UH=
D version is "UHD 4.3.0.0.-0g1f8fd345"</p><p>Can anyone help me to resolve =
this issue?</p><p>Thank you.</p><p>Eesa</p>

--b1_Gqp8cHlLxk8pfjh6GD1oXyH5KkhHxtvhfZ03xSjKiNI--

--===============0330324681343901436==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0330324681343901436==--
