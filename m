Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 813D839318C
	for <lists+usrp-users@lfdr.de>; Thu, 27 May 2021 16:55:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 889B83843E3
	for <lists+usrp-users@lfdr.de>; Thu, 27 May 2021 10:55:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="SnRc7LFZ";
	dkim-atps=neutral
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 88B1638436E
	for <usrp-users@lists.ettus.com>; Thu, 27 May 2021 10:54:19 -0400 (EDT)
Received: by mail-oi1-f180.google.com with SMTP id z3so1014749oib.5
        for <usrp-users@lists.ettus.com>; Thu, 27 May 2021 07:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=q5Ter72ySL0XKByJkJYcOLx2mO+DcFXAjpSkj4muCps=;
        b=SnRc7LFZiYY0QnTIW9WTqMNTXefog+GTa+GjUIZTZTXAASgAMPK9J5eP9ZuZq1mMzW
         HGqL7irdkkNzVTv+Pn9eBrX4nhzmgyH6LAq5F9HUCVanx9x8IzHBVsPtx0b/AoELFz7/
         J06A28UtKmJLelMkbTR+CU7Bf5u8hbKx6qRetyHItFgR1X85+M+DtSaLVdT/t0YK9iqJ
         /yGwFRfi/lVUHEG1XVEXt/BItM0YyXBI8TUnCTNnbAel/oUGUZ4uP6CazWNeXmxbdLg1
         ApOJWZAPGMrAp1RJ0R7pc1ImmmWlYxGDsblADmIFSrVKXub3DB8RILcLEBhT8Y6QfD9R
         YV7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=q5Ter72ySL0XKByJkJYcOLx2mO+DcFXAjpSkj4muCps=;
        b=pbdDJFdiri0xYlODD5iW9UrGBoROK97Z150VeW8nsefpszbJbLPV2IEhlVvN/Z7xRw
         xTKNIdu8fbz1YYFni8UVJJZ+b5DxR/eaE0PvZ91XCW1oXh8Y8UOzOYQThPMutNeimG9u
         kiuOlgvDrYARZ4vKjPBjiScO9seKst52oY9dN19cPoudkChNVyjAgUWztHym4pYFY41e
         EcgLs2qyqmUejBxITw4R0fM7Y7pPqPGAcrYWjN8H9PwqEohXzUe+RmTBK5HMoB52bkEX
         z8iQoqJ0sMROXWtAXHhLoshhzDceMKpH5500GZcdhEUWPLMXeLkO7R69S6MeraosQMXq
         Gr5g==
X-Gm-Message-State: AOAM531JL0ZCQx1QQacqYvQ0GN/xduBMZd9bvNt+gsk84quYZHGjnpYA
	Zan5chXoOSPJOqkuGW21Atk9OLhN5geWvBwSZbGEwa4znSk=
X-Google-Smtp-Source: ABdhPJw3N54Car31cPM5DAyRZyRZpICo+T/e7LgdGEvw9i5R+PNyX8WbR1jGE3v+z4Rf4NPCQW3fP21/UnZovKnyyGU=
X-Received: by 2002:aca:4343:: with SMTP id q64mr2600381oia.33.1622127258331;
 Thu, 27 May 2021 07:54:18 -0700 (PDT)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 27 May 2021 09:54:07 -0500
Message-ID: <CAB__hTTVy4-s-eb8n2nOg_=qVzFNt4r8w2hYfGZNYPcCudbP9w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 4URWIILPUU34GIYJ5N3GGHXGOTMQ3TI6
X-Message-ID-Hash: 4URWIILPUU34GIYJ5N3GGHXGOTMQ3TI6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC block and SEP buffer sizes
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4URWIILPUU34GIYJ5N3GGHXGOTMQ3TI6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4844724429799187191=="

--===============4844724429799187191==
Content-Type: multipart/alternative; boundary="00000000000003bbe305c350effb"

--00000000000003bbe305c350effb
Content-Type: text/plain; charset="UTF-8"

