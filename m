Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B399D349C8C
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 23:53:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C475D384344
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 18:53:02 -0400 (EDT)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 88717383B6A
	for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 18:52:08 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id g15so3531252qkl.4
        for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 15:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=wdLaTvMWtFlOPYk2WzOSBBVmW4EtL7PJQxes7FM+cRY=;
        b=cdSMChtKtn0nwfakOch3Ljj12M5pr/W0qnyFATNd2TTMeTBQdJjJGQUbGs+xiStlAH
         GSrECvCSQJ3mzNwC6HZnqN3TZnytt1RjB8A6Cb5OnGFFmPWW9CmE2P6rLi/Y/lNhR8vU
         oyCKiSb8AEFfRZOaEvdOSB5xeOBSpVFigaAU9YTZWpJ3aj0J+zPE6HUYSIB1eyNqx7b9
         3Cbu87yvVuemAQ46LFsVg/SSbymWSDqVk/0B/uMfPefgq7xaw5MujDpudCG0+27k7Roi
         QANc84INbE3v2LyXl4TN67yCenI0Nsos91SEIjeorn60oDciYqL3ck99tnVKeiDl8lFN
         HXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=wdLaTvMWtFlOPYk2WzOSBBVmW4EtL7PJQxes7FM+cRY=;
        b=IqckZRPFMqlffNCs07Z4axUF5rM20YtwkY9u1yU1DWvYWgpwnXY/uoseuVOSE1hKE3
         24xHTiwFsEtpWtjVc9hnbfMDQ2AzCQA9w3eibZcg09geBn6CsO4UiWZ3DIANHAGRO4F1
         Dy3/AP0vzglV7zh1s25eWLP4DkPes6LYDAxTwz7pN3Uq/QQrIqDZrlbnfmWh3sDCIfJn
         dKvVy6Z7XnUEg7C8BwtXAhlGit+ybtDmZlWUFb7aKo2JG2EchrbMC90n9c9bxHEG8GTV
         EfyyFuNVDEl0VzUxc3kmHdAx+cPgR/3fZRNLUZa1de6iU/ldQeuBj4bBJUvzXUJ+F+Ri
         ++Ew==
X-Gm-Message-State: AOAM533b9aqH9V9VDZ87E6UO4JDK7mU3Rur1j/xLzW5h87gnh2h5jL4b
	gYEPDt09rjucxpKuYY4dAk+WAfSdLhA=
X-Google-Smtp-Source: ABdhPJzv00GxAExMZoQjwb/gbKNMHpVfCQh/gLlzCS9abN+tom/pb58jUZ/gQ/bgZls+ZErKxM8HUw==
X-Received: by 2002:a37:2795:: with SMTP id n143mr10232707qkn.292.1616712727761;
        Thu, 25 Mar 2021 15:52:07 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g14sm5101185qkm.98.2021.03.25.15.52.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 15:52:07 -0700 (PDT)
Message-ID: <605D140F.6070001@gmail.com>
Date: Thu, 25 Mar 2021 18:51:59 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
References: <CO6PR19MB48017AA0B3E1F4B0414D5966C6629@CO6PR19MB4801.namprd19.prod.outlook.com> <9EB55D3B-393F-4114-B4B9-BDAACC7CFCB0@gmail.com> <CO6PR19MB4801B529457BF78A00D8B586C6629@CO6PR19MB4801.namprd19.prod.outlook.com>
In-Reply-To: <CO6PR19MB4801B529457BF78A00D8B586C6629@CO6PR19MB4801.namprd19.prod.outlook.com>
Message-ID-Hash: PDS3FYMFEWEPSK4M3B4C5W5GGCYWYWGX
X-Message-ID-Hash: PDS3FYMFEWEPSK4M3B4C5W5GGCYWYWGX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Strong noise added to signal transmitted by X310 with a UBX 40 daughterboard
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PDS3FYMFEWEPSK4M3B4C5W5GGCYWYWGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4472447477571260654=="

This is a multi-part message in MIME format.
--===============4472447477571260654==
Content-Type: multipart/alternative;
 boundary="------------040805000204090100000101"

This is a multi-part message in MIME format.
--------------040805000204090100000101
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/25/2021 06:27 PM, Jerrid Plymale wrote:
>
> Yes, moving TX out of the RX band has no affect on the noise level=20
> increase.
>
> Best Regards,
>
> Jerrid
>
OK, so, let's get Gnu Radio out of the way.

