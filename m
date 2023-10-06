Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 126907BBA4D
	for <lists+usrp-users@lfdr.de>; Fri,  6 Oct 2023 16:32:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9170384DFF
	for <lists+usrp-users@lfdr.de>; Fri,  6 Oct 2023 10:32:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696602752; bh=pgW4/CxVEV2q9cioGaxcx62Gh5W3vQ84NZw9W8cHPHc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=tyaEV6GQhEZqk84wzlZPNLFFEtAUH/ujRT7LU2hcJ61/Gu1d1ZHWPJ4LklvsrA6jC
	 p7+yqUqyj0JSjb/8YY8iqeEAfOvM0HEBQJ95ZIxcoJMisTfcmofVYt4SVYJghGwKEp
	 Uf3pPQiMuPnELV6+94Qhgx4Sppwz2hCq6+/hVJDGqxsf1R7Dgj1FLxZMlo3NXFGl7x
	 emDMHERJAkLuq0myjDYmNh1UuvgR/HQ2axzCpoKhZ+UhEjAl1NimvW9F1zkcpMP9mz
	 rmSZjkd1zS7us5iQxxgyNYNZ4xLQWQryTkwLFFT1oIti2Zb7syvK0KOnIF5qK0D5xr
	 ZA17GGYR0ROQQ==
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A340384DD1
	for <usrp-users@lists.ettus.com>; Fri,  6 Oct 2023 10:32:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="bubi+NCl";
	dkim-atps=neutral
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d865685f515so2986752276.1
        for <usrp-users@lists.ettus.com>; Fri, 06 Oct 2023 07:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1696602723; x=1697207523; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8/lPGQI+Mr3auLREeajzjWRGlvTNPZoQaJWpdzzermY=;
        b=bubi+NClYpT0MiHArnOivKa+QzJ0On+5OmKapfSxdFZEUwxYKQd0YWIrbQCV1vBsSH
         CoNB4PjrHry0y2uhrdXCUmQQETzaQTAjUw4iA0+FIA5/sVHGtRVxSUXxD4fy8020m122
         uaUelU9VgK6vf173VESYLzbqmHO4CETLxdRI4Vlmu9BuSo/wjpsIeNqJYyeHegvlTpUf
         b9HDIMYL26KO9moaQTTyursNmQIvotLxj5UO9eX7CQ3iNqC+sQIcunYhYi/KE9ltZctC
         Kr+GBYbLolMXRUx0a3vEADVJVQ11CMlFa9NuUhctgohAZm11uLxEMkgkjffaUQA+FGY4
         I0KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696602723; x=1697207523;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8/lPGQI+Mr3auLREeajzjWRGlvTNPZoQaJWpdzzermY=;
        b=fe8IKw1jGvKR+4+LNzNHzjao0tEKJye2qO/27wbcsEKXn7uxTy7FXxqxV+pGYIvYRv
         5FnlhgbKZ+Ponvnh/MClQ2IKFg/5AkMQuxAbYbuVoGJj78HBHJjjqxUEiwyFlp6bqUWg
         clIamNH1FHBaSypL4+rnsR3vdt63wfJjhsAsIUEszGpLLEvXDEwI+/R4c+JTP02H5PGc
         +gMCbk7KcnhNwKnd9BudLQ/trOX160pzVg9/Z2z1wD30ZP6ReSPOA6aIvK1JWy3YywLT
         dEcObl56WcQxJZIm2jnQ7kCIs5FdlDLXTqLW6NzHM7nqFJs4OFnYiwBjVao9Zh3vtSsD
         F35g==
X-Gm-Message-State: AOJu0Yxb84Nr+QR856qS1gcJFgBgzY6FojEm1rdtM38K31UqMrQc55yH
	Gefj9A2b/mn8dwRst9k0QL5NnOHAc3tjMvl10q2inmIiMTDGNQOP
X-Google-Smtp-Source: AGHT+IFOlzB8U696gFuoxqlCZMoJKDf2MGQwNyHqc0+Ioar2owvqzucJGErTmcDYSIDiDGiNsl5UcZsS7i9aB55CgWE=
X-Received: by 2002:a25:ab0c:0:b0:d89:deaf:3208 with SMTP id
 u12-20020a25ab0c000000b00d89deaf3208mr3219303ybi.8.1696602721365; Fri, 06 Oct
 2023 07:32:01 -0700 (PDT)
MIME-Version: 1.0
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Fri, 6 Oct 2023 10:31:44 -0400
Message-ID: <CAErymBhL-fmEqrMjd10vuMtH173ZNqer8RP-YZWYP5sxpdmcYg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: NZLL6QZSWW4BPZYRZ4GVZD57DH46KSEU
X-Message-ID-Hash: NZLL6QZSWW4BPZYRZ4GVZD57DH46KSEU
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Understanding delay in USRP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NZLL6QZSWW4BPZYRZ4GVZD57DH46KSEU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2877517681644743333=="

--===============2877517681644743333==
Content-Type: multipart/alternative; boundary="000000000000884ef906070d1aff"

--000000000000884ef906070d1aff
Content-Type: text/plain; charset="UTF-8"

Hi there,

we are interested in using the USRPs (X300) to experiment with a
transmission system with feedback and we want to minimize the delay from
the USRP to the air. We want to understand the delays in the processing.
(We will not be injecting samples through the PC but we are planning to
program directly the USRP FPGA).

My understanding is that there is one source of delay in the DUC/half-band
filtering in the motherboard. How much is this delay? (delay
of halfband filters?)

Another source of delay is inside the ADC chip  that also contains filters.
Is that correct? (I was looking at the Analog Devices chip for the ADC and
I saw halfband filters there as well). How much is this delay?

Finally there is some delay in the analog front end (SBX). Is there an
estimate for this as well?

thanks
Achilleas

--000000000000884ef906070d1aff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>we are interested=C2=A0in usi=
ng the USRPs (X300) to experiment with a transmission system with feedback =
and we want to minimize the delay from the USRP to the air. We want to unde=
rstand the delays in the processing.</div><div>(We will not be injecting sa=
mples through the PC but we are planning to program directly the USRP FPGA)=
.</div><div><br></div><div>My understanding is that there is one source of =
delay in the DUC/half-band filtering in the motherboard. How much is this d=
elay? (delay of=C2=A0halfband=C2=A0filters?)</div><div><br></div><div>Anoth=
er source of delay is inside the ADC chip=C2=A0 that also contains filters.=
</div><div>Is that correct? (I was looking at the Analog Devices=C2=A0chip =
for the ADC and I saw halfband filters there as well). How much is this del=
ay?</div><div><br></div><div>Finally there is some delay in the analog fron=
t end (SBX). Is there an estimate for this as well?</div><div><br></div><di=
v>thanks</div><div>Achilleas</div><div><br></div><div><br></div><div><br></=
div></div>

--000000000000884ef906070d1aff--

--===============2877517681644743333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2877517681644743333==--
