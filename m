Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F416E3D28
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 03:14:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4843C383D87
	for <lists+usrp-users@lfdr.de>; Sun, 16 Apr 2023 21:14:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681694078; bh=JCb93bkLmzQj4jBCetlJAv8ADdjV8xOfWKc1asGOa4c=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=p965RDqK4rjfebcJiKIQ6k4xUG1I8eWmYWFLoRYX8++VZb3FnXgysECpeWgzWvaTH
	 n/C5dDfG35O9Bvjf9KN6WSGHJFxGbsseUbqU/+FO8D/s2GrymUIF6iVsT6PeGLC85D
	 OYVnHdyFNT1OLLRuZ4kcSZN/yysiSsGgxcjptua5C1kx56yixjysvXqRbSXB0WzuHE
	 rueK6iScVg4BJ5Q0Rf4KQhK9wOgczIXstHFSAFekgwZxN1oApfP8Q++PHs6wSF8jHG
	 Xs03d2VbZZPkTB+m/EG1STsqXS8PQEMR8D+FYkmZry6KaXps4mg3fYO8c54Nb9V6yo
	 0p5At4Xi55xyA==
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 85FD4380CE5
	for <usrp-users@lists.ettus.com>; Sun, 16 Apr 2023 21:14:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kuqv4pka";
	dkim-atps=neutral
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-54fbee98814so154775947b3.8
        for <usrp-users@lists.ettus.com>; Sun, 16 Apr 2023 18:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681694044; x=1684286044;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i5XqAJwf+VFoQ71UuYFeUEoPG4PoE1I9dZT4sNEDYi0=;
        b=kuqv4pkaoai39rDFDSf66A5hDH9uFrs8yJd1a5WDEiYIgyKudDnw9NrDV4dM3huyPa
         9Wvq3uPBGqHkYKT5HzlWUu9Eno1DNOh8DyvJwWGIltItjqm9/+479T6P7y/gbNuy6qAF
         UlkbGk+EipVEvs5oG/9eNDFeDR25aiyJYk5OJ2OaYRnGwtwgWmIQ/yIgifF5xZPnRzi0
         9hVCHlgAzHAegP8VUJtInQ7kK1MuRnB2olh51HXUWS77lpBg8GHC7+En90h44H7pDP0v
         07EXO8kvxhHhLqqqlwG/kwPNt8feHDi3ZjCgJds+0Sg2ortaGN/IEL4/g1MBQt9Ab6Ox
         YKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681694044; x=1684286044;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i5XqAJwf+VFoQ71UuYFeUEoPG4PoE1I9dZT4sNEDYi0=;
        b=aCblJzIY2B52pDpvJWYWkGgF4gpuAgiHcts8vXdjhmCMASaOv+VMztzAld/7IuMaoI
         6lmdD327jY7Lj3PrLgN2ReQnbhpNV/ADv3L3TKlvuIlLfqdoyJcyA8xwnPvWQZxx63xx
         nOlxFidYlDCzSjK2Dah4GR0AW48XlqKwR91YYXI3GxI6+6XkRwocBb4Fm0xoHpJJjttV
         fyeWkHdnFWHeEnanM6d4425uzE71AIT2pdcNVy98bLV7OFoOcJNUle0nvQxiXZU3j9rC
         NCOtSJrWjSSE0/gfy1xjybW72LQbiZpvolsmsDIjRBuSCB19C4CjYKwCjOU6TgYjpz3/
         b2oQ==
X-Gm-Message-State: AAQBX9ddwsVD6tCpiqRqsQq2/9D7gGqnsDo8tvG/XxJUHdXVbfj4Q19f
	1BPel6sBG3MgSi6gU7TBMLWZKZ+at4wJj5tLwr3KLPu1
X-Google-Smtp-Source: AKy350ZM5R5yKVjvhGOYBiQI40zJ9aK2l8OZWTZKWTz6GB6R4veanRbC71P+g/Z0Xs4qE1z7nOAtDHVCwBY4I42vxgU=
X-Received: by 2002:a81:4411:0:b0:54f:93c0:4ba8 with SMTP id
 r17-20020a814411000000b0054f93c04ba8mr8324552ywa.2.1681694043293; Sun, 16 Apr
 2023 18:14:03 -0700 (PDT)
