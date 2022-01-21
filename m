Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF42496798
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 22:53:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21ABB3858BC
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 16:53:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GZ8hD8T1";
	dkim-atps=neutral
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by mm2.emwd.com (Postfix) with ESMTPS id EBAEA385625
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 16:52:34 -0500 (EST)
Received: by mail-lf1-f42.google.com with SMTP id y15so28273470lfa.9
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 13:52:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZG1whVXszx3JzmZG+f9q+xkkawn2psUnQain/CR0+C0=;
        b=GZ8hD8T1UaDN18QcOrOBLlPhIIXq8zA/DPuqPPP+pFiB3TIrz+TQGKLwQ7fW5mxMgt
         1Tsqcv+NbeWcuLNuVgZ7FzH6lCXKLiCLeY0kATtHW59aMewyHw5l6uqWiWxWbG2irlq9
         vKrTnuUqxg/pTcKBIBr/6Go6tLCHaYDGqervTUBu4nzp3FkNb2VG/rzIgRmBFeC86wsl
         jVk7FkCESXusx+RGTeNT88XoykmYq/mjiLtVPCDdXpyUyH2kRJ2cRMaffABL5KuLsNRz
         vIDGzQ8ZOzA6t8w+tuDfpx481pemIjDTWYDwXaPmaoaZ0OWKXuMW4Bck7y2Y8kheZ929
         eTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZG1whVXszx3JzmZG+f9q+xkkawn2psUnQain/CR0+C0=;
        b=ppxxqQZOd1HqjRK9ilLacN4WQd0C90HZLRUYudXlhV7HZoxI0TcR6nKhEFAQ+WyRuT
         32aiZhz9Lp9rYQpXah1kTxiw/jk9wZlBLDAEZ8MYjjRv8Y5a21we4jmGQ/WvrE8JQVKo
         J9b1IHV3IqPYurLUm16fKshXRqBAunULk1+o0RfMIkVbIa1lDYenMH3ZbnHvg4yatRXD
         sj98wi+Fi9J06u+YBPncjQ4m4xAwdHj0rKse7Nm5hg5eJqCOg+iA9g1zw8991zxQL0SO
         g42X89ke5GYyYIv0HRUS8HxY7eqKRADXCeCU5Jiycef7Bbsobh5xvQ8Xhi1nFJLDNrE+
         A02g==
X-Gm-Message-State: AOAM531aJld4+w23Smfgg16Hdphlj+kYyFoz8x7G9LhXa1fKe/Tm1hNG
	yJR+YhXOyXHZCWc9mrz8twj0nJASU7fElpt44z0=
X-Google-Smtp-Source: ABdhPJx4BfPuEyKma061iC++tDX6GbNzViY9eV8jqssRdRYJCV1gOxRH9IteUJdqutCMTERuYubl3mZStRQySNcz650=
X-Received: by 2002:ac2:5e85:: with SMTP id b5mr5136266lfq.0.1642801953459;
 Fri, 21 Jan 2022 13:52:33 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <C5BFBDFE-99E4-4876-86F7-475DA7A390D2@gmail.com> <CAB__hTSH33FEcE5Ry_=pb7ZtEWp=Q9bGc6_43Bd_2MJOQKOz0w@mail.gmail.com>
 <CACwKM9+5fFiF13kOaqaZu4b7o3eYYfQSwE0w0AuiKvLaLPxdEw@mail.gmail.com> <5c078dbf-1a27-39d9-a293-260a86e5cf51@gmail.com>
In-Reply-To: <5c078dbf-1a27-39d9-a293-260a86e5cf51@gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 21 Jan 2022 16:52:22 -0500
Message-ID: <CACwKM9JZCwJmPF8ZudN9tyszLG+L0==PoniS4kPG+jSNpCYooA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: V4PSVRSYATOEH6FP4PC7RNA24WCEKSY4
X-Message-ID-Hash: V4PSVRSYATOEH6FP4PC7RNA24WCEKSY4
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V4PSVRSYATOEH6FP4PC7RNA24WCEKSY4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4736409875574017301=="

--===============4736409875574017301==
Content-Type: multipart/alternative; boundary="000000000000df50e305d61ea202"

--000000000000df50e305d61ea202
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ok. is that just setting up 2 streamers to start at the same time?

