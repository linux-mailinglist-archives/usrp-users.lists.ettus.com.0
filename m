Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 558184AA123
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 21:27:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CF4E385D19
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 15:27:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LhwTR0D2";
	dkim-atps=neutral
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 4AC20385C6E
	for <USRP-users@lists.ettus.com>; Fri,  4 Feb 2022 15:26:47 -0500 (EST)
Received: by mail-ed1-f52.google.com with SMTP id m11so15380482edi.13
        for <USRP-users@lists.ettus.com>; Fri, 04 Feb 2022 12:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=ThDBydg18eFu1CsQg/k+sMjZ90vocwYBPdOIiLXvMpI=;
        b=LhwTR0D2IWIZUQElb5sARaep+/dQiDQGpEFHjP2gzNc9Bu355JxpOpbMumbg1MtTzm
         XrHPAUDPeyLbVfhHeelTXdhW/zObcH1I5d05tx6kC6bMmRGDCjm+f3T6hItOKwsbPAFi
         afqkP8oE4uk7rDDD/GR1sHP4/1nI644gqfPxamjkIxzOq/pdejnV3XnNAAwnHoCcxl/x
         0WQMG5ZvBlT8IUNUsMGSxKtN+zF/zHTnIWd5aQwvXbg3lTs+QWLHLwjmmGlLqggruN5/
         K+0tlvntqmGr/Q54+Oxex80ZtqDX2TNiQ4tNn8qGhFt0IUGW8Ze7Tp9GHSbrAaEj3NKj
         KqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ThDBydg18eFu1CsQg/k+sMjZ90vocwYBPdOIiLXvMpI=;
        b=2iWE7OF2AaMoZ9TWRCmKaM4O+kdJmXDLZVatTlgpUdkYjOML7ZvgFvE3jswxeDd88n
         7RHKGTLki1aBzPRxmUhuzKcFgLdI599r5LRbR2Pfc2PComYDQ2/DvEmNVshLEomWG0Je
         qOj4HUWzYPPHqHMmgggkoX7KmPmt1rl+daimdVKbiYEpJkiBgK2B/wiwqkE2Rj0ZgCEQ
         oWOoo7PfVBBe3aEKOumHVdxdEN8Cd8BkhrpU/NWP/p9pAePrx5HZEAPgSqwH7UYLLCEp
         PnI7nKj72HZ1TZ3zXvWIOnb7snx+I3h1hzA0h/Gu+9mR5DWyCpC7UcKHQjeL+rWja01W
         8VKA==
X-Gm-Message-State: AOAM531Go3p6ff5jzvGHH0bm934TTp4Xdh+4E00q01cKrtb/2Lds95ub
	PlGLJlHp8PQ8IWI0lo2hbRU2kqilvJ58MO44hLf2NmNbRloHDw==
X-Google-Smtp-Source: ABdhPJyvWgli7lkgD6tTDjJ4HiJqaUTngvyrLDpagd7dv8PVZHmc8FhoppFoIpd1KJlCj9KM0ioi7m3WYD0dQZsLhBw=
X-Received: by 2002:a05:6402:22bb:: with SMTP id cx27mr937035edb.304.1644006405830;
 Fri, 04 Feb 2022 12:26:45 -0800 (PST)
MIME-Version: 1.0
From: Richard Bell <richard.bell4@gmail.com>
Date: Fri, 4 Feb 2022 12:26:35 -0800
Message-ID: <CAMMoi3uE+=fDJwuaOP0X2qCqGL1wvxTR=ghC=Udo4waZe3y_6w@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Message-ID-Hash: RQEQUDTP3ETU6OUN2JMBB4DEUBH24N3X
X-Message-ID-Hash: RQEQUDTP3ETU6OUN2JMBB4DEUBH24N3X
X-MailFrom: richard.bell4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] The source of O's
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQEQUDTP3ETU6OUN2JMBB4DEUBH24N3X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7613691151625707126=="

--===============7613691151625707126==
Content-Type: multipart/alternative; boundary="000000000000d3fa7a05d73711c8"

--000000000000d3fa7a05d73711c8
Content-Type: text/plain; charset="UTF-8"

Hello,

I know that when I see O's (overruns) in the terminal it means my host
processing is not keeping up with the sample stream coming in from the
USRP. Samples are being dropped because the host is too slow to keep up.

I'm wondering if there is a test I can run that would reveal the cause of
the O's on my server. What is it on my server that is the bottleneck? Do
O's mean the problem is buffer overruns within the NIC itself? Does it mean
buffer overrun after the CPU? Does it mean buffer overrun while filling up
ram?

I am using a 2 port QFSP+ 100G NIC with both ports attached via QSFP+
cables to a 100G switch. From the switch I connect 5 USRP n310's using
their SFP+ ports and SFP+ cables. Each of the n310's dual SFP+ ports are
connected to the 100G switch and in this configuration I am able to use 2
of the 5 n310's simultaneously with 2 receive antennas per radio sampling
at 125 MHz without any O's. When I increase the number of radios above
this, I start seeing O's. The server is a 64 core machine with 200G RAM.

I calculate the total throughput required to keep up with 5 n310's sampling
at 125 MHz from 2 antennas with 16 bit I and 16 bit Q coming off the wire
at the server as:
(5 radios)*(2 antennas)*(125 mega samples per second)*(32 bits per complex
sample)=40 Gbit/s or just 5 GByte/s. This is well below the capability of
the network and I assume a high end 64 core server, unless I'm overlooking
something?

Any help or feedback is appreciated.

Richard

--000000000000d3fa7a05d73711c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I know that when I see O&#39;s (=
overruns) in the terminal it means my host processing is not keeping up wit=
h the sample stream coming in from the USRP. Samples are being dropped beca=
use the host is too slow to keep up.=C2=A0</div><div><br></div><div>I&#39;m=
 wondering if there is a test I can run that would reveal the cause of the =
O&#39;s on my server. What is it on my server that is the bottleneck? Do O&=
#39;s mean the problem is buffer overruns within the NIC itself? Does it me=
an buffer overrun after the CPU? Does it mean buffer overrun while filling =
up ram?</div><div><br></div><div>I am using a 2 port QFSP+ 100G NIC with bo=
th ports attached via QSFP+ cables to a 100G switch. From the switch I conn=
ect 5 USRP n310&#39;s using their SFP+ ports and SFP+ cables. Each of the n=
310&#39;s dual SFP+ ports are connected to the 100G switch and in this conf=
iguration I am able to use 2 of the 5 n310&#39;s simultaneously with 2 rece=
ive antennas per radio sampling at 125 MHz without any O&#39;s. When I incr=
ease the number of radios above this, I start seeing O&#39;s. The server is=
 a 64 core machine with 200G RAM.=C2=A0</div><div><br></div><div>I calculat=
e the total throughput required to keep up with 5 n310&#39;s sampling at 12=
5 MHz from 2 antennas with 16 bit I and 16 bit Q coming off the wire at the=
 server as:<br>(5 radios)*(2 antennas)*(125 mega samples per second)*(32 bi=
ts per complex sample)=3D40 Gbit/s or just 5 GByte/s. This is well below th=
e capability of the network and I assume a high end 64 core server, unless =
I&#39;m overlooking something?</div><div><br></div><div>Any help or feedbac=
k is appreciated.=C2=A0</div><div><br></div><div>Richard</div></div>

--000000000000d3fa7a05d73711c8--

--===============7613691151625707126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7613691151625707126==--
