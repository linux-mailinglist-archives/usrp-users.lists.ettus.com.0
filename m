Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2119A36E109
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 23:37:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F993384577
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 17:37:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nONSlyTL";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id A8B92384493
	for <USRP-users@lists.ettus.com>; Wed, 28 Apr 2021 17:37:04 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id 8so31471608qkv.8
        for <USRP-users@lists.ettus.com>; Wed, 28 Apr 2021 14:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=m0hAq0cTvzps2OmiJvTCtCZCM6h7aNZCmTxYukoNFJ8=;
        b=nONSlyTLhaXzud2T/SOr91CL/QWRQZtG5wwfABsSThO1YN/VKHWVMfJFYfvjI44VoN
         2XQoFVdFHBbd4fK9Bq/SqNAaeQ+mtv6OtJsKSxq9rzWqYx9lbr+n49zqGCkX7I+1qoS3
         y9iyBgNkin7l/2io03k48qX/PPrmY2gAfD8iYz+zPfwhss2C8HB5xfaUK23D4b092sAy
         D9hSOJXTOY9G+V0smvGhVnVXu9IUK0FZHB0TTYAbCA55LWFELb6H4eOIbHq29oBpVgUC
         3mikG+7wqK3znr0/o93Gn0fZavhwFaZVYW8D2qcTawkGZJH2qMKlPec+5GtkFsyzv7D2
         BzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=m0hAq0cTvzps2OmiJvTCtCZCM6h7aNZCmTxYukoNFJ8=;
        b=gvEB1z1FjCoMvXJR4/5uJFb6Q99u6YOY4331Fs4Jis5+0STxS4MW1uBiGvjfPYMrpc
         NiHFhqS5GtucqvtEBoFlaoC4aUd2H94ik4pphLo4J0AwYl5yDegJPgYVBovX2DHu+tzK
         rmTcx4VrdTSdPqFhbgkxCnKSkgo+iOuBsZfDHymb4JK9a0V5lnojOJmKOUbhBxuo3woT
         UJV5qv8ASyb8U2JjYMchn+o5NayT9IILanxAmob15An3siQIW5Hn6etyzbgG1ioQTQra
         jo9aM60ILbig6dCylO1EOpi1OuPMtYrMei42Ge6XajyZBo8UygLUyUz7L3ebvf0++a7m
         x6YA==
X-Gm-Message-State: AOAM531AqGJwhs9IAb/0h2C7VPQV8Ncw3iPRFWmnQR1mo9GrcdvTcKWi
	VsOttnYjyGfu62i/RDwUoBCARt5h3gwCLw==
X-Google-Smtp-Source: ABdhPJzq72zcu8ojkkP3Tq5WP6I3quDq3BYb6CaDXEZkLkoDZaE/a/uYXJqocc03K2tqYIan8Bt7DA==
X-Received: by 2002:a05:620a:6ce:: with SMTP id 14mr31226851qky.423.1619645823711;
        Wed, 28 Apr 2021 14:37:03 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id o189sm758604qka.86.2021.04.28.14.37.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:37:03 -0700 (PDT)
Message-ID: <6089D57E.3040205@gmail.com>
Date: Wed, 28 Apr 2021 17:37:02 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Rob Kossler <rkossler@nd.edu>
References: <cc4faee36fb84e0d83669253db7e636f@boeing.com> <276627C4-F722-4F13-9DB2-AAA4059421BE@gmail.com> <c3e16fa1723f4e418e0e9560c0af90b4@boeing.com> <608860D4.6040808@gmail.com> <2399f9e83e2d4d559a4762bb4c6f4d9f@boeing.com> <60899479.8080300@gmail.com> <CAB__hTRe1y2+0iA2ZazFUbyQnHhNm8dG1QkpuYPGzWmOoxVhTA@mail.gmail.com>
In-Reply-To: <CAB__hTRe1y2+0iA2ZazFUbyQnHhNm8dG1QkpuYPGzWmOoxVhTA@mail.gmail.com>
Message-ID-Hash: TXDCPSUFWGFMR3QWESQEQVUGSR72UKSI
X-Message-ID-Hash: TXDCPSUFWGFMR3QWESQEQVUGSR72UKSI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Hirst (US), Stephen" <stephen.hirst@boeing.com>, "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: Underflows/Overflows, Filesize and a Complete N00B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TXDCPSUFWGFMR3QWESQEQVUGSR72UKSI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1078293169994178031=="

This is a multi-part message in MIME format.
--===============1078293169994178031==
Content-Type: multipart/alternative;
 boundary="------------080609060000070204020206"

