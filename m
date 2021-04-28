Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 861FD36DB22
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 17:20:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 860BC384545
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 11:20:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a9PahBKf";
	dkim-atps=neutral
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id F31B5383FCD
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 11:19:09 -0400 (EDT)
Received: by mail-qt1-f175.google.com with SMTP id o21so18802202qtp.7
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 08:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=dRgNU8pKVezUPHuvLykHDBZju1pINLWY8DJuzpeAj7M=;
        b=a9PahBKfXqZVemUaHYds7WWw+HADzwYf4lIiKrnRb9SnCcLbovYNugyiuY5TMn6EpP
         gLfY8+xRb6cQfIuEfPXP7R1V8RAVBcnq1RmydEnUVjUlqT1dC2LLtrtZb4h+82Iqui/v
         1dZR2mm8FS+qsbEFKAL9t5RI84ZZl+LfKDneL/sgq0mgZQtnQp48Xtqc79+0EgRbNUjm
         CQEkn04aZav0vaR4ZtgBIrls548c88Qz68CmQjMH1oXXyB09JBpne1zerkMsYYNIln24
         hwPrItRnRyka106NBCB/3xR9/rE2r9+kxHZO8N0/ExfsxvEUGbPBfnP2RBlsne7hGEdI
         4tpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=dRgNU8pKVezUPHuvLykHDBZju1pINLWY8DJuzpeAj7M=;
        b=mAoAAaXspWproW4SvQ5TVXs2A4i+FzzTB+bwzcC8+e2jj9kO0EQpMTDTYLQsxbngym
         TE4mL5dhqg5kxTDH/GrLPKbGSqr+71tw7F6zDf0ApdoRqCEJkmy8rblfe8Y6Wu9DtxRf
         kIQuAcxm02aew/4EAR7sUyveBRCAQqjZ1GHpgQgY7wq2kkw/m5Yo3SgcVqlcwHNMeEZ/
         oU8V4BVWQ4R+uDvtmUHMco74elVi2Z6lD+w0nv3XHuxDjHgMQy6aawi4nVTWoPz398DO
         dQAaSWa0xO5ms/kL2m9P+Q0PxQd7D0CsQuSTeOiRhLP0UqJ4BPYQWJPnTeLdsRKtXqpT
         cdug==
X-Gm-Message-State: AOAM5335hHEUie4Hq72uA+QoFhv+YCIMnIHkriDRE57mI2xT4ynjzoJE
	YJPqrg9hySZIu0XlPVqodSE=
X-Google-Smtp-Source: ABdhPJwoWBIXq65aHberl7spCo6wenyFEmkeYrj1KUkqw+bvHmx4yth4sjW/v0/OW7k86UNJ1AramQ==
X-Received: by 2002:ac8:4e01:: with SMTP id c1mr9925775qtw.168.1619623149397;
        Wed, 28 Apr 2021 08:19:09 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id o2sm4847qki.73.2021.04.28.08.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 08:19:09 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 28 Apr 2021 11:19:08 -0400
Message-Id: <E2B410C8-0263-424B-BABF-4B452767A889@gmail.com>
References: <CAANLyuYDUK5q6PCkFqtKOxinxTdVZesoMXgixqZxWJ4_dNBqBg@mail.gmail.com>
In-Reply-To: <CAANLyuYDUK5q6PCkFqtKOxinxTdVZesoMXgixqZxWJ4_dNBqBg@mail.gmail.com>
To: Devin Kelly <dwwkelly@gmail.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: LPFTAU6MFN5DVGYJOPVEAQH4WLKZXNLC
X-Message-ID-Hash: LPFTAU6MFN5DVGYJOPVEAQH4WLKZXNLC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 Power Calibration Problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LPFTAU6MFN5DVGYJOPVEAQH4WLKZXNLC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8266663883496999708=="


--===============8266663883496999708==
Content-Type: multipart/alternative; boundary=Apple-Mail-CAB7E198-7052-4A4E-86B1-B5BC9CA5693E
Content-Transfer-Encoding: 7bit


--Apple-Mail-CAB7E198-7052-4A4E-86B1-B5BC9CA5693E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I=E2=80=99m hoping to have someone from
R&D comment as I=E2=80=99ve never used the power calibration myself.=20

Sent from my iPhone

