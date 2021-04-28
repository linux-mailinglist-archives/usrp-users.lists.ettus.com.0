Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF8536DDBE
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 19:00:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8B03A384631
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 13:00:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JiDRSRLR";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DD7438434A
	for <USRP-users@lists.ettus.com>; Wed, 28 Apr 2021 12:59:44 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id q4so18824147qtn.5
        for <USRP-users@lists.ettus.com>; Wed, 28 Apr 2021 09:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=uQBrJ2IbLrLPDFIciEKbiCJHuRsefIzOPCer4vvuQzw=;
        b=JiDRSRLRvOyOaW6nvb7LC+dhUED6VUZC5WqEY1tb9fN9Hiry8EKQyYrKO1xQP+u+mX
         DElxbfsTZM6z+Cm+0pBOJt1KV/OFqZQwsdRn36KM5lMvCZvGLqcVT0yEyCN5ZJVGxUOh
         O0ybm1dchyOs2oHl1/mJmhnCwoFJBVQWRaaM7d1spyiO+PmlF+pxGoJ/UA3mNpEMx7uM
         8gJxj5DUwfS1vErokMhr9yMTUzNMPvd2DMrCyQFQw/mOemKDb1K6Jzhi4YF1fOSG2L7x
         CZk1BrPxtCM+CIREPZ4wPD1WsAWWMMWZ7bMdYhL/HLGH172F3UxwHpDNHWyQmWCHa/FZ
         R3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=uQBrJ2IbLrLPDFIciEKbiCJHuRsefIzOPCer4vvuQzw=;
        b=CUR83KJICrgFtcl3njg25y/xI9CCMVVFaww1SJ+WR62es5XcvKC/B/1STv/BkZ+M+X
         QI5ZqsACwKXrHQIUnl1n/z9/SiZ3js+EmxkurR9x/yLTCQiacN+AREEexWI8CUDbQXQq
         k8P//2HgkK0jkCBp5sKmvGT9gI4OHOukqpzNBBtlO8NN1YaZaYKewSIKLCGj5FHS8VHB
         c56mUr4m3kJQ0dqStWaIwV5YMOQoQ46bakySvINIdiWxC+G6nRom96d1Hoje47Ya/l4R
         ONuLQFcIdZO6duNOX3k33VHxBV/g28uFnNkDGscvvMurhFlJ9YcYm57FnQ2CmxupRgYG
         0rFw==
X-Gm-Message-State: AOAM532Tob9UMLnXO9uqan5H9e2aVZ0nEVUhnO7KULvgyy8YMR9NOkc1
	qQaLVf8FR1jwRP56ySRiUEMhvk1IGeWH7A==
X-Google-Smtp-Source: ABdhPJypMbJkPCq0jTvHYT6kuwsiOgL/gQcmLVKvjdY2VpOKHMRvZFJNvXGxJ0o+YdQYowIKYoSAOA==
X-Received: by 2002:ac8:5b8f:: with SMTP id a15mr14085996qta.21.1619629183443;
        Wed, 28 Apr 2021 09:59:43 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id p145sm216409qke.67.2021.04.28.09.59.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 09:59:42 -0700 (PDT)
Message-ID: <60899479.8080300@gmail.com>
Date: Wed, 28 Apr 2021 12:59:37 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Hirst (US), Stephen" <stephen.hirst@boeing.com>
References: <cc4faee36fb84e0d83669253db7e636f@boeing.com> <276627C4-F722-4F13-9DB2-AAA4059421BE@gmail.com> <c3e16fa1723f4e418e0e9560c0af90b4@boeing.com> <608860D4.6040808@gmail.com> <2399f9e83e2d4d559a4762bb4c6f4d9f@boeing.com>
In-Reply-To: <2399f9e83e2d4d559a4762bb4c6f4d9f@boeing.com>
Message-ID-Hash: 5J7J5ZVDUE6SILFE7B2AEGFJFXYC2KQK
X-Message-ID-Hash: 5J7J5ZVDUE6SILFE7B2AEGFJFXYC2KQK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]  Re: Underflows/Overflows, Filesize and a Complete N00B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5J7J5ZVDUE6SILFE7B2AEGFJFXYC2KQK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8823924138962317868=="

