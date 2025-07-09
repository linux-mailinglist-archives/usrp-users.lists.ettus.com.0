Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA39AFEEE0
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jul 2025 18:33:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E3DB538626D
	for <lists+usrp-users@lfdr.de>; Wed,  9 Jul 2025 12:33:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1752078806; bh=EQ96o6QNh1emGo229upcZT1VF+mFpbPVKdxc2ZaMa9g=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=b4dTX4FtduYExDebDxiJOfQytKPaZXKn0ZQV0x9vrGeZeBud7NrxGsK0147pF8fUh
	 apE4m0Azn8c6a9dQUfe90Cj6dpsDXhx5u+RL2LSZtNZzOZWVXGRtkOAjy9jfFXgZMS
	 zzDGxr974gAXziXdq7861fcDnyYuDmH+a49GuGV/kHcqRxu7HjJ3nRLhwPSMX+nsxE
	 XZQxYT7h5O966cKyZS5krylvueUydCtiiUIOeqXNpfI6MMUPLeVIsLA2UCEo9xcgbi
	 G2KNAgf2nEEqRaEH8v1Nd6DYYT9lTFQ1lkSKaKeLhJMw/EDQFHnxUXuW3f3W9Y+mA8
	 oR6iBC2K8s+eg==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 62378386164
	for <usrp-users@lists.ettus.com>; Wed,  9 Jul 2025 12:32:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PF/Wwpe1";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ae0dad3a179so2308266b.1
        for <usrp-users@lists.ettus.com>; Wed, 09 Jul 2025 09:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752078740; x=1752683540; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w+00uP68Q2WCsiw0xqqqS3hFWv1v0sKWOXaXzYEaqLw=;
        b=PF/Wwpe12G34CJVZfkdQpnlPaEpLprYHJl7vVm58UcGON+5TX39RaRL1kuk4oj5ATx
         j7WqornA9lTK/vteU+0QaMFHHkBoIUXRjFm363RlbcHWYUBJ6xPxfNv0rWUEjc7TQmwh
         yS7lyWzmXfk8m9YwECy19f26mAGAgZD/OckMkB51Og0+VDL6pFluc9Cie+j390BKDxAu
         IEH4UpPMzeAeJcmC40liRjEwe1Q7y3gmRblEXKHSQUWeXwomOJnvCf8YRfx0Ake+6Z96
         FF6kpd4xGeRUSqxionEJonax0QWuHqXy+FFBDaKuGLRoe4+gtCPZJYrMJKuY+RozOzbC
         VLxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752078740; x=1752683540;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w+00uP68Q2WCsiw0xqqqS3hFWv1v0sKWOXaXzYEaqLw=;
        b=afP0YBOaQtragUUIZOJp1PK9bvlx3m0p/L8NXZhxBNc6p/eOg+D7VJ6SQfnOmqwxaQ
         4+vEOTum66bk9x2Nev+PpvG+YpG15Xyc0xMil1gPUTrXqPzSPFCk1C5HnvU3Sbg3cWQI
         dfRJowQsY2scuWA1NJfbxvFvf+v6bhRQYaej5AFyH3+Ke59RZUtf+KznZ23a8SKSXPvs
         LjEI4QmYFSe9k53myYU0LEVYSF2GxVfaCXZ9VFqTETK8+BxAhGKjZrEsO5dJ9GyaIBZQ
         /ZXvZmX0ASQz9hi9f1RXNGkSu7mZFEbbDiF5JAWY4yKgolQ+pc4fdiG5iJzvJRnNOkz3
         SYbQ==
X-Gm-Message-State: AOJu0YxEflLhYuINffa3AiXzLQDMaHMbQH4iWkmdECy7th1WyjeKQcxx
	gA89skMpLkzcw5wTWmNfXH339HYsIcWQXp1BzApz8qZXomfr+JkEbTVThkGZb5K1bHv6Meihp30
	TlAYimLs39Z+3al6QpyNzuK1fCRPkIZFC7w==
X-Gm-Gg: ASbGnctJpaY3fsZy3RJCVA4XfS5smSZjnCBNGtt21cRpc2vAwmMCAmlpwvg43p/y+kE
	7mSGQ493WWZRqgXENdkH/q5xRVEsMsLCjEoZ6OZXll0FtbQ5ctReyvxdYRz7WaAqKTCD2S+8ykE
	cjABXsv33NsIedUjlPdIOX0j1QyttDThg43X6vhlbIoqCJhzVTsdceKA==
X-Google-Smtp-Source: AGHT+IH5NB6SmmadkXE6qJvyeFKfW9LyRBdXB/Tu1VeGduP+0Gsmb7xuhtO1qGWdP5FWtE/qai/MK0pbiYgYD9QWzbs=
X-Received: by 2002:a17:907:d7cb:b0:ae0:a245:d940 with SMTP id
 a640c23a62f3a-ae6cf79fb53mr364949466b.51.1752078739648; Wed, 09 Jul 2025
 09:32:19 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 9 Jul 2025 12:32:08 -0400
X-Gm-Features: Ac12FXyb5UvKQBpu1b0tlQxc-DBZmbJavFZkq7h-NtmX-Udvl2ecYXv3vYMDdrM
Message-ID: <CAEXYVK46aCpM7sxqS9nqH4yG7dCyXh3PvqO-29Ztqpd42Eih1Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: OY54X4MKSJ2XP2J7CR5FRSLHHE6LDGK4
X-Message-ID-Hash: OY54X4MKSJ2XP2J7CR5FRSLHHE6LDGK4
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Minimal CHDR Crossbar
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OY54X4MKSJ2XP2J7CR5FRSLHHE6LDGK4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8863340531421650952=="

