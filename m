Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ED13FA63A
	for <lists+usrp-users@lfdr.de>; Sat, 28 Aug 2021 16:35:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E046383EE1
	for <lists+usrp-users@lfdr.de>; Sat, 28 Aug 2021 10:34:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="u+c/uDdu";
	dkim-atps=neutral
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D165383DEA
	for <usrp-users@lists.ettus.com>; Sat, 28 Aug 2021 10:34:08 -0400 (EDT)
Received: by mail-ed1-f42.google.com with SMTP id i6so14400858edu.1
        for <usrp-users@lists.ettus.com>; Sat, 28 Aug 2021 07:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VR5WyS5+/ymSy/TUFDzKx+zaFXP+TTDt0HOIW0Iweuw=;
        b=u+c/uDduWYjqZNAO4e9+6A86VsEaxe6+gVLpmLMjfb5Cij5df1FnbIRjr2yqhZBuSe
         zivnCK35wpWn/lUbwS0DHnHNxCK2O68loYRyM49mhVo80p5sPiO3oRAKeY6K6vUMmvCY
         ymhg/BxuyoKednOSyrtopwYlz7nvRr4Fd7sLyc5xfic86r6RmuxqLLs95wSDCSugQ9WN
         MOVr3hFih8YGKgokeOh8IsWPCwYEWRGoO7Skrj0+PatqyOpIz3wtlOdI0T19vF+E6zuS
         +jqAUl6nsq527B83cHBfyd09ILLlxZI1Erl+qLS+mqYPpSMsFhpwIhUkmC1wgQrzsESF
         9p4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VR5WyS5+/ymSy/TUFDzKx+zaFXP+TTDt0HOIW0Iweuw=;
        b=pyZgDZPBNmTqO/0T0wZVQRToxU7+0krEMSODFDdU4HKTxFPuL26RYJWq6SSq78ypjd
         VjCAzBmot3uzpEt5KjtcCj4uWPzsn5ymOHPcJaTce8fmupjA/iXtXdjOoC+IBCp3LuPN
         cJ24v+yTrNHM9JcQ3QWncdJhs6eANJRRQ/t6qAZsaINRuhJU14TabM1126rcNjo6wybU
         TCJ3dkNWLsGwIYxUV8/9aRY5DCZJ4ewZJGN76uXymHVV1prPv5y3Yaqrgdzv2ln3yGgM
         EgLr2p0mXkV+zlnZACsMggWyeg1AXpSDxMJDJopHIGeePr0dFK7BtpvO5Y3vHEgSBb4P
         J+5Q==
X-Gm-Message-State: AOAM532ncvroWYxXBUhOXCtyHrJ3WSBuhl/a5qq9DyurvjhB09uEtU9T
	z8b8o4/p8rZ5pXY0tCOgw8baToCwqwwY6Op1wk+MreXj+Nk=
X-Google-Smtp-Source: ABdhPJy2wf1Yfw4m7NBzjZOXZu4trcaJTV8XajOuioSRPHvcd9YnS/clyVeQtPUdC/4AeqbRRr9owu3MW+HtrtO/LNU=
X-Received: by 2002:aa7:c4ce:: with SMTP id p14mr9005509edr.175.1630161246654;
 Sat, 28 Aug 2021 07:34:06 -0700 (PDT)
MIME-Version: 1.0
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Sat, 28 Aug 2021 16:33:54 +0200
Message-ID: <CAFPzw1kv2oBkopydhePAEJEBmHD-U6oSdnZRyNkrM4Wnr0CEvA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: MNG5CD23MXQE3IQLSNY325KNEQER7MZ6
X-Message-ID-Hash: MNG5CD23MXQE3IQLSNY325KNEQER7MZ6
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MNG5CD23MXQE3IQLSNY325KNEQER7MZ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1097273029292785030=="

--===============1097273029292785030==
Content-Type: multipart/alternative; boundary="0000000000000892c905ca9f7e4a"

--0000000000000892c905ca9f7e4a
Content-Type: text/plain; charset="UTF-8"

Hello,

After updating the complete system to the new version of UHD I am
experiencing errors with the radio modules of the boards. I have two X310s
equipped with two TwinRx each, so I get 8 reception channels.
Previously it worked with Ubuntu 16.04 LTS, UHD 3.11 and I have updated the
system to a version Ubuntu 20.04, UHD 4.1.0 and GNU Radio 3.9.

When I run GNU Radio with the uhd_fft example I get the following error:

*Generating: '/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py'*



*Executing: /usr/bin/python3 -u
/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py*



