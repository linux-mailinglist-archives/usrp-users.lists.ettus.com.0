Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 258FD4967A1
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 22:57:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 622AA385C59
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 16:57:04 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xum4O7wZ";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 714A7384B56
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 16:56:09 -0500 (EST)
Received: by mail-qk1-f172.google.com with SMTP id 193so11470519qkh.13
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 13:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=mMX0XJ1tXuf/nw7S6dmPx3OvKFp24ykAtPcxKyoKbag=;
        b=Xum4O7wZ9AIrOFJt+FA6ei69otjtub1EkbYhM/y3Y2nYFze/zitaQjgsKf64SBOXo6
         hHNOrQ28wQjctDI2RTaCN6mtQ6yfBhvExOu4Qq+HDUazDZzAvRl274BGE/06mtBcyrmz
         VSvzWBfnLojym8giyxRc/Lsyg3RoGSipsPf7Pl9ybN3Minqh0+qQnE5uO2BZq8TG8aOl
         b07ypfWkmbnE7IG80oK2Ld1K/3uFtpUEiGLA3kS5gfruLfavTuA7A43Kq/1iDnoXEnt5
         obWKMddExGvvZsKRImoVC26dUBh0PMQ/nne3yOJR5UAM8Anr/yMsC7EhA4+1mMxGiV6q
         UC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=mMX0XJ1tXuf/nw7S6dmPx3OvKFp24ykAtPcxKyoKbag=;
        b=W0kT1qDnURRgMQVWBtVXgtM+mVV01EbUAH2ibSY9V/yt6YaXu+AGRn/3jpau1X8o6N
         GjS6xrnEbHi8BBD4y0CdK3RHjcf1dq7BIRc5H9TX+DfMluYjZ1xo7I8WHAutW1H1s7X4
         +c72Db24kjYRKz1YCwIXM8rPWqibQ/fonJZd0wL2cE+/2Shg5XG3fGUX0dcCMIKl0etG
         PC1w/+8W/uuzlTHjsH0yXDjh3SeCU2x6BUGKVxKMTy62XKwUZxcdNNrsO43l/csdqCb3
         kxgKYwb43oqZlbNOlj/Hb+9GYpVrs/U4HIdi7TQcAKrmNtnCyTN9oEmBBFL2csml0dwa
         ds0Q==
X-Gm-Message-State: AOAM530APshBt5p3mRb57I8bJXQdSp6ws/IOsqR+Rta0AHkgBktYyK5/
	lX50l7E6AufVdNbE2X0KuEo=
X-Google-Smtp-Source: ABdhPJxvDKMSVxJ4qu9h23zDEKx+o5h6bRQAZTD1lShA7sqoqVmRoKZeJnV68OsmQcHuCtRWiiN9jw==
X-Received: by 2002:a37:644f:: with SMTP id y76mr4258635qkb.164.1642802168845;
        Fri, 21 Jan 2022 13:56:08 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id y6sm4273442qkp.26.2022.01.21.13.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jan 2022 13:56:08 -0800 (PST)
Message-ID: <bc4e6aee-9904-6536-bb61-328bb50a9fb5@gmail.com>
Date: Fri, 21 Jan 2022 16:56:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Paul Atreides <maud.dib1984@gmail.com>
References: <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <C5BFBDFE-99E4-4876-86F7-475DA7A390D2@gmail.com>
 <CAB__hTSH33FEcE5Ry_=pb7ZtEWp=Q9bGc6_43Bd_2MJOQKOz0w@mail.gmail.com>
 <CACwKM9+5fFiF13kOaqaZu4b7o3eYYfQSwE0w0AuiKvLaLPxdEw@mail.gmail.com>
 <5c078dbf-1a27-39d9-a293-260a86e5cf51@gmail.com>
 <CACwKM9JZCwJmPF8ZudN9tyszLG+L0==PoniS4kPG+jSNpCYooA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACwKM9JZCwJmPF8ZudN9tyszLG+L0==PoniS4kPG+jSNpCYooA@mail.gmail.com>
Message-ID-Hash: PO3QWOQKZROM6YXPG6N67QHF7SZHQ77Y
X-Message-ID-Hash: PO3QWOQKZROM6YXPG6N67QHF7SZHQ77Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PO3QWOQKZROM6YXPG6N67QHF7SZHQ77Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0684047656919161679=="