This is a multi-part message in MIME format.
--===============8823924138962317868==
Content-Type: multipart/alternative;
 boundary="------------070409030102040905050405"

This is a multi-part message in MIME format.
--------------070409030102040905050405
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/28/2021 12:29 PM, Hirst (US), Stephen wrote:
>
> For Marcus,
>
> The true bandwidth of my signal is 16MHz but I have been getting away=20
> with 0.2 MHz for some of my data=E2=80=A6 Not being an RF guy, and havi=
ng no=20
> idea what I=E2=80=99m doing, I=E2=80=99m doing a demo to try and captur=
e GPS the basic=20
> GPS L1 signal which is a total channel bandwidth of 15.345MHz at a=20
> center freq of 1575.42MHz (specifically C/A is a 1.023MHz bandwidth=20
> code with a 50bps mod2adder). So I guess if I=E2=80=99m up in the L-ban=
d=20
> region, does my sample rate have to equal double my L1 C/A subfreq=20
> bandwidth to capture the whole signal? Or is the B210 capturing the=20
> whole bandwidth instantaneously and my Sample Rate has to just capture=20
> Double my DATA RATE? (GPS L1 C/A code within L1 for this example=20
> ~1.023MHz at ~1Mbps with a NAV message Mod 2 adder at 50bps)
>
You are fairly far in the weeds here, and it has nothing to do with Gnu=20
Radio or SDR or USRPs. There are some fundamental
   results in information theory that you need to understand, and they=20
proceed, to a first approximation, from the "physics" of the
   situation.

The Nyquist sampling theorem states that for a signal of bandwidth B,=20
you must (at a minimum) sample that signal at 2B in order
   to not lose information about that signal.  In practice, you need to=20
achieve greater than 2B for maximum fidelity.  Now, as to
   the relationship between *bit rate* and occupied spectral bandwidth,=20
that's something that depends VERY heavily on the underlying
   modulation scheme.  In the case of GPS L1, (which I don't know THAT=20
much about), the basic "chip rate" is 1.023MHz, which
   then feeds what amounts to a BPSK modulator.  So, it, minimally=20
occupies about 2.046MHz bandwidth.  Which means sampling
   at least twice that rate.

Now, the "magic" of complex-baseband sampling is that the signal is=20
sampled *twice* during the sample interval, so that you can
   "get away" with running complex sampling at close to the notional=20
bandwidth.  So sampling at, let's say, 2.5Msps should be able
   to capture all the information in your L1 signal.

But none of this has anything, per se, to do with USRP or Gnu Radio or=20
SDR, but to a fundamental understanding of the
   underpinnings of Digital Signal Processing, and signals in general,=20
and modulation, and a bunch of 'underpinning' topics
   that are best "back filled" in forums other than here.

> Running bare hardware with Ubuntu 20.04LTS. I looked up how to change=20
> the CPU Freq to Performance but I don=E2=80=99t know how exactly to do =
it.
>
> For Rob Kossler, I did a ./benchmark_rate on the B210 with peanut=20
> loads on all SMAs, I performed the command =E2=80=9C./benchmark_rate =E2=
=80=93rx_rate=20
> 32000000 =E2=80=93tx_rate 32000000=E2=80=9D
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
> I see the Num timeouts (Tx): 2, is that anything?
>
Since you won't be transmitting, that's nothing.

