Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC123E4C94
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 21:02:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54F483852D5
	for <lists+usrp-users@lfdr.de>; Mon,  9 Aug 2021 15:02:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V74rO0v/";
	dkim-atps=neutral
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 3DDE83847F5
	for <usrp-users@lists.ettus.com>; Mon,  9 Aug 2021 15:02:12 -0400 (EDT)
Received: by mail-qv1-f47.google.com with SMTP id f91so9559503qva.9
        for <usrp-users@lists.ettus.com>; Mon, 09 Aug 2021 12:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=uLqGp7eYLb8pLEd5nxHRtVhp2+2I5Bd/HkwbriU5PzQ=;
        b=V74rO0v/6zbstfeiLbze0V7beYtdfjdYhpUHOXoncn9O9qWIRyela3hVGad7QVG7UC
         +WW8RXsX7FqpjlzgpZp9w4ALc4Eyph4oTdTZZV2drEbixsEWe7TaJCfuR9XTCpzyxPJu
         GLB41W698UnUckFGsxhdljFQlXtuThn/r9ijCknL90qmNGpnbhRr+uoXxCZwEpSFrIZ2
         DAEyBiimgO+eWjujWqVpJyHHtLW5qvAXa/DLwnIW1r1cPEXGo6jTjBQCPDDKPp/zMV7k
         t674dGWk20iVA8gR7qxNGWTJyrctYn63LKtsrqtYIjK5REVOvNtInMRp1wJYHMGYR0FA
         lX4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=uLqGp7eYLb8pLEd5nxHRtVhp2+2I5Bd/HkwbriU5PzQ=;
        b=ndCSG52QiqemWJJn7VVDSUR7YNHgUS3+F/pDCImUxz2WIkpELtPhdgXN8+hAzXLn8a
         1lv4nGFAs4SpvNMgZRgdgTuYEFDNvzPj9lDupoWDsLhM0WkbKEx6S5w3380UrSnVrmfz
         fJAZaEgVISbHmaTSIaYwgLJ75sc1xSVIidTArclKJDpgaVBY7XPZyEWT8hdxWk0T9NBm
         d28NGl2h953IKKoanpu1A5V1UWWXN5Xiu3L1tuDf7zfhuDB60wVRH2gfJOFjS2b+4rSv
         4FGQQuPJt0QxT8v/azGFy+HvlBISBWa5aaa0gTFzjLPhVe9Be6ZQLnl/yiJqwlKYy8lp
         HMqA==
X-Gm-Message-State: AOAM530IQTmjEoTjhRkwwcdo45tQmcTDgkG22BPtOEF7QmcEetT0hO6Q
	IronmltWUkNSPkbSbOzNI4C8TUkKtoTbbQ==
X-Google-Smtp-Source: ABdhPJwNp/ukMSBilYcc8F2Uf3gL8cGHcY4HwDoV61X/jv8/wn1U8xbPBd9kKtEmFOZuz4T2VpJ6iQ==
X-Received: by 2002:a05:6214:2a8d:: with SMTP id jr13mr24628785qvb.21.1628535731435;
        Mon, 09 Aug 2021 12:02:11 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 70sm5894512qtb.20.2021.08.09.12.02.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 12:02:10 -0700 (PDT)
Message-ID: <61117BB2.1020904@gmail.com>
Date: Mon, 09 Aug 2021 15:02:10 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Black, Robert" <RBlack@d16.swri.us>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <A0qfQ4NVDJav3t78VGqE7RQSoqlsUKAMQAMKDtBc@lists.ettus.com> <CAEXYVK5o4sfq-rC4x34Hoq5cP7ahXksBhMdg4rtzp07sGGMWVw@mail.gmail.com> <BN1P110MB01323D8769737F7F320EB88D95F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM> <CAEXYVK4=93B2Xef37C0K4+R6yHB=2OKa0VWNkgg4VFjAPqVSuA@mail.gmail.com> <61116DBC.2020308@gmail.com> <BN1P110MB0132D3D01BD6C1417046570A95F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN1P110MB0132D3D01BD6C1417046570A95F69@BN1P110MB0132.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: 3QO5D2XS3P4NQEPQSMH5TRPDEUN4VW2S
X-Message-ID-Hash: 3QO5D2XS3P4NQEPQSMH5TRPDEUN4VW2S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 RFNoc radio block question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3QO5D2XS3P4NQEPQSMH5TRPDEUN4VW2S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8868219926144305413=="

This is a multi-part message in MIME format.
--===============8868219926144305413==
Content-Type: multipart/alternative;
 boundary="------------070209000001080906040206"

This is a multi-part message in MIME format.
--------------070209000001080906040206
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/09/2021 02:24 PM, Black, Robert wrote:
>
> Totally agree that it would be complicated, expensive, etc to support 
> multiple front-end sampling rates.  I have seen it done in the past, 
> but typically in cases where the RF input, preselection, tuning (i.e. 
> first frequency conversion) was all being done in analog.
>
> rb
>
To be clear, the X3xx compatible daughterboards are ALL analog. MOST of 
them (on the RX path) are complex-baseband conversion, with
   some exceptions, like Twinrx, which use a LOW-IF, and the FPGA 
