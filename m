Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC25D3E9A1C
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 22:55:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0133E3855C8
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 16:55:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="T624k1Ee";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id C0CE13855A6
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 16:54:24 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id a19so3959094qkg.2
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 13:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:subject:mime-version:from:in-reply-to:cc
         :date:message-id:references:to;
        bh=ZDZph7f6RGevTFwl4fEBgPgJFm2Mssq7+pGEVB4eg18=;
        b=T624k1EeJ6KNL2eAgM9T8CSXdpKdfF7DABDWyp98/DRVyj8FOVF4hfl3mXHwSaFFCK
         42iriGvBgaqLUHc+ZQht2R+HYTgQ+1IjpmCg1XY6Mgtibsk7gL2sI54CxaPS/GxVlMwj
         z5KfaV/VnriV9b4BRe57CZSFGnQAbAYpG6odeAL19KuZ8FBqcUmO4BmMn+HW5hXswnx3
         bBcikFbu0LUFu+OVQ6R1lka1sNm6686l6DBQNh8+gEhLBrRc7uUTnhzJGUzaT2NWQ2+R
         dbNShzoMQMyUqkFkKqbVLz9g0bRwx/PV4zzuNhxL/mvvNhLZEzRwtqFmjotQvKxnlgOH
         ATEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:subject:mime-version
         :from:in-reply-to:cc:date:message-id:references:to;
        bh=ZDZph7f6RGevTFwl4fEBgPgJFm2Mssq7+pGEVB4eg18=;
        b=oU0V7UqLDGv0b0PKzCJMsRRAVLvXUcy7HpIv7v6kZG5ChptG6yDejr29whxg8KEE1B
         UURnuhkeGnHW5TpqJz2SG6c1eIrE4OR5ZhviSqeS8Gq7idv4bGSHS6s6WxR4sh4sGAzi
         xZXiFkx5av4+Ei/3dh3+rCHzd+MxvyT9kbmDHlnx2TfAgC68DDFC5rIxpAjeyg56no46
         UBnWb9Fl1R7b6OEJafu8D9W15vPvfs77WfoK877Du0EDAOzUzMRYgeMvbnaprsErjOTT
         jf/9uaBMEtXqaAhF0t1Rwghd0faYm/M5oYSOZlLqy4VPfk5EYMokE/mA4vBDxEzrGKQa
         L/bA==
X-Gm-Message-State: AOAM530h++6dhW4XsxQiy0yFZNSiQ5G0P8S8QH85sH6+qr4TLC+SHcNN
	L7dBtHzziS3dzblv939LwEs=
X-Google-Smtp-Source: ABdhPJznM4fwR1XCIH4ubRXvfDtzx4XyvQ/hU5TZnAA3OlYzYhqvJa29MrS2aNEzbUx+ZkMYIAYDwQ==
X-Received: by 2002:a05:620a:319e:: with SMTP id bi30mr1033770qkb.138.1628715264194;
        Wed, 11 Aug 2021 13:54:24 -0700 (PDT)
Received: from smtpclient.apple ([2600:380:9126:87b0:590a:4f8d:a7a4:652])
        by smtp.gmail.com with ESMTPSA id i10sm169297qkl.51.2021.08.11.13.54.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 13:54:23 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Apple-Notify-Thread: NO
X-Universally-Unique-Identifier: E271CFAF-C4DF-453E-AAD8-8C490BB92552
From: Paul Atreides <maud.dib1984@gmail.com>
In-Reply-To: <daec4724-2664-bfcc-9545-8f83ebc28ce5@comcast.net>
Date: Wed, 11 Aug 2021 16:54:22 -0400
X-Apple-Message-Smime-Encrypt: NO
Message-Id: <85BA7272-0343-49F4-A744-7C4FD6098392@gmail.com>
References: <daec4724-2664-bfcc-9545-8f83ebc28ce5@comcast.net>
To: Ron Economos <w6rz@comcast.net>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: BOCALYH24NXMEYCHMHKKF4EZARN6RI7G
X-Message-ID-Hash: BOCALYH24NXMEYCHMHKKF4EZARN6RI7G
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BOCALYH24NXMEYCHMHKKF4EZARN6RI7G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6325702891165820416=="


--===============6325702891165820416==
Content-Type: multipart/alternative; boundary=Apple-Mail-5A79FE61-A978-4878-8753-F35033CF93B9
Content-Transfer-Encoding: 7bit