It
>
> *From:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
> *Sent:* Tuesday, April 27, 2021 3:07 PM
> *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [EXTERNAL] Re: [USRP-users] Underflows/Overflows,=20
> Filesize and a Complete N00B
>
>
> =09
>
> EXT email: be mindful of links/attachments.
>
>  =20
>
> On 04/27/2021 02:07 PM, Hirst (US), Stephen wrote:
>
>     Thanks Marcus for the quick reply!
>
>     I have a B210 with a GPSDO (the TCXO one).
>
>     And the system is =E2=80=9Coffline only=E2=80=9D now but I can manu=
ally type a
>     response with something specific if you like.
>
>     So I have a little checkbox that I click on my GRC GUI that starts
>     the recording to a File Sink from a =E2=80=9CUHD: USRP Source=E2=80=
=9D. Here=E2=80=99s
>     some details of what I have specified in the UHD: USRP Source -
>     File Sink Box Pair.
>
>     UHD: USRP Source
>
>     GENERAL
>
>     Output Type: Complex float32
>
>     Wire Format: Complex int8
>
>     Stream args: peak=3D0.003906
>
>     Stream Channels: []
>
>     Device Address:
>
>     Device Arguments: =E2=80=9Csend_frame_size=3D8192=E2=80=9D
>
>     Sync: Unknown PPS
>
>     Clock Rate (Hz): Default
>
>     Num Mboards: 1
>
>     Mb0 Clock Source: Default
>
>     Mb0 Time Source: Default
>
>     Mb0 Subdev Spec: A:A
>
>     Num Channels: 1
>
>     Samp rate (Sps): 2000000
>
>     ADVANCED
>
>     Alias:
>
>     Affinity:
>
>     Minoutbuf: 8192
>
>     Maxoutbuf: 8192
>
>     Show LO Controls: OFF
>
>     Comment:
>
>     RF OPTIONS
>
>     Ch0 Center Freq: 2000000000
>
>     Ch0 AGC: Default
>
>     Ch0: Gain Value: 30
>
>     Ch0 Antenna: RX2
>
>     Ch0 Bandwidth: 0.2MHz
>
>     FE CORRECTIONS
>
>     Ch0 Enable DC Offset Correction: true
>
>     Ch0 Enable IQ Imbalance Correction: true
>
>     [FILE SINK]
>
>     GENERAL
>
>     File: [Your favorite file name here]
>
>     Input Type: complex
>
>     Vec length: 1
>
>     Unbuffered: OFF
>
>     Append file: OFF
>
>     Does this help at all?
>
>     I tried the ./rx_samples_to_file from within
>     =E2=80=9C/usr/lib/uhd/examples=E2=80=9D with similar options but I =
don=E2=80=99t see an
>     O/U with the selected options. Is this a GRC thing? I have no idea=E2=
=80=A6
>
> https://files.ettus.com/manual/page_general.html#general_ounotes
> https://m.facebook.com/
> https://files.ettus.com/manual/page_transport.html#transport_usb
>
> The 'O' indication is coming from deep within the UHD drivers and has=20
> nothing to do with Gnu Radio, per se.
>
> If the bandwidth of your signal of interest really is only 200kHz,=20
> then you don't need to record at 2Msps.  Indeed you could
>   easily get away with sampling at a much much lower rate. Like=20
> 500ksps.  This will save disk space while preserving your
>   data precision (complex floats).  You can also write your samples in=20
> a different format, like complex-shorts, halving the
>   amount of disk space used.
>
> But given that you can use rx_samples_to_file apparently successfully,=20
> and cannot use Gnu Radio successfully to accomplish
>   more-or-less the same task, then Robs suggestion to initially=20
> eliminate Gnu Radio from the equation is probably a good one.
>
> Also, are you running your machine with the CPU governor set to=20
> "performance" or "power-save"?   Are you running inside
>   a VM, or on the actual raw hardware?
>
>
>
>     *From:* Marcus D Leech [mailto:patchvonbraun@gmail.com]
>     *Sent:* Tuesday, April 27, 2021 1:37 PM
>     *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
>     <mailto:stephen.hirst@boeing.com>
>     *Cc:* USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com=
>
>     *Subject:* [EXTERNAL] Re: [USRP-users] Underflows/Overflows,
>     Filesize and a Complete N00B
>
>
>     =09
>
>     EXT email: be mindful of links/attachments.
>
>      =20
>
>      =20
>
>     If you just use the rx_samples_to_file utility that comes with UHD
>     what are your results
>
>     Can you share your GNuRadio flow graph with us? What type of USRP
>     do you have? There are about a dozen different models of USRP out
>     there.
>
>     Sent from my iPhone
>
>
>
>
>         On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen
>         <stephen.hirst@boeing.com <mailto:stephen.hirst@boeing.com>>
>         wrote:
>
>         =EF=BB=BF
>
>         Hi Guys,
>
>         I appreciate you all and thank you for the great community
>         that is this mailing list! Continue on!
>
>         I, however, am a complete N00B and require assistance on some
>         seemingly minor tasks that I believe you could help me out on. =
:)
>
>         With that being said, I find myself with the Ubuntu 20.04LTS
>         install on a rather =E2=80=9Cfast=E2=80=9D Dell laptop (specs d=
own below.)
>
>         -8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache,
>         1.9GHz,15W, vPro)
>
>         -16GB, 2x8GB, 2666MHz DDR4 Non-ECC
>
>         -M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid
>         State Drive
>
>         I have fiddled around with an online install on the laptop but
>         I haven=E2=80=99t gotten the overflows and underflows to cooper=
ate.
>         And to be more specific, I can record a sample rate of 2Mhz
>         and 0.2Mhz bandwidth without issue, but I can=E2=80=99t get a S=
R or BW
>         greater than those to work without Under/Overflows developing.
>         (I have been using UHD 3.15.0.02build5 with GNURadio 3.8.1.0
>         (Python 3.8.2) (grc and grc-uhd) and installed everything with
>         =E2=80=9Capt=E2=80=9D. The first line in my grc python output l=
abels =E2=80=9CLinux
>         GNU C++ version 9.2.1 20200304; Boost_107100;
>         UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any ideas? I tried both=
 the
>         num_recv_frame size stuff and setting high priority with no
>         joy, but then again, I am a N00b, so I may not have done that
>         correctly as well=E2=80=A6
>
>         Also if anyone has experience with GRC specifically, I have
>         had success recording what I wanted to with a file with the
>         2MHz Sample Rate with a 0.2 MHz BW, but the files are pretty
>         huge. We=E2=80=99re talking 1GB/min=E2=80=A6 Any idea how to ma=
ke the GRC
>         record to a less-fine resolution so I can free up some HDD spac=
e?
>
>         Thanks guys!
>
>         Ya Boi Steve
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>
>         To unsubscribe send an email to
>         usrp-users-leave@lists.ettus.com
>         <mailto:usrp-users-leave@lists.ettus.com>
>


--------------070409030102040905050405
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/28/2021 12:29 PM, Hirst (US),
      Stephen wrote:<br>
    </div>
    <blockquote cite=3D"mid:2399f9e83e2d4d559a4762bb4c6f4d9f@boeing.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Roboto-Regular;}
@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1872723768;
	mso-list-type:hybrid;
	mso-list-template-ids:-1755407046 -315950238 67698691 67698693 67698689 =
67698691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:13;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Roboto-Regular;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">For Marcus,<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">The true
            bandwidth of my signal is 16MHz but I have been getting away
            with 0.2 MHz for some of my data=E2=80=A6 Not being an RF guy=
, and
            having no idea what I=E2=80=99m doing, I=E2=80=99m doing a de=
mo to try and
            capture GPS the basic GPS L1 signal which is a total channel
            bandwidth of 15.345MHz at a center freq of 1575.42MHz
            (specifically C/A is a 1.023MHz bandwidth code with a 50bps
            mod2adder). So I guess if I=E2=80=99m up in the L-band region=
, does
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
    they proceed, to a first approximation, from the "physics" of the<br>
    =C2=A0 situation.<br>
    <br>
    The Nyquist sampling theorem states that for a signal of bandwidth
    B, you must (at a minimum) sample that signal at 2B in order<br>
    =C2=A0 to not lose information about that signal.=C2=A0 In practice, =
you need
    to achieve greater than 2B for maximum fidelity.=C2=A0 Now, as to<br>
    =C2=A0 the relationship between *bit rate* and occupied spectral
    bandwidth, that's something that depends VERY heavily on the
    underlying<br>
    =C2=A0 modulation scheme.=C2=A0 In the case of GPS L1, (which I don't=
 know
    THAT much about), the basic "chip rate" is 1.023MHz, which<br>
    =C2=A0 then feeds what amounts to a BPSK modulator.=C2=A0 So, it, min=
imally
    occupies about 2.046MHz bandwidth.=C2=A0 Which means sampling<br>
    =C2=A0 at least twice that rate.<br>
    <br>
    Now, the "magic" of complex-baseband sampling is that the signal is
    sampled *twice* during the sample interval, so that you can<br>
    =C2=A0 "get away" with running complex sampling at close to the notio=
nal
    bandwidth.=C2=A0 So sampling at, let's say, 2.5Msps should be able<br=
>
    =C2=A0 to capture all the information in your L1 signal.<br>
    <br>
    But none of this has anything, per se, to do with USRP or Gnu Radio
    or SDR, but to a fundamental understanding of the<br>
    =C2=A0 underpinnings of Digital Signal Processing, and signals in
    general, and modulation, and a bunch of 'underpinning' topics<br>
    =C2=A0 that are best "back filled" in forums other than here.<br>
    <br>
    <blockquote cite=3D"mid:2399f9e83e2d4d559a4762bb4c6f4d9f@boeing.com"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Running bare
            hardware with Ubuntu 20.04LTS. I looked up how to change the
            CPU Freq to Performance but I don=E2=80=99t know how exactly =
to do
            it.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">For Rob
            Kossler, I did a ./benchmark_rate on the B210 with peanut
            loads on all SMAs, I performed the command =E2=80=9C./benchma=
rk_rate
            =E2=80=93rx_rate 32000000 =E2=80=93tx_rate 32000000=E2=80=9D<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Benchmark Ra=
te
            Summary:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Received
            samples:327203268<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num dropped
            samples: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num overruns
            detected: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Transmit=
ted
            samples: 320059680<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Sequence
            Errors (Tx): 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Sequence
            Errors (Rx): 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num underrun=
s
            detected: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num late
            commands: 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
            style=3D"color:#1F497D;background:yellow;mso-highlight:yellow=
">Num
            timeouts (Tx): 2</span><span style=3D"color:#1F497D"><o:p></o=
:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num timouts
            (Rx): 0<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">I see the Nu=
m
            timeouts (Tx): 2, is that anything?</span></p>
      </div>
    </blockquote>
    Since you won't be transmitting, that's nothing.<br>
    <br>
    It <br>
    <blockquote cite=3D"mid:2399f9e83e2d4d559a4762bb4c6f4d9f@boeing.com"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b><span style=3D"color:windowtext">Fr=
om:</span></b><span
                style=3D"color:windowtext"> Marcus D. Leech
                [<a class=3D"moz-txt-link-freetext" href=3D"mailto:patchv=
onbraun@gmail.com">mailto:patchvonbraun@gmail.com</a>]
                <br>
                <b>Sent:</b> Tuesday, April 27, 2021 3:07 PM<br>
                <b>To:</b> Hirst (US), Stephen
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:stephen=
.hirst@boeing.com">&lt;stephen.hirst@boeing.com&gt;</a><br>
                <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [EXTERNAL] Re: [USRP-users]
                Underflows/Overflows, Filesize and a Complete N00B<o:p></=
o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0">
          <tbody>
            <tr>
              <td style=3D"background:white;padding:.75pt .75pt .75pt
                .75pt">
                <table class=3D"MsoNormalTable"
                  style=3D"width:100.0%;margin-left:.75pt;margin-right:.7=
5pt"
                  align=3D"left" border=3D"0" cellpadding=3D"0"
                  cellspacing=3D"0" width=3D"100%">
                  <tbody>
                    <tr>
                      <td style=3D"background:#910A19;padding:5.25pt 1.5p=
t
                        5.25pt 1.5pt"><br>
                      </td>
                      <td
                        style=3D"width:100.0%;background:#FDF2F4;padding:=
5.25pt
                        3.75pt 5.25pt 11.25pt;word-wrap:break-word"
                        width=3D"100%">
                        <div>
                          <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-element:f=
rame;mso-element-frame-hspace:2.25pt;mso-element-wrap:around;mso-element-=
anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:#212121">EXT
                              email: be mindful of links/attachments.</sp=
an><span
                              style=3D"font-size:12.0pt;font-family:&quot=
;Times
                              New Roman&quot;,serif"><o:p></o:p></span></=
p>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
                <pre>
=C2=A0<o:p></o:p></pre>
              </td>
            </tr>
          </tbody>
        </table>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">On
              04/27/2021 02:07 PM, Hirst (US), Stephen wrote:</span><span
              style=3D"font-size:10.0pt;font-family:&quot;Times New
              Roman&quot;,serif"><o:p></o:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks Mar=
cus
              for the quick reply!</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">I have a B=
210
              with a GPSDO (the TCXO one).
            </span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">And the
              system is =E2=80=9Coffline only=E2=80=9D now but I can manu=
ally type a
              response with something specific if you like.</span><o:p></=
o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">So I have =
a
              little checkbox that I click on my GRC GUI that starts the
              recording to a File Sink from a =E2=80=9CUHD: USRP Source=E2=
=80=9D. Here=E2=80=99s
              some details of what I have specified in the UHD: USRP
              Source - File Sink Box Pair.</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">UHD: USRP
              Source</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">GENERAL</s=
pan><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Output Typ=
e:
              Complex float32</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Wire Forma=
t:
              Complex int8</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Stream arg=
s:
              peak=3D0.003906</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Stream
              Channels: []</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Device
              Address:</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Device
              Arguments: =E2=80=9Csend_frame_size=3D8192=E2=80=9D</span><=
o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sync: Unkn=
own
              PPS</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Clock Rate
              (Hz): Default</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Mboard=
s:
              1</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Mb0 Clock
              Source: Default</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Mb0 Time
              Source: Default</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Mb0 Subdev
              Spec: A:A</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Channe=
ls:
              1</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Samp rate
              (Sps): 2000000</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">ADVANCED</=
span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Alias:</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Affinity:<=
/span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Minoutbuf:
              8192</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Maxoutbuf:
              8192</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Show LO
              Controls: OFF</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Comment:</=
span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">RF OPTIONS=
</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Center
              Freq: 2000000000</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 AGC:
              Default</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0: Gain
              Value: 30</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Antenn=
a:
              RX2</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0
              Bandwidth: 0.2MHz</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">FE
              CORRECTIONS</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Enable=
 DC
              Offset Correction: true</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Enable=
 IQ
              Imbalance Correction: true</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">[FILE SINK=
]</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">GENERAL</s=
pan><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">File: [You=
r
              favorite file name here]</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Input Type=
