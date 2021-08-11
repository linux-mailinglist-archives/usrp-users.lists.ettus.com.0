Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB523E97AB
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 20:31:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45FD53849B3
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 14:31:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="R950GnGU";
	dkim-atps=neutral
Received: from resqmta-po-07v.sys.comcast.net (resqmta-po-07v.sys.comcast.net [96.114.154.166])
	by mm2.emwd.com (Postfix) with ESMTPS id 34389384164
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 14:30:45 -0400 (EDT)
Received: from resomta-po-04v.sys.comcast.net ([96.114.154.228])
	by resqmta-po-07v.sys.comcast.net with ESMTP
	id DqJYmfUleiCWIDt00mB23e; Wed, 11 Aug 2021 18:30:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1628706644;
	bh=NF5ma+wMBgTWm19wEm4e2fu1R7HyYF79pnZyPKN3qBY=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=R950GnGUJDseotsqJLNFqPgWxRiqOLmOkntgsMVCcYKIrsOKNK7obzwAvZzPiLZGS
	 D30jdXLcpYilNrpMQHhyoit6ApllSprAFb5y212LVB+Hy9jzeAVZeEvWlhRbXRdtxK
	 ecSIqSpK0c4mgr5/O8F6P6xfWcT++j3kQjZndHwO0pI9T/uxvx2zYkSbChBBAjUlSH
	 9A69jUCvB5rWubfpCTST4go3mJlN0udvsQkj40rh1Ol3OhdhiomH1Y8fA1M3P4lF0n
	 zZODVmmQ9u/BXO98gkIyLirzaqgRPGDdCUCZ/PZ0u+MHnbE70n4/bH1VDg5/+HbMoo
	 eHocl4kgK7Hsw==
Received: from [IPv6:2601:647:4700:284:9bf8:302d:8816:dde0]
 ([IPv6:2601:647:4700:284:9bf8:302d:8816:dde0])
	by resomta-po-04v.sys.comcast.net with ESMTPSA
	id DszzmJvHHXpUmDszzmy57I; Wed, 11 Aug 2021 18:30:43 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <c6aa89dd-f347-6094-3b6b-319b506faadf@comcast.net>
 <E0638E2A-C2D8-4258-A334-001D11E67F7F@gmail.com>
 <CAGNhwTOCg=9kne-5jcW3PRGOJaov-3c+obt0didmw0PQmVA=TQ@mail.gmail.com>
 <CACwKM9L2b0o5aLRRVCwgcOVAa+HV_J+fhheTNbMOJJEC6J+wwQ@mail.gmail.com>
 <6113D9AA.3060909@gmail.com>
 <CACwKM9+E4=q-UHCF6YxCxd+noszB+eHrkErc0_42x2Fs76A03w@mail.gmail.com>
 <6113E069.1090300@gmail.com>
 <CACwKM9KX4g_XpCtP8YRjYZucuinyNosJoH6e_KRukf=c3wpxng@mail.gmail.com>
 <CACwKM9LEE7LtFeS-e1LEzOZ1o64ZcttwZ+YTPc6GQzhQ9xbkAA@mail.gmail.com>
 <CACwKM9KH5OVWHAEsdGH0=c7oRMoOQ7f5V+3-o+kM0Lp4ZnUxsw@mail.gmail.com>
From: Ron Economos <w6rz@comcast.net>
Message-ID: <daec4724-2664-bfcc-9545-8f83ebc28ce5@comcast.net>
Date: Wed, 11 Aug 2021 11:30:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CACwKM9KH5OVWHAEsdGH0=c7oRMoOQ7f5V+3-o+kM0Lp4ZnUxsw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 2NJPNKXHSHBNL2TES2EPUHJL25JWYOQH
X-Message-ID-Hash: 2NJPNKXHSHBNL2TES2EPUHJL25JWYOQH
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2NJPNKXHSHBNL2TES2EPUHJL25JWYOQH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3434385245584378839=="

