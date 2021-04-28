Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4432636D9C8
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 16:45:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 207CC3842FB
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 10:45:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qsuc+4+P";
	dkim-atps=neutral
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id D234B3843A0
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 10:44:15 -0400 (EDT)
Received: by mail-wr1-f46.google.com with SMTP id x5so13074725wrv.13
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 07:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=IezXLlJlwszq1YMRUtyuGnViwNLHZbiTQLxozX/Ro8I=;
        b=qsuc+4+PwzcKlMrc9uKjHR4MIB/XRDr1FggLRu1UOTP7bogM2YfdNK6Y+CN9/Y0L6m
         4z6nwVF9Yc54rdeXwVRpBSpi4BuzvTdWhL/sL9SY5bqPBlsPrv5uo3yCwitFOkW4sCLQ
         RXxFj+/eeDEd7kXI1lufkt1yv8pRECSF5Vrw25zO61Ionq+YVoA0jAZ27/41p8u8H3lh
         wLFUNyjAw/AqmOZ7YiP0D+wgmiem7ywo6ipUDvMGdpUQGi4sOJ8AUwNCIsk+6EYolR9n
         GgrkTJi2MTIcMM9P0MIp5r4sRDEg6E+3t1659I6mj7sefNKBN+rObpwde1qPYy1fT+8n
         eNBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=IezXLlJlwszq1YMRUtyuGnViwNLHZbiTQLxozX/Ro8I=;
        b=aQ1XW1cSNpvAQEv12Xp6SQOw5AB/3owPfFEPPN4QJsA3DKS2Zax+D3sTMFQUJItzEQ
         A11+gpmWwIlzb+aiQ0jPEXlRAMQfSS+dXmsZCxpbUkM+0xu4uF45N5p8fW3Zt1JBQwcq
         w1m68tAQr0R/7IfB4JoWw5XlSsOBjpZ89QSF/FkP/T9aE7LCGUBZMGQio0mqCB3V9kxo
         lDskmMXRepwPIRz6ro8rdWBt+GpW1jFwYBybFPWQTn1Bjb3TWuD+6vUkvq9RWJPtIN2V
         d+s10ul+yWH/YDoQ3iF5NvwWn9PxJKzAWlfkoHeARlrswvxsideDs52b2cCE9ngaTl9a
         210A==
X-Gm-Message-State: AOAM533aZnzar48esz2h461NqEm3CSamMF7TVaZj/PqzTxIJ4fLZsNvX
	tXmW9EAcZ/hB+bFDmLV+8BExow3igCmFTevguWin2YXGZoE=
X-Google-Smtp-Source: ABdhPJzEwSxgajKpyNrb8rRAy0GMBnvKR4+qA72C3ELFeHJRa2S0LCx7l4MuGqATYPfTLXCLPYqUqUBNKlp5la2h3SI=
X-Received: by 2002:a5d:4a87:: with SMTP id o7mr15954471wrq.102.1619621054737;
 Wed, 28 Apr 2021 07:44:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
In-Reply-To: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
From: Devin Kelly <dwwkelly@gmail.com>
Date: Wed, 28 Apr 2021 10:44:03 -0400
Message-ID: <CAANLyuYDUK5q6PCkFqtKOxinxTdVZesoMXgixqZxWJ4_dNBqBg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6AD45IKH4FEGSPNW3QK7JF532BXDB6PA
X-Message-ID-Hash: 6AD45IKH4FEGSPNW3QK7JF532BXDB6PA
X-MailFrom: dwwkelly@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 Power Calibration Problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AD45IKH4FEGSPNW3QK7JF532BXDB6PA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3746187464337707855=="

--===============3746187464337707855==
Content-Type: multipart/alternative; boundary="000000000000a370bd05c10969ef"

--000000000000a370bd05c10969ef
Content-Type: text/plain; charset="UTF-8"

Any ideas on this?

Thanks,
Devin

On Fri, Apr 23, 2021 at 1:09 PM Devin Kelly <dwwkelly@gmail.com> wrote:

> Hello,
>
> I'm trying to calibrate the TX power for a USRP X310 using a Keysight
> Field Fox N9952B.
>
> I wrote a class for the field fox that subclasses VISADevice.  It seems to
> get the numbers from the FF fox fine.
>
> I run the calibration and it seems to work just fine:
>
> ./uhd_power_cal.py --args type=x300 -d tx --meas-dev visa --antenna 'TX/RX' -o 'import=field_fox' -o 'visa_query=USB0::MY_INSTRUMENT::INSTR'
>
> === Detecting USRP...
> === Measurement direction: tx
> === Initializing measurement device...
> Loading external module: field_fox
> /usr/local/lib/python3.6/site-packages/gpib_ctypes/gpib/gpib.py:54: UserWarning: GPIB library not found. Please manually load it using _load_lib(filename). All GPIB functions will raise OSError until the library is manually loaded.
>   warnings.warn(message)
> Loading external module: field_fox
> Found VISA device: Keysight Field Fox N9952B
> === Initializing port connector...
> === Initializing USRP calibration object...
> === Detected USRP type: X310
> === Calibrating for channels: 0
> === Calibrating for antennas: TX/RX
> === Requested sampling rate: 5.0 Msps, actual rate: 5.0 Msps
> === Launching calibration...
> === Using USRP LO offset: 10.00 MHz
> === Running calibration for channel 0, antenna TX/RX.
> [tx] Connect your signal generator to device channel 0, antenna TX/RX. Then, hit Enter.
> [X310] Switching to channel 0, antenna TX/RX.
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>
> [WARNING] [CAL::DATABASE] Calibration data already exists for key: `x3xx_pwr_generic_tx_tx+rx' serial: `311A8A8#0'. Backing up to: "/home/lb/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435"
>
>
>
> However, when I try to use the Power API I run into problems:
>
> ./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-freq 10e3
> --power 10 --args='type=x300,serial=XXXXXXX' --channels 0
>
> Creating the usrp device with: type=x300,serial=XXXXXX...
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: B
>     TX Subdev: UBX TX
>
> Setting TX Rate: 1.000000 Msps...
> Actual TX Rate: 1.000000 Msps...
>
> Setting TX Freq: 900.000000 MHz...
> Setting TX LO Offset: 0.000000 MHz...
> Actual TX Freq: 900.000000 MHz...
>
> ERROR: USRP does not have a reference power API on channel 0!
>
>
>
> What am I not doing right?   All my cal files are
> in  ~/.local/share/uhd/cal/
>
> The documentation (link <https://files.ettus.com/manual/page_power.html>)
> talks about table storage options (hard coded, eeprom, local files) but it
> doesn't discuss how to configure the UHD to use any of those options.  I
> tried looking at the documentation for multi_usrp class too (link
> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8f90b41d8632c85ada>)
> without any sucess.
>
> Devin
>

--000000000000a370bd05c10969ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Any ideas on this?<div><br></div><div>Thanks,</div><div>De=
vin</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Apr 23, 2021 at 1:09 PM Devin Kelly &lt;<a href=3D"mailto:=
dwwkelly@gmail.com">dwwkelly@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><blockquote style=3D=
"margin:0px 0px 0px 40px;border:none;padding:0px">Hello,</blockquote><div>I=
&#39;m trying to calibrate the TX power=C2=A0for a USRP X310 using a Keysig=
ht Field Fox N9952B.</div><div><br></div><div>I wrote a class for the field=
 fox that subclasses VISADevice.=C2=A0 It seems to get the numbers from the=
 FF fox fine.</div><div><br></div><div>I run the calibration and it seems t=
o work just fine:</div><div><br></div><div><pre style=3D"margin-top:0px;mar=
gin-bottom:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInstalledFon=
t,monospace;line-height:20px;font-size:14px;overflow-x:scroll;color:rgb(51,=
51,51)">./uhd_power_cal.py --args type=3Dx300 -d tx --meas-dev visa --anten=
na &#39;TX/RX&#39; -o &#39;import=3Dfield_fox&#39; -o &#39;visa_query=3DUSB=
0::MY_INSTRUMENT::INSTR&#39;</pre><pre style=3D"margin-top:0px;margin-botto=
m:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInstalledFont,monospa=
ce;line-height:20px;font-size:14px;overflow-x:scroll;color:rgb(51,51,51)">=
=3D=3D=3D Detecting USRP...<br>=3D=3D=3D Measurement direction: tx<br>=3D=
=3D=3D Initializing measurement device...<br>Loading external module: field=
_fox<br>/usr/local/lib/python3.6/site-packages/gpib_ctypes/gpib/gpib.py:54:=
 UserWarning: GPIB library not found. Please manually load it using _load_l=
ib(filename). All GPIB functions will raise OSError until the library is ma=
nually loaded.<br>=C2=A0 warnings.warn(message)<br>Loading external module:=
 field_fox<br>Found VISA device: Keysight Field Fox N9952B<br>=3D=3D=3D Ini=
tializing port connector...<br>=3D=3D=3D Initializing USRP calibration obje=
ct...<br>=3D=3D=3D Detected USRP type: X310<br>=3D=3D=3D Calibrating for ch=
annels: 0<br>=3D=3D=3D Calibrating for antennas: TX/RX<br>=3D=3D=3D Request=
ed sampling rate: 5.0 Msps, actual rate: 5.0 Msps<br>=3D=3D=3D Launching ca=
libration...<br>=3D=3D=3D Using USRP LO offset: 10.00 MHz<br>=3D=3D=3D Runn=
ing calibration for channel 0, antenna TX/RX.<br>[tx] Connect your signal g=
enerator to device channel 0, antenna TX/RX. Then, hit Enter.<br>[X310] Swi=
tching to channel 0, antenna TX/RX.<br>[WARNING] [0/Radio#0] Attempting to =
set tick rate to 0. Skipping.<br></pre><pre style=3D"margin-top:0px;margin-=
bottom:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInstalledFont,mo=
nospace;line-height:20px;font-size:14px;overflow-x:scroll;color:rgb(51,51,5=
1)">[WARNING] [CAL::DATABASE] Calibration data already exists for key: `x3x=
x_pwr_generic_tx_tx+rx&#39; serial: `311A8A8#0&#39;. Backing up to: &quot;/=
home/lb/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.161919=
7435&quot;<br></pre></div><div><br></div><div><br></div><div>However, when =
I try to use the Power API I run into problems:</div><div><br></div><div><b=
lockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><f=
ont face=3D"monospace">./tx_waveforms --rate 1e6 --freq 900e6 --wave-type S=
INE --wave-freq 10e3 --power 10 --args=3D&#39;type=3Dx300,serial=3DXXXXXXX&=
#39; --channels 0 <br><br>Creating the usrp device with: type=3Dx300,serial=
=3DXXXXXX...<br>Using Device: Single USRP:<br>=C2=A0 Device: X-Series Devic=
e<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP:=
 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=
=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<=
br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0=
 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX=
<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dbo=
ard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Setting TX Rate: 1.000000 =
Msps...<br>Actual TX Rate: 1.000000 Msps...<br><br>Setting TX Freq: 900.000=
000 MHz...<br>Setting TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 900.=
000000 MHz...<br><br>ERROR: USRP does not have a reference power API on cha=
nnel 0!</font><br></div></blockquote></div><div><br></div><div><br></div><d=
iv>What am I not doing right?=C2=A0 =C2=A0All my cal files are in=C2=A0=C2=
=A0~/.local/share/uhd/cal/</div><div><br></div><div>The documentation (<a h=
ref=3D"https://files.ettus.com/manual/page_power.html" target=3D"_blank">li=
nk</a>) talks about table storage options (hard coded, eeprom, local files)=
 but it doesn&#39;t discuss how to configure the UHD to use any of those op=
tions.=C2=A0 I tried looking at the documentation for multi_usrp class too =
(<a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.=
html#af5384b36f4fe1f8f90b41d8632c85ada" target=3D"_blank">link</a>) without=
 any sucess.</div><div><br></div><div>Devin</div></div>
</blockquote></div>

--000000000000a370bd05c10969ef--

--===============3746187464337707855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3746187464337707855==--