MIME-Version: 1.0
References: <CO6PR09MB811819719BDAE76900DEF93AF9959@CO6PR09MB8118.namprd09.prod.outlook.com>
 <15820636-B0CB-4B9D-98DA-76820042D215@gmail.com> <CO6PR09MB8118AE8209619F8C193A4AA3F9959@CO6PR09MB8118.namprd09.prod.outlook.com>
 <569d3487-6006-c2f1-96d8-bb36f2f9017d@gmail.com> <CO6PR09MB8118363A6FFF3D1048730E38F99B9@CO6PR09MB8118.namprd09.prod.outlook.com>
 <5a1cfa23-f146-3511-b989-b84a9865712d@comcast.net> <f6e9abfc-e643-e1bc-6bfa-e7163e54668b@gmail.com>
In-Reply-To: <f6e9abfc-e643-e1bc-6bfa-e7163e54668b@gmail.com>
From: David Bengtson <david.bengtson@gmail.com>
Date: Sun, 16 Apr 2023 21:13:51 -0400
Message-ID: <CAN=AL9MBP=uONwAN0zaUAUpHqgdvpNcSQNzrdmrH68=4Dcxp3Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6HWCDVSMAGKVR3KXW56R6HX5CD2NJBRF
X-Message-ID-Hash: 6HWCDVSMAGKVR3KXW56R6HX5CD2NJBRF
X-MailFrom: david.bengtson@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Harmonic Distortion with B205mini
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6HWCDVSMAGKVR3KXW56R6HX5CD2NJBRF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4420981677721990932=="

--===============4420981677721990932==
Content-Type: multipart/related; boundary="0000000000001260c105f97de8b1"

--0000000000001260c105f97de8b1
Content-Type: multipart/alternative; boundary="0000000000001260c005f97de8b0"

--0000000000001260c005f97de8b0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, it's pretty typical that the output of an SDR needs additional
filtering and gain on the transmit side, and similarly filters and gain on
the receive side. I spent a substantial fraction of my time at a previous
job designing application specific front ends for Ettus SDR's.

Dave


