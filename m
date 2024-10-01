Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3E698B7F9
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 11:10:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CF9038544B
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2024 05:10:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727773801; bh=jMqwp+bdlbSF60zKcZBLsRpevcMxD0xyQKyNrXPfTAU=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qgY1i3YZVQc0ho/DPApmGMlfuo7foFfmsKp7zmds1chKOYQ26FvXoq+QUZyNFKtYB
	 qQncKVEqbth7Su2ciYuQHwNu1Bpq6KxvOBW70g9W0/cuS53MjdWyLRL4oZ/kzHrcOv
	 KUnb0HqmI6ntebp39aGQmuC6Fad8KG8qi9YHIjECfGthKcT3LS/HZ9uwsNLXkZKE80
	 uAsPe+aPODwXibp1RM54Q20yUUyfzYBbe1qfXcT8x+/3dZq6FMwrJN2SbHNFBYzmOh
	 d4DrKeWq7SngzaqQFxyk/wyOWt0/1ipvR/BukhcE0X2WTZFk4rg65P4m/3a6vH4Q9g
	 Q60W2xzWCf3rw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EA18380BD1
	for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2024 05:09:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727773796; bh=Jvy1TRylmK2+UGHjOTLP/I0f9450ShacELh0YinSXKc=;
	h=Date:To:From:Subject:From;
	b=uIWtugT872RKtjIT1nQ+iAw1uwPHsWGaUSucGA2U20GfOq6iWZ0tmwPbD5Z7n8Qug
	 RYmDZHBZeKIAOVnopOoqdtA/t+PpeA8ss/BRSPDdws5rSevAm5wB7RYQdITcnYgEyc
	 ov2WVlKQv+NAL6o8v8Aeo6gfwF9me2HcgxmO+GMYLYSknzRfpjpf6eXB8As1dZQq88
	 aUjdZovbgbKydACMvxiiSJA/fIbzvuzQoXPiG6l5K0N5NaL7EyW7QKLtEyH+Oi002k
	 kFM9t9PiiS2V2seLp7WOuJqc9s5PI3JT6txA9h1Q7/kPXzUT5UGIQF+8/iZtqaqlzv
	 T/67uOIHI3GYA==
Date: Tue, 1 Oct 2024 09:09:56 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: AZWYH7HCURZVTQMG5YOEWOJBSF2EBNPJ
X-Message-ID-Hash: AZWYH7HCURZVTQMG5YOEWOJBSF2EBNPJ
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Triggering of Rx synchronously with Tx in RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AZWYH7HCURZVTQMG5YOEWOJBSF2EBNPJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7449943157367624439=="

This is a multi-part message in MIME format.

--===============7449943157367624439==
Content-Type: multipart/alternative;
 boundary="b1_zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello all,

I know the topic of triggering of transmission and reception has been rec=
urring here on the list over and over. But I haven=E2=80=99t found the an=
swer that is good for my case among the previous threads .

The context: I'm using USRP X410 and I=E2=80=99m transmitting a pulsed ra=
dar waveform. I=E2=80=99m able to receive the return signal continuously,=
 but I need to limit the stream of data sent to the PC. The good solution=
 is to send precisely selected part of the received signal after each pul=
se. This way the radar can focus only on the most interesting area. For e=
xample to define: receive =E2=80=98N=E2=80=99 samples beginning in =E2=80=
=98R=E2=80=99 samples from the Tx pulse start (where =E2=80=98N=E2=80=99 =
and =E2=80=98R=E2=80=99 can be changed but it doesn=E2=80=99t happen ofte=
n).

My current implementation with continuous reception looks like this: I=E2=
=80=99m using USRP X410 and in RFNoC I have a =E2=80=98Replay=E2=80=99 bl=
ock connected to the DUC->Radio block. =E2=80=98DUC=E2=80=99 has upsampli=
ng set to =E2=80=981=E2=80=99 - that make it pass samples without change =
from =E2=80=98Replay=E2=80=99 block. The =E2=80=98Replay=E2=80=99 block p=
lays in a loop a pulse followed by zeros. The least significant bit of I =
part of IQ sample is connected to GPIO port and is used currently to cont=
rol the RF front-end (switch between transmission and reception). This wa=
y I=E2=80=99m loosing one bit of transmitted IQ sample, but I have very p=
recise control over the GPIO, so that it is synchronized with Tx pulse. F=
or example, I can set that line a bit earlier than RF pulse in order to p=
repare the Tx chain for transmission.

Now in order to achieve what I described (receive =E2=80=98N=E2=80=98 sam=
ples after each pulse) I wanted to reuse for triggering the reception the=
 signal that currently controls the GPIO.

And here my question starts: where in RFNoC should I connect the triggeri=
ng signal and implement the logic that controls passing the samples synch=
ronously with the trigger?

