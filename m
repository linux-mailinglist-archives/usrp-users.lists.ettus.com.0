Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B5736CB78
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 21:07:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2C0C383FCC
	for <lists+usrp-users@lfdr.de>; Tue, 27 Apr 2021 15:07:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Qi7HW+xE";
	dkim-atps=neutral
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 64053383F6A
	for <USRP-users@lists.ettus.com>; Tue, 27 Apr 2021 15:07:02 -0400 (EDT)
Received: by mail-qt1-f170.google.com with SMTP id g1so3278833qtq.6
        for <USRP-users@lists.ettus.com>; Tue, 27 Apr 2021 12:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=dX3laevOBNlv63uPUrdmcYR7iiMlUuzVb5q5bJtticg=;
        b=Qi7HW+xEzPggSS3bfChIra7GwPexJpUlaUaKrEDImws18rcGsquSmfVkAd8+QpyrX4
         8le40IdC9er5AR/riR1NvB+5hvD5F+ka7Zz36mR/aI/6hqv5OOAGUWS88s0o9YE5HkY+
         w/w2A5kxUYxy66XhIYYOQsLR1FrOoCdiHOCGwyL8HoeOdUJENmgECZzoYN1ccrtK8Ulb
         iiBea08tBxZD1XIWDbUfFawHZlV7S9XNkLLYJb8WM5VuFDi13IEwxn6WlhU2C12sHUta
         2DRBYE6cXVzh+CvvHYdjRaqpXWvCrKPk31TUfnflHYHnIB+EOjqKP0MJo0Ma4UOXti1h
         1GEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=dX3laevOBNlv63uPUrdmcYR7iiMlUuzVb5q5bJtticg=;
        b=G6cR13U8+0Sj0fkuXpqHrjyG0ffihrmb1HAoVCV16f8UtxrgedlD5rg2D2R1hBhUjv
         D3OsskEmLBK1jUj8F5A3GAdSriTc9h4hMXB5uhPzXb3iy19VCPVjVKkqLU3Ds6x2iHq+
         BlBjvqE8pmugLyuoX0HpudfScI6Ejkdpikm6MCwJssj8bN73m3TiWSbsuFO9llmMogZs
         WMtfI2Qd70pozUOiBN0NXd+WfFuvwf2GoUlJWTs3yEgt/nq9czSCq89VmElR7J3Ll4gQ
         eTPHFqYvUBdAo5I7tkwiD4eCxolisATiXlp1Fsu071YYWhlcYAuj2C17HMqosNpUflY9
         AK3Q==
X-Gm-Message-State: AOAM530RU0y9FIY52sWAjKT8MS9BMyJNjo/WRT7ilIf4SOaeQel2uKNT
	t374lEBO2MFiA/uNH2YDeTOk/ib1cTwOcA==
X-Google-Smtp-Source: ABdhPJwgCTmo5deDSXLeYCL39Dv/rEYSymlRUUH0x0muGg6yihc5AkHW1MpIWSJWvw+ffTLWvn/5Ig==
X-Received: by 2002:ac8:646:: with SMTP id e6mr2356295qth.285.1619550421455;
        Tue, 27 Apr 2021 12:07:01 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id u64sm3559552qkc.127.2021.04.27.12.07.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 12:07:01 -0700 (PDT)
Message-ID: <608860D4.6040808@gmail.com>
Date: Tue, 27 Apr 2021 15:07:00 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Hirst (US), Stephen" <stephen.hirst@boeing.com>
References: <cc4faee36fb84e0d83669253db7e636f@boeing.com> <276627C4-F722-4F13-9DB2-AAA4059421BE@gmail.com> <c3e16fa1723f4e418e0e9560c0af90b4@boeing.com>
In-Reply-To: <c3e16fa1723f4e418e0e9560c0af90b4@boeing.com>
Message-ID-Hash: ALZNG323LU2P63KTRVSTLRMISAIJXUJB
X-Message-ID-Hash: ALZNG323LU2P63KTRVSTLRMISAIJXUJB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]  Re: Underflows/Overflows, Filesize and a Complete N00B
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALZNG323LU2P63KTRVSTLRMISAIJXUJB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1108496030416169498=="

