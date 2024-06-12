Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 318589056F5
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2024 17:34:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC48C3853D1
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2024 11:34:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718206449; bh=6BaIUrqdL3x9prSPwipGY8aNDTPh845epGaiBNug/ls=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=p3fXmRCfonwdJcgdQGesr7EjV43H4TETgCKsLWWJ7CYD/byXw+ihmF/5q3AXHsq7b
	 PlmyYx1y/wNYWCJWF7d5QfySpHDZt7fTwrplWMDW8GU59tgclWfjVwNjMCDE0t9OlN
	 H8HPOwPN/GyNkC/v3dCRfOjEQ46InsiSZ7ETgbl7TTqUmNo2aqmo2rLAh5QQmblqCo
	 FakqPk8WhlXLYo5OANGvTNV/oqMZbZSvv4VGcS53B86cT00ogX4T6ZTXP0ZlK9VdfS
	 xHegAHDppPm98ch3rE89L7iQ9gxRUM99WYSWnRORPalNsJ4kkf73Ruo1pKo2LA+6Sr
	 qFbiKyGFMU9DQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96F923853D1
	for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2024 11:33:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718206437; bh=ja8J66qGhhuu1RTioV5mmBXFGFlK7P/+y4ynKWSF1LM=;
	h=Date:To:From:Subject:From;
	b=HJ0abuHqXiazw2kE6IlZOrupBLP1ZbuyD7eZGRC6KOdHWUFBZY0whOUsHH9RNVKqn
	 5JjpNZkRAlPVEK/22lC8ieQmHtcmE1K1rb/oR2pDuhYEfJbqCXvgqwD/UZT7YOgAEa
	 4kjrhoAELEi3pm7KGcjHWNXV7b9mI/U6kBAqY8E+4PLeH2ypNx1pkAjsciPgAktQSP
	 ve866rjAdkNB7OPyAlCnO41gfpysov799jJzMuerVJJFka/wvRKrbEgoGt3aRopSrG
	 bvv+ZbSRAfxmynk1eCRs+jIwmr2eQgywUvdt5NK9zFTuuK8bt6kTP2arfYA0Ty3u0D
	 bPYyDeH2Nq+yg==
Date: Wed, 12 Jun 2024 15:33:57 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <WuuGDriXx5TgJGGKFm9ikPNHzDxl1V5zN5CriwakU@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: LRZU23CITOU6BTCU2TKZNXV5RNV6NNG2
X-Message-ID-Hash: LRZU23CITOU6BTCU2TKZNXV5RNV6NNG2
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to put additional RFNoC block in Rx-Tx loopback?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LRZU23CITOU6BTCU2TKZNXV5RNV6NNG2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7703169729229345038=="

This is a multi-part message in MIME format.

--===============7703169729229345038==
Content-Type: multipart/alternative;
 boundary="b1_WuuGDriXx5TgJGGKFm9ikPNHzDxl1V5zN5CriwakU"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_WuuGDriXx5TgJGGKFm9ikPNHzDxl1V5zN5CriwakU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,

RxTx loopback is a feature that was missing(/hard to do) in RFNoC before =
at least 4.0.

Currently it works and there are even nice examples showing how set it up=
, so one doesn=E2=80=99t have to figure this out. There are examples both=
 in pure UHD (https://github.com/EttusResearch/uhd/blob/master/host/examp=
les/rfnoc_radio_loopback.cpp) and GNU Radio (https://github.com/gnuradio/=
gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_radio_loopback.grc).

I=E2=80=99m trying to go one step forward and to add an RFNoC block to th=
e loop-back on USRP X410. For simplicity I=E2=80=99m starting from the rf=
noc-example (https://github.com/EttusResearch/uhd/tree/master/host/exampl=
es/rfnoc-example). The graph I want to get working looks like this: Radio=
#0=3D=3D>DDC#0-->Gain#0-->DUC#1=3D=3D>Radio#1.

I=E2=80=99ve build the rfnoc-example and I can confirm that it works with=
 use of the example (https://github.com/EttusResearch/uhd/blob/master/hos=
t/examples/rfnoc-example/examples/rx_gain_estimate_power.py).

Then I tried to change the rfnoc_radio_loopback.cpp to connect Gain block=
 between DDC and DUC.

