Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CC46CA924
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 17:37:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C7783840F4
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 11:37:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679931424; bh=gD/vndtNy0/7C5NVFivnS+N1ufYQz3ijfC+nGbRpxXg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VO1QnXQV8Gqw+vTW6NWvWaOZcBkSQ3pfsh2jMz9jUqXwgx7QlATJmSAb9SVwDE7A/
	 j1O+gg/mtPhYyztX0sfl+bHv4wp31rHi3frBT4TX/bxzauDtYub+kVY6+3MGjhiaId
	 +lq2ThTvKJsP1q6vw9p7/gyRQfihAhjwzFLmsIGPXLUTCZX2OzdRvSveX4Lz9s/qMv
	 Q+0z9l23Cs0o8p7mA5SwLTtVDWV2n5NgUljLYJ+c2zfgkqv+HgDmxqxFUZAkSOP0UE
	 YEUBOXglZbS77qgbE3i69blqn/0es8dsTXOMjtWKv/BiNJ5y+D85oNmUXuxsUZLwdt
	 jE5odP4N3PCSQ==
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 109F7383EA0
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 11:36:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YS9Ah9Ul";
	dkim-atps=neutral
Received: by mail-pl1-f171.google.com with SMTP id le6so8776003plb.12
        for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 08:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679931362;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1iyZEEsaHncD7Gk8uzxv7fD9OJNaLGto3thdPoXeOOU=;
        b=YS9Ah9UlqzLR2E9n6MWmHRUudHTkq9MDfTCUVlGgtkTbqBYpVvCOpr6lIPtbxtH5hM
         ulFsj/6sK8H8qTdETB0b6SHV8fnvI7/bjMvqFN8ptGCpdrO755YEOtrrXC0lEnkAr2C3
         3vhyaB06KpMylhSSbVSGRkWAF4VAjf+M08blD5qnfWuJLRtJwP2TiVlhYYFIehwnLfFi
         EaRvvnOJtp7ybEHRgGUKZUGkFaajU3QXRAhQ9PkTZkhR0NVzCKKHthB2nG0N/1IsG8To
         2ihzlfmYZvn9KequCguEVMkrA7QJzrv2U823UC2okWkIZDpqz6wcAMDzIrXQuBY3J1aG
         AFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679931362;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1iyZEEsaHncD7Gk8uzxv7fD9OJNaLGto3thdPoXeOOU=;
        b=Gi8FfQF7x5QP1X1c4ANHB1swcO1mNoHmuz98BrqEC3Yv6YT7EIg4F3CD7SoJxWYd/H
         GBn0oczTOFMkPqxDUdDV7avilO+pwg97rkHLcieSUwfoITPuD4p9canRarMRYcRcYmDf
         PYhuXglhKGjIqWL8QzA+rYOMx3GpczBQtI8gZ0ZeNlD8wMXdiHboAz8yLYUBhk30w+T1
         jEFOPZXHBB5Hpa7GKVdjdgijq4N54psqyHM+mG6yMCHWyiFLRFOwS9JvKIqkxuk6udsy
         b7rXwTDdSqG1c7fHOsmuNfdyhktCrf4ZemuXbANBhK0c53s8z4K4MoewV69RXPDoTSR3
         ns4w==
X-Gm-Message-State: AAQBX9cjR5O2opTwMSaotHF556tV2nd44fhBdZJT/5r6et/L5A+H9QBZ
	PwWB97NrCA80tL0t5nGLLgPcvaK/aYSCdbQXkT55ndE4
X-Google-Smtp-Source: AKy350bb4//wK9tMq56yjffQf42nl1nt6LJ66v2yRZha9l4jQ53hH0ABYrIs8EepScSFDJpJ0Wur2Vk1fPUHgrK2RK4=
X-Received: by 2002:a17:902:ec90:b0:1a1:f0ad:8636 with SMTP id
 x16-20020a170902ec9000b001a1f0ad8636mr4802038plg.12.1679931361565; Mon, 27
 Mar 2023 08:36:01 -0700 (PDT)