This is a multi-part message in MIME format.
--------------080609060000070204020206
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/28/2021 03:02 PM, Rob Kossler wrote:
>
>   * If this can't work for you, then you could consider using the UHD
>     DPDK capability but I'll warn you that it is not trivial to
>     configure and get it working nicely. First, I guess, you need to
>     decide if saving the data to the file is the issue. So, if you can
>     run rx_samples_to_file at a given rate with the file configured
>     for /dev/null/ and it works but then you change to a real file and
>     it doesn't, then the storage is the problem.
>
Thanks for the "DPDK" hint, but Stephen in this case is using a B-series=20
device, that doesn't use any network interface at all--only
   USB.


> Rob
>
> On Wed, Apr 28, 2021 at 1:00 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 04/28/2021 12:29 PM, Hirst (US), Stephen wrote:
>>
>>     For Marcus,
>>
>>     The true bandwidth of my signal is 16MHz but I have been getting
>>     away with 0.2 MHz for some of my data=E2=80=A6 Not being an RF guy=
, and
>>     having no idea what I=E2=80=99m doing, I=E2=80=99m doing a demo to=
 try and
>>     capture GPS the basic GPS L1 signal which is a total channel
>>     bandwidth of 15.345MHz at a center freq of 1575.42MHz
>>     (specifically C/A is a 1.023MHz bandwidth code with a 50bps
>>     mod2adder). So I guess if I=E2=80=99m up in the L-band region, doe=
s my
>>     sample rate have to equal double my L1 C/A subfreq bandwidth to
>>     capture the whole signal? Or is the B210 capturing the whole
>>     bandwidth instantaneously and my Sample Rate has to just capture
>>     Double my DATA RATE? (GPS L1 C/A code within L1 for this example
>>     ~1.023MHz at ~1Mbps with a NAV message Mod 2 adder at 50bps)
>>
>     You are fairly far in the weeds here, and it has nothing to do
>     with Gnu Radio or SDR or USRPs. There are some fundamental
>       results in information theory that you need to understand, and
>     they proceed, to a first approximation, from the "physics" of the
>       situation.
>
>     The Nyquist sampling theorem states that for a signal of bandwidth
>     B, you must (at a minimum) sample that signal at 2B in order
>       to not lose information about that signal.  In practice, you
>     need to achieve greater than 2B for maximum fidelity. Now, as to
>       the relationship between *bit rate* and occupied spectral
>     bandwidth, that's something that depends VERY heavily on the
>     underlying
>       modulation scheme.  In the case of GPS L1, (which I don't know
>     THAT much about), the basic "chip rate" is 1.023MHz, which
>       then feeds what amounts to a BPSK modulator.  So, it, minimally
>     occupies about 2.046MHz bandwidth.  Which means sampling
>       at least twice that rate.
>
>     Now, the "magic" of complex-baseband sampling is that the signal
>     is sampled *twice* during the sample interval, so that you can
>       "get away" with running complex sampling at close to the
>     notional bandwidth.  So sampling at, let's say, 2.5Msps should be a=
ble
>       to capture all the information in your L1 signal.
>
>     But none of this has anything, per se, to do with USRP or Gnu
>     Radio or SDR, but to a fundamental understanding of the
>       underpinnings of Digital Signal Processing, and signals in
>     general, and modulation, and a bunch of 'underpinning' topics
>       that are best "back filled" in forums other than here.
>
>>     Running bare hardware with Ubuntu 20.04LTS. I looked up how to
>>     change the CPU Freq to Performance but I don=E2=80=99t know how ex=
actly
>>     to do it.
>>
>>     For Rob Kossler, I did a ./benchmark_rate on the B210 with peanut
>>     loads on all SMAs, I performed the command =E2=80=9C./benchmark_ra=
te
>>     =E2=80=93rx_rate 32000000 =E2=80=93tx_rate 32000000=E2=80=9D
>>
>>     Benchmark Rate Summary:
>>
>>     Num Received samples:327203268
>>
>>     Num dropped samples: 0
>>
>>     Num overruns detected: 0
>>
>>     Num Transmitted samples: 320059680
>>
>>     Num Sequence Errors (Tx): 0
>>
>>     Num Sequence Errors (Rx): 0
>>
>>     Num underruns detected: 0
>>
>>     Num late commands: 0
>>
>>     Num timeouts (Tx): 2
>>
>>     Num timouts (Rx): 0
>>
>>     I see the Num timeouts (Tx): 2, is that anything?
>>
>     Since you won't be transmitting, that's nothing.
>
>     It
>>
>>     *From:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
>>     *Sent:* Tuesday, April 27, 2021 3:07 PM
>>     *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
>>     <mailto:stephen.hirst@boeing.com>
>>     *Cc:* USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.co=
m>
>>     *Subject:* Re: [EXTERNAL] Re: [USRP-users] Underflows/Overflows,
>>     Filesize and a Complete N00B
>>
>>
>>     =09
>>
>>     EXT email: be mindful of links/attachments.
>>
>>      =20
>>
>>     On 04/27/2021 02:07 PM, Hirst (US), Stephen wrote:
>>
>>         Thanks Marcus for the quick reply!
>>
>>         I have a B210 with a GPSDO (the TCXO one).
>>
>>         And the system is =E2=80=9Coffline only=E2=80=9D now but I can=
 manually type
