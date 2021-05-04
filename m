Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BEB372B1B
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 15:33:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E70963846A7
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 09:33:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="sBVErtv7";
	dkim-atps=neutral
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C493384097
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 09:28:28 -0400 (EDT)
Received: by mail-ed1-f44.google.com with SMTP id n25so10431018edr.5
        for <usrp-users@lists.ettus.com>; Tue, 04 May 2021 06:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=Z3TV+Ojh5VKlFYM+53izqP+q8zF6n3/nKXWqeXtBo88=;
        b=sBVErtv72HRA+3vPl8EKglCckuXYyJg1erasAdkEMjZBa2IIQIJ43Iicbf3LQuZ/PT
         xogEOM5mAv0D8JSWCK0rA1yICtpNg4tL599Rfn+/0UAnCbOYrj377kdM0froG5bUSkBr
         ov3+v2ztjtSbJp/SPRK4G/JfwjMKzqeZZumXD4QKDlr7CDcMkja+zl2JHC4q7xrA4HJS
         qLtZ6mYQfX3s1f0XurLMHnhGa/bLMK3Ksw+LJRU3CZbddsSlU+tRjlUHvlyt5mdojVq7
         8so0p2FWiKTzBnsU/DOkn0aLJgSRxyh8mnpE2UMGYRAZ6LHdUm4UTz//1ZZjtmD5d3Kk
         HRVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=Z3TV+Ojh5VKlFYM+53izqP+q8zF6n3/nKXWqeXtBo88=;
        b=HV9cEa3i3Vpq5ef2rxPP6yV1a64svSoCJsoDfigVdR7munpCQmW19WSJ00OA3Q7viq
         4b877wchGnfB7K5n+H7TfselN0i3Y0fbKnLcqhKfB9ioXh8X/icpwII+vBTUEVCgrRVg
         o54vylNrTp2t+1vdD6t9hIYVKV/OogcBfDoxYooiu1wLUJgrEEtc+yocwBaXLolSfEE2
         cpTIZT5wjkOXXpfpV6kTQJ8+KyRJbnczSLz9h44SOauSP97l3fB/hvpdJg3UZ52Ux8Dd
         gL+z8vWEP+repM+WVGy/FQXDrHImjfKSzXkzZbhyAJgBL1yuVCtZ1+/wIiKz+BNU5X+F
         0u5Q==
X-Gm-Message-State: AOAM530dE4tM1A0gRoysZWJCvWxPns3csyu9RPim42sApi/8b1XDZKoe
	Yo6iVwkI+RoUtBE1rTele8w5TcN/MS5SGLDnYJ0bHDmZgCwK5vWu
X-Google-Smtp-Source: ABdhPJwsxc+m1EAtt4hYhx69hw3vr/GBTqZUyyi7lou9GNoXfInmgZrqi4i1BGkpY4keF//4SM6g9FJFNLOjbGONggY=
X-Received: by 2002:a05:6402:234b:: with SMTP id r11mr25809264eda.137.1620134906895;
 Tue, 04 May 2021 06:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyuZ=Tx-BLFFB2s+gWpHLsKQNKYbNX0oR-=gGFad9pJwtsA@mail.gmail.com>
 <CAFOi1A4JGHB-UtgLAwtbKTKHdmXWsKa-kKMiDJ_P_v5Vvzq18A@mail.gmail.com>
In-Reply-To: <CAFOi1A4JGHB-UtgLAwtbKTKHdmXWsKa-kKMiDJ_P_v5Vvzq18A@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 4 May 2021 15:28:16 +0200
Message-ID: <CAFOi1A5RwDQcwsvg-9sJNv-OdJLveXsbMT0SxuFv8PHr5CuEmA@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 4I6TWCLXG7IFPBVNRF7FQQWZFQEPDBTX
X-Message-ID-Hash: 4I6TWCLXG7IFPBVNRF7FQQWZFQEPDBTX
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 Power Calibration Problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4I6TWCLXG7IFPBVNRF7FQQWZFQEPDBTX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7182975745465248976=="