*[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
UHD_4.1.0.HEAD-0-gd21735d5*

*[INFO] [X300] X300 initialization sequence...*

*[INFO] [X300] Maximum frame size: 8000 bytes.*

*[INFO] [X300] Maximum frame size: 8000 bytes.*

*[INFO] [X300] Radio 1x clock: 200 MHz*

*[INFO] [MULTI_USRP]     1) catch time transition at pps edge*

*[INFO] [MULTI_USRP]     2) set times next pps (synchronously)*

*Exception in thread Thread-1:*

*Traceback (most recent call last):*

*  File "/usr/lib/python3.8/threading.py", line 932, in _bootstrap_inner*

*Exception in thread Thread-2:*

*Traceback (most recent call last):*

*  File "/usr/lib/python3.8/threading.py", line 932, in _bootstrap_inner*

*    self.run()*

*  File "/usr/lib/python3.8/threading.py", line 870, in run*

*    self._target(*self._args, **self._kwargs)*

*  File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line 427, in
_current_freq_c_probe*

*        self.run()*

*  File "/usr/lib/python3.8/threading.py", line 870, in run*

*val = self.uhd_usrp_source_0.get_sensor("'lo_locked'")*

*RuntimeError:     self._target(*self._args, **self._kwargs)*

*LookupError: Path not found in tree:
/blocks/0/Radio#0/dboard/rx_frontends/0/sensors/'lo_locked'*

*  File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line 442, in
_chan0_lo_locked_probe*

*    val = self.uhd_usrp_source_0.get_sensor("'lo_locked'")*

*RuntimeError: LookupError: Path not found in tree:
/blocks/0/Radio#0/dboard/rx_frontends/0/sensors/'lo_locked'*