Using the tx_waveforms UHD example (usually in=20
<prefix>/lib/uhd/examples) try sending a CW tone with a --ampl 1.0e-7,=20
and see what
   happens.

Here's the --help output for tx_waveforms:

UHD TX Waveforms Allowed options:
   --help                    help message
   --args arg                single uhd device address args
   --spb arg (=3D0)            samples per buffer, 0 for default
   --nsamps arg (=3D0)         total number of samples to transmit
   --rate arg                rate of outgoing samples
   --freq arg                RF center frequency in Hz
   --ampl arg (=3D0.300000012) amplitude of the waveform [0 to 0.7]
   --gain arg                gain for the RF chain
   --ant arg                 antenna selection
   --subdev arg              subdevice specification
   --bw arg                  analog frontend filter bandwidth in Hz
   --wave-type arg (=3DCONST)  waveform type (CONST, SQUARE, RAMP, SINE)
   --wave-freq arg (=3D0)      waveform frequency in Hz
   --ref arg (=3Dinternal)     clock reference (internal, external, mimo,=
=20
gpsdo)
   --pps arg                 PPS source (internal, external, mimo, gpsdo)
   --otw arg (=3Dsc16)         specify the over-the-wire sample mode
   --channels arg (=3D0)       which channels to use (specify "0", "1",=20
"0,1",
                             etc)
   --int-n                   tune USRP with integer-N tuning