:
              complex</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Vec length=
: 1</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Unbuffered=
:
              OFF</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Append fil=
e:
              OFF</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Does this
              help at all?</span><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">I tried th=
e
              ./rx_samples_to_file from within =E2=80=9C/usr/lib/uhd/exam=
ples=E2=80=9D
              with similar options but I don=E2=80=99t see an O/U with th=
e
              selected options. Is this a GRC thing? I have no idea=E2=80=
=A6</span><o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal"><a moz-do-not-send=3D"true"
            href=3D"https://files.ettus.com/manual/page_general.html#gene=
ral_ounotes"><span
              style=3D"font-size:10.0pt;font-family:&quot;Times New
              Roman&quot;,serif">https://files.ettus.com/manual/page_gene=
ral.html#general_ounotes</span></a><span
            style=3D"font-size:10.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><br>
            <a class=3D"moz-txt-link-freetext" href=3D"https://m.facebook=
.com/">https://m.facebook.com/</a><br>
          </span><a moz-do-not-send=3D"true"
            href=3D"https://files.ettus.com/manual/page_transport.html#tr=
ansport_usb"><span
              style=3D"font-size:10.0pt;font-family:&quot;Times New
              Roman&quot;,serif">https://files.ettus.com/manual/page_tran=
sport.html#transport_usb</span></a><span
            style=3D"font-size:10.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><br>
            <br>
            The 'O' indication is coming from deep within the UHD
            drivers and has nothing to do with Gnu Radio, per se.<br>
            <br>
            If the bandwidth of your signal of interest really is only
            200kHz, then you don't need to record at 2Msps.=C2=A0 Indeed =
