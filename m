Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AB736DF4E
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 21:03:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A67C3848A2
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 15:03:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="R5Pi5MDz";
	dkim-atps=neutral
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 1BD58384413
	for <USRP-users@lists.ettus.com>; Wed, 28 Apr 2021 15:02:20 -0400 (EDT)
Received: by mail-ot1-f41.google.com with SMTP id n32-20020a9d1ea30000b02902a53d6ad4bdso4311055otn.3
        for <USRP-users@lists.ettus.com>; Wed, 28 Apr 2021 12:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1Wrg0ci207qQ+rMYuEzOwekCSdpE6xCK37FDb9zvhuQ=;
        b=R5Pi5MDzoVzz81rsHOmzqhP1Nybh5kiMAY96YBuGr9GDGC3q/2N8g8/i+jGbYDfxRS
         ls+a4BibcyPbvXBgdJDl0xQtFWZgvaI8q++/tvt0gwVMPU8w92fvC7tLajaigazi/Xwa
         roY2WhjIuMngERO7KCKbxRZp7UvufARhnoUDV7DF4jqINZhM/cbVjXxz4vz6NQAwkt/A
         bMUTVZUX3o5E1VrOeNgAVldrnuUL3+YoY3gJjHPO2dw5WxkC4/GuSFEP3X3nPKi3SJBR
         ymxUIE1EseqHxRGX5mYS3uWfTJ0VvgHcYhBCcer79MyD4ZmJPpVGoXwHqfTcKd9MlCV8
         /iAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1Wrg0ci207qQ+rMYuEzOwekCSdpE6xCK37FDb9zvhuQ=;
        b=cvyp6G15npm1SQVQ+yipUHwIqs3TIUhZAyz6WgsAvghcL8thsO9YJjS+TC9rPKRPjH
         9aGtlsBT7Xm7FA1eb9AGG1bE6dgeFPBQ98NVo9hmbCZA48fKraP9eNA4TVpAruQD/YIK
         X6qxAwfkJEDTKj0qUxyOeA0EZVJq0Rg5sJ9fFLc4JjGBdbbTukNTaHM7n4UTQZ/pEWjM
         abimJ8ag1XhXmDhxOVOIiqPRuNy41PfJ5KLXYuULyF4QbtK7HdpuiJGuRANwqSpCtU8I
         835m9wEvjv7LcfYEwYFvJLRfsI2lxge1DnKhzhsy54gi0CZNbw/ojPEsudxboEEwHvn9
         iz/Q==
X-Gm-Message-State: AOAM532aiyC9ccrK8iXPA5esPhVsG2a14vcHV4dGsNq8xfr1DdtZnFoG
	gWDGFWXvWnpr8yT8a9u0dh/Hx+61edTfBh7gfNDdWA==
X-Google-Smtp-Source: ABdhPJz8My8XBGZVLo2gUCuzWgbHud2ZCW+rMUfC3Irz8rSB0Avn8Nvp21atDaHBOKa9gouRCXeLalm0rVueZxVwIUc=
X-Received: by 2002:a9d:103:: with SMTP id 3mr6283576otu.301.1619636540080;
 Wed, 28 Apr 2021 12:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <cc4faee36fb84e0d83669253db7e636f@boeing.com> <276627C4-F722-4F13-9DB2-AAA4059421BE@gmail.com>
 <c3e16fa1723f4e418e0e9560c0af90b4@boeing.com> <608860D4.6040808@gmail.com>
 <2399f9e83e2d4d559a4762bb4c6f4d9f@boeing.com> <60899479.8080300@gmail.com>
In-Reply-To: <60899479.8080300@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 28 Apr 2021 15:02:09 -0400
Message-ID: <CAB__hTRe1y2+0iA2ZazFUbyQnHhNm8dG1QkpuYPGzWmOoxVhTA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: RQ6TFP7KDJLPGAXQC3DR5WMU24UCCFUR
X-Message-ID-Hash: RQ6TFP7KDJLPGAXQC3DR5WMU24UCCFUR
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Hirst (US), Stephen" <stephen.hirst@boeing.com>, "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: Underflows/Overflows, Filesize and a Complete N00B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RQ6TFP7KDJLPGAXQC3DR5WMU24UCCFUR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3349455244088048417=="

--===============3349455244088048417==
Content-Type: multipart/alternative; boundary="000000000000a340d205c10d0434"