On Wed, Apr 12, 2023 at 8:39=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 12/04/2023 20:28, Ron Economos wrote:
>
> This is what I see with a B210 at 145 MHz fundamental. I had the analyzer
> on a large RBW, so the even order harmonic are buried in the analyzer noi=
se.
>
> I don't think there's any remedy except for external filters.
>
> Ron
> [image: B210 harmonics]
>
> Thanks Ron.  That looks like what my TinySA produced for 250Mhz carrier.
> I need to learn more about it so that I can
>   record spectra with it.  There's a Linux app for it that I need to
> explore....
>
>
> Anyway, the basic issue, having consulted some older Analog Devices forum
> posts is that the LO produces a square-wave
>   signal, which means that all the odd-order harmonics will be present in
> it, and naturally, mix with the baseband.
>   There's nothing that can be done other than, as you point out, filter.
> As you move up in frequency, this becomes
>   very much easier of course, and at 2GHz, the 3rd harmonic is outside th=
e
> supported passband of the AD9361, and
>   you won't see it.
>
> I didn't realize this about the AD9361 chip, and other Ettus devices have
> automatically switchable filters that can
>   (often, not always) remediate this issue.  The E3xx series, the N3xx
> series, the TwinRX cards for the X310 and friends.
>
> But I'll point out again that "built for purpose" radios nearly-always
> have output (input) filtering to reduce or eliminate
>   unintended consequences of architecture choices deeper within the
> radio.   Since SDRs in general don't get to be
>   "built for purpose" either ever, or until some specific application is
> using them as their "radio bits", it's hard to come up
>   with a universal RF filtering scheme that is suitable for all
> applications.
>
> I'd never noticed this issue because I don't really ever TX in my "day
> job" use of these devices (radio astronomy), and on
>   the RX side, I always pre-filter anyway, usually rather aggressively.
>
>
> On 4/12/23 16:20, Shenk, Trey E via USRP-users wrote:
>
> The original signal that I showed was an unmodulated carrier.
>
> I tried a 10kHz complex exponential (plots included for several
> harmonics). The carrier is clearly visible at all frequencies. I can see
> copies of the 10kHz tone on odd multiples of the carrier, but not on the
> even multiples.
>
>
>
>
>
>
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> <patchvonbraun@gmail.com>
> *Sent:* Monday, April 10, 2023 10:22 PM
> *To:* Shenk, Trey E <trey.shenk@pnnl.gov> <trey.shenk@pnnl.gov>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Harmonic Distortion with B205mini
>
>
>
> On 10/04/2023 14:28, Shenk, Trey E wrote:
>
> I first tried turning the gain down. What I saw was that the even
> harmonics (2*fundamental, =E2=80=A6) did not change power, and the odd ha=
rmonics
> decreased by the same amount as the fundamental. This means that the dBc
> for the odd harmonics stayed the same with decreasing gain.
>
>
>
> Decreasing the baseband amplitude had the exact same effect. Even
> harmonics stayed at the same power level, odd harmonics decreased while
> maintaining dBc.
>
> What is the nature of the modulating signal?
>
> If you use an example app like "tx_waveforms" with, let's say, 10kHz SIN
> signal, what are the harmonic results?
>
>
>
>
>
>
>
> *From:* Marcus D Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com=
>
> *Sent:* Monday, April 10, 2023 8:39 AM
> *To:* Shenk, Trey E <trey.shenk@pnnl.gov> <trey.shenk@pnnl.gov>
> *Cc:* USRP-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Harmonic Distortion with B205mini
>
>
>
> Check twice before you click! This email originated from outside PNNL.
>
>
>
> Turn down the RF gain a bit as well as the baseband amplitude. Does this
> make any difference?
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
> On Apr 10, 2023, at 9:41 AM, Shenk, Trey E via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
>
> I'm using a B205mini to transmit signals. When transmitting, I can see
> copies of the SOI at harmonics of the center frequency. I ran some
> measurements of total harmonic distortion, and found it to range from 39%
> with a 100MHz to 23% with a 1GHz carrier. The second harmonic is <-50dBc,
> but the third harmonic is usually around -10dBc.
>
> My main concern is for the lower frequency carriers, like 100MHz, because
> multiple harmonics will show up on a spectrum analyzer set to a wideband.
> I've looked at putting an RF filter at the output, but I need the system =
to
> be able to switch transmit center frequencies in a range from 100MHz to
> 5GHz.
>
> Is it possible to reduce the harmonics by some hardware setting (driving
> with gnruadio)?
>
> Thanks,
> Trey
>
>
>
> <carrier_freqsweep_fc0200M_gain55.png>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001260c005f97de8b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, it&#39;s pretty typical that the output of an SD=
R needs additional filtering and gain on the transmit side, and similarly f=
ilters and gain on the receive side. I spent a substantial fraction of my t=
ime at a previous job designing application specific front ends for Ettus S=
DR&#39;s. <br><br></div><div>Dave</div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 12, 2023=
 at 8:39=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 12/04/2023 20:28, Ron Economos
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>This is what I see with a B210 at 145 MHz fundamental. I had
        the analyzer on a large RBW, so the even order harmonic are
        buried in the analyzer noise.</p>
      <p>I don&#39;t think there&#39;s any remedy except for external filte=
rs.</p>
      <p>Ron</p>
      <img src=3D"cid:1878cc4cbeff2f102e81" alt=3D"B210 harmonics" width=3D=
"800" height=3D"480">
      <div><br>
      </div>
    </blockquote>
    Thanks Ron.=C2=A0 That looks like what my TinySA produced for 250Mhz
    carrier.=C2=A0 I need to learn more about it so that I can<br>
    =C2=A0 record spectra with it.=C2=A0 There&#39;s a Linux app for it tha=
t I need to
    explore....<br>
    <br>
    <br>
    Anyway, the basic issue, having consulted some older Analog Devices
    forum posts is that the LO produces a square-wave<br>
    =C2=A0 signal, which means that all the odd-order harmonics will be
    present in it, and naturally, mix with the baseband.<br>
    =C2=A0 There&#39;s nothing that can be done other than, as you point ou=
t,
    filter.=C2=A0 As you move up in frequency, this becomes<br>
    =C2=A0 very much easier of course, and at 2GHz, the 3rd harmonic is
    outside the supported passband of the AD9361, and<br>
    =C2=A0 you won&#39;t see it.<br>
    <br>
    I didn&#39;t realize this about the AD9361 chip, and other Ettus device=