This is a multi-part message in MIME format.
--===============3434385245584378839==
Content-Type: multipart/alternative;
 boundary="------------84B9C4F446D954CFF559874B"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------84B9C4F446D954CFF559874B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Here's what's working for me.

1) git clone https://github.com/EttusResearch/uhd.git

2) git checkout v4.0.0.0 -b tmp

3) edit the file host/lib/usrp/cores/rx_vita_core_3000.cpp and apply the=20
one line patch in the correct place (before the comment "// issue the=20
stream command").

 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D str=
eam_cmd.stream_mode
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D=20
stream_cmd_t::STREAM_MODE_START_CONTINUOUS;

4) git diff

If you edited the file correctly, you should see:

diff --git a/host/lib/usrp/cores/rx_vita_core_3000.cpp=20
b/host/lib/usrp/cores/rx_vita_core_3000.cpp
index 4b09f75fd..368ae8e0a 100644
--- a/host/lib/usrp/cores/rx_vita_core_3000.cpp
+++ b/host/lib/usrp/cores/rx_vita_core_3000.cpp
@@ -117,6 +117,9 @@ struct rx_vita_core_3000_impl : rx_vita_core_3000
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D uint32_t(=
(inst_stop) ? 1 : 0) << 28;
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D (inst_sam=
ps) ? stream_cmd.num_samps : ((inst_stop)=20
? 0 : 1);

+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D str=
eam_cmd.stream_mode
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D=20
stream_cmd_t::STREAM_MODE_START_CONTINUOUS;
+
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // issue the stream com=
mand
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _iface->poke32(REG_CTRL=
_CMD, cmd_word);
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const uint64_t ticks =3D

5) build as usual

Just because the patch is in 4.1.0.0 and 4.1.0.1, doesn't mean they are=20
fixed. Something else could be broken that causes the same issue.

Ron