*[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.*

*[WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.*

*O[WARNING] [0/Radio#1] Cannot process RX-related async message to invalid
chan 1*

*[WARNING] [0/Radio#0] Cannot process RX-related async message to invalid
chan 1*

*ODgr::log :ERROR: usrp_source0 - In the last 10580 ms, 81 overflows
occurred.*

*DOO[WARNING] [0/Radio#1] Cannot process RX-related async message to
invalid chan 1*

*[WARNING] [0/Radio#0] Cannot process RX-related async message to invalid
chan 1*

*Dgr::log :ERROR: usrp_source0 - In the last 6071 ms, 3 overflows occurred.*

*Dgr::log :ERROR: usrp_source0 - In the last 3055 ms, 2 overflows occurred.*

*Traceback (most recent call last):*

*  File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line 130, in
<lambda>*

*    lambda:
self.set_freq_c(eng_notation.str_to_num(str(self._freq_c_line_edit.text()))))*

*  File "/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py", line 553, in
set_freq_c*

*    self.uhd_usrp_source_0.set_center_freq(float(self.freq_c), 4)*

*RuntimeError: LookupError: KeyError: Invalid RX channel: 304*

*OO[WARNING] [0/Radio#1] Cannot process RX-related async message to invalid
chan 1*

*[WARNING] [0/Radio#0] Cannot process RX-related async message to invalid
chan 1*

*gr::log :ERROR: usrp_source0 - In the last 9181 ms, 1 overflows occurred.*

*gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

*gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

*gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

*gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*

*gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:
ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
*gr::log :WARN: usrp_source0 - USRP Source Block caught rx error:*
*ERROR_CODE_ALIGNMENT (Multi-channel alignment failed)*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*
*[ERROR] [STREAMER] The rx streamer failed to time-align packets.*

When executing the codes that I had for the old version with C++ I get a
similar error for high sample rates. Also, with high bandwidths and sample
rates, such as 25MHz, I get overflow regardless of the acquisition time. If
I compare the messages that I got in the old version of UHD with what I
currently get, I can see that before each radio module worked at 100MHz,
while now they work at 200MHz.

Before:

*[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
MHz. Actual rate is: 100 MHz.*

After:

*[INFO] [X300] Radio 1x clock: 200 MHz*


 I don't know if this could be a possible cause of the problem and if that
is the case, I don't know how I can solve the problem since I tried to
change the master clock to a lower one and it gave me an error when trying
to change it.

With low sample rates like 2MHz I can perform the acquisition without
getting errors, although the number of samples received by the command
"rx_stream-> recv (p, max_samps_per_buff, md, timeout)" is not constant in
each iteration.

Any suggestions? Thanks in advance.

Regards,
Anabel

--0000000000000892c905ca9f7e4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>After updating the complete system to the ne=
w version of UHD I am experiencing errors with the radio modules of the boa=
rds. I have two X310s equipped with two TwinRx each, so I get 8 reception c=
hannels.<br>Previously it worked with Ubuntu 16.04 LTS, UHD 3.11 and I have=
 updated the system to a version Ubuntu 20.04, UHD 4.1.0 and GNU Radio 3.9.=
<br><br>When I run GNU Radio with the uhd_fft example I get the following e=
rror:<div><br></div><div><p class=3D"gmail-Standard" style=3D"margin:0cm 0c=
m 0.0001pt;font-size:12pt;font-family:&quot;Liberation Serif&quot;,serif"><=
span lang=3D"EN-US"><b>Generating:
&#39;/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py&#39;</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Ex=
ecuting:
/usr/bin/python3 -u /home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py</b><=
/span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[I=
NFO] [UHD]
linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-gd21735d5</b><=
/span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[I=
NFO]
[X300] X300 initialization sequence...</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[I=
NFO]
[X300] Maximum frame size: 8000 bytes.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[I=
NFO]
[X300] Maximum frame size: 8000 bytes.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[I=
NFO]
[X300] Radio 1x clock: 200 MHz</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[I=
NFO]
[MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 1) catch time transition
at pps edge</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[I=
NFO]
[MULTI_USRP]=C2=A0=C2=A0=C2=A0=C2=A0 2) set times next pps
(synchronously)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Ex=
ception in
thread Thread-1:</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Tr=
aceback
(most recent call last):</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File
&quot;/usr/lib/python3.8/threading.py&quot;, line 932, in _bootstrap_inner<=
/b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Ex=
ception in
thread Thread-2:</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Tr=
aceback
(most recent call last):</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File
&quot;/usr/lib/python3.8/threading.py&quot;, line 932, in _bootstrap_inner<=
/b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0=C2=A0=C2=A0 self.run()</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File
&quot;/usr/lib/python3.8/threading.py&quot;, line 870, in run</b></span></p=
>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0=C2=A0=C2=A0 self._target(*self._args, **self._kwargs)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File &quot;/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py&quot;,
line 427, in _current_freq_c_probe</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.run()</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File
&quot;/usr/lib/python3.8/threading.py&quot;, line 870, in run</b></span></p=
>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>va=
l =3D
self.uhd_usrp_source_0.get_sensor(&quot;&#39;lo_locked&#39;&quot;)</b></spa=
n></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Ru=
ntimeError:=C2=A0=C2=A0=C2=A0=C2=A0 self._target(*self._args, **self._kwarg=
s)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Lo=
okupError:
Path not found in tree:
/blocks/0/Radio#0/dboard/rx_frontends/0/sensors/&#39;lo_locked&#39;</b></sp=
an></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File
&quot;/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py&quot;, line 442, i=
n
_chan0_lo_locked_probe</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0=C2=A0=C2=A0 val =3D
self.uhd_usrp_source_0.get_sensor(&quot;&#39;lo_locked&#39;&quot;)</b></spa=
n></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Ru=
ntimeError:
LookupError: Path not found in tree:
/blocks/0/Radio#0/dboard/rx_frontends/0/sensors/&#39;lo_locked&#39;</b></sp=
an></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[W=
ARNING]
[0/Radio#0] Attempting to set tick rate to 0. Skipping.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[W=
ARNING]
[0/Radio#1] Attempting to set tick rate to 0. Skipping.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>O[=
WARNING]
[0/Radio#1] Cannot process RX-related async message to invalid chan 1</b></=
span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[W=
ARNING]
[0/Radio#0] Cannot process RX-related async message to invalid chan 1</b></=
span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>OD=
gr::log
:ERROR: usrp_source0 - In the last 10580 ms, 81 overflows occurred.</b></sp=
an></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>DO=
O[WARNING]
[0/Radio#1] Cannot process RX-related async message to invalid chan 1</b></=
span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[W=
ARNING]
[0/Radio#0] Cannot process RX-related async message to invalid chan 1</b></=
span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Dg=
r::log
:ERROR: usrp_source0 - In the last 6071 ms, 3 overflows occurred.</b></span=
></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Dg=
r::log
:ERROR: usrp_source0 - In the last 3055 ms, 2 overflows occurred.</b></span=
></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Tr=
aceback
(most recent call last):</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File
&quot;/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py&quot;, line 130, i=
n
&lt;lambda&gt;</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0=C2=A0=C2=A0 lambda:
self.set_freq_c(eng_notation.str_to_num(str(self._freq_c_line_edit.text()))=
))</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0 File &quot;/home/rack_2021/Escritorio/GNU_Radio_ok/uhd_fft.py&quot;,
line 553, in set_freq_c</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>=
=C2=A0=C2=A0=C2=A0
self.uhd_usrp_source_0.set_center_freq(float(self.freq_c), 4)</b></span></p=
>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>Ru=
ntimeError:
LookupError: KeyError: Invalid RX channel: 304</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>OO=
[WARNING]
[0/Radio#1] Cannot process RX-related async message to invalid chan 1</b></=
span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[W=
ARNING]
[0/Radio#0] Cannot process RX-related async message to invalid chan 1</b></=
span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>gr=
::log
:ERROR: usrp_source0 - In the last 9181 ms, 1 overflows occurred.</b></span=
></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>gr=
::log
:WARN: usrp_source0 - USRP Source Block caught rx error: ERROR_CODE_ALIGNME=
NT
(Multi-channel alignment failed)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>gr=
::log
:WARN: usrp_source0 - USRP Source Block caught rx error: ERROR_CODE_ALIGNME=
NT
(Multi-channel alignment failed)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>gr=
::log
:WARN: usrp_source0 - USRP Source Block caught rx error: ERROR_CODE_ALIGNME=
NT
(Multi-channel alignment failed)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>gr=
::log
:WARN: usrp_source0 - USRP Source Block caught rx error: ERROR_CODE_ALIGNME=
NT
(Multi-channel alignment failed)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>gr=
::log
:WARN: usrp_source0 - USRP Source Block caught rx error: ERROR_CODE_ALIGNME=
NT
(Multi-channel alignment failed)</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<span lang=3D"EN-US" style=3D"font-size:12pt;font-family:&quot;Liberation S=
erif&quot;,serif"><b>gr::log
:WARN: usrp_source0 - USRP Source Block caught rx error:</b></span></div><d=
iv><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:&quot;Liberatio=
n Serif&quot;,serif"><span style=3D"font-size:12pt"><b>ERROR_CODE_ALIGNMENT=
 (Multi-channel alignment
failed)</b></span></span></div><p class=3D"gmail-Standard" style=3D"margin:=
0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation Serif&quot;,se=
rif"><span lang=3D"EN-US"><b>[ERROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<p class=3D"gmail-Standard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt=
;font-family:&quot;Liberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[E=
RROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span></p>

<div><span lang=3D"EN-US" style=3D"font-size:12pt;font-family:&quot;Liberat=
ion Serif&quot;,serif"><span style=3D"font-size:12pt"><b>[ERROR]
[STREAMER] The rx streamer failed to time-align packets.</b></span>=C2=A0</=
span><br></div><div><br></div><div>When executing the codes that I had for =
the old version with C++ I get a similar error for high sample=C2=A0rates. =
Also, with high bandwidths and sample rates, such as 25MHz, I get overflow =
regardless of the acquisition time.=C2=A0If I compare the messages that I g=
ot in the old version of UHD with what I currently get, I can see that befo=
re each radio module worked at 100MHz, while now they work at 200MHz.</div>=
<div><br></div><div>Before:</div><div><p class=3D"gmail-Standard" style=3D"=
margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation Serif&q=
uot;,serif"><span lang=3D"EN-US"><b>[WARNING]
[X300 RADIO] Requesting invalid sampling rate from device: 200 MHz. Actual =
rate is: 100 MHz.</b></span></p><p class=3D"gmail-Standard" style=3D"margin=
:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation Serif&quot;,s=
erif"><span lang=3D"EN-US">After:</span></p></div><div><p class=3D"gmail-St=
andard" style=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;L=
iberation Serif&quot;,serif"><span lang=3D"EN-US"><b>[INFO]
[X300] Radio 1x clock: 200 MHz</b></span></p><p class=3D"gmail-Standard" st=
yle=3D"margin:0cm 0cm 0.0001pt;font-size:12pt;font-family:&quot;Liberation =
Serif&quot;,serif"><span lang=3D"EN-US"><br></span></p></div><div>=C2=A0I d=
on&#39;t know if this could be a possible cause of the problem and if that =
is the case, I don&#39;t know how I can solve the problem since I tried to =
change the master clock to a lower one and it gave me an error when trying =
to change it.<br></div><div><br></div><div>With low sample rates like 2MHz =
I can perform the acquisition without getting errors, although the number o=
f samples received by the command &quot;rx_stream-&gt; recv (p, max_samps_p=
er_buff, md, timeout)&quot; is not constant in each iteration.<br></div><di=
v><br></div><div>Any suggestions?=C2=A0Thanks in advance.<br></div><div><br=
></div><div>Regards,</div><div>Anabel</div></div>

--0000000000000892c905ca9f7e4a--

--===============1097273029292785030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1097273029292785030==--
