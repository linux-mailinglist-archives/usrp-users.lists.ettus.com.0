Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CF3368566
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 19:01:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E92CE383E7C
	for <lists+usrp-users@lfdr.de>; Thu, 22 Apr 2021 13:01:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QBBgkVUO";
	dkim-atps=neutral
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 56546383DCA
	for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 13:00:45 -0400 (EDT)
Received: by mail-pj1-f42.google.com with SMTP id f6-20020a17090a6546b029015088cf4a1eso1312026pjs.2
        for <usrp-users@lists.ettus.com>; Thu, 22 Apr 2021 10:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=KRr6q/pq/2BMy+2zQu/oX7KEKN1rdfgWehD9vmWdCXM=;
        b=QBBgkVUO/x5R2d0aET9CNzqMxXXH9x3IH28Un3/KjSitiJOorp/7ezLFS7yRaOT19O
         E6RdHmz+osgyUmB8qoLksQ9Y6iLttsDnJobobkOj3YEKv4VNtcCUtlsCavw88nFUJ9vZ
         /8iITnR4Zytt7CMk2YmPos46R0g3il9WE829ncXK3W+eC/tIHCO4NOIDvyCiPVWqs1rH
         nkfiwobwX1o+Mee7dOC3FYZIdWh5T3Z0yLR4bibw2oSh4DbjRG60W87AXoY6ZjsFi5ZD
         UThtv388QcjCfx8GJRDmp1dBd1wfETglwhoiWXc+VnNK9+Tfk50TPJZuqlxmh/XmdhpT
         V0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KRr6q/pq/2BMy+2zQu/oX7KEKN1rdfgWehD9vmWdCXM=;
        b=i2FsP7Xv/9OycCHqh9ytegt/29YB+F7tJeTl9R7MN6Mc3tYSVtQelThFsEvPLHu8tj
         elJlPyV7qc5A7d1Rlyw2kO+BQIBmmYWEKpGRLjA5ju7YUJweMXl7URy4exZ5oiRgDQYV
         od3ZphGmC8V4Alsp+4uUclW8DOcKGXHY8R3l8cPQpNol2wQZ4u2SzmvGXgcQJUCuc8bd
         Qhtx9XrjRxydqGx5NLjTy7NHNfcP8Wq7+pgl5g6XCRcCkV3luyKkL9Avgos0bWhk/tYa
         RgIfJf5+ayJnN1X/Wd1uGdZX2s1cu69QVZ83mUxKewX6dzda5UWyyjHjxLETK42tE/yH
         tG8Q==
X-Gm-Message-State: AOAM532wd3roZ704EwwuPoAEcmX9yMQSY7MrLWlU+Ekxqw6IlI7v81xw
	AEEPti9K+CMdDZ76wa7SrV8ig1YhZKx1Msx0ieqjaSUpZzg=
X-Google-Smtp-Source: ABdhPJzaZF8qVoo/EDXlFrndIus6biKhAh0d/BRBQv8uDK7+0v5HlEhgeKtqkNkM4b2YI2u7UA7vdFEd4+c+aiUYXk8=
X-Received: by 2002:a17:902:bf44:b029:ec:c083:7377 with SMTP id
 u4-20020a170902bf44b02900ecc0837377mr4516397pls.27.1619110844041; Thu, 22 Apr
 2021 10:00:44 -0700 (PDT)
MIME-Version: 1.0
From: Huacheng Zeng <zenghuacheng@gmail.com>
Date: Thu, 22 Apr 2021 13:00:33 -0400
Message-ID: <CAOR0_ujqoh33cpKzeTpBVGzzY=v2BYyVL=w9WmX8NSUfjSbKkg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FCXTJSDVRZGIELNSSJTVM6OZJT6UHXCV
X-Message-ID-Hash: FCXTJSDVRZGIELNSSJTVM6OZJT6UHXCV
X-MailFrom: zenghuacheng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] "LLLLLL" message from USRP X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FCXTJSDVRZGIELNSSJTVM6OZJT6UHXCV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7248605592621913179=="

--===============7248605592621913179==
Content-Type: multipart/alternative; boundary="000000000000b60def05c0929ee8"

--000000000000b60def05c0929ee8
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am using USRP X310 as an MIMO transmitter to send two streams from a
computer. The sampling rate is set to 2 MSps. When the computer
continuously sends data to USRP, it works well. When the computer sends
data at a slow rate (e.g., 10 packets per second), USRP prints out
"LLLLLLLLLL" message and it seems the USRP does not transmit any signal.

I expect USRP to transmit signal when it receives data from the computer
and not transmit signal if no data comes in.

Any advice would be appreciated!

Best,
Huacheng

--000000000000b60def05c0929ee8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am using USRP X310 as an MIMO=
 transmitter to send two streams from a computer. The sampling rate is set =
to 2 MSps. When the computer continuously sends data to USRP, it works well=
. When the computer sends data at a slow rate (e.g., 10 packets per second)=
, USRP prints out &quot;LLLLLLLLLL&quot; message and it seems the USRP does=
 not transmit any signal.=C2=A0</div><div><br></div><div>I expect USRP to t=
ransmit signal when it receives data from the computer and not transmit sig=
nal if no data comes in.=C2=A0</div><div><br></div><div>Any advice would be=
=C2=A0appreciated!</div><div><br></div><div>Best,</div><div>Huacheng</div><=
div><br></div><div><br></div></div>

--000000000000b60def05c0929ee8--

--===============7248605592621913179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7248605592621913179==--
