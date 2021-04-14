Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0264235F4ED
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 15:37:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 084F4384292
	for <lists+usrp-users@lfdr.de>; Wed, 14 Apr 2021 09:37:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=iiitd.ac.in header.i=@iiitd.ac.in header.b="dba+YXVt";
	dkim-atps=neutral
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mm2.emwd.com (Postfix) with ESMTPS id B38C0383EC9
	for <usrp-users@lists.ettus.com>; Wed, 14 Apr 2021 09:36:57 -0400 (EDT)
Received: by mail-wr1-f53.google.com with SMTP id c15so10966135wro.13
        for <usrp-users@lists.ettus.com>; Wed, 14 Apr 2021 06:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iiitd.ac.in; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=YVIDpCgXg3TOnAaWTF0aueNSwM3loBdUDqY+6olgTUQ=;
        b=dba+YXVtWMPwGPscp/6BtutLhWMCvAGkND5W/uJso7BpOboZaBEAlh4GCw///n/0VK
         ysjUkyLy2WRssbD43SAfVDlWeTN0ws/l3UCNglh/ynTo5JJ5xBhCUW1nvFVx4u8/aGl0
         YZop5HnxzwBNWQWs0RLcbWGFJxWLra8aodXig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YVIDpCgXg3TOnAaWTF0aueNSwM3loBdUDqY+6olgTUQ=;
        b=DvqiUh2mEQJezchuozru6J8a7/2sWCC3bPy4n/V1FLMZBiFQh1pnkbGe9E6CMtqkCX
         Ag6ktir3z4ncGpyKhaZFzjmjzWHIQEuRh81mI3Lraoqh1P2pK0ungJVDeqxVlxlIylo6
         szBMUBW2vu2wzIDAotr5VR6ItOEGnyEgPmlQTTUiowPVDgtj/ubWilYT3ZmgxumoLeJn
         1atoQu9W3kBKW8CLWTE1nsiq1XabOd+HeGmKWi/r8I1zsamSOqS1Nyx0ACY6rKcDbupT
         v5LwqGqtHByzXV2Zcjvk0CAVuKuPvYd+g0QsI2QDQVUzkaGLrn+Z638p62GQx1Hjlqge
         Ou3w==
X-Gm-Message-State: AOAM530SS71gRdH4x/SFbrmInC0XImMfeZhwXWC576DQATWE1Ge1Gf01
	ihfx/Ske66dXMcyCxrMaME1D6d7oAI0ZHunKr+57YKTgR2M=
X-Google-Smtp-Source: ABdhPJx8intWU9gwPh4Y+Lz85NMu8wjk4IQ8r6J3laeCxRnRggoFhkv5mOdh4g8qAzDLNcC7xLXfbxiloVvgUGbCTqI=
X-Received: by 2002:adf:b608:: with SMTP id f8mr21071926wre.338.1618407416483;
 Wed, 14 Apr 2021 06:36:56 -0700 (PDT)
MIME-Version: 1.0
From: Jayant Chhillar <jayant17154@iiitd.ac.in>
Date: Wed, 14 Apr 2021 19:06:45 +0530
Message-ID: <CAKwrT9RP6xeXcnsN8tpv6NQjsXGkzQm3+Nj3p-eDZUFne-3eQQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7S6IJK7UJMFPBYDHVZ54ADBUNG7HR6OO
X-Message-ID-Hash: 7S6IJK7UJMFPBYDHVZ54ADBUNG7HR6OO
X-MailFrom: jayant17154@iiitd.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building HLS IP in RFNoC 3
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7S6IJK7UJMFPBYDHVZ54ADBUNG7HR6OO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2021742062810403989=="

--===============2021742062810403989==
Content-Type: multipart/alternative; boundary="00000000000029677c05bfeed7bb"

--00000000000029677c05bfeed7bb
Content-Type: text/plain; charset="UTF-8"

Hi everyone, I'm working on creating an HLS IP that can be used in RFNoC
Blocks. Within the IP an FFT operation is done (which uses Xilinx FFT IP).
Can someone give me a detailed overview of the steps involved in creating
an RFNoC block with an HLS IP and how can I synthesize the same. I tried
looking into the existing HLS IP add_sub block, however, I wasn't able to
replicate the same with my IP.

Thanks in advance for your help.

Regards,
Jayant Chhillar

--00000000000029677c05bfeed7bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone, I&#39;m working=C2=A0on creating an HLS IP th=
at can be used in RFNoC Blocks. Within the IP an FFT operation is done (whi=
ch uses Xilinx FFT IP). Can someone give me a detailed overview of the step=
s involved in creating an RFNoC block with an HLS IP and how can I synthesi=
ze the same. I tried looking into the existing HLS IP add_sub block, howeve=
r, I wasn&#39;t able to replicate the same with my IP.<div><br></div><div>T=
hanks=C2=A0in advance for your help.</div><div><br></div><div>Regards,</div=
><div>Jayant Chhillar</div></div>

--00000000000029677c05bfeed7bb--

--===============2021742062810403989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2021742062810403989==--
