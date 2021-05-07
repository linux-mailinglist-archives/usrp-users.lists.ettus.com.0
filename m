Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E83993766FD
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 16:20:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C95B3383EE1
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 10:20:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=umich.edu header.i=@umich.edu header.b="mbkkVFZ7";
	dkim-atps=neutral
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by mm2.emwd.com (Postfix) with ESMTPS id A6A02383E83
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 10:19:24 -0400 (EDT)
Received: by mail-lj1-f180.google.com with SMTP id v6so11774048ljj.5
        for <usrp-users@lists.ettus.com>; Fri, 07 May 2021 07:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03;
        h=mime-version:from:date:message-id:subject:to;
        bh=YaMhVAC1yuMVGBIGVpZRFTwYEkvmY/sL+B/Yiv1u2FU=;
        b=mbkkVFZ7HctvacM7Va0no18am5YMZ61ax2qPecSeM6/1czcXpcVB92X8kz/aYXED7O
         HsnKsFAlfx8PQ775coUqU8pOFVSdrT2XO1+69zGIepwneCAZiKetKe7dnYdOVI6BKRto
         FDk+YQuntjiPXtxyxOHQOYbrqNE0IqVXobv/sgAUBx7Qp1m+t0Pz6u+zz2eVYmQbNKJh
         EfKiPtzqaS0r4s1x0MZxYUzhl3umQGTPyekuTp8ltR7bpfedEUnvrZoX/X0BJsSPyF3A
         vAOSr2Vz3eubGgSMn61Yf3WBwxZReBUS9hG0zc2SDLDJK0YHCCDXGsxqNiJDw5Kiqc06
         4N5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YaMhVAC1yuMVGBIGVpZRFTwYEkvmY/sL+B/Yiv1u2FU=;
        b=pCSG9A2nS4A6WTC8hK6cpYtTeo+A/dPZm2UCHn+DMjwjqnxjFSONDcdoGjAtUnMXv/
         3rfimTjBlujt4MdpF4wpK5gtlBSkMh4tZ4Snt6hJWSiBXrR73t8vAl5yrTs9PKlev/9J
         pEWZHDCU6THSIkz3GRG2HKDavTsFyPO4eJ/b/2fD0pAKsKWVYM+vnDCpCZf7OTaUiQpV
         PEdi0lV4F3n7rasUWf3F4RQ7IBIBbJir2fyhZj1qj+AS7//gmb0f4NISNZEK4WkNR8OW
         kfs+H4QlfIKhieMV4dEEirnwXreuVgjQJrw7i7OBuNKeFW+RxEVP4HlE9KzWmJDi5zWl
         Pxpw==
X-Gm-Message-State: AOAM531/Rj7eFL6InZUWUqZ51ZPxEj4op+Bj0ZjW3K0UWtvHK/JXricb
	GcSvi3ZEqGZZOUsVlmces0AssNr+SDoMRDM+s4/XUfdNnc1yUA==
X-Google-Smtp-Source: ABdhPJwttZw7+JAm/aKQEeVH9kFsLy4rrN6cqJpUXxAU4bQwVVFD6IRsvIJA4+rHuolAR58gUZWsURheXKeoMuwIRVE=
X-Received: by 2002:a2e:8646:: with SMTP id i6mr7953785ljj.391.1620397163222;
 Fri, 07 May 2021 07:19:23 -0700 (PDT)
MIME-Version: 1.0
From: Achilleas Anastasopoulos <anastas@umich.edu>
Date: Fri, 7 May 2021 10:19:09 -0400
Message-ID: <CAErymBh8ud_G-UX50t0Xox12TETNMmgjZcZ8dgmzxJWvMjDxrg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: HOOPTQP6ETEFUZ5IY2BCCK3UJL2N4QCW
X-Message-ID-Hash: HOOPTQP6ETEFUZ5IY2BCCK3UJL2N4QCW
X-MailFrom: anastas@umich.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] usrp sink burst transmission
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HOOPTQP6ETEFUZ5IY2BCCK3UJL2N4QCW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4417482081353213022=="

--===============4417482081353213022==
Content-Type: multipart/alternative; boundary="0000000000004f260505c1be1d6d"

--0000000000004f260505c1be1d6d
Content-Type: text/plain; charset="UTF-8"

I posted the following on discuss gnuradio list but I am also posting here
in case this is more appropriate.
---------------------------------------------------------
Hi all,

I am reading from here:

https://wiki.gnuradio.org/index.php/USRP_Sink

how to do burt transmission with the usrp_sink.
My questions have to do with the second option:

----
Using tagged streams (See Tagged Stream Blocks
<https://wiki.gnuradio.org/index.php/Tagged_Stream_Blocks>). To use this
capability, you must specify which string the usrp_sink block should be
looking for to denote the length of the next PDU to be transmitted. Set the
"tsb_tag_name" parameter in the usrp_sink to whatever string your radio
application uses to denote your PDU length. A commonly used string for this
purpose is simply "tx_pkt_len". If using Tagged Streams for timed bursts,
you must include your "tx_pkt_len" tag and a "tx_time" tag on the first
sample of a tx burst. If your first "tx_pkt_len" tag has an offset of 0,
and your packet length is 1000 items, your next "tx_pkt_len" and "tx_time"
tags must appear with an offset of 1000. TX bursts should not overlap, and
there should not be gaps in samples between bursts.
----

Q1: why do we need two tags to make this happen? I would think that
"tx_pkt_len" tag would be sufficient: when a tag like this is found by the
usrp sink then it waits for that many samples to come in and then it
transmits them in burst mode. Then it waits for the next such tag and so on.
What is the meaning/use of the second tag  "tx_time"?

Q2: Does the "tx_time" tag have to be exactly that name (as opposed to the
"tx_pkt_len" tag which can be user defined?)

Q3: The text above is talking about PDU's but my understanding is that a
PDU is a special type of a PMT, while the USRP sink input has to be a
tagged stream, not a PMT/PDU. Should the input be a PDU (to a message
port?) or should it be a tagged stream?

thanks
Achilleas

--0000000000004f260505c1be1d6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I posted the following on discuss gnuradio list but I=
 am also posting here in case this is more appropriate.</div><div>---------=
------------------------------------------------</div>Hi all,<div><br></div=
><div>I am reading from here:</div><div><br></div><div><a href=3D"https://w=
iki.gnuradio.org/index.php/USRP_Sink" target=3D"_blank">https://wiki.gnurad=
io.org/index.php/USRP_Sink</a><br></div><div><br></div><div>how to do burt =
transmission with the usrp_sink.</div><div>My questions have to do with the=
 second option:</div><div><span style=3D"color:rgb(37,37,37);font-family:sa=
ns-serif;font-size:14px"><br></span></div><div><span style=3D"color:rgb(37,=
37,37);font-family:sans-serif;font-size:14px">----</span></div><div><span s=
tyle=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px">Using ta=
gged streams (See=C2=A0</span><a href=3D"https://wiki.gnuradio.org/index.ph=
p/Tagged_Stream_Blocks" title=3D"Tagged Stream Blocks" target=3D"_blank" st=
yle=3D"color:rgb(6,69,173);font-family:sans-serif;font-size:14px;background=
:none;text-decoration-line:none">Tagged Stream Blocks</a><span style=3D"col=
or:rgb(37,37,37);font-family:sans-serif;font-size:14px">). To use this capa=
bility, you must specify which string the usrp_sink block should be looking=
 for to denote the length of the next PDU to be transmitted. Set the &quot;=
tsb_tag_name&quot; parameter in the usrp_sink to whatever string your radio=
 application uses to denote your PDU length. A commonly used string for thi=
s purpose is simply &quot;tx_pkt_len&quot;. If using Tagged Streams for tim=
ed bursts, you must include your &quot;tx_pkt_len&quot; tag and a &quot;tx_=
time&quot; tag on the first sample of a tx burst. If your first &quot;tx_pk=
t_len&quot; tag has an offset of 0, and your packet length is 1000 items, y=
our next &quot;tx_pkt_len&quot; and &quot;tx_time&quot; tags must appear wi=
th an offset of 1000. TX bursts should not overlap, and there should not be=
 gaps in samples between bursts.=C2=A0</span></div><div><span style=3D"colo=
r:rgb(37,37,37);font-family:sans-serif;font-size:14px">----</span></div><di=
v><span style=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px"=
><br></span></div><div>Q1: why do we need two tags to make this happen? I w=
ould think that=C2=A0 &quot;tx_pkt_len&quot; tag would be sufficient: when =
a tag like this is found by the usrp sink then it waits for that many sampl=
es to come in and then it transmits them in burst mode. Then it waits for t=
he next such tag and so on.</div><div>What is the meaning/use of the second=
 tag=C2=A0 &quot;tx_time&quot;?</div><div><br></div><div>Q2: Does the &quot=
;tx_time&quot; tag have to be exactly that name (as opposed to the &quot;tx=
_pkt_len&quot; tag which can be user defined?)</div><div><br></div><div>Q3:=
 The text above is talking about PDU&#39;s=C2=A0but my understanding is tha=
t a PDU is a special type of a PMT, while the USRP sink input has to be a t=
agged stream, not a PMT/PDU. Should the input be a PDU (to a message port?)=
 or should it be a tagged stream?</div><div><br></div><div>thanks</div><fon=
t color=3D"#888888"><div>Achilleas</div><div><br></div></font></div>

--0000000000004f260505c1be1d6d--

--===============4417482081353213022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4417482081353213022==--