--000000000000a340d205c10d0434
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,
A few remarks:

   - As Marcus indicated, your sample rate should be at least as largs your
   signal bandwidth. So, if your signal is 1.5MHz BW, your sampling rate
   should be at least 1.5MS/s (really it should be 25% larger).
   - The larger the sample rate, the quicker you HDD fills up. So, there is
   incentive to keep it as small as possible.
   - If your goal is to record signals, I highly recommend setting up a RAM
   file system and record to that rather than to your SSD. I know SSDs are
   fast, but my own experience is that for any high data rate recording, I =
am
   best served recording to the RAM file system. After recording, then simp=
ly
   copy to the SSD.  With 16GB RAM, perhaps you could configure a 12GB RAM
   file system which would provide storage of up to 3GSamps.  At 10MS/s, th=
is
   would be 300 seconds.
   - If this can't work for you, then you could consider using the UHD DPDK
   capability but I'll warn you that it is not trivial to configure and get=
 it
   working nicely.  First, I guess, you need to decide if saving the data t=
o
   the file is the issue. So, if you can run rx_samples_to_file at a given
   rate with the file configured for /dev/null/ and it works but then you
   change to a real file and it doesn't, then the storage is the problem.

Rob

On Wed, Apr 28, 2021 at 1:00 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/28/2021 12:29 PM, Hirst (US), Stephen wrote:
>
> For Marcus,
>
> The true bandwidth of my signal is 16MHz but I have been getting away wit=
h
> 0.2 MHz for some of my data=E2=80=A6 Not being an RF guy, and having no i=
dea what
> I=E2=80=99m doing, I=E2=80=99m doing a demo to try and capture GPS the ba=
sic GPS L1 signal
> which is a total channel bandwidth of 15.345MHz at a center freq of
> 1575.42MHz (specifically C/A is a 1.023MHz bandwidth code with a 50bps
> mod2adder). So I guess if I=E2=80=99m up in the L-band region, does my sa=
mple rate
> have to equal double my L1 C/A subfreq bandwidth to capture the whole
> signal? Or is the B210 capturing the whole bandwidth instantaneously and =
my
> Sample Rate has to just capture Double my DATA RATE? (GPS L1 C/A code
> within L1 for this example ~1.023MHz at ~1Mbps with a NAV message Mod 2
> adder at 50bps)
>
> You are fairly far in the weeds here, and it has nothing to do with Gnu
> Radio or SDR or USRPs. There are some fundamental
>   results in information theory that you need to understand, and they
> proceed, to a first approximation, from the "physics" of the
>   situation.
>
> The Nyquist sampling theorem states that for a signal of bandwidth B, you
> must (at a minimum) sample that signal at 2B in order
>   to not lose information about that signal.  In practice, you need to
> achieve greater than 2B for maximum fidelity.  Now, as to
>   the relationship between *bit rate* and occupied spectral bandwidth,
> that's something that depends VERY heavily on the underlying
>   modulation scheme.  In the case of GPS L1, (which I don't know THAT muc=
h
> about), the basic "chip rate" is 1.023MHz, which
>   then feeds what amounts to a BPSK modulator.  So, it, minimally occupie=
s
> about 2.046MHz bandwidth.  Which means sampling
>   at least twice that rate.
>
> Now, the "magic" of complex-baseband sampling is that the signal is
> sampled *twice* during the sample interval, so that you can
>   "get away" with running complex sampling at close to the notional
> bandwidth.  So sampling at, let's say, 2.5Msps should be able
>   to capture all the information in your L1 signal.
>
> But none of this has anything, per se, to do with USRP or Gnu Radio or
> SDR, but to a fundamental understanding of the
>   underpinnings of Digital Signal Processing, and signals in general, and
> modulation, and a bunch of 'underpinning' topics
>   that are best "back filled" in forums other than here.
>
>
>
> Running bare hardware with Ubuntu 20.04LTS. I looked up how to change the
> CPU Freq to Performance but I don=E2=80=99t know how exactly to do it.
>
>
>
> For Rob Kossler, I did a ./benchmark_rate on the B210 with peanut loads o=
n
> all SMAs, I performed the command =E2=80=9C./benchmark_rate =E2=80=93rx_r=
ate 32000000
> =E2=80=93tx_rate 32000000=E2=80=9D
>
> Benchmark Rate Summary:
>
> Num Received samples:327203268
>
> Num dropped samples: 0
>
> Num overruns detected: 0
>
> Num Transmitted samples: 320059680
>
> Num Sequence Errors (Tx): 0
>
> Num Sequence Errors (Rx): 0
>
> Num underruns detected: 0
>
> Num late commands: 0
>
> Num timeouts (Tx): 2
>
> Num timouts (Rx): 0
>
>
>
> I see the Num timeouts (Tx): 2, is that anything?
>
> Since you won't be transmitting, that's nothing.
>
> It
>
>
>
>
>
>
>
> *From:* Marcus D. Leech [mailto:patchvonbraun@gmail.com
> <patchvonbraun@gmail.com>]
> *Sent:* Tuesday, April 27, 2021 3:07 PM
> *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
> <stephen.hirst@boeing.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [EXTERNAL] Re: [USRP-users] Underflows/Overflows, Filesize
> and a Complete N00B
>
>
>
> EXT email: be mindful of links/attachments.
>
>
>
> On 04/27/2021 02:07 PM, Hirst (US), Stephen wrote:
>
> Thanks Marcus for the quick reply!
>
>
>
> I have a B210 with a GPSDO (the TCXO one).
>
>
>
> And the system is =E2=80=9Coffline only=E2=80=9D now but I can manually t=
ype a response
> with something specific if you like.
>
>
>
> So I have a little checkbox that I click on my GRC GUI that starts the
> recording to a File Sink from a =E2=80=9CUHD: USRP Source=E2=80=9D. Here=
=E2=80=99s some details of
> what I have specified in the UHD: USRP Source - File Sink Box Pair.
>
>
>
> UHD: USRP Source
>
> GENERAL
>
> Output Type: Complex float32
>
> Wire Format: Complex int8
>
> Stream args: peak=3D0.003906
>
> Stream Channels: []
>
> Device Address:
>
> Device Arguments: =E2=80=9Csend_frame_size=3D8192=E2=80=9D
>
> Sync: Unknown PPS
>
> Clock Rate (Hz): Default
>
> Num Mboards: 1
>
> Mb0 Clock Source: Default
>
> Mb0 Time Source: Default
>
> Mb0 Subdev Spec: A:A
>
> Num Channels: 1
>
> Samp rate (Sps): 2000000
>
> ADVANCED
>
> Alias:
>
> Affinity:
>
> Minoutbuf: 8192
>
> Maxoutbuf: 8192
>
> Show LO Controls: OFF
>
> Comment:
>
> RF OPTIONS
>
> Ch0 Center Freq: 2000000000
>
> Ch0 AGC: Default
>
> Ch0: Gain Value: 30
>
> Ch0 Antenna: RX2
>
> Ch0 Bandwidth: 0.2MHz
>
> FE CORRECTIONS
>
> Ch0 Enable DC Offset Correction: true
>
> Ch0 Enable IQ Imbalance Correction: true
>
>
>
>
>
>
>
> [FILE SINK]
>
> GENERAL
>
> File: [Your favorite file name here]
>
> Input Type: complex
>
> Vec length: 1
>
> Unbuffered: OFF
>
> Append file: OFF
>
>
>
> Does this help at all?
>
>
>
> I tried the ./rx_samples_to_file from within =E2=80=9C/usr/lib/uhd/exampl=
es=E2=80=9D with
> similar options but I don=E2=80=99t see an O/U with the selected options.=
 Is this a
