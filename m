Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A71B496821
	for <lists+usrp-users@lfdr.de>; Sat, 22 Jan 2022 00:15:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF8B43856DB
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 18:15:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZnvhRKxV";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id CD64C384A6E
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 18:14:28 -0500 (EST)
Received: by mail-qv1-f50.google.com with SMTP id o9so8206171qvy.13
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 15:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=75dEoShEiYuLm1VGgUEgiU2Dnnd/O+Wg3jt5qIeo8aE=;
        b=ZnvhRKxVOK73Os/6jczYuatHVdnSdrsIVmADoxDKkIYpOlHUJagYS02LJj4qwj+VXb
         g0o/OFaLj9BsmV7YJnmdt2h9867q8I4olbQ5aDjHi3ciVF8sPwRJU6iBFNtIFsH4DYjS
         R7NaX0fYGNaswAlPqpG00gEN/d14P4hDEwDjZxzjU3gTikWY+wgIb17IdokC29Y+AmP5
         lxl3uYCBmzVx1B0CCpS9+E2D2/7cVT9X+9U6RVIgaH5cGC7WqTuqfOuaafvZ8jgVJwOA
         a+BdSOwogZ/llSuUEg7nbyLvvcLNe8OyO7TYLmrq+h/ff4Fe0r249bASDUKH+I6iuWe7
         SY2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=75dEoShEiYuLm1VGgUEgiU2Dnnd/O+Wg3jt5qIeo8aE=;
        b=fKI1wNcIVJjIIrmXPNIdH4W7U58PMSJRT3BjEzpGRqq/TIU9uBvVnn1bNSxlSk16YG
         5ZQlkSUru/CVRETNIFDvVWd0yyjcKCaz+Th8FRw29gCNJisRcP5Nq/0+m7IcEE6WI5el
         5P9XrAkzgzsv7xBJak5GJS8xH4KlmN5364UZ8pZyazJT7bbTWbMKOXfAi2+4+H8W7PFZ
         domJiEogS0OzC5PTbqKbnYwpJEyFCj25ew78uoTQ0cNE19skoldUA4L0KRuIhSqWvUtl
         Jm1qc9MVQryV06aQ4HlpDXYMZrg7OTaaYuZFGBewoiyeGCGgHLPfTQO/CaUIZSzcH2qy
         MVEw==
X-Gm-Message-State: AOAM530nSk1iPU44yPoV1lJD8OE0tqfbwQLbcrGseJqEHEQ5Ko8kKnxi
	h/BXHB4fcVXR8FyuA1O98l4f8JOgEJA=
X-Google-Smtp-Source: ABdhPJyXyUDXKn7ORC/bqGhVq5+huWi6Q9glRF/kgXjFq4CI+NCzGmD+H1flWCuVEKvY++2DN9k9Rg==
X-Received: by 2002:a05:6214:529c:: with SMTP id kj28mr519932qvb.101.1642806867998;
        Fri, 21 Jan 2022 15:14:27 -0800 (PST)
Received: from smtpclient.apple (mobile-166-171-58-143.mycingular.net. [166.171.58.143])
        by smtp.gmail.com with ESMTPSA id b200sm3560315qkc.50.2022.01.21.15.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jan 2022 15:14:27 -0800 (PST)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 21 Jan 2022 18:14:23 -0500
Message-Id: <32705FC9-E371-49FB-BD03-592A6FA9E53D@gmail.com>
References: <c0ea3dc8-726e-2088-492f-844dcc21d985@gmail.com>
In-Reply-To: <c0ea3dc8-726e-2088-492f-844dcc21d985@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (19B74)
Message-ID-Hash: KJ7YQQHSDO2AGYPH33BL4RE2FLNAQIVO
X-Message-ID-Hash: KJ7YQQHSDO2AGYPH33BL4RE2FLNAQIVO
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KJ7YQQHSDO2AGYPH33BL4RE2FLNAQIVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5550822241812824643=="


--===============5550822241812824643==
Content-Type: multipart/alternative; boundary=Apple-Mail-579251BD-045B-48D0-89C6-2A355D6625A0
Content-Transfer-Encoding: 7bit


--Apple-Mail-579251BD-045B-48D0-89C6-2A355D6625A0
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

