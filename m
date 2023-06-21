Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0D2738CBA
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 19:08:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 425BC384A0F
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 13:08:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687367326; bh=F8JkztP1rjVuxb7B60qhZyOKXCFNaG/N/egXIlYPpr8=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=D1Uk3thkUVd1cRKOwgl76GJlq7eCO5Op97ym6oe/tsAGT+1zxoRkGpYUyR3SNy6mx
	 wD9eKR+kiV88WIbtVPAEYQ7fjbxMwQFoTfSGwUCunygEWU8dmXCyQmXTWkp8Z8uBWq
	 gQHa/pfui8DgFQblduTrSKuDNc76fJQSfcMGTbqfJDqIc65ShrBiyyDapslQHHfR+n
	 pXV1+sd3uevQhmQBtKE0jUnnNNUIbL7n2eoZ/7gKkhQg5HrD09t3hfIbO2qd/RUMY2
	 UZXwyOIwrohcqwU/lZY/Pw6pJLrgR/uHdm5l4KEOjzP/n688u1OSpBsgZB+jbN//O4
	 SqOYgcK8IJpjQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33D803845D0
	for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 13:07:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687367268; bh=jyPX2Z9gjNleWS1cjJzkV1PCZAM1rBoFkzzhdGa33uc=;
	h=Date:To:From:Subject:From;
	b=MH6aV4fGhv5yt+5db7RUO4UXhoFZObb1b2gwlGfhaGKHtiQrcTPtBokzU9xy15UpK
	 ogSPktAssdnAew+tOaL8Ul/ViKlzAmlTjW0s2XzYvDlNw4+hs4hGqC1iAqxRHPfap6
	 0PV+hU6pHmwFJnHBHfisdPY5fqSiaBrgLw30kkGHVLuX1hpLtB78/RuzWPDygkh5BT
	 8Y6JfO8DUuhl4sFgRHxvmZnimk0maskH3O4Df91yUAsQ40xabyzOMrTEbT2Y07HPKX
	 UPb55Egdo7hcJ9k7Kp3fQprdlEiLY5GKEm8FH7sRbYFiMGW8NjyKZlc3wUtUx6DYTy
	 9xmpyBY99Itpw==
Date: Wed, 21 Jun 2023 17:07:48 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <XE4buL3MZoBZiLuwQn1g9XbdvoHy6JJ8tTu3bWwnDxo@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: TDXKLKCPKQQ5O6HIJYG23R5N6QI462Y2
X-Message-ID-Hash: TDXKLKCPKQQ5O6HIJYG23R5N6QI462Y2
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] chdr_to_axis in 500 Mhz implementations
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TDXKLKCPKQQ5O6HIJYG23R5N6QI462Y2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2918828182337601816=="

This is a multi-part message in MIME format.

--===============2918828182337601816==
Content-Type: multipart/alternative;
 boundary="b1_XE4buL3MZoBZiLuwQn1g9XbdvoHy6JJ8tTu3bWwnDxo"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_XE4buL3MZoBZiLuwQn1g9XbdvoHy6JJ8tTu3bWwnDxo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently working on receiving for a 500 Mhz sampling rate with a cu=
stom block on the x410. However, I am unsure how to address the larger CH=
DR width, which does not seem to be handled in the example blocks provide=
d.

To create my custom block, I started with the example provided =E2=80=9CK=
eep_One_In_N.=E2=80=9D In it, it appears it expects a CHDR_W of 64, and o=
utputs an AXI-Stream of 32 data bits wide along with a clock(ce_clk) that=
 is twice the frequency of the radio block clock frequency.

However, if I increase the CHDR_W to 128, I get overflows, and my guess i=
s because it is trying to send 4 samples in series instead of 4 in parall=
el, but the ce_clk can not keep up since it only goes at twice the rate o=
f the radio clock.=20

My question is what exactly is the =E2=80=9Cexpected=E2=80=9D way to edit=
 the chdr_to_axis/axis_to_chdr modules so that my custom block works with=
 the 128 CHDR_W.

1. Do I need to provide a =E2=80=9C4x_clk"? I did not see one coming out =
of the RFDC so it seems like I would have to generate one myself.

2. Do I adjust =E2=80=9CITEM_W=E2=80=9D from 32 to 64. This would mean th=
at chdr_to_axis would take in 4 in parallel and output 2 samples in paral=
lel, instead of output 1 sample in parallel.

3. Some other way.

   Thanks,

   Joe

--b1_XE4buL3MZoBZiLuwQn1g9XbdvoHy6JJ8tTu3bWwnDxo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I am currently working on receiving for a 500 Mhz sampling =
rate with a custom block on the x410. However, I am unsure how to address t=
he larger CHDR width, which does not seem to be handled in the example bloc=
ks provided.</p><p>To create my custom block, I started with the example pr=
ovided =E2=80=9CKeep_One_In_N.=E2=80=9D In it, it appears it expects a CHDR=
_W of 64, and outputs an AXI-Stream of 32 data bits wide along with a clock=
(ce_clk) that is twice the frequency of the radio block clock frequency.</p=
><p>However, if I increase the CHDR_W to 128, I get overflows, and my guess=
 is because it is trying to send 4 samples in series instead of 4 in parall=
el, but the ce_clk can not keep up since it only goes at twice the rate of =
the radio clock. </p><p>My question is what exactly is the =E2=80=9Cexpecte=
d=E2=80=9D way to edit the chdr_to_axis/axis_to_chdr modules so that my cus=
tom block works with the 128 CHDR_W.</p><ol><li><p>Do I need to provide a =
=E2=80=9C4x_clk"? I did not see one coming out of the RFDC so it seems like=
 I would have to generate one myself.</p></li><li><p>Do I adjust =E2=80=
=9CITEM_W=E2=80=9D from 32 to 64. This would mean that chdr_to_axis would t=
ake in 4 in parallel and output 2 samples in parallel, instead of output 1 =
sample in parallel.</p></li><li><p>Some other way.</p><p><br></p><p>Thanks,=
</p><p>Joe</p></li></ol>

--b1_XE4buL3MZoBZiLuwQn1g9XbdvoHy6JJ8tTu3bWwnDxo--

--===============2918828182337601816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2918828182337601816==--