you
            could<br>
            =C2=A0 easily get away with sampling at a much much lower rat=
e.=C2=A0
            Like 500ksps.=C2=A0 This will save disk space while preservin=
g
            your<br>
            =C2=A0 data precision (complex floats).=C2=A0 You can also wr=
ite your
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
            to "performance" or "power-save"?=C2=A0=C2=A0 Are you running=
 inside<br>
            =C2=A0 a VM, or on the actual raw hardware?<br>
            <br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal"><span style=3D"color:#1F497D">=C2=A0</sp=
an><o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech [<a
                  moz-do-not-send=3D"true"
                  href=3D"mailto:patchvonbraun@gmail.com">mailto:patchvon=
braun@gmail.com</a>]
                <br>
                <b>Sent:</b> Tuesday, April 27, 2021 1:37 PM<br>
                <b>To:</b> Hirst (US), Stephen <a
                  moz-do-not-send=3D"true"
                  href=3D"mailto:stephen.hirst@boeing.com">&lt;stephen.hi=
rst@boeing.com&gt;</a><br>
                <b>Cc:</b> <a moz-do-not-send=3D"true"
                  href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@l=
ists.ettus.com</a><br>
                <b>Subject:</b> [EXTERNAL] Re: [USRP-users]
                Underflows/Overflows, Filesize and a Complete N00B<o:p></=
