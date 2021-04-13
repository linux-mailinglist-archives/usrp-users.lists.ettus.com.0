Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A34435E1DB
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 16:48:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33CA83846E5
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 10:48:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ItSsF98g";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 6FC5F38465C
	for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 10:47:19 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id d23so6015539qko.12
        for <USRP-users@lists.ettus.com>; Tue, 13 Apr 2021 07:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=a1C1B1gPbYkUiNqg5Pt5qd0GangCoSNqQvgpxH8gcSc=;
        b=ItSsF98gMPif9iJllkWnkNGnUye9ZK1l7CbCoFC/pnrKzGEXYiq7SLHi3X3frNnocH
         tZAzlG4j2MJaOLdpjPzjaY0RxUb6PtZOaxhLWYuALBkwkSQtzSUUNAZuuSSO59Ov58wk
         8aDbSyPrHVBjXvlB54ydITcD8IEyzmjJt9JaZli6xMhOwPLMByOGVRqZ/OohACykauSD
         lyyMpysgCIOMzd1BXZaHGKOqL7FW2RWB3EiIRM/yws6F800TzdPbGoqkummhOgjcpXa4
         Cn3D5Tm0XSxkVbl+t8bufOVFP9vfEdK192v4Udz4KKTgDdtHGT8vU2tawKwlA8OH0s8M
         zIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=a1C1B1gPbYkUiNqg5Pt5qd0GangCoSNqQvgpxH8gcSc=;
        b=d4p0Xy/j/zdQN0CIP8tLa0NZKUXu1Yay69hDyduMi9rulU2sRBHWdbT+q6NyFWoubr
         s++CXNqt5fA2C+Wr6BlANhpNItFRM6yDOcM/Sw9Lg+2qgvEkMOIRDwNV4TKmDOvjT/U4
         tqVTaG7lHqX8Wc/Te9QZJ3QLnJ7ulAd36WzKLrHlEEEVoPaPBDVh4O3NS/FivYNdQuO9
         8WHAC2h25sfPA01SNuujY4rb0TF4julWuWaJenoLo70oPO88dUK95U7bu4C7BalXQcO6
         jy1FwTHK+S69eiu523CU5GcsTTaWgVvVkRgwIUbWvldkq0z89/uUD+huGTIH5sVreF31
         5DKg==
X-Gm-Message-State: AOAM531236XZ3ajbPOV+lHnz2flfwjEpbsx8+hsqdF+LFaAknTv/74mI
	wrdsjkFBQzycJNE+pjt3tO9DZv8o4R4=
X-Google-Smtp-Source: ABdhPJy1CUq0FrXRSndl/cvke3Ei72uoNrro/dXzgbkfGbaEyG5L5iJE7DOw4LDWa+hDxyZbyM+sZg==
X-Received: by 2002:a37:ef18:: with SMTP id j24mr32944588qkk.96.1618325238629;
        Tue, 13 Apr 2021 07:47:18 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 62sm4619555qtg.70.2021.04.13.07.47.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 07:47:18 -0700 (PDT)
Message-ID: <6075AEF4.3060603@gmail.com>
Date: Tue, 13 Apr 2021 10:47:16 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: =?UTF-8?B?546L55KAIFdBTkcgQ3Vp?= <iucgnaw@msn.com>
References: <CWLP265MB33962EF4C7FE6787966B97D4A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM> <155E748D-A0B1-4E4B-8029-859B667B9BD6@gmail.com> <CWLP265MB3396821731CB8BEF255C94A6A54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM> <6075A497.4020406@gmail.com> <CWLP265MB339653AEDA72322F25764E3FA54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
In-Reply-To: <CWLP265MB339653AEDA72322F25764E3FA54F9@CWLP265MB3396.GBRP265.PROD.OUTLOOK.COM>
Message-ID-Hash: GQ5BWSNEHYVA66LLG5GGZK6B5LPGAWNY
X-Message-ID-Hash: GQ5BWSNEHYVA66LLG5GGZK6B5LPGAWNY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to tx s16 file with tx_samples_from_file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQ5BWSNEHYVA66LLG5GGZK6B5LPGAWNY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2280722420925304973=="

This is a multi-part message in MIME format.
--===============2280722420925304973==
Content-Type: multipart/alternative;
 boundary="------------010203070903060604010905"

