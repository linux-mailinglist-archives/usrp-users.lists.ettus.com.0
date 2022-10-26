Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7325560EA55
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 22:38:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 834FE3812C5
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 16:38:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666816727; bh=5PQQLdZFkU7ssRUQR5k9xziDaOq+uXRdRU1NBxLZICg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=t4xO3RfVEXDdmwDJHWvpEeXW2erDjul5TrTKY8g+O6BiuK+bB2mnUMzM3k9r7DGAW
	 kf0YFR+xcjKaGPeyrCSI1MQcElqiQABiDSV1JYVhfhd8GmcJ8XPQm6SJNW9U2p1/1k
	 3/BcOsS5rmuIRTAgkh+VE0snPnDjUcvTts7NGhtbwxCDEQqR2rgIlUZEaFijOfT0Qo
	 jUvumyb+XhOKMtXedZx5QMlUP9mMKdmcWqU66f72iO/2+XYaYDTNvkmVWo7znBtJ3r
	 rn7oaerBX9WohEW6PFSUnIzEcRUsV7z3xX1pK4v2H9RiP7zprIe7WSSbDNQ8xkXw+9
	 sgfBUr+zm1j1w==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 30291380EDD
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 16:37:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XFZZciiB";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id z6so3047351qtv.5
        for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 13:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w25Hdwsf2oWEAJVnsU31ncuaxMCo7cukGnOk2YqUJjw=;
        b=XFZZciiBA2NGos3AsL4qNnPtQxQhNqAaQWOBGqNkiPr8HzvhtvLlibO4WTw03NZ2AG
         5NPl2nSd15EHu9TkGbdcH4jgDMQC0gq7PQkrXEcxqvpIS4Ye4GElna2OJ9SSDAJRi53a
         sEwjh+gdocgzaZEpYZxpRd/bTAN9zluPhGx59L5BdcEEjurCvI3AH6YpIMQfutNpOUv/
         m9y4nRdA3aaGOIVjzTi+4TMtPYg42svkccjzyNhf4UOwMizNwmw+R61ixLN8IixT4dOq
         s+2bSWueS5yZVRqYgIF0hDHa2TlbreYOrNf/JXOp4BCpCVZGC0MppcC56b2+x0ireKdb
         xBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w25Hdwsf2oWEAJVnsU31ncuaxMCo7cukGnOk2YqUJjw=;
        b=mBf8Ec9JfDZ8T2YrZSHg3syk5exQs+p1XEXBUdZMuk0SZYxonbdD0zFuSYGT4H+cfk
         pznZ++NawB93r7/1HXDFO7XRD8cr7ksG/9plQUNHH1ZfS55Sd4njFg4v1SwaK4dKgWjm
         QC0WO0/1R4lGcd3ufzSA2YsnFRoiI52xLjeyD0i7NSJ/5NXDNZSA4VJ4WCvrQskBp6to
         s6BoxP7Jvx7M28feSD3/NZe/shG9484UWz2V2fVhJQoB1qxxeULabcb/Rwp0b4asZp5c
         4MQDPqK0g/M3X289tMKk7AXGD/eiciGfYHcXi+6H+ll4Z8A3DNUj9mZvUIQf4Sp3bbEG
         QZNQ==
X-Gm-Message-State: ACrzQf1mbm6vMlu/gQ/efSWbcQILR2EjZTp2hAxi8wZVkUGqGqy8lQR3
	ZN4kf7RrSrD6CBlWW13PsMBlOWseDXw=
X-Google-Smtp-Source: AMsMyM7DZUvpN1bETTfn2gF81dEZckLO/17IM5eYM5jpx0Y0vk1DJjFTzZhCR0xbGnDxYVhNyO5PBQ==
X-Received: by 2002:a05:622a:14d:b0:39c:c531:2506 with SMTP id v13-20020a05622a014d00b0039cc5312506mr38199294qtw.13.1666816620343;
        Wed, 26 Oct 2022 13:37:00 -0700 (PDT)
