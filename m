Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D03233F3234
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 19:26:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8F12384123
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 13:26:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="iyyHE/3V";
	dkim-atps=neutral
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 44E3B383F4A
	for <usrp-users@lists.ettus.com>; Fri, 20 Aug 2021 13:25:33 -0400 (EDT)
Received: by mail-wm1-f46.google.com with SMTP id w21-20020a7bc1150000b02902e69ba66ce6so6541706wmi.1
        for <usrp-users@lists.ettus.com>; Fri, 20 Aug 2021 10:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=ibeIwMerWP1zCFsPDh6zrSozVzo6PFJGqCevA2oujic=;
        b=iyyHE/3VFEdYRbc1iLYvVMr0AU+KJg1j2shlmGEeIRbzDceXAG2QG7QdhqBw5DKxCa
         PCqwD9Idg26W2aHBD5q1mE3FK/n7GHZDhV/IaaElkUKhpGBuIzweEC5E5giYfc9Odpcw
         1iq7p944OG1pk+31+IzFrIfWg8+/+frdpq2m+36CUN5qq4h1KYicFnNHcqirXXkWgu9C
         BnIVnMvmWLQA1VHcMfjBppIf5p2BBAfghvuiqFdwzzzc9icIUqjXEcNohzqMvGu6qhm3
         2OAnXyk+dzU9eTmAsgl4gO2RDThmSmoU4+Ce/oIJfssMFOKbcllOcIB3M18k5pBJqsRH
         OaWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ibeIwMerWP1zCFsPDh6zrSozVzo6PFJGqCevA2oujic=;
        b=WoarX9gr/P5kZ2ObF2xo+8APVLAsTg2n66Z7aqvFyFErMgc2YfjaGrsEe5L5ChHtwb
         tUDiuVbIfMhUQOiNkAIBAq9QbLKWOpuZm/ANFOjz3GX19XRnut+p2YcqsjUVhqFBtK5S
         iNy/iC3b6rikSUgKldTJnrj7TVRi5gPQV5Lb7ouIUDs9+w4INSp7RCHcofLkrNKkM9bD
         WCXZM/qm1GNyMLqJiKbzLdVVs5UwtE5NzKn/aRzHIAnhQJJ1TwqvUBao47ly6RLdW0cS
         zAUVztgbFrL/cFk6qmBmTqa5OtbFkJVCgXYo3JVFbeDg/FmsHk3jD81tBd/it7M3Wsj+
         nA7A==
X-Gm-Message-State: AOAM532sEDhKSb/ayLZpx0qGVOS13FFTcBoXGnhUcdl1wJs/uoclfIlV
	AHrVw46UTDbs4BhIaiv3LPy6qNzd8JfO4aRYJtXnh345sh4=
X-Google-Smtp-Source: ABdhPJy+c/qV7/RN7vuphHELtEi/ckr/V9af9xTRaP2gYZzsfUT8xsP1n0FwoznwcoCSaUlGa6LTW59ZAW4EbFJej80=
X-Received: by 2002:a1c:ac84:: with SMTP id v126mr4561209wme.189.1629480331597;
 Fri, 20 Aug 2021 10:25:31 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Fri, 20 Aug 2021 19:25:18 +0200
Message-ID: <CAKHaR3kE1Td0vH7QM9xDExms7N_drXXf__V6OUk-a5BWbyGTmQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: LELZY56PVH2HBSSQBCSJBXUBUZCH3EHL
X-Message-ID-Hash: LELZY56PVH2HBSSQBCSJBXUBUZCH3EHL
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] input only rfnoc blocks with UHD 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LELZY56PVH2HBSSQBCSJBXUBUZCH3EHL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3178582737147469534=="

--===============3178582737147469534==
Content-Type: multipart/alternative; boundary="00000000000055c19d05ca00f489"

--00000000000055c19d05ca00f489
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm trying to optimize FPGA consumption and on N310/UHD4.1.0.1 i am testing
a block that needs only 2 inputs and no outputs. since i don't need to
stream any data in/out of the FPGA i declared a single streamer with
control only and declared no connection between it and any block in the yml
and this way i can see i can read and write registers.
the issue arises when i try to stream data to the block: if i have no
outputs declared, inputs will not receive anything. if i have 1 output
connected to a streamer, connected to a null sink, i can receive from the
first input, if i have 2 outputs connected to two streamers connected to
null sinks i can receive on both inputs.
is there any way i can get rid of those useless outputs and remove at least
1 endpoint?
if i declare i need a single endpoint with no data why does it complain if
i don't declare buff_size in the yml?
my rfnoc block uses a noc shell that outputs axi stream payload which i
adapted for programmable number of inputs and outputs.
It seems to me the issue is not on the FPGA side as the backend block seems
to properly report information and o don't see any connection in NOC shell
between input and outputs other than in there...

Thanks,

Dario

--00000000000055c19d05ca00f489
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr">Hi,<div>i&#39;m trying to optimize FPGA =
consumption and on N310/UHD4.1.0.1 i am testing a block that needs only 2 i=
nputs and no outputs. since i don&#39;t need to stream any data in/out of t=
he FPGA i declared a single streamer with control only and declared no conn=
ection between it and any block in the yml and this way i can see i can rea=
d and write registers.</div><div>the issue arises when i try to stream data=
 to the block: if i have no outputs declared, inputs will not receive=C2=A0=
anything. if i have 1 output connected to a streamer, connected to a null s=
ink, i can receive from the first input, if i have 2 outputs connected to t=
wo streamers connected to null sinks i can receive on both inputs.</div><di=
v>is there any way i can get rid of those useless outputs and remove at lea=
st 1 endpoint?</div><div>if i declare i need a single endpoint with no data=
 why does it complain if i don&#39;t declare buff_size in the yml?</div><di=
v>my rfnoc block uses a noc shell that outputs axi stream payload which i a=
dapted for programmable number of inputs and outputs.</div><div dir=3D"auto=
">It seems to me the issue is not on the FPGA side as the backend block see=
ms to properly report information and o don&#39;t see any connection in NOC=
 shell between input and outputs other than in there...</div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Thanks,</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Dario</div></div></div>

--00000000000055c19d05ca00f489--

--===============3178582737147469534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3178582737147469534==--
