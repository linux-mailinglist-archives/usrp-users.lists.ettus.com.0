Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 487AD360BDD
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 16:33:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EE357384318
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 10:33:51 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E39AB383CB6
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 10:33:01 -0400 (EDT)
Date: Thu, 15 Apr 2021 14:33:01 +0000
To: usrp-users@lists.ettus.com
From: xiapeiqing@gmail.com
Message-ID: <JEg7Z7xhFC9S4eO0NIsJtqowVyeG5ddagpmwP41rzFs@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: XRBWLRXJTKKVPCJIO7G27X7RRNW4IOEM
X-Message-ID-Hash: XRBWLRXJTKKVPCJIO7G27X7RRNW4IOEM
X-MailFrom: xiapeiqing@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] tlast signal in CHDR
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XRBWLRXJTKKVPCJIO7G27X7RRNW4IOEM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5796072706061250120=="

This is a multi-part message in MIME format.

--===============5796072706061250120==
Content-Type: multipart/alternative;
 boundary="b1_JEg7Z7xhFC9S4eO0NIsJtqowVyeG5ddagpmwP41rzFs"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_JEg7Z7xhFC9S4eO0NIsJtqowVyeG5ddagpmwP41rzFs
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am working on some existing code of RfNoC on UHD_3.15.0 to process the =
incoming rx data stream.

The CHDR wrapper/unwrapper makes use of the TLAST signal. For a stream of=
 continuous ADC samples, there is no obvious data block boundary such as =
each line/frame commonly in video. I didn=E2=80=99t study the RF block im=
plementation, if needed I will do that. I am wondering whether anybody ca=
n share some knowledge on the condition of TLAST signal assert in the rad=
io block,  or the direction to study it.

Many thanks in advance.=20

We are hiring consultant for RfNoC development. please contact peiqing@hi=
gherground.earth

--b1_JEg7Z7xhFC9S4eO0NIsJtqowVyeG5ddagpmwP41rzFs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>I am working on some existing code of RfNoC on UHD_3.15.0 to process t=
he incoming rx data stream.</p><p>The CHDR wrapper/unwrapper makes use of=
 the TLAST signal. For a stream of continuous ADC samples, there is no ob=
vious data block boundary such as each line/frame commonly in video. I di=
dn=E2=80=99t study the RF block implementation, if needed I will do that.=
 I am wondering whether anybody can share some knowledge on the condition=
 of TLAST signal assert in the radio block,  or the direction to study it=
.</p><p>Many thanks in advance. </p><p>We are hiring consultant for RfNoC=
 development. please contact peiqing@higherground.earth</p><p><br></p>


--b1_JEg7Z7xhFC9S4eO0NIsJtqowVyeG5ddagpmwP41rzFs--

--===============5796072706061250120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5796072706061250120==--
