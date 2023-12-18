Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E241817C97
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 22:23:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CDFB385720
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 16:23:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702934603; bh=BeQ1Wpk5MJCa5LboEpWDEBhmgPka7sOFRjOnBiQegxE=;
	h=From:Date:References:To:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Yd9JkRkzDMRhIn2qjvtTHPDGeT1+458g1flhoNYhlYcqo/REsKkMXEq0p4GHp2eOr
	 O1XuIYT3pIeJvhMZ/bhDNknfAm7ZkDWpeQ6GfFsgMdhZ+bLe7dQDku0d2h3uyMqKsD
	 vqNea0i0ActC6omBYYFNCOu7IFejlPgFuldgUmMlxkPEkkCFhECbTVbOB3nTJUT/jL
	 ThnUn05wAPLTSta5tfqDdQ5AO+i65NfPw2U4wX/QvXtzT2Bft7S4jYhbhL2qWO/jdx
	 vMCbG+EDOlJzRkmqKfwvjyZnrVoomGYkef49t7h7Y1G9MeGZ9+oHU+UG7+gHvBqsSq
	 4iKkwbnw8XRig==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id F2B6A3856E3
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 16:22:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VG91lsKx";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-77f37d19b6fso244752685a.2
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 13:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702934569; x=1703539369; darn=lists.ettus.com;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4XOUuUU7Ux3oy+0iTF45HjSnmKroECw6OcmcQ1TRj8g=;
        b=VG91lsKxG63p2BWG5wMM4pTOuPgpmYWrv3Hs8raHDJSrsRlkebPvGeKIXSLV1R/hVU
         ssZjwgvGJeB84sNm3SP+8tOBbRzTgvh0MH0WGxqfuw+G0lpAvU4xZJC4JHj2wADBuk6K
         waGbXDXLW/uVSD9tom5TJZ5fTpAVu2rlTjoajKWZh7aeWNyntN3OTeaNmN05ffd7sTFO
         zbIUoh3pPUED9XXXkc2KMyWo3w6znW5pcpbfPxrsrEb9rlrs+fe1t70zdbBjgYXyQzSv
         QqJL8gfN4Rywz5q2DalscKi1kgdnvU1bUlY5qnjAxObBWPUTWk0KUbBujSqYR1MKPubC
         douA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702934569; x=1703539369;
        h=message-id:in-reply-to:to:references:date:subject:mime-version:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4XOUuUU7Ux3oy+0iTF45HjSnmKroECw6OcmcQ1TRj8g=;
        b=MUt0UMvsu90ZEeIL+PB4aMziSVGmYPW/5CQVVdPQW+mNPnvj54OqQJqxdcXStcuXQ5
         /pBt+QbuNrAdcshWs/ZcsneLG1/YqfQzcCHuMYJiQDAsk0Pbyu1DqsgUm8yg1IfIIwFI
         Uufl70j1jmlwuRzZHcOBxSg8AoMKiQ3QyId7rTCR4FfpnAtYBYm7wEnsXsvE9PUbvES5
         foYC62A8W4NaVaxsQ7WUKXmyoCCcCiIWxbFYl41zU//mI3UBz1v6KQb/xif1GOmiv/cc
         pSw9/A2RAzLOayeCHkXK41bixR6L4pbq28+58JdyCR9XtN9+UCfWFuh5GyEer/mKKmja
         01Xw==
X-Gm-Message-State: AOJu0YyucAYTIq3CxSal+CHqPkb7nEK7Mu2qupDIEyKN/7e3IkYoyq4X
	L8oPMgd17RQGXe2gLdHWzhA+goPoV1Q=
X-Google-Smtp-Source: AGHT+IEX8Ij1uR1lMOkj3W4mhN92iKs92DlmCWaYweI5k5JMjhTY2UAxSXnqnDcP0ijYm7xvLB4Skg==
X-Received: by 2002:a05:620a:1361:b0:77f:ad35:dc33 with SMTP id d1-20020a05620a136100b0077fad35dc33mr8385345qkl.65.1702934568817;
        Mon, 18 Dec 2023 13:22:48 -0800 (PST)