> *From:*Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Thursday, March 25, 2021 2:29 PM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Strong noise added to signal transmitted=20
> by X310 with a UBX 40 daughterboard
>
> If you move the TX out of band with respect to the RX do you still see=20
> the noise when the TX graph starts?
>
> Sent from my iPhone
>
>
>
>     On Mar 25, 2021, at 3:57 PM, Jerrid Plymale
>     <jerrid.plymale@canyon-us.com
>     <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>     =EF=BB=BF
>
>     So I was able to test setting up both USRPs with the same 10 MHz
>     reference signal, and there was no improvement to the noise being
>     added.
>
>     If the flowgraph just emits a CW tone, we see a similar response,
>     the added noise is still there and at the same level, we just have
>     the added spike of the CW tone at the frequency we set it to.
>
>     Best Regards,
>
>     Jerrid
>
>     *From:*Marcus D Leech <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>>
>     *Sent:* Wednesday, March 24, 2021 5:01 PM
>     *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com
>     <mailto:jerrid.plymale@canyon-us.com>>
>     *Cc:* USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com=
>
>     *Subject:* Re: [USRP-users] Strong noise added to signal
>     transmitted by X310 with a UBX 40 daughterboard
>
>     You don=E2=80=99t need 1PPS for this. Having an external high quali=
ty
>     reference may help, assuming my guess about your issue is correct.
>
>     What happens if your flow graph just simply emits a Cw tone, using
>     the mute function perhaps tied to a GUI control or some such.
>
>     Sent from my iPhone
>
>
>
>
>         On Mar 24, 2021, at 7:13 PM, Jerrid Plymale
>         <jerrid.plymale@canyon-us.com
>         <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>         =EF=BB=BF
>
>         Ok, if that=E2=80=99s the case, would it help to have both USRP=
s
>         connected to the same 10 MHz reference signal and PPS? In this
>         situation, would I need to provide a secondary source for the
>         PPS, or can that use the 10 Mhz reference as well?
>
>         Best Regards,
>
>         Jerrid
>
>         *From:*Marcus D. Leech <patchvonbraun@gmail.com
>         <mailto:patchvonbraun@gmail.com>>
>         *Sent:* Wednesday, March 24, 2021 2:23 PM
>         *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com
>         <mailto:jerrid.plymale@canyon-us.com>>
>         *Cc:* USRP-users@lists.ettus.com
>         <mailto:USRP-users@lists.ettus.com>
>         *Subject:* Re: [USRP-users] Strong noise added to signal
>         transmitted by X310 with a UBX 40 daughterboard
>
>         On 03/24/2021 05:10 PM, Jerrid Plymale wrote:
>
>             The devices are operating using direct connection via coax
>             cables.
>
>         You absolutely need to put a 30dB attenuator in-line to
>         prevent RX destruction in the case of "ooops" moments from
>         setting the TX
>           power output too high.
>
>
>
>
>             The target frequency is 1.57542 GHz, and our current
>             bandwidth is 4 MHz. We will need to increase the bandwidth
>             to 20 MHz soon for further system development.
>
>             The TX and RX gain are maxed on the receiving hardware.
>             The TX gain of the transmitting hardware is set to 0, as
>             at max the noise strength increases to ~ 20 dB.
>
>             Attached are images of the FFT provided by the Frequency
>             Sink in Gnuradio. Hopefully these give a visual aid for
>             the problem at hand. When I have the transmitter USRP
>             turned off (image 1), it would seem like the noise floor
>             coming into the USRP is around -94 dB. When the
>             transmitter is turned on and the flowgraph is started with
>             the transmitted signal muted (I am using a python block
>             with code to create custom signals that is then connected
>             to a mute block that then connects to the UHD USRP sink
>             block to be able to mute the signal during runtime), the
>             noise floor increases to around -78 dB.
>
>             Best Regards,
>
>             Jerrid
>
>         You are likely just seeing the LO leakage, along with the
>         inevitable phase-noise curve of the LO.
>
>
>
>
>
>             *From:* Marcus D Leech <patchvonbraun@gmail.com>
>             <mailto:patchvonbraun@gmail.com>
>             *Sent:* Wednesday, March 24, 2021 11:58 AM
>             *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
>             <mailto:jerrid.plymale@canyon-us.com>
>             *Cc:* USRP-users@lists.ettus.com
>             <mailto:USRP-users@lists.ettus.com>
>             *Subject:* Re: [USRP-users] Strong noise added to signal
>             transmitted by X310 with a UBX 40 daughterboard
>
>             Is the j B is over-the-air or direct connection?
>
>             What frequency? Bandwidth?
>
>             Do you have TX and RX gain turned all the way up?
>
>             Can you share your flow-graphs, or minimum
>
>             Graphs that show the problem?
>
>             Sent from my iPhone
>
>
>
>
>
>
>                 On Mar 24, 2021, at 12:20 PM, Jerrid Plymale
>                 <jerrid.plymale@canyon-us.com
>                 <mailto:jerrid.plymale@canyon-us.com>> wrote:
>
>                 =EF=BB=BF
>
>                 Hello All,
>
>                 I have been running tests in which I am transmitting a
>                 signal from one USRP X310 that=E2=80=99s using a UBX 40
>                 daughterboard, and that signal is being received by
>                 another USRP X310 using a UBX 40 daughterboard. I have
>                 noticed that when I have the receiving USRP running
>                 with the Gnuradio flowgraph active, as soon as I start
>                 the transmitting USRP=E2=80=99s Gnuradio flowgraph, the=
re is a
>                 jump in the noise floor as it is seen by the receiving
>                 USRP, and its roughly a 14 dB increase. This occurs
>                 even if I have the signal being transmitted muted.
>                 Does anyone have any idea what the source of this
>                 added noise could be? It is something that I need to
>                 mitigate as much as possible for the tests I am
>                 running using these USRPs. Any feedback will be
>                 greatly appreciated, thanks!
>
>                 Best Regards,
>
>                 Jerrid
>
>                 _______________________________________________
>                 USRP-users mailing list -- usrp-users@lists.ettus.com
>                 <mailto:usrp-users@lists.ettus.com>
>                 To unsubscribe send an email to
>                 usrp-users-leave@lists.ettus.com
>                 <mailto:usrp-users-leave@lists.ettus.com>
>


--------------040805000204090100000101
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/25/2021 06:27 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CO6PR19MB4801B529457BF78A00D8B586C6629@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">Yes, movi=
ng
            TX out of the RX band has no affect on the noise level
            increase.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">Best
            Regards,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>=C2=A0=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">Jerrid</s=
pan></p>
      </div>
    </blockquote>
    OK, so, let's get Gnu Radio out of the way.<br>
    <br>
    Using the tx_waveforms UHD example (usually in
    &lt;prefix&gt;/lib/uhd/examples) try sending a CW tone with a --ampl
    1.0e-7, and see what<br>
    =C2=A0 happens.<br>
    <br>
    Here's the --help output for tx_waveforms:<br>
    <br>
    UHD TX Waveforms Allowed options:<br>
    =C2=A0 --help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 help message<br=
>
    =C2=A0 --args arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 single uhd device address args<br>
    =C2=A0 --spb arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 samples per buffer, 0 for default<br>
    =C2=A0 --nsamps arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 total number of samples to transmit<br>
    =C2=A0 --rate arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rate of outgoing samples<br>
    =C2=A0 --freq arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RF center frequency in Hz<br>
    =C2=A0 --ampl arg (=3D0.300000012) amplitude of the waveform [0 to 0.=
7]<br>
    =C2=A0 --gain arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gain for the RF chain<br>
    =C2=A0 --ant arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 antenna selection<br>
    =C2=A0 --subdev arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 subdevice specification<br>
    =C2=A0 --bw arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 analog frontend filter b=