> GRC thing? I have no idea=E2=80=A6
>
> https://files.ettus.com/manual/page_general.html#general_ounotes
> https://m.facebook.com/
> https://files.ettus.com/manual/page_transport.html#transport_usb
>
> The 'O' indication is coming from deep within the UHD drivers and has
> nothing to do with Gnu Radio, per se.
>
> If the bandwidth of your signal of interest really is only 200kHz, then
> you don't need to record at 2Msps.  Indeed you could
>   easily get away with sampling at a much much lower rate.  Like 500ksps.
> This will save disk space while preserving your
>   data precision (complex floats).  You can also write your samples in a
> different format, like complex-shorts, halving the
>   amount of disk space used.
>
> But given that you can use rx_samples_to_file apparently successfully, an=
d
> cannot use Gnu Radio successfully to accomplish
>   more-or-less the same task, then Robs suggestion to initially eliminate
> Gnu Radio from the equation is probably a good one.
>
> Also, are you running your machine with the CPU governor set to
> "performance" or "power-save"?   Are you running inside
>   a VM, or on the actual raw hardware?
>
>
>
>
>
> *From:* Marcus D Leech [mailto:patchvonbraun@gmail.com
> <patchvonbraun@gmail.com>]
> *Sent:* Tuesday, April 27, 2021 1:37 PM
> *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
> <stephen.hirst@boeing.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] Underflows/Overflows, Filesize and
> a Complete N00B
>
>
>
> EXT email: be mindful of links/attachments.
>
>
>
>
>
> If you just use the rx_samples_to_file utility that comes with UHD what
> are your results
>
>
>
> Can you share your GNuRadio flow graph with us? What type of USRP do you
> have? There are about a dozen different models of USRP out there.
>
>
>
>
>
> Sent from my iPhone
>
>
>
>
> On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen <stephen.hirst@boeing.co=
m>
> wrote:
>
> =EF=BB=BF
>
> Hi Guys,
>
>
>
> I appreciate you all and thank you for the great community that is this
> mailing list! Continue on!
>
>
>
> I, however, am a complete N00B and require assistance on some seemingly
> minor tasks that I believe you could help me out on. :)
>
>
>
> With that being said, I find myself with the Ubuntu 20.04LTS install on a
> rather =E2=80=9Cfast=E2=80=9D Dell laptop (specs down below.)
>
> -          8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache,
> 1.9GHz,15W, vPro)
>
> -          16GB, 2x8GB, 2666MHz DDR4 Non-ECC
>
> -          M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid
> State Drive
>
>
>
> I have fiddled around with an online install on the laptop but I haven=E2=
=80=99t
> gotten the overflows and underflows to cooperate. And to be more specific=
,
> I can record a sample rate of 2Mhz and 0.2Mhz bandwidth without issue, bu=
t
> I can=E2=80=99t get a SR or BW greater than those to work without Under/O=
verflows
> developing. (I have been using UHD 3.15.0.02build5 with GNURadio 3.8.1.0
> (Python 3.8.2) (grc and grc-uhd) and installed everything with =E2=80=9Ca=
pt=E2=80=9D. The
> first line in my grc python output labels =E2=80=9CLinux GNU C++ version =
9.2.1
> 20200304; Boost_107100; UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any ideas=
? I tried
> both the num_recv_frame size stuff and setting high priority with no joy,
> but then again, I am a N00b, so I may not have done that correctly as wel=
l=E2=80=A6
>
>
>
> Also if anyone has experience with GRC specifically, I have had success
> recording what I wanted to with a file with the 2MHz Sample Rate with a 0=
.2
> MHz BW, but the files are pretty huge. We=E2=80=99re talking 1GB/min=E2=
=80=A6 Any idea how
> to make the GRC record to a less-fine resolution so I can free up some HD=
D
> space?
>
>
>
> Thanks guys!
>
> Ya Boi Steve
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a340d205c10d0434
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Stephen,<div>A few remarks:</div><div>=
<ul><li>As Marcus indicated, your sample rate should be at least as largs y=
our signal bandwidth. So, if your signal is 1.5MHz BW, your sampling rate s=
hould be at least 1.5MS/s (really it should be 25% larger).</li><li>The lar=
ger the sample rate, the quicker you HDD fills up. So, there is incentive t=
o keep it as small as possible.</li><li>If your goal is to record signals, =
I highly recommend setting up a RAM file system and record to that rather t=
han to your SSD. I know SSDs are fast, but my own experience is that for an=
y high data rate recording, I am best served recording to the RAM file syst=
em. After recording, then simply copy to the SSD.=C2=A0 With 16GB RAM, perh=
aps you could configure a 12GB RAM file system which would provide storage =
of up to 3GSamps.=C2=A0 At 10MS/s, this would be 300 seconds.=C2=A0=C2=A0</=
li><li>If this can&#39;t work for you, then you could consider using the UH=
D DPDK capability but I&#39;ll warn you that it is not trivial to configure=
 and get it working nicely.=C2=A0 First, I guess, you need to decide if sav=
ing the data to the file is the issue. So, if you can run rx_samples_to_fil=
e at a given rate with the file configured for /dev/null/ and it works but =
then you change to a real file and it doesn&#39;t, then the storage is the =
problem.</li></ul><div>Rob</div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 28, 2021 at 1:00 PM Marcu=
s D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/28/2021 12:29 PM, Hirst (US),
      Stephen wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">For Mar=
cus,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">The tru=
e
            bandwidth of my signal is 16MHz but I have been getting away
            with 0.2 MHz for some of my data=E2=80=A6 Not being an RF guy, =
and
            having no idea what I=E2=80=99m doing, I=E2=80=99m doing a demo=
 to try and
            capture GPS the basic GPS L1 signal which is a total channel
            bandwidth of 15.345MHz at a center freq of 1575.42MHz
            (specifically C/A is a 1.023MHz bandwidth code with a 50bps
            mod2adder). So I guess if I=E2=80=99m up in the L-band region, =
does
            my sample rate have to equal double my L1 C/A subfreq
            bandwidth to capture the whole signal? Or is the B210
            capturing the whole bandwidth instantaneously and my Sample
            Rate has to just capture Double my DATA RATE? (GPS L1 C/A
            code within L1 for this example ~1.023MHz at ~1Mbps with a
            NAV message Mod 2 adder at 50bps)</span></p>
      </div>
    </blockquote>
    You are fairly far in the weeds here, and it has nothing to do with
    Gnu Radio or SDR or USRPs. There are some fundamental<br>
    =C2=A0 results in information theory that you need to understand, and
    they proceed, to a first approximation, from the &quot;physics&quot; of=
 the<br>
    =C2=A0 situation.<br>
    <br>
    The Nyquist sampling theorem states that for a signal of bandwidth
    B, you must (at a minimum) sample that signal at 2B in order<br>
    =C2=A0 to not lose information about that signal.=C2=A0 In practice, yo=
u need
    to achieve greater than 2B for maximum fidelity.=C2=A0 Now, as to<br>
    =C2=A0 the relationship between *bit rate* and occupied spectral
    bandwidth, that&#39;s something that depends VERY heavily on the
    underlying<br>
    =C2=A0 modulation scheme.=C2=A0 In the case of GPS L1, (which I don&#39=
;t know
    THAT much about), the basic &quot;chip rate&quot; is 1.023MHz, which<br=
>
    =C2=A0 then feeds what amounts to a BPSK modulator.=C2=A0 So, it, minim=
ally
    occupies about 2.046MHz bandwidth.=C2=A0 Which means sampling<br>
    =C2=A0 at least twice that rate.<br>
    <br>
    Now, the &quot;magic&quot; of complex-baseband sampling is that the sig=
nal is
    sampled *twice* during the sample interval, so that you can<br>
    =C2=A0 &quot;get away&quot; with running complex sampling at close to t=
he notional
    bandwidth.=C2=A0 So sampling at, let&#39;s say, 2.5Msps should be able<=
br>
    =C2=A0 to capture all the information in your L1 signal.<br>
    <br>
    But none of this has anything, per se, to do with USRP or Gnu Radio
    or SDR, but to a fundamental understanding of the<br>
    =C2=A0 underpinnings of Digital Signal Processing, and signals in
    general, and modulation, and a bunch of &#39;underpinning&#39; topics<b=
r>
    =C2=A0 that are best &quot;back filled&quot; in forums other than here.=
<br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Running=
 bare
            hardware with Ubuntu 20.04LTS. I looked up how to change the
            CPU Freq to Performance but I don=E2=80=99t know how exactly to=
 do
            it.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">For Rob
            Kossler, I did a ./benchmark_rate on the B210 with peanut
            loads on all SMAs, I performed the command =E2=80=9C./benchmark=
_rate
            =E2=80=93rx_rate 32000000 =E2=80=93tx_rate 32000000=E2=80=9D<u>=
</u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Benchma=
rk Rate
            Summary:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num Rec=
eived
            samples:327203268<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num dro=
pped
            samples: 0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num ove=
rruns
            detected: 0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num Tra=
nsmitted
            samples: 320059680<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num Seq=
uence
            Errors (Tx): 0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num Seq=
uence
            Errors (Rx): 0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num und=
erruns
            detected: 0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num lat=
e
            commands: 0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125);backgrou=
