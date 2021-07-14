Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 056263C7D97
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 06:39:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9AF923846A0
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 00:39:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UsU6Qgry";
	dkim-atps=neutral
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 8908138469A
	for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 00:38:18 -0400 (EDT)
Received: by mail-oi1-f172.google.com with SMTP id q16so898037oiw.6
        for <usrp-users@lists.ettus.com>; Tue, 13 Jul 2021 21:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version;
        bh=fGJR4Je150RQUkfH6+QLw2CklfleaiCa0NnZy5XNTS4=;
        b=UsU6QgryJla0mROmDsuL9HJvcw9Tf8aWTY+f295ceoZxkY3QVF4Yae0BeOSnbbwM10
         krcsz5KczZPRY0h+BZpa2SbMJ8IC5Pw0lGH8BZ4ZvAtnRaNwtmyMQs6vzVCOqpGnimKF
         09tGwU5x8KQoX+G6ppZ0KGnccFiw0Ev+m9saswiohLlxZrU8PgmH95LOzoEz1bJZ5yuP
         mkD7+KTxs5N/cSGploT8kkeM0xlnUkPNk1suCHmdOYAcUMUseLshucrs+jNBo9baJyEW
         ZRXkYnoU9JQU9sevgseJq4U0yc63By9NlpR4afyGBrMjtj9A4bdJ2PbYB0rJEixK1fhX
         sK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
         :message-id:accept-language:content-language:mime-version;
        bh=fGJR4Je150RQUkfH6+QLw2CklfleaiCa0NnZy5XNTS4=;
        b=OWLWZJuqDPUNN+twcvKmZWWmSrEwG14DeZUX5HUA1gqH4HfLeBDUmjZJA2Xs8RtwyE
         notZjNOEB+BE9x6NI7isTYL+xRKZkprK7jZR5QDZB7yAotN7E282230pp3F1NI/McOPm
         1rQzkFW16o95klC0bAT5XRAdMLTtVJ8OytbnSTSZmRUQjnKhYaXYx8XKKFRHlJab2XLO
         OaAE841Hc/KWpm/EtJk8Ga9QQ6zsPdeGWeOZWV5XoaAsS7wh3gbQQntCvaNWnts2Yfbg
         1PkdYLUnJqnZR8lCEivtbSNnOa0iuL4cMXKL678d4h0z3b1hoJJTAEnKQ/EccKF/barZ
         5wwA==
X-Gm-Message-State: AOAM531CUKiKw69xT/7NrYYEjpFEHHt3QDMwWM8APnhxvl64B4eS1R85
	p5Mcb/Te9IMYg7rmAF6wL84H8oBFzzk=
X-Google-Smtp-Source: ABdhPJx60hvV7NNpwaMmsz8x3FHsDgW+v83wqPNOVWh1qM20n5ZKMIQCJ3FcPMQyyZMTxBhSVGcIyw==
X-Received: by 2002:aca:fc12:: with SMTP id a18mr5846925oii.85.1626237497576;
        Tue, 13 Jul 2021 21:38:17 -0700 (PDT)
Received: from SN6PR05MB4429.namprd05.prod.outlook.com ([2603:1036:805:29::5])
        by smtp.gmail.com with ESMTPSA id h96sm289177oth.25.2021.07.13.21.38.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 21:38:17 -0700 (PDT)
From: Weite Zhang <zhang.weit3@gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Maximum data rate using multiple B210s
Thread-Index: AQHXeGaViXMP5HFJdkmsIU4W/TKhEw==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Wed, 14 Jul 2021 04:37:44 +0000
Message-ID: 
	<SN6PR05MB4429867C3429BF6478271D6BF4139@SN6PR05MB4429.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
Message-ID-Hash: 2HJR7IGI65FFEEIOAR7SWOUFVTJH5RQB
X-Message-ID-Hash: 2HJR7IGI65FFEEIOAR7SWOUFVTJH5RQB
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Maximum data rate using multiple B210s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G5BV2CGHIGZBMJ3NFEQWJLZ7V4EUB6HB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4204457177313329999=="

--===============4204457177313329999==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR05MB4429867C3429BF6478271D6BF4139SN6PR05MB4429namp_"

--_000_SN6PR05MB4429867C3429BF6478271D6BF4139SN6PR05MB4429namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am testing four B210s streaming simultaneously and using a laptop that ha=
s four USB3.0 ports. I found the maximum achievable data rate in my case is=
 much lower than what I expect, which should be 20Gbps (4x5Gbps considering=
 the speed limit of a single USB3.0 port is ~5Gbps).

Does anyone has used multiple B210s connected to a single host PC to stream=
ing data simultaneously and is able to run a data rate approaching the maxi=
mum?  Are there any specific hardware requirements in order to do that?


Thank you,
Weit



--_000_SN6PR05MB4429867C3429BF6478271D6BF4139SN6PR05MB4429namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div dir=3D"ltr">Hi,&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am testing four B210s streaming simultaneously and using=
 a laptop that has four USB3.0 ports. I found t<span style=3D"caret-color: =
rgb(0, 0, 0); font-family: -apple-system, HelveticaNeue; background-color: =
rgb(255, 255, 255); display: inline !important">he
 maximum achievable data rate in my case is much lower than what I expect, =
which should be 20Gbps (4x5Gbps considering the speed limit of a single&nbs=
p;<span style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-system, Hel=
veticaNeue; background-color: rgb(255, 255, 255); display: inline !importan=
t">USB3.0
 port is ~5Gbps</span>).</span></div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; background-color: rgb(255, 255, 255); display: i=
nline !important">Does anyone has used multiple B210s connected to a single=
 host PC to streaming data simultaneously
 and is able to run a data rate approaching the maximum? &nbsp;Are there an=
y specific hardware requirements in order to do that?</span><br>
</div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; background-color: rgb(255, 255, 255); display: i=
nline !important"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; background-color: rgb(255, 255, 255); display: i=
nline !important"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; background-color: rgb(255, 255, 255); display: i=
nline !important">Thank you,</span></div>
<div dir=3D"ltr"><span style=3D"caret-color: rgb(0, 0, 0); font-family: -ap=
ple-system, HelveticaNeue; background-color: rgb(255, 255, 255); display: i=
nline !important">Weit</span></div>
<div><br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr"><br>
</div>
</div>
</div>
</body>
</html>

--_000_SN6PR05MB4429867C3429BF6478271D6BF4139SN6PR05MB4429namp_--

--===============4204457177313329999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4204457177313329999==--
