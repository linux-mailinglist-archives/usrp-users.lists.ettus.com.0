Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 538851832A3
	for <lists+usrp-users@lfdr.de>; Thu, 12 Mar 2020 15:16:57 +0100 (CET)
Received: from [::1] (port=44526 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jCOdU-0008Nr-2f; Thu, 12 Mar 2020 10:16:32 -0400
Received: from mail-pl1-f178.google.com ([209.85.214.178]:35556)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sivan.toledo@gmail.com>)
 id 1jCOdQ-0008Jn-9G
 for usrp-users@lists.ettus.com; Thu, 12 Mar 2020 10:16:28 -0400
Received: by mail-pl1-f178.google.com with SMTP id g6so2730887plt.2
 for <usrp-users@lists.ettus.com>; Thu, 12 Mar 2020 07:16:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8eePA6NZpomVb67oW8Iqg02sKgQVGg+wLJjwHoeHvSk=;
 b=IM9ITZidplG0WD+Mc5bvqLIPYtC2+BHwgt+PhyGOYvpqlfnuSeuLkrJGU07BV7wbWN
 IqrXih3Gkeg5JSrt6CiqxVgyCBQnmOqGZVHfQLVqAg8lKe7UhUT4WXsdKcVDMocT9lP1
 ATRMXD39PPKs6znk+tnrvESVbnmwAkzDKyIeeqIy+ZzRU5i/KMkaz0PmKry8yQ8TiJQ/
 RrvnnfKrFDm63iwLJlxwuOvbVVvnr4NFe0OiXpZtBG313drc0+E3c65vzJHqyzewNDP3
 8BMywJLI5MNdExGRwh7UTAvQ8cLRYaLtaQrTZKcjLUgdYnYMFZeUN9s501aGnZFKtLca
 5gTQ==
X-Gm-Message-State: ANhLgQ3shiwMbmBB69IhkHgl8CKQUnuZqXTAgNZR9APd0zBBspLGntnp
 ZhoRI6tOwzFNIcPqr2PyAPtv7eU7aviN65tXYSZT1H+3
X-Google-Smtp-Source: ADFU+vtbk0ibupKi34irtT5RBVdmldgsgIgIKnNeCdVATiD/rXVw4wMRc93tgO4KY5BooDxK+t6A+GK8IgNKjdpkwEA=
X-Received: by 2002:a17:902:c1d1:: with SMTP id
 c17mr2460436plc.184.1584022547100; 
 Thu, 12 Mar 2020 07:15:47 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 16:15:33 +0200
Message-ID: <CAOL_ruGaxApG2ctKe40qvF+gVjc=mHH0fgXCikTr_Ln1iRkMzQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] packet size in uhd_rx_streamer_recv
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sivan Toledo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sivan Toledo <stoledo@tau.ac.il>
Content-Type: multipart/mixed; boundary="===============3511385416550326438=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3511385416550326438==
Content-Type: multipart/alternative; boundary="0000000000003c78d205a0a8fdd4"

--0000000000003c78d205a0a8fdd4
Content-Type: text/plain; charset="UTF-8"

I have a code that has been running fine for several years. It
calls uhd_rx_streamer_recv and expects the same # of packets as in the
first call, which is typically 2044 samples.

I am porting the code now to an NVDIA Jeston TX2 platform (the CPU is
64-bit multicore ARM) and I am getting a lot of cases where I get shorter
packets, 651 samples.

This is with a B210.

Is there something I can do to get it to deliver the same # samples in
every packet (this will keep my code simple) or do I have to expect UHD to
deliver a variable # of samples per packet?

Thanks, Sivan Toledo

--0000000000003c78d205a0a8fdd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a code that has been running fine for several years=
. It calls=C2=A0uhd_rx_streamer_recv and expects the same # of packets as i=
n the first call, which is typically 2044 samples.=C2=A0<div><br></div><div=
>I am porting the code now to an NVDIA=C2=A0Jeston TX2 platform (the CPU is=
 64-bit multicore ARM) and I am getting a lot of cases where I get shorter =
packets, 651 samples.</div><div><br></div><div>This is with a B210.=C2=A0</=
div><div><br></div><div>Is there something I can do to get it to deliver th=
e same # samples in every packet (this will keep my code simple) or do I ha=
ve to expect UHD to deliver a variable # of samples per packet?=C2=A0</div>=
<div><br></div><div>Thanks, Sivan Toledo</div><div><br></div></div>

--0000000000003c78d205a0a8fdd4--


--===============3511385416550326438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3511385416550326438==--