nd:yellow">Num
            timeouts (Tx): 2</span><span style=3D"color:rgb(31,73,125)"><u>=
</u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num tim=
outs
            (Rx): 0<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I see t=
he Num
            timeouts (Tx): 2, is that anything?</span></p>
      </div>
    </blockquote>
    Since you won&#39;t be transmitting, that&#39;s nothing.<br>
    <br>
    It <br>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=
=C2=A0<u></u></span></p>
        <div>
          <div style=3D"border-right:none;border-bottom:none;border-left:no=
ne;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
            <p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From=
:</span></b><span style=3D"color:windowtext"> Marcus D. Leech
                [<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k">mailto:patchvonbraun@gmail.com</a>]
                <br>
                <b>Sent:</b> Tuesday, April 27, 2021 3:07 PM<br>
                <b>To:</b> Hirst (US), Stephen
                <a href=3D"mailto:stephen.hirst@boeing.com" target=3D"_blan=
k">&lt;stephen.hirst@boeing.com&gt;</a><br>
                <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [EXTERNAL] Re: [USRP-users]
                Underflows/Overflows, Filesize and a Complete N00B<u></u><u=
></u></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <table border=3D"0" cellpadding=3D"0">
          <tbody>
            <tr>
              <td style=3D"background:white;padding:0.75pt">
                <table style=3D"width:100%;margin-left:0.75pt;margin-right:=
0.75pt" align=3D"left" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" wid=
th=3D"100%">
                  <tbody>
                    <tr>
                      <td style=3D"background:rgb(145,10,25);padding:5.25pt=
 1.5pt"><br>
                      </td>
                      <td style=3D"width:100%;background:rgb(253,242,244);p=
adding:5.25pt 3.75pt 5.25pt 11.25pt" width=3D"100%">
                        <div>
                          <p class=3D"MsoNormal"><span style=3D"font-size:1=
0pt;font-family:Verdana,sans-serif;color:rgb(33,33,33)">EXT
                              email: be mindful of links/attachments.</span=
><span><u></u><u></u></span></p>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <pre>=C2=A0<u></u><u></u></pre>
              </td>
            </tr>
          </tbody>
        </table>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:10pt">On
              04/27/2021 02:07 PM, Hirst (US), Stephen wrote:</span><span><=
u></u><u></u></span></p>
        </div>
        <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Thank=
s Marcus
              for the quick reply!</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I hav=
e a B210
              with a GPSDO (the TCXO one).
            </span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">And t=
he
              system is =E2=80=9Coffline only=E2=80=9D now but I can manual=
ly type a
              response with something specific if you like.</span><u></u><u=
></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">So I =
have a
              little checkbox that I click on my GRC GUI that starts the
              recording to a File Sink from a =E2=80=9CUHD: USRP Source=E2=
=80=9D. Here=E2=80=99s
              some details of what I have specified in the UHD: USRP
              Source - File Sink Box Pair.</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">UHD: =
USRP
              Source</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">GENER=
AL</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Outpu=
t Type:
              Complex float32</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Wire =
Format:
              Complex int8</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Strea=
m args:
              peak=3D0.003906</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Strea=
m
              Channels: []</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Devic=
e
              Address:</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Devic=
e
              Arguments: =E2=80=9Csend_frame_size=3D8192=E2=80=9D</span><u>=
</u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Sync:=
 Unknown
              PPS</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Clock=
 Rate
              (Hz): Default</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num M=
boards:
              1</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Mb0 C=
lock
              Source: Default</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Mb0 T=
ime
              Source: Default</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Mb0 S=
ubdev
              Spec: A:A</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Num C=
hannels:
              1</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Samp =
rate
              (Sps): 2000000</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">ADVAN=
CED</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Alias=
:</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Affin=
ity:</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Minou=
tbuf:
              8192</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Maxou=
tbuf:
              8192</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Show =
LO
              Controls: OFF</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Comme=
nt:</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">RF OP=
TIONS</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 C=
enter
              Freq: 2000000000</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 A=
GC:
              Default</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0: =
Gain
              Value: 30</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 A=
ntenna:
              RX2</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0
              Bandwidth: 0.2MHz</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">FE
              CORRECTIONS</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 E=
nable DC
              Offset Correction: true</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Ch0 E=
nable IQ
              Imbalance Correction: true</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">[FILE=
 SINK]</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">GENER=
