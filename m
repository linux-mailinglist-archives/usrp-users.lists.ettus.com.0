Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D013E3E9635
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 18:40:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 201B5384B88
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 12:40:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dNWFR1td";
	dkim-atps=neutral
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 00CB23840D1
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 12:40:03 -0400 (EDT)
Received: by mail-lf1-f46.google.com with SMTP id w20so7031615lfu.7
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 09:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=bOQxPywsCeZ2z4ZjTeBJ3qxuvgmXPzlLOMLZgQ13NTQ=;
        b=dNWFR1td72ade8iH1NIOgCvz4Rpmhu1thQJjuKErIkP6poISRbWC1fMdrzHFIKrDoU
         l3LyVdfvQ4hXdUj4hmsdGWW01rVthPssvaSeqPMU0cAdjZgX+4GY4l8h8T5upmNiiUA+
         UvDv8tD8yjfi/7LdQa+3a5N9NESq2nFccfqeYk5hy8Oujz9AZDTRzLExw47vEhrPlDri
         YGmYRwcBdYDf5bGpN8SQhE02gW6z8O0PUr5XHtylcEmL8Mz2wmBgEuWms4frSXKB6k0j
         DHKITcQ+uAT38WmlZESaaW/vY1EQuMVAzxIrQAbx/4OyMVTMixaK4dYfNx6CHYajTOZT
         Q1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=bOQxPywsCeZ2z4ZjTeBJ3qxuvgmXPzlLOMLZgQ13NTQ=;
        b=FFaoa9nLGfISCA0Ly2WnKGownCdqOLJtGGXZdrvRcH9PxXwomdaJF9L4T0Sflvy9sm
         Ozq8yARYzkmzznTJ/53u+mRyHhlQv/bnlJr0br8gcaybQb7HnSORP6NlPpI+DiR28Tma
         5oBmddNWpyblNGRH+DjIz5caeCg6gbMPF4RMEXvOb3HRxwMVtBJidfVWDA63r9J54GYP
         BlhqyM9QmLTsoeGaL7kpHlJ3Dw3WOw2SM8VLSlENO0TKgYSxIlb17n91RXcU6NDzv4WS
         1/PqmOvLknL1TjgLnkNTEk3+2qSsGP6mqv3cgwwa4npJZrRF2ak9v2BK2R6VqgJ9lD/6
         C+HA==
X-Gm-Message-State: AOAM531AwaW7IYl34LVYYbZ2OxmDbeahkZ9hftxylPybNAyAb/hg4ku8
	IrDbfnhxE6BqfTSkl8/LF8cbwP5mo3XZ9ZHa9Nw=
X-Google-Smtp-Source: ABdhPJyqN5Vp0quCKPXKk4EeI4rByIuVxzwbWxZMAz+nLhFJeCvVFCsbp2izzK36fM5BCdRgl+5YdLfJVcNmTrjZ2cQ=
X-Received: by 2002:a05:6512:33d4:: with SMTP id d20mr25800850lfg.424.1628700002624;
 Wed, 11 Aug 2021 09:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net>
 <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com> <CAGNhwTOCg=9kne-5jcW3PRGOJaov-3c+obt0didmw0PQmVA=TQ@mail.gmail.com>
 <CACwKM9L2b0o5aLRRVCwgcOVAa+HV_J+fhheTNbMOJJEC6J+wwQ@mail.gmail.com>
 <6113D9AA.3060909@gmail.com> <CACwKM9+E4=q-UHCF6YxCxd+noszB+eHrkErc0_42x2Fs76A03w@mail.gmail.com>
 <6113E069.1090300@gmail.com> <CACwKM9KX4g_XpCtP8YRjYZucuinyNosJoH6e_KRukf=c3wpxng@mail.gmail.com>
 <CACwKM9LEE7LtFeS-e1LEzOZ1o64ZcttwZ+YTPc6GQzhQ9xbkAA@mail.gmail.com>
In-Reply-To: <CACwKM9LEE7LtFeS-e1LEzOZ1o64ZcttwZ+YTPc6GQzhQ9xbkAA@mail.gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Wed, 11 Aug 2021 12:39:51 -0400
Message-ID: <CACwKM9KH5OVWHAEsdGH0=c7oRMoOQ7f5V+3-o+kM0Lp4ZnUxsw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users <usrp-users@lists.ettus.com>,
	Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: GEWBASUBWXAEMDDQLWR7LZFRZFEEV7CO
X-Message-ID-Hash: GEWBASUBWXAEMDDQLWR7LZFRZFEEV7CO
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GEWBASUBWXAEMDDQLWR7LZFRZFEEV7CO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8093833466013256506=="

--===============8093833466013256506==
Content-Type: multipart/alternative; boundary="0000000000001a26d105c94b451a"

--0000000000001a26d105c94b451a
Content-Type: text/plain; charset="UTF-8"

just uninstalled and changed to origin/UHD4.1 and i have the same issue.
On branch UHD-4.1
Your branch is up to date with 'origin/UHD-4.1'.

