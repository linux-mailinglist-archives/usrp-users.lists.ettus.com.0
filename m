Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC7D395A9E
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 14:31:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05E0C383D56
	for <lists+usrp-users@lfdr.de>; Mon, 31 May 2021 08:31:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Eg0xQSdB";
	dkim-atps=neutral
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 309E2383D41
	for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 08:30:59 -0400 (EDT)
Received: by mail-ej1-f52.google.com with SMTP id gb17so16415487ejc.8
        for <usrp-users@lists.ettus.com>; Mon, 31 May 2021 05:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=RM0wAXkKcVg32HXH+OfXLlvekMV7u/3xefmOzk4MTtM=;
        b=Eg0xQSdBYH+8E3r8afNMiZ8rD+vAfADVK009cd9gJTaD3Gd7tZFxA6FebmhzliAU7H
         UmB3TEzuOX/FhO5gf+jstDM7Rf3gYsyYPItGm/HqrPpMUY9Szfz/uR8s5lmTG3U4HNUB
         7G65b9zwPsAQCAtn1pyCLeCC89jq6SIR1rHbAdqigKeJpDsaRZFPRf9ZJgc8j3bsN3Rz
         6V6Z23SJ+HfKAmgZgCCvGgGVwTFWRhBsVxRbuD/kL72SjYfbuazbKKlfQhjL7529+nY0
         2SaHKjBSdbFNZIBU/YdIOCE4LbUDN6W5Ed1NiOd2TBDegFYASJvLVezXMVdyQoNSMaRp
         wbpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RM0wAXkKcVg32HXH+OfXLlvekMV7u/3xefmOzk4MTtM=;
        b=GFAwSPaB5n+SC/s22KRXMwqVwqv2xQrJIUhu6vmw7iDhH8XJt37ZNXN/gG+VXPAz6B
         3KbevSuTf1AmbYCFWU/6uokaO3ZerrBxMDyfJjYOG1s6qXsDZCFXZF4T7ZtBEm4Ckklm
         hyQf8eanPUakFGkJzvCmma9DSLfGF7t/tsxYxn7tEqHgmLjkyZQ1KyD5AcpEf3nys7CF
         fBtKI1bstPx2TFJoaABn1q4q4wsGLZovtDIkA8PzEl17P1rex0+FpfK6I5/bgVKaCHU2
         Vpd23Lras5mtufkELndrTDMdim4VZO96qnszEjUhqHmd2uySijVyt1xk1llh/hbD3w3w
         WvSA==
X-Gm-Message-State: AOAM530lo/9rltuQoXjWmtH4o2W7EPeLKUWtjmE0+28SJ1z8lJtTv0Ku
	u9oIAk3zMPtGbGWyFeLypHmDL5YO3xJGQlvtJqvzUXZnCpw=
X-Google-Smtp-Source: ABdhPJyBAOdiJYS110DmAnpIjMjLChfvA3hzxc6WnXaifpANLnfh219WFzHySbvyhtWXGH0JwJqCTyzyW5BIYaGCmEs=
X-Received: by 2002:a17:906:4c8c:: with SMTP id q12mr22719395eju.254.1622464257707;
 Mon, 31 May 2021 05:30:57 -0700 (PDT)
MIME-Version: 1.0
From: Alexey Silyuk <mcerror@gmail.com>
Date: Mon, 31 May 2021 15:30:46 +0300
Message-ID: <CAOjuhWmATZti9f1zibrUXiLv6JOz+FDosWm54df_yP8GHKyG9Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: T6HYC2G2SH7DQPLQPABQVWR4WRFL7QVX
X-Message-ID-Hash: T6HYC2G2SH7DQPLQPABQVWR4WRFL7QVX
X-MailFrom: mcerror@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Samples complex<short> vs complex<float> emulating
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T6HYC2G2SH7DQPLQPABQVWR4WRFL7QVX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1654198204832940581=="

--===============1654198204832940581==
Content-Type: multipart/alternative; boundary="000000000000bdd08e05c39f6540"

--000000000000bdd08e05c39f6540
Content-Type: text/plain; charset="UTF-8"