o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0">
            <tbody>
              <tr>
                <td style=3D"background:white;padding:.75pt .75pt .75pt
                  .75pt">
                  <table class=3D"MsoNormalTable"
                    style=3D"width:100.0%;margin-left:.75pt;margin-right:=
.75pt"
                    align=3D"left" border=3D"0" cellpadding=3D"0"
                    cellspacing=3D"0" width=3D"100%">
                    <tbody>
                      <tr>
                        <td style=3D"background:#910A19;padding:5.25pt
                          1.5pt 5.25pt 1.5pt"><br>
                        </td>
                        <td
                          style=3D"width:100.0%;background:#FDF2F4;paddin=
g:5.25pt
                          3.75pt 5.25pt 11.25pt;word-wrap:break-word"
                          width=3D"100%">
                          <div>
                            <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-element:f=
rame;mso-element-frame-hspace:2.25pt;mso-element-wrap:around;mso-element-=
anchor-vertical:paragraph;mso-element-anchor-horizontal:column;mso-height=
-rule:exactly"><span
style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;colo=
r:#212121">EXT
                                email: be mindful of links/attachments.</=
span><o:p></o:p></p>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <pre><o:p>=C2=A0</o:p></pre>
                  <pre>=C2=A0<o:p></o:p></pre>
                </td>
              </tr>
            </tbody>
          </table>
          <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">If you
              just use the rx_samples_to_file utility that comes with
              UHD what are your results</span><o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=C2=A0=