--Apple-Mail-5A79FE61-A978-4878-8753-F35033CF93B9
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Ok, I=E2=80=99ll definitely add this to 4.0.0.0 and give it a whirl as soon a=
s I=E2=80=99m in front of my machine again.=20

<end transmission>

> On Aug 11, 2021, at 14:31, Ron Economos <w6rz@comcast.net> wrote:
>=20
> =EF=BB=BF
> Here's what's working for me.
>=20
> 1) git clone https://github.com/EttusResearch/uhd.git
>=20
> 2) git checkout v4.0.0.0 -b tmp
>=20
> 3) edit the file host/lib/usrp/cores/rx_vita_core_3000.cpp and apply the o=
ne line patch in the correct place (before the comment "// issue the stream c=
ommand").
>=20
>         _continuous_streaming =3D stream_cmd.stream_mode
>                                 =3D=3D stream_cmd_t::STREAM_MODE_START_CON=
TINUOUS;
>=20
> 4) git diff
>=20
> If you edited the file correctly, you should see:
>=20
> diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp b/host/lib/usrp/cor=
es/rx_vita_core_3000.cpp
> index 4b09f75fd..368ae8e0a 100644
> --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
>          cmd_word |=3D uint32_t((inst_stop) ? 1 : 0) << 28;
>          cmd_word |=3D (inst_samps) ? stream_cmd.num_samps : ((inst_stop) ?=
 0 : 1);
> =20
> +        _continuous_streaming =3D stream_cmd.stream_mode
> +                                =3D=3D stream_cmd_t::STREAM_MODE_START_CO=
NTINUOUS;
> +
>          // issue the stream command
>          _iface->poke32(REG_CTRL_CMD, cmd_word);
>          const uint64_t ticks =3D
>=20
> 5) build as usual
>=20
> Just because the patch is in 4.1.0.0 and 4.1.0.1, doesn't mean they are fi=
xed. Something else could be broken that causes the same issue.
>=20
> Ron
>=20
> On 8/11/21 9:39 AM, Paul Atreides wrote:
>> just uninstalled and changed to origin/UHD4.1 and i have the same issue.=20=

>> On branch UHD-4.1
>> Your branch is up to date with 'origin/UHD-4.1'.
>>=20
>> On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides <maud.dib1984@gmail.com> w=
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
>>> On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides <maud.dib1984@gmail.com> w=
rote:
>>>> right on. thanks marcus.=20
>>>> i'm going to try a regular source build instead of pybombs and see if t=
hat fixes it (he said for the 200th time in his career).=20
>>>> i just wanted 2 dev environments for gnuradio and that worked really we=
ll for 3.7/3.8. if you have any suggestions i'm open to that.=20
>>>>=20
>>>> i'll keep you guys posted and thanks again for helping.=20
>>>>=20
>>>>=20
>>>> On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech <patchvonbraun@gmail.c=
om> wrote:
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
>>>>>>> On 08/11/2021 10:03 AM, Paul Atreides wrote:
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
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-5A79FE61-A978-4878-8753-F35033CF93B9
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Ok, I=E2=80=99ll definitely add this to 4.0=
.0.0 and give it a whirl as soon as I=E2=80=99m in front of my machine again=
.&nbsp;<div><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D=
"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-compositio=
n-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-frame-color=
: rgba(77, 128, 180, 0.230469); ">end transmission&gt;</span></div><div dir=3D=
"ltr"><br><blockquote type=3D"cite">On Aug 11, 2021, at 14:31, Ron Economos &=
lt;w6rz@comcast.net&gt; wrote:<br><br></blockquote></div><blockquote type=3D=
"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <p>Here's what's working for me.<br>
    </p>
    <p>1) git clone <a class=3D"moz-txt-link-freetext" href=3D"https://githu=
b.com/EttusResearch/uhd.git">https://github.com/EttusResearch/uhd.git</a></p=
>
    <p>2) git checkout v4.0.0.0 -b tmp</p>
    <p>3) edit the file host/lib/usrp/cores/rx_vita_core_3000.cpp and
      apply the one line patch in the correct place (before the comment
      "// issue the stream command").<br>
    </p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _continuous_streaming =3D s=