On Fri, Jan 21, 2022 at 4:50 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-21 16:46, Paul Atreides wrote:
>
> is there a way to incur a phase shift on one of the streams from the
> in-built UHD examples?
> the python API allows has
>
> usrp.send_waveform(samples, duration, center_freq, sample_rate,
> [0,1],gain)
>
> but this sends the same samples to both outputs. I've used this icommand
> in conjunction with the LO sharing options for the multi_usrp object to
> confirm the phase between channels
> i'd like to be able to apply some digital phase shift between the 2 to
> test the level of control, hence all the gr-uhd questions.
>
> any ideas or references?
>
> You'll probably have to send samples yourself, with phase-offsets between
> the two sample streams.
>
>
>
> On Wed, Jan 19, 2022 at 9:41 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> On Wed, Jan 19, 2022 at 1:00 AM Paul Atreides <maud.dib1984@gmail.com>
>> wrote:
>> >
>> > Ok, so just circling back on this. Ive got a decent handle on the
>> Python API. I=E2=80=99ve confirmed the LO signal comes out of the port o=
nce the
>> splitter output is enabled.
>> >
>> > Rob you=E2=80=99re saying that for sure both channels need to be exter=
nal AND
>> exported? making the settings:
>> > TX 0:
>> > LO source     =3D external
>> > LO Exported =3D true
>> > TX 1:
>> > LO source      =3D external
>> > LO Exported =3D true
>> Yes, except as you pointed out below, LO Exported for Tx1 is not
>> needed and likely does nothing.
>>
>> >
>> > Radio #0 TX LO OUT 0  =3D enabled
>> > Radio #1 TX LO OUT  1 =3D enabled (for debug)
>> > (When I set These they turn on the lights for the LO outs)
>> >
>> > The front panel cable should connect TX LO output 0 to TX LO Input 1
>> Yes
>>
>> >
>> > Like you said, According to the block diagram, the TX LO input 1 shoul=
d
>> connect both channels to the 1x2 splitter so I should only need 1 LO out=
put
>> turned on.  Id like to point out that in the block diagram it also doesn=
=E2=80=99t
>> look like it=E2=80=99s possible to export channel 1=E2=80=99s LO. The on=
ly connection in
>> the diagram is internal.
>>
>> Yes, Somewhere in the Ettus documentation, it indicates that this is
>> the case (I've forgotten where).
>>
>> >
>> > Am I missing something? Have you gotten this to work?
>> Yes, I have been using this in a 16x16 system with 8 N321 devices all
>> connected by a single LO (arbitrarily chosen LO export channel
>> distributed to both Tx and Rx LO inputs). I've also tested it on
>> smaller systems as small as 4x4 (and possibly 2x2 like your case, but
>> not positive on this).
>>
>
>

--000000000000df50e305d61ea202
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">ok. is that just setting up 2 streamers to start at the sa=
me time?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Fri, Jan 21, 2022 at 4:50 PM Marcus D. Leech &lt;<a href=3D"=
mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-21 16:46, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>
          <div>
            <div>is there a way to incur a phase shift on one of the
              streams from the in-built UHD examples?<br>
            </div>
            the python API allows has <br>
            <br>
            usrp.send_waveform(samples, duration, center_freq,
            sample_rate, [0,1],gain) <br>
            <br>
            but this sends the same samples to both outputs. I&#39;ve used
            this icommand in conjunction with the LO sharing options for
            the multi_usrp object to confirm the phase between channels<br>
          </div>
          i&#39;d like to be able to apply some digital phase shift between
          the 2 to test the level of control, hence all the gr-uhd
          questions.<br>
          <br>
        </div>
        <div>any ideas or references?<br>
        </div>
      </div>
    </blockquote>
    You&#39;ll probably have to send samples yourself, with phase-offsets
    between the two sample streams.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 19, 2022 at 9:41
          AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_=
blank">rkossler@nd.edu</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          Wed, Jan 19, 2022 at 1:00 AM Paul Atreides &lt;<a href=3D"mailto:=
maud.dib1984@gmail.com" target=3D"_blank">maud.dib1984@gmail.com</a>&gt;
          wrote:<br>
          &gt;<br>
          &gt; Ok, so just circling back on this. Ive got a decent
          handle on the Python API. I=E2=80=99ve confirmed the LO signal co=
mes
          out of the port once the splitter output is enabled.<br>
          &gt;<br>
          &gt; Rob you=E2=80=99re saying that for sure both channels need t=
o be
          external AND exported? making the settings:<br>
          &gt; TX 0:<br>
          &gt; LO source=C2=A0 =C2=A0 =C2=A0=3D external<br>
          &gt; LO Exported =3D true<br>
          &gt; TX 1:<br>
          &gt; LO source=C2=A0 =C2=A0 =C2=A0 =3D external<br>
          &gt; LO Exported =3D true<br>
          Yes, except as you pointed out below, LO Exported for Tx1 is
          not<br>
          needed and likely does nothing.<br>
          <br>
          &gt;<br>
          &gt; Radio #0 TX LO OUT 0=C2=A0 =3D enabled<br>
          &gt; Radio #1 TX LO OUT=C2=A0 1 =3D enabled (for debug)<br>
          &gt; (When I set These they turn on the lights for the LO
          outs)<br>
          &gt;<br>
          &gt; The front panel cable should connect TX LO output 0 to TX
          LO Input 1<br>
          Yes<br>
          <br>
          &gt;<br>
          &gt; Like you said, According to the block diagram, the TX LO
          input 1 should connect both channels to the 1x2 splitter so I
          should only need 1 LO output turned on.=C2=A0 Id like to point ou=
t
          that in the block diagram it also doesn=E2=80=99t look like it=E2=
=80=99s
          possible to export channel 1=E2=80=99s LO. The only connection in=
 the
          diagram is internal.<br>
          <br>
          Yes, Somewhere in the Ettus documentation, it indicates that
          this is<br>
          the case (I&#39;ve forgotten where).<br>
          <br>
          &gt;<br>
          &gt; Am I missing something? Have you gotten this to work?<br>
          Yes, I have been using this in a 16x16 system with 8 N321
          devices all<br>
          connected by a single LO (arbitrarily chosen LO export channel<br=
>
          distributed to both Tx and Rx LO inputs). I&#39;ve also tested it
          on<br>
          smaller systems as small as 4x4 (and possibly 2x2 like your
          case, but<br>
          not positive on this).<br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000df50e305d61ea202--

--===============4736409875574017301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4736409875574017301==--