AL</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">File:=
 [Your
              favorite file name here]</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Input=
 Type:
              complex</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Vec l=
ength: 1</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Unbuf=
fered:
              OFF</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Appen=
d file:
              OFF</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Does =
this
              help at all?</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">I tri=
ed the
              ./rx_samples_to_file from within =E2=80=9C/usr/lib/uhd/exampl=
es=E2=80=9D
              with similar options but I don=E2=80=99t see an O/U with the
              selected options. Is this a GRC thing? I have no idea=E2=80=
=A6</span><u></u><u></u></p>
        </blockquote>
        <p class=3D"MsoNormal"><a href=3D"https://files.ettus.com/manual/pa=
ge_general.html#general_ounotes" target=3D"_blank"><span>https://files.ettu=
s.com/manual/page_general.html#general_ounotes</span></a><span><br>
            <a href=3D"https://m.facebook.com/" target=3D"_blank">https://m=
.facebook.com/</a><br>
          </span><a href=3D"https://files.ettus.com/manual/page_transport.h=
tml#transport_usb" target=3D"_blank"><span>https://files.ettus.com/manual/p=
age_transport.html#transport_usb</span></a><span><br>
            <br>
            The &#39;O&#39; indication is coming from deep within the UHD
            drivers and has nothing to do with Gnu Radio, per se.<br>
            <br>
            If the bandwidth of your signal of interest really is only
            200kHz, then you don&#39;t need to record at 2Msps.=C2=A0 Indee=