</span><o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Can y=
ou
                share your GNuRadio flow graph with us? What type of
                USRP do you have? There are about a dozen different
                models of USRP out there.=C2=A0</span><o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=C2=A0=
</span><o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=C2=A0=
</span><o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Sen=
t
                  from my iPhone</span><o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><br=
>
                  <br>
                  <br>
                </span><o:p></o:p></p>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><sp=
an
                    style=3D"font-size:10.0pt">On Apr 27, 2021, at 1:24
                    PM, Hirst (US), Stephen &lt;</span><a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:stephen.hirst@boeing.com"><span
                      style=3D"font-size:10.0pt">stephen.hirst@boeing.com=
</span></a><span
                    style=3D"font-size:10.0pt">&gt; wrote:</span><o:p></o=
:p></p>
              </blockquote>
            </div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <div>
                <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=EF=
=BB=BF </span><o:p></o:p></p>
                <p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">I appreciate you all and thank you
                  for the great community that is this mailing list!
                  Continue on!<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">I, however, am a complete N00B and
                  require assistance on some seemingly minor tasks that
                  I believe you could help me out on. :)<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">With that being said, I find mysel=
f
                  with the Ubuntu 20.04LTS install on a rather =E2=80=9Cf=
ast=E2=80=9D
                  Dell laptop (specs down below.)<o:p></o:p></p>
                <p class=3D"MsoListParagraph"
                  style=3D"text-indent:-.25in;mso-list:l0 level1 lfo2"><!=