We=E2=80=99re in the same boat there for sure!
Yeah, I saw there was some pretty bold things happening in there (rounding a=
nd such). I had wondered about sending a 2-D array.=20

I will try to do more with the Python next week.

Good news is, At the moment  i have observed only a very small amount of ins=
tantaneous phase error over a short amount of time. Which reflects the graph=
s in the N321 docs.=20
Obviously that doesn=E2=80=99t count for temperature fluctuation or extended=
 runtime effects, but it=E2=80=99s a start!

Thanks for the help.=20

<end transmission>

> On Jan 21, 2022, at 17:17, Marcus D. Leech <patchvonbraun@gmail.com> wrote=
:
>=20
> =EF=BB=BF
> On 2022-01-21 16:52, Paul Atreides wrote:
>> ok. is that just setting up 2 streamers to start at the same time?
>>=20
> =46rom looking at the code, I *THINK* that if you send it a 2D numpy array=
 the rows represent the channels.
>=20
> The "send_waveform" API is Python-API only, and does a fair amount of danc=
ing-around to "make things just work"
>   even if you only send a 1D wave-form array.
>=20
> But, of course, I cannot find any documentation on it, just looking at the=
 code.
>=20
>=20
>> On Fri, Jan 21, 2022 at 4:50 PM Marcus D. Leech <patchvonbraun@gmail.com>=
 wrote:
>>> On 2022-01-21 16:46, Paul Atreides wrote:
>>>> is there a way to incur a phase shift on one of the streams from the in=
-built UHD examples?
>>>> the python API allows has=20
>>>>=20
>>>> usrp.send_waveform(samples, duration, center_freq, sample_rate, [0,1],g=
ain)=20
>>>>=20
>>>> but this sends the same samples to both outputs. I've used this icomman=
d in conjunction with the LO sharing options for the multi_usrp object to co=
nfirm the phase between channels
>>>> i'd like to be able to apply some digital phase shift between the 2 to t=
est the level of control, hence all the gr-uhd questions.
>>>>=20
>>>> any ideas or references?
>>> You'll probably have to send samples yourself, with phase-offsets betwee=
n the two sample streams.
>>>=20
>>>=20
>>>>=20
>>>> On Wed, Jan 19, 2022 at 9:41 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>> On Wed, Jan 19, 2022 at 1:00 AM Paul Atreides <maud.dib1984@gmail.com>=
 wrote:
>>>>> >
>>>>> > Ok, so just circling back on this. Ive got a decent handle on the Py=
thon API. I=E2=80=99ve confirmed the LO signal comes out of the port once th=
e splitter output is enabled.
>>>>> >
>>>>> > Rob you=E2=80=99re saying that for sure both channels need to be ext=
ernal AND exported? making the settings:
>>>>> > TX 0:
>>>>> > LO source     =3D external
>>>>> > LO Exported =3D true
>>>>> > TX 1:
>>>>> > LO source      =3D external
>>>>> > LO Exported =3D true
>>>>> Yes, except as you pointed out below, LO Exported for Tx1 is not
>>>>> needed and likely does nothing.
>>>>>=20
>>>>> >
>>>>> > Radio #0 TX LO OUT 0  =3D enabled
>>>>> > Radio #1 TX LO OUT  1 =3D enabled (for debug)
>>>>> > (When I set These they turn on the lights for the LO outs)
>>>>> >
>>>>> > The front panel cable should connect TX LO output 0 to TX LO Input 1=

>>>>> Yes
>>>>>=20
>>>>> >
>>>>> > Like you said, According to the block diagram, the TX LO input 1 sho=
uld connect both channels to the 1x2 splitter so I should only need 1 LO out=
put turned on.  Id like to point out that in the block diagram it also doesn=
=E2=80=99t look like it=E2=80=99s possible to export channel 1=E2=80=99s LO.=
 The only connection in the diagram is internal.