--===============7182975745465248976==
Content-Type: multipart/alternative; boundary="0000000000009d33bd05c1810ddd"

--0000000000009d33bd05c1810ddd
Content-Type: text/plain; charset="UTF-8"

Also, another clue to what's going wrong could be in the cal data. Can you
please convert it to JSON (flatc --strict-json -t
/path/to/uhd/host/include/uhd/cal/pwr_cal.fbs --
~/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_XXXXXXX#0.cal).

You'll need to install flatc (flatbuffer compiler) first (e.g. apt install
flatbuffers-compiler).

--M

On Tue, May 4, 2021 at 3:22 PM Martin Braun <martin.braun@ettus.com> wrote:

> Devin,
>
> I tried running the exact sequence that you did, and it worked fine (X310,
> UBX). Are you compiling UHD from source? If yes, can you please first
> enable full logging (-DUHD_LOG_MIN_LEVEL=trace) and then produce a full log
> (with UHD_LOG_LEVEL=trace environment variable, and/or
> UHD_LOG_CONSOLE_LEVEL=trace environment variable depending on your config).
>
> Side note -- I'm happy you're using this API, and you seem to have gotten
> pretty far. Kudos!
>
> --M
>
> On Fri, Apr 23, 2021 at 7:09 PM Devin Kelly <dwwkelly@gmail.com> wrote:
>
>> Hello,
>>
>> I'm trying to calibrate the TX power for a USRP X310 using a Keysight
>> Field Fox N9952B.
>>
>> I wrote a class for the field fox that subclasses VISADevice.  It seems
>> to get the numbers from the FF fox fine.
>>
>> I run the calibration and it seems to work just fine:
>>
>> ./uhd_power_cal.py --args type=x300 -d tx --meas-dev visa --antenna 'TX/RX' -o 'import=field_fox' -o 'visa_query=USB0::MY_INSTRUMENT::INSTR'
>>
>> === Detecting USRP...
>> === Measurement direction: tx
>> === Initializing measurement device...
>> Loading external module: field_fox
>> /usr/local/lib/python3.6/site-packages/gpib_ctypes/gpib/gpib.py:54: UserWarning: GPIB library not found. Please manually load it using _load_lib(filename). All GPIB functions will raise OSError until the library is manually loaded.
>>   warnings.warn(message)
>> Loading external module: field_fox
>> Found VISA device: Keysight Field Fox N9952B
>> === Initializing port connector...
>> === Initializing USRP calibration object...
>> === Detected USRP type: X310
>> === Calibrating for channels: 0
>> === Calibrating for antennas: TX/RX
>> === Requested sampling rate: 5.0 Msps, actual rate: 5.0 Msps
>> === Launching calibration...
>> === Using USRP LO offset: 10.00 MHz
>> === Running calibration for channel 0, antenna TX/RX.
>> [tx] Connect your signal generator to device channel 0, antenna TX/RX. Then, hit Enter.
>> [X310] Switching to channel 0, antenna TX/RX.
>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>
>> [WARNING] [CAL::DATABASE] Calibration data already exists for key: `x3xx_pwr_generic_tx_tx+rx' serial: `311A8A8#0'. Backing up to: "/home/lb/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435"
>>
>>
>>
>> However, when I try to use the Power API I run into problems:
>>
>> ./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-freq 10e3
>> --power 10 --args='type=x300,serial=XXXXXXX' --channels 0
>>
>> Creating the usrp device with: type=x300,serial=XXXXXX...
>> Using Device: Single USRP:
>>   Device: X-Series Device
>>   Mboard 0: X310
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: UBX RX
>>   RX Channel: 1
>>     RX DSP: 1
>>     RX Dboard: B
>>     RX Subdev: UBX RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: UBX TX
>>   TX Channel: 1
>>     TX DSP: 1
>>     TX Dboard: B
>>     TX Subdev: UBX TX
>>
>> Setting TX Rate: 1.000000 Msps...
>> Actual TX Rate: 1.000000 Msps...
>>
>> Setting TX Freq: 900.000000 MHz...
>> Setting TX LO Offset: 0.000000 MHz...
>> Actual TX Freq: 900.000000 MHz...
>>
>> ERROR: USRP does not have a reference power API on channel 0!
>>
>>
>>
>> What am I not doing right?   All my cal files are
>> in  ~/.local/share/uhd/cal/
>>
>> The documentation (link <https://files.ettus.com/manual/page_power.html>)
>> talks about table storage options (hard coded, eeprom, local files) but it
>> doesn't discuss how to configure the UHD to use any of those options.  I
>> tried looking at the documentation for multi_usrp class too (link
>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8f90b41d8632c85ada>)
>> without any sucess.
>>
>> Devin
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000009d33bd05c1810ddd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Also, another clue to what&#39;s going wrong could be=
 in the cal data. Can you please convert it to JSON (<span style=3D"font-fa=
mily:monospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,25=
5,255)">flatc --strict-json -t /path/to/uhd/host/include/uhd/cal/pwr_cal.fb=
s -- ~/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_XXXXXXX#0.cal</span>)=
.</span></div><div><span style=3D"font-family:monospace"><br></span></div><=
div><span style=3D"font-family:monospace">You&#39;ll need to install flatc =
(flatbuffer compiler) first (e.g. apt install flatbuffers-compiler).</span>=
</div><div><span style=3D"font-family:monospace"><span style=3D"font-family=
:monospace"><span style=3D"color:rgb(24,178,24);background-color:rgb(255,25=
5,255)"><br></span></span></span></div><div><span style=3D"font-family:mono=
space"><span style=3D"font-family:monospace"><span style=3D"color:rgb(24,17=
8,24);background-color:rgb(255,255,255)">--M</span><br></span></span></div>=
<div><span style=3D"font-family:monospace"></span></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 4, 2021=
 at 3:22 PM Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">mart=
in.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div>Devin,</div><div><br></div><div>I t=
ried running the exact sequence that you did, and it worked fine (X310, UBX=
). Are you compiling UHD from source? If yes, can you please first enable f=
ull logging (-DUHD_LOG_MIN_LEVEL=3Dtrace) and then produce a full log (with=
 UHD_LOG_LEVEL=3Dtrace environment variable, and/or UHD_LOG_CONSOLE_LEVEL=
=3Dtrace environment variable depending on your config).</div><div><br></di=
v><div>Side note -- I&#39;m happy you&#39;re using this API, and you seem t=
o have gotten pretty far. Kudos!</div><div><br></div><div>--M<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, Apr 23, 2021 at 7:09 PM Devin Kelly &lt;<a href=3D"mailto:dwwkelly@gmai=
l.com" target=3D"_blank">dwwkelly@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><blockquote sty=
le=3D"margin:0px 0px 0px 40px;border:medium none;padding:0px">Hello,</block=
quote><div>I&#39;m trying to calibrate the TX power=C2=A0for a USRP X310 us=
ing a Keysight Field Fox N9952B.</div><div><br></div><div>I wrote a class f=
or the field fox that subclasses VISADevice.=C2=A0 It seems to get the numb=
ers from the FF fox fine.</div><div><br></div><div>I run the calibration an=
d it seems to work just fine:</div><div><br></div><div><pre style=3D"margin=
-top:0px;margin-bottom:0px;padding:15px 0px 0px 15px;font-family:Confluence=
InstalledFont,monospace;line-height:20px;font-size:14px;overflow-x:scroll;c=
olor:rgb(51,51,51)">./uhd_power_cal.py --args type=3Dx300 -d tx --meas-dev =
visa --antenna &#39;TX/RX&#39; -o &#39;import=3Dfield_fox&#39; -o &#39;visa=
_query=3DUSB0::MY_INSTRUMENT::INSTR&#39;</pre><pre style=3D"margin-top:0px;=
margin-bottom:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInstalled=
Font,monospace;line-height:20px;font-size:14px;overflow-x:scroll;color:rgb(=
51,51,51)">=3D=3D=3D Detecting USRP...<br>=3D=3D=3D Measurement direction: =
tx<br>=3D=3D=3D Initializing measurement device...<br>Loading external modu=
le: field_fox<br>/usr/local/lib/python3.6/site-packages/gpib_ctypes/gpib/gp=
ib.py:54: UserWarning: GPIB library not found. Please manually load it usin=
g _load_lib(filename). All GPIB functions will raise OSError until the libr=
ary is manually loaded.<br>=C2=A0 warnings.warn(message)<br>Loading externa=
l module: field_fox<br>Found VISA device: Keysight Field Fox N9952B<br>=3D=
=3D=3D Initializing port connector...<br>=3D=3D=3D Initializing USRP calibr=
ation object...<br>=3D=3D=3D Detected USRP type: X310<br>=3D=3D=3D Calibrat=
ing for channels: 0<br>=3D=3D=3D Calibrating for antennas: TX/RX<br>=3D=3D=
=3D Requested sampling rate: 5.0 Msps, actual rate: 5.0 Msps<br>=3D=3D=3D L=
aunching calibration...<br>=3D=3D=3D Using USRP LO offset: 10.00 MHz<br>=3D=
=3D=3D Running calibration for channel 0, antenna TX/RX.<br>[tx] Connect yo=
ur signal generator to device channel 0, antenna TX/RX. Then, hit Enter.<br=
>[X310] Switching to channel 0, antenna TX/RX.<br>[WARNING] [0/Radio#0] Att=
empting to set tick rate to 0. Skipping.<br></pre><pre style=3D"margin-top:=
0px;margin-bottom:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInsta=
lledFont,monospace;line-height:20px;font-size:14px;overflow-x:scroll;color:=
rgb(51,51,51)">[WARNING] [CAL::DATABASE] Calibration data already exists fo=
r key: `x3xx_pwr_generic_tx_tx+rx&#39; serial: `311A8A8#0&#39;. Backing up =
to: &quot;/home/lb/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0=
.cal.1619197435&quot;<br></pre></div><div><br></div><div><br></div><div>How=
ever, when I try to use the Power API I run into problems:</div><div><br></=
div><div><blockquote style=3D"margin:0px 0px 0px 40px;border:medium none;pa=
dding:0px"><div><font face=3D"monospace">./tx_waveforms --rate 1e6 --freq 9=
00e6 --wave-type SINE --wave-freq 10e3 --power 10 --args=3D&#39;type=3Dx300=
,serial=3DXXXXXXX&#39; --channels 0 <br><br>Creating the usrp device with: =
type=3Dx300,serial=3DXXXXXX...<br>Using Device: Single USRP:<br>=C2=A0 Devi=
ce: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=
=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subd=
ev: UBX RX<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=
=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0 TX Channel: 0=
<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 =
TX Subdev: UBX TX<br>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=
=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX Subdev: UBX TX<br><br>Setting T=
X Rate: 1.000000 Msps...<br>Actual TX Rate: 1.000000 Msps...<br><br>Setting=
 TX Freq: 900.000000 MHz...<br>Setting TX LO Offset: 0.000000 MHz...<br>Act=
ual TX Freq: 900.000000 MHz...<br><br>ERROR: USRP does not have a reference=
 power API on channel 0!</font><br></div></blockquote></div><div><br></div>=
<div><br></div><div>What am I not doing right?=C2=A0 =C2=A0All my cal files=
 are in=C2=A0=C2=A0~/.local/share/uhd/cal/</div><div><br></div><div>The doc=
umentation (<a href=3D"https://files.ettus.com/manual/page_power.html" targ=
et=3D"_blank">link</a>) talks about table storage options (hard coded, eepr=
om, local files) but it doesn&#39;t discuss how to configure the UHD to use=
 any of those options.=C2=A0 I tried looking at the documentation for multi=
_usrp class too (<a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp=
_1_1multi__usrp.html#af5384b36f4fe1f8f90b41d8632c85ada" target=3D"_blank">l=
ink</a>) without any sucess.</div><div><br></div><div>Devin</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--0000000000009d33bd05c1810ddd--

--===============7182975745465248976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7182975745465248976==--