tream_cmd.stream_mode<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;</p>
    <p>4) git diff</p>
    <p>If you edited the file correctly, you should see:</p>
    <p>diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
      b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      index 4b09f75fd..368ae8e0a 100644<br>
      --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp<br>
      @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl :
      rx_vita_core_3000<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd_word |=3D uint32_=
t((inst_stop) ? 1 : 0) &lt;&lt; 28;<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cmd_word |=3D (inst_s=
amps) ? stream_cmd.num_samps :
      ((inst_stop) ? 0 : 1);<br>
      &nbsp;<br>
      +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _continuous_streaming =3D s=
tream_cmd.stream_mode<br>
      +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;<br>
      +<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // issue the stream c=
ommand<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _iface-&gt;poke32(REG=
_CTRL_CMD, cmd_word);<br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const uint64_t ticks =3D=
<br>
    </p>
    <p>5) build as usual</p>
    <p>Just because the patch is in 4.1.0.0 and 4.1.0.1, doesn't mean
      they are fixed. Something else could be broken that causes the
      same issue.</p>
    <p>Ron<br>
    </p>
    <div class=3D"moz-cite-prefix">On 8/11/21 9:39 AM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CACwKM9KH5OVWHAEsdGH0=3Dc7oRMoOQ7f=
5V+3-o+kM0Lp4ZnUxsw@mail.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
      <div dir=3D"ltr">
        <div>just uninstalled and changed to origin/UHD4.1 and i have
          the same issue. <br>
        </div>
        <div>On branch UHD-4.1<br>
          Your branch is up to date with 'origin/UHD-4.1'.<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 12:23
          PM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com" moz=
