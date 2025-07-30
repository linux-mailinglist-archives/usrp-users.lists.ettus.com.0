Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7BCB15912
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 08:45:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FFEB3866C0
	for <lists+usrp-users@lfdr.de>; Wed, 30 Jul 2025 02:45:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753857954; bh=jL0TF9+gtRbY4FLyipTpIivQNljbOlhf6pwKs/fS3K4=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YyqAi4i7OiZhgOMuLI7Aj8rZOciauciKXjp5Mk5R9C+IO67D8X+XiTwOQUFuGEZdS
	 gsqGcFrvUl55EYVTHJ80nenqKzlEVuNgI9yb2GSkJ7kagRdj7qtgBJpKwsIFq9PT1A
	 Kf8uF/7bNLrAHJpSnOhPfpgBVXaCy40LLl0HW1/rlPRyxVj72+A9nJZDCAefrT7fC0
	 FSsa4lHB3V0XLVwd4vhqNUoxSBZY4xNPPDigWjkoUIslvBx5X1SFoiO9YYVntr6GIY
	 LET00b+1/3ZiH2lakMtsYq7SuS1Gea3E9sClVMzBRGTvUQtSo7NecgzL+Kk7aOkpME
	 C75cx0upZqs2g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE2F73866A2
	for <usrp-users@lists.ettus.com>; Wed, 30 Jul 2025 02:45:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753857927; bh=0hmE+5LnW16xVhRf/OOHM8/nQdxJVc+m//3V5e82kY0=;
	h=Date:To:From:Subject:From;
	b=Ix0Ug7aDrq8fc7KSxWwbakOEXV8w6MgRft4+CQl3PYwY+ATsoPmAgpnkNGKkPgagn
	 35VWHXl2b7p4R9Mq7N0OmKP5W7bxfR77+/2c27SDG7VmP05llvGRuHchYJtciKh8UK
	 tU5ciAh1iW9wKbkaRoapbecH+/HPxUmH8iWe8bqLYdU16YuxJGZv5dC5iISP1gUzKW
	 qwtO5XPpn1QLrMB+2k2H9AsdZ/c7ypNa9Ig9Z179IPHk+XjU9RKqqclZ6FVfsBNdfS
	 XVB09S0KrRSAQM2Yx/beFqZnBdVv4rQvTKh5LlT982EJwwbhN8js23rDSt1jp09H15
	 kwQjnO31RPSVQ==
Date: Wed, 30 Jul 2025 06:45:27 +0000
To: usrp-users@lists.ettus.com
From: gechb21@gmail.com
Message-ID: <8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LWT24XIU7HX7I7Z5C2PZQWCV4BJY4NWI
X-Message-ID-Hash: LWT24XIU7HX7I7Z5C2PZQWCV4BJY4NWI
X-MailFrom: gechb21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Underflow Issue During Transmission and Reception with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LWT24XIU7HX7I7Z5C2PZQWCV4BJY4NWI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3095925873405497916=="

This is a multi-part message in MIME format.

--===============3095925873405497916==
Content-Type: multipart/alternative;
 boundary="b1_8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99m using USRP X310 devices on both the transmitting and receivin=
g ends to handle a data stream. During transmission, I run the following =
command:

/usr/lib/uhd/examples/tx_samples_from_file --freq 2484e6 --rate 20e6 --ga=
in 10 --wirefmt sc16 --ref=3Dinternal --file /home/ubuntutx/uhd/examples/=
tx_transmit_data.dat --repeat

I encounter consistent underflow issues (indicated by "U" messages in the=
 console), regardless of the sample rate used. Could you please advise ho=
w to modify my setup or code to enable stable transmission and reception =
without these underflow errors?

Thank you,

Getaneh Berie

--b1_8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I=E2=80=99m using USRP X310 devices on both the transmitt=
ing and receiving ends to handle a data stream. During transmission, I ru=
n the following command:</p><p>/usr/lib/uhd/examples/tx_samples_from_file=
 --freq 2484e6 --rate 20e6 --gain 10 --wirefmt sc16 --ref=3Dinternal --fi=
le /home/ubuntutx/uhd/examples/tx_transmit_data.dat --repeat</p><p>I enco=
unter consistent underflow issues (indicated by "U" messages in the conso=
le), regardless of the sample rate used. Could you please advise how to m=
odify my setup or code to enable stable transmission and reception withou=
t these underflow errors?</p><p>Thank you,</p><p>Getaneh Berie</p>


--b1_8bfcBosbB017m5zcThlx6kskuX0KxhL1QpyK1VWHOo--

--===============3095925873405497916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3095925873405497916==--