This is a multi-part message in MIME format.
--===============1108496030416169498==
Content-Type: multipart/alternative;
 boundary="------------040706000405030302000603"

This is a multi-part message in MIME format.
--------------040706000405030302000603
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/27/2021 02:07 PM, Hirst (US), Stephen wrote:
>
> Thanks Marcus for the quick reply!
>
> I have a B210 with a GPSDO (the TCXO one).
>
> And the system is =E2=80=9Coffline only=E2=80=9D now but I can manually=
 type a=20
> response with something specific if you like.
>
> So I have a little checkbox that I click on my GRC GUI that starts the=20
> recording to a File Sink from a =E2=80=9CUHD: USRP Source=E2=80=9D. Her=
e=E2=80=99s some=20
> details of what I have specified in the UHD: USRP Source - File Sink=20
> Box Pair.
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
> Does this help at all?
>
> I tried the ./rx_samples_to_file from within =E2=80=9C/usr/lib/uhd/exam=
ples=E2=80=9D=20
> with similar options but I don=E2=80=99t see an O/U with the selected o=
ptions.=20
> Is this a GRC thing? I have no idea=E2=80=A6
>
https://files.ettus.com/manual/page_general.html#general_ounotes

https://files.ettus.com/manual/page_transport.html#transport_usb

The 'O' indication is coming from deep within the UHD drivers and has=20
nothing to do with Gnu Radio, per se.

If the bandwidth of your signal of interest really is only 200kHz, then=20
you don't need to record at 2Msps.  Indeed you could
   easily get away with sampling at a much much lower rate.  Like=20
500ksps.  This will save disk space while preserving your
   data precision (complex floats).  You can also write your samples in=20
a different format, like complex-shorts, halving the
   amount of disk space used.

But given that you can use rx_samples_to_file apparently successfully,=20
and cannot use Gnu Radio successfully to accomplish
   more-or-less the same task, then Robs suggestion to initially=20
eliminate Gnu Radio from the equation is probably a good one.

Also, are you running your machine with the CPU governor set to=20
"performance" or "power-save"?   Are you running inside
   a VM, or on the actual raw hardware?


> *From:* Marcus D Leech [mailto:patchvonbraun@gmail.com]
> *Sent:* Tuesday, April 27, 2021 1:37 PM
> *To:* Hirst (US), Stephen <stephen.hirst@boeing.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] Underflows/Overflows, Filesize=20
> and a Complete N00B
>
>
> =09
>
> EXT email: be mindful of links/attachments.
>
>
>  =20
>
> If you just use the rx_samples_to_file utility that comes with UHD=20
> what are your results
>
> Can you share your GNuRadio flow graph with us? What type of USRP do=20
> you have? There are about a dozen different models of USRP out there.
>
> Sent from my iPhone
>
>
>
>     On Apr 27, 2021, at 1:24 PM, Hirst (US), Stephen
>     <stephen.hirst@boeing.com <mailto:stephen.hirst@boeing.com>> wrote:
>
>     =EF=BB=BF
>
>     Hi Guys,
>
>     I appreciate you all and thank you for the great community that is
>     this mailing list! Continue on!
>
>     I, however, am a complete N00B and require assistance on some
>     seemingly minor tasks that I believe you could help me out on. :)
>
>     With that being said, I find myself with the Ubuntu 20.04LTS
>     install on a rather =E2=80=9Cfast=E2=80=9D Dell laptop (specs down =
below.)
>
>     -8th Gen Intel Core i7-8650U Processor (Quad Core, 8M Cache,
>     1.9GHz,15W, vPro)
>
>     -16GB, 2x8GB, 2666MHz DDR4 Non-ECC
>
>     -M.2 1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid State Dr=
ive
>
>     I have fiddled around with an online install on the laptop but I
>     haven=E2=80=99t gotten the overflows and underflows to cooperate. A=
nd to
>     be more specific, I can record a sample rate of 2Mhz and 0.2Mhz
>     bandwidth without issue, but I can=E2=80=99t get a SR or BW greater=
 than
