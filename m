Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3B09C0F6A
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 20:54:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47A06386305
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 14:54:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731009253; bh=qdM/BUdpvItgOZV0pE3e8ryGeNfnbnHdxGeh5y3ww9M=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hQUL2QFjWSQh0S7b6y9tNoWcJmVNpEOkKiFIEoEhzd7GYiG0L91ap4SykrSmUt0PD
	 N4L/RGCAkQPCOkHrmu9hZWoRwqk1VEeJO5f9yJLfvV6il8KuBJOhLnUs5gG+m5pr1/
	 d1JlszbN/4h3gE/bRpAHllfR9kNTRq/jTt8WkR+BboXgQ3fJLGtnkdzaoBqzcQzV3d
	 towHJ97oUdHXW3awsduz1w0DRn0g6zVL8s5kob5rVuv8GET4yW0reuBZWmqI1D3gMe
	 AU415zjhhCqB6Z9vPVhZWi2CiDmTBE73Bs6Dh21k/JJh700cvT0qZfpV+hhMNojVI0
	 xAuqr9mZjLzFQ==
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	by mm2.emwd.com (Postfix) with ESMTPS id DF9A8383B63
	for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2024 14:53:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Z/V2yoHO";
	dkim-atps=neutral
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-7ea0ff74b15so1009636a12.3
        for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2024 11:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731009203; x=1731614003; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m+tPevpTXzFsNc7ChsrZMzfpuqU0tpqVAJxKUu2axvA=;
        b=Z/V2yoHOhGVEb4iJ7aUFX/6P1ECvOIpPeADDclajdSsPDuLTw3vLOuz7JIy1JSS/Lz
         KohaOB7vsKeJmDo1aA72oAxoRz7IkG8i9vi9/nY5SEMN0GwwEXzCRcTLwIEbOXrgFCIG
         s+Tzw50ZL06y92Y7nxJOkRe0rIlwohMbreDN2Oao3rDcctQoQZCR90JvwgeANLUdurPc
         Tw7NEPbA6h52PBX78zzpj5wXkbutPIWAXpd/ezIgJUWl4yPLorDR+w2apsTIjRVuvjP+
         a1mh3hvwEhfCVguRBl6Le4Wtz+NhyeVEbliYENdGN19tNNypxkJU/CoH/Zu2xOHrMPYr
         QktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731009203; x=1731614003;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m+tPevpTXzFsNc7ChsrZMzfpuqU0tpqVAJxKUu2axvA=;
        b=Td2cDgMhd10cbkfBYAtW8ECw6R8bNCKeYlxge6p+oOVW0DJ9r1MVAOLHgLPo5LgyuX
         97N0WGHmV+5+N5EEnCjUMHT5grQusIcaZovCSZaLB1mGlgiHq8T/yhXDXkCBD3TLfc6/
         lQoPeV7yfI9SiFEZUbzIUKAtlY2bCPJRcZOTIgykhbS3wejQNP/nuLErDp1rXPcesUYP
         6Y3CYs4QsXqIi29FxhrRAbZan1ow92mn1+2D8L/YdbRwJtMZcrjps8Lz6j1NkQPIvzD6
         IKtPF8k/B6VKnZ1t0s4c4kcnCDElMSKcBREQPGyhI4CqbBv7vyq92UpfxQ7XRfxYAR4L
         idqA==
X-Gm-Message-State: AOJu0Yx0UB0j90Lskb0WfLH2eDDqVNJz2oHeExO2IjIlai2JuksDJpLO
	bzXcCbkAJv58UzPQqfAvyGYh+/rzH7k07Q8dvK30p+OXlWsExFzXhyasMWLMY6bEN/lPk5iF6ew
	m2lTzoUJee+6uHWOrdSu2Tog+exi42A==
X-Google-Smtp-Source: AGHT+IHZm/HKi591N3IEMf+VM15SY7X/Fh47yYcowR1WJxbLhNPwkg2fEbnqVSDHbfZ/psWhm5vyGAlQ7b+7eBUkxjM=
X-Received: by 2002:a05:6a20:4305:b0:1d9:c7df:3b1d with SMTP id
 adf61e73a8af0-1dc228f505emr217764637.12.1731009202882; Thu, 07 Nov 2024
 11:53:22 -0800 (PST)
MIME-Version: 1.0
From: Chris Wozny <woznych@gmail.com>
Date: Thu, 7 Nov 2024 14:53:09 -0500
Message-ID: <CAEZoMYOCpG0bx2hMpBQGyjG3A0OfFTbLYsBTxVZ7=jaVZm2XSw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: VDUYZSLKFDQ3ETH2VTKK45HQN4YA3JEH
X-Message-ID-Hash: VDUYZSLKFDQ3ETH2VTKK45HQN4YA3JEH
X-MailFrom: cwoz36@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] First 10 Samples From First Receive Always 0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VDUYZSLKFDQ3ETH2VTKK45HQN4YA3JEH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2602319509224945307=="

--===============2602319509224945307==
Content-Type: multipart/alternative; boundary="000000000000a4122e062657fccd"

--000000000000a4122e062657fccd
Content-Type: text/plain; charset="UTF-8"

I had noticed that the first ten samples of my application were always
coming up as zero regardless of whether it was 8-bits on host or 16-bits on
host. I went down the path of trying to reproduce a minimal example to
share with this mailing list, however I then realized that even the example
"rx_timed_samples.cpp" was also producing the same results. This occurred
with two different b200minis and a B210 with UHD 4.7.0.0. I had to
de-boostify the source code to run on my system and specify a center
frequency and receive gain, but am able to reproduce this issue every time.
I've confirmed that a signal is present by using a signal generator for one
setup and also with an OTA setup tuned to 2421 MHz with AGC disabled and
receive gain set to 70 dB.

Has anyone observed this issue or can anyone else reproduce it using the
timed receive example as well? Sorry if I am missing critical details that
would help diagnose the issue, let me know if any additional information
would be helpful.

- Chris

--000000000000a4122e062657fccd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I had noticed that the first ten samples of my application=
 were always coming up as zero regardless of whether it was 8-bits on host =
or 16-bits on host. I went down the path of trying to reproduce a minimal e=
xample to share with=C2=A0this mailing list, however I then realized that e=
ven the example &quot;rx_timed_samples.cpp&quot; was also producing the sam=
e results. This occurred with two different b200minis and a B210 with UHD 4=
.7.0.0. I had to de-boostify the source code to run on my system and specif=
y a center frequency and receive gain, but am able to reproduce this issue =
every time. I&#39;ve confirmed that a signal is present by using a signal g=
enerator for one setup and also with an OTA setup tuned to 2421 MHz with AG=
C disabled and receive gain set to 70 dB.<div><br></div><div>Has anyone obs=
erved this issue or can anyone else reproduce it using the timed receive ex=
ample as well? Sorry if I am missing critical details that would help diagn=
ose the issue, let me know if any additional information would be helpful.<=
/div><div><br></div><div>- Chris</div></div>

--000000000000a4122e062657fccd--

--===============2602319509224945307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2602319509224945307==--