> On Apr 28, 2021, at 10:44 AM, Devin Kelly <dwwkelly@gmail.com> wrote:
>=20
> =EF=BB=BF
> Any ideas on this?
>=20
> Thanks,
> Devin
>=20
>> On Fri, Apr 23, 2021 at 1:09 PM Devin Kelly <dwwkelly@gmail.com> wrote:
>> Hello,
>> I'm trying to calibrate the TX power for a USRP X310 using a Keysight Fie=
ld Fox N9952B.
>>=20
>> I wrote a class for the field fox that subclasses VISADevice.  It seems t=
o get the numbers from the FF fox fine.
>>=20
>> I run the calibration and it seems to work just fine:
>>=20
>> ./uhd_power_cal.py --args type=3Dx300 -d tx --meas-dev visa --antenna 'TX=
/RX' -o 'import=3Dfield_fox' -o 'visa_query=3DUSB0::MY_INSTRUMENT::INSTR'
>> =3D=3D=3D Detecting USRP...
>> =3D=3D=3D Measurement direction: tx
>> =3D=3D=3D Initializing measurement device...
>> Loading external module: field_fox
>> /usr/local/lib/python3.6/site-packages/gpib_ctypes/gpib/gpib.py:54: UserW=
arning: GPIB library not found. Please manually load it using _load_lib(file=
name). All GPIB functions will raise OSError until the library is manually l=
oaded.
>>   warnings.warn(message)
>> Loading external module: field_fox
>> Found VISA device: Keysight Field Fox N9952B
>> =3D=3D=3D Initializing port connector...
>> =3D=3D=3D Initializing USRP calibration object...
>> =3D=3D=3D Detected USRP type: X310
>> =3D=3D=3D Calibrating for channels: 0
>> =3D=3D=3D Calibrating for antennas: TX/RX
>> =3D=3D=3D Requested sampling rate: 5.0 Msps, actual rate: 5.0 Msps
>> =3D=3D=3D Launching calibration...
>> =3D=3D=3D Using USRP LO offset: 10.00 MHz
>> =3D=3D=3D Running calibration for channel 0, antenna TX/RX.
>> [tx] Connect your signal generator to device channel 0, antenna TX/RX. Th=
en, hit Enter.
>> [X310] Switching to channel 0, antenna TX/RX.
>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>> [WARNING] [CAL::DATABASE] Calibration data already exists for key: `x3xx_=
pwr_generic_tx_tx+rx' serial: `311A8A8#0'. Backing up to: "/home/lb/.local/s=
hare/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A8#0.cal.1619197435"
>>=20
>>=20
>> However, when I try to use the Power API I run into problems:
>>=20
>> ./tx_waveforms --rate 1e6 --freq 900e6 --wave-type SINE --wave-freq 10e3 -=
-power 10 --args=3D'type=3Dx300,serial=3DXXXXXXX' --channels 0=20
>>=20
>> Creating the usrp device with: type=3Dx300,serial=3DXXXXXX...
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
>>=20
>> Setting TX Rate: 1.000000 Msps...
>> Actual TX Rate: 1.000000 Msps...
>>=20
>> Setting TX Freq: 900.000000 MHz...
>> Setting TX LO Offset: 0.000000 MHz...
>> Actual TX Freq: 900.000000 MHz...
>>=20
>> ERROR: USRP does not have a reference power API on channel 0!
>>=20
>>=20
>> What am I not doing right?   All my cal files are in  ~/.local/share/uhd/=
cal/
>>=20
>> The documentation (link) talks about table storage options (hard coded, e=
eprom, local files) but it doesn't discuss how to configure the UHD to use a=
ny of those options.  I tried looking at the documentation for multi_usrp cl=
ass too (link) without any sucess.
>>=20
>> Devin
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-CAB7E198-7052-4A4E-86B1-B5BC9CA5693E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I=E2=80=99m hoping to have someone from<div=
>R&amp;D comment as I=E2=80=99ve never used the power calibration myself.&nb=
sp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><b=
lockquote type=3D"cite">On Apr 28, 2021, at 10:44 AM, Devin Kelly &lt;dwwkel=
ly@gmail.com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite">=
<div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">Any ideas on this?<div><br></div>=
<div>Thanks,</div><div>Devin</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 23, 2021 at 1:09 PM Devin Kelly &=
lt;<a href=3D"mailto:dwwkelly@gmail.com">dwwkelly@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><b=
lockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">Hello,</=
blockquote><div>I'm trying to calibrate the TX power&nbsp;for a USRP X310 us=
ing a Keysight Field Fox N9952B.</div><div><br></div><div>I wrote a class fo=
r the field fox that subclasses VISADevice.&nbsp; It seems to get the number=
s from the FF fox fine.</div><div><br></div><div>I run the calibration and i=
t seems to work just fine:</div><div><br></div><div><pre style=3D"margin-top=
:0px;margin-bottom:0px;padding:15px 0px 0px 15px;font-family:ConfluenceInsta=
lledFont,monospace;line-height:20px;font-size:14px;overflow-x:scroll;color:r=
gb(51,51,51)">./uhd_power_cal.py --args type=3Dx300 -d tx --meas-dev visa --=
antenna 'TX/RX' -o 'import=3Dfield_fox' -o 'visa_query=3DUSB0::MY_INSTRUMENT=
::INSTR'</pre><pre style=3D"margin-top:0px;margin-bottom:0px;padding:15px 0p=
x 0px 15px;font-family:ConfluenceInstalledFont,monospace;line-height:20px;fo=
nt-size:14px;overflow-x:scroll;color:rgb(51,51,51)">=3D=3D=3D Detecting USRP=
...<br>=3D=3D=3D Measurement direction: tx<br>=3D=3D=3D Initializing measure=
ment device...<br>Loading external module: field_fox<br>/usr/local/lib/pytho=
n3.6/site-packages/gpib_ctypes/gpib/gpib.py:54: UserWarning: GPIB library no=
t found. Please manually load it using _load_lib(filename). All GPIB functio=
ns will raise OSError until the library is manually loaded.<br>&nbsp; warnin=
gs.warn(message)<br>Loading external module: field_fox<br>Found VISA device:=
 Keysight Field Fox N9952B<br>=3D=3D=3D Initializing port connector...<br>=3D=