This is a multi-part message in MIME format.
--------------010203070903060604010905
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/13/2021 10:17 AM, =E7=8E=8B=E7=92=80 WANG Cui wrote:
>
> I am testing with software generated GPS L1 C/A signal and the=20
> sampling rate is 1.023M sps, same as the C/A code rate 1.023M chips/s.=20
> The result baseband signal file can be tracked and positioned by=20
> gnss-sdr receiver.
>
> So I am wondering: I am not using 2B sampling rate (say 2.046 sps),=20
> but seems the signal is still well recognized and decoded?
>
GPS L1 C/A is a BPSK system operating at a notional 1.023Mbits/second,=20
which as a BPSK system occupies a bandwidth of 2X the
   notional bit rate, or 2.046MHz, requiring actually a minimum sample=20
rate of 4.096Msps.   That's according to my cursory
   understanding of the GPS L1 C/A signal, but there are others here=20
with more experience with GPS than me.


> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, April 13, 2021 10:03 PM
> *To:* =E7=8E=8B=E7=92=80WANG Cui <iucgnaw@msn.com>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] How to tx s16 file with tx_samples_from_fil=
e
>
> On 04/13/2021 12:21 AM, =E7=8E=8B=E7=92=80 WANG Cui wrote:
>
>     I am not expert in this, do you mean if sample in real format, we
>     must double the sample rate, to contain both I phase and Q phase
>     information?
>
>     In my application, I just sample at baseband digital code rate
>     (Nyquist Freq), and seems it works well when transmit. And when I
>     convert it into I/Q, it just doubled the size, but seems doesn=E2=80=
=99t
>     bring more benefit?
>
>     Is there good article can help me to clarify this concept? :)
>
> Well, this is drifting into much-more-generic territory about signals=20
> and signal processing.
>
> Indeed, the Nyquist sampling theorem states that a signal with=20
> bandwidth B must be sampled at 2B in order to properly contain
>   all the information in a signal.
>
> That can either be achieved by real-mode sampling at 2B, or=20
> complex-baseband sampling at B.  You can see that for the
>   same sample-size, the amount of space occupied by such samples is=20
> identical.
>
> I think we need to understand exactly what you have sampled, and how,=20
> and at what rate.  I think *you* need to understand
>   that in more depth as well, before we can provide much meaningful hel=
p.
>
>
>
>
>
>     *From:*Marcus D Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Tuesday, April 13, 2021 12:08 PM
>     *To:* =E7=8E=8B=E7=92=80WANG Cui <iucgnaw@msn.com> <mailto:iucgnaw@=
msn.com>
>     *Cc:* USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com=
>
>     *Subject:* Re: [USRP-users] How to tx s16 file with
>     tx_samples_from_file
>
>     No. A real-sampled signal would
>
>     Need to be sampled at twice the notional bandwidth. So the data
>     rate is the same.
>
>     Sent from my iPhone
>
>
>
>
>         On Apr 12, 2021, at 11:59 PM, =E7=8E=8B=E7=92=80 WANG Cui <iucg=
naw@msn.com
>         <mailto:iucgnaw@msn.com>> wrote:
>
>         =EF=BB=BF
>
>         That make sense, I guess I would modify it to accept more forma=
t.
>
>         However, for the hardware side, it accept only Complex OTW
>         format, which means it need double bandwidth from host (I am
>         using B210, USB3). When transmit high sample rate signal, it
>         is very easy to underflow. If we can upgrade firmware to
>         handle format conversion on hardware level, it will ease a lot
>         on host computing resource and USB/NIC bandwidth and performanc=
e.
>
>         Thanks!
>
>         *From:*Marcus D Leech <patchvonbraun@gmail.com
>         <mailto:patchvonbraun@gmail.com>>
>         *Sent:* Tuesday, April 13, 2021 11:45 AM
>         *To:* =E7=8E=8B=E7=92=80WANG Cui <iucgnaw@msn.com <mailto:iucgn=
aw@msn.com>>
>         *Cc:* USRP-users@lists.ettus.com
>         <mailto:USRP-users@lists.ettus.com>
>         *Subject:* Re: [USRP-users] How to tx s16 file with
>         tx_samples_from_file
>
>         The tx_samples_from_file application is just an example
>         application. You are free to modify it to meet your needs,
>         including converting real-samples data to complex baseband data
>
>         The hardware, however, supports complex baseband data, In
>         either sc16 or sc8 format =E2=80=9Cover the wire=E2=80=9D.   Th=
e host software
>         (whether that=E2=80=99s the tx_samples_from_file example code o=
r your
>         own) is free to accept and convert files into the baseband
>         format accepted by the radio hardware.
>
>         Sent from my iPhone
>
>
>
>
>
>             On Apr 12, 2021, at 10:08 PM, =E7=8E=8B=E7=92=80 WANG Cui
>             <iucgnaw@msn.com <mailto:iucgnaw@msn.com>> wrote:
>
>             =EF=BB=BF
>
>             Thanks for reply.
>
>             However for RF signal, IQ Complex signal double the file
>             size, which is quite inconvenient, it will be best that
>             USRP can natively support such format. (Even sometimes RF
>             signal is in 4-bit, 1 bit format, and convert to I/Q will
>             be more than 10 times larger...)
>
>             *From:*Marcus D Leech <patchvonbraun@gmail.com
>             <mailto:patchvonbraun@gmail.com>>
>             *Sent:* Tuesday, April 13, 2021 09:44 AM
>             *To:* ?? WANG Cui <iucgnaw@msn.com <mailto:iucgnaw@msn.com>=
>
>             *Cc:* USRP-users@lists.ettus.com
>             <mailto:USRP-users@lists.ettus.com>
>             *Subject:* Re: [USRP-users] How to tx s16 file with
>             tx_samples_from_file
>
>             Complex baseband is the natural format for this stuff. If
>             you have real-sampled data you=E2=80=99ll have to convert i=
t into
>             complex baseband first.
>
>             Sent from my iPhone
>
>
>
>
>
>
>                 On Apr 12, 2021, at 9:32 PM, ?? WANG Cui
>                 <iucgnaw@msn.com <mailto:iucgnaw@msn.com>> wrote:
>
>                 =EF=BB=BF
>
>                 Hi,
>
>                 When I try tx_samples_from_file example, looks like it
>                 only take Complex data format.
>
>                 However I have signal file in RF direct sample format
>                 (each data element represent a sample value), say it
>                 is =E2=80=9Cs8=E2=80=9D or =E2=80=9Cs16=E2=80=9D format=
 as defined in UHD term.
