Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D273E9A14
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 22:52:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8F263847AC
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 16:52:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EkDIDOxj";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 8609F384EF2
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 16:51:59 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id d9so3192470qty.12
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 13:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=UDSB/TXI2B74wzeB2M5qtkXJgjnoV8jb5O+WEa7ln/g=;
        b=EkDIDOxjK4ha+NYBrKVHD1BTlllUPF3dvFwux/aH0VBm5NttqzliL0hET46qWQvJZ8
         jBbjCL50Ptjid/U1+7Dj68fzX1vJDSMZYHQZDZ8N9LdHYj4y41LtYzVNVSmTf6nwgCba
         LBDZr/i9m1LDy8khGcG9s7B1TnNOQJNdc/3SBQNEdGA3woQmrIks7/lELcCeHpdXNu8t
         HbNDAEWeKNztiYJyyvHbH+vxjYJqhmd+VwPQzRecfgO2GDGlFPCfoPVINIk22cHFKsEm
         O+v3BsCHifHpZKR664CrE24aaFKTfYc/M9IwACBaC7sAc4m2YltTcHmvauuP0NIko8E5
         AYIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=UDSB/TXI2B74wzeB2M5qtkXJgjnoV8jb5O+WEa7ln/g=;
        b=om9Li9QWztydsk3uAHnQ5ofg/a8AVf6QaAQguLl08n0bJlo4kMv5pp61YTf4mc9KRZ
         5iTjaiPE4ywGCVqMhHSjnLI/uY74q8KMenSRpjRag5UAASsUKgzh4mfi66PusRSVGN3F
         fdZi50JRcq2kg9PqZg30XAQRwl/jqToVcJLGG2zi35LuGTnSuCEuuglJddkMe6Qzt/ge
         Hq2t92///zi8SpSL2xrf6Jo0hVJ7hDm8ZlLn1UHAz/GwBlfgKG6W4w2Ygk05U8/8OKGB
         Rc37XT8WokRoOTfwOiLBRGK0p9ajpUwMDmjhvlvCXgDEmBTwDF3spTsiJyvd5p0hvmbJ
         CEwA==
X-Gm-Message-State: AOAM531E67a+VxJ4OKWuNTE1aGt23a0UlX8y99pj5/PSUgiYC4j1dAn5
	Kp5iLPubL0Os4pjJ882aLlSo1T/+/xk=
X-Google-Smtp-Source: ABdhPJwuHnALBxM9F/CLzMBbkI8q5uTz+ruOVLyw35eeORku1I6Uf/8wH/LymuKDGSYN7ln2EG9oKg==
X-Received: by 2002:a05:622a:14ce:: with SMTP id u14mr581665qtx.165.1628715118538;
        Wed, 11 Aug 2021 13:51:58 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:9126:87b0:590a:4f8d:a7a4:652])
        by smtp.gmail.com with ESMTPSA id o139sm160012qke.129.2021.08.11.13.51.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 13:51:58 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 11 Aug 2021 16:51:56 -0400
Message-Id: <8D9C4B49-5529-414B-9833-9E6429C479B0@gmail.com>
References: <280FA36D-8E90-4AD3-AA36-0E506C42290F@gmail.com>
In-Reply-To: <280FA36D-8E90-4AD3-AA36-0E506C42290F@gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: 6AY5WNJ4SWR4ZWTN4JYHBHZ25BHNWKHT
X-Message-ID-Hash: 6AY5WNJ4SWR4ZWTN4JYHBHZ25BHNWKHT
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AY5WNJ4SWR4ZWTN4JYHBHZ25BHNWKHT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8048074017084878417=="


--===============8048074017084878417==
Content-Type: multipart/alternative; boundary=Apple-Mail-344904B5-01CF-4540-8EB4-62AC45674A09
Content-Transfer-Encoding: 7bit


--Apple-Mail-344904B5-01CF-4540-8EB4-62AC45674A09
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

No it doesn=E2=80=99t. In fact dmesg doesn=E2=80=99t show anything. I probab=
ly should=E2=80=99ve added UHD debug flags one of the times I recompiled. Ca=
n still do that to help get to the bottom of the issue but it sounds like Et=
tus is aware.=20

<end transmission>

> On Aug 11, 2021, at 13:04, Marcus D Leech <patchvonbraun@gmail.com> wrote:=

>=20
> =EF=BB=BFWhen this happens, does dmesg show anything unusual with respect t=
o that USB device?
>=20
> Sent from my iPhone
>=20
>>> On Aug 11, 2021, at 12:40 PM, Paul Atreides <maud.dib1984@gmail.com> wro=
te:
>>>=20
>> =EF=BB=BF
>> just uninstalled and changed to origin/UHD4.1 and i have the same issue.=20=

