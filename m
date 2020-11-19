Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD70D2B9580
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 15:52:49 +0100 (CET)
Received: from [::1] (port=38026 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kflIg-0000ue-CQ; Thu, 19 Nov 2020 09:52:42 -0500
Received: from mail-ed1-f50.google.com ([209.85.208.50]:35720)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1kflIc-0000pj-LT
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 09:52:38 -0500
Received: by mail-ed1-f50.google.com with SMTP id cf17so2550233edb.2
 for <usrp-users@lists.ettus.com>; Thu, 19 Nov 2020 06:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=4mEnrakwpwCsZMGZJlME1TY5b0bk2QsYyuYeTzeC4pE=;
 b=ZSR0dTEXoZ9MiXTaFcL5dbL0yhXLNE8dRpkmCDVcy3mFpMZGr6Ux7PVkyr39QsVh5i
 yxNSM7UkwucX3wXnjVsPBdv7zjBbVjOQzdvAu3sV8m2+FP+DCbWv+5HkShzVMRtkrhaj
 dmugS/mKteAxzFqipSIezSb2z4PEgH43y6ib7nbOASp3K9D1RJe89BXtW69Eu4kf3MOu
 bBpXY+awHH0gfrIClp2cG7Wi95cV0mcrFY2lauC6zVjqszY9ibJN+c+nt9f6Zk9Wrpem
 fFGDJwGJnZTZ07SzivpLR26Y8XCSrLX8e3VMM3GTUbvigRFLVmUUQ8n2wYYHgVoqGw4q
 Z3fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4mEnrakwpwCsZMGZJlME1TY5b0bk2QsYyuYeTzeC4pE=;
 b=cppXz8OtZbVq2YRIquDM1aK7Rwt4F4gSsimA+AvOSaTd8B6V1I/Crk9rgbQ1xSS7Js
 kaOjLSjkVI9eCD61DOuHZ7QqX3IEuDh8qHAANXMaVVO8MA38jpAbIkiAvhHvqR/Gx/pj
 FgIyju0m83UwRyD05uRgCFqiDYluLzgp79MPHlmRzPYgiqj/AG0t0kapk19iPaNEgxIb
 8BUBVeEy8JMpz8Ue+sNaSvXb6v54aigXQ9ZlUMqMAecfuKIbgZ7Df5gd58j952wkwSNa
 mRcY2iodjaNpIzwF48NQECNs3tBfNJyq5QJfgpCEE3zt7i80/nLkTKfdg/BZzYWM28vB
 wpmw==
X-Gm-Message-State: AOAM531LzQWSbeDFKFemtEO3fpkhOpa7aSwVd4Rm4AJ3fffiW4v46yLh
 v0oR7AQNo5t9YiFyfZx4iR2M8H5F4d19EgwoRgD0yRkV0g0mHA==
X-Google-Smtp-Source: ABdhPJxugnnJxIMnWd/5fr4N2D1SKQ7K26LW6MoVWppYjhP+VNfvvk7bSQwf3+A2SyG99H772o/fCxiIEIDjrY58zko=
X-Received: by 2002:a05:6402:150d:: with SMTP id
 f13mr30160241edw.119.1605797517205; 
 Thu, 19 Nov 2020 06:51:57 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 19 Nov 2020 15:51:45 +0100
Message-ID: <CAG16vQV0xTxQxPmFpBO_5q8Og03MWVhieY2VnBhK9UTE5fVfZw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] FPGA RFNoC Radio block with only one channel
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Maria_Mu=C3=B1oz_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Content-Type: multipart/mixed; boundary="===============8488105648321390604=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8488105648321390604==
Content-Type: multipart/alternative; boundary="00000000000098226105b476de0a"

--00000000000098226105b476de0a
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm using an USRP E320 using the RFNoC image to implement a code that
requires too much FPGA resources. I only need to use one of the channels of
the USRP so I was wondering if it could be possible to eliminate the logic
associated with the other channel to save resources on the FPGA and if
there is a 'safe' way to do that.
 I mean I have seen on the verilog source code, that there is a parameter
'NUM_CHANNELS_PER_RADIO' (e320.v on fpga repository) which configures the
channels of the radio, but what happens with the tx_i1, tx_q1, rx_i1 and
rx_1q signals that goes to the LVDS interface with the ADC? Can they be
left unconnected?  Is there another parameter that I must change to use
only one channel and eliminate the 'extra' logic?

Kind Regards,

Maria

--00000000000098226105b476de0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;m using an USRP E320=
=20

 using the RFNoC image

to implement a code that requires too much FPGA resources. I only need to u=
se one of the channels of the USRP so I was wondering if it could be possib=
le to eliminate the logic associated with the other channel=C2=A0to save re=
sources on the FPGA and if there is a &#39;safe&#39; way to do that.</div><=
div>=C2=A0I mean I have seen on the verilog source code, that there is a pa=
rameter &#39;NUM_CHANNELS_PER_RADIO&#39; (e320.v on fpga repository) which =
configures the channels of the radio, but what happens with the tx_i1, tx_q=
1, rx_i1 and rx_1q signals that goes to the LVDS interface with the ADC? Ca=
n they be left unconnected?=C2=A0 Is there another parameter that I must ch=
ange to use only one channel and eliminate the &#39;extra&#39; logic?</div>=
<div><br></div><div>Kind Regards,</div><div><br></div><div>Maria=C2=A0</div=
></div>

--00000000000098226105b476de0a--


--===============8488105648321390604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8488105648321390604==--