>     those to work without Under/Overflows developing. (I have been
>     using UHD 3.15.0.02build5 with GNURadio 3.8.1.0 (Python 3.8.2)
>     (grc and grc-uhd) and installed everything with =E2=80=9Capt=E2=80=9D=
. The first
>     line in my grc python output labels =E2=80=9CLinux GNU C++ version =
9.2.1
>     20200304; Boost_107100; UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any=
 ideas?
>     I tried both the num_recv_frame size stuff and setting high
>     priority with no joy, but then again, I am a N00b, so I may not
>     have done that correctly as well=E2=80=A6
>
>     Also if anyone has experience with GRC specifically, I have had
>     success recording what I wanted to with a file with the 2MHz
>     Sample Rate with a 0.2 MHz BW, but the files are pretty huge.
>     We=E2=80=99re talking 1GB/min=E2=80=A6 Any idea how to make the GRC=
 record to a
>     less-fine resolution so I can free up some HDD space?
>
>     Thanks guys!
>
>     Ya Boi Steve
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------040706000405030302000603
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/27/2021 02:07 PM, Hirst (US),
      Stephen wrote:<br>
    </div>
    <blockquote cite=3D"mid:c3e16fa1723f4e418e0e9560c0af90b4@boeing.com"
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks Marcu=
s
            for the quick reply!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">I have a B21=
0
            with a GPSDO (the TCXO one).
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">And the syst=
em
            is =E2=80=9Coffline only=E2=80=9D now but I can manually type=
 a response
            with something specific if you like.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">So I have a
            little checkbox that I click on my GRC GUI that starts the
            recording to a File Sink from a =E2=80=9CUHD: USRP Source=E2=80=
=9D. Here=E2=80=99s
            some details of what I have specified in the UHD: USRP
            Source - File Sink Box Pair.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">UHD: USRP
            Source<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">GENERAL<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Output Type:
            Complex float32<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Wire Format:
            Complex int8<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Stream args:
            peak=3D0.003906<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Stream
            Channels: []<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Device Addre=
ss:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Device
            Arguments: =E2=80=9Csend_frame_size=3D8192=E2=80=9D<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Sync: Unknow=
n
            PPS<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Clock Rate
            (Hz): Default<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Mboards:=
 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Mb0 Clock
            Source: Default<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Mb0 Time
            Source: Default<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Mb0 Subdev
            Spec: A:A<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Num Channels=
: 1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Samp rate
            (Sps): 2000000<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">ADVANCED<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Alias:<o:p><=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Affinity:<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Minoutbuf: 8=
192<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Maxoutbuf: 8=
192<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Show LO
            Controls: OFF<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Comment:<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">RF OPTIONS<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Center
            Freq: 2000000000<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 AGC:
            Default<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0: Gain
            Value: 30<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Antenna:
            RX2<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Bandwidt=
h:
            0.2MHz<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">FE CORRECTIO=
NS<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Enable D=
C
            Offset Correction: true<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Ch0 Enable I=
Q
            Imbalance Correction: true<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">[FILE SINK]<=
o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">GENERAL<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">File: [Your
            favorite file name here]<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Input Type:
            complex<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Vec length: =
1<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Unbuffered: =
OFF<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Append file:
            OFF<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">Does this he=
lp
            at all?<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D">I tried the
            ./rx_samples_to_file from within =E2=80=9C/usr/lib/uhd/exampl=
es=E2=80=9D
            with similar options but I don=E2=80=99t see an O/U with the
            selected options. Is this a GRC thing? I have no idea=E2=80=A6=
</span></p>
      </div>
    </blockquote>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_general.html#general_ounotes">https://files.ettus.com/manual/pa=
ge_general.html#general_ounotes</a><br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_transport.html#transport_usb">https://files.ettus.com/manual/pa=
ge_transport.html#transport_usb</a><br>
    <br>
    The 'O' indication is coming from deep within the UHD drivers and
    has nothing to do with Gnu Radio, per se.<br>
    <br>
    If the bandwidth of your signal of interest really is only 200kHz,
    then you don't need to record at 2Msps.=C2=A0 Indeed you could<br>
    =C2=A0 easily get away with sampling at a much much lower rate.=C2=A0=
 Like
    500ksps.=C2=A0 This will save disk space while preserving your<br>
    =C2=A0 data precision (complex floats).=C2=A0 You can also write your=
 samples
    in a different format, like complex-shorts, halving the<br>
    =C2=A0 amount of disk space used.<br>
    <br>
    But given that you can use rx_samples_to_file apparently
    successfully, and cannot use Gnu Radio successfully to accomplish<br>
    =C2=A0 more-or-less the same task, then Robs suggestion to initially
    eliminate Gnu Radio from the equation is probably a good one.<br>
    <br>
    Also, are you running your machine with the CPU governor set to
    "performance" or "power-save"?=C2=A0=C2=A0 Are you running inside<br>
    =C2=A0 a VM, or on the actual raw hardware?<br>
    <br>
    <br>
    <blockquote cite=3D"mid:c3e16fa1723f4e418e0e9560c0af90b4@boeing.com"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>=C2=A0<=
/o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech
              [<a class=3D"moz-txt-link-freetext" href=3D"mailto:patchvon=
braun@gmail.com">mailto:patchvonbraun@gmail.com</a>]
              <br>
              <b>Sent:</b> Tuesday, April 27, 2021 1:37 PM<br>
              <b>To:</b> Hirst (US), Stephen
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:stephen.h=
irst@boeing.com">&lt;stephen.hirst@boeing.com&gt;</a><br>
              <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
              <b>Subject:</b> [EXTERNAL] Re: [USRP-users]
              Underflows/Overflows, Filesize and a Complete N00B<o:p></o:=
p></p>
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
                <pre><span style=3D"color:black">
=C2=A0<o:p></o:p></span></pre>
              </td>
            </tr>
          </tbody>
        </table>
        <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">If you ju=
st
            use the rx_samples_to_file utility that comes with UHD what
            are your results</span><span
            style=3D"font-size:10.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><o:p></o:p></span></p>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><o:p>=C2=
=A0</o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Can you
              share your GNuRadio flow graph with us? What type of USRP
              do you have? There are about a dozen different models of
              USRP out there.=C2=A0<o:p></o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><o:p>=C2=
=A0</o:p></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><o:p>=C2=
=A0</o:p></span></p>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">Sent
                from my iPhone<o:p></o:p></span></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><br>
                <br>
                <o:p></o:p></span></p>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
                  style=3D"font-size:10.0pt">On Apr 27, 2021, at 1:24 PM,
                  Hirst (US), Stephen &lt;<a moz-do-not-send=3D"true"
                    href=3D"mailto:stephen.hirst@boeing.com">stephen.hirs=
t@boeing.com</a>&gt;
                  wrote:<o:p></o:p></span></p>
            </blockquote>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">=EF=
=BB=BF </span><span
                  style=3D"font-size:10.0pt;font-family:&quot;Times New
                  Roman&quot;,serif"><o:p></o:p></span></p>
              <p class=3D"MsoNormal">Hi Guys,<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">I appreciate you all and thank you
                for the great community that is this mailing list!
                Continue on!<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">I, however, am a complete N00B and
                require assistance on some seemingly minor tasks that I
                believe you could help me out on. :)<o:p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">With that being said, I find myself
                with the Ubuntu 20.04LTS install on a rather =E2=80=9Cfas=
t=E2=80=9D Dell
                laptop (specs down below.)<o:p></o:p></p>
              <p class=3D"MsoListParagraph"
                style=3D"text-indent:-.25in;mso-list:l0 level1 lfo2"><!--=
[if !supportLists]--><span
                  style=3D"font-family:Roboto-Regular"><span
                    style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt
                      &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                    </span></span></span><!--[endif]--><span
                  style=3D"font-family:Roboto-Regular;color:#444444">8th
                  Gen Intel Core i7-8650U Processor (Quad Core, 8M
                  Cache, 1.9GHz,15W, vPro)</span><o:p></o:p></p>
              <p class=3D"MsoListParagraph"
                style=3D"text-indent:-.25in;mso-list:l0 level1 lfo2"><!--=
[if !supportLists]--><span
                  style=3D"font-family:Roboto-Regular"><span
                    style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt
                      &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                    </span></span></span><!--[endif]--><span
                  style=3D"color:#444444">16GB, 2x8GB, 2666MHz DDR4
                  Non-ECC</span><o:p></o:p></p>
              <p class=3D"MsoListParagraph"
                style=3D"text-indent:-.25in;mso-list:l0 level1 lfo2"><!--=
[if !supportLists]--><span
                  style=3D"font-family:Roboto-Regular"><span
                    style=3D"mso-list:Ignore">-<span style=3D"font:7.0pt
                      &quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                    </span></span></span><!--[endif]--><span
                  style=3D"font-family:Roboto-Regular;color:#444444">M.2
                  1TB PCIe NVMe Class 40 Opal 2.0 Self Encrypting Solid
                  State Drive</span><o:p></o:p></p>
              <p class=3D"MsoNormal"><span
                  style=3D"font-family:Roboto-Regular;color:#444444">=C2=A0=
</span><o:p></o:p></p>
              <p class=3D"MsoNormal">I have fiddled around with an online
                install on the laptop but I haven=E2=80=99t gotten the ov=
erflows
                and underflows to cooperate. And to be more specific, I
                can record a sample rate of 2Mhz and 0.2Mhz bandwidth
                without issue, but I can=E2=80=99t get a SR or BW greater=
 than
                those to work without Under/Overflows developing. (I
                have been using UHD 3.15.0.02build5 with GNURadio
                3.8.1.0 (Python 3.8.2) (grc and grc-uhd) and installed
                everything with =E2=80=9Capt=E2=80=9D. The first line in =
my grc python
                output labels =E2=80=9CLinux GNU C++ version 9.2.1 202003=
04;
                Boost_107100; UHD_3.15.0.0-2build5=E2=80=9D, USB3.0). Any=
 ideas?
                I tried both the num_recv_frame size stuff and setting
                high priority with no joy, but then again, I am a N00b,
                so I may not have done that correctly as well=E2=80=A6<o:=
p></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">Also if anyone has experience with
                GRC specifically, I have had success recording what I
                wanted to with a file with the 2MHz Sample Rate with a
                0.2 MHz BW, but the files are pretty huge. We=E2=80=99re =
talking
                1GB/min=E2=80=A6 Any idea how to make the GRC record to a
                less-fine resolution so I can free up some HDD space?<o:p=
></o:p></p>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">Thanks guys!<o:p></o:p></p>
              <p class=3D"MsoNormal">Ya Boi Steve<o:p></o:p></p>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:10.0pt;font-family:&quot;Times New
                  Roman&quot;,serif">____________________________________=
___________<br>
                  USRP-users mailing list -- <a moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    moz-do-not-send=3D"true"
                    href=3D"mailto:usrp-users-leave@lists.ettus.com">
                    usrp-users-leave@lists.ettus.com</a><o:p></o:p></span=
></p>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040706000405030302000603--

--===============1108496030416169498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1108496030416169498==--