s
    have automatically switchable filters that can<br>
    =C2=A0 (often, not always) remediate this issue.=C2=A0 The E3xx series,=
 the
    N3xx series, the TwinRX cards for the X310 and friends.<br>
    <br>
    But I&#39;ll point out again that &quot;built for purpose&quot; radios
    nearly-always have output (input) filtering to reduce or eliminate<br>
    =C2=A0 unintended consequences of architecture choices deeper within th=
e
    radio.=C2=A0=C2=A0 Since SDRs in general don&#39;t get to be<br>
    =C2=A0 &quot;built for purpose&quot; either ever, or until some specifi=
c
    application is using them as their &quot;radio bits&quot;, it&#39;s har=
d to come
    up<br>
    =C2=A0 with a universal RF filtering scheme that is suitable for all
    applications.<br>
    <br>
    I&#39;d never noticed this issue because I don&#39;t really ever TX in =
my
    &quot;day job&quot; use of these devices (radio astronomy), and on<br>
    =C2=A0 the RX side, I always pre-filter anyway, usually rather
    aggressively.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div> </div>
      <div>On 4/12/23 16:20, Shenk, Trey E via
        USRP-users wrote:<br>
      </div>
      <blockquote type=3D"cite">
       =20
       =20
       =20
        <div>
          <p class=3D"MsoNormal">The original signal that I showed was an
            unmodulated carrier.<br>
            <br>
            I tried a 10kHz complex exponential (plots included for
            several harmonics). The carrier is clearly visible at all
            frequencies. I can see copies of the 10kHz tone on odd
            multiples of the carrier, but not on the even multiples.<u></u>=
<u></u></p>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <div>
            <div style=3D"border-color:rgb(225,225,225) currentcolor curren=
tcolor;border-style:solid none none;border-width:1pt medium medium;padding:=
3pt 0in 0in">
              <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech <a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">&lt;patchvonbraun@gma=
il.com&gt;</a>
                <br>
                <b>Sent:</b> Monday, April 10, 2023 10:22 PM<br>
                <b>To:</b> Shenk, Trey E <a href=3D"mailto:trey.shenk@pnnl.=
gov" target=3D"_blank">&lt;trey.shenk@pnnl.gov&gt;</a><br>
                <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Harmonic Distortion
                with B205mini<u></u><u></u></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <div>
            <p class=3D"MsoNormal">On 10/04/2023 14:28, Shenk, Trey E
              wrote:<u></u><u></u></p>
          </div>
          <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
            <p class=3D"MsoNormal">I first tried turning the gain down.
              What I saw was that the even harmonics (2*fundamental, =E2=80=
=A6)
              did not change power, and the odd harmonics decreased by
              the same amount as the fundamental. This means that the
              dBc for the odd harmonics stayed the same with decreasing
              gain.<u></u><u></u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">Decreasing the baseband amplitude had
              the exact same effect. Even harmonics stayed at the same
              power level, odd harmonics decreased while maintaining
              dBc.<u></u><u></u></p>
          </blockquote>
          <p class=3D"MsoNormal">What is the nature of the modulating
            signal?<br>
            <br>
            If you use an example app like &quot;tx_waveforms&quot; with, l=
et&#39;s
            say, 10kHz SIN signal, what are the harmonic results?<br>
            <br>
            <br>
            <br>
            <u></u><u></u></p>
          <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <div>
              <div style=3D"border-color:rgb(225,225,225) currentcolor curr=
entcolor;border-style:solid none none;border-width:1pt medium medium;paddin=
g:3pt 0in 0in">
                <p class=3D"MsoNormal"><b>From:</b> Marcus D Leech <a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">
                    &lt;patchvonbraun@gmail.com&gt;</a> <br>
                  <b>Sent:</b> Monday, April 10, 2023 8:39 AM<br>
                  <b>To:</b> Shenk, Trey E <a href=3D"mailto:trey.shenk@pnn=
l.gov" target=3D"_blank">&lt;trey.shenk@pnnl.gov&gt;</a><br>
                  <b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a><br>
                  <b>Subject:</b> Re: [USRP-users] Harmonic Distortion
                  with B205mini<u></u><u></u></p>
              </div>
            </div>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <div style=3D"border-color:currentcolor currentcolor currentcol=
