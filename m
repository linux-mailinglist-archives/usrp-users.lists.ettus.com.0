Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33617909F7F
	for <lists+usrp-users@lfdr.de>; Sun, 16 Jun 2024 21:16:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB04B3838C1
	for <lists+usrp-users@lfdr.de>; Sun, 16 Jun 2024 15:16:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718565388; bh=CPD8pJBSLPoUjkVzpZFEGRQOxMHYeWt1VsOwpKclHuk=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=GDbsRJzsn0sMHsAbQpUpQTf7qtDbDcsCU0BMCDXqNw5G/uByfpBgMqX1+23nFEgYL
	 LZndqYHZqSeLi5swwPJ4NYOu47nyKR5U0ZKRlCPLX7DO8hf80Y8JjhIGXbQNQIGhRA
	 FfjtqVHOvDvCxDlq9VxMZxi3eeel0G4EO23fqfNCLC0kEGYe5NToCWH0XvOoF2ICN/
	 bQXN5nxMIpyFDXzhxtZROAJ2rgc0rwGqIRAAzl8Oq+Me3ZZghwUnrNoDx2dd27bbcW
	 Efq5OvHf/g01odnUQ4XDvMbGruGWJB2ZS9wt9c3XCqvUJh7wGnxntq7DqtHWroTWaZ
	 pXHxcJk31JY6A==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C841B385397
	for <usrp-users@lists.ettus.com>; Sun, 16 Jun 2024 11:41:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718552518; bh=aVdAlc6wGNTODUlpwlMuW2fJP/9Qv0W5NdOxbWvEIbI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=FMwt0/U8m/04Rm3aRH9BDMqhjLm7/qIDGgzhczuNFrarf5yY0NccLwaMbD6TY371A
	 9wOELfUbdyWZIQQbDJ+L48V14LTaf8ByHNKj4e5/avakPInhhAHmbk4/he8Zk3Z9Dz
	 8HH84piX8nd5wNOIHetd5duu5ZR1CirviQOK5WNzyq3ezWdL8MlKAqczP1z2ZlqgWB
	 ZcWeziVsRTvKDU5ktfGKjKrnDBIlLHH1CxAVZekYNiXcBz60GT/QAyzjy5gzSjRr6r
	 /TcJlYpgYoQkPUegTdjqosUXrs7V4+i+C17zUwkROmiRoFkl97AzCywyAm/iQ6PtnF
	 bdp4XTeEI/akg==
Date: Sun, 16 Jun 2024 15:41:58 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <ne6FOOUlHuuo76BbsQ1d0cd6bN1ppE1nKfiUNxMAys@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: JVdGpy7yE2Dig8Mwc3QCoicOucJKYvofDfN8wefok@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: WQDGGTRI3VONW35525O6QBN4YMQRLREQ
X-Message-ID-Hash: WQDGGTRI3VONW35525O6QBN4YMQRLREQ
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to put additional RFNoC block in Rx-Tx loopback?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WQDGGTRI3VONW35525O6QBN4YMQRLREQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7179801409202460031=="

This is a multi-part message in MIME format.

--===============7179801409202460031==
Content-Type: multipart/alternative;
 boundary="b1_ne6FOOUlHuuo76BbsQ1d0cd6bN1ppE1nKfiUNxMAys"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_ne6FOOUlHuuo76BbsQ1d0cd6bN1ppE1nKfiUNxMAys
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I think I figured out what is wrong. It starts from the fact that =E2=80=98=
rfnoc_radio_loopback=E2=80=98 example doesn=E2=80=99t change the decimati=
on in the =E2=80=98DDC=E2=80=99 no matter what rate is selected. This is =
because =E2=80=98rate=E2=80=98 parameter is applied to =E2=80=98Radio=E2=80=
=98 RFNoC block. In the end the sample rate of the stream at the input of=
 the =E2=80=98Gain=E2=80=98 block is equal to =E2=80=98master_clock_rate=E2=
