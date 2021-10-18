Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3E3430F1A
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 06:41:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 867583840CE
	for <lists+usrp-users@lfdr.de>; Mon, 18 Oct 2021 00:41:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gpKtxr8O";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id A6B3138403F
	for <usrp-users@lists.ettus.com>; Mon, 18 Oct 2021 00:40:41 -0400 (EDT)
Received: by mail-yb1-f174.google.com with SMTP id q189so1887797ybq.1
        for <usrp-users@lists.ettus.com>; Sun, 17 Oct 2021 21:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=tt4KHOCtrv/OurpIKVYdq7xzoP3e6oysW20Eb/o2e9Q=;
        b=gpKtxr8OaRlpXKrCxBum5iEzFIf7Ob/ljMRZtZkIPPsF6gGbMFviOjmNSbfbSwSncK
         HxWIyX5C7SJ4utDsA1StBM99j+PmSWv70tdqrQ8GRquyHeTAvgAc5Hr5BlY2G+QTWne0
         B70CNVntnbAHRUUvFAjcuhHc7cZJWM+km+cewsKeOXcbOJVLnlxcX6LUCEY3ObWl7g/9
         ZG+Yp7HeKGU+u7OeNLEa3G3hduSpBcACZp1s+L4Nuuq2HrF7Y5sO1KmM61rqE4eZdmyh
         YPthn44nd8Vkpk9WYOQBcQZ+iHKSocfTRdK+Be4SiUYlyMwcRQQr271QCRDohdb89tgh
         gtBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=tt4KHOCtrv/OurpIKVYdq7xzoP3e6oysW20Eb/o2e9Q=;
        b=wc3M2ePfCV2L/7l5JqovWiiayHllGuW0DY/l878acfDCMxfF9x37KJcD8OXOlaCw8a
         jdyiBokUNAc8OurBoulz1PnMUQ3w7/BbZDbr/Utl2lncULj/7prqQKzWJzdL9OBCIsX1
         pKnOzTnVNoRTIBEAX2vJ7OhDHBYIYziQiZxbQIESUy+TFl8b5y8DpiMgQeld49INRWwy
         sxtWnYfwStlG4wwzpQJS59a48v7VHasKzgY8woShX8oprOYCKRE7WByKMXS9o3k7kqTm
         bxtVAgZhonY1aiPA5xPLnA65k4LzVhH6Q20ZWNMT26lKRGT53u0crc19BMKwF1gAu/hm
         1tRg==
X-Gm-Message-State: AOAM532j7RHVtv8fYE20Hm5LUBtw15vFHozRQdhLsqGNx2TXYVcdJJKW
	16u5Ap9w18tFrkFfLyg1B0lrqdQV1N6LGwMeygUCFeT4
X-Google-Smtp-Source: ABdhPJxVZxhdn7NfD7+kVV1ZNhvNQ7RL5f4u/oeCK0NIm3agtctub0cA09d3hRf6PD/X1Vzvb5+WxX3PHdvAd42nqTg=
X-Received: by 2002:a25:dcd:: with SMTP id 196mr998147ybn.480.1634532040883;
 Sun, 17 Oct 2021 21:40:40 -0700 (PDT)
MIME-Version: 1.0
From: Shamil Prematunga <shamildilshan.b@gmail.com>
Date: Mon, 18 Oct 2021 10:10:29 +0530
Message-ID: <CAGeA34H5uj6pcFV39dNJBpSksVqq_jOYypBYMvBQhzJmX+Kyzw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 6LW472YR3U2YIXTWMXWK54PUKXA5SNLE
X-Message-ID-Hash: 6LW472YR3U2YIXTWMXWK54PUKXA5SNLE
X-MailFrom: shamildilshan.b@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: pasan.dharmasiri@outlook.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can't communicate between USRP N310 and B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6LW472YR3U2YIXTWMXWK54PUKXA5SNLE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8331765172104339577=="

--===============8331765172104339577==
Content-Type: multipart/alternative; boundary="000000000000abc07105ce992566"

--000000000000abc07105ce992566
Content-Type: text/plain; charset="UTF-8"

Hi All,

I am a research engineer in Dialog-University of Moratuwa Research Lab Sri
Lanka who is new to USRP devices. I am currently working on an OAI setup
with N310 as a gNB and B210 as a UE.

When the setup is running I wasn't able to make proper communication in
between SDRs even over the air or through cables.

I tested using GNURadio and B210 working as a spectrum analyzer to capture
signals which are transmitted by the N310. It shows small fluctuations
around the center frequency when N310 is up and running.

Can someone who has experience with OAI and USRPs please help me to figure
out the problem.

Thanks in advance.

Best Regards,
Shamil Prematunga

--000000000000abc07105ce992566
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I am a research engineer in Dia=
log-University of Moratuwa Research Lab Sri Lanka who is new to USRP device=
s. I am currently working on an OAI setup with N310 as a gNB and B210 as a =
UE.=C2=A0</div><div><br></div><div>When the setup is running I wasn&#39;t a=
ble to make proper communication in between SDRs even over the air or throu=
gh cables.=C2=A0</div><div><br></div><div>I tested=C2=A0using GNURadio and =
B210 working as a spectrum analyzer to capture signals which are transmitte=
d by the N310. It shows small fluctuations around the center frequency when=
 N310 is up and running.=C2=A0</div><div><br></div><div>Can someone who has=
 experience with OAI and USRPs please help me to figure out the=C2=A0proble=
m.</div><div><br></div><div>Thanks in advance.=C2=A0</div><div><br></div><d=
iv>Best Regards,</div><div>Shamil Prematunga=C2=A0</div></div>

--000000000000abc07105ce992566--

--===============8331765172104339577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8331765172104339577==--
