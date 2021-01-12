Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0BD2F38C9
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jan 2021 19:26:01 +0100 (CET)
Received: from [::1] (port=41546 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kzOMg-00017K-NJ; Tue, 12 Jan 2021 13:25:58 -0500
Received: from mail-lj1-f182.google.com ([209.85.208.182]:46558)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aitamakinde@abuad.edu.ng>)
 id 1kzOMd-00010z-9q
 for usrp-users@lists.ettus.com; Tue, 12 Jan 2021 13:25:55 -0500
Received: by mail-lj1-f182.google.com with SMTP id u11so3891614ljo.13
 for <usrp-users@lists.ettus.com>; Tue, 12 Jan 2021 10:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=abuad-edu-ng.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=1l12JxcyynXAkl72DQZHhtNxIhvyr6xgJDnT8E9rvk0=;
 b=ocw3P61YLNsYcz5xgZ21n+SiImJFJq6QRnGy2scTV/HuOwyAyZfmI9tQHfB0sO/Cmt
 OvQGNqck6M1VKbZCNIblgHt1nTNm8e1AXQ34FkRbIgw6T/BdN/ewbKftnAMDjZ3MLlTJ
 GcR7glBwP+x8+y8gbmCqLI7lNEZGHNrpQgiRX7XX6/fKJZ/B80vZnnHG/Xs0BYb0xI5x
 9HOqh7v4j88+U0n/LakHtsAoi/Mszaxjw/PVOtUO8aojXup9WqSmZHaU32aYBmQH2NWW
 3l123qU6lUMl3LAoZrSVQv6vToF0wEwViQk/W/zAlp2R8NZyy0Y/pWTCikqpOZGZFixL
 wmIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1l12JxcyynXAkl72DQZHhtNxIhvyr6xgJDnT8E9rvk0=;
 b=kMIyJda9FBdv0oieyITmYE4KS/gJH3DpgLCIIqYiRGz6mH6Cn/OyDXc4Vxl/pENCBr
 VsEeITrm9HdscXlyRc3BCtfQWDERXrPcGIUzG14E5Z50mqO+SlxfeSNqUhvlHsXHdfzL
 QirQP7alI3rqVUHzT2tCwCFOpatgi17LLBqqtXlmxvDXme28+eBycy49yhR9s0nUcS/c
 wvDuArWrw/TJfP1i8vTwDff4mV+uUa0JQULs5hKJBDNUrAPG6xskN4wgJ64iqQtPpm3I
 rYTaYLUotNZXFLldyEdqIJcGl8mYfiylAX7beo1qwXXLN6K76WDe6yZUme/e8U5MfPts
 tdzw==
X-Gm-Message-State: AOAM5323S1GPdDXwwW16FhtGxdZLQOjbBoV06BNFmL++EVhvWoBmknF2
 gqwujMaTWyP3llCDhDono+73OPDJssUqLMM6Kw63Eu1nMrSK1PSa
X-Google-Smtp-Source: ABdhPJx+aXx+ZbZd7aUe7MhKDzjlGFzmWuEWhnQ/hY0nhlHI+YTt9Tp+VRaAVkPvTiur7FRFDPGK30GrVJ53otCqslA=
X-Received: by 2002:a2e:9805:: with SMTP id a5mr212578ljj.175.1610475913263;
 Tue, 12 Jan 2021 10:25:13 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 12 Jan 2021 19:25:01 +0100
Message-ID: <CAD-eGGr24xvkBAMovWcMj=ususKufZ4sF7eRs1FA3qjRpAzCHw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Spectrum analyzer not picking received signal from
 USRP-GNU Radio
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
From: AKINYELE ITAMAKINDE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: AKINYELE ITAMAKINDE <aitamakinde@abuad.edu.ng>
Content-Type: multipart/mixed; boundary="===============0892915186585353283=="
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

--===============0892915186585353283==
Content-Type: multipart/alternative; boundary="000000000000bad1cc05b8b82436"

--000000000000bad1cc05b8b82436
Content-Type: text/plain; charset="UTF-8"

Hello,
I collected  spectrum analyzer RF input to Rx2 of the USRP, I was able to
obtain the Tx power and Bandwidth of Tx signal. At the Rx end, I also
connected the antenna to the Rx1/Tx1, and Rx2 to the RF input of the
spectrum analyzer, but Spectrum analyzer was not picking the received
signal. What could be the problem?
Thanks.
Akinyele

--000000000000bad1cc05b8b82436
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>I collected=C2=A0 spectrum analyzer =
RF input to Rx2 of the USRP, I was able to obtain the Tx power and Bandwidt=
h of Tx signal. At the Rx end, I also connected the antenna to the Rx1/Tx1,=
 and Rx2 to the RF input of the spectrum analyzer, but Spectrum analyzer wa=
s not picking the received signal. What could be the problem?</div><div>Tha=
nks.</div><div>Akinyele<br></div></div>

--000000000000bad1cc05b8b82436--


--===============0892915186585353283==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0892915186585353283==--