HI everybody, I am new at mailing list.
These days I am writing an emulator for emulating tx/rx streams based on
uhd 3.15LTS
I am using device usrp2 device from uhd/lib.
As I saw in examples (rx_samples_to_file), I am creating a mock streamer (
taken from uhd tests ).
and now i want to push samples inside the buffer.
I see that i can define type of samples, if am using 'short' type of
samples, I am creating uint32_t variable, 16 MSB i put real part of sample,
and 16 LSB i put imaginary part of sample (i am using little endian)
After that i am calling usrp->recv() and i get samples as i defined ( spp
is 2000)
(0,0)
(2,2)
....
(1999,1999)
as expected, according to data I push to the mock buffer.

now while i want to use type 'float' i am using for example
float real = 1.5
float imag = 2.5
and trying to push sample to the mock buffer, i am doing:
buffer[0] = (uint32_t)real;
buffer[1] = (uint32_t)imag;

and expecting to get after calling usrp->recv()
(1.5, 2.5)
but i get incorrect result (convertor settings: cpu_format "fc32",
otw_format "sf16" )

i am printing real and imag parameters as bitset<32> and see in real part,
in 16 LSB part of result, my 16 MSB bits from sample value 1.5, and in
imagine part zeros, in next sample i see in 16 LSB part of result, 16 MSB
bits of sample value 2.5. I mean one sample i push to buffer uses whole
sample after calling recv()

P.S i set scale factor to 1.0

What am I doing wrong to use the type 'float' and 'double' for mock samples?
I am new at usrp so I don't understand what samples I should use, will be
glad to get references.
Thanks

--000000000000bdd08e05c39f6540
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI everybody, I am new at mailing list.<div>These days I a=
m writing an emulator for emulating tx/rx streams based on uhd 3.15LTS</div=
><div>I am using device usrp2 device from uhd/lib.</div><div>As I saw in ex=
amples (rx_samples_to_file), I am creating a mock streamer ( taken from uhd=
 tests ).</div><div>and now i want to push samples inside the buffer.=C2=A0=
</div><div>I see that i can define type of samples, if am using &#39;short&=
#39; type of samples, I am creating uint32_t variable, 16 MSB i put real pa=
rt of sample, and 16 LSB i put imaginary part of sample (i am using little =
endian)</div><div>After that i am calling usrp-&gt;recv() and i get samples=
 as i defined ( spp is 2000)</div><div>(0,0)</div><div>(2,2)</div><div>....=
</div><div>(1999,1999)</div><div>as expected, according to data I push to t=
he mock buffer.</div><div><br></div><div>now while i want to use type &#39;=
float&#39; i am using for example</div><div>float real =3D 1.5</div><div>fl=
oat imag =3D 2.5</div><div>and trying to push sample to the mock buffer, i =
am doing:</div><div>buffer[0] =3D (uint32_t)real;</div><div>buffer[1] =3D (=
uint32_t)imag;<br></div><div><br></div><div>and expecting to get after call=
ing usrp-&gt;recv()</div><div>(1.5, 2.5)</div><div>but i get incorrect resu=
lt (convertor settings: cpu_format &quot;fc32&quot;, otw_format &quot;sf16&=
quot; )</div><div><br></div><div>i am printing real and imag parameters as =
bitset&lt;32&gt; and see in real part, in 16 LSB part of result, my 16 MSB =
bits from sample value 1.5, and in imagine part zeros, in next sample i see=
 in 16 LSB part of result, 16 MSB bits of sample value 2.5. I mean one samp=
le i push to buffer uses whole sample after calling recv()</div><div><br></=
div><div>P.S i set scale factor to 1.0</div><div><br></div><div>What am I d=
oing wrong to use the type &#39;float&#39; and &#39;double&#39; for mock sa=
mples?</div><div>I am new at usrp so I don&#39;t understand what samples I =
should use, will be glad to get references.</div><div>Thanks</div><div><br>=
</div><div><br></div><div><br></div><div><br></div></div>

--000000000000bdd08e05c39f6540--

--===============1654198204832940581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1654198204832940581==--