>>         a response with something specific if you like.
>>
>>         So I have a little checkbox that I click on my GRC GUI that
>>         starts the recording to a File Sink from a =E2=80=9CUHD: USRP
>>         Source=E2=80=9D. Here=E2=80=99s some details of what I have sp=
ecified in the
>>         UHD: USRP Source - File Sink Box Pair.
>>
>>         UHD: USRP Source
>>
>>         GENERAL
>>
>>         Output Type: Complex float32
>>
>>         Wire Format: Complex int8
>>
>>         Stream args: peak=3D0.003906
>>
>>         Stream Channels: []
>>
>>         Device Address:
>>
>>         Device Arguments: =E2=80=9Csend_frame_size=3D8192=E2=80=9D
>>
>>         Sync: Unknown PPS
>>
>>         Clock Rate (Hz): Default
>>
>>         Num Mboards: 1
>>
>>         Mb0 Clock Source: Default
>>
>>         Mb0 Time Source: Default
>>
>>         Mb0 Subdev Spec: A:A
>>
>>         Num Channels: 1
>>
>>         Samp rate (Sps): 2000000
>>
>>         ADVANCED
>>
>>         Alias:
>>
>>         Affinity:
>>
>>         Minoutbuf: 8192
>>
>>         Maxoutbuf: 8192
>>
>>         Show LO Controls: OFF
>>
>>         Comment:
>>
>>         RF OPTIONS
>>
>>         Ch0 Center Freq: 2000000000
>>
>>         Ch0 AGC: Default
>>
>>         Ch0: Gain Value: 30
>>
>>         Ch0 Antenna: RX2
>>
>>         Ch0 Bandwidth: 0.2MHz
>>
>>         FE CORRECTIONS
>>
>>         Ch0 Enable DC Offset Correction: true
>>
>>         Ch0 Enable IQ Imbalance Correction: true
>>
>>         [FILE SINK]
>>
>>         GENERAL
>>
>>         File: [Your favorite file name here]
>>
>>         Input Type: complex
>>
>>         Vec length: 1
>>
>>         Unbuffered: OFF
>>
>>         Append file: OFF
>>
>>         Does this help at all?
>>
>>         I tried the ./rx_samples_to_file from within
>>         =E2=80=9C/usr/lib/uhd/examples=E2=80=9D with similar options b=
ut I don=E2=80=99t see
>>         an O/U with the selected options. Is this a GRC thing? I have
>>         no idea=E2=80=A6
>>
>>     https://files.ettus.com/manual/page_general.html#general_ounotes
>>     https://m.facebook.com/
>>     https://files.ettus.com/manual/page_transport.html#transport_usb
>>
>>     The 'O' indication is coming from deep within the UHD drivers and
>>     has nothing to do with Gnu Radio, per se.
>>
>>     If the bandwidth of your signal of interest really is only
>>     200kHz, then you don't need to record at 2Msps.  Indeed you could
>>       easily get away with sampling at a much much lower rate.  Like
>>     500ksps.  This will save disk space while preserving your
>>       data precision (complex floats).  You can also write your
>>     samples in a different format, like complex-shorts, halving the
>>       amount of disk space used.
>>
>>     But given that you can use rx_samples_to_file apparently
>>     successfully, and cannot use Gnu Radio successfully to accomplish
>>       more-or-less the same task, then Robs suggestion to initially
>>     eliminate Gnu Radio from the equation is probably a good one.
>>
>>     Also, are you running your machine with the CPU governor set to
>>     "performance" or "power-save"? Are you running inside
>>       a VM, or on the actual raw hardware?
>>
>>
>>
>>         *From:* Marcus D Leech [mailto:patchvonbraun@gmail.com]
>>         *Sent:* Tuesday, April 27, 2021 1:37 PM
>>         *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
>>         <mailto:stephen.hirst@boeing.com>
>>         *Cc:* USRP-users@lists.ettus.com
>>         <mailto:USRP-users@lists.ettus.com>
>>         *Subject:* [EXTERNAL] Re: [USRP-users] Underflows/Overflows,
>>         Filesize and a Complete N00B
>>
>>
>>         =09
>>
>>         EXT email: be mindful of links/attachments.
>>
>>          =20
>>
>>          =20
>>
>>         If you just use the rx_samples_to_file utility that comes
>>         with UHD what are your results
>>
>>         Can you share your GNuRadio flow graph with us? What type of
>>         USRP do you have? There are about a dozen different models of
>>         USRP out there.
>>
>>         Sent from my iPhone
>>
>>
>>
>>
>>             On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen
>>             <stephen.hirst@boeing.com
>>             <mailto:stephen.hirst@boeing.com>> wrote:
>>
>>             =EF=BB=BF
>>
>>             Hi Guys,
>>
>>             I appreciate you all and thank you for the great
>>             community that is this mailing list! Continue on!
>>
>>             I, however, am a complete N00B and require assistance on
>>             some seemingly minor tasks that I believe you could help
>>             me out on. :)
>>
>>             With that being said, I find myself with the Ubuntu
>>             20.04LTS install on a rather =E2=80=9Cfast=E2=80=9D Dell l=
aptop (specs
>>             down below.)
>>
>>             -8th Gen Intel Core i7-8650U Processor (Quad Core, 8M
>>             Cache, 1.9GHz,15W, vPro)
>>
>>             -16GB, 2x8GB, 2666MHz DDR4 Non-ECC
>>
>>             -M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting
>>             Solid State Drive
>>
>>             I have fiddled around with an online install on the
>>             laptop but I haven=E2=80=99t gotten the overflows and unde=
rflows
>>             to cooperate. And to be more specific, I can record a
>>             sample rate of 2Mhz and 0.2Mhz bandwidth without issue,
>>             but I can=E2=80=99t get a SR or BW greater than those to w=
ork
>>             without Under/Overflows developing. (I have been using
>>             UHD 3.15.0.02build5 with GNURadio 3.8.1.0 (Python 3.8.2)
>>             (grc and grc-uhd) and installed everything with =E2=80=9Ca=
pt=E2=80=9D.
>>             The first line in my grc python output labels =E2=80=9CLin=
ux GNU
>>             C++ version 9.2.1 20200304; Boost_107100;
>>             UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any ideas? I tried=
 both
>>             the num_recv_frame size stuff and setting high priority
>>             with no joy, but then again, I am a N00b, so I may not
>>             have done that correctly as well=E2=80=A6
>>
>>             Also if anyone has experience with GRC specifically, I
>>             have had success recording what I wanted to with a file
>>             with the 2MHz Sample Rate with a 0.2 MHz BW, but the
>>             files are pretty huge. We=E2=80=99re talking 1GB/min=E2=80=
=A6 Any idea
>>             how to make the GRC record to a less-fine resolution so I
>>             can free up some HDD space?
>>
>>             Thanks guys!
>>
>>             Ya Boi Steve
>>
>>             _______________________________________________
>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>             <mailto:usrp-users@lists.ettus.com>
>>             To unsubscribe send an email to
>>             usrp-users-leave@lists.ettus.com
>>             <mailto:usrp-users-leave@lists.ettus.com>
>>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------080609060000070204020206
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/28/2021 03:02 PM, Rob Kossler
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAB__hTRe1y2+0iA2ZazFUbyQnHhNm8dG1QkpuYPGzWmOoxVhTA@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
          <div>
            <ul>
              <li>If this can't work for you, then you could consider
                using the UHD DPDK capability but I'll warn you that it
                is not trivial to configure and get it working nicely.=C2=
=A0
                First, I guess, you need to decide if saving the data to
                the file is the issue. So, if you can run
                rx_samples_to_file at a given rate with the file
                configured for /dev/null/ and it works but then you
                change to a real file and it doesn't, then the storage
                is the problem.</li>
            </ul>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks for the "DPDK" hint, but Stephen in this case is using a
    B-series device, that doesn't use any network interface at all--only<=
br>
    =C2=A0 USB.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAB__hTRe1y2+0iA2ZazFUbyQnHhNm8dG1QkpuYPGzWmOoxVhTA@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>
            <div>Rob</div>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 28, 2021 at 1=
:00
            PM Marcus D. Leech &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail=
.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF">
              <div>On 04/28/2021 12:29 PM, Hirst (US), Stephen wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">For Marcus,</span></=
p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">The true bandwidth o=
f
                      my signal is 16MHz but I have been getting away
                      with 0.2 MHz for some of my data=E2=80=A6 Not being=
 an RF
                      guy, and having no idea what I=E2=80=99m doing, I=E2=
=80=99m doing
                      a demo to try and capture GPS the basic GPS L1
                      signal which is a total channel bandwidth of
                      15.345MHz at a center freq of 1575.42MHz
                      (specifically C/A is a 1.023MHz bandwidth code
                      with a 50bps mod2adder). So I guess if I=E2=80=99m =
up in
                      the L-band region, does my sample rate have to
                      equal double my L1 C/A subfreq bandwidth to
                      capture the whole signal? Or is the B210 capturing
                      the whole bandwidth instantaneously and my Sample
                      Rate has to just capture Double my DATA RATE? (GPS
                      L1 C/A code within L1 for this example ~1.023MHz
                      at ~1Mbps with a NAV message Mod 2 adder at 50bps)<=
/span></p>
                </div>
              </blockquote>
              You are fairly far in the weeds here, and it has nothing
              to do with Gnu Radio or SDR or USRPs. There are some
              fundamental<br>
              =C2=A0 results in information theory that you need to
              understand, and they proceed, to a first approximation,
              from the "physics" of the<br>
              =C2=A0 situation.<br>
              <br>
              The Nyquist sampling theorem states that for a signal of
              bandwidth B, you must (at a minimum) sample that signal at
              2B in order<br>
              =C2=A0 to not lose information about that signal.=C2=A0 In =
practice,
              you need to achieve greater than 2B for maximum fidelity.=C2=
=A0
              Now, as to<br>
              =C2=A0 the relationship between *bit rate* and occupied
              spectral bandwidth, that's something that depends VERY
              heavily on the underlying<br>
              =C2=A0 modulation scheme.=C2=A0 In the case of GPS L1, (whi=
ch I
              don't know THAT much about), the basic "chip rate" is
              1.023MHz, which<br>
              =C2=A0 then feeds what amounts to a BPSK modulator.=C2=A0 S=
o, it,
              minimally occupies about 2.046MHz bandwidth.=C2=A0 Which me=
ans
              sampling<br>
              =C2=A0 at least twice that rate.<br>
              <br>
              Now, the "magic" of complex-baseband sampling is that the
              signal is sampled *twice* during the sample interval, so
              that you can<br>
              =C2=A0 "get away" with running complex sampling at close to=
 the
              notional bandwidth.=C2=A0 So sampling at, let's say, 2.5Msp=
s
              should be able<br>
              =C2=A0 to capture all the information in your L1 signal.<br=
>
              <br>
              But none of this has anything, per se, to do with USRP or
              Gnu Radio or SDR, but to a fundamental understanding of
              the<br>
              =C2=A0 underpinnings of Digital Signal Processing, and sign=
als
              in general, and modulation, and a bunch of 'underpinning'
              topics<br>
              =C2=A0 that are best "back filled" in forums other than her=
e.<br>
              <br>
              <blockquote type=3D"cite">
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)"></span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Running bare hardwar=
e
                      with Ubuntu 20.04LTS. I looked up how to change
                      the CPU Freq to Performance but I don=E2=80=99t kno=
w how
                      exactly to do it.</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">For Rob Kossler, I
                      did a ./benchmark_rate on the B210 with peanut
                      loads on all SMAs, I performed the command
                      =E2=80=9C./benchmark_rate =E2=80=93rx_rate 32000000=
 =E2=80=93tx_rate
                      32000000=E2=80=9D</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Benchmark Rate
                      Summary:</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num Received
                      samples:327203268</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num dropped samples:
                      0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num overruns
                      detected: 0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num Transmitted
                      samples: 320059680</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num Sequence Errors
                      (Tx): 0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num Sequence Errors
                      (Rx): 0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num underruns
                      detected: 0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num late commands: 0=
</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125);background:yellow">Nu=
m
                      timeouts (Tx): 2</span><span
                      style=3D"color:rgb(31,73,125)"></span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">Num timouts (Rx): 0<=
