Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E71372B0E
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 15:31:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 923B2383E3D
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 09:31:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="E+HoeNBP";
	dkim-atps=neutral
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 0BD903840AE
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 09:22:45 -0400 (EDT)
Received: by mail-ed1-f52.google.com with SMTP id c22so10411533edn.7
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 06:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=ch6HGzajw+uiZ4KQQWnsDUWriuxvF5NMCdhhp5y9jSg=;
        b=E+HoeNBPxw+UdCljNlO873N5UE0mgJi11iuELrsRlyfPK1bqIL4TcCwUwE2+OUfBa5
         j4EZs+JJlnOa8tRZ8k/JjaR6BdDrwwkib79UtbsXv/lZ8P4vkeUJSMHHw/JR22e9E/vf
         ZOCsmqzGpBmt/JM6Dclcg+LvbgCaJvYxHGllhrST6gQfbyQFMFdODkCdHsN3uuti+VME
         AK1FWDFo4VeWxgjqWySF6y2G4R2ZlVYpC2mKMjder1vl32LuxaoFk7fGpkz8XnuXN57l
         B7Z2EsNgfCl29OZMxJZ5SsXkmXlfae/3CN7i2ZzJL9JueYufWGyTNZ3/1vYgyCdYJ9QP
         a0JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=ch6HGzajw+uiZ4KQQWnsDUWriuxvF5NMCdhhp5y9jSg=;
        b=rxKluQwttxOIIsO9phQ7XrtNuA2wwreo7VD8FD91Kx4jNAN1IBiDb5eeWaYEIhCDbV
         Vv3XE1art/RsQYSV7JRj+Gi21/qbncJbhcgLWplbNQzktc8roJYRduvhSbs43MA3XqKP
         au5jOB02napQJSfiuRETT3YICml+aUjWhjtIVd1sH7i5K9qDwV8miquKv2ue1vhQciT5
         UADWFIRkROG4k0myEuehvt4AQnBCnzzau2emisO9RQyJkrZtlKyCONhzj0zpqmaG8Jw1
         e0XfNBM31pw5Bq2Twar9E+pQ6hBgUOPy1x8+9yaRTs2Xi6pqCcDFAM4b4hQRh2NprLEj
         kHrg==
X-Gm-Message-State: AOAM531mmJCTfzWbzItKEL7JiB/irnbb6G8eve8ZQrHkWsoJyM1b4dw4
	9KVqBiFmdyX3WeXKxuo17KUsD3+NDhrZnv1uYpEkYfn7fjTaIw==
X-Google-Smtp-Source: ABdhPJxf3r/DDkJkpkxFb+Siys7ShCh+GqsZ5wxLmTm85OP8yDiumYIwdNBhmBtjVKkJ1MyijDlhsp4awHdxB1sqWb0=
X-Received: by 2002:a05:6402:3101:: with SMTP id dc1mr26603048edb.318.1620134564893;
 Tue, 04 May 2021 06:22:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
In-Reply-To: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 4 May 2021 15:22:34 +0200
Message-ID: <CAFOi1A4JGHB-UtgLAwtbKTKHdmXWsKa-kKMiDJ_P_v5Vvzq18A@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: O6BMI7VPNOQCP36GVNLZB4J6WPDLMLJE
X-Message-ID-Hash: O6BMI7VPNOQCP36GVNLZB4J6WPDLMLJE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 Power Calibration Problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6BMI7VPNOQCP36GVNLZB4J6WPDLMLJE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1890498904615557135=="

--===============1890498904615557135==
Content-Type: multipart/alternative; boundary="0000000000003aa7f205c180f97f"

--0000000000003aa7f205c180f97f
Content-Type: text/plain; charset="UTF-8"

Devin,

I tried running the exact sequence that you did, and it worked fine (X310,
UBX). Are you compiling UHD from source? If yes, can you please first
enable full logging (-DUHD_LOG_MIN_LEVEL=trace) and then produce a full log
(with UHD_LOG_LEVEL=trace environment variable, and/or
UHD_LOG_CONSOLE_LEVEL=trace environment variable depending on your config).

Side note -- I'm happy you're using this API, and you seem to have gotten
pretty far. Kudos!

--M

On Fri, Apr 23, 2021 at 7:09 PM Devin Kelly <dwwkelly@gmail.com> wrote:

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
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003aa7f205c180f97f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Devin,</div><div><br></div><div>I tried running the e=
xact sequence that you did, and it worked fine (X310, UBX). Are you compili=
ng UHD from source? If yes, can you please first enable full logging (-DUHD=
_LOG_MIN_LEVEL=3Dtrace) and then produce a full log (with UHD_LOG_LEVEL=3Dt=
race environment variable, and/or UHD_LOG_CONSOLE_LEVEL=3Dtrace environment=
 variable depending on your config).</div><div><br></div><div>Side note -- =
I&#39;m happy you&#39;re using this API, and you seem to have gotten pretty=
 far. Kudos!</div><div><br></div><div>--M<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 23, 2021 at =
7:09 PM Devin Kelly &lt;<a href=3D"mailto:dwwkelly@gmail.com">dwwkelly@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><blockquote style=3D"margin:0px 0px 0px 40px;border:m=
edium none;padding:0px">Hello,</blockquote><div>I&#39;m trying to calibrate=
 the TX power=C2=A0for a USRP X310 using a Keysight Field Fox N9952B.</div>=