Received: from [192.168.2.174] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id f14-20020a05620a280e00b006eec09eed39sm4556837qkp.40.2022.10.26.13.36.59
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 13:36:59 -0700 (PDT)
Message-ID: <9dd49f51-866e-fcf6-d64f-669cbda32c33@gmail.com>
Date: Wed, 26 Oct 2022 16:36:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
 <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
 <CAEXYVK5nnW0xt=EOpMT-G_13FkWZSPs4d9w29J+RVgdtBDS4SQ@mail.gmail.com>
 <CAOcXSJxfY+_0RmMWri6Zxg_pd0MHe-TMPY1iLdgprKw_g0pXpA@mail.gmail.com>
 <CAEXYVK7j70E=3R+kLuuhKVOTa39S+ra_Ux4aUb4QgqwR-+cLDQ@mail.gmail.com>
 <CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmail.com>
Message-ID-Hash: FONCPTNN3JJ4Q4HNCDKSVWDM4C2RYC4H
X-Message-ID-Hash: FONCPTNN3JJ4Q4HNCDKSVWDM4C2RYC4H
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FONCPTNN3JJ4Q4HNCDKSVWDM4C2RYC4H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5098708398329664403=="

This is a multi-part message in MIME format.
--===============5098708398329664403==
Content-Type: multipart/alternative;
 boundary="------------5ZUf9EThfJbSpxd8oUrkhjKn"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5ZUf9EThfJbSpxd8oUrkhjKn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-26 16:03, Brian Padalino wrote:
> After a bunch of testing, I ended up with the following solution which=20
> seems to have fixed the vast majority of the issue.=C2=A0 There's still=
=20
> extra noise, but not nearly as bad as it was previously so I'd=20
> appreciate it if Ettus still looked into a more complete solution.
>
> For now, I just enabled the "mute till lock detect" feature of the=20
> ADF5356 and ADF4351 PLLs.=C2=A0 I modified gen_adf5356_regs.py and=20
> gen_adf4351_regs.py to default it to be on, and the ld_cyc_count to be=20
> the longest possible.
>
> Brian
Hmm, interesting.=C2=A0 This is basically a "smoking gun" that it's the=20
actual synthesizer outputs, rather than some digital signalling--
 =C2=A0 which you'd previously all-but-eliminated.

Interestingly, the switches used on the synthesizer outputs are=20
high-isolation, non-reflective switches, providing about
 =C2=A0 60dB of port-to-port isolation, and terminating the=20
switched-away-from port to reduce tendency for lines to radiate.
 =C2=A0 I'm kind of getting lost in the schematic, but I wonder if there'=
s a=20
case where the switches are actually in the wrong state?

My guess is that if this is a "sneak path" issue, it will require a=20
hardware rev to fix, but if it's just a combination of
 =C2=A0 muting the synthesizers during tuning, combined, perhaps, with a=20
slightly-wrong truth table for the various RF switches
 =C2=A0 in the design, that's just software.


>
> On Wed, Oct 26, 2022 at 9:38 AM Brian Padalino <bpadalino@gmail.com>=20
> wrote:
>
>     Hey Wan,
>
>     On Tue, Oct 25, 2022 at 10:53 PM Wan Liu <wan.liu@ettus.com> wrote:
>
>         Hello Brian,
>
>         Thank you for the additional information.
>
>         Regarding=C2=A0 #6, I meant that if you have two TwinRX
>         daughterboards, see if you get this problem when the fixed
>         channel is on one daughterboard, and the tuned channel is on
>         the other.
>
>
>     Ah, I see.=C2=A0 Unfortunately my setup is a mixed USB/TwinRX setup=
 so