=80=99 (245.76MHz by default for X410).

However the =E2=80=98Gain=E2=80=98 block uses =E2=80=98rfnoc_chdr=E2=80=98=
 clock rate (200MHz for X410) both for control and the data. Taking into =
account that the =E2=80=98Gain=E2=80=99 clock processes one sample per cl=
ock cycle it is not able keep up with the input stream rate.

A workaround was to increase the decimation by setting proper rate with u=
se of =E2=80=98set_output_rate=E2=80=99 function of DDC controller. After=
 that the =E2=80=98Gain=E2=80=99 block started to work as expected.

However I need a =E2=80=98Gain=E2=80=99 block that is able to process sam=
ples coming with the maximum rate (without decimation). For this I=E2=80=99=
m trying to change the data clock to =E2=80=98ce=E2=80=99 (266.6(6) MHz f=
or X410 AFAIK). I changed it to mimic i.e. what I  =E2=80=98Moving_avg=E2=
=80=98 has (so I changed =E2=80=98=E2=80=98gain.yml=E2=80=99, =E2=80=98rf=
noc_block_gain.v=E2=80=98 and =E2=80=98noc_shell_gain.v=E2=80=99). But it=
 doesn=E2=80=99t work yet.

So the question is: how to change the =E2=80=98Gain=E2=80=99 block so tha=
t it uses =E2=80=98ce=E2=80=99 clock instead of =E2=80=98rfnoc_chdr=E2=80=
=98?\
\
Best Regards,\
Piotr Krysik

--b1_ne6FOOUlHuuo76BbsQ1d0cd6bN1ppE1nKfiUNxMAys
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p><p>I think I figured out what is wrong. It starts from the fac=
t that =E2=80=98rfnoc_radio_loopback=E2=80=98 example doesn=E2=80=99t chang=
e the decimation in the =E2=80=98DDC=E2=80=99 no matter what rate is select=
ed. This is because =E2=80=98rate=E2=80=98 parameter is applied to =
=E2=80=98Radio=E2=80=98 RFNoC block. In the end the sample rate of the stre=
am at the input of the =E2=80=98Gain=E2=80=98 block is equal to =E2=80=
=98master_clock_rate=E2=80=99 (245.76MHz by default for X410).</p><p>Howeve=
r the =E2=80=98Gain=E2=80=98 block uses =E2=80=98rfnoc_chdr=E2=80=98 clock =
rate (200MHz for X410) both for control and the data. Taking into account t=
hat the =E2=80=98Gain=E2=80=99 clock processes one sample per clock cycle i=
t is not able keep up with the input stream rate.</p><p>A workaround was to=
 increase the decimation by setting proper rate with use of =E2=80=98set_ou=
tput_rate=E2=80=99 function of DDC controller. After that the =E2=80=98Gain=
=E2=80=99 block started to work as expected.</p><p>However I need a =
=E2=80=98Gain=E2=80=99 block that is able to process samples coming with th=
e maximum rate (without decimation). For this I=E2=80=99m trying to change =
the data clock to =E2=80=98ce=E2=80=99 (266.6(6) MHz for X410 AFAIK). I cha=
nged it to mimic i.e. what I  =E2=80=98Moving_avg=E2=80=98 has (so I change=
d =E2=80=98=E2=80=98gain.yml=E2=80=99, =E2=80=98rfnoc_block_gain.v=E2=80=
=98 and =E2=80=98noc_shell_gain.v=E2=80=99). But it doesn=E2=80=99t work ye=
t.</p><p>So the question is: how to change the =E2=80=98Gain=E2=80=99 block=
 so that it uses =E2=80=98ce=E2=80=99 clock instead of =E2=80=98rfnoc_chdr=
=E2=80=98?<br><br>Best Regards,<br>Piotr Krysik<br><br></p>

--b1_ne6FOOUlHuuo76BbsQ1d0cd6bN1ppE1nKfiUNxMAys--

--===============7179801409202460031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7179801409202460031==--