d you
            could<br>
            =C2=A0 easily get away with sampling at a much much lower rate.=
=C2=A0
            Like 500ksps.=C2=A0 This will save disk space while preserving
            your<br>
            =C2=A0 data precision (complex floats).=C2=A0 You can also writ=
e your
            samples in a different format, like complex-shorts, halving
            the<br>
            =C2=A0 amount of disk space used.<br>
            <br>
            But given that you can use rx_samples_to_file apparently
            successfully, and cannot use Gnu Radio successfully to
            accomplish<br>
            =C2=A0 more-or-less the same task, then Robs suggestion to
            initially eliminate Gnu Radio from the equation is probably
            a good one.<br>
            <br>
            Also, are you running your machine with the CPU governor set
            to &quot;performance&quot; or &quot;power-save&quot;?=C2=A0=C2=
=A0 Are you running inside<br>
            =C2=A0 a VM, or on the actual raw hardware?<br>
            <br>
            <br>
            <br>
            <u></u><u></u></span></p>
        <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
          <p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=
=A0</span><u></u><u></u></p>
          <div>
            <div style=3D"border-right:none;border-bottom:none;border-left:=
none;border-top:1pt solid rgb(225,225,225);padding:3pt 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech [<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">mailto:patchvonbraun@=
gmail.com</a>]
                <br>
                <b>Sent:</b> Tuesday, April 27, 2021 1:37 PM<br>
                <b>To:</b> Hirst (US), Stephen <a href=3D"mailto:stephen.hi=
