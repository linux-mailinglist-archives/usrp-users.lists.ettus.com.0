Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A87AB3E9B44
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 01:36:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6ECDD384715
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 19:36:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student.nmt.edu header.i=@student.nmt.edu header.b="pIF5eQFz";
	dkim-atps=neutral
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 501AD3846CD
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 19:35:47 -0400 (EDT)
Received: by mail-ot1-f41.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so5552371oti.0
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 16:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student.nmt.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=k3mrKxOZ6UjOe6g/InoQCpor9SnTHHZVl1LyxW3MzeU=;
        b=pIF5eQFzyK79HwZIag2e6CiPOKeVBO5mOLtdhrXqslboKr6VdnGEfP8WX/qPibikSu
         09HYI0x6xlr/gsgN0/DsMbyrlD0zyzeKjxxUMlx7nEvI4A89c8fbEMwxeAJxvwGk+qku
         0JEUSJ5Nuy1DEcUtEPanWOALxI7khjO+Z4z5OzlafgHGbraevJsumCMgeBvMXRkZnNGf
         Y2HrA7v9ipVymdj4kEcc4/Jw8etSjxAK1emnErbzxPz4DCJh3u7bHL0XvKCG/673iqAD
         Ht45+0HFFOKazXmkaBYnv9LIEeOftmher2NmrVhlplTlk2ltS6lbG/4YIRUFp4c5JiUS
         WsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=k3mrKxOZ6UjOe6g/InoQCpor9SnTHHZVl1LyxW3MzeU=;
        b=ayPq2QTDZOmiBkSzKn7n+borfQ+iyK+OinL0R0dItDbgC283WlvpJdt4jwQaFeUVRJ
         gdhAkL1SmIdZytLlinsKMNhjzTjv65RwPSeYfFYoGtufAhPLpv7leeYXfV+FC8vUj+ux
         I8rExNumh44hzgnW5r7ElyfAMG6krEkr5iaw/gjJDDM5hcRQ7fDwJV0ab6Atka2ph4ix
         /b2Zvk43Uh63Wsu+qV2C233bltvuNY6rFwegAm9ryhhp49XNevs7XYlqJAm7QqR63e9A
         xybyXR7I2HXHzJvrRcYwjhoocAnmbVim1/icLIg/K8XbGotuzoASVAIXm9FEl8co2qE4
         XY0g==
X-Gm-Message-State: AOAM53090AUTJLaetr5SLZBICLjz76LINcNK1V8PxZSB3sjaWajeD6Pv
	Zkh/Nabzh9Ogb3VgBLbXW/5TPp+4CTH6hKmiTWh90k76rwg=
X-Google-Smtp-Source: ABdhPJwCtXnnvR+R+SoPPtLiVZmQG3thkP1HqND/cHQhWQzMBrxoPPim+PZ1KZa85+OHag2YQ4eLb6uT71lKBN8wbRc=
X-Received: by 2002:a9d:12a3:: with SMTP id g32mr1142909otg.228.1628724946406;
 Wed, 11 Aug 2021 16:35:46 -0700 (PDT)
MIME-Version: 1.0
From: Bobbi Taylor <bobbi.taylor@student.nmt.edu>
Date: Wed, 11 Aug 2021 17:35:10 -0600
Message-ID: <CABnzEf4cBntcTqQB=GNoNohvJAXPLrkcpVpu+O8WLRFX=MQp1A@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 4AB73VFOX2XE2Q6DKLFOQNRYEGMQNIZM
X-Message-ID-Hash: 4AB73VFOX2XE2Q6DKLFOQNRYEGMQNIZM
X-MailFrom: bobbi.taylor@student.nmt.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD no devices found
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4AB73VFOX2XE2Q6DKLFOQNRYEGMQNIZM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0938058830680943698=="

--===============0938058830680943698==
Content-Type: multipart/alternative; boundary="000000000000de200b05c951133b"

--000000000000de200b05c951133b
Content-Type: text/plain; charset="UTF-8"

Hello,

I have two N210s and an E312, and I'm not able to detect any of them with
uhd_find_devices.

I have set a static IP address on my computer as well as on the radio. I
have a gigabit ethernet cable, as well as a gigabit port on my laptop. For
one of the N210s, I've hit the safe mode button (S2) to boot into a safe
image. This appeared to work (lights flashed after I power cycled), but UHD
is still not able to detect the device. On the N210, the D and F lights on
the front panel light up indicating that the firmware is loaded and the
CPLD is loaded, indicating that there isn't a problem with the FPGA and
that the device isn't bricked.

I am able to ping the device, but uhd_find_devices or uhd_usrp_probe
doesn't detect anything, even if input arguments are given such as serial,
type, or IP address.

For the E312, I was able to run the test example (rx_ascii_art_dft) without
any issues. Still wasn't detected by UHD.

The version of UHD I have is 4.0.0, but I have also attempted this with
multiple previous versions. I used both N210s about 6 months ago and didn't
have any issues at all. The E312 hasn't been used before.

Thanks in advance,
Bobbi

--000000000000de200b05c951133b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have two N210s and an E312, an=
d I&#39;m not able to detect any of them with uhd_find_devices.</div><div><=
br></div><div>I have set a static IP address on my computer as well as on t=
he radio. I have a gigabit ethernet=C2=A0cable, as well as a gigabit port o=
n my laptop. For one of the N210s, I&#39;ve hit the safe mode button (S2) t=
o boot into a safe image. This appeared to work (lights flashed after I pow=
er cycled), but UHD is still not able to detect=C2=A0the device. On the N21=
0, the D and F lights on the front panel light up indicating that the firmw=
are is loaded and the CPLD is loaded, indicating that there isn&#39;t a pro=
blem with the FPGA and that the device isn&#39;t bricked.</div><div><br></d=
iv><div>I am able to ping the device, but uhd_find_devices or uhd_usrp_prob=
e doesn&#39;t detect anything, even if input arguments=C2=A0are given such =
as serial, type, or IP address.=C2=A0</div><div><br></div><div>For the E312=
, I was able to run the test example (rx_ascii_art_dft) without any issues.=
 Still wasn&#39;t detected by UHD.</div><div><br></div><div>The version of =
UHD I have is 4.0.0, but I have also attempted this with multiple previous =
versions. I used both N210s about 6 months ago and didn&#39;t have any issu=
es at all. The E312 hasn&#39;t been used before.</div><div><br></div><div>T=
hanks in advance,</div><div>Bobbi</div></div>

--000000000000de200b05c951133b--

--===============0938058830680943698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0938058830680943698==--
