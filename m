Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D49E3F2106
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 21:45:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFB1338408E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 15:45:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lev0DGtm";
	dkim-atps=neutral
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by mm2.emwd.com (Postfix) with ESMTPS id CEE06383FBE
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 15:44:55 -0400 (EDT)
Received: by mail-il1-f181.google.com with SMTP id z2so7166374iln.0
        for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 12:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=o86gFFEMDM/LCp1TWXHFQDBmDnpn8fVBWrOwiFZw4/Y=;
        b=Lev0DGtmCEePFnax+2Zw/OLBRP+VNoK5NDNaAfSGrGkgp84/AjabUPZfe5atTijH1g
         cg3mrsaTjI45aCWLU4Jm3YeDKe2zN1jRdCc/92QXk3mZqgmSi/gUXpFdmClclvEAz2ZV
         ylAph3FeXdjD3Qn3jyojTeirYUI/fB6XwXnyLTpe578Xzz6Dcbw0ULxTK7iDzbgRsg6h
         JHokJtAxIOHGls3j/GqDZei/E3NdbnnwzUo5Sh/jTYa+AGXqXm+xscApQ7Q+MyhMwOlv
         wMnVlN1Rp4HRvHkBGe3crqNpWOkE+2m11ZjGqUi4IvtxfMbTWp93/IN3ipayxYmq4/bI
         +r4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=o86gFFEMDM/LCp1TWXHFQDBmDnpn8fVBWrOwiFZw4/Y=;
        b=i/JWcdGuTQ5fiLYkLIEiMD2oohdL7S8dfSdQ9bXuluKnl6SRwlc53EnNUCg+p/Wtj1
         GwkEMrBfhUauv3FvV/5ejRYsUgWwW6s+nzNNcMoO5dsGbFMyYuxzUn+IsJ2BP+Qvaobw
         3ejV1IWRLdKoyT55B7oUMNWCGwG0eugoHpQ/ph7ycwLP9x5H3+gre78ffFO/J0QS8inS
         I4JYZGbcHgjv62+4xa0cJlnWj/4M5+x34soIhtAEfPJXSRfGrytBe1vFbGPnXyuO0dWw
         sQo3Az6jmpx8M5vNz2QkQhXdNEjf3waYc56oXEoLxHYMc9ILjjGpxN+PVxJCqAyh7d/H
         zGxQ==
X-Gm-Message-State: AOAM530+brJJIfLyDZsgP1srmEag+Nojx9TxfVHenFUjXX/loJJcjWYM
	SiolKgXiESO64DN14IHX4QywerbO7bd4yxDEv2nKzOC6tUg=
X-Google-Smtp-Source: ABdhPJyaF0jdTXyqfq126TQoMfmbmokk6PWVx72KlKxet12ackVM28sAcsIG0VQt5rmNVPEbQ5oCxQQQAiVF02g3EVs=
X-Received: by 2002:a92:c08a:: with SMTP id h10mr10661081ile.202.1629402295105;
 Thu, 19 Aug 2021 12:44:55 -0700 (PDT)
MIME-Version: 1.0
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Thu, 19 Aug 2021 22:44:44 +0300
Message-ID: <CAPRRyxveoNKnsVmSq8fkUL8a8w3aex4EwYB9EJtpdREaT-HQLw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: QKJTJCGVBWTUV3W55MASXLNOBO7OEZYZ
X-Message-ID-Hash: QKJTJCGVBWTUV3W55MASXLNOBO7OEZYZ
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?=D0=A1reate_fpga_USRP_E310uhd_4=2E1?=
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QKJTJCGVBWTUV3W55MASXLNOBO7OEZYZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8551483634911938947=="

--===============8551483634911938947==
Content-Type: multipart/alternative; boundary="000000000000ff018105c9eec8cf"

--000000000000ff018105c9eec8cf
Content-Type: text/plain; charset="UTF-8"