>
>                 I wonder how can I transmit such file? Or must I
>                 convert it into Interleaved I/Q (Complex) format?
>
>                 Thanks in advance,
>
>                 iucganw
>
>                 _______________________________________________
>                 USRP-users mailing list -- usrp-users@lists.ettus.com
>                 <mailto:usrp-users@lists.ettus.com>
>                 To unsubscribe send an email to
>                 usrp-users-leave@lists.ettus.com
>                 <mailto:usrp-users-leave@lists.ettus.com>
>


--------------010203070903060604010905
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/13/2021 10:17 AM, =E7=8E=8B=E7=92=
=80 WANG Cui
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CWLP265MB339653AEDA72322F25764E3FA54F9@CWLP265MB3396.GBRP265.=
PROD.OUTLOOK.COM"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:=E5=AE=8B=E4=BD=93;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:=E7=AD=89=E7=BA=BF;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=E5=AE=8B=E4=BD=93";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@=E7=AD=89=E7=BA=BF";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91;
	panose-1:2 11 5 3 2 2 4 2 2 4;}
@font-face
	{font-family:"\@=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91";}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:11.0pt;
	font-family:=E7=AD=89=E7=BA=BF;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	color:black;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:=E7=AD=89=E7=BA=BF;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">I am test=
ing
            with software generated GPS L1 C/A signal and the sampling
            rate is 1.023M sps, same as the C/A code rate 1.023M
            chips/s. The result baseband signal file can be tracked and
            positioned by gnss-sdr receiver.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext">So I am
            wondering: I am not using 2B sampling rate (say 2.046 sps),
            but seems the signal is still well recognized and decoded?</s=
pan></p>
      </div>
    </blockquote>
    GPS L1 C/A is a BPSK system operating at a notional
    1.023Mbits/second, which as a BPSK system occupies a bandwidth of 2X
    the<br>
    =C2=A0 notional bit rate, or 2.046MHz, requiring actually a minimum
    sample rate of 4.096Msps.=C2=A0=C2=A0 That's according to my cursory<=
br>
    =C2=A0 understanding of the GPS L1 C/A signal, but there are others h=
ere
    with more experience with GPS than me.<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CWLP265MB339653AEDA72322F25764E3FA54F9@CWLP265MB3396.GBRP265.=
PROD.OUTLOOK.COM"
      type=3D"cite">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p></o:=
