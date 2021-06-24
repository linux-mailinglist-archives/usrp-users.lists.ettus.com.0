Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA3F3B307D
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 15:50:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5563383A54
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 09:50:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="oGm8DhR1";
	dkim-atps=neutral
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 18FAF383A4E
	for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 09:50:06 -0400 (EDT)
Received: by mail-wr1-f53.google.com with SMTP id l12so6038602wrt.3
        for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 06:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=AkvB4ybj4kHDF188LAgu6GmntX6g+IXIsAVWoOds7qw=;
        b=oGm8DhR1VyqzZW66cv/NHSb8T4LPnVLtOYQrlxut4+w5OiYmg9SKh0BFmcGDclZlnC
         11mx42ipUajO79iLU+uAhkIBbL8NNZLv15pSNy8fdhhV8oquQuJAHIVeFiyPoZJRYIhb
         3GDCdKRZgjgJ13CvAPLtO+L35W94Ras4IpuoSQa/RVEd8veDcyIo5SVuZqkfrsRlyws5
         isDneuwZVZAPYLmSeh4KlnBnZfUBwHzv7AO4Os+UnHY9cHTo2QGt/t3mgKDDSLaDVv6X
         XP5C6vmxVMsDy9qmPZnYzcFDWxoCXUETEz9XuW+X/cZFSgD0lnGBLJ2Jt7hSdqj5bQVT
         Wp2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AkvB4ybj4kHDF188LAgu6GmntX6g+IXIsAVWoOds7qw=;
        b=V7Moeni/UoNde7vavZhSpUFU2SVUEasy5YZevxHqYfopl+GgXTXdOEKXpAwT+YtHLU
         Nep/0+oB9lf8fOUM8dsOV2IVE8BtHuqEnzEjhRdtsFRRYomBYu7pwhZhY7MS6rkKXgjh
         tq3Xhrp8FBseHRAyfJY4DDgvcMhMZIDiQJUAtl528BXxJHuJ+VbQdpnZ3JIp0+Axy5oh
         NPlGc7nh882nGNzizGaLQ0TNJBnEI+SktRR3qZlvTuDQ0XJlQHufRZHWJBD2EFlw36SS
         6+PELMpwHroeP3rzkFmZuzR9TLoo87EKFsvt5AuDaTqtm3kpXyFwTaLWLYcEobsviF3o
         Ca4w==
X-Gm-Message-State: AOAM533UBXL8aytYLMHQTEOW7ypoMRgxXp+KWD3+1A3uopghwzaJUNg2
	zUoFfkh8d5jdzr1CZvLF9yz+JiJZrTD7RhNeLhzAmeM25feDZw==
X-Google-Smtp-Source: ABdhPJwnlXFDxx+L7CZnbKim2WvNkAN3cfaXRim/0d1EmgHg9r4VVM7AN8GgjFRJ2ppUBrMARnYPTQmTi6rAxWik43w=
X-Received: by 2002:a5d:60c2:: with SMTP id x2mr4717765wrt.254.1624542604628;
 Thu, 24 Jun 2021 06:50:04 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Thu, 24 Jun 2021 15:49:54 +0200
Message-ID: <CAKHaR3ngMGQGFLtNSnHstCT5XuYZqQo1j7VNXcR7jA0Rv9QP+g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: DCYWTERTXGZNWYVRAVZD4GEFB6A5E77Q
X-Message-ID-Hash: DCYWTERTXGZNWYVRAVZD4GEFB6A5E77Q
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.0 OOT control port inaccessible when routed statically
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DCYWTERTXGZNWYVRAVZD4GEFB6A5E77Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6376040937894455886=="

--===============6376040937894455886==
Content-Type: multipart/alternative; boundary="000000000000df21d405c5834ceb"

--000000000000df21d405c5834ceb
Content-Type: text/plain; charset="UTF-8"

Hi,
i developed a rfnoc block based on uhd 4.0. this block has two input ports
meant to be connected statically to the two radios and to have a single
output port that is meant to go to the PC.
if i connect the radio0 to in0 and an endpoint to in1 so that i can either
feed data from the PC or from radio1 everything works however if i connect
radio0 to in0 and radio1 to in1 statically gnuradio won't start saying
there's no route to the control port.
I see that the generated verilog file has a control port connection in the
control axi crossbar however for some reason UHD seems not to know how to
reach it.
Is there any possibility to handle the case of connecting everything
statically? i really need to save as many resources as possible in the
final build.
thanks,

Dario Pennisi

--000000000000df21d405c5834ceb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>i developed a rfnoc block based on uhd 4.0. this b=
lock has two input ports meant to be connected statically to the two radios=
 and to have a single output port that is meant to go to the PC.</div><div>=
if i connect the radio0 to in0 and an endpoint to in1 so that i can either =
feed data from the PC or from radio1 everything works however if i connect =
radio0 to in0 and radio1 to in1 statically gnuradio won&#39;t start saying =
there&#39;s no route to the control port.</div><div>I see that the generate=
d verilog file has a control port connection in the control axi crossbar ho=
wever for some reason UHD seems not to know how to reach it.</div><div>Is t=
here any possibility to handle the case of connecting everything statically=
? i really need to save as many resources as possible in the final build.</=
div><div>thanks,</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span=
 style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333=
px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,s=
ans-serif;font-size:13.3333px"><br></div></div></div></div></div>

--000000000000df21d405c5834ceb--

--===============6376040937894455886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6376040937894455886==--
