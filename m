Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB48A393B0
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 08:12:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC9FE385502
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2025 02:12:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739862759; bh=G9uoBSoYwaimSfNEGOjoWTTwrl/28Mzp/9h2MmVJrA4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MPGqU/nebUoKDACk6u9YMhv8MyoDbxA9/s5ZAGJYP/ZRxta3KKinsvBSdRj8lpahS
	 yDngaf/EzsZs4IwcOwOHGBPiceUdh6F9czITdHAuULKhz2V8Om6tjFUdoSlNIPIwc4
	 d3q1nyOFCiVLh2aeIZGU7uHIJcaaVaUTPybv7Xvyl11nOQ92MiuUzl7s0yMj7Rgw+u
	 xMh9XFKAnH9E/XVQmIxo7TjyA03DFR87f2Zhj/NP/YR7WcDcOLSTYKQQ7Bf1ZN6aQo
	 QobXVpjLmm+3/UtVgRNewxtaoV9Kas0ZWdscFy52rtfwJhAr1AZMOiPcJ1weR12vgx
	 9Q+mnkNvB2ueQ==
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 54D6A385494
	for <usrp-users@lists.ettus.com>; Tue, 18 Feb 2025 02:12:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=vectalabs-com.20230601.gappssmtp.com header.i=@vectalabs-com.20230601.gappssmtp.com header.b="H8wv5nKo";
	dkim-atps=neutral
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-543d8badc30so6062167e87.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 23:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vectalabs-com.20230601.gappssmtp.com; s=20230601; t=1739862753; x=1740467553; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0kpGJgNZmQSZjHurnbCS6yXKrjKyNKiBPqpMANzqfts=;
        b=H8wv5nKofGg8XlKCTPYuPxP7/49UPamGEmZPJOH0EjXO0ydRhEVYWBy8acld7fUa2t
         nALKfoCYB4ppkCcVZhRbA+STb7drU1FJoZohupYVuxkr3AYkTE8aoMK4BEo1HXWN6uOx
         1ftJ42tJr5ySc48jw8Kw0M879c7eQ1Se2+glAQBv3MqB1Oi9GT0ZQyC3E+0k1x/8OvLJ
         U1MogwfAtxqok+k5Nk4Wnm1VMA0zY7PqoohSn9oPvmy5xPx3CL3GDANTrgwoGYoPJ942
         GjmBdwP9m1chjInwQ6JIbBRrMCL0+8hIacu13gdEmHZhHnkoWLEuOYVMapuC3ZPw0sZr
         KN/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739862753; x=1740467553;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0kpGJgNZmQSZjHurnbCS6yXKrjKyNKiBPqpMANzqfts=;
        b=vkUrrHcwoY06sjOvDzOuiVbsSAPpthn2U31ZM+b6tkHpZER6G6qBmn8t+ram9Dqk8E
         UxtOHUoFUEoHixOlFJzbIfsWMMH4z76jrfYyr7a3m8W4wrCI2ocjtzcHxSVYX+mErKiU
         uZKluHb+qcitVBn3QfGBWNCSlv2nUn+JyRuMsZbUUBkhwXMGFXkrFXQK6gL4a8Vp4dt4
         uIp7KpTg7aSQrc1b9oklpZjJyngnVNmfh5wVmC6BlVdf66NZlm5oQqOuqeDqSXJ6/rHE
         +AIIXObJSapid8fk0Q6ZcHdjyb4BJ5BNt1riQG1Zq4kPGRsvRKRE3eeUH+KHv4wXk1kM
         AvNQ==
X-Gm-Message-State: AOJu0YwGafq+jxMULUD6VETYwwD5bP8+x/d2+rtE/KSWhXKVbAeBCL4v
	En1vp37q9AKQQCVqABpj5wCohVjAvbZ3oUW7ECGVDBncsb7KvsAKH9+3Y2KdgwYIS+imZxtyF6E
	3uTrh/3pT6XZpmj/iMYiFQlfck/THIK//DGhsKszA8Lkjrip0