/span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">I see the Num
                      timeouts (Tx): 2, is that anything?</span></p>
                </div>
              </blockquote>
              Since you won't be transmitting, that's nothing.<br>
              <br>
              It <br>
              <blockquote type=3D"cite">
                <div>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)"></span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                  <div>
                    <div
                      style=3D"border-right:none;border-bottom:none;borde=
r-left:none;border-top:1pt
                      solid rgb(225,225,225);padding:3pt 0in 0in">
                      <p class=3D"MsoNormal"><b><span
                            style=3D"color:windowtext">From:</span></b><s=
pan
                          style=3D"color:windowtext"> Marcus D. Leech [<a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank">mailto:patchvonbraun@gmail.=
com</a>]
                          <br>
                          <b>Sent:</b> Tuesday, April 27, 2021 3:07 PM<br=
>
                          <b>To:</b> Hirst (US), Stephen <a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:stephen.hirst@boeing.com"
                            target=3D"_blank">&lt;stephen.hirst@boeing.co=
m&gt;</a><br>
                          <b>Cc:</b> <a moz-do-not-send=3D"true"
                            href=3D"mailto:USRP-users@lists.ettus.com"
                            target=3D"_blank">USRP-users@lists.ettus.com<=
/a><br>
                          <b>Subject:</b> Re: [EXTERNAL] Re:
                          [USRP-users] Underflows/Overflows, Filesize
                          and a Complete N00B</span></p>
                    </div>
                  </div>
                  <p class=3D"MsoNormal">=C2=A0</p>
                  <table border=3D"0" cellpadding=3D"0">
                    <tbody>
                      <tr>
                        <td style=3D"background:white;padding:0.75pt">
                          <table
                            style=3D"width:100%;margin-left:0.75pt;margin=