Received: from smtpclient.apple ([2601:140:8c00:6500:56b:17dc:a542:ad5b])
        by smtp.gmail.com with ESMTPSA id dw28-20020a05620a601c00b0077f0dcac136sm8651283qkb.11.2023.12.18.13.22.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Dec 2023 13:22:48 -0800 (PST)
From: Richard Stanley <richardlstanley@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Mon, 18 Dec 2023 16:22:47 -0500
References: <CAJx0LdU6RtiRxq=DveYK84-aOxC5xFONDFEYTrn0RK6H0_MBCg@mail.gmail.com>
To: usrp-users@lists.ettus.com
In-Reply-To: <CAJx0LdU6RtiRxq=DveYK84-aOxC5xFONDFEYTrn0RK6H0_MBCg@mail.gmail.com>
Message-Id: <18FF5062-4702-46B8-85A7-97816B04AFDF@gmail.com>
X-Mailer: Apple Mail (2.3774.300.61.1.2)
Message-ID-Hash: UP7MOOGAXPYIWEMZSASMEHBEG5LV3AB7
X-Message-ID-Hash: UP7MOOGAXPYIWEMZSASMEHBEG5LV3AB7
X-MailFrom: richardlstanley@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building fpga image with online one Ethernet interface
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UP7MOOGAXPYIWEMZSASMEHBEG5LV3AB7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5806052946189826264=="


--===============5806052946189826264==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2E25D564-80D9-4D90-AB98-6B4393770219"


--Apple-Mail=_2E25D564-80D9-4D90-AB98-6B4393770219
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

It may help to review "Table 2 - Ettus Research Daughterboard =
Characteristics=E2=80=9D at =
https://kb.ettus.com/Selecting_a_RF_Daughterboard=20

In short, BasicRX/LFRX can be configured for dual Rx. I=E2=80=99ve done =
this using the existing UHD image in an X310 to get 4 channel phase =
coherent reception in GNU Radio. But, LFTX and BasicTX boards can do =
only 1 Tx, so max of 2 Tx in an X310. Someone who knows RFNoC and Ettus =
gear could comment on what would need to change to accomplish your goal =
for Tx.

HTH,
Richard

On Dec 18, 2023, at 12:51, German Farinas <german.farinas@gmail.com> =
wrote:

Hello All,

I have a USRP x300 and I want to build my custom image. I would like to =
drive an array of 4 Tx/Rx antennas in the HF band for ionospheric =
research, i.e beam steering monostatic pulse radar.

This is my idea for a custom built:

Since I will use 4 daughterboards 2 LFTX and 2 LFRX mounted on the X300. =
Each LFTX or LFRX have 2 port that can be used independently or as a =
single I/Q input. I will use it independently. Then, I will have =
available 4 Rx ports and 4 Tx ports. The Radio connections would be the =
following:=20

For the receiver chain: Radio 0 port 0, Radio 0 port 1, Radio 0 port 2 =
and Radio 0 port 3 would be connected to an adder, the output of the =
adder to a DDC chain, and the output of the DDC chain to a streamer. In =
that way all 4 Rx signal would be summed before passing through the DDC =
chain and I would save space in FPGA.=20

For the transmitter chain the only difference is that I would connect =
the output of the DUC to a delay line filter and from there extract the =
4 outputs to the 4 Tx ports available on the daughterboards. This delay =
line should be configurable since from there I would change the steering =
of the beam.

Also I would like to use only one 1Gb Ethernet and not both, so I could =
save FPGA space. In summary this would be the rfnoc blocks: 2 Radio =
interfaces, 1 DDC, 1DUC, 1 custom delay line block, and only 1Gb =
interface. I think this may occupy less space than the default image.  =
One of the many doubts that I have is about the radio interfaces, in the =
default image these radio interfaces have only 2 port, for example Radio =
0:0 and Radio 0:1, but I would need also Radio 0:2 and Radio 0:3. The =
same for Radio 1: 0 to 3. Because I will use all the ports availables in =
the doughterboards.