--[if !supportLists]--><span
                    style=3D"font-family:Roboto-Regular"><span
                      style=3D"mso-list:Ignore">-<span style=3D"font:7.0p=
t
                        &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                      </span></span></span><!--[endif]--><span
                    style=3D"font-family:Roboto-Regular;color:#444444">8t=
h
                    Gen Intel Core i7-8650U Processor (Quad Core, 8M
                    Cache, 1.9GHz,15W, vPro)</span><o:p></o:p></p>
                <p class=3D"MsoListParagraph"
                  style=3D"text-indent:-.25in;mso-list:l0 level1 lfo2"><!=
--[if !supportLists]--><span
                    style=3D"font-family:Roboto-Regular"><span
                      style=3D"mso-list:Ignore">-<span style=3D"font:7.0p=
t
                        &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                      </span></span></span><!--[endif]--><span
                    style=3D"color:#444444">16GB, 2x8GB, 2666MHz DDR4
                    Non-ECC</span><o:p></o:p></p>
                <p class=3D"MsoListParagraph"
                  style=3D"text-indent:-.25in;mso-list:l0 level1 lfo2"><!=
--[if !supportLists]--><span
                    style=3D"font-family:Roboto-Regular"><span
                      style=3D"mso-list:Ignore">-<span style=3D"font:7.0p=
t
                        &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                      </span></span></span><!--[endif]--><span
                    style=3D"font-family:Roboto-Regular;color:#444444">M.=
2
                    1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting
                    Solid State Drive</span><o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-family:Roboto-Regular;color:#444444">=C2=
=A0</span><o:p></o:p></p>
                <p class=3D"MsoNormal">I have fiddled around with an
                  online install on the laptop but I haven=E2=80=99t gott=
en the
                  overflows and underflows to cooperate. And to be more
                  specific, I can record a sample rate of 2Mhz and
                  0.2Mhz bandwidth without issue, but I can=E2=80=99t get=
 a SR
                  or BW greater than those to work without
                  Under/Overflows developing. (I have been using UHD
                  3.15.0.02build5 with GNURadio 3.8.1.0 (Python 3.8.2)
                  (grc and grc-uhd) and installed everything with =E2=80=9C=
apt=E2=80=9D.
                  The first line in my grc python output labels =E2=80=9C=
Linux
                  GNU C++ version 9.2.1 20200304; Boost_107100;
                  UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any ideas? I tr=
ied
                  both the num_recv_frame size stuff and setting high
                  priority with no joy, but then again, I am a N00b, so
                  I may not have done that correctly as well=E2=80=A6<o:p=
></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">Also if anyone has experience with
                  GRC specifically, I have had success recording what I
                  wanted to with a file with the 2MHz Sample Rate with a
                  0.2 MHz BW, but the files are pretty huge. We=E2=80=99r=
e
                  talking 1GB/min=E2=80=A6 Any idea how to make the GRC r=
ecord
                  to a less-fine resolution so I can free up some HDD
                  space?<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal">Thanks guys!<o:p></o:p></p>
                <p class=3D"MsoNormal">Ya Boi Steve<o:p></o:p></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:10.0pt;font-family:&quot;Times New
                    Roman ,serif&quot;,serif">___________________________=
____________________<br>
                    USRP-users mailing list -- </span><a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users@lists.ettus.com"><span
                      style=3D"font-size:10.0pt;font-family:&quot;Times
                      New Roman ,serif&quot;,serif">usrp-users@lists.ettu=
s.com</span></a><span
                    style=3D"font-size:10.0pt;font-family:&quot;Times New
                    Roman ,serif&quot;,serif"><br>
                    To unsubscribe send an email to </span><a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"><spa=
n
                      style=3D"font-size:10.0pt;font-family:&quot;Times
                      New Roman ,serif&quot;,serif">usrp-users-leave@list=
s.ettus.com</span></a><o:p></o:p></p>
              </div>
            </blockquote>
          </div>
        </blockquote>
        <p class=3D"MsoNormal"><span
            style=3D"font-size:10.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070409030102040905050405--

--===============8823924138962317868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8823924138962317868==--
