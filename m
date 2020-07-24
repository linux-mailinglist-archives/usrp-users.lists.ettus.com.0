Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC21A22CB9C
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 19:05:08 +0200 (CEST)
Received: from [::1] (port=46082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz186-0002l9-7i; Fri, 24 Jul 2020 13:05:06 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:45601)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dwwkelly@gmail.com>) id 1jz181-0002cL-BG
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 13:05:01 -0400
Received: by mail-ot1-f54.google.com with SMTP id h1so7476981otq.12
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 10:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=PF80pfQr5AYSMvjmfjYXfxXyuMxdzRJyi2eht10tRy4=;
 b=SFkzAJk/RV8ig4Buol9rWWQFt2PN1LBvrlcO3LeCjGgPCsA+Jaw1AyuXmW0AEDsJno
 PsIhv4SdeP1wrhkiUpmVjTHUjG7ZP7sPFDyZbNrnNBxdT7urF6ZzYZRORucaoKZLnN7f
 IChleq3XKFsOyPo5okEWGngrr6kBHqAqkOwR3rdmMieda4KHMZmw8y5U3wdnhEEo0GgT
 FuodTddKgPGnsXV5dQArrxBKfgukZWduVnLye3U/+gd4LDq5/aCTqkgRVoRlyTxaR3Rk
 r4BFsy5hSuc5vpyiehs1PtJyyagnuSNkKJRvRef32jx7YQewl3M2R+/BHLIlbekr7h5z
 jeEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=PF80pfQr5AYSMvjmfjYXfxXyuMxdzRJyi2eht10tRy4=;
 b=hYfAh8XkoDyTUHbAg/iNjq84CWYd7hybrr17y6jodJLj+2PY3N9vAgQSfAQX8cT2HM
 oOAKtJjRsHcUWJKCtKGTc/g4HRcx1b+ECod2lSO8GFGyjuxU5FtiFwtxiNdwBU1/sl7c
 83wGPpvBFFamkZA3OSxnCc/P89kX+/6LCzNmWL4UM6EjQntxxDe16doTLDazkc1ZLmaR
 lDlpldxE4P+nLooLWV4viEgLUMkoKAPKxzZerwW1Kzm/N7wfb/ugdvdXRLv6hLUEIwI9
 cC+zJf4+9A2K45Ws+Y0oyNxYRcRo9ioEoDu5jiMpmYwgYIK1ISS9DDBsV8MBY4oCbmMK
 5JdA==
X-Gm-Message-State: AOAM533vn3PT2U10akEvA0rMfpRRQ01RKCdVitWI3bJEYok883yMVE5V
 F/+ajGuinTXLJgCsImHOhDR7pak2+O4RuEyHnDBYVKb6
X-Google-Smtp-Source: ABdhPJwE5k5XXu2v1gNADL92GteANIMAr5AO0HQaHm60l7ur7ID7/YHEmkUI2YXGnp353chfdUHzIdYbsjKl8OS1CQE=
X-Received: by 2002:a9d:5e93:: with SMTP id f19mr8898386otl.175.1595610260295; 
 Fri, 24 Jul 2020 10:04:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyua6xgH+TsH2bqmKLMu4buMm93QqYQ-JPy+vd4F9aB26SA@mail.gmail.com>
 <81D12D30-8BD2-4ED2-906C-E9F7F08B2B82@gmail.com>
 <CAB__hTTc80gTmTWXK2GnsBQpdAj6vZ_=oV_Nc_8oLs0vRzcMGA@mail.gmail.com>
 <CAANLyua3t1JCyUPPopWCjekFm9okhoycbvvFxNwkBNHXN5kgwg@mail.gmail.com>
 <5F1AF0FC.80106@gmail.com>
 <CAANLyuY0Db2CXjRrW9Ht_8AL3RMuRhFde6Zyapq_hvNHm9iHrA@mail.gmail.com>
 <5F1B12B6.1010705@gmail.com>
In-Reply-To: <5F1B12B6.1010705@gmail.com>
Date: Fri, 24 Jul 2020 13:04:09 -0400
Message-ID: <CAANLyuacSbfH-t=vwPODS8O3f7WSD+sLWBV1KjRhWB9VaaSeMA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] tx_stream->get_max_num_samps() too low
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============8000314068785486859=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8000314068785486859==
Content-Type: multipart/alternative; boundary="000000000000c3d55c05ab32f632"

