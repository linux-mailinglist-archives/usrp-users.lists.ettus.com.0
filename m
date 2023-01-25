Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 826FA67AB2A
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 08:48:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 395583840C9
	for <lists+usrp-users@lfdr.de>; Wed, 25 Jan 2023 02:48:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674632904; bh=bDlutz0wC16LPOHJHjfoJL/2wB/cuIvoRjT9in2Az3s=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gLIVF5QDeCIy6dj54WIQBjqd+lj0C3YBOj47Pd8PwQSeyu03nz+aB/F/c172Et5nU
	 YWouK5oUo0dzWjbIDRtE9MlBmGnCJQ6U7p+cPFTS6lxnLfd8iWWN0cU/pIKOZRSe/h
	 F84kPU3wjDVE7Q2LCrhCxQAsNm2982SFWpZLd1UziuZh+/ZFFhrkPb2Zhq+c/ClSBD
	 Hnng6v/74YLWq/7zbQlST2YmFUbGtwg2uX+oLPQaPi3U2iGqzJhczyczKljcMzZrIg
	 qhcWaRbHmVAXwa28WqVLWgSH0br+t3aZDK//1jGqy8N9SNxK9QpgaHWhll67zdvIAr
	 F8tSw6begkyXw==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54F20383FBC
	for <usrp-users@lists.ettus.com>; Wed, 25 Jan 2023 02:47:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674632854; bh=jHVjCDDRo8NiXgjZJBbkCaN77FOLaArAUZjsAbYoHEM=;
	h=Date:To:From:Subject:From;
	b=0aOMAxoUQdzm6xYt1IHeikG98KG10QL3McnkkTTTqh0GKazw7k5pc3+SRZqH8BD+U
	 Q2A0r7/Tq62oW1yrrYX0poS0oTV9RGui3EKoa3V9qma0xn4WRiCYEWmjY5aRv22P80
	 TPOFJkECp1IgqyakEc7OTk3OzEsesIg8lR46lxb+NifNMahMO/y9sULg6f07VrrNwa
	 3X28zKp0HdFDn/dg3aaPi2Qxp+ziPAC56L0mpW2Q8eDsoj6F/OaLkFwxN/L1iVbBBg
	 RaxgraHri+5Gv8mvteKjrogBmLFbIUm3EkwciYldhTXo1XhnPHqXRWGz/6GD2pvdqx
	 +DMKeAS6yApFQ==
Date: Wed, 25 Jan 2023 07:47:34 +0000
To: usrp-users@lists.ettus.com
From: seckinoncu80@gmail.com
Message-ID: <2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: 7TK47Z56V4MZQW3SVDHXJLA3CE2GPK7I
X-Message-ID-Hash: 7TK47Z56V4MZQW3SVDHXJLA3CE2GPK7I
X-MailFrom: seckinoncu80@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD C++ API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7TK47Z56V4MZQW3SVDHXJLA3CE2GPK7I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5272465795839080830=="

This is a multi-part message in MIME format.

--===============5272465795839080830==
Content-Type: multipart/alternative;
 boundary="b1_2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello USRP Users,

I am new to UHD C++ API. I have some questions about the application that=
 I planned to develop. I have N320 and I got the signal from one channel =
and keep it in a vector as =E2=80=9Cbuff=E2=80=9D.  As you may know form =
examples.

1) How to take the envelope of the signal, then assign a threshold value =
and keep the index of the sample which is greater than threshold value in=
 a vector?

2) After getting pulse=E2=80=99s TOA(time of arrival) and TOD(Time of Dep=
arture), how to take the fft and keep the frequency shift in a vector?

3) Buff get 2000 samples in one cycle in my configuration. How to arrange=
 the fft size and buff size to have a real time operations? Can processin=
g delay be fixed for each cycle?

--b1_2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hello USRP Users,</p><p>I am new to UHD C++ API. I have some questions=
 about the application that I planned to develop. I have N320 and I got t=
he signal from one channel and keep it in a vector as =E2=80=9Cbuff=E2=80=
=9D.  As you may know form examples.</p><p>1) How to take the envelope of=
 the signal, then assign a threshold value and keep the index of the samp=
le which is greater than threshold value in a vector?</p><p>2) After gett=
ing pulse=E2=80=99s TOA(time of arrival) and TOD(Time of Departure), how =
to take the fft and keep the frequency shift in a vector?</p><p>3) Buff g=
et 2000 samples in one cycle in my configuration. How to arrange the fft =
size and buff size to have a real time operations? Can processing delay b=
e fixed for each cycle?</p>


--b1_2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0--

--===============5272465795839080830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5272465795839080830==--