-right:0.75pt"
                            align=3D"left" border=3D"0" cellpadding=3D"0"
                            cellspacing=3D"0" width=3D"100%">
                            <tbody>
                              <tr>
                                <td
                                  style=3D"background:rgb(145,10,25);padd=
ing:5.25pt
                                  1.5pt"><br>
                                </td>
                                <td
                                  style=3D"width:100%;background:rgb(253,=
242,244);padding:5.25pt
                                  3.75pt 5.25pt 11.25pt" width=3D"100%">
                                  <div>
                                    <p class=3D"MsoNormal"><span
style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:rgb(33,33,33=
)">EXT

                                        email: be mindful of
                                        links/attachments.</span><span></=
span></p>
                                  </div>
                                </td>
                              </tr>
                            </tbody>
                          </table>
                          <pre>=C2=A0</pre>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <div>
                    <p class=3D"MsoNormal"><span style=3D"font-size:10pt"=
>On
                        04/27/2021 02:07 PM, Hirst (US), Stephen wrote:</=
span><span></span></p>
                  </div>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Thanks Marcus for
                        the quick reply!</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">I have a B210 with
                        a GPSDO (the TCXO one). </span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">And the system is
                        =E2=80=9Coffline only=E2=80=9D now but I can manu=
ally type a
                        response with something specific if you like.</sp=