>> On branch UHD-4.1
>> Your branch is up to date with 'origin/UHD-4.1'.
>>=20
>>> On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides <maud.dib1984@gmail.com> w=
rote:
>>> just built uhd systemwide from source. no pybombs environment. same issu=
e rx_benchmark terminates after the first dropped sample.
>>> maybe the patch didn't make it? or i'm on the wrong branch?
>>> i ran git checkout v4.1.0.1 then the regular dance
>>>=20
>>> ~/uhd$ git status
>>> HEAD detached at v4.1.0.1
>>> nothing to commit, working tree clean
>>>=20
>>> cd uhd/host
>>> mkdir build
>>> cd build
>>> cmake ../ (no errors or exclusions other than DPDK)
>>> make -j($nproc)
>>> sudo make install
>>> sudo ldconfig
>>>=20
>>>=20
>>>=20
>>> uhd/host/build/examples/./rx_samples_to_file --rate 40e6 --gain 40.0 --f=
req 915e6 --bw 36e6 --progress --file testfile.bin --continue --duration 20
>>>=20
>>> Creating the usrp device with: ...
>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-=
0-gf633b497
>>> [INFO] [B200] Detected Device: B210
>>> [INFO] [B200] Operating over USB 3.
>>> [INFO] [B200] Detecting internal GPSDO....=20
>>> [INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
>>> [INFO] [B200] Initialize CODEC control...
>>> [INFO] [B200] Initialize Radio control...
>>> [INFO] [B200] Performing register loopback test...=20
>>> [INFO] [B200] Register loopback test passed
>>> [INFO] [B200] Performing register loopback test...=20
>>> [INFO] [B200] Register loopback test passed
>>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>> [INFO] [B200] Asking for clock rate 16.000000 MHz...=20
>>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>> Using Device: Single USRP:
>>>   Device: B-Series Device
>>>   Mboard 0: B210
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: FE-RX2
>>>   RX Channel: 1
>>>     RX DSP: 1
>>>     RX Dboard: A
>>>     RX Subdev: FE-RX1
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: FE-TX2
>>>   TX Channel: 1
>>>     TX DSP: 1
>>>     TX Dboard: A
>>>     TX Subdev: FE-TX1
>>>=20
>>> Setting RX Rate: 40.000000 Msps...
>>> [INFO] [B200] Asking for clock rate 40.000000 MHz...=20
>>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>>> Actual RX Rate: 40.000000 Msps...
>>>=20
>>> Setting RX Freq: 915.000000 MHz...
>>> Setting RX LO Offset: 0.000000 MHz...
>>> Actual RX Freq: 915.000000 MHz...
>>>=20
>>> Setting RX Gain: 40.000000 dB...
>>> Actual RX Gain: 40.000000 dB...
>>>=20
>>> Setting RX Bandwidth: 36.000000 MHz...
>>> Actual RX Bandwidth: 36.000000 MHz...
>>>=20
>>> Waiting for "lo_locked": ++++++++++ locked.
>>>=20
>>> Press Ctrl + C to stop streaming...
>>> 40.0125 Msps
>>> 39.9994 Msps
>>> 39.9995 Msps
>>> OGot an overflow indication. Please consider the following:
>>>   Your write medium must sustain a rate of 160.000000MB/s.
>>>   Dropped samples will not be written to the file.
>>>   Please modify this example for your purposes.
>>>   This message will not appear again.
>>> Timeout while streaming
>>>=20
>>> Done!
>>>=20
>>>> On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides <maud.dib1984@gmail.com>=
 wrote:
>>>> right on. thanks marcus.=20
>>>> i'm going to try a regular source build instead of pybombs and see if t=
hat fixes it (he said for the 200th time in his career).=20
>>>> i just wanted 2 dev environments for gnuradio and that worked really we=
ll for 3.7/3.8. if you have any suggestions i'm open to that.=20
>>>>=20
>>>> i'll keep you guys posted and thanks again for helping.=20
>>>>=20
>>>>=20
>>>>> On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech <patchvonbraun@gmail.=
com> wrote:
>>>>> On 08/11/2021 10:20 AM, Paul Atreides wrote:
>>>>>> right. i tried 4.1 first, then master then rolled back to 4.0. they a=
ll did the same thing.
>>>>>> according to micheal's post above the patch is applied to 4.0 master.=
 the latest UHD-4.0 rev is here (0d184ff)
>>>>>> this is my output
>>>>>> UHD_4.0.0.0-193-g0d184ff4
>>>>>>=20
>>>>>>=20
>>>>> The patch is definitely in 4.1.0.0 and 4.1.0.1
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>> On Wed, Aug 11, 2021 at 10:07 AM Marcus D. Leech <patchvonbraun@gmail=
.com> wrote:
>>>>>>>> On 08/11/2021 10:03 AM, Paul Atreides wrote:
>>>>>>>> Ok, then what else could it be? it's the identical behavior to the r=
eport ed bug.
>>>>>>>>=20
>>>>>>>> I have a b210 and b205mini and both produce this issue=20
>>>>>>>> Both have worked fine at higher sample rates in the past.=20
>>>>>>>>=20
>>>>>>>> My setup is=20
>>>>>>>> ubuntu20.04
>>>>>>>> UHD 4.0 (via pybombs)
>>>>>>>> GNURadio 3.9 (via pybombs)
>>>>>>>>=20
>>>>>>> This is what Michael Dickens said:
>>>>>>>=20
>>>>>>> It was not part of the UHD 4.0.0.0 release, and has not been backpor=
ted to the UHD-3.15-LTS (or prior) branch. - MLD
>>>>>>>=20
>>>>>>> You're still running 4.0.0.0 as shown in the UHD startup header here=
:
>>>>>>>=20
>>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0=
-193-g0d184ff4
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>=20

--Apple-Mail-344904B5-01CF-4540-8EB4-62AC45674A09
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">No it doesn=E2=80=99t. In fact dmesg doesn=E2=
=80=99t show anything. I probably should=E2=80=99ve added UHD debug flags on=
e of the times I recompiled. Can still do that to help get to the bottom of t=
he issue but it sounds like Ettus is aware.&nbsp;<br><br><div dir=3D"ltr">&l=
t;<span class=3D"Apple-style-span" style=3D"-webkit-tap-highlight-color: rgb=
a(26, 26, 26, 0.296875); -webkit-composition-fill-color: rgba(175, 192, 227,=
 0.230469); -webkit-composition-frame-color: rgba(77, 128, 180, 0.230469); "=
>end transmission&gt;</span></div><div dir=3D"ltr"><br><blockquote type=3D"c=
ite">On Aug 11, 2021, at 13:04, Marcus D Leech &lt;patchvonbraun@gmail.com&g=
t; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"lt=
r">=EF=BB=BF<meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8">When this happens, does dmesg show anything unusual with respect to t=
hat USB device?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Aug 11, 2021, at 12:40 PM, Paul Atrei=
des &lt;maud.dib1984@gmail.com&gt; wrote:<br><br></blockquote></div><blockqu=
ote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>just unins=
talled and changed to origin/UHD4.1 and i have the same issue. <br></div><di=
v>On branch UHD-4.1<br>Your branch is up to date with 'origin/UHD-4.1'.<br> <=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides &lt;<a href=3D"mailto:mau=
d.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>just built uhd=
 systemwide from source. no pybombs environment. same issue rx_benchmark ter=
minates after the first dropped sample.</div><div>maybe the patch didn't mak=
e it? or i'm on the wrong branch?</div><div>i ran git checkout v4.1.0.1 then=
 the regular dance</div><div><br></div><div><div>~/uhd$ git status<br>HEAD d=
etached at v4.1.0.1</div><div>nothing to commit, working tree clean<br></div=
></div><div><br></div><div>cd uhd/host</div><div>mkdir build</div><div>cd bu=
ild</div><div>cmake ../ (no errors or exclusions other than DPDK)</div><div>=
make -j($nproc)</div><div>sudo make install</div><div>sudo ldconfig<br></div=
><div><br></div><br><div><br></div><div>uhd/host/build/examples/./rx_samples=
_to_file --rate 40e6 --gain 40.0 --freq 915e6 --bw 36e6 --progress --file te=
stfile.bin --continue --duration 20<br><br>Creating the usrp device with: ..=
.<br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD=
-0-gf633b497<br>[INFO] [B200] Detected Device: B210<br>[INFO] [B200] Operati=
ng over USB 3.<br>[INFO] [B200] Detecting internal GPSDO.... <br>[INFO] [GPS=
] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b<br>[INFO] [B200] Ini=
tialize CODEC control...<br>[INFO] [B200] Initialize Radio control...<br>[IN=
FO] [B200] Performing register loopback test... <br>[INFO] [B200] Register l=
oopback test passed<br>[INFO] [B200] Performing register loopback test... <b=
r>[INFO] [B200] Register loopback test passed<br>[INFO] [B200] Setting maste=
r clock rate selection to 'automatic'.<br>[INFO] [B200] Asking for clock rat=
e 16.000000 MHz... <br>[INFO] [B200] Actually got clock rate 16.000000 MHz.<=
br>Using Device: Single USRP:<br>&nbsp; Device: B-Series Device<br>&nbsp; Mb=
oard 0: B210<br>&nbsp; RX Channel: 0<br>&nbsp; &nbsp; RX DSP: 0<br>&nbsp; &n=
bsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: FE-RX2<br>&nbsp; RX Channel: 1=
<br>&nbsp; &nbsp; RX DSP: 1<br>&nbsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; R=
X Subdev: FE-RX1<br>&nbsp; TX Channel: 0<br>&nbsp; &nbsp; TX DSP: 0<br>&nbsp=
; &nbsp; TX Dboard: A<br>&nbsp; &nbsp; TX Subdev: FE-TX2<br>&nbsp; TX Channe=
l: 1<br>&nbsp; &nbsp; TX DSP: 1<br>&nbsp; &nbsp; TX Dboard: A<br>&nbsp; &nbs=
p; TX Subdev: FE-TX1<br><br>Setting RX Rate: 40.000000 Msps...<br>[INFO] [B2=
00] Asking for clock rate 40.000000 MHz... <br>[INFO] [B200] Actually got cl=
ock rate 40.000000 MHz.<br>Actual RX Rate: 40.000000 Msps...<br><br>Setting R=
X Freq: 915.000000 MHz...<br>Setting RX LO Offset: 0.000000 MHz...<br>Actual=
 RX Freq: 915.000000 MHz...<br><br>Setting RX Gain: 40.000000 dB...<br>Actua=
l RX Gain: 40.000000 dB...<br><br>Setting RX Bandwidth: 36.000000 MHz...<br>=
Actual RX Bandwidth: 36.000000 MHz...<br><br>Waiting for "lo_locked": ++++++=
++++ locked.<br><br>Press Ctrl + C to stop streaming...<br>	40.0125 Msp=
s<br>	39.9994 Msps<br>	39.9995 Msps<br>OGot an overflow indication=
. Please consider the following:<br>&nbsp; Your write medium must sustain a r=
ate of 160.000000MB/s.<br>&nbsp; Dropped samples will not be written to the f=
ile.<br>&nbsp; Please modify this example for your purposes.<br>&nbsp; This m=
essage will not appear again.<br>Timeout while streaming<br><br>Done!<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides &lt;<a href=3D"mailto:maud.=
dib1984@gmail.com" target=3D"_blank">maud.dib1984@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>right on. thanks marcus. <br></div><div>i'm going to try a regular source=
 build instead of pybombs and see if that fixes it (he said for the 200th ti=
me in his career). <br></div><div>i just wanted 2 dev environments for gnura=
dio and that worked really well for 3.7/3.8. if you have any suggestions i'm=
 open to that. <br></div><div><br></div><div>i'll keep you guys posted and t=
hanks again for helping. <br></div><div><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 10:=
36 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D=
"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 08/11/2021 10:20 AM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">right. i tried 4.1 first, then master then rolled
        back to 4.0. they all did the same thing.<br>
        <div>according to micheal's post above the patch is applied to
          4.0 master. the latest UHD-4.0 rev is <a href=3D"https://github.co=
m/EttusResearch/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2" target=3D=
"_blank">here</a>
          (0d184ff)</div>
        <div>this is my output<br>
        </div>
        <div>UHD_4.0.0.0-193-g0d184ff4</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    The patch is definitely in 4.1.0.0 and 4.1.0.1<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 10:07
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 08/11/2021 10:03 AM, Paul Atreides wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div dir=3D"auto">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">Ok, then what else could it be? it's
                      the identical behavior to the report ed bug.<br>
                      <br>
                      <div><span style=3D"color:rgb(0,0,0)">I have a b210
                          and b205mini and both produce this issue&nbsp;</sp=
an>
                        <div style=3D"color:rgb(0,0,0)">Both have worked
                          fine at higher sample rates in the past.&nbsp;</di=
v>
                      </div>
                      <div style=3D"color:rgb(0,0,0)"><br>
                      </div>
                      <div>My setup is&nbsp;</div>
                      <div>ubuntu20.04</div>
                      <div>UHD 4.0 (via pybombs)</div>
                      <div>GNURadio 3.9 (via pybombs)</div>
                      <br>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            This is what Michael Dickens said:<br>
            <br>
            It was not part of the UHD 4.0.0.0 release, and has not been
            backported to the UHD-3.15-LTS (or prior) branch. - MLD<br>
            <div><br>
              You're still running 4.0.0.0 as shown in the UHD startup
              header here:<br>
              <br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_4.0.0.0-193-g0d184ff4<br>
              <br>
              <br>
              <br>
            </div>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</blockquote></div>
</blockquote></div>
</div></blockquote></div></blockquote></body></html>=

--Apple-Mail-344904B5-01CF-4540-8EB4-62AC45674A09--

--===============8048074017084878417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8048074017084878417==--
