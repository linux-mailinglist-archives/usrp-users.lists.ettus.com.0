Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 422521EE80B
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jun 2020 17:52:30 +0200 (CEST)
Received: from [::1] (port=59604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jgsAO-0000df-64; Thu, 04 Jun 2020 11:52:28 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:35259)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <siddsubra@gmail.com>) id 1jgsAK-0000Xa-Ek
 for usrp-users@lists.ettus.com; Thu, 04 Jun 2020 11:52:24 -0400
Received: by mail-qt1-f179.google.com with SMTP id z1so5650888qtn.2
 for <usrp-users@lists.ettus.com>; Thu, 04 Jun 2020 08:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:message-id:date
 :to; bh=MOUDOUG8F3ssutssDp9aLfrPq84+Kz95fLoDxYV2SNY=;
 b=EP2Zs9PMlIrnrR2muh8Yjsf9yCwSgJv/888wwb9MlqjECx9eRWfHyXttz255O+Imd/
 9MJP8CmZq/Xz5jnDcoKWWF/hZHczOJ7v++mpFhxXgbfZFSg24LKoYakagzUPKvE05WlT
 q2mbc/FdEjT/r8G/XB84/KxLHuyywqT1ASZoVzwHVX3B1+c4gmDZG5m5ToKCJN9ZQYT4
 20/b4XIM9j+SHcxK8PUMn/OZXtt6r+t9arqudXHp24Uf8A2uIlCKufhXlKZccv2ofict
 vAx8f5Dk6RE5rUdR7jBXLCw8ga7C/D34UmFc38nc48Pna9gWjkBYE/2zUoAe2HbqL7JR
 mGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:message-id:date:to;
 bh=MOUDOUG8F3ssutssDp9aLfrPq84+Kz95fLoDxYV2SNY=;
 b=YiPfAA5UyxNdoecYxXV2NVq6UO8ZSiMoeko6tRG+S4cx5B1TrNwa+UrrNrHAXjlI4B
 JVDbYtGdk0/naINgfOMbv0VSDlXnhoBJaubGoeZpcp3XdwaVZjyvqCYfB47d0C4bsK8q
 PDvLnUzj8BadntU+TGSITOq5LBcLyho7HM4pqsE9YIx/Ak+aNo9+t7lqHMrUmnpYOIvT
 7Yf2TWGkML7MrtqydycFGBtJZQUWMpbZtVelKKGh+hS85X8PMc5MqdGMKBRRuLGSOoD3
 8w7LPPGSsEHNQsp52eSfG1Tdn7HyBPxWUlneK78wYUbtxsYyyFc6QEIleoTgDuPg3Asy
 bS1w==
X-Gm-Message-State: AOAM531FDrGvfA6AgSuhwFrhs3ApsdF0t93IQrMFjp42PNSYvK307irX
 nB303e3UV38epjKqD2rZAN7mpF+RRos=
X-Google-Smtp-Source: ABdhPJzwnjm6oieskA43V/4945ZLB6i6uITevXNAV9RpLKJG8sGkly5cXMlIQf6Ee3omADx/3yGY9g==
X-Received: by 2002:ac8:538b:: with SMTP id x11mr5125481qtp.84.1591285903320; 
 Thu, 04 Jun 2020 08:51:43 -0700 (PDT)
Received: from [192.168.86.250] (c-73-236-113-201.hsd1.wv.comcast.net.
 [73.236.113.201])
 by smtp.gmail.com with ESMTPSA id w13sm4467255qkb.91.2020.06.04.08.51.42
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Jun 2020 08:51:42 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Message-Id: <A59D1F26-80DF-4AA3-9DDC-BB2DD846A1D2@gmail.com>
Date: Thu, 4 Jun 2020 11:51:42 -0400
To: usrp-users@lists.ettus.com
X-Mailer: iPad Mail (17F75)
Subject: [USRP-users] Clock Bias from board mounted GPSDO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sidd Subramanyam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sidd Subramanyam <siddsubra@gmail.com>
Content-Type: multipart/mixed; boundary="===============8995419594639852002=="
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


--===============8995419594639852002==
Content-Type: multipart/alternative; boundary=Apple-Mail-90F1E66E-1766-4E8A-9240-0CD8779594D2
Content-Transfer-Encoding: 7bit


--Apple-Mail-90F1E66E-1766-4E8A-9240-0CD8779594D2
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi all,

I was wondering if there was a way to extract or compute a precise Clock Bia=
s of the USRP time vs GPS time from the GPSDO. I am using a B210 USRP with t=
he board mounted recommended TCXO GPSDO. I have previously used the GNSS-SDR=
 (https://gnss-sdr.org/) software to compute pseudorange and clock bias, how=
ever this software is run by using the front end RX channels and not the GPS=
DO input.

In my use case, I have a need to compute this from my built in GPSDO since I=
 am intending to simultaneously use the front end on S-band signals, and the=
 B series does not allow 2 separate center frequencies across its 2 RX chann=
els.

I am aware of the NMEA messages from which I can extract the position lock v=
ia serial but it does not seem like there is a time output that is more gran=
ular than one second which I can use to compute a clock bias.

Any help is appreciated.

Thank you,
Sidd



--Apple-Mail-90F1E66E-1766-4E8A-9240-0CD8779594D2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr"><meta http-equiv=3D"conten=
t-type" content=3D"text/html; charset=3Dutf-8"><div dir=3D"ltr"><meta http-e=
quiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">Hi all,<div><br=
></div><div>I was wondering if there was a way to extract or compute a preci=
se Clock Bias of the USRP time vs GPS time from the GPSDO. I am using a B210=
 USRP with the board mounted recommended TCXO GPSDO. I have previously used t=
he GNSS-SDR (<a href=3D"https://gnss-sdr.org/">https://gnss-sdr.org/</a>) so=
ftware to compute pseudorange and clock bias, however this software is run b=
y using the front end RX channels and not the GPSDO input.</div><div><br></d=
iv><div>In my use case, I have a need to compute this from my built in GPSDO=
 since I am intending to simultaneously use the front end on S-band signals,=
 and the B series does not allow 2 separate center frequencies across its 2 R=
X channels.</div><div><br></div><div>I am aware of the NMEA messages from wh=
ich I can extract the position lock via serial but it does not seem like the=
re is a time output that is more granular than one second which I can use to=
 compute a clock bias.</div><div><br></div><div>Any help is appreciated.</di=
v><div><br></div><div>Thank you,</div><div>Sidd</div><div><br></div><div><br=
></div></div></div></body></html>=

--Apple-Mail-90F1E66E-1766-4E8A-9240-0CD8779594D2--


--===============8995419594639852002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8995419594639852002==--