On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> just built uhd systemwide from source. no pybombs environment. same issue
> rx_benchmark terminates after the first dropped sample.
> maybe the patch didn't make it? or i'm on the wrong branch?
> i ran git checkout v4.1.0.1 then the regular dance
>
> ~/uhd$ git status
> HEAD detached at v4.1.0.1
> nothing to commit, working tree clean
>
> cd uhd/host
> mkdir build
> cd build
> cmake ../ (no errors or exclusions other than DPDK)
> make -j($nproc)
> sudo make install
> sudo ldconfig
>
>
>
> uhd/host/build/examples/./rx_samples_to_file --rate 40e6 --gain 40.0
> --freq 915e6 --bw 36e6 --progress --file testfile.bin --continue --duration
> 20
>
> Creating the usrp device with: ...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.1.0.HEAD-0-gf633b497
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Detecting internal GPSDO....
> [INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> Using Device: Single USRP:
>   Device: B-Series Device
>   Mboard 0: B210
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: FE-RX2
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: FE-RX1
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: FE-TX2
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: FE-TX1
>
> Setting RX Rate: 40.000000 Msps...
> [INFO] [B200] Asking for clock rate 40.000000 MHz...
> [INFO] [B200] Actually got clock rate 40.000000 MHz.
> Actual RX Rate: 40.000000 Msps...
>
> Setting RX Freq: 915.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz...
> Actual RX Freq: 915.000000 MHz...
>
> Setting RX Gain: 40.000000 dB...
> Actual RX Gain: 40.000000 dB...
>
> Setting RX Bandwidth: 36.000000 MHz...
> Actual RX Bandwidth: 36.000000 MHz...
>
> Waiting for "lo_locked": ++++++++++ locked.
>
> Press Ctrl + C to stop streaming...
> 40.0125 Msps
> 39.9994 Msps
> 39.9995 Msps
> OGot an overflow indication. Please consider the following:
>   Your write medium must sustain a rate of 160.000000MB/s.
>   Dropped samples will not be written to the file.
>   Please modify this example for your purposes.
>   This message will not appear again.
> Timeout while streaming
>
> Done!
>
> On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides <maud.dib1984@gmail.com>
> wrote:
>
>> right on. thanks marcus.
>> i'm going to try a regular source build instead of pybombs and see if
>> that fixes it (he said for the 200th time in his career).
>> i just wanted 2 dev environments for gnuradio and that worked really well
>> for 3.7/3.8. if you have any suggestions i'm open to that.
>>
>> i'll keep you guys posted and thanks again for helping.
>>
>>
>> On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 08/11/2021 10:20 AM, Paul Atreides wrote:
>>>
>>> right. i tried 4.1 first, then master then rolled back to 4.0. they all
>>> did the same thing.
>>> according to micheal's post above the patch is applied to 4.0 master.
>>> the latest UHD-4.0 rev is here
>>> <https://github.com/EttusResearch/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2>
>>> (0d184ff)
>>> this is my output
>>> UHD_4.0.0.0-193-g0d184ff4
>>>
>>>
>>> The patch is definitely in 4.1.0.0 and 4.1.0.1
>>>
>>>
>>>
>>> On Wed, Aug 11, 2021 at 10:07 AM Marcus D. Leech <
>>> patchvonbraun@gmail.com> wrote:
>>>
>>>> On 08/11/2021 10:03 AM, Paul Atreides wrote:
>>>>
>>>> Ok, then what else could it be? it's the identical behavior to the
>>>> report ed bug.
>>>>
>>>> I have a b210 and b205mini and both produce this issue
>>>> Both have worked fine at higher sample rates in the past.
>>>>
>>>> My setup is
>>>> ubuntu20.04
>>>> UHD 4.0 (via pybombs)
>>>> GNURadio 3.9 (via pybombs)
>>>>
>>>> This is what Michael Dickens said:
>>>>
>>>> It was not part of the UHD 4.0.0.0 release, and has not been backported
>>>> to the UHD-3.15-LTS (or prior) branch. - MLD
>>>>
>>>> You're still running 4.0.0.0 as shown in the UHD startup header here:
>>>>
>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_4.0.0.0-193-g0d184ff4
>>>>
>>>>
>>>>
>>>>
>>>>
>>>

--0000000000001a26d105c94b451a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>just uninstalled and changed to origin/UHD4.1 and i h=
ave the same issue. <br></div><div>On branch UHD-4.1<br>Your branch is up t=
o date with &#39;origin/UHD-4.1&#39;.<br> </div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 12:=
23 PM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1=
984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div>just built uhd systemwide from source. n=
o pybombs environment. same issue rx_benchmark terminates after the first d=
ropped sample.</div><div>maybe the patch didn&#39;t make it? or i&#39;m on =
the wrong branch?</div><div>i ran git checkout v4.1.0.1 then the regular da=
nce</div><div><br></div><div><div>~/uhd$ git status<br>HEAD detached at v4.=
1.0.1</div><div>nothing to commit, working tree clean<br></div></div><div><=
br></div><div>cd uhd/host</div><div>mkdir build</div><div>cd build</div><di=
v>cmake ../ (no errors or exclusions other than DPDK)</div><div>make -j($np=
roc)</div><div>sudo make install</div><div>sudo ldconfig<br></div><div><br>=
</div><br><div><br></div><div>uhd/host/build/examples/./rx_samples_to_file =
--rate 40e6 --gain 40.0 --freq 915e6 --bw 36e6 --progress --file testfile.b=
in --continue --duration 20<br><br>Creating the usrp device with: ...<br>[I=
NFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0-gf6=
33b497<br>[INFO] [B200] Detected Device: B210<br>[INFO] [B200] Operating ov=
er USB 3.<br>[INFO] [B200] Detecting internal GPSDO.... <br>[INFO] [GPS] Fo=
und an internal GPSDO: GPSTCXO, Firmware Rev 0.929b<br>[INFO] [B200] Initia=
lize CODEC control...<br>[INFO] [B200] Initialize Radio control...<br>[INFO=
] [B200] Performing register loopback test... <br>[INFO] [B200] Register lo=
opback test passed<br>[INFO] [B200] Performing register loopback test... <b=
r>[INFO] [B200] Register loopback test passed<br>[INFO] [B200] Setting mast=
er clock rate selection to &#39;automatic&#39;.<br>[INFO] [B200] Asking for=
 clock rate 16.000000 MHz... <br>[INFO] [B200] Actually got clock rate 16.0=
00000 MHz.<br>Using Device: Single USRP:<br>=C2=A0 Device: B-Series Device<=
br>=C2=A0 Mboard 0: B210<br>=C2=A0 RX Channel: 0<br>=C2=A0 =C2=A0 RX DSP: 0=
<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subdev: FE-RX2<br>=C2=A0=
 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1<br>=C2=A0 =C2=A0 RX Dboard: A<br>=
=C2=A0 =C2=A0 RX Subdev: FE-RX1<br>=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX=
 DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=C2=A0 =C2=A0 TX Subdev: FE-TX2<br=
>=C2=A0 TX Channel: 1<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard=
: A<br>=C2=A0 =C2=A0 TX Subdev: FE-TX1<br><br>Setting RX Rate: 40.000000 Ms=
ps...<br>[INFO] [B200] Asking for clock rate 40.000000 MHz... <br>[INFO] [B=
200] Actually got clock rate 40.000000 MHz.<br>Actual RX Rate: 40.000000 Ms=
ps...<br><br>Setting RX Freq: 915.000000 MHz...<br>Setting RX LO Offset: 0.=
000000 MHz...<br>Actual RX Freq: 915.000000 MHz...<br><br>Setting RX Gain: =
40.000000 dB...<br>Actual RX Gain: 40.000000 dB...<br><br>Setting RX Bandwi=
dth: 36.000000 MHz...<br>Actual RX Bandwidth: 36.000000 MHz...<br><br>Waiti=
ng for &quot;lo_locked&quot;: ++++++++++ locked.<br><br>Press Ctrl + C to s=
top streaming...<br>	40.0125 Msps<br>	39.9994 Msps<br>	39.9995 Msps<br>OGot=
 an overflow indication. Please consider the following:<br>=C2=A0 Your writ=
e medium must sustain a rate of 160.000000MB/s.<br>=C2=A0 Dropped samples w=
ill not be written to the file.<br>=C2=A0 Please modify this example for yo=
ur purposes.<br>=C2=A0 This message will not appear again.<br>Timeout while=
 streaming<br><br>Done!<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 10:42 AM Paul Atre=
ides &lt;<a href=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank">maud.d=
ib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>right on. thanks marcus. <br></div><d=
iv>i&#39;m going to try a regular source build instead of pybombs and see i=
f that fixes it (he said for the 200th time in his career). <br></div><div>=
i just wanted 2 dev environments for gnuradio and that worked really well f=
or 3.7/3.8. if you have any suggestions i&#39;m open to that. <br></div><di=
v><br></div><div>i&#39;ll keep you guys posted and thanks again for helping=
. <br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech=
 &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
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
        <div>according to micheal&#39;s post above the patch is applied to
          4.0 master. the latest UHD-4.0 rev is <a href=3D"https://github.c=
om/EttusResearch/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2" targe=
t=3D"_blank">here</a>
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
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 08/11/2021 10:03 AM, Paul Atreides wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div dir=3D"auto">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">Ok, then what else could it be? it&#39=
;s
                      the identical behavior to the report ed bug.<br>
                      <br>
                      <div><span style=3D"color:rgb(0,0,0)">I have a b210
                          and b205mini and both produce this issue=C2=A0</s=
pan>
                        <div style=3D"color:rgb(0,0,0)">Both have worked
                          fine at higher sample rates in the past.=C2=A0</d=
iv>
                      </div>
                      <div style=3D"color:rgb(0,0,0)"><br>
                      </div>
                      <div>My setup is=C2=A0</div>
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
              You&#39;re still running 4.0.0.0 as shown in the UHD startup
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

--0000000000001a26d105c94b451a--

--===============8093833466013256506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8093833466013256506==--
