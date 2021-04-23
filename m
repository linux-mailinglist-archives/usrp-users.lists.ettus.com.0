Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB333697FE
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 19:10:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA4853847E8
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 13:10:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XuJ8n8eH";
	dkim-atps=neutral
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 066833846B5
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 13:09:15 -0400 (EDT)
Received: by mail-wm1-f42.google.com with SMTP id z6so8600163wmg.1
        for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 10:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=xXb36AYh0q2Q0kXO9PDCAU5rSgxbScw9yH5PiNZL5tw=;
        b=XuJ8n8eHzoI3wbEQJgAWef/siCgyYmDWBCVwQPNG/VsycrcGeHB718cd4EiKRv54NU
         /j6picu6yqnjRW+uq8eR3cR+rXChI6g/+qYYJW+bvRxdGqmwjzMssF5LYR/GZnKr2B2f
         SuvXbhcy5VAt0BhYJpLrhFFItTGiw+fX2FG28mT3mzKO327OZGCXbNB1hZLFXx79BDvN
         I4suaMytd+R5ETZx/jOsksPthe+EbdBs0RLBLXtzZpQCMCKK3eTD1d8UGWwsvdaRX7ih
         uHnPPEeUgFig+ykmICsiXe0xCmBBZjbjOaDBuZeYbc1oylolleIMnIjG2lW8NyVsej9v
         Tjdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xXb36AYh0q2Q0kXO9PDCAU5rSgxbScw9yH5PiNZL5tw=;
        b=Tm+Yf9AOXKAYJJ6psLkHye9qW70fYHnBaCsZKq093Jr4gFZ6D8D/E/7xvfTEH3jfjw
         8wsBJ3v3//YUdjZHYecBzqzVSwbeOt6oKA/bVdYLqIteI80PY1a+RJm/SsknhJ9UL/D6
         4kbGoI8rKrbSOkaWS+KruRSyrGRGHxVhbpjxK9H70cf13hwTvcVSFoxVnZ8gYAwyU3Ow
         4pgsbpEZEHVltMZ998GT2wH/Gfz0U5NHhe0E/SdzCB37f5bHrTEIViRfQc6PrdoF4zou
         yzpaHhdCbwMLvGMFrVSicdpnIjD8IOmEkhBL/cF1726Ikkb/8+xaXHh+YBtFGvbWhKSh
         DWKQ==
X-Gm-Message-State: AOAM531HA924XdCOWH1LXAfW/YQR7sdcI66L/a7pbO/khX1VGeSZCSN+
	hw1I7gEflAkRdyBON7SSKOWwAHln+Vf9h5ie2/OZ5NlEnR/i3Q==
X-Google-Smtp-Source: ABdhPJzVevBKXODnSI7iAG+Ib1jGUHR5nBlnIf9Wr+1F31MUDRuUT8Fdu6nmMf4RYWdMBndOUgC0x+eRFi2D1MUAaDM=
X-Received: by 2002:a1c:c910:: with SMTP id f16mr6799844wmb.136.1619197754728;
 Fri, 23 Apr 2021 10:09:14 -0700 (PDT)
MIME-Version: 1.0
From: Devin Kelly <dwwkelly@gmail.com>
Date: Fri, 23 Apr 2021 13:09:03 -0400
Message-ID: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: NGIJSKAOSWMOLE5LVQZ27KKQSNYHY2Z3
X-Message-ID-Hash: NGIJSKAOSWMOLE5LVQZ27KKQSNYHY2Z3
X-MailFrom: dwwkelly@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.0 Power Calibration Problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NGIJSKAOSWMOLE5LVQZ27KKQSNYHY2Z3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5903211130545838510=="

--===============5903211130545838510==
Content-Type: multipart/alternative; boundary="000000000000fde43505c0a6da41"

--000000000000fde43505c0a6da41
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to calibrate the TX power for a USRP X310 using a Keysight Field
Fox N9952B.

I wrote a class for the field fox that subclasses VISADevice.  It seems to
get the numbers from the FF fox fine.

I run the calibration and it seems to work just fine:

./uhd_power_cal.py --args type=x300 -d tx --meas-dev visa --antenna
'TX/RX' -o 'import=field_fox' -o
'visa_query=USB0::MY_INSTRUMENT::INSTR'

=== Detecting USRP...
=== Measurement direction: tx
=== Initializing measurement device...
Loading external module: field_fox
/usr/local/lib/python3.6/site-packages/gpib_ctypes/gpib/gpib.py:54:
UserWarning: GPIB library not found. Please manually load it using
_load_lib(filename). All GPIB functions will raise OSError until the
library is manually loaded.
  warnings.warn(message)
