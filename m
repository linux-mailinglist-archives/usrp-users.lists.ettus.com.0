Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2586E971F
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 16:31:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3607A383FD9
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 10:31:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682001101; bh=y8cslpkuFFuGIOmAVy4l7ij5D7p112yB/K/lR3wz+3Q=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OMD6CJLntaAu2MVxz6DGeILbILzu1IBAOK4GSP1ek6fofF518umkwqjB9VkSye6sz
	 DcgDE++u9EFdHyrodiUBk379LjinXpx3aQGEtLYEmiFEiYGbItNz1yOa4cRNHchXqK
	 5QUBhYu31LjC4/S6YfGd2Ixfuot//Uh30Df+lhG0QUKH/Ff+EP9sQXp+i1AjDnaREY
	 nC3VLsZWQr7n20uA8HLvltkeHzFD8fOR53qquQBzKc1zW7ab5JBCKi+lPAgsvPJl+X
	 Dms0JWgUNnuojTQfelKdXSdkylkwognHxeKRDbdmeVNIYFfNcdqZM7HgcfI/oTPokZ
	 qWULbF0REOYfA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 522443840F4
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 10:30:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682001050; bh=LGcx5vlyFdhqpQEfPADC/HOu//PugYj0Kdzf8OmnlK8=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=ztgxd+HkrBh5+0+oofLIE/9iq2JnyziahaQ6euGg1foK6VHrbLiEj5zsu2MpnPhCX
	 Swy2atHoPBf35NnwoiB7BSOXp5d8dGTVxomBp5QIsPIPmsGILz7fH2+ltcmAtbwWs+
	 GKTjcNT1qFlp3RiujVaJIYX5LCV4HLVVeKVmyR2uNydYELAlhXBXup3N3WOqVGtnDe
	 ya5mGyQbvAycUl9YCKGZZQvzqaHD0AAwe2dXIfC3c6Ggdr86SCmnItthU4rYYbNDcZ
	 UA/JowVhbwBRyuEmkVo917J1Ktzz3AW9fA0z56rSwfbqtWIgNLqgY06SigXiZ0MdDN
	 7pkWphk922V6A==
Date: Thu, 20 Apr 2023 14:30:50 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: b175f6a6-3982-2f1a-e964-b7d4bc064aa0@gmail.com
MIME-Version: 1.0
Message-ID-Hash: 2ZB5HYVWSBOHXZJAAKGNWJUSLEYFGJ53
X-Message-ID-Hash: 2ZB5HYVWSBOHXZJAAKGNWJUSLEYFGJ53
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: time tags seem don't seem to match sample count
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ZB5HYVWSBOHXZJAAKGNWJUSLEYFGJ53/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8739169012420021905=="

This is a multi-part message in MIME format.

--===============8739169012420021905==
Content-Type: multipart/alternative;
 boundary="b1_qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Marcus, that is helpful.

I have restricted my testing to just an N320, and only freq changes for n=
ow.=C2=A0 I have run across something else that is odd though (but has ma=
jor ramifications for my blocks).=C2=A0 Most of the time there are no dro=
ps and everything is fine, but here is an example of what I occasionally =
see:

* I have an N320 running at 100Msps at freq X, all is running smoothly

* I issue a freq change command, and based on time tags, see that it occu=
rred 10.2s after the last time tag (for example)

* When I see the new time tag, I count the number of samples between them=
 as see that I have 1020.2e6 samples

* But if I compute what I would have expected, it should be 1020e6 sample=
s

* That means that I have more samples than I would have expected (200 in =
this example).=C2=A0 I didn't drop samples, I gained some?=C2=A0 That doe=
sn't seem right.

A third anomaly I see is that I go through the steps above, but compute t=
hat I am missing 7 samples.=C2=A0 But if I am watching the screen, I don'=
t see any overflows printed.=C2=A0 Since it is such a small number, it ma=
kes me feel like it is a rounding error somewhere.=C2=A0 But if I make th=
at assumption and ignore it, what is the threshold for when it is no long=
er rounding errors, but is an actual drop?=C2=A0 Is there any way to get =
the O/D flags into the stream from the USRP source block within gnuradio?

TIA

--b1_qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Thank you Marcus, that is helpful.</p><p>I have restricted my testing to=
 just an N320, and only freq changes for now.&nbsp; I have run across somet=
hing else that is odd though (but has major ramifications for my blocks).&n=
bsp; Most of the time there are no drops and everything is fine, but here i=
s an example of what I occasionally see:</p><ul><li><p>I have an N320 runni=
ng at 100Msps at freq X, all is running smoothly</p></li><li><p>I issue a f=
req change command, and based on time tags, see that it occurred 10.2s afte=
r the last time tag (for example)</p></li><li><p>When I see the new time ta=
g, I count the number of samples between them as see that I have 1020.2e6 s=
amples</p></li><li><p>But if I compute what I would have expected, it shoul=
d be 1020e6 samples</p></li><li><p>That means that I have more samples than=
 I would have expected (200 in this example).&nbsp; I didn't drop samples, =
I gained some?&nbsp; That doesn't seem right.</p></li></ul><p>A third anoma=
ly I see is that I go through the steps above, but compute that I am missin=
g 7 samples.&nbsp; But if I am watching the screen, I don't see any overflo=
ws printed.&nbsp; Since it is such a small number, it makes me feel like it=
 is a rounding error somewhere.&nbsp; But if I make that assumption and ign=
ore it, what is the threshold for when it is no longer rounding errors, but=
 is an actual drop?&nbsp; Is there any way to get the O/D flags into the st=
ream from the USRP source block within gnuradio?</p><p>TIA</p>

--b1_qHfhYWYF1uR4qSn7QPB8eeDQJncgEjTaXawCkVcsw--

--===============8739169012420021905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8739169012420021905==--
