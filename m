Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDDC3E9DBC
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 07:01:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66FC9384013
	for <lists+usrp-users@lfdr.de>; Thu, 12 Aug 2021 01:01:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cT8eVYWV";
	dkim-atps=neutral
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 897AB383FD7
	for <usrp-users@lists.ettus.com>; Thu, 12 Aug 2021 01:00:15 -0400 (EDT)
Received: by mail-lj1-f170.google.com with SMTP id h17so8589368ljh.13
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 22:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=INLW+cse3ZBE8msp+v4XCSPK3Wa1hAstSUOW8QIRJtI=;
        b=cT8eVYWV6+bC/yPlcTkfpiiUM5knEmU/7ZQSl/bxggbnJJkUTJAQbwgRhzXPCnuu3Y
         blH4igVrHOEZ/N+EA/4INWSPUgrJFR5LO2eChjSqgjpArbPxnIEnREFWUOIM0V7C96aa
         rNHoAIHOqLHCJzSAUo1zaiSBwTXpztcBMFGC5fPsGfvvwH7fL1LmQ6unWiOS3kTrXF3B
         0aV//KBcc1aePmySD7D4Z4sMopEKeUT3RWKW9q5L7x28ytPhkkqcDPbl2eY1sJbGUUwS
         9ruMN/Tqofw2BnPbtynHWnRBxZo1cZ2iinpn3kJBn8Os6ljMQZq9a49wQyInnrrEVD/h
         Bg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=INLW+cse3ZBE8msp+v4XCSPK3Wa1hAstSUOW8QIRJtI=;
        b=fMXGvJSCMqxVMXQl9cFBBQ5gEyVtf3eTpTfUZAJdqGKrC9BJpLDSlBoDD5S/MGc4EB
         6gMDz9hOWnTYuVh8p+4nYE1yRoGAiwi5I6TM644CKgI1xQpCyOaUOUj/cUHnIJRHrVei
         uk/g01Ja/Jqfd4WtpFHszumQun0bPBycREspu+6pKqxohlicL9hbJMaz1TitW588gxdj
         UEdl6HxJTZRmWKikiA6LoUkPqltcck3dYDlp0EWqGec83xs3TehO5ZWyxga6UNXmBu8I
         M9iYY9LHvBmcEVSYD540ggIi4M0SV+nBRn+wml0Unm3uf3/PTVYT5fnSmznNYeOUN4vz
         P6LQ==
X-Gm-Message-State: AOAM5325+ke7w+0wTHwBSdC+M2ipzQphv0l5On/lLHzcDDr5zJWkD7m2
	CN9PALezlMvsReRb/XAE9AIeMgUp03i/bSQ5oRY=
X-Google-Smtp-Source: ABdhPJzdjljNEXipb3n40C6r9k+TgTeJlURLQvu0dTE3F0+oobBUAGesW7oR6ZcrdeS0eiLaWrKQszV2SF+CBrhN/T4=
X-Received: by 2002:a2e:95c1:: with SMTP id y1mr1583106ljh.71.1628744414117;
 Wed, 11 Aug 2021 22:00:14 -0700 (PDT)
MIME-Version: 1.0
References: <daec4724-2664-bfcc-9545-8f83ebc28ce5@comcast.net> <85BA7272-0343-49F4-A744-7C4FD6098392@gmail.com>
In-Reply-To: <85BA7272-0343-49F4-A744-7C4FD6098392@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Thu, 12 Aug 2021 01:00:03 -0400
Message-ID: <CACwKM9KFHnAYx2MiAx7M3cwsuV60D+XJwYuj1aYae9iN7pAvew@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
Message-ID-Hash: CGPQVJL4D6DM43TM5SRQ7EAQ73UWLN5Z
X-Message-ID-Hash: CGPQVJL4D6DM43TM5SRQ7EAQ73UWLN5Z
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGPQVJL4D6DM43TM5SRQ7EAQ73UWLN5Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0909244256455786905=="

--===============0909244256455786905==
Content-Type: multipart/alternative; boundary="0000000000003bc3ab05c9559c8e"

--0000000000003bc3ab05c9559c8e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

this works great. I build from source and it worked. next i uninstalled and
switched to a pybombs prefix.
thanks so much for the help guys. Ron, this was a lifesaver for my
workflow. really appreciate it.



