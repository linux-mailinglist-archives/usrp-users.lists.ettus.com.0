Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD15BA255D6
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 10:29:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B5ACA38554C
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 04:29:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738574957; bh=d7OC++opTxHX5dmgRXDvPH8msrFIG9+oU8I6du8reHw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=azzWqy5ocdjGu4YZDnGFdBxXiMtbr4wUSvcWlzWd5UzEAHDQUbaYvYdn1tdyOKd9n
	 lShnGV61yrHLK7m0eOf/jwFOadGNEtgBRBYORH+Ld194dI4Y9MRYpFLNjdx5HziS+R
	 xWttVuBNsyA7ruLLtsR715XSB896eJDFLXBB1lxxl1k71fW0IYdMRTtj3Fzhd1kqyx
	 Af62bAqp/zaY1u5mr8YWPIRPD7FrRt679AM43MQ26g48Imo3CB/OhdKzlGGmBurH4g
	 jRFNJEAfv91eU/bXOCKww8ujIBS6OrLb+zrCPK+/pI7nunoGSjRVttrBktUrd6+WiZ
	 Of/x7xJp01OoA==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id CE1FC3854A4
	for <usrp-users@lists.ettus.com>; Mon,  3 Feb 2025 04:29:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Iw5AsiYp";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-46783d44db0so39143631cf.1
        for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2025 01:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738574945; x=1739179745; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=e5snKp/1cOWm449zhqS44EKMi7O34MlE9Km6PZAwKvk=;
        b=Iw5AsiYpMEwiDfJcygygmh8P7/QeZw+pwZD+sTYez2Bglw08p4ir4QEu/wH0Nzc42n
         U1Syp835zNNdjF+J1IOvuJEQxdqg+Bxda4splsu1PkARPCig9sryonRHxWhccZ0JyC42
         b4HmFhA0HrcnaOyBJY0x9/VJn2p3ZoUsCkHho0Yn64AHACDYUr0jXvSujqT2MFqZfVCh
         +qQH2Qahu47FnfQiB+dpGIEWjvll+YcwIfI3v4nWeX6BFUmTJNuA3jTiGLiGw6/TakTv
         oKr5Tcgx8xO9P8dMEfa+naVn0EHMWCQ8f2T3cnadVodJT5o7qj/sF4vddLTuzsgGn6V4
         shSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738574945; x=1739179745;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e5snKp/1cOWm449zhqS44EKMi7O34MlE9Km6PZAwKvk=;
        b=k+UiCGqMFPdY8uYV6/5RM1znURULOo3N9LWWljZM7+4GliuF8GN7IQVPCQY2O1DHV/
         pH2oiSHGQo7jaM+1ACcxrBwAtTiMpGJDX1pfLfjK9KkTI9882S7BoUM5KMws87NYhZgk
         rKtHMk2c76NO6j4Y5Bkd8Jtn5eurl5w2dpMty+HwnbM3R9od8IJNKdEN9g7VBfzBd4ww
         Za7wINtIqW0taamhzl0x3lZG9Ak51rrHe1VYkxCJznuWhlVbr3JpZx1Bcuk7Qe4JUIXA
         S7iGcFmHnHVHaDPPrlbENf8l2OGJYO0dQeb7ChZJByVwsvfJt76PQmj1p2GvpMji2ck5
         fxBg==
X-Gm-Message-State: AOJu0Yz5Wroi2LI+6uEKS68rIops8m8W1AkeDYzAK1PbJ7IJf60Q8Kdd
	iy/g2TcYhGZJm00V5fkfhY70vYj/9uWC3Tl2uR/f81H7cJiKHDZDdF9WWdeuv/u9wG+8SO1gYMJ
	ercf2zuvWJfZ216wydA2hv4B+Qgvpj1+o
X-Gm-Gg: ASbGncu5AFVI9X4gY2pQ51nZIAJWY+lS2m7Ng8RwSE4tewZiAtdDO5yMY6ZOyaOOQs1
	bCo4T7CSn2VpJsbWE86AQ2i07usWzRhz87OG90ADR8i8Gtoof96lXPfgv33VMa/XBUPpFdVE=
X-Google-Smtp-Source: AGHT+IErKC0p34q4DrjRxjatciiZYa/SYlcL3HaumX8np6WsnMDypllbUZGDUhEEo9h0TFsTiXfOwdUyIk7mlus8ETo=
X-Received: by 2002:a05:6214:1310:b0:6e1:a51d:e96f with SMTP id
 6a1803df08f44-6e243bef7cemr282622426d6.8.1738574945030; Mon, 03 Feb 2025
 01:29:05 -0800 (PST)
MIME-Version: 1.0
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Mon, 3 Feb 2025 10:28:58 +0100
X-Gm-Features: AWEUYZngCb-xPHNKoS5GFOIqV5Ez98mEiscSvTtlhHnR3ESpSLwCxF1_BrYuvYg
Message-ID: <CAAc7u9oHPqk7A3AqrPWzMUOb39Tc7VcYunuqH2OFG-3C5bqRMw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: PHPRXKPFYKC6GWGFZHAAC23DAG5QJU23
X-Message-ID-Hash: PHPRXKPFYKC6GWGFZHAAC23DAG5QJU23
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Load uhd_power_cal calibration file
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PHPRXKPFYKC6GWGFZHAAC23DAG5QJU23/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2544087665529510151=="

--===============2544087665529510151==
Content-Type: multipart/alternative; boundary="000000000000039b2a062d39867e"

--000000000000039b2a062d39867e
Content-Type: text/plain; charset="UTF-8"

Hi,

I've performed the power calibration for RX on a usrp b200 mini. The file
is saved at /home/[username]/.local/share/uhd/cal/
When running print(usrp.has_rx_power_reference()) it returns False, despite
the calibration data being available.
The webpage https://files.ettus.com/manual/page_power.html lists nothing
about required directory.
My question: how can I load the calibration data, I would like to use this
to determine the received power. Later on I would also calibrate the TX to
get a known TX power level.

Thanks!

Best regards,

Tim Vancauwenbergh

--000000000000039b2a062d39867e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;ve performed the p=
ower calibration for RX on a usrp b200 mini. The file is saved at /home/[us=
ername]/.local/share/uhd/cal/</div><div>When running print(usrp.has_rx_powe=
r_reference()) it returns False, despite the calibration data being availab=
le.</div><div>The webpage <a href=3D"https://files.ettus.com/manual/page_po=
wer.html">https://files.ettus.com/manual/page_power.html</a> lists nothing =
about required directory.</div><div>My question: how can I load the calibra=
tion data, I would like to use this to determine the received power. Later =
on I would also calibrate the TX to get a known TX power level.<br></div><d=
iv><br></div><div>Thanks!</div><div><br></div><div>Best regards,</div><div>=
<br></div><div>Tim Vancauwenbergh<br></div></div>

--000000000000039b2a062d39867e--

--===============2544087665529510151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2544087665529510151==--
