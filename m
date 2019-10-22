Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F62E0B49
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 20:16:56 +0200 (CEST)
Received: from [::1] (port=36976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMyiF-0002ir-1e; Tue, 22 Oct 2019 14:16:55 -0400
Received: from mail-lj1-f179.google.com ([209.85.208.179]:42265)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <richard.bell4@gmail.com>)
 id 1iMyiB-0002c3-AH
 for USRP-users@lists.ettus.com; Tue, 22 Oct 2019 14:16:51 -0400
Received: by mail-lj1-f179.google.com with SMTP id u4so4080924ljj.9
 for <USRP-users@lists.ettus.com>; Tue, 22 Oct 2019 11:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=owX6cDQYr27RX0Ai9VU8s0hIoSOchIrrptHh+TRmScM=;
 b=Co4oKtqSBZRVspbkJ8PNldGiB16CqqaQQbkMWeZxCJjcFcfZecYaH8pO0f5RaTB3DF
 2woa7gpcS1ylMiQE5q1QFulKjCqfL+KhZZazaCRlqC+6T/iVihN4aCVzu1igcb98A99N
 nPp+RCRGIv5wLumn467m3WcAC5waCw/HTc6wsr2DYxNdiU+QPU4VeZGVx1/ogDlbMECx
 WMqPA+GXVreWEuxs7n5ORKx78lw7L+uWJ7K6Axrm38lgsRASq7T6+Nb0dWSdu9xaaSCb
 ixMoWWhq9iXWf2BGmxjiAHGrXiOrrhVjWWjVpyTNdQcCWl7rINu+dqZPyvbVsLjO/38y
 u+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=owX6cDQYr27RX0Ai9VU8s0hIoSOchIrrptHh+TRmScM=;
 b=UlR2QjyruceUudMyqej3wXqV6f2k7U0w+7kJ37TNzyXanomsV8f+tJM1InHaFNW9f5
 NkiKiGhsuqhYAQbvPYc2432rrP3UURIODn+9ta4CkBIyPTWT1C1qFO/iOPn0xxegcSKn
 hfFBnoqzHTaGnaNJmMbnWAiTXFHxe+d1iq+2xLN+11p5sz0jpmuHG+lWaYLh8jzXXFiH
 pEll5knkaP3zlsjdxFeM7tnwpTX6847Jzs4Xffx5G0cb/zpyFKt7btHY4gjMAFRORqzb
 cYO8NjXd99fDpaSAaA+uYc3eoETLaD36BYWlEktwxTil5pCBKtIMELHEz0ih+ymJ8Jun
 H3rQ==
X-Gm-Message-State: APjAAAVvFnjdwO/eDwBnZba9aqB/WZQ2NUOZ+0KbwYLkT/2XdQmsuuk8
 M9wQo4rUSGlRtkjxf6kunDQs5+f42vcXdJGqUepLZA==
X-Google-Smtp-Source: APXvYqxFb7es4TuKFsgA/kdiZ4er+Haxd9rCbK4GDlXKVnkuJWchluzY1zY9uxTpNuWsYfsIMBKTNzC4YoRwb7y1xdk=
X-Received: by 2002:a2e:9707:: with SMTP id r7mr79759lji.219.1571768169832;
 Tue, 22 Oct 2019 11:16:09 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Oct 2019 11:15:58 -0700
Message-ID: <CAMMoi3tOy8feTRfTKQ-ipAcQpoyAgf4VzCQjq6NcRNzB=-3yag@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: [USRP-users] Multi-USRP with X300's
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Richard Bell via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Richard Bell <richard.bell4@gmail.com>
Content-Type: multipart/mixed; boundary="===============5578360791644494664=="
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

--===============5578360791644494664==
Content-Type: multipart/alternative; boundary="0000000000006ea441059583cbb3"

--0000000000006ea441059583cbb3
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm a little confused about how I should distinguish between two different
USRPs X300's and the two different motherboards per USRP X300 in this type
of setup. I am feeding a 10 MHz ref and PPS ref to both USRPs. What I have
right now is a gr flowgraph with a single USRP Sink block that I have
configured with the following device address

"addr0=192.168.10.2,addr1=192.168.11.2"

and I have selected

Num Mboards = 2
Num Channels = 2

But this setup only uses the addr0=192.168.10.2 USRP to receive on both RFA
and RFB ports. I would like to configure receiving on 192.168.10.2 RFA
TX/RX and 192.168.11.2 RFA TX/RX.

How do I configure this properly?

--0000000000006ea441059583cbb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I&#39;m a little conf=
used about how I should distinguish between two different USRPs X300&#39;s =
and the two different motherboards per USRP X300 in this type of setup. I a=
m feeding a 10 MHz ref and PPS ref to both USRPs. What I have right now is =
a gr flowgraph with a single USRP Sink block that I have configured with th=
e following device address</div><div><br></div><div>&quot;addr0=3D192.168.1=
0.2,addr1=3D192.168.11.2&quot;</div><div><br></div><div>and I have selected=
</div><div><br></div><div>Num Mboards =3D 2</div><div>Num Channels =3D 2</d=
iv><div><br></div><div>But this setup only uses the addr0=3D192.168.10.2 US=
RP to receive on both RFA and RFB ports. I would like to configure receivin=
g on 192.168.10.2 RFA TX/RX and 192.168.11.2 RFA TX/RX.</div><div><br></div=
><div>How do I configure this properly?<br></div></div>

--0000000000006ea441059583cbb3--


--===============5578360791644494664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5578360791644494664==--

