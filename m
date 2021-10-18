Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF0F431E92
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 16:00:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90AE7384353
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 10:00:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IeWgvnnJ";
	dkim-atps=neutral
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id D3A0A38427C
	for <usrp-users@lists.ettus.com>; Mon, 18 Oct 2021 09:59:48 -0400 (EDT)
Received: by mail-ed1-f44.google.com with SMTP id 5so40912130edw.7
        for <usrp-users@lists.ettus.com>; Mon, 18 Oct 2021 06:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version;
        bh=e77AY4iWa9gu9ryix9OlNuYyWHggBdIM+gfmeNX8vHM=;
        b=IeWgvnnJxpDzBBgo0yTZJmXG+1crI42d/3A1XWqE8UTI9z+dWztjGHlPo4aHRyna7V
         WUqXLaIpYb7AqAE6BNQEQm0x1kYmGXB3FFdCr3hqWiF1AA6LnmCvxK2Q6GiehL6EWP8N
         QhJcc/X7xEi6GJn3xZdgXUplFcZ3cggo2z/a6jD+Q9aubWUNpPjBOZ0mbxw7k0LId5lM
         +FJEUh/wsnyYj4ghjNuZFghCcjlba8Y6ol69KPvDt8dJamMp5CMgjLGzhOQP02zVMYwi
         a3mXZYGzoFYZzrbTiyFTmQMsVuxmrEVvGdd+sUUsVTtzr2XsGIFGKFHHiAGSSKcxRo5i
         E+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
         :message-id:accept-language:content-language:mime-version;
        bh=e77AY4iWa9gu9ryix9OlNuYyWHggBdIM+gfmeNX8vHM=;
        b=Tkr0lrvz9Et8ugGJw3G4XoxpTsvTEt6AAPD6VFFTG3ZAGXrZsSNjfbGbwrNqfykE7W
         nKNJHs8SILPWILuoa5Soah4+onTXL2LOMVaYXtQNHu8aBqs/i5J7Rdr9GNj6Jp1G/j5P
         l3u9aJyFVgz5hdpnIlY7fxl8smJ0q/OO4yu8L1uTnaLmrax4GHOUF7AmXCrT6ZjAt82N
         ariP4hgiEG7ey/Jf9qyEhz4K2uEW6D6cA3IRzLpikV6H1lCofIJXNsVEAyYMvDqDT4kt
         beYne0JlbhLLryqfKMVgnmEfbR4FMl0XkYmwRaRCuDgpyW9r60cOh8WwkIm4Vj2Dz8A7
         uKmw==
X-Gm-Message-State: AOAM532auCFMehkSrqj899rEpk/k8HNfEbslk8IYgzHtYiZ4zEfRIY7w
	o+VuZwH6vQ8EFBimc5sGLXnh8wVst/o=
X-Google-Smtp-Source: ABdhPJzdZW6XmFiByZzQge6zxwvqZDUR7Eqm0hlqPSXkND4CX5jhBYGlxhVeFlwqK/rnC6GK1s9z+g==
X-Received: by 2002:a17:906:6a2a:: with SMTP id qw42mr29143567ejc.313.1634565413255;
        Mon, 18 Oct 2021 06:56:53 -0700 (PDT)
Received: from SN6PR05MB4429.namprd05.prod.outlook.com ([2603:1036:805:29::5])
        by smtp.gmail.com with ESMTPSA id y4sm9142687ejw.3.2021.10.18.06.56.52
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 06:56:52 -0700 (PDT)
From: Weite Zhang <zhang.weit3@gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: B210 Maximum input power 
Thread-Index: AQHXxCc++wIR4DFXi0afDok8Jj3M+A==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Mon, 18 Oct 2021 13:56:50 +0000
Message-ID: 
	<SN6PR05MB4429C5A8BE04B909AA01FE0BF4BC9@SN6PR05MB4429.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
Message-ID-Hash: 4FBF2KOSWVIEZXX2YZSEEK4CYGAH5FEL
X-Message-ID-Hash: 4FBF2KOSWVIEZXX2YZSEEK4CYGAH5FEL
X-MailFrom: zhang.weit3@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 Maximum input power 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OSIBJCKWOJTU7TF3HYOQ4AC5FWW2MQ2C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8280380304991637189=="

--===============8280380304991637189==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR05MB4429C5A8BE04B909AA01FE0BF4BC9SN6PR05MB4429namp_"

--_000_SN6PR05MB4429C5A8BE04B909AA01FE0BF4BC9SN6PR05MB4429namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am playing with a B210 board. I am just wondering whether any of the hard=
ware components/chips on the board might get burned or unrecoverable damage=
 if I have high input power at the Rx channels, eg 20dBm, or 30dBm? Could a=
nyone help? Thank you!



Regards,
West

--_000_SN6PR05MB4429C5A8BE04B909AA01FE0BF4BC9SN6PR05MB4429namp_
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
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am playing with a B210 board. I am just wondering whethe=
r any of the hardware components/chips on the board might get burned or unr=
ecoverable damage if I have high input power at the Rx channels, eg 20dBm, =
or 30dBm? Could anyone help? Thank
 you!</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">West</div>
</div>
</div>
</body>
</html>

--_000_SN6PR05MB4429C5A8BE04B909AA01FE0BF4BC9SN6PR05MB4429namp_--

--===============8280380304991637189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8280380304991637189==--