I am having some trouble building a custom RFNoC 4 FPGA design and so I am
looking to reduce the footprint. One easy thing to try is to reduce various
buffer sizes such as the ingress buffer size on the streaming endpoint or
the incoming RFNoC block fifo depths.  But, I am wondering if there are
practical lower limits for how small these should be set to. Any comments
on the questions below (or other insights or rules-of-thumb) would be
greatly appreciated. Thanks.
Rob

   - *Stream endpoint ingress buffer size*: "buff_size" parameter for
   endpoint in core yml
      - Is there a practical lower limit?  For example, should it be at
      least MTU size? Does anything bad happen if I set it as low as 256?
      - Are large sizes needed only for SEPs that will accept steaming from
      host? For example if a DDC was connected to its own SEP would
there be any
      need for a large buff_size on that SEP given that the incoming data would
      likely be coming from another FPGA block (i.e., the Radio)?
      - Are large sizes needed only for SEPs that require real-time flow
      (e.g. paths that terminate at a Radio)? For example, even though a Replay
      block accepts data from the host, it may not need real-time flow
if you are
      just pre-storing samples that will later be played out in real-time. For
      this case, is there a practical lower limit for how small we should set
      buff_size?
      - Does the buffer size affect both directions? In other words, are 2
      buffers created: one for the incoming packets from the crossbar
AND one for
      the incoming packets from the static router?
   - *RFNoC block payload_fifo_depth*:
      - Is there a practical lower limit?
      - What is the disadvantage to setting this to one?  My thinking is
      that I don't generally insert a buffer between two AXIS components within
      an RFNoC block so why do I want buffering between two AXIS
components that
      span between two RFNoC blocks?
   - *RFNoC block <context|info>_fifo_depth*:
      - Should this be sized based on the expected packet length and the
      specified payload_fifo_depth?  For example, if I expect incoming
packets of
      1000 samples and set my payload_fifo_depth to 2000 so that I can buffer 2
      packets, should I then set the context or info fifo_depth to be 2?

--00000000000003bbe305c350effb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am having some trouble building a custom RFNoC 4 FP=
GA design and so I am looking to reduce the footprint. One easy thing to tr=
y is to reduce various buffer sizes such as the ingress buffer size on the =
streaming endpoint or the incoming RFNoC block fifo depths.=C2=A0 But, I am=
 wondering if there are practical lower limits for how small these should b=
e set to. Any comments on the questions below (or other insights or rules-o=
f-thumb) would be greatly appreciated. Thanks.=C2=A0</div><div>Rob</div><ul=
><li><b>Stream endpoint ingress buffer size</b>: &quot;buff_size&quot; para=
meter for endpoint in core yml</li><ul><li>Is there a practical lower limit=
?=C2=A0 For example, should it be at least MTU size? Does anything bad happ=
en if I set it as low as 256?</li><li>Are large sizes needed only for SEPs =
that will accept steaming from host? For example if a DDC was connected to =
its own SEP would there be any need for a large buff_size on that SEP given=
 that the incoming data would likely be coming from another FPGA block (i.e=
., the Radio)?</li><li>Are large sizes needed only for SEPs that require re=
al-time flow (e.g. paths that terminate at a Radio)? For example, even thou=
gh a Replay block accepts data from the host, it may not need real-time flo=
w if you are just pre-storing samples that will later be played out in real=
-time. For this case, is there a practical lower limit for how small we sho=
uld set buff_size?</li><li>Does the buffer size affect both directions? In =
other words, are=C2=A02 buffers created: one for the incoming packets from =
the crossbar AND one for the incoming packets from the static router?</li><=
/ul><li><b>RFNoC block payload_fifo_depth</b>:=C2=A0</li><ul><li>Is there a=
 practical lower limit?=C2=A0</li><li>What is the disadvantage to setting t=
his to one?=C2=A0 My thinking is that I don&#39;t generally insert a buffer=
 between two AXIS components within an RFNoC block so why do I want bufferi=
ng between two AXIS components that span between two RFNoC blocks?</li></ul=
><li><b>RFNoC block &lt;context|info&gt;_fifo_depth</b>:=C2=A0</li><ul><li>=
Should this be sized based on the expected packet length and the specified =
payload_fifo_depth?=C2=A0 For example, if I expect incoming packets of 1000=
 samples and set my payload_fifo_depth to 2000 so that I can buffer 2 packe=
ts, should I then set the context or info fifo_depth to be 2?</li></ul></ul=
></div>

--00000000000003bbe305c350effb--

--===============4844724429799187191==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4844724429799187191==--