On Wed, Aug 11, 2021 at 4:54 PM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> Ok, I=E2=80=99ll definitely add this to 4.0.0.0 and give it a whirl as so=
on as I=E2=80=99m
> in front of my machine again.
>
> <end transmission>
>
> On Aug 11, 2021, at 14:31, Ron Economos <w6rz@comcast.net> wrote:
>
> =EF=BB=BF
>
> Here's what's working for me.
>
> 1) git clone https://github.com/EttusResearch/uhd.git
>
> 2) git checkout v4.0.0.0 -b tmp
>
> 3) edit the file host/lib/usrp/cores/rx_vita_core_3000.cpp and apply the
> one line patch in the correct place (before the comment "// issue the
> stream command").
>
>         _continuous_streaming =3D stream_cmd.stream_mode
>                                 =3D=3D
> stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
>
> 4) git diff
>
> If you edited the file correctly, you should see:
>
> diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> index 4b09f75fd..368ae8e0a 100644
> --- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
> +++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
> @@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
>          cmd_word |=3D uint32_t((inst_stop) ? 1 : 0) << 28;
>          cmd_word |=3D (inst_samps) ? stream_cmd.num_samps : ((inst_stop)=
 ?
> 0 : 1);
>
> +        _continuous_streaming =3D stream_cmd.stream_mode
> +                                =3D=3D
> stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
> +
>          // issue the stream command
>          _iface->poke32(REG_CTRL_CMD, cmd_word);
>          const uint64_t ticks =3D
>
> 5) build as usual
>
> Just because the patch is in 4.1.0.0 and 4.1.0.1, doesn't mean they are
> fixed. Something else could be broken that causes the same issue.
>
> Ron
> On 8/11/21 9:39 AM, Paul Atreides wrote:
>
> just uninstalled and changed to origin/UHD4.1 and i have the same issue.
> On branch UHD-4.1
> Your branch is up to date with 'origin/UHD-4.1'.
>
> On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides <maud.dib1984@gmail.com>
> wrote:
>
>> just built uhd systemwide from source. no pybombs environment. same issu=
e
>> rx_benchmark terminates after the first dropped sample.
>> maybe the patch didn't make it? or i'm on the wrong branch?
>> i ran git checkout v4.1.0.1 then the regular dance
>>
>> ~/uhd$ git status
>> HEAD detached at v4.1.0.1
>> nothing to commit, working tree clean
>>
>> cd uhd/host
>> mkdir build
>> cd build
>> cmake ../ (no errors or exclusions other than DPDK)
>> make -j($nproc)
>> sudo make install
>> sudo ldconfig
>>
>>
>>
>> uhd/host/build/examples/./rx_samples_to_file --rate 40e6 --gain 40.0
>> --freq 915e6 --bw 36e6 --progress --file testfile.bin --continue --durat=
ion
>> 20
>>
>> Creating the usrp device with: ...
>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>> UHD_4.1.0.HEAD-0-gf633b497
>> [INFO] [B200] Detected Device: B210
>> [INFO] [B200] Operating over USB 3.
>> [INFO] [B200] Detecting internal GPSDO....
>> [INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
>> [INFO] [B200] Initialize CODEC control...
>> [INFO] [B200] Initialize Radio control...
>> [INFO] [B200] Performing register loopback test...
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Performing register loopback test...
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>> [INFO] [B200] Asking for clock rate 16.000000 MHz...
>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>> Using Device: Single USRP:
>>   Device: B-Series Device
>>   Mboard 0: B210
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: FE-RX2
>>   RX Channel: 1
>>     RX DSP: 1
>>     RX Dboard: A
>>     RX Subdev: FE-RX1
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: FE-TX2
>>   TX Channel: 1
>>     TX DSP: 1
>>     TX Dboard: A
>>     TX Subdev: FE-TX1
>>
>> Setting RX Rate: 40.000000 Msps...
>> [INFO] [B200] Asking for clock rate 40.000000 MHz...
>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>> Actual RX Rate: 40.000000 Msps...
>>
>> Setting RX Freq: 915.000000 MHz...
>> Setting RX LO Offset: 0.000000 MHz...
>> Actual RX Freq: 915.000000 MHz...
>>
>> Setting RX Gain: 40.000000 dB...
>> Actual RX Gain: 40.000000 dB...
>>
>> Setting RX Bandwidth: 36.000000 MHz...
>> Actual RX Bandwidth: 36.000000 MHz...
>>
>> Waiting for "lo_locked": ++++++++++ locked.
>>
>> Press Ctrl + C to stop streaming...
>> 40.0125 Msps
>> 39.9994 Msps
>> 39.9995 Msps
>> OGot an overflow indication. Please consider the following:
>>   Your write medium must sustain a rate of 160.000000MB/s.
>>   Dropped samples will not be written to the file.
>>   Please modify this example for your purposes.
>>   This message will not appear again.
>> Timeout while streaming
>>
>> Done!
>>
>> On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides <maud.dib1984@gmail.com>
>> wrote:
>>
>>> right on. thanks marcus.
>>> i'm going to try a regular source build instead of pybombs and see if
>>> that fixes it (he said for the 200th time in his career).
>>> i just wanted 2 dev environments for gnuradio and that worked really
>>> well for 3.7/3.8. if you have any suggestions i'm open to that.
>>>
>>> i'll keep you guys posted and thanks again for helping.
>>>
>>>
>>> On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech <
>>> patchvonbraun@gmail.com> wrote:
>>>
>>>> On 08/11/2021 10:20 AM, Paul Atreides wrote:
>>>>
>>>> right. i tried 4.1 first, then master then rolled back to 4.0. they al=
l
>>>> did the same thing.
>>>> according to micheal's post above the patch is applied to 4.0 master.
>>>> the latest UHD-4.0 rev is here
>>>> <https://github.com/EttusResearch/uhd/commit/0d184ff412c2710c15c023771=
1ab57c5033692a2>
>>>> (0d184ff)
>>>> this is my output
>>>> UHD_4.0.0.0-193-g0d184ff4
>>>>
>>>>
>>>> The patch is definitely in 4.1.0.0 and 4.1.0.1
>>>>
>>>>
>>>>
>>>> On Wed, Aug 11, 2021 at 10:07 AM Marcus D. Leech <
>>>> patchvonbraun@gmail.com> wrote:
>>>>
>>>>> On 08/11/2021 10:03 AM, Paul Atreides wrote:
>>>>>
>>>>> Ok, then what else could it be? it's the identical behavior to the
>>>>> report ed bug.
>>>>>
>>>>> I have a b210 and b205mini and both produce this issue
>>>>> Both have worked fine at higher sample rates in the past.
>>>>>
>>>>> My setup is
>>>>> ubuntu20.04
>>>>> UHD 4.0 (via pybombs)
>>>>> GNURadio 3.9 (via pybombs)
>>>>>
>>>>> This is what Michael Dickens said:
>>>>>
>>>>> It was not part of the UHD 4.0.0.0 release, and has not been
>>>>> backported to the UHD-3.15-LTS (or prior) branch. - MLD
>>>>>
>>>>> You're still running 4.0.0.0 as shown in the UHD startup header here:
>>>>>
>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>> UHD_4.0.0.0-193-g0d184ff4
>>>>>
>>>>>
>>>>>
>>>>>
>>>>>
>>>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000003bc3ab05c9559c8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>this works great. I build from source and it worked. =
next i uninstalled and switched to a pybombs prefix. <br></div><div>thanks =
so much for the help guys. Ron, this was a lifesaver for my workflow. reall=
y appreciate it.<br></div><div><br></div><div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 202=
1 at 4:54 PM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">ma=
ud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"auto">Ok, I=E2=80=99ll definitely add this =
to 4.0.0.0 and give it a whirl as soon as I=E2=80=99m in front of my machin=
e again.=C2=A0<div><br><div dir=3D"ltr">&lt;<span>end transmission&gt;</spa=
n></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 11, 2021, at =
14:31, Ron Economos &lt;<a href=3D"mailto:w6rz@comcast.net" target=3D"_blan=
k">w6rz@comcast.net</a>&gt; wrote:<br><br></blockquote></div><blockquote ty=
pe=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
   =20
 =20
 =20
    <p>Here&#39;s what&#39;s working for me.<br>
    </p>
    <p>1) git clone <a href=3D"https://github.com/EttusResearch/uhd.git" ta=