On 8/11/21 9:39 AM, Paul Atreides wrote:
> just uninstalled and changed to origin/UHD4.1 and i have the same issue=
.
> On branch UHD-4.1
> Your branch is up to date with 'origin/UHD-4.1'.
>
> On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides <maud.dib1984@gmail.com=20
> <mailto:maud.dib1984@gmail.com>> wrote:
>
>     just built uhd systemwide from source. no pybombs environment.
>     same issue rx_benchmark terminates after the first dropped sample.
>     maybe the patch didn't make it? or i'm on the wrong branch?
>     i ran git checkout v4.1.0.1 then the regular dance
>
>     ~/uhd$ git status
>     HEAD detached at v4.1.0.1
>     nothing to commit, working tree clean
>
>     cd uhd/host
>     mkdir build
>     cd build
>     cmake ../ (no errors or exclusions other than DPDK)
>     make -j($nproc)
>     sudo make install
>     sudo ldconfig
>
>
>
>     uhd/host/build/examples/./rx_samples_to_file --rate 40e6 --gain
>     40.0 --freq 915e6 --bw 36e6 --progress --file testfile.bin
>     --continue --duration 20
>
>     Creating the usrp device with: ...
>     [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>     UHD_4.1.0.HEAD-0-gf633b497
>     [INFO] [B200] Detected Device: B210
>     [INFO] [B200] Operating over USB 3.
>     [INFO] [B200] Detecting internal GPSDO....
>     [INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
>     [INFO] [B200] Initialize CODEC control...
>     [INFO] [B200] Initialize Radio control...
>     [INFO] [B200] Performing register loopback test...
>     [INFO] [B200] Register loopback test passed
>     [INFO] [B200] Performing register loopback test...
>     [INFO] [B200] Register loopback test passed
>     [INFO] [B200] Setting master clock rate selection to 'automatic'.
>     [INFO] [B200] Asking for clock rate 16.000000 MHz...
>     [INFO] [B200] Actually got clock rate 16.000000 MHz.
>     Using Device: Single USRP:
>     =C2=A0 Device: B-Series Device
>     =C2=A0 Mboard 0: B210
>     =C2=A0 RX Channel: 0
>     =C2=A0 =C2=A0 RX DSP: 0
>     =C2=A0 =C2=A0 RX Dboard: A
>     =C2=A0 =C2=A0 RX Subdev: FE-RX2
>     =C2=A0 RX Channel: 1
>     =C2=A0 =C2=A0 RX DSP: 1
>     =C2=A0 =C2=A0 RX Dboard: A
>     =C2=A0 =C2=A0 RX Subdev: FE-RX1
>     =C2=A0 TX Channel: 0
>     =C2=A0 =C2=A0 TX DSP: 0
>     =C2=A0 =C2=A0 TX Dboard: A
>     =C2=A0 =C2=A0 TX Subdev: FE-TX2
>     =C2=A0 TX Channel: 1
>     =C2=A0 =C2=A0 TX DSP: 1
>     =C2=A0 =C2=A0 TX Dboard: A
>     =C2=A0 =C2=A0 TX Subdev: FE-TX1
>
>     Setting RX Rate: 40.000000 Msps...
>     [INFO] [B200] Asking for clock rate 40.000000 MHz...
>     [INFO] [B200] Actually got clock rate 40.000000 MHz.
>     Actual RX Rate: 40.000000 Msps...
>
>     Setting RX Freq: 915.000000 MHz...
>     Setting RX LO Offset: 0.000000 MHz...
>     Actual RX Freq: 915.000000 MHz...
>
>     Setting RX Gain: 40.000000 dB...
>     Actual RX Gain: 40.000000 dB...
>
>     Setting RX Bandwidth: 36.000000 MHz...
>     Actual RX Bandwidth: 36.000000 MHz...
>
>     Waiting for "lo_locked": ++++++++++ locked.
>
>     Press Ctrl + C to stop streaming...
>     40.0125 Msps
>     39.9994 Msps
>     39.9995 Msps
>     OGot an overflow indication. Please consider the following:
>     =C2=A0 Your write medium must sustain a rate of 160.000000MB/s.
>     =C2=A0 Dropped samples will not be written to the file.
>     =C2=A0 Please modify this example for your purposes.
>     =C2=A0 This message will not appear again.
>     Timeout while streaming
>
>     Done!
>
>     On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides
>     <maud.dib1984@gmail.com <mailto:maud.dib1984@gmail.com>> wrote:
>
>         right on. thanks marcus.
>         i'm going to try a regular source build instead of pybombs and
>         see if that fixes it (he said for the 200th time in his career)=
.
>         i just wanted 2 dev environments for gnuradio and that worked
>         really well for 3.7/3.8. if you have any suggestions i'm open
>         to that.
>
>         i'll keep you guys posted and thanks again for helping.
>
>
>         On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech
>         <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrot=
e:
>
>             On 08/11/2021 10:20 AM, Paul Atreides wrote:
>>             right. i tried 4.1 first, then master then rolled back to
>>             4.0. they all did the same thing.
>>             according to micheal's post above the patch is applied to
>>             4.0 master. the latest UHD-4.0 rev is here
>>             <https://github.com/EttusResearch/uhd/commit/0d184ff412c27=
10c15c0237711ab57c5033692a2>
>>             (0d184ff)
>>             this is my output
>>             UHD_4.0.0.0-193-g0d184ff4
>>
>>
>             The patch is definitely in 4.1.0.0 and 4.1.0.1
>
>
>>
>>             On Wed, Aug 11, 2021 at 10:07 AM Marcus D. Leech
>>             <patchvonbraun@gmail.com
>>             <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>                 On 08/11/2021 10:03 AM, Paul Atreides wrote:
>>>                 Ok, then what else could it be? it's the identical
>>>                 behavior to the report ed bug.
>>>
>>>                 I have a b210 and b205mini and both produce this issu=
e
>>>                 Both have worked fine at higher sample rates in the
>>>                 past.
>>>
>>>                 My setup is
>>>                 ubuntu20.04
>>>                 UHD 4.0 (via pybombs)
>>>                 GNURadio 3.9 (via pybombs)
>>>
>>                 This is what Michael Dickens said:
>>
>>                 It was not part of the UHD 4.0.0.0 release, and has
>>                 not been backported to the UHD-3.15-LTS (or prior)
>>                 branch. - MLD
>>
>>                 You're still running 4.0.0.0 as shown in the UHD
>>                 startup header here:
>>
>>                 [INFO] [UHD] linux; GNU C++ version 9.3.0;
>>                 Boost_107100; UHD_4.0.0.0-193-g0d184ff4
>>
>>
>>
>>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------84B9C4F446D954CFF559874B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Here's what's working for me.<br>
    </p>
    <p>1) git clone <a class=3D"moz-txt-link-freetext" href=3D"https://gi=
thub.com/EttusResearch/uhd.git">https://github.com/EttusResearch/uhd.git<=
/a></p>
    <p>2) git checkout v4.0.0.0 -b tmp</p>
    <p>3) edit the file host/lib/usrp/cores/rx_vita_core_3000.cpp and
      apply the one line patch in the correct place (before the comment
      "// issue the stream command").<br>
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
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D uint=
32_t((inst_stop) ? 1 : 0) &lt;&lt; 28;<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmd_word |=3D (ins=
t_samps) ? stream_cmd.num_samps :
      ((inst_stop) ? 0 : 1);<br>
      =C2=A0<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _continuous_streaming =3D=
 stream_cmd.stream_mode<br>
      +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=3D
      stream_cmd_t::STREAM_MODE_START_CONTINUOUS;<br>
      +<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // issue the strea=