andwidth in Hz<br>
    =C2=A0 --wave-type arg (=3DCONST)=C2=A0 waveform type (CONST, SQUARE,=
 RAMP,
    SINE)<br>
    =C2=A0 --wave-freq arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 waveform =
frequency in Hz<br>
    =C2=A0 --ref arg (=3Dinternal)=C2=A0=C2=A0=C2=A0=C2=A0 clock referenc=
e (internal, external,
    mimo, gpsdo)<br>
    =C2=A0 --pps arg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PPS source (internal, external=
, mimo,
    gpsdo)<br>
    =C2=A0 --otw arg (=3Dsc16)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 specify the over-the-wire sample mode<br>
    =C2=A0 --channels arg (=3D0)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 whic=
h channels to use (specify "0", "1",
    "0,1", <br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 etc)<br>
    =C2=A0 --int-n=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tune USRP with intege=
r-N tuning<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CO6PR19MB4801B529457BF78A00D8B586C6629@CO6PR19MB4801.namprd19=
.prod.outlook.com"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>=C2=A0=
</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b><span style=3D"color:windowtext">Fr=
om:</span></b><span
                style=3D"color:windowtext"> Marcus D Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Thursday, March 25, 2021 2:29 PM<br>
                <b>To:</b> Jerrid Plymale
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jerrid.=
plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
                <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Strong noise added to
                signal transmitted by X310 with a UBX 40 daughterboard<o:=
p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">If you move the TX out of band with respec=
t
          to the RX do you still see the noise when the TX graph starts?<=
o:p></o:p></p>
        <div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>=C2=A0=
</o:p></p>
          <div>
            <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
          </div>
          <div>
            <p class=3D"MsoNormal"><br>
              <br>
              <o:p></o:p></p>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On Ma=
r
                25, 2021, at 3:57 PM, Jerrid Plymale &lt;<a
                  moz-do-not-send=3D"true"
                  href=3D"mailto:jerrid.plymale@canyon-us.com">jerrid.ply=
male@canyon-us.com</a>&gt;
                wrote:<o:p></o:p></p>
            </blockquote>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <div>
              <p class=3D"MsoNormal">=EF=BB=BF <span style=3D"color:windo=
wtext"><o:p></o:p></span></p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">So =
I
                  was able to test setting up both USRPs with the same
                  10 MHz reference signal, and there was no improvement
                  to the noise being added.
                </span><o:p></o:p></p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=
=A0</span><o:p></o:p></p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">If =
the
                  flowgraph just emits a CW tone, we see a similar
                  response, the added noise is still there and at the
                  same level, we just have the added spike of the CW
                  tone at the frequency we set it to.</span><o:p></o:p></=
p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=
=A0</span><o:p></o:p></p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">Bes=
t
                  Regards,</span><o:p></o:p></p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=
=A0</span><o:p></o:p></p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">Jer=
rid
                </span><o:p></o:p></p>
              <p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=
=A0</span><o:p></o:p></p>
              <div>
                <div style=3D"border:none;border-top:solid #E1E1E1
                  1.0pt;padding:3.0pt 0in 0in 0in">
                  <p class=3D"MsoNormal"><b><span style=3D"color:windowte=
xt">From:</span></b><span
                      style=3D"color:windowtext"> Marcus D Leech &lt;<a
                        moz-do-not-send=3D"true"
                        href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt;
                      <br>
                      <b>Sent:</b> Wednesday, March 24, 2021 5:01 PM<br>
                      <b>To:</b> Jerrid Plymale &lt;<a
                        moz-do-not-send=3D"true"
                        href=3D"mailto:jerrid.plymale@canyon-us.com">jerr=
id.plymale@canyon-us.com</a>&gt;<br>
                      <b>Cc:</b> <a moz-do-not-send=3D"true"
                        href=3D"mailto:USRP-users@lists.ettus.com">USRP-u=
sers@lists.ettus.com</a><br>
                      <b>Subject:</b> Re: [USRP-users] Strong noise
                      added to signal transmitted by X310 with a UBX 40
                      daughterboard</span><o:p></o:p></p>
                </div>
              </div>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              <p class=3D"MsoNormal">You don=E2=80=99t need 1PPS for this=
