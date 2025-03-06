Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBE3A5437E
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 08:18:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13152385BBC
	for <lists+usrp-users@lfdr.de>; Thu,  6 Mar 2025 02:18:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741245495; bh=v+/yANG2BrU8j1qeVf3avNvS7wMIzJnAZHbFoG6e/00=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ntum13UMjgnGQed5SubDDUwJmxQxocPbFltM+HjjjovHDBnezw2aOyLRXCn7vtSrB
	 PyiuRbDfdhGIej4se/xCQrA+8eCYo0J5rD8nuND8cPKy2GQgFGwwEGf6StBd4ObI+y
	 RPQ9wyn1HNtsnd0xHvqXvAzopc8wvZTIvdTV/gHXIdj6jAGoaOckdWfrfWMtVgzG0b
	 VFXy5nISB7Iqs7kVd/1CMr0bCwypyolNJ8roJldVrKYmuutX7WfjAo2JGm9UQUqFS9
	 mZLROAhOJFQza5AHRJCYcF1QxFS5SLoTG0gnPxhiapNtjwvtVLCPbTWI+OfLodXSSq
	 fyj5QB9TnBqcg==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C3023854EB
	for <usrp-users@lists.ettus.com>; Thu,  6 Mar 2025 02:17:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741245437; bh=dZScr4FS0Y4X+2RfFfZA8Q3b8ZHnCbBrRV5zqpjdpOI=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=tnLDO5e9eiFv6xYBLWl2ffOY8Usa/0+FQJc9iIYhLyLN4FvAMlVO2Xha8vBDY+n/H
	 RriNmpXCFWsnPUa4w4aFMjf59rL4E1kfrCF0mCN+uOgksWka95Nc/SaDn+gJcehIyU
	 pY2k89q6wTX1UEPG1KalkJ846exaYiJB4DJbR8fP8rHPNuvbA+8MbE/A6OodaVHPnX
	 M81ZGv22Nr0ansFU6KZreivQAE6BtiY4XBbey/CvJYZFptWCUMB6ROLNP6RK/1mfrW
	 sFzai+bsDLNQQFvS4oZf+m1D9MSSg2nXvQ0QbpKyRrAcSiHyYPQISEIdQE9Ktru/jD
	 dRQvhlTQlod8A==
Date: Thu, 6 Mar 2025 07:17:17 +0000
To: usrp-users@lists.ettus.com
From: able5541@oxobrowser.com
Message-ID: <qDFTHX5B92k5AEPWPQFeSo5n6YaJkft7Jgheal9Ie4@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: d4fb79df-b84a-4e90-a6cb-0dd5303b34b3@gmail.com
MIME-Version: 1.0
Message-ID-Hash: SNS67JN3SYDXJZ7NKVL6HH7DXWMV4CZN
X-Message-ID-Hash: SNS67JN3SYDXJZ7NKVL6HH7DXWMV4CZN
X-MailFrom: able5541@oxobrowser.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem when working with USRP 200b mini in TX mode
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SNS67JN3SYDXJZ7NKVL6HH7DXWMV4CZN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3597130649655614200=="

This is a multi-part message in MIME format.

--===============3597130649655614200==
Content-Type: multipart/alternative;
 boundary="b1_qDFTHX5B92k5AEPWPQFeSo5n6YaJkft7Jgheal9Ie4"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_qDFTHX5B92k5AEPWPQFeSo5n6YaJkft7Jgheal9Ie4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,\
Presumably, you mean 56 megasamples/sec? - Yes, by setting it to usrp->se=
t_tx_rate(56e6); When setting the clock frequency, usrp->set_master_clock=
_rate(56e6);\
\
The 'U' indications that your computer isn't keeping up with the radios d=
emand for samples.=C2=A0=C2=A0 The radio supports a maximum =C2=A0 sample=
-rate of 56 megasamples/sec. - \
I've read about this, but I don't actually have a good, powerful computer=
, because the computer doesn't freeze or glitch when working. The only th=
ing I assumed was that it was a USB port, it might not work correctly, bu=
t I inserted the USRP into the 3.1 and 3.0 ports, there was no difference=
, right into the motherboard (back).\
\
Where are you pulling the samples from?=C2=A0 A local file?=C2=A0 Are you=
 constructing the samples in real-time? -   I get the samples from a loca=
l file.\
\
If you use "benchmark_rate", it will tell you if your computer, when doin=
g absolutely=C2=A0*NOTHING*=C2=A0with the samples, can keep up with the s=
pecified sample rate.

Your computer has to work harder and harder the higher the sample rate.=C2=
=A0The amount of "work" your computer has=C2=A0 to do is proportional to =
the product of the "inherent per-sample\
computational complexity" X sample-rate. - I'll try to do a benchmark_rat=
e, and I'll post the results. \
\
Sorry, I didn't quite understand how to insert your quotes in the respons=
e, so I copied them and answered with a "-".

--b1_qDFTHX5B92k5AEPWPQFeSo5n6YaJkft7Jgheal9Ie4
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<p>Hello,<br>Presumably, you mean 56 megasamples/sec? - Yes, by setting it =
to usrp-&gt;set_tx_rate(56e6); When setting the clock frequency, usrp-&gt;s=
et_master_clock_rate(56e6);<br><br>The 'U' indications that your computer i=
sn't keeping up with the radios demand for samples.&nbsp;&nbsp; The radio s=
upports a maximum &nbsp; sample-rate of 56 megasamples/sec. - <br>I've read=
 about this, but I don't actually have a good, powerful computer, because t=
he computer doesn't freeze or glitch when working. The only thing I assumed=
 was that it was a USB port, it might not work correctly, but I inserted th=
e USRP into the 3.1 and 3.0 ports, there was no difference, right into the =
motherboard (back).<br><br>Where are you pulling the samples from?&nbsp; A =
local file?&nbsp; Are you constructing the samples in real-time? -   I get =
the samples from a local file.<br><br>If you use "benchmark_rate", it will =
tell you if your computer, when doing absolutely&nbsp;<em>NOTHING</em>&nbsp=
;with the samples, can keep up with the specified sample rate.</p><p>Your c=
omputer has to work harder and harder the higher the sample rate.&nbsp;The =
amount of "work" your computer has&nbsp; to do is proportional to the produ=
ct of the "inherent per-sample<br>computational complexity" X sample-rate. =
- I'll try to do a benchmark_rate, and I'll post the results. <br><br>Sorry=
, I didn't quite understand how to insert your quotes in the response, so I=
 copied them and answered with a "-".<br><br><br></p>

--b1_qDFTHX5B92k5AEPWPQFeSo5n6YaJkft7Jgheal9Ie4--

--===============3597130649655614200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3597130649655614200==--
