Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46D409F14
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 23:26:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66A32384D80
	for <lists+usrp-users@lfdr.de>; Mon, 13 Sep 2021 17:26:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UFN9n1X9";
	dkim-atps=neutral
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 71529384CA2
	for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 17:25:07 -0400 (EDT)
Received: by mail-ot1-f43.google.com with SMTP id m7-20020a9d4c87000000b0051875f56b95so15319321otf.6
        for <usrp-users@lists.ettus.com>; Mon, 13 Sep 2021 14:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:date:message-id:subject:from:to:user-agent;
        bh=NVJFz2oBj0A7AkD6iSXBS5NRPlcVCIXQ/C3f8W0MN0o=;
        b=UFN9n1X9klZ7ucfnAcrmoY/kUM16lhQwc2QCHQV73PFBCamxF0fJkwi5HTPmKuveS1
         9Ge9rH70LUSvpFH3lRa0zGPruOp/PZjFUUcKyykNY9mqHlQXoKpv9Cysd3i8WGCUPKBk
         zpUMgEGWC9vw8XmJfIPJ3bXsxHX9tH24ODLi6r4+YssCBBc7cGlly8grIgdrh2z5gK2C
         XDn25SAhjP6RL8JKynXaip7VZvLxD8BYu7tfWaHYlRt2TjLSDGkGIO3lHUlmA3yFWJDP
         WfJfbItRUTDZQA2waEE+hBNoMQkV1XkXZ6xgnhF3h0ah2j1RrW9cG/w+FQlnvRtEYpW+
         9knQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :user-agent;
        bh=NVJFz2oBj0A7AkD6iSXBS5NRPlcVCIXQ/C3f8W0MN0o=;
        b=UKZiocdCKar2Adg1AzfOCkTo3j+vdUHIqpBcNzOEQ1hZ1yKWKeFO3nUkCfxlMy1cNv
         QUugiMAab93kK/KGKPMFHVW9KmaHp/1TdCZfBEfkJ1nKEfvOkG1aNdKo/jpoC3PUkOFz
         P/ldJ2mN0ztXsTjeLXwB/FUnANmJGO/QUofqwqPPPrym8ISA8GR73EBMp6toqpz6xxjn
         JRT6lHLHgRqXmOdS60GmQbeHBMaEnLBWG6THfEmkOG5oe/Nr0OfvlHhZoDvv7KTbPYwJ
         iqv6tFpouvUHZ1O1kkiSg1tlrFlwUARemKWY6iR6Tj7vK6GiMeit/h2YjC8HapLdRUVu
         X0Uw==
X-Gm-Message-State: AOAM530+y1cW9zUx+wue6gXHHFWNtxsJu0GNFdaqKQQ/BVvFiE+/4XGQ
	9DPYDtSm9zAXXJQx9/Hk3lcH93IUryg=
X-Google-Smtp-Source: ABdhPJzIUiKtBxwivmcnG25Z/PBBUTNgYvcpxKmFsvd3TL727VX8megmJyMigkm5IDF/aH/mNnVAsg==
X-Received: by 2002:a9d:12e2:: with SMTP id g89mr11783807otg.112.1631568306682;
        Mon, 13 Sep 2021 14:25:06 -0700 (PDT)
Received: from [192.168.1.3] (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
        by smtp.gmail.com with ESMTPSA id s8sm2120687otd.76.2021.09.13.14.25.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 14:25:06 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 13 Sep 2021 16:24:55 -0500
Message-ID: <Mailbird-f7f78b38-a9b2-4710-bcde-22538358ae8e@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "zhou via USRP-users" <usrp-users@lists.ettus.com>
User-Agent: Mailbird/2.9.41.0
X-Mailbird-ID: Mailbird-f7f78b38-a9b2-4710-bcde-22538358ae8e@gmail.com
Message-ID-Hash: UH5V4QS7VI3NG4AS4AOBUX4XWZBV6E6M
X-Message-ID-Hash: UH5V4QS7VI3NG4AS4AOBUX4XWZBV6E6M
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 xilinx spartan-6 programmer
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UH5V4QS7VI3NG4AS4AOBUX4XWZBV6E6M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2313223785361992585=="

--===============2313223785361992585==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_28705954.119076444877"

------=_NextPart_28705954.119076444877
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm looking for a programmer for the Ettus B-210's Xilinx Spartan-6 FPGA. I=
f you know of anyone contracting work, please let me know directly (not thr=
ough this forum) at (heller at endpointsecurityinc dot com).
-page heller
------=_NextPart_28705954.119076444877
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000;text-align: left" dir=3D"ltr">I'm looking for a programm=
er for the Ettus B-210's Xilinx Spartan-6 FPGA. If you know of anyone contr=
acting work, please let me know directly (not through this forum) at (helle=
r at endpointsecurityinc dot com).<div class=3D"mb_sig"></div><div>-page he=
ller</div></div>
------=_NextPart_28705954.119076444877--

--===============2313223785361992585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2313223785361992585==--