. Having
                an external high quality reference may help, assuming my
                guess about your issue is correct. =C2=A0<o:p></o:p></p>
              <div>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Wha=
t
                  happens if your flow graph just simply emits a Cw
                  tone, using the mute function perhaps tied to a GUI
                  control or some such.=C2=A0<o:p></o:p></p>
                <div>
                  <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></=
p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><br>
                    <br>
                    <br>
                    <o:p></o:p></p>
                  <blockquote
                    style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"=
>On
                      Mar 24, 2021, at 7:13 PM, Jerrid Plymale &lt;<a
                        moz-do-not-send=3D"true"
                        href=3D"mailto:jerrid.plymale@canyon-us.com">jerr=
id.plymale@canyon-us.com</a>&gt;
                      wrote:<o:p></o:p></p>
                  </blockquote>
                </div>
                <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt=
">
                  <div>
                    <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
                    <p class=3D"MsoNormal"><span style=3D"color:windowtex=
t">Ok,
                        if that=E2=80=99s the case, would it help to have=
 both
                        USRPs connected to the same 10 MHz reference
                        signal and PPS? In this situation, would I need
                        to provide a secondary source for the PPS, or
                        can that use the 10 Mhz reference as well?</span>=
<o:p></o:p></p>
                    <p class=3D"MsoNormal"><span style=3D"color:windowtex=
t">=C2=A0</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"><span style=3D"color:windowtex=
t">Best
                        Regards,</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"><span style=3D"color:windowtex=
t">=C2=A0</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"><span style=3D"color:windowtex=
t">Jerrid</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"><span style=3D"color:windowtex=
t">=C2=A0</span><o:p></o:p></p>
                    <div>
                      <div style=3D"border:none;border-top:solid #E1E1E1
                        1.0pt;padding:3.0pt 0in 0in 0in">
                        <p class=3D"MsoNormal"><b><span
                              style=3D"color:windowtext">From:</span></b>=
<span
                            style=3D"color:windowtext"> Marcus D. Leech
                            &lt;<a moz-do-not-send=3D"true"
                              href=3D"mailto:patchvonbraun@gmail.com">pat=
chvonbraun@gmail.com</a>&gt;
                            <br>
                            <b>Sent:</b> Wednesday, March 24, 2021 2:23
                            PM<br>
                            <b>To:</b> Jerrid Plymale &lt;<a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:jerrid.plymale@canyon-us.com=
">jerrid.plymale@canyon-us.com</a>&gt;<br>
                            <b>Cc:</b> <a moz-do-not-send=3D"true"
                              href=3D"mailto:USRP-users@lists.ettus.com">=
USRP-users@lists.ettus.com</a><br>
                            <b>Subject:</b> Re: [USRP-users] Strong
                            noise added to signal transmitted by X310
                            with a UBX 40 daughterboard</span><o:p></o:p>=
</p>
                      </div>
                    </div>
                    <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                    <div>
                      <p class=3D"MsoNormal">On 03/24/2021 05:10 PM,
                        Jerrid Plymale wrote:<o:p></o:p></p>
                    </div>
                    <blockquote
                      style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                      <p class=3D"MsoNormal">The devices are operating
                        using direct connection via coax cables.<o:p></o:=
p></p>
                    </blockquote>
                    <p class=3D"MsoNormal">You absolutely need to put a
                      30dB attenuator in-line to prevent RX destruction
                      in the case of "ooops" moments from setting the TX<=
br>
                      =C2=A0 power output too high.<br>
                      <br>
                      <br>
                      <br>
                      <br>
                      <o:p></o:p></p>
                    <blockquote
                      style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal">The target frequency is
                        1.57542 GHz, and our current bandwidth is 4 MHz.
                        We will need to increase the bandwidth to 20 MHz
                        soon for further system development.<o:p></o:p></=
p>
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal">The TX and RX gain are maxed
                        on the receiving hardware. The TX gain of the
                        transmitting hardware is set to 0, as at max the
                        noise strength increases to ~ 20 dB.<o:p></o:p></=
