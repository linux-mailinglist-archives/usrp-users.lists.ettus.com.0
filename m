Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 663749ABCF0
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 06:33:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F3E23385069
	for <lists+usrp-users@lfdr.de>; Wed, 23 Oct 2024 00:33:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1729658033; bh=ZjyXv5ebRlUxIwHCIYtxqDMkkU8TUfOGZ5ZgNaWJcIc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Nl9qeWyos1HvNeSoTQj+wkq6Nu/nL1W7B0lTik6W/K3GXNz9GFdKwTaiMbmeWFxg5
	 ximEtsSOq5Pab4uEoK9uIV7CXd/M5CRLFtlUUEBv6HOVJSOcDOmkqLjmYmXE+16u7A
	 pmoM6h0Z8aoLRUllk9WrKZyGfpLxFLFi5juc4uawGrF4yIvbR1uK3NF8ORYImSv1qV
	 0NVl8jludlq0cYVmR5ketkHNcFVftPq+tD1lTdVqGd2m322aCvdPdywyZ3kUBMPc0e
	 L97rBiksfdXeGbQgDzHNswqClLxfwLqIK3OHa7BpF26sayMpmxJ6Wt04BcYfycS6E/
	 omyOF5+EjMH7Q==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A994383FEC
	for <usrp-users@lists.ettus.com>; Wed, 23 Oct 2024 00:32:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nQAEClpm";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a99f3a5a44cso729011766b.3
        for <usrp-users@lists.ettus.com>; Tue, 22 Oct 2024 21:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729657978; x=1730262778; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Mmyw7dTF/Uq2Z4oqWHRhgCfoDbTY0JqMQ5YDGl1b3dg=;
        b=nQAEClpmZPvUd9l9ojDTDR9/Rk0i+kfpEwKFewmnJ66xpzlAgT4HrcuL9d4TtKWygu
         wDFK17ww05n+Poiw/o5e+RXhgb4GV5kx/KkwL8t++aGuXEAGLulru9Pf4+zWuZaZIXJ7
         FH2lkw+IxGAgxjhL0Diwx1zaJFtSqpHnMNxLn6hZidb/Z+S7v8tQhAxeZcyPOqZDiJRA
         AktkHcSgXBW1t6l7+sOdyDYgItsG2heXZQhW67cdxo7t7oc8iFdTcFz3glMVAMa7nN3c
         SIdVpcyzglJed8HQCENX5k/SLRZRrnQvaju5wh8ZroT/Xfz3CSxhknp+UK+ULnDm4BOU
         etPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729657978; x=1730262778;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mmyw7dTF/Uq2Z4oqWHRhgCfoDbTY0JqMQ5YDGl1b3dg=;
        b=XdTxQBc+/KsAXeWNKN6QpV3TUTUuO0E4L43lOyabRfomuJHM4MHvvUoVwAWC60kuig
         O3VvGTjkJ8eYYmgoTD3LD+rOGKY04Q4bSlcv2efNDxkXFsnr/OO4C9ULcR0Fmtr5TPrv
         EE8BWrpgFcgXpb9B5O4s49ocPnFHLBBjhrZjkdxmlOCcxO7m5k2B0qTF8hyIK52s2s8E
         tYIXtSWIuMnrUTNsHx13sL2w/trGalO8G7IYxOJqXZccfpMLFuL9wIa766W9nhPjAbel
         YvhbXwDZaCXaF8BB+G4c8lct/0OnYMzLaXW+HSxxomy91nrkfYywTApvv5x7rl61hf8G
         MeGQ==
X-Gm-Message-State: AOJu0Yy/IYbQAQvci8nEQY0XDNkQ4yeE2Rf/8x94/vpCPEIXgxAvt4fG
	sJR60U2U3pVRHA3oJx+SVyKtXfOSsvA2tngujGLEjbkYJrxQ8hqLlZgllKPgnCv4Gu7NUwT3XIP
	Krkl/jbZpjn8zHMEw8197l2JiXsFTjZAjlkw=
X-Google-Smtp-Source: AGHT+IEBSV15rSruvc7HjyCbAfGhQ8EQQjiz4XjThG8TArrEWxUg9Kr3la57/Y5jr7zvyvUeNea3jYki6PIWVp3ssZM=
X-Received: by 2002:a17:907:3da0:b0:a9a:4b95:d4 with SMTP id
 a640c23a62f3a-a9abf95e048mr97126966b.59.1729657976819; Tue, 22 Oct 2024
 21:32:56 -0700 (PDT)
