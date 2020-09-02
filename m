Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4025B655
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 00:11:59 +0200 (CEST)
Received: from [::1] (port=47736 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDayy-00087c-LM; Wed, 02 Sep 2020 18:11:56 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:39441)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <vesathya@eng.ucsd.edu>)
 id 1kDayu-00082M-DY
 for usrp-users@lists.ettus.com; Wed, 02 Sep 2020 18:11:52 -0400
Received: by mail-oi1-f170.google.com with SMTP id r64so893083oib.6
 for <usrp-users@lists.ettus.com>; Wed, 02 Sep 2020 15:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=RMRGeOPkaosSWZOVq01VTMMj0l5zmD6UNL3kwzZi4Ks=;
 b=IHQfcjwMP9wkEWOKCE6HNU7aS4iTGt4kw8W45S2Y0nLObpxbAaSLDKSr8hZ9FBaikH
 mnb8oTf+o2bRDdkJpWeYCz/VUi3Y1GG1Cz2gnCL/XGtdqMFjhmfARpPQ4QblcYg5ms13
 eehsziT6hEo3ru8G+fI4gwOPmDC6nrzHffQEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=RMRGeOPkaosSWZOVq01VTMMj0l5zmD6UNL3kwzZi4Ks=;
 b=LVozFQ/JEk0g/0DYDHxR7RWWlUz9eQQZL92yo6DcHynHx4XZZPwMG7mDdPG0xqntB4
 zc//QJpTXxaEkB/2MRE8wCLlNNYKqKOkXwEw7ausG2b6qz1QZRPS7tLqZCSBoqQbl7iz
 N/SFvnziHZ2pW0XHxFmRbWvSYXJPmKRVyPRbBCXjT0x6RR6UYdeb/810mSk9KDWmF4YK
 iKQT5kqHRG4V3DX+6ZMvqDDo9koPdvMdUqRED6erW5Yv4wIGofrtNcFoQIPnOu2Y6mPz
 XD5hFvO+vOxWCpAOAn1f7pooWYZUS27WC5dhjXGwn/el1RbaraUI0qmehon1Wqgdprzz
 6TpA==
X-Gm-Message-State: AOAM530L/beqagOju1EzkHwT8Fv0aRXWpfi3AtBY3a8JJ52cDNzpKaJ5
 SEFfaJj4z5bvE3hCz7xXxMhcGVTDkAjqTxo8ID05JjOgK57t5StK
X-Google-Smtp-Source: ABdhPJxxZGvsu43pebrt1gp4CNl69ml1+Jq4mygo02DxWsPBFsH7WYk7/SJbNwyWqWNcSFPTNN/QPZ45cY7YOG9X9b0=
X-Received: by 2002:a54:4795:: with SMTP id o21mr173985oic.13.1599084668098;
 Wed, 02 Sep 2020 15:11:08 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 2 Sep 2020 15:10:57 -0700
Message-ID: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Cc: Ankush Jolly <ajolly@eng.ucsd.edu>
Subject: [USRP-users] Link going up and down periodically every 45 seconds
 on USRP N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Venkatesh Sathyanarayanan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Venkatesh Sathyanarayanan <vesathya@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============1380013513035626279=="
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

--===============1380013513035626279==
Content-Type: multipart/alternative; boundary="0000000000009bc60105ae5be94f"

--0000000000009bc60105ae5be94f
Content-Type: text/plain; charset="UTF-8"

Hi,


*Setup details:*
I am using an USRP N310 and I have the host computer connected to the USRP
via SFP cable. I additionally have a serial connection between the two and
have a screen session running.

*Observation:*
On the screen session, I noticed the following messages:
[ 2151.041079] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2195.841088] nixge 40000000.ethernet sfp0: Link is Down
[ 2196.961090] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2241.761098] nixge 40000000.ethernet sfp0: Link is Down
[ 2242.881106] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2287.681109] nixge 40000000.ethernet sfp0: Link is Down
[ 2288.801114] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2333.601129] nixge 40000000.ethernet sfp0: Link is Down
[ 2334.721127] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2379.521132] nixge 40000000.ethernet sfp0: Link is Down
[ 2380.641137] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2425.441143] nixge 40000000.ethernet sfp0: Link is Down
[ 2426.561149] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2471.361159] nixge 40000000.ethernet sfp0: Link is Down
[ 2472.481166] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
[ 2517.281166] nixge 40000000.ethernet sfp0: Link is Down
[ 2518.401171] nixge 40000000.ethernet sfp0: Link is Up - 10Gbps/Full -
flow control off
..........................................................................................................................................................................
..........................................................................................................................................................................