<div><br></div><div>I wrote a class for the field fox that subclasses VISAD=
evice.=C2=A0 It seems to get the numbers from the FF fox fine.</div><div><b=
r></div><div>I run the calibration and it seems to work just fine:</div><di=
v><br></div><div><pre style=3D"margin-top:0px;margin-bottom:0px;padding:15p=
x 0px 0px 15px;font-family:ConfluenceInstalledFont,monospace;line-height:20=
px;font-size:14px;overflow-x:scroll;color:rgb(51,51,51)">./uhd_power_cal.py=
 --args type=3Dx300 -d tx --meas-dev visa --antenna &#39;TX/RX&#39; -o &#39=
;import=3Dfield_fox&#39; -o &#39;visa_query=3DUSB0::MY_INSTRUMENT::INSTR&#3=
9;</pre><pre style=3D"margin-top:0px;margin-bottom:0px;padding:15px 0px 0px=
 15px;font-family:ConfluenceInstalledFont,monospace;line-height:20px;font-s=
ize:14px;overflow-x:scroll;color:rgb(51,51,51)">=3D=3D=3D Detecting USRP...=
<br>=3D=3D=3D Measurement direction: tx<br>=3D=3D=3D Initializing measureme=
nt device...<br>Loading external module: field_fox<br>/usr/local/lib/python=
3.6/site-packages/gpib_ctypes/gpib/gpib.py:54: UserWarning: GPIB library no=
t found. Please manually load it using _load_lib(filename). All GPIB functi=
ons will raise OSError until the library is manually loaded.<br>=C2=A0 warn=
ings.warn(message)<br>Loading external module: field_fox<br>Found VISA devi=
ce: Keysight Field Fox N9952B<br>=3D=3D=3D Initializing port connector...<b=
r>=3D=3D=3D Initializing USRP calibration object...<br>=3D=3D=3D Detected U=
SRP type: X310<br>=3D=3D=3D Calibrating for channels: 0<br>=3D=3D=3D Calibr=
ating for antennas: TX/RX<br>=3D=3D=3D Requested sampling rate: 5.0 Msps, a=
ctual rate: 5.0 Msps<br>=3D=3D=3D Launching calibration...<br>=3D=3D=3D Usi=
ng USRP LO offset: 10.00 MHz<br>=3D=3D=3D Running calibration for channel 0=
, antenna TX/RX.<br>[tx] Connect your signal generator to device channel 0,=
 antenna TX/RX. Then, hit Enter.<br>[X310] Switching to channel 0, antenna =
TX/RX.<br>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.=
<br></pre><pre style=3D"margin-top:0px;margin-bottom:0px;padding:15px 0px 0=
px 15px;font-family:ConfluenceInstalledFont,monospace;line-height:20px;font=
-size:14px;overflow-x:scroll;color:rgb(51,51,51)">[WARNING] [CAL::DATABASE]=
 Calibration data already exists for key: `x3xx_pwr_generic_tx_tx+rx&#39; s=
erial: `311A8A8#0&#39;. Backing up to: &quot;/home/lb/.local/share/uhd/cal/=
x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435&quot;<br></pre></div><di=
v><br></div><div><br></div><div>However, when I try to use the Power API I =
run into problems:</div><div><br></div><div><blockquote style=3D"margin:0px=
 0px 0px 40px;border:medium none;padding:0px"><div><font face=3D"monospace"=
>./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-freq 10e3 -=
-power 10 --args=3D&#39;type=3Dx300,serial=3DXXXXXXX&#39; --channels 0 <br>=
<br>Creating the usrp device with: type=3Dx300,serial=3DXXXXXX...<br>Using =
Device: Single USRP:<br>=C2=A0 Device: X-Series Device<br>=C2=A0 Mboard 0: =
X310<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX=
 Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 RX Channel: 1<br>=
=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX S=
ubdev: UBX RX<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =
=C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br>=C2=A0 TX Channel=
: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=
=A0 TX Subdev: UBX TX<br><br>Setting TX Rate: 1.000000 Msps...<br>Actual TX=
 Rate: 1.000000 Msps...<br><br>Setting TX Freq: 900.000000 MHz...<br>Settin=
g TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 900.000000 MHz...<br><br=
>ERROR: USRP does not have a reference power API on channel 0!</font><br></=
div></blockquote></div><div><br></div><div><br></div><div>What am I not doi=
ng right?=C2=A0 =C2=A0All my cal files are in=C2=A0=C2=A0~/.local/share/uhd=
/cal/</div><div><br></div><div>The documentation (<a href=3D"https://files.=
ettus.com/manual/page_power.html" target=3D"_blank">link</a>) talks about t=
able storage options (hard coded, eeprom, local files) but it doesn&#39;t d=
iscuss how to configure the UHD to use any of those options.=C2=A0 I tried =
looking at the documentation for multi_usrp class too (<a href=3D"https://f=
iles.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8=
f90b41d8632c85ada" target=3D"_blank">link</a>) without any sucess.</div><di=
v><br></div><div>Devin</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003aa7f205c180f97f--

--===============1890498904615557135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1890498904615557135==--