MIME-Version: 1.0
From: hui cj <cjh416593819@gmail.com>
Date: Wed, 23 Oct 2024 12:32:46 +0800
Message-ID: <CAEL-RA1D2w9i235stn2NUS9Kuu7f1_fnyKSLw0qhATzNbrmDEA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: X6LLK4PE6ZINO2CHEWU22DQA7PMGLR5L
X-Message-ID-Hash: X6LLK4PE6ZINO2CHEWU22DQA7PMGLR5L
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Best way to transfer samples from DDR to a laptop using only 1Gbps cable
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X6LLK4PE6ZINO2CHEWU22DQA7PMGLR5L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7576960266042459905=="

--===============7576960266042459905==
Content-Type: multipart/alternative; boundary="0000000000004a97a706251d61ba"

--0000000000004a97a706251d61ba
Content-Type: text/plain; charset="UTF-8"

Hello everyone!

Given the limitation that I can only connect my laptop to the x310 via a
single 1Gbps Ethernet cable, I am considering using the Replay module to
temporarily store the samples from the radio in DDR.
However, when I attempt to transfer the data back to my laptop using the
Replay module again, I encounter incomplete data transmission and response
timeouts. I suspect this might be due to a lack of flow control when the
x310 transmits to the remote streamer.
My question is, how can I ensure a complete and reliable transfer of all
DDR data to my laptop, while also maximizing the transfer rate (close to
1Gbps) in this scenario?

Thanks!

--0000000000004a97a706251d61ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"color:rgb(6,6,7);font-family:-apple-sy=
stem,blinkmacsystemfont,&quot;Helvetica Neue&quot;,helvetica,&quot;segoe ui=
&quot;,arial,roboto,&quot;PingFang SC&quot;,miui,&quot;Hiragino Sans GB&quo=
t;,&quot;Microsoft Yahei&quot;,sans-serif;font-size:14px;letter-spacing:0.2=
5px">Hello everyone!</span></div><div><span style=3D"color:rgb(6,6,7);font-=
family:-apple-system,blinkmacsystemfont,&quot;Helvetica Neue&quot;,helvetic=
a,&quot;segoe ui&quot;,arial,roboto,&quot;PingFang SC&quot;,miui,&quot;Hira=
gino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sans-serif;font-size:14px;le=
tter-spacing:0.25px"><br></span></div><span style=3D"color:rgb(6,6,7);font-=
family:-apple-system,blinkmacsystemfont,&quot;Helvetica Neue&quot;,helvetic=
a,&quot;segoe ui&quot;,arial,roboto,&quot;PingFang SC&quot;,miui,&quot;Hira=
gino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sans-serif;font-size:14px;le=
tter-spacing:0.25px">Given the limitation that I can only connect my laptop=
 to the x310 via a single 1Gbps Ethernet cable, I am considering using the =
Replay module to temporarily store the samples from the radio in DDR. </spa=
n><div><span style=3D"color:rgb(6,6,7);font-family:-apple-system,blinkmacsy=
stemfont,&quot;Helvetica Neue&quot;,helvetica,&quot;segoe ui&quot;,arial,ro=
boto,&quot;PingFang SC&quot;,miui,&quot;Hiragino Sans GB&quot;,&quot;Micros=
oft Yahei&quot;,sans-serif;font-size:14px;letter-spacing:0.25px">However, w=
hen I attempt to transfer the data back to my laptop using the Replay modul=
e again, I encounter incomplete data transmission and response timeouts. I =
suspect this might be due to a lack of flow control when the x310 transmits=
 to the remote streamer. </span></div><div><span style=3D"color:rgb(6,6,7);=
font-family:-apple-system,blinkmacsystemfont,&quot;Helvetica Neue&quot;,hel=
vetica,&quot;segoe ui&quot;,arial,roboto,&quot;PingFang SC&quot;,miui,&quot=
;Hiragino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sans-serif;font-size:14=
px;letter-spacing:0.25px">My question is, how can I ensure a complete and r=
eliable transfer of all DDR data to my laptop, while also maximizing the tr=
ansfer rate (close to 1Gbps) in this scenario?</span><br><div><span style=
=3D"color:rgb(6,6,7);font-family:-apple-system,blinkmacsystemfont,&quot;Hel=
vetica Neue&quot;,helvetica,&quot;segoe ui&quot;,arial,roboto,&quot;PingFan=
g SC&quot;,miui,&quot;Hiragino Sans GB&quot;,&quot;Microsoft Yahei&quot;,sa=
ns-serif;font-size:14px;letter-spacing:0.25px"><br></span></div><div><span =
style=3D"color:rgb(6,6,7);font-family:-apple-system,blinkmacsystemfont,&quo=
t;Helvetica Neue&quot;,helvetica,&quot;segoe ui&quot;,arial,roboto,&quot;Pi=
ngFang SC&quot;,miui,&quot;Hiragino Sans GB&quot;,&quot;Microsoft Yahei&quo=
t;,sans-serif;font-size:14px;letter-spacing:0.25px">Thanks!</span></div></d=
iv></div>

--0000000000004a97a706251d61ba--

--===============7576960266042459905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7576960266042459905==--