rget=3D"_blank">https://github.com/EttusResearch/uhd.git</a></p>
    <p>2) git checkout v4.0.0.0 -b tmp</p>
    <p>3) edit the file host/lib/usrp/cores/rx_vita_core_3000.cpp and
      apply the one line patch in the correct place (before the comment
      &quot;// issue the stream command&quot;).<br>
    </p>
    <p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D=
 stream_cmd.stream_mode<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D
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
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D uint32=
_t((inst_stop) ? 1 : 0) &lt;&lt; 28;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D (inst_=
samps) ? stream_cmd.num_samps :
      ((inst_stop) ? 0 : 1);<br>
      =C2=A0<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D=
 stream_cmd.stream_mode<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;<br>
      +<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // issue the stream =
command<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _iface-&gt;poke32(RE=
G_CTRL_CMD, cmd_word);<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const uint64_t ticks=
 =3D<br>
    </p>
    <p>5) build as usual</p>
    <p>Just because the patch is in 4.1.0.0 and 4.1.0.1, doesn&#39;t mean
      they are fixed. Something else could be broken that causes the
      same issue.</p>
    <p>Ron<br>
    </p>
    <div>On 8/11/21 9:39 AM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>just uninstalled and changed to origin/UHD4.1 and i have
          the same issue. <br>
        </div>
        <div>On branch UHD-4.1<br>
          Your branch is up to date with &#39;origin/UHD-4.1&#39;.<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 12:23
          PM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com" ta=