This is a multi-part message in MIME format.
--===============0684047656919161679==
Content-Type: multipart/alternative;
 boundary="------------qjMYPf3HsLJqZWNMOzne7p06"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qjMYPf3HsLJqZWNMOzne7p06
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-21 16:52, Paul Atreides wrote:
> ok. is that just setting up 2 streamers to start at the same time?
Single sreamer, containing all your channels interleaved.=C2=A0=C2=A0 At =
least,=20
that's how the C++ API works.

I1Q1I2Q2=C2=A0=C2=A0=C2=A0 etc


>
> On Fri, Jan 21, 2022 at 4:50 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-01-21 16:46, Paul Atreides wrote:
>>     is there a way to incur a phase shift on one of the streams from
>>     the in-built UHD examples?
>>     the python API allows has
>>
>>     usrp.send_waveform(samples, duration, center_freq, sample_rate,
>>     [0,1],gain)
>>
>>     but this sends the same samples to both outputs. I've used this
>>     icommand in conjunction with the LO sharing options for the
>>     multi_usrp object to confirm the phase between channels
>>     i'd like to be able to apply some digital phase shift between the
>>     2 to test the level of control, hence all the gr-uhd questions.
>>
>>     any ideas or references?
>     You'll probably have to send samples yourself, with phase-offsets
>     between the two sample streams.
>
>
>>
>>     On Wed, Jan 19, 2022 at 9:41 AM Rob Kossler <rkossler@nd.edu> wrot=
e:
>>
>>         On Wed, Jan 19, 2022 at 1:00 AM Paul Atreides
>>         <maud.dib1984@gmail.com> wrote:
>>         >
>>         > Ok, so just circling back on this. Ive got a decent handle
>>         on the Python API. I=E2=80=99ve confirmed the LO signal comes =
out of
>>         the port once the splitter output is enabled.
>>         >
>>         > Rob you=E2=80=99re saying that for sure both channels need t=
o be
>>         external AND exported? making the settings:
>>         > TX 0:
>>         > LO source=C2=A0 =C2=A0 =C2=A0=3D external
>>         > LO Exported =3D true
>>         > TX 1:
>>         > LO source=C2=A0 =C2=A0 =C2=A0 =3D external
>>         > LO Exported =3D true
>>         Yes, except as you pointed out below, LO Exported for Tx1 is n=
ot
>>         needed and likely does nothing.
>>
>>         >
>>         > Radio #0 TX LO OUT 0=C2=A0 =3D enabled
>>         > Radio #1 TX LO OUT=C2=A0 1 =3D enabled (for debug)
>>         > (When I set These they turn on the lights for the LO outs)
>>         >
>>         > The front panel cable should connect TX LO output 0 to TX
>>         LO Input 1
>>         Yes
>>
>>         >
>>         > Like you said, According to the block diagram, the TX LO
>>         input 1 should connect both channels to the 1x2 splitter so I
>>         should only need 1 LO output turned on.=C2=A0 Id like to point=
 out
>>         that in the block diagram it also doesn=E2=80=99t look like it=
=E2=80=99s
>>         possible to export channel 1=E2=80=99s LO. The only connection=
 in the
