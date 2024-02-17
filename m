Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5094858CB1
	for <lists+usrp-users@lfdr.de>; Sat, 17 Feb 2024 02:17:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDC513845EC
	for <lists+usrp-users@lfdr.de>; Fri, 16 Feb 2024 20:17:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708132667; bh=0r8t2pUoKk42uGv65rfV/dqvfBu1QYPf+Fm+RsQWn7U=;
	h=To:Date:In-Reply-To:References:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=AZ8w61ViEeGL1957yC6n+9o29kvcEoev3wO46cfgVsl4Z2LKpZVWClNY2Wn+Nq88H
	 K2D9oqHiHjjLKBJ/19LfiAFG6O5BCNNA0f/ZTEsGDQb6ku/hF92ieiVrvAW7tD+0zj
	 9N4M5WY9MpGizZR8bKrYhP4C9Hg7Kj4dBsXuhxQkuZV7QracneH2hQwH8+/yUd/GXk
	 xOVEAcY1ULM06hkuuKTYlLj9NlTn6SVCXQO+44VrUvbVYvGG10RJ3FZhR+M73uJR5s
	 3q2Vy3AolOK0wN/Yp8XHkeT4+PDDL5Nng8rj3LxbZmPYPsKmfaoA4gzWWRRT7MFvpr
	 4VMKdYXJiI8kA==
Received: from qs51p00im-qukt01071902.me.com (qs51p00im-qukt01071902.me.com [17.57.155.9])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A930383319
	for <usrp-users@lists.ettus.com>; Fri, 16 Feb 2024 20:17:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=me.com header.i=@me.com header.b="PXGHq4YF";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1708132634; bh=q0c63raR2u7uMWyMyQPkMc1vOTYrKXX2lTFnj75zefk=;
	h=To:From:Subject:Date:Message-id:Content-Type:MIME-Version;
	b=PXGHq4YFYvNTfhavXDi94ADq0YFQA2Qr5mu/f0MocX/Bjk4rJedF7SrBr0pi4MCiL
	 v1XMT0j24pedpZzCiSfUaISlIUPHItYRyeP85JSDuKsFqQkg8iusFPaAIarHU6m030
	 2ddBBzsXwmDHZ9l9KmeGWyy+EK212nhbSsPIRQWGIIK7TUIjBdYAYDkm10PuFV466U
	 MYe6W5YwpmnUkEX3ORNzECm3atATlEg/9sgd8OTbfgFHezAkzJwDZrYVolb7N7EN4B
	 OSQjTEYCYfLvClJ9fWDnnLt0Qk9OR4x8HeSMhrP+0czf+543Ln13QgNItIM832RPH3
	 tj4P8icAQ7LjA==
Received: from qs51p00im-qukt01071902.me.com (unknown [17.57.155.9])
	by qs51p00im-qukt01071902.me.com (Postfix) with ESMTPS id 865535EC0182;
	Sat, 17 Feb 2024 01:17:13 +0000 (UTC)
Received: from p00-mailws2-59788ccdd8-hkrvg (qs51p00im.dlb-asmtpoutvip.me.com [10.112.113.12])
	by qs51p00im-qukt01071902.me.com (Postfix) with ESMTPSA id 02D4E5EC0166;
	Sat, 17 Feb 2024 01:17:12 +0000 (UTC)
To: Muhammad Hassan <engr.muhd.hassan@gmail.com>
Date: Sat, 17 Feb 2024 01:17:12 +0000 (UTC)
X-Mailer: iCloud MailClientcurrent MailServer2409B72.10000-master-0-9980a4f196b0
Message-id: <b1040880-b41e-4c40-be8d-4028a1d669ae@me.com>
MIME-Version: 1.0
In-Reply-To: <CACDPEcMiC_vyTATOWF5YyW4rSaJfM9RJwjHPjLHg+72kerTkNw@mail.gmail.com>
References: <b0fa9b2c-15fa-4fe9-94a6-75fa153d2163@me.com>
 <CACDPEcMiC_vyTATOWF5YyW4rSaJfM9RJwjHPjLHg+72kerTkNw@mail.gmail.com>
