Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EF06E0339
	for <lists+usrp-users@lfdr.de>; Thu, 13 Apr 2023 02:29:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F227E38417F
	for <lists+usrp-users@lfdr.de>; Wed, 12 Apr 2023 20:29:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681345744; bh=mvwgZTpL/tCHlrg9LJ+lvUC133ctUUxs63kyqCHUH4E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=jLg5hZIAmHrwQa2k2RE+a9Pf3wEEOvQNmkVjDgEltok71MX9nENobiWfk/uxsbH8o
	 ySBwfxO5B3vYjOGOJwPw0zk8uGtQkMHl9W9fNCKOtcFTajE4qYb5uUeFzJWSGWvvn3
	 KxYCGUfyJzioo0fYDdQgqwsstBKF+1BDfrlqM6h9DOpbDtOlVBkPosUwtF/mh5Jgze
	 2OFccMCkXPZqJpTadmnweHTYhYjIKS6p9cW/E+2TQYu2hMniMZ6S3IAC8EoXdDaxW6
	 hAloIiyD7alapZS9qbFSJ2nqM6IBvB2EqkrEovIAAxYFBPTZlFKN0BecQpgxKRfJo9
	 9GLcT7IYe2TKQ==
Received: from resdmta-c1p-023853.sys.comcast.net (resdmta-c1p-023853.sys.comcast.net [96.102.19.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 1571038417F
	for <usrp-users@lists.ettus.com>; Wed, 12 Apr 2023 20:28:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.b="MVfkofaI";
	dkim-atps=neutral
Received: from resomta-c1p-023409.sys.comcast.net ([96.102.18.228])
	by resdmta-c1p-023853.sys.comcast.net with ESMTP
	id mcNUp2EMmpIiwmkpfpWyWg; Thu, 13 Apr 2023 00:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1681345739;
	bh=qGtmwrL5E2nFNSZZcL2z7/gqI2DZ28LoyJsVndoqlVg=;
	h=Received:Received:Content-Type:Message-ID:Date:MIME-Version:
	 Subject:To:From:Xfinity-Spam-Result;
	b=MVfkofaITZbZ9z0L0wNaPtMVF6XsCNaY+HP0PZrki1Yz6mBUrt0yqqk0fpfvts3by
	 oddJXIS0m8bivss5/JHnuwaixsreldGXi7ogYJd3qiu0c9NGugFAUhHGr35oLVN7rT
	 83/P+hJ649kdPbt4NLcIv0t4cpbGlhwl8LpI9rPvAxEfDXbCWf0N+JGeJe7RvfkH83
	 gSJodCJr4GoPN5yf2VHuIkYeaubjxKuLVacODKTQYxCl4UYXI0/ZtnfxLcbxKyp4P0
	 Ok4+uKACsmypr+IHW4wb5EtahQeoqTtrE7flCUnElxYoJeT6BI8id6VsyTjCw5TzkR
	 MErUmU+XZMYUQ==
Received: from [IPV6:2601:647:4700:284:349:8d38:6437:a12]
 ([IPv6:2601:647:4700:284:349:8d38:6437:a12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-c1p-023409.sys.comcast.net with ESMTPSA
	id mkpbpd4T3QANxmkpepcXOP; Thu, 13 Apr 2023 00:28:59 +0000
X-Xfinity-VMeta: sc=-6.00;st=legit
Message-ID: <5a1cfa23-f146-3511-b989-b84a9865712d@comcast.net>
Date: Wed, 12 Apr 2023 17:28:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
 <15820636-B0CB-4B9D-98DA-76820042D215@gmail.com>
 <CO6PR09MB8118AE8209619F8C193A4AA3F9959@CO6PR09MB8118.namprd09.prod.outlook.com>
 <569d3487-6006-c2f1-96d8-bb36f2f9017d@gmail.com>
 <CO6PR09MB8118363A6FFF3D1048730E38F99B9@CO6PR09MB8118.namprd09.prod.outlook.com>
From: Ron Economos <w6rz@comcast.net>
In-Reply-To: <CO6PR09MB8118363A6FFF3D1048730E38F99B9@CO6PR09MB8118.namprd09.prod.outlook.com>
Message-ID-Hash: BRFQHB6TUZNEIJB4U4EAQMKPZPQNJ3ZZ
X-Message-ID-Hash: BRFQHB6TUZNEIJB4U4EAQMKPZPQNJ3ZZ
X-MailFrom: w6rz@comcast.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Harmonic Distortion with B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BRFQHB6TUZNEIJB4U4EAQMKPZPQNJ3ZZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7216375360863054567=="

This is a multi-part message in MIME format.
--===============7216375360863054567==
Content-Type: multipart/alternative;
 boundary="------------nF8J6CIsori4Gw3p9T6useLc"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nF8J6CIsori4Gw3p9T6useLc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

This is what I see with a B210 at 145 MHz fundamental. I had the=20
analyzer on a large RBW, so the even order harmonic are buried in the=20
analyzer noise.

I don't think there's any remedy except for external filters.

Ron

B210 harmonics

On 4/12/23 16:20, Shenk, Trey E via USRP-users wrote:
>
> The original signal that I showed was an unmodulated carrier.
>
> I tried a 10kHz complex exponential (plots included for several=20
> harmonics). The carrier is clearly visible at all frequencies. I can=20
> see copies of the 10kHz tone on odd multiples of the carrier, but not=20
> on the even multiples.
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Monday, April 10, 2023 10:22 PM
> *To:* Shenk, Trey E <trey.shenk@pnnl.gov>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Harmonic Distortion with B205mini
>
> On 10/04/2023 14:28, Shenk, Trey E wrote:
>
>     I first tried turning the gain down. What I saw was that the even
>     harmonics (2*fundamental, =E2=80=A6) did not change power, and the =
odd
>     harmonics decreased by the same amount as the fundamental. This
>     means that the dBc for the odd harmonics stayed the same with
>     decreasing gain.
>
>     Decreasing the baseband amplitude had the exact same effect. Even
>     harmonics stayed at the same power level, odd harmonics decreased
>     while maintaining dBc.
>
> What is the nature of the modulating signal?
>
> If you use an example app like "tx_waveforms" with, let's say, 10kHz=20
> SIN signal, what are the harmonic results?
>
>
>
>     *From:* Marcus D Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Monday, April 10, 2023 8:39 AM
>     *To:* Shenk, Trey E <trey.shenk@pnnl.gov> <mailto:trey.shenk@pnnl.g=
ov>
>     *Cc:* USRP-users@lists.ettus.com
>     *Subject:* Re: [USRP-users] Harmonic Distortion with B205mini
>
>     Check twice before you click! This email originated from outside PN=
NL.
>
>     Turn down the RF gain a bit as well as the baseband amplitude.
>     Does this make any difference?
>
>     Sent from my iPhone
>
>
>
>
>         On Apr 10, 2023, at 9:41 AM, Shenk, Trey E via USRP-users
>         <usrp-users@lists.ettus.com> wrote:
>
>         =EF=BB=BF
>
>         I'm using a B205mini to transmit signals. When transmitting, I
>         can see copies of the SOI at harmonics of the center
>         frequency. I ran some measurements of total harmonic
>         distortion, and found it to range from 39% with a 100MHz to
>         23% with a 1GHz carrier.=C2=A0The second harmonic is <-50dBc, b=
ut
>         the third harmonic is usually around -10dBc.
>
>         My main concern is for the lower frequency carriers, like
>         100MHz, because multiple harmonics will show up on a spectrum
>         analyzer set to a wideband. I've looked at putting an RF
>         filter at the output, but I need the system to be able to
>         switch transmit center frequencies in a range from 100MHz to 5G=
Hz.
>
>         Is it possible to reduce the harmonics by some hardware
>         setting (driving with gnruadio)?
>
>         Thanks,
>         Trey
>
>         <carrier_freqsweep_fc0200M_gain55.png>
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------nF8J6CIsori4Gw3p9T6useLc
Content-Type: multipart/related;
 boundary="------------qqHQDyh2a1AeVPTPU380s72P"

--------------qqHQDyh2a1AeVPTPU380s72P
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>This is what I see with a B210 at 145 MHz fundamental. I had the
      analyzer on a large RBW, so the even order harmonic are buried in
      the analyzer noise.</p>
    <p>I don't think there's any remedy except for external filters.</p>
    <p>Ron</p>
    <img moz-do-not-send=3D"false"
      src=3D"cid:part1.cDBGhznm.AvSqcfc8@comcast.net" alt=3D"B210 harmoni=
cs"
      width=3D"800" height=3D"480">
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 4/12/23 16:20, Shenk, Trey E via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CO6PR09MB8118363A6FFF3D1048730E38F99B9@CO6PR09MB8118.namprd09=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">The original signal that I showed was an
          unmodulated carrier.<br>
          <br>
          I tried a 10kHz complex exponential (plots included for
          several harmonics). The carrier is clearly visible at all
          frequencies. I can see copies of the 10kHz tone on odd
          multiples of the carrier, but not on the even multiples.<o:p></=
o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Monday, April 10, 2023 10:22 PM<br>
              <b>To:</b> Shenk, Trey E <a class=3D"moz-txt-link-rfc2396E"=
 href=3D"mailto:trey.shenk@pnnl.gov">&lt;trey.shenk@pnnl.gov&gt;</a><br>
              <b>Cc:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Harmonic Distortion with
              B205mini<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 10/04/2023 14:28, Shenk, Trey E wrote=
:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">I first tried turning the gain down. Wha=
t
            I saw was that the even harmonics (2*fundamental, =E2=80=A6) =
did not
            change power, and the odd harmonics decreased by the same
            amount as the fundamental. This means that the dBc for the
            odd harmonics stayed the same with decreasing gain.<o:p></o:p=
></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">Decreasing the baseband amplitude had th=
e
            exact same effect. Even harmonics stayed at the same power
            level, odd harmonics decreased while maintaining dBc.<o:p></o=
:p></p>
        </blockquote>
        <p class=3D"MsoNormal">What is the nature of the modulating
          signal?<br>
          <br>
          If you use an example app like "tx_waveforms" with, let's say,
          10kHz SIN signal, what are the harmonic results?<br>
          <br>
          <br>
          <br>
          <o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech <a
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true">
                  &lt;patchvonbraun@gmail.com&gt;</a> <br>
                <b>Sent:</b> Monday, April 10, 2023 8:39 AM<br>
                <b>To:</b> Shenk, Trey E <a
                  href=3D"mailto:trey.shenk@pnnl.gov"
                  moz-do-not-send=3D"true">&lt;trey.shenk@pnnl.gov&gt;</a=
><br>
                <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Harmonic Distortion
                with B205mini<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div style=3D"border:none;border-left:solid #D77600
            6.0pt;padding:0in 0in 0in 0in;font-size:1.15rem">
            <p class=3D"MsoNormal"
              style=3D"text-align:center;background:#F7E3CC"
              align=3D"center">
              <span
                style=3D"font-family:&quot;Arial&quot;,sans-serif;color:b=
lack">Check
                twice before you click! This email originated from
                outside PNNL.</span><o:p></o:p></p>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">Turn down the RF gain a bit as well as
              the baseband amplitude. Does this make any difference?
              <o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">=C2=A0=
<o:p></o:p></p>
              <div>
                <p class=3D"MsoNormal">Sent from my iPhone<o:p></o:p></p>
              </div>
              <div>
                <p class=3D"MsoNormal"><br>
                  <br>
                  <br>
                  <o:p></o:p></p>
                <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt=
">
                  <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">O=
n
                    Apr 10, 2023, at 9:41 AM, Shenk, Trey E via
                    USRP-users &lt;<a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>&gt;
                    wrote:<o:p></o:p></p>
                </blockquote>
              </div>
              <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
                <div>
                  <p class=3D"MsoNormal">=EF=BB=BF <o:p></o:p></p>
                  <p style=3D"background:white"><span
                      style=3D"font-size:10.5pt;color:black">I'm using a
                      B205mini to transmit signals. When transmitting, I
                      can see copies of the SOI at harmonics of the
                      center frequency. I ran some measurements of total
                      harmonic distortion, and found it to range from
                      39% with a 100MHz to 23% with a 1GHz carrier.=C2=A0=
The
                      second harmonic is &lt;-50dBc, but the third
                      harmonic is usually around -10dBc.
                    </span><o:p></o:p></p>
                  <p style=3D"background:white;box-sizing:
                    border-box;font-variant-ligatures:
                    normal;font-variant-caps: normal;orphans:
                    2;text-align:start;widows:
                    2;-webkit-text-stroke-width:
                    0px;text-decoration-thickness:
                    initial;text-decoration-style:
                    initial;text-decoration-color:
                    initial;word-spacing:0px">
                    <span style=3D"font-size:10.5pt;color:black">My main
                      concern is for the lower frequency carriers, like
                      100MHz, because multiple harmonics will show up on
                      a spectrum analyzer set to a wideband. I've looked
                      at putting an RF filter at the output, but I need
                      the system to be able to switch transmit center
                      frequencies in a range from 100MHz to 5GHz.</span><=
o:p></o:p></p>
                  <p style=3D"background:white;box-sizing:
                    border-box;font-variant-ligatures:
                    normal;font-variant-caps: normal;orphans:
                    2;text-align:start;widows:
                    2;-webkit-text-stroke-width:
                    0px;text-decoration-thickness:
                    initial;text-decoration-style:
                    initial;text-decoration-color:
                    initial;word-spacing:0px">
                    <span style=3D"font-size:10.5pt;color:black">Is it
                      possible to reduce the harmonics by some hardware
                      setting (driving with gnruadio)?=C2=A0</span><o:p><=
/o:p></p>
                  <p style=3D"background:white;box-sizing:
                    border-box;font-variant-ligatures:
                    normal;font-variant-caps: normal;orphans:
                    2;text-align:start;widows:
                    2;-webkit-text-stroke-width:
                    0px;text-decoration-thickness:
                    initial;text-decoration-style:
                    initial;text-decoration-color:
                    initial;word-spacing:0px">
                    <span style=3D"font-size:10.5pt;color:black">Thanks,<=
br>
                      Trey</span><o:p></o:p></p>
                  <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
                  <div>
                    <p class=3D"MsoNormal">&lt;carrier_freqsweep_fc0200M_=
gain55.png&gt;<o:p></o:p></p>
                  </div>
                  <p class=3D"MsoNormal">________________________________=
_______________<br>
                    USRP-users mailing list -- <a
                      href=3D"mailto:usrp-users@lists.ettus.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a><br>
                    To unsubscribe send an email to <a
                      href=3D"mailto:usrp-users-leave@lists.ettus.com"
                      moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">
                      usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
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
--------------qqHQDyh2a1AeVPTPU380s72P
Content-Type: image/png; name="harmonic.png"
Content-Disposition: inline; filename="harmonic.png"
Content-Id: <part1.cDBGhznm.AvSqcfc8@comcast.net>
Content-Transfer-Encoding: base64

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
MjktMDc6MDDtrTxjAAAAAElFTkSuQmCC

--------------qqHQDyh2a1AeVPTPU380s72P--

--------------nF8J6CIsori4Gw3p9T6useLc--

--===============7216375360863054567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7216375360863054567==--