converts to a complex-baseband before the end application sees the data.

Frequency synthesis and conversion are all done on-card, and the 
ADCs/DACs on the X310 motherboard sample the analog outputs (or inputs
   for the TX direction).  For direction-conversion cards that provide 
analog I/Q, there is typically a fixed elliptic filter with a cut-off 
designed to
   be optimal for the ADC on the motherboard, which is why several of 
the daughtercards are available in -80 and -160 MHz versions which
   relate to their analog output bandwidth.

With adequate bit-width on theADC (14-bits in the case of X310), 
extra-tight analog filtering ahead of the ADC isn't necessary unless you 
have
   very very loud close-in interferers that would tend to exceed the 
dynamic range of the ADC.  There's roughly 80ish dB of dynamic range
   in the x310 ADCs, so it isn't usually a problem.   Filtering in the 
digital domain is nearly always better.




> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, August 9, 2021 1:03 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: X310 RFNoc radio block question
>
> [EXTERNAL EMAIL]
>
> On 08/09/2021 01:35 PM, Brian Padalino wrote:
>
>     On Mon, Aug 9, 2021 at 1:21 PM Black, Robert <RBlack@d16.swri.us
>     <mailto:RBlack@d16.swri.us>> wrote:
>
>         Brian yes.- The Radio block is permanently running at a
>         permanent 200 MSamp rate.
>
>         I would actually be useful to be able to change (reduce) the
>         ADC sampling clock, with appropriate analog anti-aliasing
>         filtering in front of the device. It is too bad that the radio
>         hardware cannot be configured to support this.
>
> The ADC clock on the X310 is constrained by timing-closure constraints 
> in the FPGA from what I understand, which is why it has only a couple of
>   different rates. But if you made it broadly-flexible, then the 
> various daughtercards available would dwindle to only those that have
>   variable analog bandwidth to match the ADC and DAC rate.
>
> When USRPs were first introduced, the ADC ran at a fixed 64Msps rate.  
> Similarly with USRP2 and USRP N210 at 100Msps. That changed in
>   some parts of the family tree, but not others.
>
> Many of the daugtercards for X3xx family use discrete 
> synthesizer+mixer implementations, and it's fairly difficult to design 
> variable-properties
>   anti-alias filters that scale over very large bandwidths. The 
> fixed-converter-rate-with-DUC/DDC-in-FPGA is a pretty normal 
> architecture, and
>   it offers considerable advantages over analog-heavy approaches.   
> Even in RFIC chips like AD9361, the variable-user-bandwidth is mostly
>   implemented in an embedded DSP engine in the ASIC.
>
>
>
>     Just curious - why the hesitation on using the DDC block?
>
>     The oversampling ratio should actually help you out, unless you
>     have some really really close-in jammers - but even then would an
>     analog filter help that much? The linearity of the ADC should be
>     very good, and digitally filtering should be superior - yes?
>     Possibly even get some bit-growth with digital filtering and
>     decimation?
>
>     Brian
>
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-users@lists.ettus.com>
>
>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mailto:usrp-users-leave@lists.ettus.com>
>


--------------070209000001080906040206
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/09/2021 02:24 PM, Black, Robert
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:BN1P110MB0132D3D01BD6C1417046570A95F69@BN1P110MB0132.NAMP110.=
PROD.OUTLOOK.COM"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
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
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Arial",sans-serif;
	color:#1F497D;}
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
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D">Totally
            agree that it would be complicated, expensive, etc to
            support multiple front-end sampling rates.=A0 I have seen it
            done in the past, but typically in cases where the RF input,
            preselection, tuning (i.e. first frequency conversion) was
            all being done in analog.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D"><o:p>=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D">rb
          </span></p>
      </div>
    </blockquote>
    To be clear, the X3xx compatible daughterboards are ALL analog.=A0
    MOST of them (on the RX path) are complex-baseband conversion, with<b=
r>
    =A0 some exceptions, like Twinrx, which use a LOW-IF, and the FPGA
    converts to a complex-baseband before the end application sees the
    data.<br>
    <br>
    Frequency synthesis and conversion are all done on-card, and the
    ADCs/DACs on the X310 motherboard sample the analog outputs (or
    inputs<br>
    =A0 for the TX direction).=A0 For direction-conversion cards that
    provide analog I/Q, there is typically a fixed elliptic filter with
    a cut-off designed to<br>
    =A0 be optimal for the ADC on the motherboard, which is why several o=
f
    the daughtercards are available in -80 and -160 MHz versions which<br=
