Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A91DA540407
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 18:45:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FB46383FB1
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jun 2022 12:45:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654620358; bh=cIY/LyaDnR+ShJB9dtiDSpDlsCIa39mtN4QHIrdHgpk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QprlvAbE3O1tq/WFX8BOuyD+d1w8n+7OwhHiBDi5sNTAZEjOLe8ley9BFsQdu2OwL
	 fdW6mAR5tPjN3X/iRx28pciJra6XPvjLT/BtvqusYiGgIGvew2lo9SoXjHuDG7PMd2
	 R8piGXW+L/o4mZ09T29mPk3uM/w4t55mQyjlxASlaJa8M+9FtsPRob+BHvQnocw865
	 hl0s42Lfn8G+WX5LsFR77qJ83+adYjK9TWj8T/VnhHveih4abYPU+bO4iKdHQavMEu
	 4U5w5sObyeKOwQJfAiZbwOjvcvOWgb8pvAMl5U60C+GA7Dt3lY0Z0RtU13FLGWqzK3
	 WhwcsYEspJs7w==
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A98B9383E9F
	for <usrp-users@lists.ettus.com>; Tue,  7 Jun 2022 12:44:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HeK7ugMc";
	dkim-atps=neutral
Received: by mail-pl1-f177.google.com with SMTP id f9so4821024plg.0
        for <usrp-users@lists.ettus.com>; Tue, 07 Jun 2022 09:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZDEO5VqGGJplwwWOqLRHqlZNgVc/EQQddoi85aAZCLA=;
        b=HeK7ugMc4F5z9BWC5JhM0xznyKNTMTZZ80mH7rZv057H0DyBgBCyFnqlcygWOiW0Ni
         tyCBQ+4ib3j58fbRdcwT/7Fq7zSyIcjVvRXeELGHSORMbARB4k1GmccHQYobo8rZcH67
         xidigeNlKGLZSs14nnoufal3xGKsTW5TmLfIYRFKMv3qo6Qqoa0e7mmJFSqPg8LOwSWy
         HLxxDhWoPVuYj4GkTOiEvYDAK6ArFfzZ/07Ngzb7v1yCYr4szBveBYDymXqC3In6lk9V
         uTthycsKjfHvjbO6V6bPLwRMmf1eggA6KnEevskI+KP/g4iFmcuGIDTAVBrIjje+pWSB
         RYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZDEO5VqGGJplwwWOqLRHqlZNgVc/EQQddoi85aAZCLA=;
        b=7pgGmIuE6OaoqWZ5wnNHeBx/vagQqIVkpbLNS7FoUO7BmLeXW6SI180+vd90Mz28rG
         449IPxg+MwiGqVGkLGgN3vNIObty/sqnN/lsI/tH59K4IxbuVSNZzHubOs0xJ/Jfnvbc
         NTPEJw0sOYsUH+gxOCiG8etrAxo0N4mZR9kP8xYVmngg/QiZ9M2tNOyGe4x4uKNF9yEs
         zqDXl/WszvCh1TLY675waXPndjwicECCvaI5xjQNZ22jn6XMHtCqXH7yGCrPM7JbhaNR
         x1YBnLFjbOG8SaD0nrrWIPbxbS9pxr9SDGBMs+oi2Q0PL4m9bRJJTtJ5aMaujPGlJg3u
         bvcw==
X-Gm-Message-State: AOAM5302KKEFIaEnLldYBXmWmrhPHLC5xFe3JlQuLpX0hOeBgbck/2Wd
	/SfKAUB2s9nC5lqCwXs0z8Lth3gOlG71/stPNkgLheJ0qQc=
X-Google-Smtp-Source: ABdhPJx0/vADIOS3d05PQXhJSGruwJGT+Wo/58RDQKs9rbWkfG6tsUTZT9KxUzQQ5V2nK7XgSQKguEVZl74socD6fgQ=
X-Received: by 2002:a17:902:d4c2:b0:166:46c9:577b with SMTP id
 o2-20020a170902d4c200b0016646c9577bmr26331641plg.66.1654620287427; Tue, 07
 Jun 2022 09:44:47 -0700 (PDT)