p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:windowtext"><o:p>=C2=A0=
</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"lef=
t"><b><span
style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:windowtext">Fro=
m:</span></b><span
style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:windowtext">
                Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Tuesday, April 13, 2021 10:03 PM<br>
                <b>To:</b> </span><span
                style=3D"font-family:&quot;=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=
=BB=91&quot;,sans-serif;color:windowtext"
                lang=3D"ZH-CN">=E7=8E=8B=E7=92=80</span><span
                style=3D"font-family:&quot;Calibri&quot;,sans-serif;color=
:windowtext">
                WANG Cui <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:iucgnaw@msn.com">&lt;iucgnaw@msn.com&gt;</a><br>
                <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] How to tx s16 file with
                tx_samples_from_file<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
>On
            04/13/2021 12:21 AM, =E7=8E=8B=E7=92=80 WANG Cui wrote:<o:p><=
/o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">I am not expert in this, do you mean if
            sample in real format, we must double the sample rate, to
            contain both I phase and Q phase information?<o:p></o:p></p>
          <p class=3D"MsoNormal">In my application, I just sample at
            baseband digital code rate (Nyquist Freq), and seems it
            works well when transmit. And when I convert it into I/Q, it
            just doubled the size, but seems doesn<span lang=3D"ZH-CN">=E2=
=80=99</span>t
            bring more benefit?<o:p></o:p></p>
          <p class=3D"MsoNormal">Is there good article can help me to
            clarify this concept? :)<o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
span
            style=3D"font-family:&quot;Calibri&quot;,sans-serif">Well,
            this is drifting into much-more-generic territory about
            signals and signal processing.<br>
            <br>
            Indeed, the Nyquist sampling theorem states that a signal
            with bandwidth B must be sampled at 2B in order to properly
            contain<br>
            =C2=A0 all the information in a signal.<br>
            <br>
            That can either be achieved by real-mode sampling at 2B, or
            complex-baseband sampling at B.=C2=A0 You can see that for th=
e<br>
            =C2=A0 same sample-size, the amount of space occupied by such
            samples is identical.<br>
            <br>
            I think we need to understand exactly what you have sampled,
            and how, and at what rate.=C2=A0 I think *you* need to unders=
tand<br>
            =C2=A0 that in more depth as well, before we can provide much
            meaningful help.<br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"l=
eft"><b><span
                    style=3D"font-family:&quot;Calibri&quot;,sans-serif">=
From:</span></b><span
                  style=3D"font-family:&quot;Calibri&quot;,sans-serif">
                  Marcus D Leech
                  <a moz-do-not-send=3D"true"
                    href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonb=
raun@gmail.com&gt;</a>
                  <br>
                  <b>Sent:</b> Tuesday, April 13, 2021 12:08 PM<br>
                  <b>To:</b> </span><span
                  style=3D"font-family:&quot;=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=
=BB=91&quot;,sans-serif"
                  lang=3D"ZH-CN">=E7=8E=8B=E7=92=80</span><span
                  style=3D"font-family:&quot;Calibri&quot;,sans-serif">
                  WANG Cui
                  <a moz-do-not-send=3D"true"
                    href=3D"mailto:iucgnaw@msn.com">&lt;iucgnaw@msn.com&g=
t;</a><br>
                  <b>Cc:</b> <a moz-do-not-send=3D"true"
                    href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a><br>
                  <b>Subject:</b> Re: [USRP-users] How to tx s16 file
                  with tx_samples_from_file</span><o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
>=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"=
>No.
            A real-sampled signal would<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Need to=
 be
              sampled at twice the notional bandwidth. So the data rate
              is the same.=C2=A0<o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><br>
                <br>
                <br>
                <o:p></o:p></p>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">On =
Apr
                  12, 2021, at 11:59 PM, <span lang=3D"ZH-CN">
                    =E7=8E=8B=E7=92=80</span> WANG Cui &lt;<a moz-do-not-=
send=3D"true"
                    href=3D"mailto:iucgnaw@msn.com">iucgnaw@msn.com</a>&g=
t;
                  wrote:<o:p></o:p></p>
              </blockquote>
            </div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <div>
                <p class=3D"MsoNormal" style=3D"text-align:left"
                  align=3D"left"><span
                    style=3D"font-family:&quot;Tahoma&quot;,sans-serif">=EF=
