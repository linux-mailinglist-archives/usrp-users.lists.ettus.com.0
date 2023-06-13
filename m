Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7635072D73A
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 04:03:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9803F38455A
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jun 2023 22:03:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686621819; bh=/s+oB18VOc5NmtfUgeJghZQPmASqZE2U5G9wrlRYm2Y=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=eNMClXUHRkjJV4yPZxTUFPIQfOnxEu2xeKD2sJE8TRRXnL3a6YyRZMD6AGvyO5F9K
	 uTjDB06qP4yJTg54fpSVFcZqE1dV5kJabYwWBLZV3AwJdPdZbLhlyIls4uiXXEFjNx
	 fatvR5Wmpp8wZqNhQtVDdmZLW9RIbXvQ1RRaHmLPGzqc0Y/hu1lOq4nBpnaz+q3oX6
	 pgkW+v57O9+67G+a0jyVMJE4kwYW7fBZkGlqDlyiqjEQvOKwMnyAUSmUlLO/zrJ3Mg
	 RZrWvbbK5VLJk3j7pProFS8XndoTI2OQ5UxWUmZJ+eqIpHniMxaDobjKNEanFfDpIv
	 i1JRadjV5y+Qg==
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by mm2.emwd.com (Postfix) with ESMTPS id E12F938455A
	for <usrp-users@lists.ettus.com>; Mon, 12 Jun 2023 22:03:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qOU7aiGm";
	dkim-atps=neutral
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2b1c910ee19so60136081fa.3
        for <usrp-users@lists.ettus.com>; Mon, 12 Jun 2023 19:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686621794; x=1689213794;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pigzo9MsxBeVt4BpL+L/4pw930S499q92nyYuElPupM=;
        b=qOU7aiGmlq/QVR1Jo6y6bCcyYETaLpzfgPAb/PGRKLTlPDYWOB/BKZPoARB9k08Pkr
         tzLlCgIoWO6WBCefAep4DBr/y9I37N+kq+zzjghvUDFZHX/ktwyTlpcWap70PWctGS3h
         0rBLLm2t+CrPy1GIrlGAcmYeMHgjwHEBtxGvsP6aY+PaTLcBkm9o4gT0v62cBSp6DhER
         YzK4nkv+S/D4JK56bLytj5mbBkKb4fcqscFw7xVJQ0TUf6kYFO5hfj7j8K5tGLymkcvB
         AsldnLaS4CL+kGRy1YXf57VaNYTNUh5zwG1JaZwwCuOy7kr11Nvl1Y3lNp3x2e75/AnP
         Rspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686621794; x=1689213794;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pigzo9MsxBeVt4BpL+L/4pw930S499q92nyYuElPupM=;
        b=e8Bnlf2uJZz/ng32WhbnOe7icnwld+ueF/sHQ31CdfyZol5+d2ghAC/cvHcO5aho3O
         8LkxxLyrqRVPKrIQZlerOsLLrIrWE5yUu8r6spk5Su7s3NTIqhyIwD7Msx8Mqu5mlBCO
         1VZ7y6XvRd7Tc/id9mNwVucSLpTi9bBiPcJJvyHHEJmbz0jGWQL1Zg98BeNczo8zzf9p
         JR0otTG76cLLq+w7oBtnwh1tCrf7yfZzR/FfM/rWC7fjlhaWkydO/5Fskp7VV3atTi2l
         Mj6otTaVo+AjLAtMyt1RH+LRHTNtKESdF1hmRGIvSh54c3MLQKS5m6edgJ5QHMgKiM72
         QfkQ==
X-Gm-Message-State: AC+VfDxiCbnm5PwCrh0KujyNNjtcwk92aCLBHeSKE3CCM94O+5PAsId4
	UxW4q4u79E+NcilWgjDJlupEcQr48kXMy+AX7jTiyFz8
X-Google-Smtp-Source: ACHHUZ6uvze02tfhy7L8yNqX16KrUiwwXEwEENzH1AfFAA5EpP0wJYAWmm6ts2frRkqsjG3W8Q5sPSIfMRDzfDknk80=
X-Received: by 2002:a2e:8017:0:b0:2b2:7851:f059 with SMTP id
 j23-20020a2e8017000000b002b27851f059mr3753718ljg.42.1686621793889; Mon, 12
 Jun 2023 19:03:13 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Smith <aarsmith54@gmail.com>