p>
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal">Attached are images of the
                        FFT provided by the Frequency Sink in Gnuradio.
                        Hopefully these give a visual aid for the
                        problem at hand. When I have the transmitter
                        USRP turned off (image 1), it would seem like
                        the noise floor coming into the USRP is around
                        -94 dB. When the transmitter is turned on and
                        the flowgraph is started with the transmitted
                        signal muted (I am using a python block with
                        code to create custom signals that is then
                        connected to a mute block that then connects to
                        the UHD USRP sink block to be able to mute the
                        signal during runtime), the noise floor
                        increases to around -78 dB.
                        <o:p></o:p></p>
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal">Jerrid=C2=A0 <o:p></o:p></p>
                    </blockquote>
                    <p class=3D"MsoNormal">You are likely just seeing the
                      LO leakage, along with the inevitable phase-noise
                      curve of the LO.<br>
                      <br>
                      <br>
                      <br>
                      <br>
                      <br>
                      <o:p></o:p></p>
                    <blockquote
                      style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <div>
                        <div style=3D"border:none;border-top:solid #E1E1E=
1
                          1.0pt;padding:3.0pt 0in 0in 0in">
                          <p class=3D"MsoNormal"><b>From:</b> Marcus D
                            Leech <a moz-do-not-send=3D"true"
                              href=3D"mailto:patchvonbraun@gmail.com">
                              &lt;patchvonbraun@gmail.com&gt;</a> <br>
                            <b>Sent:</b> Wednesday, March 24, 2021 11:58
                            AM<br>
                            <b>To:</b> Jerrid Plymale <a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:jerrid.plymale@canyon-us.com=
">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
                            <b>Cc:</b> <a moz-do-not-send=3D"true"
                              href=3D"mailto:USRP-users@lists.ettus.com">=
USRP-users@lists.ettus.com</a><br>
                            <b>Subject:</b> Re: [USRP-users] Strong
                            noise added to signal transmitted by X310
                            with a UBX 40 daughterboard<o:p></o:p></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal">Is the j B is over-the-air o=
r
                        direct connection?<o:p></o:p></p>
                      <div>
                        <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal">What frequency? Bandwidth?=
<o:p></o:p></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal">Do you have TX and RX gain
                          turned all the way up?<o:p></o:p></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal">Can you share your
                          flow-graphs, or minimum<o:p></o:p></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal"
                          style=3D"margin-bottom:12.0pt">Graphs that show
                          the problem?<o:p></o:p></p>
                        <div>
                          <p class=3D"MsoNormal">Sent from my iPhone<o:p>=
</o:p></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"><br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <o:p></o:p></p>
                          <blockquote
                            style=3D"margin-top:5.0pt;margin-bottom:5.0pt=
">
                            <p class=3D"MsoNormal"
                              style=3D"margin-bottom:12.0pt">On Mar 24,
                              2021, at 12:20 PM, Jerrid Plymale &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:jerrid.plymale@canyon-us.c=
om">jerrid.plymale@canyon-us.com</a>&gt;
                              wrote:<o:p></o:p></p>
                          </blockquote>
                        </div>
                        <blockquote
                          style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                          <div>
                            <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p><=
/p>
                            <p class=3D"MsoNormal">Hello All,<o:p></o:p><=
/p>
                            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                            <p class=3D"MsoNormal">I have been running
                              tests in which I am transmitting a signal
                              from one USRP X310 that=E2=80=99s using a U=
BX 40
                              daughterboard, and that signal is being
                              received by another USRP X310 using a UBX
                              40 daughterboard. I have noticed that when
                              I have the receiving USRP running with the
                              Gnuradio flowgraph active, as soon as I
                              start the transmitting USRP=E2=80=99s Gnura=
dio
                              flowgraph, there is a jump in the noise
                              floor as it is seen by the receiving USRP,
                              and its roughly a 14 dB increase. This
                              occurs even if I have the signal being
                              transmitted muted. Does anyone have any
                              idea what the source of this added noise
                              could be? It is something that I need to
                              mitigate as much as possible for the tests
                              I am running using these USRPs. Any
                              feedback will be greatly appreciated,
                              thanks!<o:p></o:p></p>
                            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                            <p class=3D"MsoNormal">Best Regards,<o:p></o:=
p></p>
                            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                            <p class=3D"MsoNormal">Jerrid<o:p></o:p></p>
                            <p class=3D"MsoNormal">______________________=
_________________________<br>
                              USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a><br>
                              To unsubscribe send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com">
                                usrp-users-leave@lists.ettus.com</a><o:p>=
</o:p></p>
                          </div>
                        </blockquote>
                      </div>
                    </blockquote>
                    <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                  </div>
                </blockquote>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040805000204090100000101--

--===============4472447477571260654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4472447477571260654==--
