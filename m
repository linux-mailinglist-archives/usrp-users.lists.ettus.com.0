Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 523523F1CD8
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 17:33:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18574384205
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 11:33:19 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 439AF380928
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 11:32:32 -0400 (EDT)
Date: Thu, 19 Aug 2021 15:32:32 +0000
To: usrp-users@lists.ettus.com
From: vld.popovici@gmail.com
Message-ID: <5eJaklD329xYwo6OhHVfW6sSWNzagNR3P5DQaqVjwl0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: PCZHKQIZHTGJ6DN3DHH2HX4MIYTTNJKH
X-Message-ID-Hash: PCZHKQIZHTGJ6DN3DHH2HX4MIYTTNJKH
X-MailFrom: vld.popovici@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B210 GPIO Control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PCZHKQIZHTGJ6DN3DHH2HX4MIYTTNJKH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8835885020277972812=="

This is a multi-part message in MIME format.

--===============8835885020277972812==
Content-Type: multipart/alternative;
 boundary="b1_5eJaklD329xYwo6OhHVfW6sSWNzagNR3P5DQaqVjwl0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5eJaklD329xYwo6OhHVfW6sSWNzagNR3P5DQaqVjwl0
Content-Type: text/plain; charset=us-ascii

Hello,

I am trying to get the GPIO header (J504) working on a USRP B210 for power amplifier control in GNURadio. It appears this is possible based on the documentation, but I am not having any success.

According to this user, GPIO support for the USRP B210 was added in UHD 3.9: https://lists.gnu.org/archive/html/discuss-gnuradio/2015-08/msg00418.html

However, I am running UHD 3.15, and I am getting the same error that user was getting on UHD 3.8 when I call self.uhd_usrp_sink_0.set_gpio_attr("TXA", "ATR_TX", 1, 0x10, 0):

RuntimeError: LookupError: Path not found in tree: /mboards/0/dboards/A/iface

I added print(self.uhd_usrp_sink_0.get_gpio_banks(0)) above the line causing the runtime error, and the three banks listed were ('FP0', 'RXA', 'TXA'). It appears that FP0 is the only bank that does not raise this runtime error. I set all pins on this bank to ATR_TX by setting the mask to 0xFFFFFFFF, however, none of the pins on the J504 header appear to change state when the USRP changes state from transmit to receive. Does this bank actually correspond to any physical pins on the B210, or is it just internal to the FPGA?

Is it possible this is a regression? If so, which version of UHD should I use for GPIO control on the B210 until this is fixed? I would rather not roll back all the way to version 3.9 from 2015.

Thanks.

--b1_5eJaklD329xYwo6OhHVfW6sSWNzagNR3P5DQaqVjwl0
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am trying to get the GPIO header (J504) working on a USRP=
 B210 for power amplifier control in GNURadio. It appears this is possible =
based on the documentation, but I am not having any success.</p><p>Accordin=
g to this user, GPIO support for the USRP B210 was added in UHD 3.9: https:=
//lists.gnu.org/archive/html/discuss-gnuradio/2015-08/msg00418.html</p><p>H=
owever, I am running UHD 3.15, and I am getting the same error that user wa=
s getting on UHD 3.8 when I call self.uhd_usrp_sink_0.set_gpio_attr("TXA", =
"ATR_TX", 1, 0x10, 0):</p><p>RuntimeError: LookupError: Path not found in t=
ree: /mboards/0/dboards/A/iface</p><p>I added print(self.uhd_usrp_sink_0.ge=
t_gpio_banks(0)) above the line causing the runtime error, and the three ba=
nks listed were ('FP0', 'RXA', 'TXA'). It appears that FP0 is the only bank=
 that does not raise this runtime error. I set all pins on this bank to ATR=
_TX by setting the mask to 0xFFFFFFFF, however, none of the pins on the J50=
4 header appear to change state when the USRP changes state from transmit t=
o receive. Does this bank actually correspond to any physical pins on the B=
210, or is it just internal to the FPGA?</p><p>Is it possible this is a reg=
ression? If so, which version of UHD should I use for GPIO control on the B=
210 until this is fixed? I would rather not roll back all the way to versio=
n 3.9 from 2015.</p><p>Thanks.</p>

--b1_5eJaklD329xYwo6OhHVfW6sSWNzagNR3P5DQaqVjwl0--

--===============8835885020277972812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8835885020277972812==--
