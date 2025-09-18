Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CBAB87637
	for <lists+usrp-users@lfdr.de>; Fri, 19 Sep 2025 01:33:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1650D385EE4
	for <lists+usrp-users@lfdr.de>; Thu, 18 Sep 2025 19:33:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1758238385; bh=ZW0emLdU9pXDPJlG6KqDxdaVxFSmkDm/HEwgrHvO9Fo=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=0G/KShuL1AZMRdo8B+KyULfKhc6lQq80ZKJ7KOrJ2o02j9ldG3jvYwlDXc0ot5qnB
	 FwLEc7YBjf3URBP2+Y8sero8ujRFLJ3squNQ3/Nvi1RmkFNE9O9+7W+7Hm1gtZ1akJ
	 oY3QEJqcGbUgG6d5a6alpKDG0TtZVK87H8Oc2Cc01Njo8Du/pXrAwc0EcxZOfv5MOI
	 XbhtI4reF4uxjta3h7oC33H10EkdynknO9LDprH/6VEGEirk/5ybOKI69FAjSP4lJv
	 UwlaS1i7YOsS8XBImZFSfxL/samih7FMbevLtkqNJAGhJv0oGv779gA1PIEpE59LoP
	 rZJzxCNKy2NNA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 82190385E86
	for <usrp-users@lists.ettus.com>; Thu, 18 Sep 2025 19:32:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eETaUtaw";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b07c2908f3eso233374466b.1
        for <usrp-users@lists.ettus.com>; Thu, 18 Sep 2025 16:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758238363; x=1758843163; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8OyQPVEyyUFj1YeMy/ydFCG1d25UWoP5gvnfHIYROKc=;
        b=eETaUtawfDJi1nlZ9qVwYtRlbh+M1lbrbcL4xoMjaJ2lUvuF4eBLlZmZZvcpDsY1G5
         Mq3UOz5vd20y3+76bkpYbwKagA9UVI/4DsmYkujUqnAKuoDIseT3AzXDoIgTz9akKKxN
         /ojKbG7KODpltJxsExTgB71iuQJzXGhRvA2n3l1drmR5hvmZdxx9RDdOwHlXHzxZYuVT
         ZplheHovaxdCVUVXHSGDmXOAEnAqD3MdlAbJ0sgkQTYaYrLrreMclJy+bG9uEDaOswQk
         Fcw5AWIz2b2pW0yLXCXHy36FOnG1EO6bo8gkUIZ2snrOaMe7eYadIFnKd4OTQW54y4g0
         r6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758238363; x=1758843163;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8OyQPVEyyUFj1YeMy/ydFCG1d25UWoP5gvnfHIYROKc=;
        b=WAj9PmopQpMx7weSNJhv+EiwNROPOyDWTaqg1Ty9UXAJ/oDkeFEBuNZssC8OxuTKzN
         e0CTWbO6Oi2+M8lV7G3uL1Z5oZrhSEI1Aqrna7HhwnXgPivpdOqF8chP9EcG6kNRQ7e0
         nfd7OBJdHR645oVigq0PkhLmoIuvdWg/b9gWWd8IcDxu+Us81ul7BQIWb5bohQKbmu5F
         ohTn109wMf7ZtZ4cvtpSw1DSit4AspmCpngDAi2o3lJhLegnmu4Co55CrdOF/sdgpMJU
         LOb4spdw4yZhRAEFj0Dj87hDicO1DKfHyllIJuiy5SnkKXp5CZOIh8Hu90a3B+cxjm4T
         M+4g==
X-Gm-Message-State: AOJu0YwFsEcn8cAxzcgxYqWqg1k033VdqI52tK2vjH63m5XUHMfo3CNu
	gDsDSO6QYdTDmSJE5UxW8NlMJE5PqKESXCNvwUBXg7tijZlYU528JSVbyqPN2v4HEkQQTm+zZpo
	UEznqcqjTvisskwPI32+3iXKn/qaYcR8eTQ==
X-Gm-Gg: ASbGnctfkENzJhL+a85gMyL60l7TdxzN53zn6IVxcGD5jJdxS5pa0ow3kJTIlijZdP8
	uWvEY3Dg4Cqy0iyN8mY8HUIJd7cQMCw6wNdZ6bkADB8AbBcUiMqiE3yDb254e8VPt5+9/mhDg06
	OPdGbBql1ML4dDp6DhtzEeXb1N4nhr0eeNbZFSEUXnBPCAKiLl11aMdxUY4+FCu51AVfwDuADl2
	fIuuZghkTCrkzz7xAboARQWMQ==
X-Google-Smtp-Source: AGHT+IHekKQmCgaesY/Wt23o3PYvHXr8VE5de54NXcQqO+9ADBVotLUEstj3ochHohG4BCQ+yPyi79cSOyFTiaMFf5s=
X-Received: by 2002:a17:907:9808:b0:b07:c5a0:fcaa with SMTP id
 a640c23a62f3a-b24eff3d08cmr102481366b.26.1758238362894; Thu, 18 Sep 2025
 16:32:42 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 18 Sep 2025 19:32:31 -0400
X-Gm-Features: AS18NWBmHBu8S3ln6-fT8dsFbZP5daowgTrHEgZHnIUGB0O7bJIaVYyoD1CEKnQ
Message-ID: <CAEXYVK7EzbT9Q0nWcTSGWS1MWmE2bDVKY7yUwNpE=JZirY4GOg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: CAFKDV6KARC5BT6ZZCIGKTSIJPRO2MKK
X-Message-ID-Hash: CAFKDV6KARC5BT6ZZCIGKTSIJPRO2MKK
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Rebuilding boot.bin
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CAFKDV6KARC5BT6ZZCIGKTSIJPRO2MKK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1662452265066956440=="

--===============1662452265066956440==
Content-Type: multipart/alternative; boundary="0000000000000d07e2063f1bc5bd"

--0000000000000d07e2063f1bc5bd
Content-Type: text/plain; charset="UTF-8"

Are there any instructions or guidance on how to rebuild the boot.bin
including the FSBL?

I want to enable the M_AXI_HPM1_FPD bus in the PS block design so I believe
I need to rebuild the FSBL and add it to the boot.bin.

Any insight would be appreciated.

Thanks,
Brian

--0000000000000d07e2063f1bc5bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are there any instructions or guidance on how to rebuild t=
he boot.bin including the FSBL?<div><br></div><div>I want to enable the M_A=
XI_HPM1_FPD bus in the PS block design so I believe I need to rebuild the F=
SBL and add it to the boot.bin.</div><div><br></div><div>Any insight would =
be appreciated.</div><div><br></div><div>Thanks,</div><div>Brian</div></div=
>

--0000000000000d07e2063f1bc5bd--

--===============1662452265066956440==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1662452265066956440==--
