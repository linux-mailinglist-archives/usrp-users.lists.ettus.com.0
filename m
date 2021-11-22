Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B114A45892C
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 06:56:18 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B0E6383DDF
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 00:56:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VCIjbShw";
	dkim-atps=neutral
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BE91383B14
	for <USRP-users@lists.ettus.com>; Mon, 22 Nov 2021 00:55:33 -0500 (EST)
Received: by mail-ed1-f44.google.com with SMTP id z5so71841182edd.3
        for <USRP-users@lists.ettus.com>; Sun, 21 Nov 2021 21:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Fk+gs9NUfZZC+sMYypWDwdkXXOFQfEovQYKNO47/ll4=;
        b=VCIjbShwLPYA2Jgn71JkDvzG0nupK39Jl616tR4SkI1cZABRNAIQyMcs5Q5N8eVxQx
         FBljoG5VO8Q80nxTCLfdiLvb//nO0pX27k7bU4V8/6sS8MLR1U1QdIJILENH8PiL3vU/
         5/UZ1fFWffILHj7L0noJTuw2mGFTMFODirCx2eJbezBJ5wobDZSZsnRy2/nc1epwq2zs
         t+hgkMWribsx/Hyi/aBV9XfAkQcAEiuQ6BCbtJmTq4ObKHRs1OPnHEmM+fs3Okbv6pqc
         xQ4hNch0z74pxBjkK50fGSyMnByUw0C2EbOReNsSxRBf3rV8fzDb045k6Nie6QUhXpPS
         ktTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Fk+gs9NUfZZC+sMYypWDwdkXXOFQfEovQYKNO47/ll4=;
        b=TFKCrvq5q0FXn4YBPEvJTHD8HWqJw905Vu24V/54+XLZhDsZVCLW33jAvutXRCdz5H
         OFdcjZv7bkPHggmxGspfuTeJVpJ39jRlFQ/NFg8OWTfDW4JtJrTNXAiMmWOo66kXC/wn
         7IH9jCEOtD0b9/LV78ToDGIwpVXM+YG3pjApwqEqclwUKMSaslj4ls31Eu6EelsUzoKg
         B4KtGEJ3ke+tex1Rrc1lhVEZogYI99LuvRoF4eY673PmgIEAlO0lYrEtLalCcEllsn9I
         S6ZEZ8oGjIjdY7XMCayrwaYot7ieRTk2FxrAy3V7xjJ+t70swmlAk/jh6MN0kOZKEXxq
         ugXw==
X-Gm-Message-State: AOAM530cQ//P23mMjejuFhl9YidyqGGYCFC+96+hfIUQVW1+4GQd9McF
	makDYtSz+VFup6UrXSeKD7/2P1IKju1hf+Vh9+zR+sOU
X-Google-Smtp-Source: ABdhPJyFQNHSbhE5dLo1Wov0lPeaJXFPlvnrhmqpp1xyp9UGWdwTTaAWCShocmuOJDgQmHnob4ThAfUVIAwOg3dbKBg=
X-Received: by 2002:a17:907:16a1:: with SMTP id hc33mr36441986ejc.486.1637560531872;
 Sun, 21 Nov 2021 21:55:31 -0800 (PST)
MIME-Version: 1.0
From: Richard Bell <richard.bell4@gmail.com>
Date: Sun, 21 Nov 2021 21:55:21 -0800
Message-ID: <CAMMoi3t5ZhJG5w0zJ=28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Message-ID-Hash: Q77IHBLQ5YPQFRTNBUNE3UYUCLVUDXI3
X-Message-ID-Hash: Q77IHBLQ5YPQFRTNBUNE3UYUCLVUDXI3
X-MailFrom: richard.bell4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] 5 x N310 Network Setup
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q77IHBLQ5YPQFRTNBUNE3UYUCLVUDXI3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8441578220702127601=="

--===============8441578220702127601==
Content-Type: multipart/alternative; boundary="000000000000ccedfd05d15a4543"

--000000000000ccedfd05d15a4543
Content-Type: text/plain; charset="UTF-8"

Hello,

I am attempting to setup 5 USRP N310's to be controlled by a single host.
You can assume the host has enough processing power to avoid being the
bottleneck. My question here is only concerned with properly setting up the
network so that 100 MHz of bandwidth capture is theoretically supported by
each of the 5 N310's per channel.

Would the following setup support the above:
1) Connect each of the 1G Ethernet management ports to a switch and connect
the switch to the host. Each radio should be assigned an IP address
automatically by a DHCP server as I understand it.
2) Connect the SFP+ ports to a corresponding NIC SFP+ port on the host
computer. With 5 N310's this will correspond to 10 total SFP+ ports
required at the host, two per radio.

Is this correct, or do I need to change something? Also, is there a way to
reduce the required number of SFP+ ports required on the host by using a
100G switch in some way?

Thank you for any assistance you can provide

Richard

--000000000000ccedfd05d15a4543
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am attempting to setup 5 USRP =
N310&#39;s to be controlled by a single host. You can assume the host has e=
nough processing power to avoid being the bottleneck. My question here is o=
nly concerned with properly setting up the network so that 100 MHz of bandw=
idth capture is theoretically supported by each of the 5 N310&#39;s per cha=
nnel.</div><div><br></div><div>Would the following setup support the above:=
</div><div>1) Connect each of the 1G Ethernet management ports to a switch=
=C2=A0and connect the switch to the host. Each radio should be assigned an =
IP address automatically by a DHCP server as I understand it.=C2=A0</div><d=
iv>2) Connect the SFP+ ports to a corresponding NIC SFP+ port on the host c=
omputer. With 5 N310&#39;s this will correspond to 10 total SFP+ ports requ=
ired at the host, two per radio.</div><div><br></div><div>Is this correct, =
or do I need to change something? Also, is there a way to reduce the requir=
ed number of SFP+ ports required on the host by using a 100G switch in some=
 way?</div><div><br></div><div>Thank you for any assistance you can provide=
</div><div><br>Richard</div></div>

--000000000000ccedfd05d15a4543--

--===============8441578220702127601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8441578220702127601==--