Loading external module: field_fox
Found VISA device: Keysight Field Fox N9952B
=== Initializing port connector...
=== Initializing USRP calibration object...
=== Detected USRP type: X310
=== Calibrating for channels: 0
=== Calibrating for antennas: TX/RX
=== Requested sampling rate: 5.0 Msps, actual rate: 5.0 Msps
=== Launching calibration...
=== Using USRP LO offset: 10.00 MHz
=== Running calibration for channel 0, antenna TX/RX.
[tx] Connect your signal generator to device channel 0, antenna TX/RX.
Then, hit Enter.
[X310] Switching to channel 0, antenna TX/RX.
[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.

[WARNING] [CAL::DATABASE] Calibration data already exists for key:
`x3xx_pwr_generic_tx_tx+rx' serial: `311A8A8#0'. Backing up to:
"/home/lb/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435"



However, when I try to use the Power API I run into problems:

./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-freq 10e3
--power 10 --args='type=x300,serial=XXXXXXX' --channels 0

Creating the usrp device with: type=x300,serial=XXXXXX...
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX

Setting TX Rate: 1.000000 Msps...
Actual TX Rate: 1.000000 Msps...

Setting TX Freq: 900.000000 MHz...
Setting TX LO Offset: 0.000000 MHz...
Actual TX Freq: 900.000000 MHz...

ERROR: USRP does not have a reference power API on channel 0!



What am I not doing right?   All my cal files are
in  ~/.local/share/uhd/cal/

The documentation (link <https://files.ettus.com/manual/page_power.html>)
talks about table storage options (hard coded, eeprom, local files) but it
doesn't discuss how to configure the UHD to use any of those options.  I
tried looking at the documentation for multi_usrp class too (link
<https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8f90b41d8632c85ada>)
without any sucess.

Devin

--000000000000fde43505c0a6da41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote style=3D"margin:0 0 0 40px;border:none;padding=
:0px">Hello,</blockquote><div>I&#39;m trying to calibrate the TX power=C2=
=A0for a USRP X310 using a Keysight Field Fox N9952B.</div><div><br></div><=
div>I wrote a class for the field fox that subclasses VISADevice.=C2=A0 It =
seems to get the numbers from the FF fox fine.</div><div><br></div><div>I r=
un the calibration and it seems to work just fine:</div><div><br></div><div=
><pre class=3D"gmail-syntaxhighlighter-pre" style=3D"margin-top:0px;margin-=
bottom:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInstalledFont,mo=
nospace;line-height:20px;font-size:14px;overflow-x:scroll;color:rgb(51,51,5=
1)">./uhd_power_cal.py --args type=3Dx300 -d tx --meas-dev visa --antenna &=
#39;TX/RX&#39; -o &#39;import=3Dfield_fox&#39; -o &#39;visa_query=3DUSB0::M=
Y_INSTRUMENT::INSTR&#39;</pre><pre class=3D"gmail-syntaxhighlighter-pre" st=
yle=3D"margin-top:0px;margin-bottom:0px;padding:15px 0px 0px 15px;font-fami=
ly:ConfluenceInstalledFont,monospace;line-height:20px;font-size:14px;overfl=
ow-x:scroll;color:rgb(51,51,51)">=3D=3D=3D Detecting USRP...<br>=3D=3D=3D M=
easurement direction: tx<br>=3D=3D=3D Initializing measurement device...<br=
>Loading external module: field_fox<br>/usr/local/lib/python3.6/site-packag=
es/gpib_ctypes/gpib/gpib.py:54: UserWarning: GPIB library not found. Please=
 manually load it using _load_lib(filename). All GPIB functions will raise =
OSError until the library is manually loaded.<br>=C2=A0 warnings.warn(messa=
ge)<br>Loading external module: field_fox<br>Found VISA device: Keysight Fi=
eld Fox N9952B<br>=3D=3D=3D Initializing port connector...<br>=3D=3D=3D Ini=
tializing USRP calibration object...<br>=3D=3D=3D Detected USRP type: X310<=
br>=3D=3D=3D Calibrating for channels: 0<br>=3D=3D=3D Calibrating for anten=
nas: TX/RX<br>=3D=3D=3D Requested sampling rate: 5.0 Msps, actual rate: 5.0=
 Msps<br>=3D=3D=3D Launching calibration...<br>=3D=3D=3D Using USRP LO offs=
et: 10.00 MHz<br>=3D=3D=3D Running calibration for channel 0, antenna TX/RX=
.<br>[tx] Connect your signal generator to device channel 0, antenna TX/RX.=
 Then, hit Enter.<br>[X310] Switching to channel 0, antenna TX/RX.<br>[WARN=
ING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br></pre><pre =
class=3D"gmail-syntaxhighlighter-pre" style=3D"margin-top:0px;margin-bottom=
:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInstalledFont,monospac=
e;line-height:20px;font-size:14px;overflow-x:scroll;color:rgb(51,51,51)">[W=
ARNING] [CAL::DATABASE] Calibration data already exists for key: `x3xx_pwr_=
generic_tx_tx+rx&#39; serial: `311A8A8#0&#39;. Backing up to: &quot;/home/l=
b/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435&q=
uot;<br></pre></div><div><br></div><div><br></div><div>However, when I try =
to use the Power API I run into problems:</div><div><br></div><div><blockqu=
ote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><font face=3D"=
monospace">./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-f=
req 10e3 --power 10 --args=3D&#39;type=3Dx300,serial=3DXXXXXXX&#39; --chann=
els 0 <br><br>Creating the usrp device with: type=3Dx300,serial=3DXXXXXX...=
<br>Using Device: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 =
Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0=
 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channe=
l: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=
=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br=
>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX=
 Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=
=A0 =C2=A0 TX Subdev: UBX TX<br><br>Setting TX Rate: 1.000000 Msps...<br>Ac=
tual TX Rate: 1.000000 Msps...<br><br>Setting TX Freq: 900.000000 MHz...<br=
>Setting TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 900.000000 MHz...=
<br><br>ERROR: USRP does not have a reference power API on channel 0!</font=
><br></div></blockquote></div><div><br></div><div><br></div><div>What am I =
not doing right?=C2=A0 =C2=A0All my cal files are in=C2=A0=C2=A0~/.local/sh=
are/uhd/cal/</div><div><br></div><div>The documentation (<a href=3D"https:/=
/files.ettus.com/manual/page_power.html">link</a>) talks about table storag=
e options (hard coded, eeprom, local files) but it doesn&#39;t discuss how =
to configure the UHD to use any of those options.=C2=A0 I tried looking at =
the documentation for multi_usrp class too (<a href=3D"https://files.ettus.=
com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8f90b41d8632=
c85ada">link</a>) without any sucess.</div><div><br></div><div>Devin</div><=
/div>

--000000000000fde43505c0a6da41--

--===============5903211130545838510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5903211130545838510==--