Date: Mon, 12 Jun 2023 22:03:04 -0400
Message-ID: <CAH2Hh738iQj6a55CAsuN9Y9f4OKVHSuWuOrqeP_+06gMhrG=LA@mail.gmail.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Message-ID-Hash: M3PZN3OB6HCDU5VDNFP44WBYQBXV6CIP
X-Message-ID-Hash: M3PZN3OB6HCDU5VDNFP44WBYQBXV6CIP
X-MailFrom: aarsmith54@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 Dual 200 Msps Streaming
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M3PZN3OB6HCDU5VDNFP44WBYQBXV6CIP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7567465466922007573=="

--===============7567465466922007573==
Content-Type: multipart/alternative; boundary="000000000000e5336e05fdf93c7b"

--000000000000e5336e05fdf93c7b
Content-Type: text/plain; charset="UTF-8"

Hello All,

I am trying to transmit on two UBX-160 daughterboards  within a single X310
at 200 Msps using UHD 4.1.0.5-3.

I am experiencing periodic underflows, and I have already applied all of
the tips in the "USRP Host Performance Tuning Tips and Tricks" application
note, with the exception of using DPDK.

I have a few questions about UHD streaming and what can be done to improve
performance.

1. My current implementation uses a single tx_streamer for both channels,
and uses multiple threads to populate the buffers sent to the X310. Would
the performance be better if I used two separate streamers, one for each
channel, in separate threads?

2. I have seen some claims that DPDK is not as useful with UHD 4, is this
true?

3. With UHD 4, would it help to set the skip_duc and skip_ddc flags with
full rate streaming?

4. Are underflows only created within the send() function? Or can the
timing of calls to send() cause underflows, especially when the burst flags
are used? For example, suppose I set the start of burst flag to true for a
single buffer containing 1 second of data, and then I toggle the start of
burst flag to false for subsequent buffers and continuously call send() on
1 second buffers for 10 minutes. On the last second I set end of burst flag
to true. The idea is to create a 10 minute long "burst." If I call send
late on one of the one second buffers in the middle of the "burst" will UHD
report underflows? My thinking is the X310 should think it is in the middle
of a burst, and will expect data, but send() has not been called, so there
is no data for the radio to read from the host, creating underflows.
Perhaps I am also misunderstanding the purpose of the burst flags, as they
are not well documented.

Thanks for the help!
Armon

--000000000000e5336e05fdf93c7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello All,<div dir=3D"auto"><br></div><div dir=3D"auto">I=
 am trying to transmit on two UBX-160 daughterboards=C2=A0 within a single =
X310 at 200 Msps using UHD 4.1.0.5-3.=C2=A0</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">I am experiencing periodic underflows, and I have alrea=
dy applied all of the tips in the &quot;USRP Host Performance Tuning Tips a=
nd Tricks&quot; application note, with the exception of using DPDK.=C2=A0</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">I have a few questions ab=
out UHD streaming and what can be done to improve performance.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">1. My current implementation uses a =
single tx_streamer for both channels, and uses multiple threads to populate=
 the buffers sent to the X310. Would the performance be better if I used tw=
o separate streamers, one for each channel, in separate threads?</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">2. I have seen some claims that DP=
DK is not as useful with UHD 4, is this true?</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">3. With UHD 4, would it help to set the skip_duc and =
skip_ddc flags with full rate streaming?</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">4. Are underflows only created within the send() function?=
 Or can the timing of calls to send() cause underflows, especially when the=
 burst flags are used? For example, suppose I set the start of burst flag t=
o true for a single buffer containing 1 second of data, and then I toggle t=
he start of burst flag to false for subsequent buffers and continuously cal=
l send() on 1 second buffers for 10 minutes. On the last second I set end o=
f burst flag to true. The idea is to create a 10 minute long &quot;burst.&q=
uot; If I call send late on one of the one second buffers in the middle of =
the &quot;burst&quot; will UHD report underflows? My thinking is the X310 s=
hould think it is in the middle of a burst, and will expect data, but send(=
) has not been called, so there is no data for the radio to read from the h=
ost, creating underflows. Perhaps I am also misunderstanding the purpose of=
 the burst flags, as they are not well documented.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Thanks for the help!</div><div dir=3D"auto">Armo=
n</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div>

--000000000000e5336e05fdf93c7b--

--===============7567465466922007573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7567465466922007573==--
