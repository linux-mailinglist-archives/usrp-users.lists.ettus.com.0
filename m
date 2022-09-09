Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6765B2E87
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 08:11:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2B93383E7F
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 02:11:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662703897; bh=B9nDFczuLfUBJOJcEkHMzEYfSDu5qzkwMov7aq3gI28=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=F8opGB94AtUm91Zn3A1EIEjsoWvBCNgZ8RYwTcR0AepUWv9u3CzceEvtHyS4j8Spm
	 Bly50YyY59Qx5/o3oP75fzA2Avrn+HjPa4IiuD9DY09+tEgznfTeIwrMrM1ocoaIK2
	 FOJO/P4PZ/djARtfjL0P/kTDnkEXW7bBx+G0MInceHUu9Ep4WVmjN08Tuxrq6KkJVS
	 KZ3TnT1lghivGt+miJgQGVpvKlUR7yYrUI5Rn4FqxQepD6qh7Ti3N8QNTopEH90KL5
	 8N41KoHDf7QFAPlfTtFiVlwFiIJzXmWM7TwDOTSwDy5M/wWXxSfzzwFetB8lu8DH88
	 7gDbcMTCiO1Tg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CFE8383E7E
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 02:10:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662703850; bh=ys6rcCL4yREP9VFgLrvsYLG4wRkRuQyr0hiu7jPARiA=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=fsFXkUn7gKnh3ybxdXIw/s2WUwhiKflLngxYpUK/GCYbIvAGd2av8VRXVFtnq8wtI
	 zTk1tuoM2UoWTHNprSHPWfjCcOiove+SB0TXhwD9CYjKjnqwuRv8KvNceZebOJ3Xkh
	 F971UicF8MYRZ3iY7N80PKLLZpGVkcMD4VgVzOye+1GNaO/Ws+qACvRBcniuIkqIKe
	 sWVl625urZg1Ojh06SJV/DuyYx2voYfJO2Fh29baIvBmHZ2PQbsX9uVsIAOZLZ84My
	 1AlEnm0lQ+DUpz0/ifqXIDHQEqhLHB21dLHnHzu4Rs6auXXKNK1CFusjGZGmqUbdnk
	 2wG6Gw34eC+Tw==
Date: Fri, 9 Sep 2022 06:10:50 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <0NNsJ11GV8RXBWyXhg9JC5l1qlg2REQ4iD09afYAA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 5554C6E0.1020606@o2.pl
MIME-Version: 1.0
Message-ID-Hash: PCFJ43G4FI66OBGU6NJ6LA2BTQ2HWWE6
X-Message-ID-Hash: PCFJ43G4FI66OBGU6NJ6LA2BTQ2HWWE6
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: internal TX-RX loop
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PCFJ43G4FI66OBGU6NJ6LA2BTQ2HWWE6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8414593188144436762=="

This is a multi-part message in MIME format.

--===============8414593188144436762==
Content-Type: multipart/alternative;
 boundary="b1_0NNsJ11GV8RXBWyXhg9JC5l1qlg2REQ4iD09afYAA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0NNsJ11GV8RXBWyXhg9JC5l1qlg2REQ4iD09afYAA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Piotr Krysik wrote:

> W dniu 05.05.2015 o 20:36, Martin Braun via USRP-users pisze:
>
> > On 04.05.2015 12:51, Piotr Krysik via USRP-users wrote:
> >
> > > Hi Martin,
> > >
> > > Do you maybe know what is the source of the problem?
> > >
> > > I remember that for example USRP N200 has a mechanism that turns of=
f Tx
> > > channel when the device don't get any data to transmit from the
> > > controlling PC. After implementing a signal generator inside of FPG=
A it
> > > caused problems. Workaround was to transmit some data to the device=
.
> > >
> > > Is the problem of similar nature in this case?
> > > No, this is something else entirely. In essence, the radios used pr=
edate
> > > RFNoC, so they behave differently than the other RFNoC blocks. We n=
eed
> > > to change that, which we will do together with several other change=
s.
> > > That should fix this issue.
> >
> > Cheers,
> > Martin
> >
> > ---
> >
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> Hi all,
>
> I've hacked the FPGA code according to Ian's advice. In what I've done
> DDC output (sample_rx) is feeded to DUC input. With simple
> gnuradio-companion flowgraph that receives signal from the device and
> sends any signal that will be replaced by DDC output - it works. Many
> thanks Ian for pointing this signals to me.
>
> The hardest part was getting Xilinx tools to compile the FPGA code - th=
e
> outputted error messages tend to be rather cryptic (which is only one o=
f
> their multiple drawbacks btw.).
>
> Best Regards,
> Piotr

Hello

This is very old thread but I would like to let anyone who might see it k=
now that what is said in it =E2=80=9Cthat you can=E2=80=99t make connecti=
on Rx -> Tx in RFNoC without hacking it=E2=80=9D is no longer (for few ye=
ars already) the case. Look at rfnoc_radio_loopback that does the Rx->Tx =
connection.

Best Regards,\
Piotr Krysik

--b1_0NNsJ11GV8RXBWyXhg9JC5l1qlg2REQ4iD09afYAA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Piotr Krysik wrote:</p><blockquote><p>W dniu 05.05.2015 o 20:36, Marti=
n Braun via USRP-users pisze:</p><blockquote><p>On 04.05.2015 12:51, Piot=
r Krysik via USRP-users wrote:</p><blockquote><p>Hi Martin,</p><p>Do you =
maybe know what is the source of the problem?</p><p>I remember that for e=
xample USRP N200 has a mechanism that turns off Tx
channel when the device don't get any data to transmit from the
controlling PC. After implementing a signal generator inside of FPGA it
caused problems. Workaround was to transmit some data to the device.</p><=
p>Is the problem of similar nature in this case?
No, this is something else entirely. In essence, the radios used predate
RFNoC, so they behave differently than the other RFNoC blocks. We need
to change that, which we will do together with several other changes.
That should fix this issue.</p></blockquote><p>Cheers,
Martin</p><div contenteditable=3D"false"><hr></div><p>USRP-users mailing =
list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</p></b=
lockquote><p>Hi all,</p><p>I've hacked the FPGA code according to Ian's a=
dvice. In what I've done
DDC output (sample_rx) is feeded to DUC input. With simple
gnuradio-companion flowgraph that receives signal from the device and
sends any signal that will be replaced by DDC output - it works. Many
thanks Ian for pointing this signals to me.</p><p>The hardest part was ge=
tting Xilinx tools to compile the FPGA code - the
outputted error messages tend to be rather cryptic (which is only one of
their multiple drawbacks btw.).</p><p>Best Regards,
Piotr</p></blockquote><p>Hello</p><p>This is very old thread but I would =
like to let anyone who might see it know that what is said in it =E2=80=9C=
that you can=E2=80=99t make connection Rx -&gt; Tx in RFNoC without hacki=
ng it=E2=80=9D is no longer (for few years already) the case. Look at rfn=
oc_radio_loopback that does the Rx-&gt;Tx connection.</p><p>Best Regards,=
<br>Piotr Krysik</p>


--b1_0NNsJ11GV8RXBWyXhg9JC5l1qlg2REQ4iD09afYAA--

--===============8414593188144436762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8414593188144436762==--