--000000000000c3d55c05ab32f632
Content-Type: text/plain; charset="UTF-8"

Well the documentation says RX stream only but it turned out to work for TX
streams too... so the documentation writer should be embarrassed!

In my first message I verified that the HW actually sends 8100 byte packets
using ping, that is unless tcpdump is lying to me or re-constructing IP
packets in a way that's transparent to me.

It seems that there's a frame size that's hard coded in x300_eth_mgr.cpp
and that's what was causing me trouble.  I got get_max_num_samps up to 1996
and so far that's helped the actual application I'm writing substantially.

Devin

On Fri, Jul 24, 2020 at 12:57 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/24/2020 10:51 AM, Devin Kelly via USRP-users wrote:
>
> I'm confused.  The documentation says SPP applies for receiving, I'm
> transmitting.
>
> spp: (samples per packet) controls the size of RX packets. When not
> specified, the packets are always maximum frame size. Users should specify
> this option to request smaller than default packets, probably with the
> intention of reducing packet latency.
>
> I also set my tx streamer to this:
>
>     // create a transmit streamer
>
>
>     uhd::stream_args_t stream_args("fc32", wire); // complex floats
>
>
>     stream_args.args["spp"] = "2000";   // Also tried 200 and 365 here
>
>
>     uhd::tx_streamer::sptr tx_stream = usrp->get_tx_stream(stream_args);
>
> Without any luck.  I also tried setting SPP to 200 and that worked,
> tx_stream->get_max_num_samps() returned 200.  Even setting SPP to 365 I
> still got 364.
>
> $ ./examples/tx_timed_samples --args="name=node4" --nsamps 100000 --rate
> 10e6
>
> Creating the usrp device with: name=node4...
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-39);
> Boost_106900; UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> [WARNING] [GPS] update_cache: Malformed GPSDO string:
> EEPN,07116.0483,W,0.0,0.0,240720,,*28
> [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
> 0xF1F0D00000000000)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1291 MB/s)
> [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
> [INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: UBX RX
>   RX Channel: 1
>     RX DSP: 0
>     RX Dboard: B
>     RX Subdev: UBX RX
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: UBX TX
>   TX Channel: 1
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: UBX TX
>
> Setting TX Rate: 10.000000 Msps...
> Actual TX Rate: 10.000000 Msps...
>
> Setting device timestamp to 0...
> tx_stream->get_max_num_samps() = 364
> ...
>
> Devin
>
>
> Well, I'm embarrassed :)
>
> Yeah, looks like SPP is for RX streams.
>
> Here's something to try.  Try setting your MTU to a let's say, 3000 bytes,
> and see if that changes the behavior?  What about 4000? And so on.
>
> There ARE NIC chips out there where the driver is happy to accept a large
> MTU request, but the hardware doesn't actually honor it.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c3d55c05ab32f632
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Well the documentation says RX stream only but it tur=
ned out to work for TX streams too... so the documentation writer should be=
 embarrassed!</div><div><br></div><div>In my first message I verified that =
the HW actually sends 8100 byte packets using ping, that is unless tcpdump =
is lying to me or re-constructing IP packets in a way that&#39;s transparen=
t to me.</div><div><br></div><div>It seems that there&#39;s a frame size th=
at&#39;s hard coded in x300_eth_mgr.cpp and that&#39;s what was causing me =
trouble.=C2=A0 I got get_max_num_samps up to 1996 and so far that&#39;s hel=
ped the actual application I&#39;m writing substantially.<br></div><div><br=
></div><div>Devin</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Jul 24, 2020 at 12:57 PM Marcus D. Leech via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/24/2020 10:51 AM, Devin Kelly via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>I&#39;m confused.=C2=A0 The documentation says SPP applies for
          receiving, I&#39;m transmitting.</div>
        <br>
        <div style=3D"margin-left:40px">spp: (samples per packet) controls
          the size of RX packets. When not specified, the packets are
          always maximum frame size. Users should specify this option to
          request smaller than default packets, probably with the
          intention of reducing packet latency.<br>
        </div>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div>I also set my tx streamer to this:</div>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div style=3D"margin-left:40px"><span style=3D"font-family:monospac=
e">=C2=A0 =C2=A0 // create a transmit
            streamer =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
            =C2=A0 =C2=A0 uhd::stream_args_t stream_args(&quot;fc32&quot;, =
wire); // complex
            floats =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
            =C2=A0 =C2=A0 stream_args.args[&quot;spp&quot;] =3D &quot;2000&=
quot;; =C2=A0 // Also tried 200
            and 365 here=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 <br>
            =C2=A0 =C2=A0 uhd::tx_streamer::sptr tx_stream =3D
            usrp-&gt;get_tx_stream(stream_args); </span><br>
        </div>
        <div style=3D"margin-left:40px"><br>
        </div>
        <div>Without any luck.=C2=A0 I also tried setting SPP to 200 and th=
at
          worked, tx_stream-&gt;get_max_num_samps() returned 200.=C2=A0 Eve=
n
          setting SPP to 365 I still got 364.<br>
        </div>
        <div><br>
        </div>
        <div style=3D"margin-left:40px"><span style=3D"font-family:monospac=
e">$ ./examples/tx_timed_samples
            --args=3D&quot;name=3Dnode4&quot; --nsamps 100000 --rate 10e6 <=
br>
            <br>
            Creating the usrp device with: name=3Dnode4...<br>
            [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
            4.8.5-39); Boost_106900;
            UHD_3.15.0.heads-v3.15.0.0-0-gaea0e2de<br>
            [INFO] [X300] X300 initialization sequence...<br>
            [INFO] [X300] Maximum frame size: 8000 bytes.<br>
            [INFO] [X300] Radio 1x clock: 200 MHz<br>
            [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev
            0.929b<br>
            [WARNING] [GPS] update_cache: Malformed GPSDO string:
            EEPN,07116.0483,W,0.0,0.0,240720,,*28<br>
            [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
            0xF1F0D00000000000)<br>
            [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1291 MB/s)<br>
            [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)<br>
            [INFO] [0/Radio_0] Initializing block control (NOC ID:
            0x12AD100000000001)<br>
            [INFO] [0/Radio_1] Initializing block control (NOC ID:
            0x12AD100000000001)<br>
            [INFO] [0/DDC_0] Initializing block control (NOC ID:
            0xDDC0000000000000)<br>
            [INFO] [0/DDC_1] Initializing block control (NOC ID:
            0xDDC0000000000000)<br>
            [INFO] [0/DUC_0] Initializing block control (NOC ID:
            0xD0C0000000000000)<br>
            [INFO] [0/DUC_1] Initializing block control (NOC ID:
            0xD0C0000000000000)<br>
            Using Device: Single USRP:<br>
            =C2=A0 Device: X-Series Device<br>
            =C2=A0 Mboard 0: X310<br>
            =C2=A0 RX Channel: 0<br>
            =C2=A0 =C2=A0 RX DSP: 0<br>
            =C2=A0 =C2=A0 RX Dboard: A<br>
            =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
            =C2=A0 RX Channel: 1<br>
            =C2=A0 =C2=A0 RX DSP: 0<br>
            =C2=A0 =C2=A0 RX Dboard: B<br>
            =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
            =C2=A0 TX Channel: 0<br>
            =C2=A0 =C2=A0 TX DSP: 0<br>
            =C2=A0 =C2=A0 TX Dboard: A<br>
            =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
            =C2=A0 TX Channel: 1<br>
            =C2=A0 =C2=A0 TX DSP: 0<br>
            =C2=A0 =C2=A0 TX Dboard: B<br>
            =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
            <br>
            Setting TX Rate: 10.000000 Msps...<br>
            Actual TX Rate: 10.000000 Msps...<br>
            <br>
            Setting device timestamp to 0...<br>
            tx_stream-&gt;get_max_num_samps() =3D 364</span></div>
        <div style=3D"margin-left:40px"><span style=3D"font-family:monospac=
e">...</span><br>
        </div>
        <div>
          <div>
            <div>
              <div><br>
              </div>
              <div>Devin<br>
              </div>
              <div><br>
              </div>
              <br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Well, I&#39;m embarrassed :)<br>
    <br>
    Yeah, looks like SPP is for RX streams.<br>
    <br>
    Here&#39;s something to try.=C2=A0 Try setting your MTU to a let&#39;s =
say, 3000
    bytes, and see if that changes the behavior?=C2=A0 What about 4000? And
    so on.<br>
    <br>
    There ARE NIC chips out there where the driver is happy to accept a
    large MTU request, but the hardware doesn&#39;t actually honor it.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c3d55c05ab32f632--


--===============8000314068785486859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8000314068785486859==--