an></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">So I have a little
                        checkbox that I click on my GRC GUI that starts
                        the recording to a File Sink from a =E2=80=9CUHD:=
 USRP
                        Source=E2=80=9D. Here=E2=80=99s some details of w=
hat I have
                        specified in the UHD: USRP Source - File Sink
                        Box Pair.</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">UHD: USRP Source</=
span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">GENERAL</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Output Type:
                        Complex float32</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Wire Format:
                        Complex int8</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Stream args:
                        peak=3D0.003906</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Stream Channels: [=
]</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Device Address:</s=
pan></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Device Arguments:
                        =E2=80=9Csend_frame_size=3D8192=E2=80=9D</span></=
p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Sync: Unknown PPS<=
/span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Clock Rate (Hz):
                        Default</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Num Mboards: 1</sp=
an></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Mb0 Clock Source:
                        Default</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Mb0 Time Source:
                        Default</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Mb0 Subdev Spec:
                        A:A</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Num Channels: 1</s=
pan></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Samp rate (Sps):
                        2000000</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">ADVANCED</span></p=
>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Alias:</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Affinity:</span></=
p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Minoutbuf: 8192</s=
pan></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Maxoutbuf: 8192</s=
pan></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Show LO Controls:
                        OFF</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Comment:</span></p=
>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">RF OPTIONS</span><=
/p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Ch0 Center Freq:
                        2000000000</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Ch0 AGC: Default</=
span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Ch0: Gain Value: 3=
0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Ch0 Antenna: RX2</=
span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Ch0 Bandwidth:
                        0.2MHz</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">FE CORRECTIONS</sp=
an></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Ch0 Enable DC
                        Offset Correction: true</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Ch0 Enable IQ
                        Imbalance Correction: true</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">[FILE SINK]</span>=
</p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">GENERAL</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">File: [Your
                        favorite file name here]</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Input Type: comple=
x</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Vec length: 1</spa=
n></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Unbuffered: OFF</s=
pan></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Append file: OFF</=
span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">Does this help at
                        all?</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">I tried the
                        ./rx_samples_to_file from within
                        =E2=80=9C/usr/lib/uhd/examples=E2=80=9D with simi=
lar options but
                        I don=E2=80=99t see an O/U with the selected opti=
ons. Is
                        this a GRC thing? I have no idea=E2=80=A6</span><=
/p>
                  </blockquote>
                  <p class=3D"MsoNormal"><a moz-do-not-send=3D"true"
                      href=3D"https://files.ettus.com/manual/page_general=
.html#general_ounotes"
                      target=3D"_blank"><span>https://files.ettus.com/man=
ual/page_general.html#general_ounotes</span></a><span><br>
                      <a moz-do-not-send=3D"true"
                        href=3D"https://m.facebook.com/" target=3D"_blank=
">https://m.facebook.com/</a><br>
                    </span><a moz-do-not-send=3D"true"
                      href=3D"https://files.ettus.com/manual/page_transpo=
rt.html#transport_usb"
                      target=3D"_blank"><span>https://files.ettus.com/man=
ual/page_transport.html#transport_usb</span></a><span><br>
                      <br>
                      The 'O' indication is coming from deep within the
                      UHD drivers and has nothing to do with Gnu Radio,
                      per se.<br>
                      <br>
                      If the bandwidth of your signal of interest really
                      is only 200kHz, then you don't need to record at
                      2Msps.=C2=A0 Indeed you could<br>
                      =C2=A0 easily get away with sampling at a much much
                      lower rate.=C2=A0 Like 500ksps.=C2=A0 This will sav=