>
    =A0 relate to their analog output bandwidth.<br>
    <br>
    With adequate bit-width on theADC (14-bits in the case of X310),
    extra-tight analog filtering ahead of the ADC isn't necessary unless
    you have<br>
    =A0 very very loud close-in interferers that would tend to exceed the
    dynamic range of the ADC.=A0 There's roughly 80ish dB of dynamic rang=
e<br>
    =A0 in the x310 ADCs, so it isn't usually a problem.=A0=A0 Filtering =
in
    the digital domain is nearly always better.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite=3D"mid:BN1P110MB0132D3D01BD6C1417046570A95F69@BN1P110MB0132.NAMP110.=
PROD.OUTLOOK.COM"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D"><o:p>=A0</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:windowtext">From:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:windowtext">
                Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Monday, August 9, 2021 1:03 PM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: X310 RFNoc radio block
                question<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>=A0</o:p><=
/p>
        <div>
          <p class=3D"MsoNormal" style=3D"margin-left:.5in"><span
              style=3D"font-size:10.0pt;font-family:&quot;Segoe
              UI&quot;,sans-serif;color:#CE1126">[EXTERNAL EMAIL]</span>
            <o:p></o:p></p>
        </div>
        <div>
          <p class=3D"MsoNormal" style=3D"margin-left:.5in">On 08/09/2021
            01:35 PM, Brian Padalino wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <div>
              <p class=3D"MsoNormal" style=3D"margin-left:.5in">On Mon, A=
ug
                9, 2021 at 1:21 PM Black, Robert &lt;<a
                  moz-do-not-send=3D"true"
                  href=3D"mailto:RBlack@d16.swri.us">RBlack@d16.swri.us</=
a>&gt;
                wrote:<o:p></o:p></p>
            </div>
            <div>
              <blockquote style=3D"border:none;border-left:solid #CCCCCC
                1.0pt;padding:0in 0in 0in
                6.0pt;margin-left:4.8pt;margin-right:0in">
                <div>
                  <div>
                    <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.=
5in"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D">Brian
                        yes.- The Radio block is permanently running at
                        a permanent 200 MSamp rate.</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.=
5in"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D">=A0</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;margin-left:.=
5in"><span
style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
#1F497D">I
                        would actually be useful to be able to change
                        (reduce) the ADC sampling clock, with
                        appropriate analog anti-aliasing filtering in
                        front of the device. It is too bad that the
                        radio hardware cannot be configured to support
                        this.</span><o:p></o:p></p>
                  </div>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in">The ADC clock o=
n
          the X310 is constrained by timing-closure constraints in the
          FPGA from what I understand, which is why it has only a couple
          of<br>
          =A0 different rates. But if you made it broadly-flexible, then
          the various daughtercards available would dwindle to only
          those that have<br>
          =A0 variable analog bandwidth to match the ADC and DAC rate.<br=
>
          <br>
          When USRPs were first introduced, the ADC ran at a fixed
          64Msps rate.=A0 Similarly with USRP2 and USRP N210 at 100Msps.=A0
          That changed in<br>
          =A0 some parts of the family tree, but not others.<br>
          <br>
          Many of the daugtercards for X3xx family use discrete
          synthesizer+mixer implementations, and it's fairly difficult
          to design variable-properties<br>
          =A0 anti-alias filters that scale over very large bandwidths.=A0=
=A0=A0
          The fixed-converter-rate-with-DUC/DDC-in-FPGA is a pretty
          normal architecture, and<br>
          =A0 it offers considerable advantages over analog-heavy
          approaches.=A0=A0 Even in RFIC chips like AD9361, the
          variable-user-bandwidth is mostly<br>
          =A0 implemented in an embedded DSP engine in the ASIC.<br>
          <br>
          <br>
          <br>
          <o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>=A0=
</o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-left:.5in">Just
                  curious - why the hesitation on using the DDC block?<o:=
p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>=A0=
</o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-left:.5in">The
                  oversampling ratio should actually help you out,
                  unless you have some really really close-in jammers -
                  but even then would an analog filter help that much?=A0
                  The linearity of the ADC should be very good, and
                  digitally filtering should be superior - yes?=A0
                  Possibly even get some bit-growth with digital
                  filtering and decimation?<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>=A0=
</o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-left:.5in">Brian<o=
:p></o:p></p>
              </div>
            </div>
          </div>
          <p class=3D"MsoNormal" style=3D"margin-left:.5in"><br>
            <br>
            <br>
            <o:p></o:p></p>
          <pre style=3D"margin-left:.5in">_______________________________=
________________<o:p></o:p></pre>
          <pre style=3D"margin-left:.5in">USRP-users mailing list -- <a m=
oz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a><o:p></o:p></pre>
          <pre style=3D"margin-left:.5in">To unsubscribe send an email to=
 <a moz-do-not-send=3D"true" href=3D"mailto:usrp-users-leave@lists.ettus.=
com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>=A0</o:p><=
/p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------070209000001080906040206--

--===============8868219926144305413==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8868219926144305413==--
