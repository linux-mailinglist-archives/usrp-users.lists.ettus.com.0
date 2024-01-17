Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E56398302ED
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 10:57:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 843E8384EAD
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jan 2024 04:57:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705485472; bh=eCd+wO+8Cq61qkxDACqBe8sVr1JvpwnJOB3j6DXMSJo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=k72NDR4vPiReMi8cHs//gI0331O1AwI0qqWNefeio5h9OZmS+yQU9YogU7VGBTvnK
	 GJQ4Y638QAPu/LAkfIlAtIqJKzNkC8LFGkg52U7cBgH69k6pI6xTS9tqM6RxQ4rIxK
	 5lC8hbgtfevT/loi2bR7e8sATQgf31DTM+d3/jX2IMHgcyIlquEn99iGUq0i+SJGto
	 8ML+rDBvLfqssFaGkEMEzvrK54bza96wkH1VmsRszYZsNra5s3XfwoNOdQO9bFxhup
	 Jdrmdcu+xNGp5CHprRfjXS0yQJIMWw6A+8pkRwLHdssEiLRv4oRYWJ2x1yzkxBE0d+
	 PHtv/omXVBKgA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5499A3810F0
	for <usrp-users@lists.ettus.com>; Wed, 17 Jan 2024 04:57:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1705485440; bh=AwtSON8EzYFn8fBPa+5McddPnDNXWqknNlt2fzX4fS4=;
	h=Date:To:From:Subject:From;
	b=h05X/3qZDbwpyYwk8q3MoNDoUcP0A8svznUOMrmw7QZIEKNgZrjauH98sbhnK6VLv
	 RjEjU3AofM8kE+Rf2da215oDemE7+4yHgftTN5SkINKDhU+e0+Pvh4ss6qvD2Y/cEZ
	 3noBLbdMSbjSIgxHXnC0KBKk933FMku8dSoEpp9sj7rP4Nddd8O15SwPZPw/dUoPrM
	 Ar6Srvl9EyRIUr+AniFq4oyWH6QmGcRIQmkXZDhPqSsnvdYh/ByOsqgVnKoYea49Kq
	 givt//TBqh8aYVtfnOFMggjAMhZxlnCWLvCcr0Dk5y93xmvUv2HvA3y6HbYXsnnKYZ
	 VWW+K5l06gQog==
Date: Wed, 17 Jan 2024 09:57:20 +0000
To: usrp-users@lists.ettus.com
From: je.amghar@gmail.com
Message-ID: <YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
Message-ID-Hash: C362DH5HLEVRGDEJZPSSGWHCGWWWI4TP
X-Message-ID-Hash: C362DH5HLEVRGDEJZPSSGWHCGWWWI4TP
X-MailFrom: je.amghar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Synchronize UBX-40 v1 Vs WBX-v3 + simple GDB
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C362DH5HLEVRGDEJZPSSGWHCGWWWI4TP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4326510586077874242=="

This is a multi-part message in MIME format.

--===============4326510586077874242==
Content-Type: multipart/alternative;
 boundary="b1_YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,\
I am currently conducting frequency synchronization tests on two USRP X31=
0 devices, each equipped with different daughterboards =E2=80=93 the firs=
t with a UBX-40 v1 Dboard and the second with a WBX-v3 simple GDB Dboard.=
 In my setup, I am using an R&S SMF 100A generator to produce a sine wave=
 spanning a frequency range from 700MHz to 910MHz. To visualize the signa=
ls, I am utilizing GNU Radio with a QT GUI Time Sink block.

However, I have encountered an interesting observation: the synchronizati=
on between the two devices seems to work effectively only at specific fre=
quencies, with distinct step sizes. For instance:

* For the WBX daughterboard, synchronization is successful at 704, 736, 7=
68, 800, 832, 864, and 896 MHz, showing a consistent step of 32 MHz betwe=
en frequencies.

* On the other hand, with the UBX daughterboard, synchronization is achie=
ved at 704, 768, 832, and 896 MHz, but with a larger step size of 64 MHz.

I am puzzled by the disparities between the daughterboards and the origin=
 of these step values (32 MHz and 64 MHz). Moreover, I have previously co=
nducted similar tests using an NI2900 (B200), and it exhibited synchroniz=
ation across the entire frequency range with a 1MHz step.

I am seeking insights into the reasons behind these specific synchronizat=
ion frequencies, the observed step sizes, and potential differences in th=
e daughterboard characteristics or configuration parameters that might co=
ntribute to this behavior. Any guidance or suggestions to optimize the se=
tup would be greatly appreciated.\
\
Thank you.\
Jea

--b1_YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br>I am currently conducting frequency synchronization tests on two =
USRP X310 devices, each equipped with different daughterboards =E2=80=93 th=
e first with a UBX-40 v1 Dboard and the second with a WBX-v3 simple GDB Dbo=
ard. In my setup, I am using an R&amp;S SMF 100A generator to produce a sin=
e wave spanning a frequency range from 700MHz to 910MHz. To visualize the s=
ignals, I am utilizing GNU Radio with a QT GUI Time Sink block.</p><p>Howev=
er, I have encountered an interesting observation: the synchronization betw=
een the two devices seems to work effectively only at specific frequencies,=
 with distinct step sizes. For instance:</p><ul><li><p>For the WBX daughter=
board, synchronization is successful at 704, 736, 768, 800, 832, 864, and 8=
96 MHz, showing a consistent step of 32 MHz between frequencies.</p></li><l=
i><p>On the other hand, with the UBX daughterboard, synchronization is achi=
eved at 704, 768, 832, and 896 MHz, but with a larger step size of 64 MHz.<=
/p></li></ul><p>I am puzzled by the disparities between the daughterboards =
and the origin of these step values (32 MHz and 64 MHz). Moreover, I have p=
reviously conducted similar tests using an NI2900 (B200), and it exhibited =
synchronization across the entire frequency range with a 1MHz step.</p><p>I=
 am seeking insights into the reasons behind these specific synchronization=
 frequencies, the observed step sizes, and potential differences in the dau=
ghterboard characteristics or configuration parameters that might contribut=
e to this behavior. Any guidance or suggestions to optimize the setup would=
 be greatly appreciated.<br><br>Thank you.<br>Jea</p>

--b1_YZ0xkbmW8jjYE8RqhmwKCKO6Eqs1LtwMR9EEEwJXBY--

--===============4326510586077874242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4326510586077874242==--
