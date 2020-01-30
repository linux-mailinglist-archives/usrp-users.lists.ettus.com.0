Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BED114E0DB
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2020 19:36:18 +0100 (CET)
Received: from [::1] (port=48520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixEfl-0005bh-WC; Thu, 30 Jan 2020 13:36:14 -0500
Received: from mail-vs1-f41.google.com ([209.85.217.41]:40466)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <richard.bell4@gmail.com>)
 id 1ixEfi-0005SA-Cr
 for USRP-users@lists.ettus.com; Thu, 30 Jan 2020 13:36:10 -0500
Received: by mail-vs1-f41.google.com with SMTP id g23so2708292vsr.7
 for <USRP-users@lists.ettus.com>; Thu, 30 Jan 2020 10:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=i6QdiUgTbIWOsz2XeA4ataBub1EjCTePCh8NQAdDsLk=;
 b=iZu5VfP6QE3HBOuKrGt55TscnJoE2Cee6ha7bZ1Q53NT0M0HgMOwIDXHIa+FF2S3iQ
 J4Lc1RLePSc1TSRIB3UFDjBXTYf9ZOOa4G6RSjhXADwcekIf1v08FQYe2zdmVJ5HAQIL
 nJKLrCYexUmPQNubuh8qXGT2AXfRV8GcofMQxZdZAWKLqsrhfJeiieXzvksm3VVw0xnz
 YCyZ5CuYs5ejO9yw0Xav11uyxdoXai9c2ITjrnwwUepKbmNgWZzQtSa2i+vKyDNVKaNL
 gHaIYdOdq2mYa2jZ39l6JgdAZLt44+T6ZDNrcI+xfIc4WtB0GMeaAighUigosDDUTSVX
 cqgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=i6QdiUgTbIWOsz2XeA4ataBub1EjCTePCh8NQAdDsLk=;
 b=RyWYTQ7B3lQ3SmuK7kVB8umg2uxr9RFl3jWwCCTAg+9MEZIOdP3OUSh1hO0uGKzhUK
 w5oh7LaafuhSHWDC4n3hPxV8JCxrjOwlEGgz8USGXOqH6Vt9qUVWrDQfZ9HkpKeAuTyS
 /72Z4uuizlug6G7hABYmtZeNoei/hVuw8y5TV7mQhQn5ltAG/4Fq+9p3fJ9Q6KWJdMH1
 QScQgYi7wTACkLd50usGKOHtA4EY+neRja6PPy75xAQa+JZj7KSXKm5soRpWBMJyOnZc
 2K6n9gersjEUn7ZRYSPzE4WsCpjqDnUzx9NdbrHuF4Wu9HUy3cG7AkUcYqaX6tHn51b2
 Y69g==
X-Gm-Message-State: APjAAAVkVbloEQCIVmd+i3lvbdmyzilH7/vYMZGGf70P/YEXZ5+S/iAB
 npEL9XCmrFWLBsDmKpQxreceiJ3jngty+PjdswJhQkJb
X-Google-Smtp-Source: APXvYqz1I/vo/nyTZqk93DQI7YEeyZ/ksMp9xRaBx3cl50iFlRiR9Nj66xeIFPszi6+7Y9eNSYq7amsmAGo8kzPJmAE=
X-Received: by 2002:a67:fb14:: with SMTP id d20mr4048212vsr.136.1580409329551; 
 Thu, 30 Jan 2020 10:35:29 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 30 Jan 2020 10:35:18 -0800
Message-ID: <CAMMoi3shY_pfUQUEo9Ct0KD2zZiNop_KF12P8nr=bLB7k8Wh5A@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Subject: [USRP-users] Maintaining USRP Carrier Frequency Lock
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
From: Richard Bell via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Richard Bell <richard.bell4@gmail.com>
Content-Type: multipart/mixed; boundary="===============0944977240607134881=="
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

--===============0944977240607134881==
Content-Type: multipart/alternative; boundary="000000000000b00ed0059d5fb8d0"

--000000000000b00ed0059d5fb8d0
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to collect serveral data sets through USRP X300's. Assume each
collection is 1000 samples long and is initiated by a user typing a button
on the keyboard. Each time the user hits a key 1000 samples are collected
and stored to a file. The time between each collect is defined by the user
hitting the key.

I need to make sure the USRPs are not loosing carrier lock between these
collections. I want the USRPs to stay locked to whatever center frequency
is set and sit there for the length of the time the user wants to collect
data sets. What is the best way to ensure this?

For example, if I use GNU Radio and head blocks feeding into file sinks
with calls to tb.start and tb.stop, does the call to tb.stop cause the USRP
to forget the carrier it was locked to and start over again on the next
call to tb.start? Can I call tb.start multiple times without a call to
tb.stop?

Thank for any help you can provide.

--000000000000b00ed0059d5fb8d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am trying to collec=
t serveral data sets through USRP X300&#39;s. Assume each collection is 100=
0 samples long and is initiated by a user typing a button on the keyboard. =
Each time the user hits a key 1000 samples are collected and stored to a fi=
le. The time between each collect is defined by the user hitting the key.</=
div><div><br></div><div>I need to make sure the USRPs are not loosing carri=
er lock between these collections. I want the USRPs to stay locked to whate=
ver center frequency is set and sit there for the length of the time the us=
er wants to collect data sets. What is the best way to ensure this?</div><d=
iv><br></div><div>For example, if I use GNU Radio and head blocks feeding i=
nto file sinks with calls to tb.start and tb.stop, does the call to tb.stop=
 cause the USRP to forget the carrier it was locked to and start over again=
 on the next call to tb.start? Can I call tb.start multiple times without a=
 call to tb.stop? <br></div><div><br></div><div>Thank for any help you can =
provide.<br></div></div>

--000000000000b00ed0059d5fb8d0--


--===============0944977240607134881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0944977240607134881==--