>     maybe it isn't exactly testing what you're asking for, but I did
>     use the subdev spec to target the UBX RX2 for hopping around, and
>     the TwinRX Channel 0 was fixed.=C2=A0 In this case, the fixed spect=
rum
>     stayed nice and clean the whole time.
>
>
>         Regarding screenshots, are you referring to any particular
>         frequency and time region, or is everything above the noise
>         floor associated with the tuning? In other words, is the clean
>         spectrum where there is nothing above the noise floor in both
>         time and frequency plots?
>
>
>     The captures were taken with terminated RF inputs. Channel 0 of
>     the TwinRX was fixed at some frequency (I believe 400 MHz) and
>     Channel 1 was hopping around.=C2=A0 The recording was observing Cha=
nnel
>     0 - the fixed frequency channel.=C2=A0 When no hopping happens, the=
re
>     is clean spectrum with just a noise floor which is what I expected
>     to see.=C2=A0 When hopping is happening, every so often we will see
>     these sweeping signals show up.=C2=A0 They last around 10 ms or so =
and
>     then the spectrum is back to being clean.
>
>
>         Also can you explain what you mean by "shows some analog
>         PLL-style locking for around 10 ms of time, then goes away"?
>         Are you referring to the burst from 3 ms to 13 ms, or
>         something specifically at 10 ms?
>
>
>     I meant the phenomenon that starts at around 3 ms and lasts until
>     around 13 ms.=C2=A0 It looks like an analog PLL settling to me.=C2=A0=
 Here
>     is a zoomed in version:
>
>     https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/v=
iew?usp=3Dsharing
>
>
>         Lastly, what are your spectrogram parameters to generate the
>         waterfall?
>
>
>     I am using an FFT size of 2048 with a blackmanharris window of the
>     same size, and overlapping by 1024.=C2=A0 My MATLAB command is:
>
>     =C2=A0=C2=A0spectrogram(slice, blackmanharris(2048), 1024, 2048, 50=
e6,
>     'centered');
>
>
>         I'll reach out again after I attempt to reproduce.
>
>
>     Sounds good.=C2=A0 Let me know if you need any other data or
>     clarifications on what I am seeing.
>
>     Thanks,
>     Brian
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------5ZUf9EThfJbSpxd8oUrkhjKn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-26 16:03, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">After a bunch of testing, I ended up with the
        following solution which seems to have fixed the vast majority
        of the issue.=C2=A0 There's still extra noise, but not nearly as =
bad
        as it was previously so I'd appreciate it if Ettus still looked
        into a more complete solution.
        <div><br>
        </div>
        <div>For now, I just enabled the "mute till lock detect" feature
          of the ADF5356 and ADF4351 PLLs.=C2=A0 I modified
          gen_adf5356_regs.py and gen_adf4351_regs.py to default it to
          be on, and the ld_cyc_count to be the longest possible.</div>
        <div><br>
        </div>
        <div>Brian</div>
      </div>
    </blockquote>
    Hmm, interesting.=C2=A0 This is basically a "smoking gun" that it's t=
he
    actual synthesizer outputs, rather than some digital signalling--<br>
    =C2=A0 which you'd previously all-but-eliminated.<br>
    <br>
    Interestingly, the switches used on the synthesizer outputs are
    high-isolation, non-reflective switches, providing about<br>
    =C2=A0 60dB of port-to-port isolation, and terminating the
    switched-away-from port to reduce tendency for lines to radiate.<br>
    =C2=A0 I'm kind of getting lost in the schematic, but I wonder if the=
re's
    a case where the switches are actually in the wrong state?<br>
    <br>
    My guess is that if this is a "sneak path" issue, it will require a
    hardware rev to fix, but if it's just a combination of<br>
    =C2=A0 muting the synthesizers during tuning, combined, perhaps, with=
 a
    slightly-wrong truth table for the various RF switches<br>
    =C2=A0 in the design, that's just software.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 26, 2022 at 9:3=
8
          AM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">bpad=