m command<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _iface-&gt;poke32(=
REG_CTRL_CMD, cmd_word);<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const uint64_t tic=
ks =3D<br>
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
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9KH5OVWHAEsdGH0=3Dc7oRMoOQ7f5V+3-o+kM0Lp4ZnUxsw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
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
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 12:=
23
          PM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com"
            moz-do-not-send=3D"true">maud.dib1984@gmail.com</a>&gt; wrote=
:<br>
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
            <div>cmake ../ (no errors or exclusions other than DPDK)</div=
>
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
              Waiting for "lo_locked": ++++++++++ locked.<br>
              <br>
              Press Ctrl + C to stop streaming...<br>
              40.0125 Msps<br>
              39.9994 Msps<br>
              39.9995 Msps<br>
              OGot an overflow indication. Please consider the
              following:<br>
              =C2=A0 Your write medium must sustain a rate of 160.000000M=
B/s.<br>
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
              10:42 AM Paul Atreides &lt;<a
                href=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank"
                moz-do-not-send=3D"true">maud.dib1984@gmail.com</a>&gt;
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 202=
1
                  at 10:36 AM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">patchvonbr=
aun@gmail.com</a>&gt;
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
                          rev is <a
href=3D"https://github.com/EttusResearch/uhd/commit/0d184ff412c2710c15c02=
37711ab57c5033692a2"
                            target=3D"_blank" moz-do-not-send=3D"true">he=
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
                          11, 2021 at 10:07 AM Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true">pa=
tchvonbraun@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
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
                                      <div><span
                                          style=3D"color:rgb(0,0,0)">I
                                          have a b210 and b205mini and
                                          both produce this issue=C2=A0</=
span>
                                        <div style=3D"color:rgb(0,0,0)">B=
oth
                                          have worked fine at higher
                                          sample rates in the past.=C2=A0=
</div>
                                      </div>
                                      <div style=3D"color:rgb(0,0,0)"><br=
>
                                      </div>
                                      <div>My setup is=C2=A0</div>
                                      <div>ubuntu20.04</div>
                                      <div>UHD 4.0 (via pybombs)</div>
                                      <div>GNURadio 3.9 (via pybombs)</di=
v>
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
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------84B9C4F446D954CFF559874B--

--===============3434385245584378839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3434385245584378839==--