In order to achieve that I changed this part (https://github.com/EttusRes=
earch/uhd/blob/master/host/examples/rfnoc_radio_loopback.cpp#L123):

uhd::rfnoc::connect_through_blocks(\
        graph, rx_radio_ctrl_id, rx_chan, tx_radio_ctrl_id, tx_chan, skip=
_pp);

to:\
uhd::rfnoc::block_id_t gain_block_id("0/Gain#0");

rfnoc::example::gain_block_control::sptr gain_control =3D  \
       graph->get_block<rfnoc::example::gain_block_control>(gain_block_id=
);

uhd::rfnoc::connect_through_blocks(\
        graph, rx_radio_ctrl_id, rx_chan, gain_block_id, 0, skip_pp);

uhd::rfnoc::connect_through_blocks(\
        graph, gain_block_id, 0, tx_radio_ctrl_id, tx_chan, skip_pp);\
\
and later I added a call to function that sets the digital gain:

gain_control->set_gain_value(42);\
\
Somehow I can=E2=80=99t get it working this way. The version without my c=
hange passes the signal. The version with it included doesn=E2=80=99t.

What might be wrong with this approach?

Best Regards,\
Piotr Krysik

--b1_WuuGDriXx5TgJGGKFm9ikPNHzDxl1V5zN5CriwakU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello all,</p><p>RxTx loopback is a feature that was missing(/hard to do=
) in RFNoC before at least 4.0.</p><p>Currently it works and there are even=
 nice examples showing how set it up, so one doesn=E2=80=99t have to figure=
 this out. There are examples both in pure UHD (https://github.com/EttusRes=
earch/uhd/blob/master/host/examples/rfnoc_radio_loopback.cpp) and GNU Radio=
 (https://github.com/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_=
radio_loopback.grc).</p><p>I=E2=80=99m trying to go one step forward and to=
 add an RFNoC block to the loop-back on USRP X410. For simplicity I=
=E2=80=99m starting from the rfnoc-example (https://github.com/EttusResearc=
h/uhd/tree/master/host/examples/rfnoc-example). The graph I want to get wor=
king looks like this: Radio#0=3D=3D&gt;DDC#0--&gt;Gain#0--&gt;DUC#1=3D=3D&g=
t;Radio#1.</p><p>I=E2=80=99ve build the rfnoc-example and I can confirm tha=
t it works with use of the example (https://github.com/EttusResearch/uhd/bl=
ob/master/host/examples/rfnoc-example/examples/rx_gain_estimate_power.py).<=
/p><p>Then I tried to change the rfnoc_radio_loopback.cpp to connect Gain b=
lock between DDC and DUC.</p><p>In order to achieve that I changed this par=
t (https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_rad=
io_loopback.cpp#L123):</p><p>uhd::rfnoc::connect_through_blocks(<br>       =
 graph, rx_radio_ctrl_id, rx_chan, tx_radio_ctrl_id, tx_chan, skip_pp);<br>=
<br></p><p>to:<br>uhd::rfnoc::block_id_t gain_block_id("0/Gain#0");</p><p>r=
fnoc::example::gain_block_control::sptr gain_control =3D  <br>       graph-=
&gt;get_block&lt;rfnoc::example::gain_block_control&gt;(gain_block_id);</p>=
<p>uhd::rfnoc::connect_through_blocks(<br>        graph, rx_radio_ctrl_id, =
rx_chan, gain_block_id, 0, skip_pp);</p><p>uhd::rfnoc::connect_through_bloc=
ks(<br>        graph, gain_block_id, 0, tx_radio_ctrl_id, tx_chan, skip_pp)=
;<br><br>and later I added a call to function that sets the digital gain:</=
p><p>gain_control-&gt;set_gain_value(42);<br><br>Somehow I can=E2=80=99t ge=
t it working this way. The version without my change passes the signal. The=
 version with it included doesn=E2=80=99t.</p><p>What might be wrong with t=
his approach?</p><p>Best Regards,<br>Piotr Krysik</p>

--b1_WuuGDriXx5TgJGGKFm9ikPNHzDxl1V5zN5CriwakU--

--===============7703169729229345038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7703169729229345038==--