rst@boeing.com" target=3D"_blank">&lt;stephen.hirst@boeing.com&gt;</a><br>
                <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> [EXTERNAL] Re: [USRP-users]
                Underflows/Overflows, Filesize and a Complete N00B<u></u><u=
></u></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
          <table border=3D"0" cellpadding=3D"0">
            <tbody>
              <tr>
                <td style=3D"background:white;padding:0.75pt">
                  <table style=3D"width:100%;margin-left:0.75pt;margin-righ=
t:0.75pt" align=3D"left" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" w=
idth=3D"100%">
                    <tbody>
                      <tr>
                        <td style=3D"background:rgb(145,10,25);padding:5.25=
pt 1.5pt"><br>
                        </td>
                        <td style=3D"width:100%;background:rgb(253,242,244)=
;padding:5.25pt 3.75pt 5.25pt 11.25pt" width=3D"100%">
                          <div>
                            <p class=3D"MsoNormal"><span style=3D"font-size=
:10pt;font-family:Verdana,sans-serif;color:rgb(33,33,33)">EXT
                                email: be mindful of links/attachments.</sp=
an><u></u><u></u></p>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <pre><u></u>=C2=A0<u></u></pre>
                  <pre>=C2=A0<u></u><u></u></pre>
                </td>
              </tr>
            </tbody>
          </table>
          <p class=3D"MsoNormal"><span style=3D"font-size:10pt">If you
              just use the rx_samples_to_file utility that comes with
              UHD what are your results</span><u></u><u></u></p>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10pt">=C2=A0</s=
pan><u></u><u></u></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10pt">Can you
                share your GNuRadio flow graph with us? What type of
                USRP do you have? There are about a dozen different
                models of USRP out there.=C2=A0</span><u></u><u></u></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10pt">=C2=A0</s=
pan><u></u><u></u></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10pt">=C2=A0</s=
pan><u></u><u></u></p>
            <div>
              <p class=3D"MsoNormal"><span style=3D"font-size:10pt">Sent
                  from my iPhone</span><u></u><u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span style=3D"font-size:10pt"><br>
                  <br>
                  <br>
                </span><u></u><u></u></p>
              <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                <p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span s=
tyle=3D"font-size:10pt">On Apr 27, 2021, at 1:24
                    PM, Hirst (US), Stephen &lt;</span><a href=3D"mailto:st=