--===============8863340531421650952==
Content-Type: multipart/alternative; boundary="000000000000e537e50639819e93"

--000000000000e537e50639819e93
Content-Type: text/plain; charset="UTF-8"

I'm having a bit of a hard time understanding the minimal requirements for
the CHDR Crossbar and connectivity.

I'm working with an X440, so I have 3 transport adapters (int0, sfp0,
sfp1), 2 blocks (radio0, radio1), 2 TX endpoints each with 4 ports (tx0,
tx1), and 8 RX endpoints each with 1 port (rx[0-7]).

I have tx0 ctrlport enabled, and none of the other ctrlports are enabled. I
know I want rx[0-3] to only ever stream out of sfp0, and I want rx[4-7] to
only ever stream out of sfp1. I want tx0 and tx1 to both receive CHDR
packets from sfp0 and sfp1. I will always configure the device via int0.

I also notice that rfnoc_core_kernel has a parameter for CHDR_XBAR_PRESENT.
The comment for the parameter states: "1 if the CHDR crossbar is present.
If 0 then transports are directly connected to SEPs".

Connecting everything through the crossbar even with a sparse routing
matrix ends up with around 18kLUT utilization.

Since I know I want this extremely fixed and rigid design, I've got some
questions:

  - How much of the CHDR crossbar can I remove? Can I get rid of it
altogether? Are there any examples of a design with no CHDR crossbar?

  - Can I combine the RX SEPs into a single port per SFP connection using
an AXI-Streaming mux of some type? Or is this accomplished in the same way
in the crossbar with a sparse routing matrix?

  - How would one connect the multiple SEPs directly to the TA without
going through the crossbar as the CHDR_XBAR_PRESENT parameter suggests is
possible? Is it possible to describe this in the yaml file or does it
require hand editing the generated rfnoc_image_core.sv file?

  - Since configuration is happening from int0, and tx0 is the only SEP
with a ctrlport on it, does this suggest I need int0 to only be connected
to tx0 in the connections and it doesn't need to go anywhere else? I will
note that I tried this and I received a message saying a route couldn't be
found for my remote streams. Is this maybe an oversight with remote
streaming and sparse connectivity in the crossbar?

I appreciate any insights you might be able to give.

Thanks,
Brian

--000000000000e537e50639819e93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m having a bit of a hard time understanding the mini=
mal requirements for the CHDR Crossbar and connectivity.<div><br></div><div=
>I&#39;m working with an X440, so I have 3 transport adapters (int0, sfp0, =
sfp1), 2 blocks (radio0, radio1), 2 TX endpoints each with 4 ports (tx0, tx=
1), and 8 RX endpoints each with 1 port (rx[0-7]).</div><div><br></div><div=
>I have tx0 ctrlport enabled, and none of the other ctrlports are enabled. =
I know I want rx[0-3] to only ever stream out of sfp0, and I want rx[4-7] t=
o only ever stream out of sfp1. I want tx0 and tx1 to both receive CHDR pac=
kets from sfp0 and sfp1. I will always configure the device via int0.</div>=
<div><br></div><div>I also notice that rfnoc_core_kernel has a parameter fo=
r CHDR_XBAR_PRESENT. The comment for the parameter states: &quot;1 if the C=
HDR crossbar is present. If 0 then transports are directly connected to SEP=
s&quot;.</div><div><br></div><div>Connecting everything through the crossba=
r even with a sparse routing matrix ends up with around 18kLUT utilization.=
</div><div><br></div><div>Since I know I want this extremely fixed and rigi=
d design, I&#39;ve got some questions:</div><div><br></div><div>=C2=A0 - Ho=
w much=C2=A0of the CHDR crossbar can I remove? Can I get rid of it altogeth=
er? Are there any examples of a design with no CHDR crossbar?</div><div><br=
></div><div>=C2=A0 - Can I combine the RX SEPs into a single port per SFP c=
onnection using an AXI-Streaming mux of some type? Or is this accomplished =
in the same way in the crossbar with a sparse routing matrix?</div><div><br=
></div><div>=C2=A0 - How would one connect the multiple SEPs directly to th=
e TA without going through the crossbar as the CHDR_XBAR_PRESENT parameter =
suggests is possible? Is it possible to describe this in the yaml file or d=
oes it require hand editing the generated <a href=3D"http://rfnoc_image_cor=
e.sv">rfnoc_image_core.sv</a> file?</div><div><br></div><div>=C2=A0 - Since=
 configuration is happening from int0, and tx0 is the only SEP with a ctrlp=
ort on it, does this suggest I need int0 to only be connected to tx0 in the=
 connections and it doesn&#39;t need to go anywhere else? I will note that =
I tried this and I received a message saying a route couldn&#39;t be found =
for my remote streams. Is this maybe an oversight with remote streaming and=
 sparse connectivity in the crossbar?</div><div><br></div><div>I appreciate=
 any insights you might be able to give.</div><div><br></div><div>Thanks,</=
div><div>Brian</div></div>

--000000000000e537e50639819e93--

--===============8863340531421650952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8863340531421650952==--