I know this is a general and tricky question and I apologize in advance. =
But any any help would be very appreciated.

Best,
German


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com


--Apple-Mail=_2E25D564-80D9-4D90-AB98-6B4393770219
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: =
after-white-space;">Hi,<div><br></div><div>It may help to review "Table =
2 - Ettus Research Daughterboard Characteristics=E2=80=9D at&nbsp;<a =
href=3D"https://kb.ettus.com/Selecting_a_RF_Daughterboard">https://kb.ettu=
s.com/Selecting_a_RF_Daughterboard</a>&nbsp;</div><div><br></div><div>In =
short, BasicRX/LFRX can be configured for dual Rx. I=E2=80=99ve done =
this using the existing UHD image in an X310 to get 4 channel phase =
coherent reception in GNU Radio. But, LFTX and BasicTX boards can do =
only 1 Tx, so max of 2 Tx in an X310. Someone who knows RFNoC and Ettus =
gear could comment on what would need to change to accomplish your goal =
for Tx.</div><div><br></div><div>HTH,</div><div>Richard<br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><div>On Dec 18, 2023, at =
12:51, German Farinas &lt;german.farinas@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div dir=3D"auto">Hello =
All,<div dir=3D"auto"><br></div><div dir=3D"auto">I have a USRP x300 and =
I want to build my custom image. I would like to drive an array of 4 =
Tx/Rx antennas in the HF band for ionospheric research, i.e beam =
steering monostatic pulse radar.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">This is my idea for a custom built:</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">Since I will use 4 =
daughterboards 2 LFTX and 2 LFRX mounted on the X300. Each LFTX or LFRX =
have 2 port that can be used independently or as a single I/Q input. I =
will use it independently. Then, I will have available 4 Rx ports and 4 =
Tx ports. The Radio connections would be the following:&nbsp;</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">For the receiver chain: Radio 0 =
port 0, Radio 0 port 1, Radio 0 port 2 and Radio 0 port 3 would be =
connected to an adder, the output of the adder to a DDC chain, and the =
output of the DDC chain to a streamer. In that way all 4 Rx signal would =
be summed before passing through the DDC chain and I would save space in =
FPGA.&nbsp;</div><div dir=3D"auto"><br></div><div dir=3D"auto">For the =
transmitter chain the only difference is that I would connect the output =
of the DUC to a delay line filter and from there extract the 4 outputs =
to the 4 Tx ports available on the daughterboards. This delay line =
should be configurable since from there I would change the steering of =
the beam.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Also I =
would like to use only one 1Gb Ethernet and not both, so I could save =
FPGA space. In summary this would be the rfnoc blocks: 2 Radio =
interfaces, 1 DDC, 1DUC, 1 custom delay line block, and only 1Gb =
interface. I think this may occupy less space than the default =
image.&nbsp; One of the many doubts that I have is about the radio =
interfaces, in the default image these radio interfaces have only 2 =
port, for example Radio 0:0 and Radio 0:1, but I would need also Radio =
0:2 and Radio 0:3. The same for Radio 1: 0 to 3. Because I will use all =
the ports availables in the doughterboards.</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">I know this is a general and =
tricky question and I apologize in advance. But any any help would be =
very appreciated.</div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Best,</div><div dir=3D"auto">German</div><div =
dir=3D"auto"><br></div><div dir=3D"auto"><br></div></div>
_______________________________________________<br>USRP-users mailing =
list -- usrp-users@lists.ettus.com<br>To unsubscribe send an email to =
usrp-users-leave@lists.ettus.com<br></div></div><br></div></body></html>=

--Apple-Mail=_2E25D564-80D9-4D90-AB98-6B4393770219--

--===============5806052946189826264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5806052946189826264==--
