Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EA05B5CDE
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 16:59:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93CCB380FEA
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 10:59:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662994787; bh=hJgO+1Fhjb8LdSJCi/LG4H5QOlu2YQ4vXc5COfdeAm0=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LWAbzDDcMcCxkPxJeJN2hrou4fkJNP/3gXYRsCCc/jlolj46j298QBqM+zsCYeexQ
	 PhEKsqTKGSlXNiqVWezaT+fiDlvUPh8q7+8JsMNYiikx1Qsc+kjGzex9mZTQ3Yur1h
	 i5Jjz0qSOH9Hn6oDbFPBrV0USR6BDujxus8DUEzCkw/ZNSDJCpuxEcmKftmfI49IOI
	 q/QWvCNMKBx24Rybkz2xeONXg8wpwUSEXkPQIPZD3Vs06T3sJjnLz9OtWlaTfPurx8
	 b5XiBOCU5rggMqPr/9qAomJ2XzxEpzFg/5LRaESUUSrzdOub8w3Xe9cXFy7HKZw9Gy
	 1NIrcWGuNggEQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43C75380A9B
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 10:58:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662994738; bh=HI5J8DjXYI3soCt6uaqUvB1sMrmNLaqQ6fEm0Is3H/Y=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=QLgWBUWAChQ6WujEyrAUSUSnfSbkbFOjdQ7VQmBvF/CmTFnRrELFw4r59Z4KZAxOu
	 IR0oeJskYoYysikkJwcSnrYXSG4OsAORI7cVv+UO+oAmEQapv+4Wq8dO98zVJdJq+i
	 a4qNqvQRxojqwruofwbLv9g+8UVcH/z02/RtZUl5liDtaJhLJ7MlY6ziip5CtulycI
	 /ImZ0DJ1ydE6IKUm3tgCIZaSXL7MNs5NXZ8Y67TghOFVjvRJKod6p4wguWPuKsKsds
	 uS0aamgoTS8ErK0+ujOa8VQQI8kLLQF6XRo2u2j6biR6cik0BG19iAryIIvdl4j8tE
	 /GQXLq2Vd8L6g==
Date: Mon, 12 Sep 2022 14:58:58 +0000
To: usrp-users@lists.ettus.com
From: jason@gardettoengineering.com
Message-ID: <0zRUdU7VnIj79Q516TAyjiMh8lTkqmT8OF8KRz3kq8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: a6d77684-983a-a416-2c9e-46a7c333f5dc@gmail.com
MIME-Version: 1.0
Message-ID-Hash: MGZCQHDZBVGVOJEOUOMOUJB333HW44DT
X-Message-ID-Hash: MGZCQHDZBVGVOJEOUOMOUJB333HW44DT
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 sample rate change locking-up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MGZCQHDZBVGVOJEOUOMOUJB333HW44DT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4760387678350520005=="

This is a multi-part message in MIME format.

--===============4760387678350520005==
Content-Type: multipart/alternative;
 boundary="b1_0zRUdU7VnIj79Q516TAyjiMh8lTkqmT8OF8KRz3kq8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_0zRUdU7VnIj79Q516TAyjiMh8lTkqmT8OF8KRz3kq8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Marcus.

I agree, there is no way this is design-intent.  My gut says it is some s=
ort of clock situation on the FPGA, but I am not sure what.  Unfortunatel=
y, the only ones who can probably weigh in on this would be some of the E=
ttus FPGA designers, and I am guessing that they don=E2=80=99t see too ma=
ny people changing the sample rate on the fly, and this is an unseen befo=
re bug.

--b1_0zRUdU7VnIj79Q516TAyjiMh8lTkqmT8OF8KRz3kq8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Thanks Marcus.</p><p>I agree, there is no way this is design-intent.  =
My gut says it is some sort of clock situation on the FPGA, but I am not =
sure what.  Unfortunately, the only ones who can probably weigh in on thi=
s would be some of the Ettus FPGA designers, and I am guessing that they =
don=E2=80=99t see too many people changing the sample rate on the fly, an=
d this is an unseen before bug.</p>


--b1_0zRUdU7VnIj79Q516TAyjiMh8lTkqmT8OF8KRz3kq8--

--===============4760387678350520005==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4760387678350520005==--
