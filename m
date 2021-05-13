Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4877737F407
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 10:29:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F861384227
	for <lists+usrp-users@lfdr.de>; Thu, 13 May 2021 04:29:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RDAo3lcW";
	dkim-atps=neutral
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 88CE8383E57
	for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 04:28:17 -0400 (EDT)
Received: by mail-ej1-f50.google.com with SMTP id k10so7545648ejj.8
        for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 01:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZIukaTExQlqj4S3/mPXtiimQWPhvuH3V+0Mml+Z3zcQ=;
        b=RDAo3lcWSdiv5S5ee5qemL0DZpLTguLf36I6/vnNsNm8Y7qeNAvwq0Cxt4IzEUBww9
         EUnMf9rof7A3MmQIhH25f74RfW5Fe5a6zC1UugS6GXLIYKfpT4tA1XXbmbuCiq1Ueh4p
         qxylObKfdGNEA1Y2qgKocXBOz+k/Ng2dROZ7tmiZDQuQF0gqUPYT4E3u0pMk2YjZpqEC
         7X8i9Bz2tZWRYUZuqc6sPpqcwapMBP4ixa8n5Ywe0mYQp/c+As4dh1T6LT7UGC4msdTe
         djnZDOmcEThRrCWSaPprjzcbza5TKrUAsE75FOrvXPRK8lfcVoSJL8GHhOCE79wOtOMS
         cirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZIukaTExQlqj4S3/mPXtiimQWPhvuH3V+0Mml+Z3zcQ=;
        b=rTHlExvrD6oMRngNRcofUjvWwY7GPCZ2tn24F8/39AFVpXi5z72IcYyBj575MMTGcF
         6d2aK3DXqr5FTyzM6X/iB8UNEgNUGA6co6+Wvgdm1YBl3hB//BYSpuP6ZLsdCGP4Esh0
         ezmx9rL72v3UsxDgKrZ6HjYOY29xtUTwUPBTuFTBMdXe60YUDX7ckiKBOhJdTRHXYtaP
         BK+jGq8lCgrKOfk5kUo8hHGU3OrIVmWtNtfUR/0vys0O77wnptcwYVeUX6wsARm9VTVW
         X0f0qzK9O9dqGQNYIeMpuWd4wRsmT6Io8NkdK0fdH94TxrnolYQWj47WWDUVfdIShVFq
         /KXw==
X-Gm-Message-State: AOAM531K/U2qVJPQqdhYckbD+yTF1r0ny8zcEKPVF1d36geMuiUrO4tO
	2CgZrLThhNHfWyAvV8Ge0ki73kCfO25Rr+MWlQLQLeNJsrM=
X-Google-Smtp-Source: ABdhPJzyuacNwOxjwDvD/4JXLNVqgq3gTqxykgIP1DZV0dVMqko28+TE9pE5105E9X9WZEMLzxzsSJH+DEj2d57ykUw=
X-Received: by 2002:a17:906:b0cd:: with SMTP id bk13mr42840180ejb.184.1620894496211;
 Thu, 13 May 2021 01:28:16 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 13 May 2021 10:28:03 +0200
Message-ID: <CAG16vQUkU7wG9sYv2Kv8_Z1SHZXOWWvEp47jPcaDusXZ7dWFBw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: XL2K6EXUJU4NOAG7JIZIQNTXOBV2RQAN
X-Message-ID-Hash: XL2K6EXUJU4NOAG7JIZIQNTXOBV2RQAN
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Size throughput in RFNoC (FPGA side)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XL2K6EXUJU4NOAG7JIZIQNTXOBV2RQAN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4006449285236172217=="

--===============4006449285236172217==
Content-Type: multipart/alternative; boundary="000000000000aa469c05c231e8c8"

--000000000000aa469c05c231e8c8
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to size/calculate the throughput between RFNoC blocks from the
FPGA side (not between arm/host pc and RFNoC block, which I think is the
one the interface measure when performing uhd_usrp_probe). Is there a
process or an existing tool to measure this throughput?

Kind Regards,

Maria

--000000000000aa469c05c231e8c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>I&#39;m=C2=A0trying to size=
/calculate the throughput between RFNoC blocks from the FPGA side (not betw=
een arm/host pc and RFNoC block, which I think is the one the interface mea=
sure when performing uhd_usrp_probe). Is there a process or an existing too=
l to measure this throughput?</div><div><br></div><div>Kind Regards,</div><=
div><br></div><div>Maria=C2=A0</div></div>

--000000000000aa469c05c231e8c8--

--===============4006449285236172217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4006449285236172217==--