or rgb(215,118,0);border-style:none none none solid;border-width:medium med=
ium medium 6pt;padding:0in;font-size:1.15rem">
              <p class=3D"MsoNormal" style=3D"text-align:center;background:=
rgb(247,227,204)" align=3D"center"> <span style=3D"font-family:&quot;Arial&=
quot;,sans-serif;color:black">Check
                  twice before you click! This email originated from
                  outside PNNL.</span><u></u><u></u></p>
            </div>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <div>
              <p class=3D"MsoNormal">Turn down the RF gain a bit as well
                as the baseband amplitude. Does this make any
                difference? <u></u><u></u></p>
              <div>
                <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">=C2=A0<=
u></u><u></u></p>
                <div>
                  <p class=3D"MsoNormal">Sent from my iPhone<u></u><u></u><=
/p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><br>
                    <br>
                    <br>
                    <u></u><u></u></p>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">On
                      Apr 10, 2023, at 9:41 AM, Shenk, Trey E via
                      USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<u></u><u></u></p>
                  </blockquote>
                </div>
                <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                  <div>
                    <p class=3D"MsoNormal">=EF=BB=BF <u></u><u></u></p>
                    <p style=3D"background:white"><span style=3D"font-size:=
10.5pt;color:black">I&#39;m using a
                        B205mini to transmit signals. When transmitting,
                        I can see copies of the SOI at harmonics of the
                        center frequency. I ran some measurements of
                        total harmonic distortion, and found it to range
                        from 39% with a 100MHz to 23% with a 1GHz
                        carrier.=C2=A0The second harmonic is &lt;-50dBc, bu=
t
                        the third harmonic is usually around -10dBc. </span=
><u></u><u></u></p>
                    <p style=3D"background:white;box-sizing:border-box;font=
-variant-ligatures:normal;font-variant-caps:normal;text-align:start;text-de=
coration-style:initial;text-decoration-color:initial;word-spacing:0px"> <sp=
an style=3D"font-size:10.5pt;color:black">My main
                        concern is for the lower frequency carriers,
                        like 100MHz, because multiple harmonics will
                        show up on a spectrum analyzer set to a
                        wideband. I&#39;ve looked at putting an RF filter a=
t
                        the output, but I need the system to be able to
                        switch transmit center frequencies in a range
                        from 100MHz to 5GHz.</span><u></u><u></u></p>
                    <p style=3D"background:white;box-sizing:border-box;font=
-variant-ligatures:normal;font-variant-caps:normal;text-align:start;text-de=
coration-style:initial;text-decoration-color:initial;word-spacing:0px"> <sp=
an style=3D"font-size:10.5pt;color:black">Is it
                        possible to reduce the harmonics by some
                        hardware setting (driving with gnruadio)?=C2=A0</sp=
an><u></u><u></u></p>
                    <p style=3D"background:white;box-sizing:border-box;font=
-variant-ligatures:normal;font-variant-caps:normal;text-align:start;text-de=
coration-style:initial;text-decoration-color:initial;word-spacing:0px"> <sp=
an style=3D"font-size:10.5pt;color:black">Thanks,<br>
                        Trey</span><u></u><u></u></p>
                    <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                    <div>
                      <p class=3D"MsoNormal">&lt;carrier_freqsweep_fc0200M_=
gain55.png&gt;<u></u><u></u></p>
                    </div>
                    <p class=3D"MsoNormal">________________________________=
_______________<br>
                      USRP-users mailing list -- <a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a href=3D"mailto:usr=
p-users-leave@lists.ettus.com" target=3D"_blank">
                        usrp-users-leave@lists.ettus.com</a><u></u><u></u><=
/p>
                  </div>
                </blockquote>
              </div>
            </div>
          </blockquote>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        </div>
        <br>
        <fieldset></fieldset>
        <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001260c005f97de8b0--

--0000000000001260c105f97de8b1
Content-Type: image/png; name="harmonic.png"
Content-Disposition: inline; filename="harmonic.png"
Content-Transfer-Encoding: base64
Content-ID: <1878cc4cbeff2f102e81>
X-Attachment-Id: 1878cc4cbeff2f102e81

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
AElFTkSuQmCC
--0000000000001260c105f97de8b1--

--===============4420981677721990932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4420981677721990932==--
