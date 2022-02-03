Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A969D4A80A4
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 09:52:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DA48385013
	for <lists+usrp-users@lfdr.de>; Thu,  3 Feb 2022 03:52:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AN6N8hcj";
	dkim-atps=neutral
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A007A384AF0
	for <usrp-users@lists.ettus.com>; Thu,  3 Feb 2022 03:51:53 -0500 (EST)
Received: by mail-ej1-f45.google.com with SMTP id h7so6422028ejf.1
        for <usrp-users@lists.ettus.com>; Thu, 03 Feb 2022 00:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=O+ST2iL32i4I9PZkLs/vhVp2lp+eeV2vlJOBKNLOJCM=;
        b=AN6N8hcj0MRG+vXvMrtgQxlOsypa6pQLM/AITwXzWOUGLcVVfNS/o3bQ+zmtIvCc1/
         bm3sK2zScKdqKC35AdQ8SwB/oNd4ProLVvydIcS5YnMHyeypJ7OlqCzXk+TvO4kW4od4
         fQJeAHBI5jColmpBa4qri2CqSuygWT/PvG9LD66lVVPqfUooWFFwEHrpKGfKQe9FCT/I
         qN/yuQlv959sGZ2KWP/2CHHhWSROnELU4IwHkh4OeWnUYWHl66lMLF4X9FaquoeEuu01
         2M3q/KTWkMI7m1E2r/Am4cJuxkyWNQ5ArOI8y2+Mqd3BK+nhN94NtqBIGKw8NTQ2wZ2W
         0tPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=O+ST2iL32i4I9PZkLs/vhVp2lp+eeV2vlJOBKNLOJCM=;
        b=k3RPc0n5ZkHS2MK7rPJTDl9R3vW5pqlkNCXY0vqznQ9AEIu8odmsFhyYt/Jvn/7yTl
         rlPhJrlRhd9uhP2I3h5On7n6NvZImj3rgq69O82Pk91IkHmcIrj2loG1BKcrWIVZfkLk
         sGrGxlePE4QJZofXrre5LEyRpI2K6BVEQLGkecD3dDzLUypHugkZ2sn7OHQFoi0P4Y8M
         LEnH62cQNcAIyRmXQIlazma66poJAefgrtZEZGGwpKJ3hIyf+PA6fC+2jxkKk/8dUYqX
         01u/XH0obWbTARVc9B17O55GiLsfxbfDgHC/VbbS5D7Xo9vC3N5Ptv3pmDLOmvlTbZb5
         ht1Q==
X-Gm-Message-State: AOAM533w9EJ52OdtWD4n8rvqrxW+s6ioU8EwsgC1ppQaptUWd81NPV61
	3YdNttuQYqNuBG3o96sG1Fb6m2jYiK/rVWPahYrJ1EWB
X-Google-Smtp-Source: ABdhPJwBruPgOcf/aLJqmZQrf5S+rHsnx0cJ64saw3XoYCIP3lxxL/JCXLfc74mzeXG6YYQEt5TG7pMKaME4IYh8rAw=
X-Received: by 2002:a17:906:58d4:: with SMTP id e20mr28817035ejs.258.1643878312033;
 Thu, 03 Feb 2022 00:51:52 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 3 Feb 2022 09:51:40 +0100
Message-ID: <CAG16vQUbO2QpGdVcVA+xhGUdckoLGb3NHvf4vN1Yzr8Ya1PUeg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YWLAQQPQVPA5HINT6Y6PC7NO3S56ZU2Z
X-Message-ID-Hash: YWLAQQPQVPA5HINT6Y6PC7NO3S56ZU2Z
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Transmit 2 tx channels with USRP E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YWLAQQPQVPA5HINT6Y6PC7NO3S56ZU2Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6275909324456837437=="

--===============6275909324456837437==
Content-Type: multipart/alternative; boundary="000000000000d7c43805d7193e14"

--000000000000d7c43805d7193e14
Content-Type: text/plain; charset="UTF-8"

Hi all,

I try to transmit a signal through an RFNoC Radio TX block in a USRP E320.
I am using UHD 4.0 and GNURadio 3.8.
My flowgraph in Gnuradio is something like this:

Host block => RFNoC tx Streamer => RFNoC custom block => RFNoC DUC => RFNoC
tx radio

When I test this graph with "number of ports" = 1 both in DUC and Radio,
the flowgraph works properly and I can transmit data through the radio (red
light on channel 0 is lighted), but when I set the number of ports to 2
both in DUC and Radio TX, no data come out to any of the TX/RX radio
channels (leds are off). GNURadio doesn't report any errors.

The radio block does not have a parameter to select a channel, I have
assumed that in0 corresponds to RF A Rx/Tx channel (E320 front panel) and
in1 to RF B: RX/TX. Do I have to specified channels somehow? Am I missing
something?

Kind Regards,

Maria.

--000000000000d7c43805d7193e14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><div><br></div><div>I try to transmit a signal =
through an RFNoC Radio TX block in a USRP E320. I am using UHD 4.0 and GNUR=
adio 3.8.<br>My flowgraph in Gnuradio is something=C2=A0like this:</div><di=
v><br>Host block =3D&gt; RFNoC tx Streamer =3D&gt; RFNoC custom block =3D&g=
t; RFNoC DUC =3D&gt; RFNoC tx radio</div><div><br></div><div>When I test th=
is graph with &quot;number of ports&quot; =3D 1 both in DUC and Radio, the =
flowgraph works properly and I can transmit data through the radio (red lig=
ht on channel 0 is lighted), but when I set the number of ports to 2 both i=
n DUC and Radio TX, no data come out to any of the TX/RX radio channels (le=
ds are off). GNURadio doesn&#39;t report any errors.</div><div><br></div><d=
iv>The radio block does not have a parameter to select a channel, I have as=
sumed that in0 corresponds to RF A Rx/Tx channel (E320 front panel) and in1=
 to RF B: RX/TX. Do I have to specified channels somehow? Am I missing some=
thing?</div><div><br></div><div>Kind Regards,</div><div><br></div><div>Mari=
a.</div></div>

--000000000000d7c43805d7193e14--

--===============6275909324456837437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6275909324456837437==--
