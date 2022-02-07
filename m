Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AB84ACC98
	for <lists+usrp-users@lfdr.de>; Tue,  8 Feb 2022 00:24:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5EFD384FCD
	for <lists+usrp-users@lfdr.de>; Mon,  7 Feb 2022 18:24:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bFe9mI/T";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id AB4D9384E6B
	for <usrp-users@lists.ettus.com>; Mon,  7 Feb 2022 18:23:07 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id bt13so20774163ybb.2
        for <usrp-users@lists.ettus.com>; Mon, 07 Feb 2022 15:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=Y+KfXoKyAbOE1n8v/QO0J3vJeYqlC6WBVOgKifJDSUk=;
        b=bFe9mI/TpYEHvf48c62IHEs9qPy1wjhj6epprrnS3uGDA1rBY+9PRrwW9PF61M/Xos
         1rPYWP/yaIXHVE4N9XaeM3i3aQuo9fXGaGrD6RvWGxX+VnUFNhZLlaRTySLNUSxqMyhG
         6H4666bSbK9DXwd/N5Y9AKjU31ohiUs6TPygJvCPNK8b7DlK6Ijm3oayY/aYzj5Q1m/g
         44UG9PjjNC7mTk8rP+LKbEY1WyqRtUYWOTZ2QipcOso8BuoSmfgiFQ5NpOz1Rq74+XOn
         SYc/r1+aYket18WD+7k1+BDgXgc6EnHfAXIwOzJvTvJ8NOx4amfDtzqi6MNuIqPX8q5z
         sRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Y+KfXoKyAbOE1n8v/QO0J3vJeYqlC6WBVOgKifJDSUk=;
        b=a9utDE7PV6PBE0Ypvjnf2hWIftwTfgCko69T93KU22f3iRyYFaWnOry8iMLTEPSouP
         npcRF90sv+OKc2zEM153LkS93i1TLw4G72omWFY7g1ZM/gPp6s7apQcECC0GylpW6dYc
         zi5insZU83jHfPO6HJzKiZzgZfQdHVvERtI3vK+prsrYzdw7btMYcKTtlbEdWJyteEEm
         ZcCZWFIme0rqH8d1dLKQweuXA6Dxvz9v0xKeMNjxPeoVlxKUFu1wAAl3+zai75a3BmOi
         XRRM9AumxhJg8gRrD5v4QvZ8Fyc9UMelRisyRlyBPgdj/j8QINmLmLYvGAPLBegLNIiT
         GhNA==
X-Gm-Message-State: AOAM532Khdgoga6mrgFCczAnCTZ6PlSP5cd7F2cSS/vmj7qGASLgS0fl
	KUe1SjkxayDIoDd6VPB377zU3mX9fWdLQCO+2qN3xDEnMlkm+ZyO
X-Google-Smtp-Source: ABdhPJwuMywobHKnhD4c9rUSQ8qWFR7+7T9elAGwRHA3P+Od7RQd42lChZN+cwGPy4LCnIDDbW+kMZb1gqEK363C6I4=
X-Received: by 2002:a25:c307:: with SMTP id t7mr2088405ybf.701.1644276186695;
 Mon, 07 Feb 2022 15:23:06 -0800 (PST)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 7 Feb 2022 18:22:56 -0500
Message-ID: <CAB__hTTWVyMaR-vum8ThYJuOUJ2Hh-b7abJZGMxvVmBmvZyV0w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: Q4HDODDBYMPFVCY6EBXUZVZYAVSXBCEP
X-Message-ID-Hash: Q4HDODDBYMPFVCY6EBXUZVZYAVSXBCEP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320 with 1Tx and 2RX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q4HDODDBYMPFVCY6EBXUZVZYAVSXBCEP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5726805975668275242=="

--===============5726805975668275242==
Content-Type: multipart/alternative; boundary="0000000000000589d305d775e2f5"

--0000000000000589d305d775e2f5
Content-Type: text/plain; charset="UTF-8"

Hi,
What does the following error mean for an E320? In my application, I want
1Tx and 2Rx.
[ERROR] [0/Radio#0] Invalid channel configuration: This device does not
support 1 TX x 2 RX or 2 TX x 1 RX configurations!
Error: RuntimeError: Invalid channel configuration: This device does not
support 1 TX x 2 RX or 2 TX x 1 RX configurations!
Does this mean that I simply need an RFNoC graph that is 2x2 to the radio -
even if I don't initiate any streaming to the 2nd un-needed Tx radio? Or do
I also need to actively stream samples (e.g., zeros) to the 2nd
un-needed Tx radio.

Rob

--0000000000000589d305d775e2f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>What does the following error mean for an E320? In=
 my application, I want 1Tx and 2Rx.</div><div><span style=3D"color:rgb(255=
,0,0)">[ERROR] [0/Radio#0] Invalid channel configuration: This device does =
not support 1 TX x 2 RX or 2 TX x 1 RX configurations!</span><br style=3D"c=
olor:rgb(255,0,0)"><span style=3D"color:rgb(255,0,0)">Error: RuntimeError: =
Invalid channel configuration: This device does not support 1 TX x 2 RX or =
2 TX x 1 RX configurations!</span><br></div><div><font color=3D"#000000">Do=
es this mean that I simply need an RFNoC graph that is 2x2 to the radio - e=
ven if I don&#39;t initiate any streaming to the 2nd un-needed Tx radio? Or=
 do I also need to actively stream samples (e.g., zeros) to the 2nd un-need=
ed=C2=A0Tx radio.</font></div><div><font color=3D"#000000"><br></font></div=
><div><font color=3D"#000000">Rob</font></div></div>

--0000000000000589d305d775e2f5--

--===============5726805975668275242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5726805975668275242==--