MIME-Version: 1.0
From: Marcin Puchlik <puchlikmarcin@gmail.com>
Date: Tue, 7 Jun 2022 18:44:35 +0200
Message-ID: <CAFghhNONXTnD5jeqcAGprLGXCuQ+HsNmgExT57u9GPFkqsCjpQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: A2RNGT6XBHA4USIVSTJ3HNCTDQDMVYQ7
X-Message-ID-Hash: A2RNGT6XBHA4USIVSTJ3HNCTDQDMVYQ7
X-MailFrom: puchlikmarcin@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error while compiling rx_samples_to_udp.cpp
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A2RNGT6XBHA4USIVSTJ3HNCTDQDMVYQ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2616304480023115554=="

--===============2616304480023115554==
Content-Type: multipart/alternative; boundary="00000000000078696e05e0de4ee2"

--00000000000078696e05e0de4ee2
Content-Type: text/plain; charset="UTF-8"

Hi,
While compiling this
<https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samples_to_udp.cpp>
example
I got the error:















*Creating the usrp device with: ...[INFO] [UHD] linux; GNU C++ version
9.4.0; Boost_107100; UHD_4.2.0.0-0ubuntu1~focal1[INFO] [B200] Loading
firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...[INFO] [B200]
Detected Device: B200[INFO] [B200] Loading FPGA image:
/usr/share/uhd/images/usrp_b200_fpga.bin...[INFO] [B200] Operating over USB
2.[INFO] [B200] Detecting internal GPSDO.... [INFO] [GPS] No GPSDO
found[INFO] [B200] Initialize CODEC control...[INFO] [B200] Initialize
Radio control...[INFO] [B200] Performing register loopback test... [INFO]
[B200] Register loopback test passed[INFO] [B200] Setting master clock rate
selection to 'automatic'.[INFO] [B200] Asking for clock rate 16.000000
MHz... [INFO] [B200] Actually got clock rate 16.000000 MHz.Error:
LookupError: IndexError: multi_usrp::mb_root(140722477363728) -
LookupError: IndexError: multi_usrp::mb_root(140722477363728) - path not
found*

The command I am using is: *g++ samples_to_udp.cpp -o out -luhd
-lboost_system -lboost_program_options -lboost_thread*

I am asking for your guidance.
Best
*Marcin Puchlik*

--00000000000078696e05e0de4ee2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>While compiling <a href=3D"https://github.com/Ettu=
sResearch/uhd/blob/master/host/examples/rx_samples_to_udp.cpp">this</a>=C2=
=A0example I got the error:</div><div><i>Creating the usrp device with: ...=
<br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100; UHD_4.2.0.0-0u=
buntu1~focal1<br>[INFO] [B200] Loading firmware image: /usr/share/uhd/image=
s/usrp_b200_fw.hex...<br>[INFO] [B200] Detected Device: B200<br>[INFO] [B20=
0] Loading FPGA image: /usr/share/uhd/images/usrp_b200_fpga.bin...<br>[INFO=
] [B200] Operating over USB 2.<br>[INFO] [B200] Detecting internal GPSDO...=
. <br>[INFO] [GPS] No GPSDO found<br>[INFO] [B200] Initialize CODEC control=
...<br>[INFO] [B200] Initialize Radio control...<br>[INFO] [B200] Performin=
g register loopback test... <br>[INFO] [B200] Register loopback test passed=
<br>[INFO] [B200] Setting master clock rate selection to &#39;automatic&#39=
;.<br>[INFO] [B200] Asking for clock rate 16.000000 MHz... <br>[INFO] [B200=
] Actually got clock rate 16.000000 MHz.<br>Error: LookupError: IndexError:=
 multi_usrp::mb_root(140722477363728) - LookupError: IndexError: multi_usrp=
::mb_root(140722477363728) - path not found</i></div><div><br></div><div>Th=
e command I am using is:=C2=A0<i>g++ samples_to_udp.cpp -o out -luhd -lboos=
t_system -lboost_program_options -lboost_thread</i></div><div><i><br></i></=
div><div>I am asking for your guidance.<br clear=3D"all"><div><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div dir=3D"ltr">Best<br><div><b>Marcin Puchlik</b></div></div></d=
iv></div></div></div></div>

--00000000000078696e05e0de4ee2--

--===============2616304480023115554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2616304480023115554==--