=BB=BF</span>
                  <o:p></o:p></p>
                <p class=3D"MsoNormal">That make sense, I guess I would
                  modify it to accept more format.<o:p></o:p></p>
                <p class=3D"MsoNormal">However, for the hardware side, it
                  accept only Complex OTW format, which means it need
                  double bandwidth from host (I am using B210, USB3).
                  When transmit high sample rate signal, it is very easy
                  to underflow. If we can upgrade firmware to handle
                  format conversion on hardware level, it will ease a
                  lot on host computing resource and USB/NIC bandwidth
                  and performance.<o:p></o:p></p>
                <p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
                <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                <div>
                  <div style=3D"border:none;border-top:solid #E1E1E1
                    1.0pt;padding:3.0pt 0in 0in 0in">
                    <p class=3D"MsoNormal" style=3D"text-align:left"
                      align=3D"left"><b><span
                          style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif">From:</span></b><span
style=3D"font-family:&quot;Calibri&quot;,sans-serif"> Marcus D Leech &lt;=
<a
                          moz-do-not-send=3D"true"
                          href=3D"mailto:patchvonbraun@gmail.com">patchvo=
nbraun@gmail.com</a>&gt;
                        <br>
                        <b>Sent:</b> Tuesday, April 13, 2021 11:45 AM<br>
                        <b>To:</b> </span><span
                        style=3D"font-family:&quot;=E5=BE=AE=E8=BD=AF=E9=9B=
=85=E9=BB=91&quot;,sans-serif"
                        lang=3D"ZH-CN">=E7=8E=8B=E7=92=80</span><span
                        style=3D"font-family:&quot;Calibri&quot;,sans-ser=
if">
                        WANG Cui &lt;<a moz-do-not-send=3D"true"
                          href=3D"mailto:iucgnaw@msn.com">iucgnaw@msn.com=
</a>&gt;<br>
                        <b>Cc:</b> <a moz-do-not-send=3D"true"
                          href=3D"mailto:USRP-users@lists.ettus.com">USRP=
-users@lists.ettus.com</a><br>
                        <b>Subject:</b> Re: [USRP-users] How to tx s16
                        file with tx_samples_from_file</span><o:p></o:p><=
/p>
                  </div>
                </div>
                <p class=3D"MsoNormal" style=3D"text-align:left"
                  align=3D"left">=C2=A0<o:p></o:p></p>
                <p class=3D"MsoNormal" style=3D"text-align:left"
                  align=3D"left">The tx_samples_from_file application is
                  just an example application. You are free to modify it
                  to meet your needs, including converting real-samples
                  data to complex baseband data =C2=A0<o:p></o:p></p>
                <div>
                  <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                </div>
                <div>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">T=
he
                    hardware, however, supports complex baseband data,
                    In either sc16 or sc8 format
                    <span lang=3D"ZH-CN">=E2=80=9C</span>over the wire<sp=
an
                      lang=3D"ZH-CN">=E2=80=9D</span>. =C2=A0 The host so=
ftware
                    (whether that<span lang=3D"ZH-CN">=E2=80=99</span>s t=
he
                    tx_samples_from_file example code or your own) is
                    free to accept and convert files into the baseband
                    format accepted by the radio hardware. =C2=A0<o:p></o=
:p></p>
                  <div>
                    <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p>=
</p>
                  </div>
                  <div>
                    <p class=3D"MsoNormal"><br>
                      <br>
                      <br>
                      <br>
                      <o:p></o:p></p>
                    <blockquote
                      style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                      <p class=3D"MsoNormal" style=3D"margin-bottom:12.0p=
t">On
                        Apr 12, 2021, at 10:08 PM, <span lang=3D"ZH-CN">
                          =E7=8E=8B=E7=92=80</span> WANG Cui &lt;<a
                          moz-do-not-send=3D"true"
                          href=3D"mailto:iucgnaw@msn.com">iucgnaw@msn.com=
</a>&gt;
                        wrote:<o:p></o:p></p>
                    </blockquote>
                  </div>
                  <blockquote
                    style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                    <div>
                      <p class=3D"MsoNormal" style=3D"text-align:left"
                        align=3D"left"><span
                          style=3D"font-family:&quot;Tahoma&quot;,sans-se=
rif">=EF=BB=BF</span>
                        <o:p></o:p></p>
                      <p class=3D"MsoNormal">Thanks for reply.<o:p></o:p>=
</p>
                      <p class=3D"MsoNormal">However for RF signal, IQ
                        Complex signal double the file size, which is
                        quite inconvenient, it will be best that USRP
                        can natively support such format. (Even
                        sometimes RF signal is in 4-bit, 1 bit format,
                        and convert to I/Q will be more than 10 times
                        larger...)<o:p></o:p></p>
                      <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                      <div>
                        <div style=3D"border:none;border-top:solid #E1E1E=