alino@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <div dir=3D"ltr">Hey Wan,</div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 25, 2022 =
at
                10:53 PM Wan Liu &lt;<a href=3D"mailto:wan.liu@ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">wan.liu@ettus.com</a>&g=
t;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div>
                    <div>
                      <div>Hello Brian,<br>
                        <br>
                      </div>
                      Thank you for the additional information. <br>
                      <br>
                    </div>
                    Regarding=C2=A0 #6, I meant that if you have two Twin=
RX
                    daughterboards, see if you get this problem when the
                    fixed channel is on one daughterboard, and the tuned
                    channel is on the other.</div>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>Ah, I see.=C2=A0 Unfortunately my setup is a mixed
                USB/TwinRX setup so maybe it isn't exactly testing what
                you're asking for, but I did use the subdev spec to
                target the UBX RX2 for hopping around, and the TwinRX
                Channel 0 was fixed.=C2=A0 In this case, the fixed spectr=
um
                stayed nice and clean the whole time.</div>
              <div>=C2=A0</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div><br>
                  </div>
                  Regarding screenshots, are you referring to any
                  particular frequency and time region, or is everything
                  above the noise floor associated with the tuning? In
                  other words, is the clean spectrum where there is
                  nothing above the noise floor in both time and
                  frequency plots?<br>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>The captures were taken with terminated RF inputs.=C2=A0
                Channel 0 of the TwinRX was fixed at some frequency (I
                believe 400 MHz) and Channel 1 was hopping around.=C2=A0 =
The
                recording was observing Channel 0 - the fixed frequency
                channel.=C2=A0 When no hopping happens, there is clean
                spectrum with just a noise floor which is what I
                expected to see.=C2=A0 When hopping is happening, every s=
o
                often we will see these sweeping signals show up.=C2=A0 T=
hey
                last around 10 ms or so and then the spectrum is back to
                being clean.</div>
              <div>=C2=A0</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div><br>
                  </div>
                  <div>Also can you explain what you mean by "shows some
                    analog PLL-style locking for around 10 ms of time,
                    then goes away"? Are you referring to the burst from
                    3 ms to 13 ms, or something specifically at 10 ms?<br=
>
                  </div>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>I meant the phenomenon that starts at around 3 ms and
                lasts until around 13 ms.=C2=A0 It looks like an analog P=
LL
                settling to me.=C2=A0 Here is a zoomed in version:</div>
              <div><br>
              </div>
              <div>=C2=A0=C2=A0<a
href=3D"https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ=
/view?usp=3Dsharing"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">https://drive.google.co=
m/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=3Dsharing</a></div>
              <div>=C2=A0</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div><br>
                  </div>
                  <div>Lastly, what are your spectrogram parameters to
                    generate the waterfall?<br>
                  </div>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>I am using an FFT size of 2048 with a blackmanharris
                window of the same size, and overlapping by 1024.=C2=A0 M=
y
                MATLAB command is:</div>
              <div><br>
              </div>
              <div>=C2=A0=C2=A0spectrogram(slice, blackmanharris(2048), 1=
024,
                2048, 50e6, 'centered');</div>
              <div>=C2=A0</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div><br>
                  </div>
                  <div>I'll reach out again after I attempt to
                    reproduce.<br>
                  </div>
                </div>
              </blockquote>
              <div><br>
              </div>
              <div>Sounds good.=C2=A0 Let me know if you need any other d=
ata
                or clarifications on what I am seeing.</div>
              <div><br>
              </div>
              <div>Thanks,</div>
              <div>Brian</div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div class=3D"gmail_quote">
                  <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px
                    0px 0.8ex;border-left:1px solid
                    rgb(204,204,204);padding-left:1ex">
                  </blockquote>
                </div>
              </blockquote>
            </div>
          </div>
        </blockquote>
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
    <br>
  </body>
</html>

--------------5ZUf9EThfJbSpxd8oUrkhjKn--

--===============5098708398329664403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5098708398329664403==--