Hello, I want to create an RFnoC with an FFT block for E310. Here is
my section of the yml file for it:
stream_endpoints:
  ep0:                       # Stream endpoint name
    ctrl: True                      # Endpoint passes control traffic
    data: True                      # Endpoint passes data traffic
    buff_size: 16384                # Ingress buffer size for data


# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  radio0:                            # NoC block name
    block_desc: 'radio_1x64.yml'     # Block device descriptor
fft0:                          # FFT block name
       block_desc: 'fft_1x64.yml'   # Block YAML descriptor file
       parameters:

         EN_FFT_SHIFT: 1
# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
#         - srcblk  = Source block to connect
#         - srcport = Port on the source block to connect
#         - dstblk  = Destination block to connect
#         - dstport = Port on the destination block to connect
connections:
  # radio0(0) to ep0 - RF0 RX
  - { srcblk: radio0, srcport: out_0, dstblk: fft0, dstport: in_0 }
  - { srcblk: fft0,   srcport: out_0, dstblk: ep0, dstport: in0  }
  # radio0(1) to ep1 - RF1 RX
  #- { srcblk: radio0, srcport: out_1, dstblk: ep0,   dstport: in_1 }

# A list of all clock domain connections in design
# ------------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the
following keys
#         - srcblk  = Source block to connect (Always "_device"_)
#         - srcport = Clock domain on the source block to connect
#         - dstblk  = Destination block to connect
#         - dstport = Clock domain on the destination block to connect
clk_domains:
  - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
  - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: fft0, dstport: ce }

Here is my mistake. Tell me what I'm doing wrong. Perhaps I do not
fully understand the architecture of creating files.

ERR] 2 Unresolved connection(s)
[ERR]     (radio0-out_0 -> fft0-in_0)
[ERR]     (fft0-out_0 -> ep0-in0)
[INF]         (('radio0', 'ctrl_port', 'master'),)
[INF]         (('radio0', 'time_keeper', 'listener'),)
[INF]         (('radio0', 'radio_iface', 'slave'),)
[INF]         (('_device_', 'ctrlport_radio', 'slave'),)
[INF]         (('_device_', 'time_keeper', 'broadcaster'),)
[INF]         (('_device_', 'x300_radio', 'master'),)

--000000000000ff018105c9eec8cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre class=3D"gmail-tw-data-text gmail-tw-text-large gmail=
-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:left" =
dir=3D"ltr"><span style=3D"font-family:tahoma,sans-serif"><span class=3D"gm=
ail-Y2IQFc" lang=3D"en">Hello, I want to create an RFnoC with an FFT block =
for E310. Here is my section of the yml file for it:<br>stream_endpoints:<b=
r>=C2=A0 ep0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Stream endpoint name<br>=C2=A0 =C2=A0 ctrl: True =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# End=
point passes control traffic<br>=C2=A0 =C2=A0 data: True =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passe=
s data traffic<br>=C2=A0 =C2=A0 buff_size: 16384 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br><br>=C2=A0=
 <br># A list of all NoC blocks in design<br># ----------------------------=
------<br>noc_blocks:<br>=C2=A0 radio0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# NoC block n=
ame<br>=C2=A0 =C2=A0 block_desc: &#39;radio_1x64.yml&#39; =C2=A0 =C2=A0 # B=
lock device descriptor<br>fft0: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# FFT block name<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0block_desc: &#39;fft_1x64.yml&#39; =C2=A0 # Block YAML =
descriptor file<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0parameters:<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0EN_FFT_SHIFT: 1<br># A list of all static=
 connections in design<br># ------------------------------------------<br>#=
 Format: A list of connection maps (list of key-value pairs) with the follo=