-do-not-send=3D"true">maud.dib1984@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>just built uhd systemwide from source. no pybombs
              environment. same issue rx_benchmark terminates after the
              first dropped sample.</div>
            <div>maybe the patch didn't make it? or i'm on the wrong
              branch?</div>
            <div>i ran git checkout v4.1.0.1 then the regular dance</div>
            <div><br>
            </div>
            <div>
              <div>~/uhd$ git status<br>
                HEAD detached at v4.1.0.1</div>
              <div>nothing to commit, working tree clean<br>
              </div>
            </div>
            <div><br>
            </div>
            <div>cd uhd/host</div>
            <div>mkdir build</div>
            <div>cd build</div>
            <div>cmake ../ (no errors or exclusions other than DPDK)</div>
            <div>make -j($nproc)</div>
            <div>sudo make install</div>
            <div>sudo ldconfig<br>
            </div>
            <div><br>
            </div>
            <br>
            <div><br>
            </div>
            <div>uhd/host/build/examples/./rx_samples_to_file --rate
              40e6 --gain 40.0 --freq 915e6 --bw 36e6 --progress --file
              testfile.bin --continue --duration 20<br>
              <br>
              Creating the usrp device with: ...<br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_4.1.0.HEAD-0-gf633b497<br>
              [INFO] [B200] Detected Device: B210<br>
              [INFO] [B200] Operating over USB 3.<br>
              [INFO] [B200] Detecting internal GPSDO.... <br>
              [INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware
              Rev 0.929b<br>
              [INFO] [B200] Initialize CODEC control...<br>
              [INFO] [B200] Initialize Radio control...<br>
              [INFO] [B200] Performing register loopback test... <br>
              [INFO] [B200] Register loopback test passed<br>
              [INFO] [B200] Performing register loopback test... <br>
              [INFO] [B200] Register loopback test passed<br>
              [INFO] [B200] Setting master clock rate selection to
              'automatic'.<br>
              [INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
              [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
              Using Device: Single USRP:<br>
              &nbsp; Device: B-Series Device<br>
              &nbsp; Mboard 0: B210<br>
              &nbsp; RX Channel: 0<br>
              &nbsp; &nbsp; RX DSP: 0<br>
              &nbsp; &nbsp; RX Dboard: A<br>
              &nbsp; &nbsp; RX Subdev: FE-RX2<br>
              &nbsp; RX Channel: 1<br>
              &nbsp; &nbsp; RX DSP: 1<br>
              &nbsp; &nbsp; RX Dboard: A<br>
              &nbsp; &nbsp; RX Subdev: FE-RX1<br>
              &nbsp; TX Channel: 0<br>
              &nbsp; &nbsp; TX DSP: 0<br>
              &nbsp; &nbsp; TX Dboard: A<br>
              &nbsp; &nbsp; TX Subdev: FE-TX2<br>
              &nbsp; TX Channel: 1<br>
              &nbsp; &nbsp; TX DSP: 1<br>
              &nbsp; &nbsp; TX Dboard: A<br>
              &nbsp; &nbsp; TX Subdev: FE-TX1<br>
              <br>
              Setting RX Rate: 40.000000 Msps...<br>
              [INFO] [B200] Asking for clock rate 40.000000 MHz... <br>
              [INFO] [B200] Actually got clock rate 40.000000 MHz.<br>
              Actual RX Rate: 40.000000 Msps...<br>
              <br>
              Setting RX Freq: 915.000000 MHz...<br>
              Setting RX LO Offset: 0.000000 MHz...<br>
              Actual RX Freq: 915.000000 MHz...<br>
              <br>
              Setting RX Gain: 40.000000 dB...<br>
              Actual RX Gain: 40.000000 dB...<br>
              <br>
              Setting RX Bandwidth: 36.000000 MHz...<br>
              Actual RX Bandwidth: 36.000000 MHz...<br>
              <br>
              Waiting for "lo_locked": ++++++++++ locked.<br>
              <br>
              Press Ctrl + C to stop streaming...<br>
              40.0125 Msps<br>
              39.9994 Msps<br>
              39.9995 Msps<br>
              OGot an overflow indication. Please consider the
              following:<br>
              &nbsp; Your write medium must sustain a rate of 160.000000MB/s=
.<br>
              &nbsp; Dropped samples will not be written to the file.<br>
              &nbsp; Please modify this example for your purposes.<br>
              &nbsp; This message will not appear again.<br>
              Timeout while streaming<br>
              <br>
              Done!<br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at
              10:42 AM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmai=
l.com" target=3D"_blank" moz-do-not-send=3D"true">maud.dib1984@gmail.com</a>=
&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">
                <div>right on. thanks marcus. <br>
                </div>
                <div>i'm going to try a regular source build instead of
                  pybombs and see if that fixes it (he said for the
                  200th time in his career). <br>
                </div>
                <div>i just wanted 2 dev environments for gnuradio and
                  that worked really well for 3.7/3.8. if you have any
                  suggestions i'm open to that. <br>
                </div>
                <div><br>
                </div>
                <div>i'll keep you guys posted and thanks again for
                  helping. <br>
                </div>
                <div><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021
                  at 10:36 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com" target=3D"_blank" moz-do-not-send=3D"true">patchvonbraun@gm=
ail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <div>On 08/11/2021 10:20 AM, Paul Atreides wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">right. i tried 4.1 first, then
                        master then rolled back to 4.0. they all did the
                        same thing.<br>
                        <div>according to micheal's post above the patch
                          is applied to 4.0 master. the latest UHD-4.0
                          rev is <a href=3D"https://github.com/EttusResearch=
/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2" target=3D"_blank" moz-=
do-not-send=3D"true">here</a>
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
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug
                          11, 2021 at 10:07 AM Marcus D. Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com" target=3D"_blank" moz-do-not-send=3D"true">=
patchvonbraun@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div bgcolor=3D"#FFFFFF">
                            <div>On 08/11/2021 10:03 AM, Paul Atreides
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div dir=3D"auto">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">Ok, then what else
                                      could it be? it's the identical
                                      behavior to the report ed bug.<br>
                                      <br>
                                      <div><span style=3D"color:rgb(0,0,0)">=
I
                                          have a b210 and b205mini and
                                          both produce this issue&nbsp;</spa=
n>
                                        <div style=3D"color:rgb(0,0,0)">Both=

                                          have worked fine at higher
                                          sample rates in the past.&nbsp;</d=
iv>
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
                            It was not part of the UHD 4.0.0.0 release,
                            and has not been backported to the
                            UHD-3.15-LTS (or prior) branch. - MLD<br>
                            <div><br>
                              You're still running 4.0.0.0 as shown in
                              the UHD startup header here:<br>
                              <br>
                              [INFO] [UHD] linux; GNU C++ version 9.3.0;
                              Boost_107100; UHD_4.0.0.0-193-g0d184ff4<br>
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
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">_______________________________=
________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"mai=
lto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</=
a>
</pre>
    </blockquote>
 =20

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-5A79FE61-A978-4878-8753-F35033CF93B9--

--===============6325702891165820416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6325702891165820416==--
