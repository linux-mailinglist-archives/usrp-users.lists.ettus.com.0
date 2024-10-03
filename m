Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA5598E92E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 06:41:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8B18385A51
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2024 00:41:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727930511; bh=yd3AerLRFPj2BKCVmKcyTuRGM1O6AExzMVsmpB9v5eM=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=I6XRxwuYLBpz5ZxO96GAn1yvuNfDixnw/lXCylIoi918XPAtZS2z9wX/UuMXEH4uR
	 KNaS6ti70zzmxpvfMZ/5thlnU5cOkZ4KEBvj+/XRz7cBjuVl7mSTVWmsXdrwofcvYR
	 +NmFylH6L5zPYGXh6yFHUA2bSVnmB+xquCUGeyo9CRUBr7td4KzcPao7rf6T3J2Y+j
	 qVcD9DvDYHK9uoQwVvWqEB3RxH0pTBYAHOu9AD6OUO2Q2ichm0rE+kO5y12pl1oOhi
	 5mTn4nh46XqihETapb6x9IbrucAKwpdU9Gun37wo6smyN36RDeht1uKEEzD+K9/euB
	 y4Kxpqtb20foQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 22DCE385A50
	for <usrp-users@lists.ettus.com>; Thu,  3 Oct 2024 00:41:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727930507; bh=GqNyVDNvJFZEjzyeAbX0dI7XDjvigTFAUxnZmPKyErY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=K4i4TMJIN6QEfQ8KyFNxDHLSDRWaY5UJZ7BiWzHQc0KUaE+Jg6Uf5fW8+ub+VKCjx
	 GXRC0xy2gatDMbt9HL+hWQbFBsI+i0Q+hKVXA9rGvAgFRZtvUvx/HxPLDiTDVLCfHI
	 QusFMrAizpMLzSNHcGrbHxDfJMlyKnbLIhe7iyzfvf1XrthTax+db031p3pQ89HD1A
	 LQDHcaAP+/6h12YtiamiuyRalnkejq1lFER7tbkKdmCA59F2nql/gB47IygULRxP6C
	 rto3FaDHg181Fa5jsuNf+NNvf/T6XVXLW0tJeSDOBh9HOwCjxrfPAByZcuWEhJdiDE
	 kxVVEF0o4Ydqw==
Date: Thu, 3 Oct 2024 04:41:47 +0000
To: usrp-users@lists.ettus.com
Message-ID: <du54Qz0y8WFSCl9n72A0s9gGLwbcdEIKEM08AIE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: BDW44J6J43QSAVBQBUOBDAREDUIZPASF
X-Message-ID-Hash: BDW44J6J43QSAVBQBUOBDAREDUIZPASF
X-MailFrom: mruane@silveredge-gs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Triggering of Rx synchronously with Tx in RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BDW44J6J43QSAVBQBUOBDAREDUIZPASF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: mruane--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: mruane@silveredge-gs.com
Content-Type: multipart/mixed; boundary="===============8619087333603255948=="

This is a multi-part message in MIME format.

--===============8619087333603255948==
Content-Type: multipart/alternative;
 boundary="b1_du54Qz0y8WFSCl9n72A0s9gGLwbcdEIKEM08AIE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_du54Qz0y8WFSCl9n72A0s9gGLwbcdEIKEM08AIE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

I=E2=80=99m not familiar enough with RFNoC to be of assistance there, but y=
our thought about controlling the flow of samples between the ADC and the r=
adio block seems to have some merit.   We frequently timestamp the sample s=
tream so that we can then tell the radio to, =E2=80=9CGive me samples betwe=
en time A and time B.=E2=80=9D   Substituting your trigger for the timestam=
ps, you essentially have the same circuit.   The easiest way to do it might=
 be by editing the x410_ps_rfdc_bd block design in Vivado IP Integrator, an=
d then exporting the new block design back to x410_ps_rfdc_bd.tcl so it wil=
l be built when you do a =E2=80=98make=E2=80=99.   If you don=E2=80=99t wan=
t anything sent to the PC between triggers, the basic implementation would =
be to put an AXI Stream FIFO between the ADC and radio block.   The input v=
alid signal would be driven by the trigger, such that it would ignore the i=
ncoming samples when the trigger was low, and write the samples to the buff=
er when the trigger was high.   Depending on the configuration of the FIFO =
buffer, you could use it in =E2=80=98packet=E2=80=99 mode to send the whole=
 buffer once there were a certain number of samples in it; OR, if you know =
that the PC can handle the new reduced rate without flow control, you could=
 just set it to transmit samples as soon as it gets them (i.e. the wr_data_=
en signal would be equal to the inverted FIFO empty flag).

I=E2=80=99m sorry I don=E2=80=99t have an RFNoC-related answer.   We don=
=E2=80=99t use RFNoC, and I usually design the data-paths based on the requ=
irements of other processing blocks in the design, and of the downstream eq=
uipment, exactly as you described in your question.

I=E2=80=99m happy to elaborate further if you have any questions.

Hope this helps,

Mike
--b1_du54Qz0y8WFSCl9n72A0s9gGLwbcdEIKEM08AIE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Piotr,</p><p>I=E2=80=99m not familiar enough with RFNoC to be of assi=
stance there, but your thought about controlling the flow of samples betwee=
n the ADC and the radio block seems to have some merit.   We frequently tim=
estamp the sample stream so that we can then tell the radio to, =E2=80=
=9CGive me samples between time A and time B.=E2=80=9D   Substituting your =
trigger for the timestamps, you essentially have the same circuit.   The ea=
siest way to do it might be by editing the x410_ps_rfdc_bd block design in =
Vivado IP Integrator, and then exporting the new block design back to x410_=
ps_rfdc_bd.tcl so it will be built when you do a =E2=80=98make=E2=80=99.   =
If you don=E2=80=99t want anything sent to the PC between triggers, the bas=
ic implementation would be to put an AXI Stream FIFO between the ADC and ra=
dio block.   The input valid signal would be driven by the trigger, such th=
at it would ignore the incoming samples when the trigger was low, and write=
 the samples to the buffer when the trigger was high.   Depending on the co=
nfiguration of the FIFO buffer, you could use it in =E2=80=98packet=
=E2=80=99 mode to send the whole buffer once there were a certain number of=
 samples in it; OR, if you know that the PC can handle the new reduced rate=
 without flow control, you could just set it to transmit samples as soon as=
 it gets them (i.e. the wr_data_en signal would be equal to the inverted FI=
FO empty flag).</p><p>I=E2=80=99m sorry I don=E2=80=99t have an RFNoC-relat=
ed answer.   We don=E2=80=99t use RFNoC, and I usually design the data-path=
s based on the requirements of other processing blocks in the design, and o=
f the downstream equipment, exactly as you described in your question.</p><=
p>I=E2=80=99m happy to elaborate further if you have any questions.</p><p>H=
ope this helps,</p><p>Mike</p><p><br></p>

--b1_du54Qz0y8WFSCl9n72A0s9gGLwbcdEIKEM08AIE--

--===============8619087333603255948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8619087333603255948==--