e disk
                      space while preserving your<br>
                      =C2=A0 data precision (complex floats).=C2=A0 You c=
an also
                      write your samples in a different format, like
                      complex-shorts, halving the<br>
                      =C2=A0 amount of disk space used.<br>
                      <br>
                      But given that you can use rx_samples_to_file
                      apparently successfully, and cannot use Gnu Radio
                      successfully to accomplish<br>
                      =C2=A0 more-or-less the same task, then Robs sugges=
tion
                      to initially eliminate Gnu Radio from the equation
                      is probably a good one.<br>
                      <br>
                      Also, are you running your machine with the CPU
                      governor set to "performance" or "power-save"?=C2=A0=
=C2=A0
                      Are you running inside<br>
                      =C2=A0 a VM, or on the actual raw hardware?<br>
                      <br>
                      <br>
                      <br>
                    </span></p>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal"><span
                        style=3D"color:rgb(31,73,125)">=C2=A0</span></p>
                    <div>
                      <div
                        style=3D"border-right:none;border-bottom:none;bor=
der-left:none;border-top:1pt
                        solid rgb(225,225,225);padding:3pt 0in 0in">
                        <p class=3D"MsoNormal"><b>From:</b> Marcus D Leec=
h
                          [<a moz-do-not-send=3D"true"
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank">mailto:patchvonbraun@gmail.=
com</a>]
                          <br>
                          <b>Sent:</b> Tuesday, April 27, 2021 1:37 PM<br=
>
                          <b>To:</b> Hirst (US), Stephen <a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:stephen.hirst@boeing.com"
                            target=3D"_blank">&lt;stephen.hirst@boeing.co=
m&gt;</a><br>
                          <b>Cc:</b> <a moz-do-not-send=3D"true"
                            href=3D"mailto:USRP-users@lists.ettus.com"
                            target=3D"_blank">USRP-users@lists.ettus.com<=
/a><br>
                          <b>Subject:</b> [EXTERNAL] Re: [USRP-users]
                          Underflows/Overflows, Filesize and a Complete
                          N00B</p>
                      </div>
                    </div>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <table border=3D"0" cellpadding=3D"0">
                      <tbody>
                        <tr>
                          <td style=3D"background:white;padding:0.75pt">
                            <table
                              style=3D"width:100%;margin-left:0.75pt;marg=
in-right:0.75pt"
                              align=3D"left" border=3D"0" cellpadding=3D"=
0"
                              cellspacing=3D"0" width=3D"100%">
                              <tbody>
                                <tr>
                                  <td
                                    style=3D"background:rgb(145,10,25);pa=
dding:5.25pt
                                    1.5pt"><br>
                                  </td>
                                  <td
                                    style=3D"width:100%;background:rgb(25=
3,242,244);padding:5.25pt
                                    3.75pt 5.25pt 11.25pt" width=3D"100%"=
>
                                    <div>
                                      <p class=3D"MsoNormal"><span
style=3D"font-size:10pt;font-family:Verdana,sans-serif;color:rgb(33,33,33=
)">EXT

                                          email: be mindful of
                                          links/attachments.</span></p>
                                    </div>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                            <pre>=C2=A0</pre>
                            <pre>=C2=A0</pre>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <p class=3D"MsoNormal"><span style=3D"font-size:10pt"=
>If
                        you just use the rx_samples_to_file utility that
                        comes with UHD what are your results</span></p>
                    <div>
                      <p class=3D"MsoNormal"><span style=3D"font-size:10p=
t">=C2=A0</span></p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal"><span style=3D"font-size:10p=
t">Can
                          you share your GNuRadio flow graph with us?
                          What type of USRP do you have? There are about
                          a dozen different models of USRP out there.=C2=A0=
</span></p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal"><span style=3D"font-size:10p=
t">=C2=A0</span></p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal"><span style=3D"font-size:10p=
t">=C2=A0</span></p>
                      <div>
                        <p class=3D"MsoNormal"><span
                            style=3D"font-size:10pt">Sent from my iPhone<=
/span></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal"><span
                            style=3D"font-size:10pt"><br>
                            <br>
                            <br>
                          </span></p>
                        <blockquote
                          style=3D"margin-top:5pt;margin-bottom:5pt">
                          <p class=3D"MsoNormal"
                            style=3D"margin-bottom:12pt"><span
                              style=3D"font-size:10pt">On Apr 27, 2021, a=
t
                              1:24 PM, Hirst (US), Stephen &lt;</span><a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:stephen.hirst@boeing.com"
                              target=3D"_blank"><span
                                style=3D"font-size:10pt">stephen.hirst@bo=
eing.com</span></a><span
                              style=3D"font-size:10pt">&gt; wrote:</span>=
