Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3949C369B32
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 22:18:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 10AAF3843D3
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 16:18:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eWGAwohW";
	dkim-atps=neutral
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by mm2.emwd.com (Postfix) with ESMTPS id AC1323843C1
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 16:17:44 -0400 (EDT)
Received: by mail-ot1-f54.google.com with SMTP id i16-20020a9d68d00000b0290286edfdfe9eso35728613oto.3
        for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 13:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=LjWEiXcMXXVfKtUA8RnM/9HwDST6D23E3m9xRBAIj4k=;
        b=eWGAwohWUuyOq7efyt7DQOu5fxkQQqDWHc35sIVahjLCOczuXy7vgTBe38gMUlFwos
         Obb1PmEgVxY9e9YzoowCmWEqTo8Lu1sFcJRCQMvBdor5xkiMZlL3DAFRTj+BG6TSmwM4
         DAcy3LRTt45bF/NsnZpUVPEMwX6io8a148hf4s+SNZji0H6UgrtV3KyOBbrnU3pjni2G
         SQtAFQZfrZfEi3lLUeAATRQJQFZiC3BlCd16clddESluFatTZcnp05ez8DEkYL084ZcR
         sTsyFVsQACwUhDxhPKU2mIHQZgCtqF/L3i8ch0GH84qtBQ9I/stLuxYbDj9xpWx6eigd
         3mRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=LjWEiXcMXXVfKtUA8RnM/9HwDST6D23E3m9xRBAIj4k=;
        b=GzlCxnCwkcEGfXgsdNsAR/+qjvtlT/wdhhFx+d6WFjjWM5pGLrhUKvVHUWf8Uy1H3i
         ceFTe+U++w0uowtzEJd37tEoMkYL22FNiYvhz60aieHENV0l1IOhEFbpIFNV/AVPs58o
         jmn7CAyPItYg/hDoZioewqOTnsriBxg8Mhb9hE+zaNAGczNZRiqFFN1jRjI67iDZl5QZ
         aOq4fZ4uyNjGkdKzQtF5Q16qHJz02MVTqf/dc+Au2vYOdCLhSp99zo1nvt3r5ROx0lWK
         zZLk2UY/dwhe5wLOtkp27oaNRYnEFMWqlDnns0c6IPPMQvPcSmaHbo1Fho8c8opfnUnM
         +30w==
X-Gm-Message-State: AOAM5318i1VY/pukfkynvyecANOxPhFosn3nz2xBj+4pGdMuUbrt124y
	RKkNQlSouMBm6q2H6T5w0kj/r0tn69++t8A28ox2Cu1k
X-Google-Smtp-Source: ABdhPJy59nybbPD0qK9LoaHtD4USBLP7EDRPDguBJqyfOnA56KLD7NWUEYenQ7mNShBbcv8JMicvOOGLuXSEf8TxYXE=
X-Received: by 2002:a9d:7405:: with SMTP id n5mr4881675otk.338.1619209063756;
 Fri, 23 Apr 2021 13:17:43 -0700 (PDT)
MIME-Version: 1.0
From: Edwin Harmon <edwinh4rmon@gmail.com>
Date: Fri, 23 Apr 2021 16:17:33 -0400
Message-ID: <CALA1YLsO1E4vK764sj2VvBmtWMS2_oOkyqK1bbqxekNHCtqd3A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: OQEUJVVH3DILUUIPOTXMEJSPUB72U2CO
X-Message-ID-Hash: OQEUJVVH3DILUUIPOTXMEJSPUB72U2CO
X-MailFrom: edwinh4rmon@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Gating function block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OQEUJVVH3DILUUIPOTXMEJSPUB72U2CO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3957114117379974592=="

--===============3957114117379974592==
Content-Type: multipart/alternative; boundary="000000000000100d8505c0a97daf"

--000000000000100d8505c0a97daf
Content-Type: text/plain; charset="UTF-8"

I would like to implement a gating function block with RFNoc 4 that passes
M samples from the input to the output unmodified, "drops" the next N
samples, and repeats indefinitely.

This is obviously a generalization of the keep_one_in_n
<https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/keep_one_in_n.v>
block, so I am using this as my starting point with vector_mode always
false. I've looked over the verilog code and the yaml configuration file
and have a few questions.

There is clearly a rate change in the block but nothing in the verilog code
modifies the CHDR context; specifically the timestamp, length, and burst
delimiters. Does the framework somehow automatically make these
modifications to the header?

I would like to write host code that can use this block without knowing the
values of N and M a priori and also having the ability to dynamically set
their values via register writes. In general M won't be equal to the
payload size, P. For scenarios where M < P, is there a way to send the CHDR
packet before it fills to size P to reduce latency? If not or If M >= P,
would you recommend using context metadata to indicate the starting and
ending samples of a frame?

Thank you for your time and consideration.
-Ed

--000000000000100d8505c0a97daf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I would like to implement a gating function block wit=
h RFNoc 4 that passes M samples from the input to the output unmodified, &q=
uot;drops&quot; the next N samples, and repeats indefinitely.</div><div><br=
></div><div>This is obviously a generalization of the <a href=3D"https://gi=
thub.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/keep_one_in_n=
.v">keep_one_in_n</a> block, so I am using this as my starting point with v=
ector_mode always false. I&#39;ve looked over the verilog code and the yaml=
 configuration file and have a few questions.</div><div><br></div><div>Ther=
e is clearly a rate change in the block but nothing in the verilog code mod=
ifies the CHDR context; specifically the timestamp, length, and burst delim=
iters. Does the framework somehow automatically make these modifications to=
 the header?</div><div><br></div><div>I would like to write host code that =
can use this block without knowing the values of N and M a priori and also =
having the ability to dynamically set their values via register writes. In =
general M won&#39;t be equal to the payload size, P. For scenarios where M =
&lt; P, is there a way to send the CHDR packet before it fills to size P to=
 reduce latency? If not or If M &gt;=3D P, would you recommend using contex=
t metadata to indicate the starting and ending samples of a frame?<br></div=
><div><br></div><div>Thank you for your time and consideration.</div><div>-=
Ed<br></div><br><div><br></div><div><br></div></div>

--000000000000100d8505c0a97daf--

--===============3957114117379974592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3957114117379974592==--