wing keys<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcblk =C2=A0=3D Source block =
to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =3D Port on the sourc=
e block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D Dest=
ination block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D Por=
t on the destination block to connect<br>connections:<br>=C2=A0 # radio0(0)=
 to ep0 - RF0 RX<br>=C2=A0 - { srcblk: radio0, srcport: out_0, dstblk: fft0=
, dstport: in_0 }<br>=C2=A0 - { srcblk: fft0, =C2=A0 srcport: out_0, dstblk=
: ep0, dstport: in0 =C2=A0}<br>=C2=A0 # radio0(1) to ep1 - RF1 RX<br>=C2=A0=
 #- { srcblk: radio0, srcport: out_1, dstblk: ep0, =C2=A0 dstport: in_1 }<b=
r><br># A list of all clock domain connections in design<br># -------------=
-----------------------------------<br># Format: A list of connection maps =
(list of key-value pairs) with the following keys<br># =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 - srcblk =C2=A0=3D Source block to connect (Always &quot;_device&qu=
ot;_)<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - srcport =3D Clock domain on the so=
urce block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstblk =C2=A0=3D D=
estination block to connect<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 - dstport =3D =
Clock domain on the destination block to connect<br>clk_domains:<br>=C2=A0 =
- { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }<br>=
=C2=A0 - { srcblk: _device_, srcport: rfnoc_chdr, dstblk: fft0, dstport: ce=
 }<br></span></span></pre><div class=3D"gmail-oSioSc"><div id=3D"gmail-tw-t=
arget"><div id=3D"gmail-kAz1tf" class=3D"gmail-g9WsWb"><div class=3D"gmail-=
tw-ta-container gmail-F0azHf gmail-tw-nfl" id=3D"gmail-tw-target-text-conta=
iner" tabindex=3D"0"><pre class=3D"gmail-tw-data-text gmail-tw-text-large g=
mail-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" style=3D"text-align:le=
ft" dir=3D"ltr"><span style=3D"font-family:tahoma,sans-serif"><span class=
=3D"gmail-Y2IQFc" lang=3D"en">Here is my mistake. Tell me what I&#39;m doin=
g wrong. Perhaps I do not fully understand the architecture of creating fil=
es.</span></span></pre></div><div class=3D"gmail-tw-target-rmn gmail-tw-ta-=
container gmail-F0azHf gmail-tw-nfl" id=3D"gmail-tw-target-rmn-container"><=
pre class=3D"gmail-tw-data-placeholder gmail-tw-text-small gmail-tw-ta" id=
=3D"gmail-tw-target-rmn" style=3D"text-align:left" dir=3D"ltr"><span class=
=3D"gmail-Y2IQFc">ERR] 2 Unresolved connection(s)<br>[ERR] =C2=A0 =C2=A0 (r=
adio0-out_0 -&gt; fft0-in_0)<br>[ERR] =C2=A0 =C2=A0 (fft0-out_0 -&gt; ep0-i=
n0)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;ctrl_port=
&#39;, &#39;master&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;radi=
o0&#39;, &#39;time_keeper&#39;, &#39;listener&#39;),)<br>[INF] =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ((&#39;radio0&#39;, &#39;radio_iface&#39;, &#39;slave&#39=
;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;ctrlpo=
rt_radio&#39;, &#39;slave&#39;),)<br>[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#=
39;_device_&#39;, &#39;time_keeper&#39;, &#39;broadcaster&#39;),)<br>[INF] =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ((&#39;_device_&#39;, &#39;x300_radio&#39;, &#3=
9;master&#39;),)<br></span></pre></div></div></div></div><pre class=3D"gmai=
l-tw-data-text gmail-tw-text-large gmail-XcVN5d gmail-tw-ta" id=3D"gmail-tw=
-target-text" style=3D"text-align:left"><span style=3D"font-family:tahoma,s=
ans-serif"><span class=3D"gmail-Y2IQFc" lang=3D"en"></span></span></pre></d=
iv>

--000000000000ff018105c9eec8cf--

--===============8551483634911938947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8551483634911938947==--