MIME-Version: 1.0
From: Ojas Kanhere <ojaskanhere@gmail.com>
Date: Mon, 27 Mar 2023 10:35:50 -0500
Message-ID: <CAJQWkW7MjbjvCsrQ2dcmTSQxzN-qvh9f6DGHtznUEXFW5DqhkA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 7DOIVCRYICREG2A7OGVGKMLTZWKNRU4G
X-Message-ID-Hash: 7DOIVCRYICREG2A7OGVGKMLTZWKNRU4G
X-MailFrom: ojaskanhere@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Host-usrp communication with VPN
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7DOIVCRYICREG2A7OGVGKMLTZWKNRU4G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0775477714558669531=="

--===============0775477714558669531==
Content-Type: multipart/alternative; boundary="0000000000000da07c05f7e38017"

--0000000000000da07c05f7e38017
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

We have a host PC running windows 10 directly connected to an x410 usrp on
eth0. The host PC is connected to the internet via eth1.

We are facing issues with UDP communication via UHD between the host PC and
the x410 usrp. When VPN (we are using tailscale, free to use for <20
devices) is turned off, the uhd command uhd_find_devices runs as expected.
When VPN is turned on, we get an error message in "receive from" saying
that an existing connection was forcibly closed.

To verify that the issue is with UHD and not with our networking setup, we
did the following:
1) We ran wireshark on the host and when VPN was on, we could see the UDP
reply from the usrp to the host machine. Subsequent TCP messages that
should have been exchanged between host and USRP were missing.

2) We ran a UDP client on the host pc and sent the message =E2=80=9CMPM-DIS=
C=E2=80=9D to
the x410. We successfully received a reply from the x410, which suggests
that packet routing between the two devices works fine.

There is a direct ethernet connection between our host pc and the x410.
Windows firewall is turned off.

We found mention of this problem on a mathworks website where they
recommend that the VPN be turned off, but we would like to avoid that if
possible.
https://www.mathworks.com/help/supportpkg/usrpradio/ug/common-problems-and-=
fixes.html

Has anyone else experienced this problem? We would be grateful if anyone
could help us find a solution to the connectivity issue.

Thank you,
Ojas

--0000000000000da07c05f7e38017
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi all,<br>
<br>
We have a host PC running windows 10 directly connected to an x410 usrp on =
eth0. The host PC is connected to the internet via eth1.<br>
<br>
We are facing issues with UDP communication via UHD between the host PC and=
 the x410 usrp. When VPN (we are using tailscale, free to use for &lt;20 de=
vices) is turned off, the uhd command uhd_find_devices runs as expected. Wh=
en VPN is turned on, we get an error message in &quot;receive from&quot; sa=
ying that an existing connection was forcibly closed.<br>
<br>
To verify that the issue is with UHD and not with our networking setup, we =
did the following:<br>
1) We ran wireshark on the host and when VPN was on, we could see the UDP r=
eply from the usrp to the host machine. Subsequent TCP messages that should=
 have been exchanged between host and USRP were missing.<br>
<br>
2) We ran a UDP client on the host pc and sent the message =E2=80=9CMPM-DIS=
C=E2=80=9D to the x410. We successfully received a reply from the x410, whi=
ch suggests that packet routing between the two devices works fine.<br>
<br>
There is a direct ethernet connection between our host pc and the x410. Win=
dows firewall is turned off.<br>
<br>
We found mention of this problem on a mathworks website where they recommen=
d that the VPN be turned off, but we would like to avoid that if possible.<=
br>
<a href=3D"https://www.mathworks.com/help/supportpkg/usrpradio/ug/common-pr=
oblems-and-fixes.html" rel=3D"noreferrer" target=3D"_blank">https://www.mat=
hworks.com/help/supportpkg/usrpradio/ug/common-problems-and-fixes.html</a><=
br>
<br>
Has anyone else experienced this problem? We would be grateful if anyone co=
uld help us find a solution to the connectivity issue.<br>
<br>
Thank you,<br>
Ojas<br>
</div>

--0000000000000da07c05f7e38017--

--===============0775477714558669531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0775477714558669531==--