>>         diagram is internal.
>>
>>         Yes, Somewhere in the Ettus documentation, it indicates that
>>         this is
>>         the case (I've forgotten where).
>>
>>         >
>>         > Am I missing something? Have you gotten this to work?
>>         Yes, I have been using this in a 16x16 system with 8 N321
>>         devices all
>>         connected by a single LO (arbitrarily chosen LO export channel
>>         distributed to both Tx and Rx LO inputs). I've also tested it =
on
>>         smaller systems as small as 4x4 (and possibly 2x2 like your
>>         case, but
>>         not positive on this).
>>
>

--------------qjMYPf3HsLJqZWNMOzne7p06
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-21 16:52, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9JZCwJmPF8ZudN9tyszLG+L0=3D=3DPoniS4kPG+jSNpCYooA@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">ok. is that just setting up 2 streamers to start a=
t
        the same time?<br>
      </div>
    </blockquote>
    Single sreamer, containing all your channels interleaved.=C2=A0=C2=A0=
 At
    least, that's how the C++ API works.<br>
    <br>
    I1Q1I2Q2=C2=A0=C2=A0=C2=A0 etc<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CACwKM9JZCwJmPF8ZudN9tyszLG+L0=3D=3DPoniS4kPG+jSNpCYooA@mail.=
gmail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 21, 2022 at 4:5=
0
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-01-21 16:46, Paul Atreides wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>
                  <div>
                    <div>is there a way to incur a phase shift on one of
                      the streams from the in-built UHD examples?<br>
                    </div>
                    the python API allows has <br>
                    <br>
                    usrp.send_waveform(samples, duration, center_freq,
                    sample_rate, [0,1],gain) <br>
                    <br>
                    but this sends the same samples to both outputs.
                    I've used this icommand in conjunction with the LO
                    sharing options for the multi_usrp object to confirm
                    the phase between channels<br>
                  </div>
                  i'd like to be able to apply some digital phase shift
                  between the 2 to test the level of control, hence all
                  the gr-uhd questions.<br>
                  <br>
                </div>
                <div>any ideas or references?<br>
                </div>
              </div>
            </blockquote>
            You'll probably have to send samples yourself, with
            phase-offsets between the two sample streams.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 19, 202=
2
                  at 9:41 AM Rob Kossler &lt;<a
                    href=3D"mailto:rkossler@nd.edu" target=3D"_blank"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">rkossler@nd.edu</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On Wed, Jan 19,
                  2022 at 1:00 AM Paul Atreides &lt;<a
                    href=3D"mailto:maud.dib1984@gmail.com" target=3D"_bla=
nk"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">maud.dib1984@gmail.com</a>&gt;
                  wrote:<br>
                  &gt;<br>
                  &gt; Ok, so just circling back on this. Ive got a
                  decent handle on the Python API. I=E2=80=99ve confirmed=
 the LO
                  signal comes out of the port once the splitter output
                  is enabled.<br>
                  &gt;<br>
                  &gt; Rob you=E2=80=99re saying that for sure both chann=
els
                  need to be external AND exported? making the settings:<=
br>
                  &gt; TX 0:<br>
                  &gt; LO source=C2=A0 =C2=A0 =C2=A0=3D external<br>
                  &gt; LO Exported =3D true<br>
                  &gt; TX 1:<br>
                  &gt; LO source=C2=A0 =C2=A0 =C2=A0 =3D external<br>
                  &gt; LO Exported =3D true<br>
                  Yes, except as you pointed out below, LO Exported for
                  Tx1 is not<br>
                  needed and likely does nothing.<br>
                  <br>
                  &gt;<br>
                  &gt; Radio #0 TX LO OUT 0=C2=A0 =3D enabled<br>
                  &gt; Radio #1 TX LO OUT=C2=A0 1 =3D enabled (for debug)=
<br>
                  &gt; (When I set These they turn on the lights for the
                  LO outs)<br>
                  &gt;<br>
                  &gt; The front panel cable should connect TX LO output
                  0 to TX LO Input 1<br>
                  Yes<br>
                  <br>
                  &gt;<br>
                  &gt; Like you said, According to the block diagram,
                  the TX LO input 1 should connect both channels to the
                  1x2 splitter so I should only need 1 LO output turned
                  on.=C2=A0 Id like to point out that in the block diagra=
m it
                  also doesn=E2=80=99t look like it=E2=80=99s possible to=
 export channel
                  1=E2=80=99s LO. The only connection in the diagram is
                  internal.<br>
                  <br>
                  Yes, Somewhere in the Ettus documentation, it
                  indicates that this is<br>
                  the case (I've forgotten where).<br>
                  <br>
                  &gt;<br>
                  &gt; Am I missing something? Have you gotten this to
                  work?<br>
                  Yes, I have been using this in a 16x16 system with 8
                  N321 devices all<br>
                  connected by a single LO (arbitrarily chosen LO export
                  channel<br>
                  distributed to both Tx and Rx LO inputs). I've also
                  tested it on<br>
                  smaller systems as small as 4x4 (and possibly 2x2 like
                  your case, but<br>
                  not positive on this).<br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------qjMYPf3HsLJqZWNMOzne7p06--

--===============0684047656919161679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0684047656919161679==--
