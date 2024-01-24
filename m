Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF9583B57A
	for <lists+usrp-users@lfdr.de>; Thu, 25 Jan 2024 00:14:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D7063859F8
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jan 2024 18:14:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706138080; bh=QSfDLj1ACsi4esyZCYvNPS0awjVScirN4TR7sVias1c=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=d5LDyXdsVbwnwlLjgBTpAgIjlgpMslBMpZiMWRYCALrQH5RFBz7cwnnlD1kGq/CtB
	 3Rzzqiu1SIHGQ8FTsIe5aVd0PROzJlaAdSusXJ2/jmaRThk6lbpaMyAT/hK4TQwWVH
	 3m/FMuFeurrqG0Hu6kP1GDxsJE0wRF6x9mtrVHXjQmhYordwZMesKUydFzjdGxqTmK
	 MCjNFn0c6RMGG08syxoxcg/9JMqIJ2pkwWWtzpLJZqTitqcBzNu31f8cAdVrzmhuCm
	 jFOjxb4YGJhSKIaD3T6XRNZyCJR2g7apXpqmL72NXSy70YYGWlJ/8XJ+eCw3mGSrLI
	 KpIKKbP0jI86Q==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E441385763
	for <usrp-users@lists.ettus.com>; Wed, 24 Jan 2024 18:13:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706137993; bh=aAVCwmmeBlYL+GRKMwLgF24IEcRz8fy4ad6iqwZgfmM=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ke3QoP8rYz0AgA6/Xq+5nYmZ06qdnM/d0MgKKKyOrtL8O0Sr6vJaZWt40NYqoVjMT
	 S50jsfIbSSYGGMLW2rVJhIhwzsBDFR4pEbrBkpbDUwKvDOvmyAiiZAnT70Ri1QiMUG
	 HXQdWaYLh951Lq1yEnBVblYsOPWQqD2N7IyxHEFC/L6jU8UVXrUtDXbGqYSEE1MHQJ
	 8rY7R37YDXKPxhX87PQFwXdRR0/G/RGN6XGjJ74zx+3p5o90KWovtJcCr7JElJmDkG
	 0yrfh10+VNNz1+eqSCw1CUyMrHAYSLLpKZluELW7wGHYdsbX1RhR4xVxruRuGbfuVg
	 1Kh8Eu14LyFpQ==
Date: Wed, 24 Jan 2024 23:13:13 +0000
To: usrp-users@lists.ettus.com
From: jmaloyan@umass.edu
Message-ID: <uSK5PbmDBE3PRAJsvdslJj6noxEUK8ckloARk72R0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 6decf301-6986-4310-817f-206f76f45504@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 3J5JA55TJ3R7EIASQDGTLLY7K63PKORR
X-Message-ID-Hash: 3J5JA55TJ3R7EIASQDGTLLY7K63PKORR
X-MailFrom: jmaloyan@umass.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Getting Dropped packets
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3J5JA55TJ3R7EIASQDGTLLY7K63PKORR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7045285229346045475=="

This is a multi-part message in MIME format.

--===============7045285229346045475==
Content-Type: multipart/alternative;
 boundary="b1_uSK5PbmDBE3PRAJsvdslJj6noxEUK8ckloARk72R0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_uSK5PbmDBE3PRAJsvdslJj6noxEUK8ckloARk72R0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Increasing the ring buffer size does not seem to help either, or at least=
 does not clear up the issue entirely, but I will keep the buffer size at=
 its maximum (8192) for now. Same goes setting governing to =E2=80=9Cperf=
ormance=E2=80=9D

I forgot to add in my previous email that occasionally, (this does not al=
ways happen) data will drop in =E2=80=98sprints=E2=80=99, so instead of a=
 small bit of data being dropped here and there, there may be a 10-15 sec=
ond interval where a relatively large amount of data is dropped.

If I bring the data rate slightly down by decreasing the number of sample=
s per burst - for example, decreasing down to 85% of the preferred amount=
 - it seems to act quite reliably(over hours and hours of testing I have =
yet to notice failure), so I am likely operating near a threshold. It doe=
s not get much worse when I increase the samples per burst, but as I have=
 said I rather not lose any data.

I do still find it peculiar that the returned value of recv() when data i=
s dropped is less than the buffer size, then immediately returns 0 the ne=
xt time its called. Going through the source code I could see why it retu=
rns a value smaller than the buffer size, but I dont understand why it wo=
uld return 0.

--b1_uSK5PbmDBE3PRAJsvdslJj6noxEUK8ckloARk72R0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Increasing the ring buffer size does not seem to help either, or at leas=
t does not clear up the issue entirely, but I will keep the buffer size at =
its maximum (8192) for now. Same goes setting governing to =E2=80=9Cperform=
ance=E2=80=9D</p><p>I forgot to add in my previous email that occasionally,=
 (this does not always happen) data will drop in =E2=80=98sprints=E2=80=
=99, so instead of a small bit of data being dropped here and there, there =
may be a 10-15 second interval where a relatively large amount of data is d=
ropped.</p><p>If I bring the data rate slightly down by decreasing the numb=
er of samples per burst - for example, decreasing down to 85% of the prefer=
red amount - it seems to act quite reliably(over hours and hours of testing=
 I have yet to notice failure), so I am likely operating near a threshold. =
It does not get much worse when I increase the samples per burst, but as I =
have said I rather not lose any data.</p><p>I do still find it peculiar tha=
t the returned value of recv() when data is dropped is less than the buffer=
 size, then immediately returns 0 the next time its called. Going through t=
he source code I could see why it returns a value smaller than the buffer s=
ize, but I dont understand why it would return 0.</p><p><br></p>

--b1_uSK5PbmDBE3PRAJsvdslJj6noxEUK8ckloARk72R0--

--===============7045285229346045475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7045285229346045475==--