1
                          1.0pt;padding:3.0pt 0in 0in 0in">
                          <p class=3D"MsoNormal" style=3D"text-align:left=
"
                            align=3D"left"><b><span
                                style=3D"font-family:&quot;Calibri&quot;,=
sans-serif">From:</span></b><span
style=3D"font-family:&quot;Calibri&quot;,sans-serif"> Marcus D Leech &lt;=
<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt;
                              <br>
                              <b>Sent:</b> Tuesday, April 13, 2021 09:44
                              AM<br>
                              <b>To:</b> ?? WANG Cui &lt;<a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:iucgnaw@msn.com">iucgnaw@m=
sn.com</a>&gt;<br>
                              <b>Cc:</b> <a moz-do-not-send=3D"true"
                                href=3D"mailto:USRP-users@lists.ettus.com=
">USRP-users@lists.ettus.com</a><br>
                              <b>Subject:</b> Re: [USRP-users] How to tx
                              s16 file with tx_samples_from_file</span><o=
:p></o:p></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal" style=3D"text-align:left"
                        align=3D"left">=C2=A0<o:p></o:p></p>
                      <p class=3D"MsoNormal"
                        style=3D"margin-bottom:12.0pt;text-align:left"
                        align=3D"left">Complex baseband is the natural
                        format for this stuff. If you have real-sampled
                        data you<span lang=3D"ZH-CN">=E2=80=99</span>ll h=
ave to
                        convert it into complex baseband first.=C2=A0<o:p=
></o:p></p>
                      <div>
                        <p class=3D"MsoNormal">Sent from my iPhone<o:p></=
o:p></p>
                      </div>
                      <div>
                        <p class=3D"MsoNormal"><br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <o:p></o:p></p>
                        <blockquote
                          style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                          <p class=3D"MsoNormal"
                            style=3D"margin-bottom:12.0pt">On Apr 12,
                            2021, at 9:32 PM, ?? WANG Cui &lt;<a
                              moz-do-not-send=3D"true"
                              href=3D"mailto:iucgnaw@msn.com">iucgnaw@msn=
.com</a>&gt;
                            wrote:<o:p></o:p></p>
                        </blockquote>
                      </div>
                      <blockquote
                        style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                        <div>
                          <p class=3D"MsoNormal" style=3D"text-align:left=
"
                            align=3D"left"><span
                              style=3D"font-family:&quot;Tahoma&quot;,san=
s-serif">=EF=BB=BF</span>
                            <o:p></o:p></p>
                          <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
                          <p class=3D"MsoNormal">When I try
                            tx_samples_from_file example, looks like it
                            only take Complex data format.<o:p></o:p></p>
                          <p class=3D"MsoNormal">However I have signal
                            file in RF direct sample format (each data
                            element represent a sample value), say it is
                            <span lang=3D"ZH-CN">=E2=80=9C</span>s8<span
                              lang=3D"ZH-CN">=E2=80=9D</span> or <span
                              lang=3D"ZH-CN">=E2=80=9C</span>s16<span lan=
g=3D"ZH-CN">=E2=80=9D</span>
                            format as defined in UHD term.<o:p></o:p></p>
                          <p class=3D"MsoNormal">I wonder how can I
                            transmit such file? Or must I convert it
                            into Interleaved I/Q (Complex) format?<o:p></=
o:p></p>
                          <p class=3D"MsoNormal">Thanks in advance,<o:p><=
/o:p></p>
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal">iucganw<o:p></o:p></p>
                          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                          <p class=3D"MsoNormal" style=3D"text-align:left=
"
                            align=3D"left"><span
                              style=3D"font-family:&quot;Calibri&quot;,sa=
ns-serif">_______________________________________________<br>
                              USRP-users mailing list -- <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a><br>
                              To unsubscribe send an email to <a
                                moz-do-not-send=3D"true"
                                href=3D"mailto:usrp-users-leave@lists.ett=
us.com">
                                usrp-users-leave@lists.ettus.com</a></spa=
n><o:p></o:p></p>
                        </div>
                      </blockquote>
                    </div>
                  </blockquote>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"text-align:left" align=3D"left"><=
span
            style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>=C2=
=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010203070903060604010905--

--===============2280722420925304973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2280722420925304973==--