ephen.hirst@boeing.com" target=3D"_blank"><span style=3D"font-size:10pt">st=
ephen.hirst@boeing.com</span></a><span style=3D"font-size:10pt">&gt; wrote:=
</span><u></u><u></u></p>
              </blockquote>
            </div>
            <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
              <div>
                <p class=3D"MsoNormal"><span style=3D"font-size:10pt">=EF=
=BB=BF </span><u></u><u></u></p>
                <p class=3D"MsoNormal">Hi Guys,<u></u><u></u></p>
                <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                <p class=3D"MsoNormal">I appreciate you all and thank you
                  for the great community that is this mailing list!
                  Continue on!<u></u><u></u></p>
                <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                <p class=3D"MsoNormal">I, however, am a complete N00B and
                  require assistance on some seemingly minor tasks that
                  I believe you could help me out on. :)<u></u><u></u></p>
                <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                <p class=3D"MsoNormal">With that being said, I find myself
                  with the Ubuntu 20.04LTS install on a rather =E2=80=9Cfas=
t=E2=80=9D
                  Dell laptop (specs down below.)<u></u><u></u></p>
                <p><span style=3D"font-family:Roboto-Regular"><span>-<span =
style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                      </span></span></span><span style=3D"font-family:Robot=
o-Regular;color:rgb(68,68,68)">8th
                    Gen Intel Core i7-8650U Processor (Quad Core, 8M
                    Cache, 1.9GHz,15W, vPro)</span><u></u><u></u></p>
                <p><span style=3D"font-family:Roboto-Regular"><span>-<span =
style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                      </span></span></span><span style=3D"color:rgb(68,68,6=
8)">16GB, 2x8GB, 2666MHz DDR4
                    Non-ECC</span><u></u><u></u></p>
                <p><span style=3D"font-family:Roboto-Regular"><span>-<span =
style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
                      </span></span></span><span style=3D"font-family:Robot=
o-Regular;color:rgb(68,68,68)">M.2
                    1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting
                    Solid State Drive</span><u></u><u></u></p>
                <p class=3D"MsoNormal"><span style=3D"font-family:Roboto-Re=
gular;color:rgb(68,68,68)">=C2=A0</span><u></u><u></u></p>
                <p class=3D"MsoNormal">I have fiddled around with an
                  online install on the laptop but I haven=E2=80=99t gotten=
 the
                  overflows and underflows to cooperate. And to be more
                  specific, I can record a sample rate of 2Mhz and
                  0.2Mhz bandwidth without issue, but I can=E2=80=99t get a=
 SR
                  or BW greater than those to work without
                  Under/Overflows developing. (I have been using UHD
                  3.15.0.02build5 with GNURadio 3.8.1.0 (Python 3.8.2)
                  (grc and grc-uhd) and installed everything with =E2=80=9C=
apt=E2=80=9D.
                  The first line in my grc python output labels =E2=80=9CLi=
nux
                  GNU C++ version 9.2.1 20200304; Boost_107100;
                  UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any ideas? I trie=
d
                  both the num_recv_frame size stuff and setting high
                  priority with no joy, but then again, I am a N00b, so
                  I may not have done that correctly as well=E2=80=A6<u></u=
><u></u></p>
                <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                <p class=3D"MsoNormal">Also if anyone has experience with
                  GRC specifically, I have had success recording what I
                  wanted to with a file with the 2MHz Sample Rate with a
                  0.2 MHz BW, but the files are pretty huge. We=E2=80=99re
                  talking 1GB/min=E2=80=A6 Any idea how to make the GRC rec=
ord
                  to a less-fine resolution so I can free up some HDD
                  space?<u></u><u></u></p>
                <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                <p class=3D"MsoNormal">Thanks guys!<u></u><u></u></p>
                <p class=3D"MsoNormal">Ya Boi Steve<u></u><u></u></p>
                <p class=3D"MsoNormal"><span>______________________________=
_________________<br>
                    USRP-users mailing list -- </span><a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank"><span>usrp-users@lists.ettus.com=
</span></a><span><br>
                    To unsubscribe send an email to </span><a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank"><span>usrp-users-leav=
e@lists.ettus.com</span></a><u></u><u></u></p>
              </div>
            </blockquote>
          </div>
        </blockquote>
        <p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000a340d205c10d0434--

--===============3349455244088048417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3349455244088048417==--