>>>>>=20
>>>>> Yes, Somewhere in the Ettus documentation, it indicates that this is
>>>>> the case (I've forgotten where).
>>>>>=20
>>>>> >
>>>>> > Am I missing something? Have you gotten this to work?
>>>>> Yes, I have been using this in a 16x16 system with 8 N321 devices all
>>>>> connected by a single LO (arbitrarily chosen LO export channel
>>>>> distributed to both Tx and Rx LO inputs). I've also tested it on
>>>>> smaller systems as small as 4x4 (and possibly 2x2 like your case, but
>>>>> not positive on this).
>>>=20
>=20

--Apple-Mail-579251BD-045B-48D0-89C6-2A355D6625A0
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>We=E2=80=99re in the same boat there f=
or sure!</div><div>Yeah, I saw there was some pretty bold things happening i=
n there (rounding and such). I had wondered about sending a 2-D array.&nbsp;=
</div><div><br></div><div>I will try to do more with the Python next week.</=
div><div><br></div><div>Good news is, At the moment &nbsp;i have observed on=
ly a very small amount of instantaneous phase error over a short amount of t=
ime. Which reflects the graphs in the N321 docs.&nbsp;</div><div>Obviously t=
hat doesn=E2=80=99t count for temperature fluctuation or extended runtime ef=
fects, but it=E2=80=99s a start!</div><div><br></div><div>Thanks for the hel=
p.&nbsp;</div><div><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span"=
 style=3D"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-c=
omposition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-fr=
ame-color: rgba(77, 128, 180, 0.230469); ">end transmission&gt;</span></div>=
<div dir=3D"ltr"><br><blockquote type=3D"cite">On Jan 21, 2022, at 17:17, Ma=
rcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"=
>
 =20
 =20
    <div class=3D"moz-cite-prefix">On 2022-01-21 16:52, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CACwKM9JZCwJmPF8ZudN9tyszLG+L0=3D=3D=
PoniS4kPG+jSNpCYooA@mail.gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-=
8">
      <div dir=3D"ltr">ok. is that just setting up 2 streamers to start at
        the same time?<br>
      </div>
      <br>
    </blockquote>
    =46rom looking at the code, I *THINK* that if you send it a 2D numpy
    array the rows represent the channels.<br>
    <br>
    The "send_waveform" API is Python-API only, and does a fair amount
    of dancing-around to "make things just work"<br>
    &nbsp; even if you only send a 1D wave-form array.<br>
    <br>
    But, of course, I cannot find any documentation on it, just looking
    at the code.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:CACwKM9JZCwJmPF8ZudN9tyszLG+L0=3D=3D=
PoniS4kPG+jSNpCYooA@mail.gmail.com">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 21, 2022 at 4:50
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" m=
oz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patchvonbraun@gmail.=
com</a>&gt;
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
                <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 19, 2022
                  at 9:41 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.e=
du" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetex=
t">rkossler@nd.edu</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">On Wed, Jan 19,
                  2022 at 1:00 AM Paul Atreides &lt;<a href=3D"mailto:maud.d=
ib1984@gmail.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-tx=
t-link-freetext">maud.dib1984@gmail.com</a>&gt;
                  wrote:<br>
                  &gt;<br>
                  &gt; Ok, so just circling back on this. Ive got a
                  decent handle on the Python API. I=E2=80=99ve confirmed th=
e LO
                  signal comes out of the port once the splitter output
                  is enabled.<br>
                  &gt;<br>
                  &gt; Rob you=E2=80=99re saying that for sure both channels=

                  need to be external AND exported? making the settings:<br>=

                  &gt; TX 0:<br>
                  &gt; LO source&nbsp; &nbsp; &nbsp;=3D external<br>
                  &gt; LO Exported =3D true<br>
                  &gt; TX 1:<br>
                  &gt; LO source&nbsp; &nbsp; &nbsp; =3D external<br>
                  &gt; LO Exported =3D true<br>
                  Yes, except as you pointed out below, LO Exported for
                  Tx1 is not<br>
                  needed and likely does nothing.<br>
                  <br>
                  &gt;<br>
                  &gt; Radio #0 TX LO OUT 0&nbsp; =3D enabled<br>
                  &gt; Radio #1 TX LO OUT&nbsp; 1 =3D enabled (for debug)<br=
>
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
                  on.&nbsp; Id like to point out that in the block diagram i=
t
                  also doesn=E2=80=99t look like it=E2=80=99s possible to ex=
port channel
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
 =20

</div></blockquote></div></body></html>=

--Apple-Mail-579251BD-045B-48D0-89C6-2A355D6625A0--

--===============5550822241812824643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5550822241812824643==--
