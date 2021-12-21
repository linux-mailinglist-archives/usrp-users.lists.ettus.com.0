Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7952647C699
	for <lists+usrp-users@lfdr.de>; Tue, 21 Dec 2021 19:29:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C673385349
	for <lists+usrp-users@lfdr.de>; Tue, 21 Dec 2021 13:29:22 -0500 (EST)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 386833849D0
	for <usrp-users@lists.ettus.com>; Tue, 21 Dec 2021 13:28:22 -0500 (EST)
Date: Tue, 21 Dec 2021 18:28:22 +0000
To: usrp-users@lists.ettus.com
From: thebouleoffools@gmail.com
Message-ID: <6zxgqE3sv6SZrH4BUPsJME0VPmh1JuqQvlD1iNuU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 15HIuV6KHu3003or7vBCZgs3tskRNSg0FMZQskf134@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: WIEM2K76YBN37KQ63VV457K5SMTDLRS5
X-Message-ID-Hash: WIEM2K76YBN37KQ63VV457K5SMTDLRS5
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPIO on E320 not quite working as expected
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WIEM2K76YBN37KQ63VV457K5SMTDLRS5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2908240385821855792=="

This is a multi-part message in MIME format.

--===============2908240385821855792==
Content-Type: multipart/alternative;
 boundary="b1_6zxgqE3sv6SZrH4BUPsJME0VPmh1JuqQvlD1iNuU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_6zxgqE3sv6SZrH4BUPsJME0VPmh1JuqQvlD1iNuU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Nevermind, I got it. For whatever reason, the =E2=80=9CCTRL=E2=80=9D attr=
ibute doesn=E2=80=99t like every pin set to manual (0x0). So I needed to,=
 for example, manually specify the value as 0xffffffff & \~0b101 (for pin=
s 1 and 3) before setting the OUT attribute.

`ettus_rfnoc_rx_radio.set_gpio_attr("FP0","CTRL", 0xffffffff & ~0b101)`

`ettus_rfnoc_rx_radio.set_gpio_attr("FP0","DDR", 0xffffffff)`

`ettus_rfnoc_rx_radio.set_gpio_attr("FP0","OUT", 0b101)`

So now my gpio can be controlled from a gnuradio flowgraph. Yay.

--b1_6zxgqE3sv6SZrH4BUPsJME0VPmh1JuqQvlD1iNuU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Nevermind, I got it. For whatever reason, the =E2=80=9CCTRL=E2=80=9D a=
ttribute doesn=E2=80=99t like every pin set to manual (0x0). So I needed =
to, for example, manually specify the value as 0xffffffff &amp; ~0b101 (f=
or pins 1 and 3) before setting the OUT attribute.</p><p><br></p><p><code=
>ettus_rfnoc_rx_radio.set_gpio_attr("FP0","CTRL", 0xffffffff &amp; ~0b101=
)</code></p><p><code>ettus_rfnoc_rx_radio.set_gpio_attr("FP0","DDR", 0xff=
ffffff)</code></p><p><code>ettus_rfnoc_rx_radio.set_gpio_attr("FP0","OUT"=
, 0b101)</code></p><p>So now my gpio can be controlled from a gnuradio fl=
owgraph. Yay.</p>


--b1_6zxgqE3sv6SZrH4BUPsJME0VPmh1JuqQvlD1iNuU--

--===============2908240385821855792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2908240385821855792==--