I wanted to implement an RFNoC block that passes the samples synchronousl=
y with the trigger. In order to that I'll have to edit manually the RFNoC=
 flowgraph in order to connect the trigger signal to additional input in =
the block (I can do that). I have doubt if I can trigger an event synchro=
nously with the samples stream this way, but at the moment I have more ba=
sic issue. I don=E2=80=99t know yet how to ignore samples for arbitrarily=
 long time with RFNoC use of block. I think the closest thing that exists=
 in UHD to what I'm trying to do is rfnoc_keep_one_in_n. I'm trying to us=
e some ideas from it but I've got no success yet.

Another solution could be use the trigger to control flow of the samples =
from ADC to the radio block, but I don=E2=80=99t know yet exactly how it =
could be implemented.

Maybe there is some better solution to that what I=E2=80=99m trying to do=
? Maybe I can use timed commands? But I don=E2=80=99t want to send them f=
rom PC as I would have to do that very often: for each pulse and pulse ra=
te might be i.e. 2kHz.

Trying out each option means loosing more time - so maybe you have some a=
dvice which path is most promising?

Best Regards,\
Piotr Krysik

--b1_zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello all,</p><p>I know the topic of triggering of transmission and rece=
ption has been recurring here on the list over and over. But I haven=
=E2=80=99t found the answer that is good for my case among the previous thr=
eads .</p><p>The context: I'm using USRP X410 and I=E2=80=99m transmitting =
a pulsed radar waveform. I=E2=80=99m able to receive the return signal cont=
inuously, but I need to limit the stream of data sent to the PC. The good s=
olution is to send precisely selected part of the received signal after eac=
h pulse. This way the radar can focus only on the most interesting area. Fo=
r example to define: receive =E2=80=98N=E2=80=99 samples beginning in =
=E2=80=98R=E2=80=99 samples from the Tx pulse start (where =E2=80=98N=
=E2=80=99 and =E2=80=98R=E2=80=99 can be changed but it doesn=E2=80=99t hap=
pen often).</p><p>My current implementation with continuous reception looks=
 like this: I=E2=80=99m using USRP X410 and in RFNoC I have a =E2=80=98Repl=
ay=E2=80=99 block connected to the DUC-&gt;Radio block. =E2=80=98DUC=
=E2=80=99 has upsampling set to =E2=80=981=E2=80=99 - that make it pass sam=
ples without change from =E2=80=98Replay=E2=80=99 block. The =E2=80=98Repla=
y=E2=80=99 block plays in a loop a pulse followed by zeros. The least signi=
ficant bit of I part of IQ sample is connected to GPIO port and is used cur=
rently to control the RF front-end (switch between transmission and recepti=
on). This way I=E2=80=99m loosing one bit of transmitted IQ sample, but I h=
ave very precise control over the GPIO, so that it is synchronized with Tx =
pulse. For example, I can set that line a bit earlier than RF pulse in orde=
r to prepare the Tx chain for transmission.</p><p>Now in order to achieve w=
hat I described (receive =E2=80=98N=E2=80=98 samples after each pulse) I wa=
nted to reuse for triggering the reception the signal that currently contro=
ls the GPIO.</p><p>And here my question starts: where in RFNoC should I con=
nect the triggering signal and implement the logic that controls passing th=
e samples synchronously with the trigger?</p><p>I wanted to implement an RF=
NoC block that passes the samples synchronously with the trigger. In order =
to that I'll have to edit manually the RFNoC flowgraph in order to connect =
the trigger signal to additional input in the block (I can do that). I have=
 doubt if I can trigger an event synchronously with the samples stream this=
 way, but at the moment I have more basic issue. I don=E2=80=99t know yet h=
ow to ignore samples for arbitrarily long time with RFNoC use of block. I t=
hink the closest thing that exists in UHD to what I'm trying to do is rfnoc=
_keep_one_in_n. I'm trying to use some ideas from it but I've got no succes=
s yet.</p><p>Another solution could be use the trigger to control flow of t=
he samples from ADC to the radio block, but I don=E2=80=99t know yet exactl=
y how it could be implemented.</p><p>Maybe there is some better solution to=
 that what I=E2=80=99m trying to do? Maybe I can use timed commands? But I =
don=E2=80=99t want to send them from PC as I would have to do that very oft=
en: for each pulse and pulse rate might be i.e. 2kHz.</p><p>Trying out each=
 option means loosing more time - so maybe you have some advice which path =
is most promising?</p><p>Best Regards,<br>Piotr Krysik</p>

--b1_zCLIwYcY6ADoffbvImLtwRjZkDAy2JYdgumpej9z2Q--

--===============7449943157367624439==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7449943157367624439==--