=3D=3D Initializing USRP calibration object...<br>=3D=3D=3D Detected USRP ty=
pe: X310<br>=3D=3D=3D Calibrating for channels: 0<br>=3D=3D=3D Calibrating f=
or antennas: TX/RX<br>=3D=3D=3D Requested sampling rate: 5.0 Msps, actual ra=
te: 5.0 Msps<br>=3D=3D=3D Launching calibration...<br>=3D=3D=3D Using USRP L=
O offset: 10.00 MHz<br>=3D=3D=3D Running calibration for channel 0, antenna T=
X/RX.<br>[tx] Connect your signal generator to device channel 0, antenna TX/=
RX. Then, hit Enter.<br>[X310] Switching to channel 0, antenna TX/RX.<br>[WA=
RNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br></pre><pre=
 style=3D"margin-top:0px;margin-bottom:0px;padding:15px 0px 0px 15px;font-fa=
mily:ConfluenceInstalledFont,monospace;line-height:20px;font-size:14px;overf=
low-x:scroll;color:rgb(51,51,51)">[WARNING] [CAL::DATABASE] Calibration data=
 already exists for key: `x3xx_pwr_generic_tx_tx+rx' serial: `311A8A8#0'. Ba=
cking up to: "/home/lb/.local/share/uhd/cal/x3xx_pwr_generic_tx_tx+rx_311A8A=
8#0.cal.1619197435"<br></pre></div><div><br></div><div><br></div><div>Howeve=
r, when I try to use the Power API I run into problems:</div><div><br></div>=
<div><blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><=
div><font face=3D"monospace">./tx_waveforms --rate 1e6 --freq 900e6 --wave-t=
ype SINE --wave-freq 10e3 --power 10 --args=3D'type=3Dx300,serial=3DXXXXXXX'=
 --channels 0 <br><br>Creating the usrp device with: type=3Dx300,serial=3DXX=
XXXX...<br>Using Device: Single USRP:<br>&nbsp; Device: X-Series Device<br>&=
nbsp; Mboard 0: X310<br>&nbsp; RX Channel: 0<br>&nbsp; &nbsp; RX DSP: 0<br>&=
nbsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: UBX RX<br>&nbsp; RX Ch=
annel: 1<br>&nbsp; &nbsp; RX DSP: 1<br>&nbsp; &nbsp; RX Dboard: B<br>&nbsp; &=
nbsp; RX Subdev: UBX RX<br>&nbsp; TX Channel: 0<br>&nbsp; &nbsp; TX DSP: 0<b=
r>&nbsp; &nbsp; TX Dboard: A<br>&nbsp; &nbsp; TX Subdev: UBX TX<br>&nbsp; TX=
 Channel: 1<br>&nbsp; &nbsp; TX DSP: 1<br>&nbsp; &nbsp; TX Dboard: B<br>&nbs=
p; &nbsp; TX Subdev: UBX TX<br><br>Setting TX Rate: 1.000000 Msps...<br>Actu=
al TX Rate: 1.000000 Msps...<br><br>Setting TX Freq: 900.000000 MHz...<br>Se=
tting TX LO Offset: 0.000000 MHz...<br>Actual TX Freq: 900.000000 MHz...<br>=
<br>ERROR: USRP does not have a reference power API on channel 0!</font><br>=
</div></blockquote></div><div><br></div><div><br></div><div>What am I not do=
ing right?&nbsp; &nbsp;All my cal files are in&nbsp;&nbsp;~/.local/share/uhd=
/cal/</div><div><br></div><div>The documentation (<a href=3D"https://files.e=
ttus.com/manual/page_power.html" target=3D"_blank">link</a>) talks about tab=
le storage options (hard coded, eeprom, local files) but it doesn't discuss h=
ow to configure the UHD to use any of those options.&nbsp; I tried looking a=
t the documentation for multi_usrp class too (<a href=3D"https://files.ettus=
.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#af5384b36f4fe1f8f90b41d8632=
c85ada" target=3D"_blank">link</a>) without any sucess.</div><div><br></div>=
<div>Devin</div></div>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-CAB7E198-7052-4A4E-86B1-B5BC9CA5693E--

--===============8266663883496999708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8266663883496999708==--