..........................................................................................................................................................................
..........................................................................................................................................................................

*Questions:*
When I have a GNU radio GRC running with an active GUI displaying the
spectrum, I see that it halts at the time when the link goes down.
When I run a file with no GUI active - say IQ samples saved to a file,
things running in the background and I do not see any interruption.


   1. Kindly let me know why I am seeing this issue of link going down
   every 45 seconds and
   2. also if this could potentially affect my tests (all my tests are
   without any GUI.)


Regards
Venkatesh

--0000000000009bc60105ae5be94f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div><br></div><div><b>Setup =
details:</b></div><div>I am using an USRP N310 and I have the host computer=
 connected to the USRP via SFP cable. I additionally have a serial connecti=
on between the two and have a screen session running.</div><div><br></div><=
div><b>Observation:</b><br></div><div>On the screen session, I noticed the =
following messages:</div><div>[ 2151.041079] nixge 40000000.ethernet sfp0: =
Link is Up - 10Gbps/Full - flow control off<br>[ 2195.841088] nixge 4000000=
0.ethernet sfp0: Link is Down<br>[ 2196.961090] nixge 40000000.ethernet sfp=
0: Link is Up - 10Gbps/Full - flow control off<br>[ 2241.761098] nixge 4000=
0000.ethernet sfp0: Link is Down<br>[ 2242.881106] nixge 40000000.ethernet =
sfp0: Link is Up - 10Gbps/Full - flow control off<br>[ 2287.681109] nixge 4=
0000000.ethernet sfp0: Link is Down<br>[ 2288.801114] nixge 40000000.ethern=
et sfp0: Link is Up - 10Gbps/Full - flow control off<br>[ 2333.601129] nixg=
e 40000000.ethernet sfp0: Link is Down<br>[ 2334.721127] nixge 40000000.eth=
ernet sfp0: Link is Up - 10Gbps/Full - flow control off<br>[ 2379.521132] n=
ixge 40000000.ethernet sfp0: Link is Down<br>[ 2380.641137] nixge 40000000.=
ethernet sfp0: Link is Up - 10Gbps/Full - flow control off<br>[ 2425.441143=
] nixge 40000000.ethernet sfp0: Link is Down<br>[ 2426.561149] nixge 400000=
00.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off<br>[ 2471.361=
159] nixge 40000000.ethernet sfp0: Link is Down<br>[ 2472.481166] nixge 400=
00000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off<br>[ 2517.=
281166] nixge 40000000.ethernet sfp0: Link is Down<br>[ 2518.401171] nixge =
40000000.ethernet sfp0: Link is Up - 10Gbps/Full - flow control off<br>....=
...........................................................................=
...........................................................................=
................</div><div>................................................=
...........................................................................=
...............................................</div><div><br></div><div>..=
...........................................................................=
...........................................................................=
..................</div><div>..............................................=
...........................................................................=
.................................................</div><div><font size=3D"4=
"><br></font></div><div><font size=3D"4"><b>Questions:</b></font><br></div>=
<div>When I have a GNU radio GRC running with an active GUI displaying the =
spectrum, I see that it halts at the time when the link goes down.</div><di=
v>When I run a file with no GUI active - say IQ samples saved to a file, th=
ings running in the background and I do not see any interruption.</div><div=
><br></div><ol><li>Kindly let me know why I am seeing this issue of link go=
ing down every 45 seconds and </li><li>also if this could potentially affec=
t my tests (all my tests are without any GUI.)</li></ol><div><br></div><div=
>Regards</div><div>Venkatesh<br></div><div><br></div></div>

--0000000000009bc60105ae5be94f--


--===============1380013513035626279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1380013513035626279==--