</p>
                        </blockquote>
                      </div>
                      <blockquote
                        style=3D"margin-top:5pt;margin-bottom:5pt">
                        <div>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-size:10pt">=EF=BB=BF </span><=
/p>
                          <p class=3D"MsoNormal">Hi Guys,</p>
                          <p class=3D"MsoNormal">=C2=A0</p>
                          <p class=3D"MsoNormal">I appreciate you all and
                            thank you for the great community that is
                            this mailing list! Continue on!</p>
                          <p class=3D"MsoNormal">=C2=A0</p>
                          <p class=3D"MsoNormal">I, however, am a complet=
e
                            N00B and require assistance on some
                            seemingly minor tasks that I believe you
                            could help me out on. :)</p>
                          <p class=3D"MsoNormal">=C2=A0</p>
                          <p class=3D"MsoNormal">With that being said, I
                            find myself with the Ubuntu 20.04LTS install
                            on a rather =E2=80=9Cfast=E2=80=9D Dell lapto=
p (specs down
                            below.)</p>
                          <p><span style=3D"font-family:Roboto-Regular"><=
span>-<span
                                  style=3D"font:7pt &quot;Times New
                                  Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><span
style=3D"font-family:Roboto-Regular;color:rgb(68,68,68)">8th Gen Intel
                              Core i7-8650U Processor (Quad Core, 8M
                              Cache, 1.9GHz,15W, vPro)</span></p>
                          <p><span style=3D"font-family:Roboto-Regular"><=
span>-<span
                                  style=3D"font:7pt &quot;Times New
                                  Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><span
                              style=3D"color:rgb(68,68,68)">16GB, 2x8GB,
                              2666MHz DDR4 Non-ECC</span></p>
                          <p><span style=3D"font-family:Roboto-Regular"><=
span>-<span
                                  style=3D"font:7pt &quot;Times New
                                  Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></span></span><span
style=3D"font-family:Roboto-Regular;color:rgb(68,68,68)">M.2 1TB PCIe NVM=
e
                              Class 40 Opal 2.0 Self Encrypting Solid
                              State Drive</span></p>
                          <p class=3D"MsoNormal"><span
                              style=3D"font-family:Roboto-Regular;color:r=
gb(68,68,68)">=C2=A0</span></p>
                          <p class=3D"MsoNormal">I have fiddled around
                            with an online install on the laptop but I
                            haven=E2=80=99t gotten the overflows and unde=
rflows
                            to cooperate. And to be more specific, I can
                            record a sample rate of 2Mhz and 0.2Mhz
                            bandwidth without issue, but I can=E2=80=99t =
get a
                            SR or BW greater than those to work without
                            Under/Overflows developing. (I have been
                            using UHD 3.15.0.02build5 with GNURadio
                            3.8.1.0 (Python 3.8.2) (grc and grc-uhd) and
                            installed everything with =E2=80=9Capt=E2=80=9D=
. The first
                            line in my grc python output labels =E2=80=9C=
Linux
                            GNU C++ version 9.2.1 20200304;
                            Boost_107100; UHD_3.15.0.0-2build5=E2=80=9D,
                            USB3.0). Any ideas? I tried both the
                            num_recv_frame size stuff and setting high
                            priority with no joy, but then again, I am a
                            N00b, so I may not have done that correctly
                            as well=E2=80=A6</p>
                          <p class=3D"MsoNormal">=C2=A0</p>
                          <p class=3D"MsoNormal">Also if anyone has
                            experience with GRC specifically, I have had
                            success recording what I wanted to with a
                            file with the 2MHz Sample Rate with a 0.2
                            MHz BW, but the files are pretty huge. We=E2=80=
=99re
                            talking 1GB/min=E2=80=A6 Any idea how to make=
 the
                            GRC record to a less-fine resolution so I
                            can free up some HDD space?</p>
                          <p class=3D"MsoNormal">=C2=A0</p>
                          <p class=3D"MsoNormal">Thanks guys!</p>
                          <p class=3D"MsoNormal">Ya Boi Steve</p>
                          <p class=3D"MsoNormal"><span>__________________=
_____________________________<br>
                              USRP-users mailing list -- </span><a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:usrp-users@lists.ettus.com"
                              target=3D"_blank"><span>usrp-users@lists.et=
tus.com</span></a><span><br>
                              To unsubscribe send an email to </span><a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:usrp-users-leave@lists.ettus=
.com"
                              target=3D"_blank"><span>usrp-users-leave@li=
sts.ettus.com</span></a></p>
                        </div>
                      </blockquote>
                    </div>
                  </blockquote>
                  <p class=3D"MsoNormal"><span>=C2=A0</span></p>
                </div>
              </blockquote>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a moz-do-not-send=3D"true"
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080609060000070204020206--

--===============1078293169994178031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1078293169994178031==--
