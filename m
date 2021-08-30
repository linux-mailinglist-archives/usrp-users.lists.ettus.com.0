Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9CB3FBF82
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 01:42:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40F03383E4F
	for <lists+usrp-users@lfdr.de>; Mon, 30 Aug 2021 19:42:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Pg/ww1TL";
	dkim-atps=neutral
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by mm2.emwd.com (Postfix) with ESMTPS id BC7E4383CAA
	for <usrp-users@lists.ettus.com>; Mon, 30 Aug 2021 19:42:06 -0400 (EDT)
Received: by mail-lj1-f182.google.com with SMTP id m4so28682466ljq.8
        for <usrp-users@lists.ettus.com>; Mon, 30 Aug 2021 16:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ShcxrrG5aXDKxc/64H84+olbkGO+OG5hxswtDHM5i80=;
        b=Pg/ww1TLGnuNpY1aCsXMZRmZZQn+CTDfaktmGr6TynvUrIPYqz/VaEMS+IloNxOJ1C
         kwWRxaVgwKgt9Wf8NhxQ/zCkBwTFigUdNDVJLTLytLWp0O4si4atxlDbQWPqxBIiQoii
         ji1SXVzj5Jc7qY45xb+NfbqDrn0n8+QY1jpazcHx5yqtPlpT0JXctrc6vyf83/4b55LT
         pcOhVFozujS0s7/rlt37rKYf/KwcVcRIJRL677TvpxTy8i0oW5HS/x2wO4FYyRmzerdr
         KCv5pGHZvAC2e9ZvNfFiPjuKWEZA340ZT/UUEr8lB9hfizOwSKkZIfbRs/xZHfKyrwtJ
         esig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ShcxrrG5aXDKxc/64H84+olbkGO+OG5hxswtDHM5i80=;
        b=kqzdWqrQmqNOgDaaLiLfqGP9w1cLWmNNgdcbcZQBZWNyRVFhtzbh/xxIXthGVl3kE5
         tFvOqtigRYsvnJbKjzpmEpPcRJow6OFIJZfAmKyHk7+UdeLDiZZm7oMzAyqLx+xcaRA2
         VPcCLlfjj0MB5IzHOs7WL+muPEo49l4v0/J4VxqDO/OQvSnJ3QvbOAbZlqtrmrO1dLxZ
         /cxswTTzpuDE/sNpA231/j9haNvfwlhnsBPr/LLSdmKg7QFoK9eKxn6wS9tCz0MBmV3B
         vu2pcdahpXu64VzW9njFdS1Pv7XT5zTcmjTGAJH3EXwF/7cdgzWM1XiP6orUeLUq5z8x
         tHRQ==
X-Gm-Message-State: AOAM531/7bsUSzMkdHw5aDLGLX0VdGHuwBISTpIUa/dekcC9LTu/GYKH
	zM9FLawZXq4hsA/DEQ+tcGCJMzilBmhstGVqzLEpT5Ee5zk=
X-Google-Smtp-Source: ABdhPJxDxY7XtwBXzodhLMwKSc1IiK0RLHGi31uZFoDbLbfg4GIUQ0f4cmAhC9qctMsWj3T/KS3M3CMCypuC4r10AuM=
X-Received: by 2002:a2e:a28d:: with SMTP id k13mr21290448lja.446.1630366925050;
 Mon, 30 Aug 2021 16:42:05 -0700 (PDT)
MIME-Version: 1.0
From: Cameron Matson <ncmatson95@gmail.com>
Date: Mon, 30 Aug 2021 18:41:54 -0500
Message-ID: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: VMYKO7N7VPNRKB6PZEPWEYS6OCZWNFMD
X-Message-ID-Hash: VMYKO7N7VPNRKB6PZEPWEYS6OCZWNFMD
X-MailFrom: ncmatson95@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Cannot Ping SFP port
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VMYKO7N7VPNRKB6PZEPWEYS6OCZWNFMD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3281414174684734525=="

--===============3281414174684734525==
Content-Type: multipart/alternative; boundary="0000000000006bd94605cacf614f"

--0000000000006bd94605cacf614f
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

We recently moved our setup, and ever since setting up in the new place
we've been unable to ping/connect over the sfp+ port.  We're using N310s
with the WX fpga image and Ubuntu 20.04.  I've checked and as far as I can
tell both the N310 and the nic on the server have ip addresses on the same
subnet with the same subnet mask.  When I use a sfp+/fiber transceiver at
both the green "link" led lights up on sfp1 at the N310, so *something* is
working.

I've tried going through the steps here to no avail:
https://kb.ettus.com/Troubleshooting_N310/N320_Device_Discovery_Issues

Does anybody have any ideas of things to try out?

Thank you,
Cameron

--0000000000006bd94605cacf614f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone,<div><br></div><div>We recently moved our s=
etup, and ever since setting up in the new place we&#39;ve been unable to p=
ing/connect over the sfp+ port.=C2=A0 We&#39;re using N310s with the WX fpg=
a image and Ubuntu 20.04.=C2=A0 I&#39;ve checked and as far as I can tell b=
oth the N310 and the nic on the server have ip addresses on the same subnet=
 with the same subnet mask.=C2=A0 When I use a sfp+/fiber transceiver=C2=A0=
at both the green &quot;link&quot; led lights up on sfp1 at the N310, so <i=
>something</i>=C2=A0is working.<div><div><br></div><div>I&#39;ve tried goin=
g through the steps here to no avail:</div><div><a href=3D"https://kb.ettus=
.com/Troubleshooting_N310/N320_Device_Discovery_Issues">https://kb.ettus.co=
m/Troubleshooting_N310/N320_Device_Discovery_Issues</a><br></div><div><br><=
/div><div>Does anybody have any ideas of things to try out?</div></div><div=
><br></div><div>Thank you,</div><div>Cameron</div></div></div>

--0000000000006bd94605cacf614f--

--===============3281414174684734525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3281414174684734525==--