X-Proofpoint-GUID: LP2Frn5KVpwcxMfXG0hXjBY_EG1nhY42
X-Proofpoint-ORIG-GUID: LP2Frn5KVpwcxMfXG0hXjBY_EG1nhY42
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-16_24,2024-02-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 suspectscore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 adultscore=0 malwarescore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2402170006
Message-ID-Hash: BBQED2CFRF5GZDRORGNRWGBPVFWZ72WJ
X-Message-ID-Hash: BBQED2CFRF5GZDRORGNRWGBPVFWZ72WJ
X-MailFrom: jimgrubb@me.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem getting USRP B205mini-i running
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BBQED2CFRF5GZDRORGNRWGBPVFWZ72WJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Jim Grubb via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Grubb <jimgrubb@me.com>
Content-Type: multipart/mixed; boundary="===============5332183924250431982=="


--===============5332183924250431982==
Content-Type: multipart/alternative; boundary=Apple-Webmail-42--1b9baf6d-096e-4a58-8c09-98a23c7aa353


--Apple-Webmail-42--1b9baf6d-096e-4a58-8c09-98a23c7aa353
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
    charset=utf-8;
    format=flowed

Thanks for your response Muhammad, I just installed the software on a fres=
h Ubuntu 22.04 machine and followed the directions on the ettus web site t=
o get things up and running. I'm afraid I have very little experience with=
 gnuradio and am a bit of a linux hack so please forgive my ignorance. It =
looks like I installed gnuradio 3.10 by default along with UHD 4.6 I'll go=
 back and try to figure out how to de-install and get the versions you sug=
gested running. Thank you very much for your help. Best, Jim On Feb 16, 20=
24, at 4:35 PM, Muhammad Hassan <engr.muhd.hassan@gmail.com> wrote: Make s=
ure you have same uhd version on gnu radio and on host pc. I would recomen=
d installing gnu radio v3.8 and uhd version on pc should b 4.4
--Apple-Webmail-42--1b9baf6d-096e-4a58-8c09-98a23c7aa353
Content-Type: multipart/related;
    type="text/html";
    boundary=Apple-Webmail-86--1b9baf6d-096e-4a58-8c09-98a23c7aa353


--Apple-Webmail-86--1b9baf6d-096e-4a58-8c09-98a23c7aa353
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
    charset=utf-8;

<html><body><div><div><div>Thanks for your response Muhammad,<br></div><div><br></div>=
<div>I just installed the software on a fresh Ubuntu 22.04 machine and fol=
lowed the directions on the ettus web site to get things up and running.&n=
bsp; I'm afraid I have very little experience with gnuradio and am a bit o=
f a linux hack so please forgive my ignorance.<br></div><div><br></div><di=
v>It looks like I installed gnuradio 3.10 by default along with UHD 4.6<br=
></div><div><br></div><div>I'll go back and try to figure out how to de-in=
stall and get the versions you suggested running.<br></div><div>Thank you =
very much for your help.<br></div><div>Best,<br></div><div>Jim<br></div><d=
iv><br></div></div><blockquote type=3D"cite"><div>On Feb 16, 2024, at 4:35=
 PM, Muhammad Hassan &lt;engr.muhd.hassan@gmail.com&gt; wrote:<br></div><d=
iv><br></div><div><br></div><div><div dir=3D"auto">Make sure you have same=
 uhd version on gnu radio and on host pc. I would recomend installing gnu =
radio v3.8 and uhd version on pc should b 4.4<br></div></div></blockquote>=
</div><div><br></div></body></html>
--Apple-Webmail-86--1b9baf6d-096e-4a58-8c09-98a23c7aa353--

--Apple-Webmail-42--1b9baf6d-096e-4a58-8c09-98a23c7aa353--

--===============5332183924250431982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5332183924250431982==--
