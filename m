Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F4338C1A0
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 10:21:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7596E38543C
	for <lists+usrp-users@lfdr.de>; Fri, 21 May 2021 04:21:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="W48F84GG";
	dkim-atps=neutral
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	by mm2.emwd.com (Postfix) with ESMTPS id D5CB638537F
	for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 04:20:14 -0400 (EDT)
Received: by mail-pj1-f48.google.com with SMTP id cu11-20020a17090afa8bb029015d5d5d2175so6925858pjb.3
        for <usrp-users@lists.ettus.com>; Fri, 21 May 2021 01:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=ofie8J9ppTsiFDDF7gunjCT0JoBzeAJq1aCtq1zjV0k=;
        b=W48F84GGXaDtzHbch2XtVNWlOURjH092cILW6hbMKc36MHbcic9umH7U/bDMrypf+3
         lwNRdCYliHcHqfBZlK9/NzvgI4+HClwv4US2qzj8Ckyh/uyzqkSqGUdazvO/2TVecj2x
         UVQX6aX1nNBb1UiymG+UdGmKYZ0KNsg79CVnl9b9H9n4gIQrDU5CcKs9qIWuDlwxVfFG
         uUXG2bHNr/Jt70PM66bv2MiSqdDI9ksYbxd8w5UyncwFCNv6Imgb1tmqk0rDRbRshDkT
         U9HwO2033tevLogqIjRb2z8g04DMqlANXh0B4ckbCJdTyiKEPBf+elMWZzftJawkJ27L
         DZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ofie8J9ppTsiFDDF7gunjCT0JoBzeAJq1aCtq1zjV0k=;
        b=hpmkoWsfr1L7ppLqKDJL0rC0qVViNPhjBVZfE/Ek2F46kp2Z59cmSSUVCW+YQlYunk
         Fw5ZbgZwWAp5tBdJVzeOUklKQpOwqCD6Gy7Rsmmn/ON6qYt9tGL6OK/cj4B9/HQSahpK
         BvKMX0SdMlLnYP2Cjm4wE7pmzmn5NOnnc6uCNPUlNjzg+GYTr8yPqknf6WNqZZyNXWvr
         voTFwwB+yBkIEQAJbB04ELCMOl+1lqvA3sDvh4PLlL7f60+sEmTQxpd0udPGeydF0d93
         s56gfD9Hp8qVkMs+4rX0SGNCyqzuKiF4S0zxSs4BMAstCEYfAKRm13cex3hnPpVHi3sf
         MYrw==
X-Gm-Message-State: AOAM5332LLev3TUxm2PGm6SDT310KdCRUtSkxPXkY+2en4+VLtEFrPby
	ee1MW1iCUEQrKvlupeQ0ndC8YaETzQxeS/oe+wakwG+dgkY=
X-Google-Smtp-Source: ABdhPJzYjpwOmA/FEwfKWxyhGyCQiMVjFbP18IY63dA9QE2MWIurz6SulVhkjHHLTdzJ6xjen3bOi0BrBUgjKFAOp2w=
X-Received: by 2002:a17:902:f24c:b029:f0:f29b:8cd4 with SMTP id
 j12-20020a170902f24cb02900f0f29b8cd4mr10833145plc.80.1621585213726; Fri, 21
 May 2021 01:20:13 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 21 May 2021 10:20:03 +0200
Message-ID: <CADjF3Px5e2rjFJG+CtMwkWFSAPw4eVsvt7sPDcpoDphnmrdjdA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: POYNJTACA3SDTZPLSHLDBPXPQRSCMULU
X-Message-ID-Hash: POYNJTACA3SDTZPLSHLDBPXPQRSCMULU
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPP requirements for USRP B210 amsat
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/POYNJTACA3SDTZPLSHLDBPXPQRSCMULU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============4350325696740460477=="

--===============4350325696740460477==
Content-Type: multipart/alternative; boundary="000000000000a3336d05c2d2ba57"

--000000000000a3336d05c2d2ba57
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm building a ground station for amateur satellite communications on the
VHF and UHF bands using a B210. The SDR will be connected to a mini-pc and
I'm trying to figure out the system requirements. The PC will be
controlling the SDR, running the signal processing at low data rates (4k8 -
19k2 bps) as well as controlling other hardware. Basically the PC is the
brain of the ground station. I've seen people making ground stations with
Raspberry Pi but I'm wondering if 1.5 GHz quad core is enough processing
power in this case. Any help would be much appreciated.

Best regards
Martin Elfvelin

--000000000000a3336d05c2d2ba57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I&#39;m building =
a ground station for amateur satellite communications on the VHF and UHF ba=
nds using a B210. The SDR will be connected to a mini-pc and I&#39;m trying=
 to figure out the system requirements. The PC will be controlling the SDR,=
 running the signal processing at low data rates (4k8 - 19k2 bps) as well a=
s controlling other hardware. Basically the PC is the brain of the ground s=
tation. I&#39;ve seen people making ground stations with Raspberry Pi but I=
&#39;m wondering if 1.5 GHz quad core is enough processing power in this ca=
se. Any help would be much appreciated.</div><div><br></div><div>Best regar=
ds</div><div>Martin Elfvelin<br></div></div>

--000000000000a3336d05c2d2ba57--

--===============4350325696740460477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4350325696740460477==--
