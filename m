Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5AF3D668E
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 20:15:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1031938441A
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jul 2021 14:15:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="CNP9ebpA";
	dkim-atps=neutral
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 00709384413
	for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 14:14:13 -0400 (EDT)
Received: by mail-wm1-f46.google.com with SMTP id o5-20020a1c4d050000b02901fc3a62af78so34436wmh.3
        for <usrp-users@lists.ettus.com>; Mon, 26 Jul 2021 11:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=GpG3uXeoUlWArPGmihA/O/rHr6J82gwk30O6ozXRA/I=;
        b=CNP9ebpAR9NqJc5kKvuPM3T7EZCs+jzam2h3arOe8GWFFu5V0i4h96LwMYzA0WH9Rt
         aV5rGNlLMpIgSwR4IWIPaKPZ5szfF6JErjaMam4k76SQ79ZrYDU+4PplIDX+E3iEZaG0
         fIqYEUjS77P/Jn/hs6NtLA8XmJsLZooDCIcl7+LbEfaGDd7KYA00tm4aOOv0qOQEDFLY
         9BvzK3xGTZGvxJIVH2hTzLK2V1qLfImezzEMKJWjwDnZCZ9nGZ3tLHukdUDw3dH1BMZQ
         EIHiHBHDa85eUOFrIj2zCwSVDX7VONMQVIC+MtF//BiNqyuahYmEfl6lbFZ8WVB+wAw3
         6oXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GpG3uXeoUlWArPGmihA/O/rHr6J82gwk30O6ozXRA/I=;
        b=cf2S9Vq6Ic6qFuajB9wwBTuSR8ykuTzw4rUrEh1/Zoa8GwCg1c0B7rBAJYiXQ7DP9T
         SttICP6pArdhnGcPdIiX9qqHZptUrYX0ENxRrHkQafBkVAj3e8Gl0lILndIsNe5+xNxV
         Q4zHEbV4Dz0umj4enkHOY85oXaXf7dWbw3hr8EPFdB8ue9xvOukhxsGHwV1I2hvPRQ+D
         b/RidDNr4IKO2lpqUizkvO/P2piYi17wSYtfLcSc7Xsof9PRaQIi2Pj0PeS73CUpW3c3
         7eN2U9z01uJc8M7IB/wvV+FABV8dTiH+C9WLjhe5pjaCGfjV+tW8jWlHFWsUbfeAjY/L
         HY0g==
X-Gm-Message-State: AOAM531PUza9014Su0L4FAgA3ynetboISPwDq1sbZLgnsVDHnCun+/FZ
	RUvtC/nQ7+ea5ER9A0LUV1+URZcl4xCxtV6v08w1Dil6G65jsg==
X-Google-Smtp-Source: ABdhPJxMMqNV15rQODiLNBclkG3ywenNOeVC68kgVZK+4tpJxWrYehk8d2B2imy23qu9PNODnQmhQZlokUgoTc0JMuU=
X-Received: by 2002:a1c:7314:: with SMTP id d20mr18024875wmb.167.1627323252474;
 Mon, 26 Jul 2021 11:14:12 -0700 (PDT)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Mon, 26 Jul 2021 20:14:00 +0200
Message-ID: <CAKHaR3nZ8fQwk2w7LcftadY4RX8HwH0ikFOxXyU=FYc7HaywJQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: YBXN4O4ZN7F5XLWAWBBXCPT2T4ZNVUHT
X-Message-ID-Hash: YBXN4O4ZN7F5XLWAWBBXCPT2T4ZNVUHT
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] routing ethernet packets to different destinations
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBXN4O4ZN7F5XLWAWBBXCPT2T4ZNVUHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8187471332488382140=="

--===============8187471332488382140==
Content-Type: multipart/alternative; boundary="000000000000661f2105c80ab812"

--000000000000661f2105c80ab812
Content-Type: text/plain; charset="UTF-8"

Hi,
i designed a block in UHD 4.0 that generates packets that have to be
demultiplexed and sent to different IP/ports. initially i started muxing
these packets within a stream and then in the gnuradio graph i added a
demux block that dispatches these to UDP sockets. The issue is that i
wanted to run the graph on the N310 arm processor and it seems unable to
sustain the datarate, albeit it's not that high.
at this point it would make a lot of sense to modify the FPGA to be able to
send packets directly to the destination IP/port so i studied a bit but am
not sure i got the full picture.
i understand that CHDR packets are routed to a crossbar that then passes
data to chdr_xport_adapter_generic which in turn maps dst_epid to the
proper IP/port/MAC address.
i also understand that these are written in the kv_map by issuing advertise
operations so was wondering if the "easy" way to do what i want is to
generate CHDR packets with advertise operations from my block so that at
each packet i can change the routing and feed data to a different port.
of course doing so would likely break the graph as i would not be receiving
response packets anymore so maybe rather than doing so i was thinking to
modify the code so that my outgoing packets could have different virtual
channels and use them to identify the destination port.
may i have any suggestion on how to proceed? it seems to me there may be
some easy way to do that but am not getting a clear picture yet.
thanks,

Dario Pennisi

--000000000000661f2105c80ab812
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>i designed a block in UHD 4.0 tha=
t generates packets that have to be demultiplexed and sent to different IP/=
ports. initially i started muxing these packets within a stream and then in=
 the gnuradio graph i added a demux block that dispatches these to UDP sock=
ets. The issue is that i wanted to run the graph on the N310 arm processor =
and it seems unable to sustain the datarate, albeit it&#39;s not that high.=
</div><div>at this point it would make a lot of sense to modify the FPGA to=
 be able to send packets directly to the destination IP/port so i studied a=
 bit but am not sure i got the full picture.</div><div>i understand that CH=
DR packets are routed to a crossbar that then passes data to=C2=A0chdr_xpor=
t_adapter_generic which in turn maps dst_epid to the proper IP/port/MAC add=
ress.</div><div>i also understand that these are written in the kv_map by i=
ssuing advertise operations so was wondering if the &quot;easy&quot; way to=
 do what i want is to generate CHDR packets with advertise operations from =
my block so that at each packet i can change the routing and feed data to a=
 different port.</div><div>of course doing so would likely break the graph =
as i would not be receiving response packets anymore so maybe rather than d=
oing so i was thinking to modify the code so that my outgoing packets could=
 have different virtual channels and use them to identify the destination p=
ort.</div><div>may i have any suggestion on how to proceed? it seems to me =
there may be some easy way to do that but am not getting a clear picture ye=
t.</div><div>thanks,</div><div><br clear=3D"all"><div><div dir=3D"ltr" clas=
s=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font=
-family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br sty=
le=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">=
<br></div></div></div></div></div></div>

--000000000000661f2105c80ab812--

--===============8187471332488382140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8187471332488382140==--