rget=3D"_blank">maud.dib1984@gmail.com</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div>just built uhd systemwide from source. no pybombs
              environment. same issue rx_benchmark terminates after the
              first dropped sample.</div>
            <div>maybe the patch didn&#39;t make it? or i&#39;m on the wron=
g
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
              &#39;automatic&#39;.<br>
              [INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
              [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
              Using Device: Single USRP:<br>
              =C2=A0 Device: B-Series Device<br>
              =C2=A0 Mboard 0: B210<br>
              =C2=A0 RX Channel: 0<br>
              =C2=A0 =C2=A0 RX DSP: 0<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: FE-RX2<br>
              =C2=A0 RX Channel: 1<br>
              =C2=A0 =C2=A0 RX DSP: 1<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: FE-RX1<br>
              =C2=A0 TX Channel: 0<br>
              =C2=A0 =C2=A0 TX DSP: 0<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: FE-TX2<br>
              =C2=A0 TX Channel: 1<br>
              =C2=A0 =C2=A0 TX DSP: 1<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: FE-TX1<br>
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
              Waiting for &quot;lo_locked&quot;: ++++++++++ locked.<br>
              <br>
              Press Ctrl + C to stop streaming...<br>
              40.0125 Msps<br>
              39.9994 Msps<br>
              39.9995 Msps<br>
              OGot an overflow indication. Please consider the
              following:<br>
              =C2=A0 Your write medium must sustain a rate of 160.000000MB/=
s.<br>
              =C2=A0 Dropped samples will not be written to the file.<br>
              =C2=A0 Please modify this example for your purposes.<br>
              =C2=A0 This message will not appear again.<br>
              Timeout while streaming<br>
              <br>
              Done!<br>
            </div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at
              10:42 AM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gma=
il.com" target=3D"_blank">maud.dib1984@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">
                <div>right on. thanks marcus. <br>
                </div>
                <div>i&#39;m going to try a regular source build instead of
                  pybombs and see if that fixes it (he said for the
                  200th time in his career). <br>
                </div>
                <div>i just wanted 2 dev environments for gnuradio and
                  that worked really well for 3.7/3.8. if you have any
                  suggestions i&#39;m open to that. <br>
                </div>
                <div><br>
                </div>
                <div>i&#39;ll keep you guys posted and thanks again for
                  helping. <br>
                </div>
                <div><br>
                </div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021
                  at 10:36 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvo=
nbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <div>On 08/11/2021 10:20 AM, Paul Atreides wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">right. i tried 4.1 first, then
                        master then rolled back to 4.0. they all did the
                        same thing.<br>
                        <div>according to micheal&#39;s post above the patc=
h
                          is applied to 4.0 master. the latest UHD-4.0
                          rev is <a href=3D"https://github.com/EttusResearc=
h/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2" target=3D"_blank">he=
re</a>
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
                          11, 2021 at 10:07 AM Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div bgcolor=3D"#FFFFFF">
                            <div>On 08/11/2021 10:03 AM, Paul Atreides
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">
                                <div dir=3D"auto">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">Ok, then what else
                                      could it be? it&#39;s the identical
                                      behavior to the report ed bug.<br>
                                      <br>
                                      <div><span style=3D"color:rgb(0,0,0)"=
>I
                                          have a b210 and b205mini and
                                          both produce this issue=C2=A0</sp=
an>
                                        <div style=3D"color:rgb(0,0,0)">Bot=
h
                                          have worked fine at higher
                                          sample rates in the past.=C2=A0</=
div>
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
                            It was not part of the UHD 4.0.0.0 release,
                            and has not been backported to the
                            UHD-3.15-LTS (or prior) branch. - MLD<br>
                            <div><br>
                              You&#39;re still running 4.0.0.0 as shown in
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
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
 =20

<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div>

--0000000000003bc3ab05c9559c8e--

--===============0909244256455786905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0909244256455786905==--