X-Gm-Gg: ASbGnct0tAyvoKjzFm9aPPj1vYekjMl/XUJ7SjhJQnDY/QSORAbKEMWgT2aolzIb4Ij
	oy9ClHp7qFbqi/jWgmoJu2YB2sltKmFgyOCe9GNnt3RC6WbN7roProoDHFBfMZv3Yph46T0iNY1
	yRsrz/C4LiZIlwEiJwa5+bMkajR5lfBz8=
X-Google-Smtp-Source: AGHT+IFbl72rpqrO4/mkr78BF4v7gUrxr14J1b0QUb2xKJmkeFhu4IGaBQlN0KVFZHdaD3AOzu5RIbnev+kYpF0j7II=
X-Received: by 2002:a05:6512:6c6:b0:545:2b68:936e with SMTP id
 2adb3069b0e04-5452fe5c675mr4625423e87.25.1739862752399; Mon, 17 Feb 2025
 23:12:32 -0800 (PST)
MIME-Version: 1.0
From: Brendan Horsfield <brendan.horsfield@vectalabs.com>
Date: Tue, 18 Feb 2025 17:12:21 +1000
X-Gm-Features: AWEUYZnkmacl_d1q2Ia9jMZ3qBhafPv9ZHWelGBjNdigb9PWNIBY0AaRpcXp2Oc
Message-ID: <CALNMZ8V-5SpmYTthV86m96Cwq1=4OUQpUtwrr3ZPUAzNTS+CRg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: RJHXOMMQQJXQPZEZZZTE5BFLF6P262WJ
X-Message-ID-Hash: RJHXOMMQQJXQPZEZZZTE5BFLF6P262WJ
X-MailFrom: brendan.horsfield@vectalabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Usable bandwidth of X300 USRP with UBX-160 daughterboard
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RJHXOMMQQJXQPZEZZZTE5BFLF6P262WJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7100386790342423782=="

--===============7100386790342423782==
Content-Type: multipart/alternative; boundary="00000000000050b03a062e655d59"

--00000000000050b03a062e655d59
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have a question about the usable bandwidth of the X300 USRP / UBX-160
daughterboard combo at sampling rates below 200 Msps:

As I understand it, the UBX-160 receiver has an analog (hardware) filter
before the ADC that limits the usable bandwidth to 160 MHz, while the ADC
runs at 200 Msps.  Therefore the usable bandwidth is around 80% of the
sample rate.

My question is:  What is the usable bandwidth at lower sampling rates?
Does the 80% factor always apply?

For example, if I set the decimation factor to 4, so that my sampling rate
is 50 Msps, does this mean that the usable bandwidth will be 40 MHz?

Thanks & Regards,
Brendan.

--00000000000050b03a062e655d59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I have a question ab=
out the usable bandwidth of the X300 USRP / UBX-160 daughterboard combo at =
sampling rates below 200 Msps:</div><div><br></div><div>As I understand it,=
 the UBX-160 receiver has an analog (hardware) filter before the=C2=A0ADC t=
hat limits the usable=C2=A0bandwidth to 160 MHz, while the ADC runs at 200 =
Msps.=C2=A0 Therefore the usable bandwidth is around 80% of the sample=C2=
=A0rate.</div><div><br></div><div>My question is:=C2=A0 What is the usable =
bandwidth at lower sampling rates?=C2=A0 Does the 80% factor always apply?=
=C2=A0=C2=A0</div><div><br></div><div>For example, if I set the decimation =
factor to 4, so that my sampling rate is 50 Msps, does this mean that the u=
sable bandwidth will be 40 MHz?</div><div><br></div><div>Thanks &amp; Regar=
ds,</div><div>Brendan.</div><div><br></div></div>

--00000000000050b03a062e655d59--

--===============7100386790342423782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7100386790342423782==--
