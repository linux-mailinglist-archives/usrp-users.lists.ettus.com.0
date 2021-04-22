Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA3736864C
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 20:00:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D38ED3843B6
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 14:00:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=usc-edu.20150623.gappssmtp.com header.i=@usc-edu.20150623.gappssmtp.com header.b="HwOS1v+Q";
	dkim-atps=neutral
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 466B0384336
	for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 13:59:30 -0400 (EDT)
Received: by mail-pf1-f174.google.com with SMTP id c3so13467301pfo.3
        for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 10:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=usc-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version;
        bh=8kK627MsanIfG97+hwczQ7pueF7UAm2hm5EEIRfiILo=;
        b=HwOS1v+Q63vaqaifoVTrWV3rOEEhD5Y8WsOGvu1PDctSBXvUJeedewS73d4x5Prko2
         67w/nGUBBCUD1IylR7Rv+mQ+z/IPbvi6jslkqsvM0l5Nxc3M3gNm1a4ryyJWMGQ8U+er
         32v8D0vF3n0FB/FZY+SLPWWvBBnrvxXsUf7UkM8I8gHVsidCzKyiw0yTgxnYdfit1ohB
         r1zzwzMOTd2e0xdj8KxGwx9vrzLNqt+6BpwqHY1d9Ocq9HumRw0EV1JymGofrWMSLKxG
         o2U/KEq9vu6/DeUzkV2jNVeGFb0VUqV87HxT3aR868w9qgX4geDlIl+WfslaX6FIxcHt
         IWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version;
        bh=8kK627MsanIfG97+hwczQ7pueF7UAm2hm5EEIRfiILo=;
        b=OChJnpjPuV/tm8XLBWAsZ91RajVNHW5u1GapJJjcfgVcIxVk+U73oaon/ElQ6HGKVq
         F+Dsj4wbEC9xNNhhBxos7mwBZ3h8uiYTeVcRrlhd61m1K0uvXfDDpjQtYqF8geljPd5e
         HBWWOWSKRqxHDZ5BeTNfwdYr1ncXlvYd5ed1n867udUTcavj35tNEhYoKK8upZRhRlYX
         DTuE8nlKD788MeIWkUaKOlmPOVdJ/iTQS56qMgnbkVvMAiED7iKFzdzZFYLWHheBdlLc
         hZa4BXIezbixxT16jXn3+yFIcflzEcucVwQXCDAFLBgUOYjZXJjUGT1b3Sp6I7J3fDYU
         FScQ==
X-Gm-Message-State: AOAM532ASvFvPo9mjWf8VqrKmqPVSi04tuZbh9GQLOtbQb1h5XK06bmj
	mISocOA9TFWvkCn+1t2/nsIhMN0chRZDUg==
X-Google-Smtp-Source: ABdhPJyg+Y/QzoCr2nW+5YiFZR4OfKy00wvxIUAz8NonlYx+HwLRkaJ6aE+vkHOaWeS9j20YZ3sCpw==
X-Received: by 2002:a63:150c:: with SMTP id v12mr4782387pgl.344.1619114369106;
        Thu, 22 Apr 2021 10:59:29 -0700 (PDT)
Received: from [2603:8000:ae01:7c7:b041:c98e:d07f:0] (2603-8000-ae01-07c7-4ca3-af48-acf3-0221.res6.spectrum.com. [2603:8000:ae01:7c7:4ca3:af48:acf3:221])
        by smtp.gmail.com with ESMTPSA id m7sm2715642pfd.52.2021.04.22.10.59.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Apr 2021 10:59:28 -0700 (PDT)
Date: Thu, 22 Apr 2021 10:59:20 -0700
From: Samuel Prager <sprager@usc.edu>
To: usrp-users@lists.ettus.com
Cc: usrp-users-request@lists.ettus.com
Message-ID: <d7fb1195-d256-4f35-8416-cb8b26f256a6@Spark>
In-Reply-To: <a98d0233-55bc-49eb-9eda-e4fa6f5e27bf@Spark>
References: <a98d0233-55bc-49eb-9eda-e4fa6f5e27bf@Spark>
X-Readdle-Message-ID: d7fb1195-d256-4f35-8416-cb8b26f256a6@Spark
MIME-Version: 1.0
Message-ID-Hash: ZKIBR4OIXUO575FR6GQAUQD7XTQZXFMA
X-Message-ID-Hash: ZKIBR4OIXUO575FR6GQAUQD7XTQZXFMA
X-MailFrom: sprager@usc.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E312 automatic boot
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKIBR4OIXUO575FR6GQAUQD7XTQZXFMA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3324189261361314122=="

--===============3324189261361314122==
Content-Type: multipart/alternative; boundary="6081b97f_580bd78f_815"

--6081b97f_580bd78f_815
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Is it possible to configure the E312 to boot automatically when the power supply is connected?

Thank you

-Sam

--6081b97f_580bd78f_815
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Is it possible to configure the E312 to boot automa=
tically when the power supply is connected=3F<br />
<br />
Thank you</div>
</div>
<div name=3D=22messageSignatureSection=22><br />
-Sam</div>
</body>
</html>

--6081b97f_580bd78f_815--

--===============3324189261361314122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3324189261361314122==--
