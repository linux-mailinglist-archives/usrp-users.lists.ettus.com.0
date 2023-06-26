Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3394973E605
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 19:13:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E4D3383EB1
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 13:13:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687799609; bh=fFd1vvKCmu/Gsyw+S6tbgzNRKxIoROXMv2ApsubPt9Y=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=cYrBbC40bkptP/3RG961iEl44ekUuJkfru+fDxPKpCms4CGgoLorI9MAxyqUteBFV
	 4VSYj4IP7CSGrFLxwg60iLQv0itkSz26jQBG/2pW8iWKsh5xrrvKSqEHWBDIyujZ+o
	 Q1BOog9cSmdgpk2Nrt27Rb0MG0i8QoCRM2d4+vjmcdRiff24MAmYL8wA2UzXvVv4e4
	 wve4n4gwv3POxpknT2iswYlyWKr9PGTBdtH1bADdq+oNskmpdAgO5/78VLbD3kELG5
	 yYII7dgPuRSVJxS1ZFitG3LYvv3qXidizal7whzc4AjTfXHoJir1Hp9J0Njc1Q2kQI
	 0Wge8B3Xzax7A==
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mm2.emwd.com (Postfix) with ESMTPS id E16D9380BB2
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 13:12:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="LuDgb5jR";
	dkim-atps=neutral
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3a1e6022b93so610434b6e.1
        for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 10:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1687799546; x=1690391546;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sS8KsrTJPnTwy0wAtSQwVKa+5IzMIg8aEj8UG2gMCU8=;
        b=LuDgb5jRO1Q34L+987/mM0zO6/cb96Lssc6VLtz8ivXFz8m9Zoc6w0nW3RmoSI1hss
         FaYyHkxB5lNwGRf0TqqYowwyxI0A2sI1qeIOYKqbUVZGdoYgl8IIbjupj+oFt91Yr7Pt
         h8mnEZvs8BG1LhtBKJN/M8k0XpuJaARF7JyAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687799546; x=1690391546;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sS8KsrTJPnTwy0wAtSQwVKa+5IzMIg8aEj8UG2gMCU8=;
        b=WHMpVUAtHWkk+FSgpQL6c7TT/oZHL5nseo1FEsW0kyHiQGbaAO9a/VWwyHYTLJzXqa
         XS5QylHqYc4fJAL1edTN2AOmHPXWqpNK5wP9s8mdLfBBCBH+roDOEBvN4eicBA90E523
         dAj0Qc45QIIvE1RRzl8Qut/DmeEauBHgtJyt/ucclXGwDxLyLVTRSNBScUgWMvz+9nx+
         NAyqDbQBjN8q3s60rB1V5ht9K6UFwEExJJJAsnp0q0aLEVU+ar5Y6sFMYJv5okI5kgW+
         YAXDVKeNwFiDi8+tEVNwR0jwechlYUYjW/gPJLwy6IZGpxiai3l6LFxYhYKGofufhpjq
         NkZw==
X-Gm-Message-State: AC+VfDwSiaTyBGqvz+x1pmw+1Uw54aeZgleu1WF5bCm+GvhsJGdD33/9
	OAiT+W55B6HBZmNXggdtJaL5lKPwDyK9H8TPpNeltqEty5X0oNMpEX4GjYNeWbOzVvzllaQ80NH
	VweD/VEuB2BlTqXwFgQSJBhpWLQSxdkMOEFsnGHN9Gk0AmQ==
X-Google-Smtp-Source: ACHHUZ4DA+fMBsdVJgA7n81ZplxPqnxLsqBihwnYcFZJpLLbhAtRoj65KTNn8pMqx6bqc67PbE0fUcWMWJgJ8V0+tMg=
X-Received: by 2002:a05:6808:b22:b0:3a1:a316:c2d8 with SMTP id
 t2-20020a0568080b2200b003a1a316c2d8mr11925997oij.49.1687799546482; Mon, 26
 Jun 2023 10:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <CA+QP_P=kMBqVSfi7ktJdrayHEjMWxu0SK-1jpgJx3ho2=fxOJQ@mail.gmail.com>
 <11ffaa69-3ae5-bd0f-8570-dc0caf48912f@gmail.com> <CA+QP_PnM2bqW6U+FG6NbaQ66ES921w9EPVGu-Uf8JoPGPnW1fQ@mail.gmail.com>
 <d846abc8-cbbb-0bb4-0432-72ac15aeb7df@gmail.com> <CA+QP_P=CR4FscWA3wwM1Jj4Ng3sKCRqbL6EDA1Zo3dDMoS_vdw@mail.gmail.com>
 <436ad383-6909-585d-b161-6afa4f77b0f2@gmail.com>
In-Reply-To: <436ad383-6909-585d-b161-6afa4f77b0f2@gmail.com>
Date: Mon, 26 Jun 2023 22:42:16 +0530
Message-ID: <CA+QP_PmGWhaGHh6byBe9jrh9iWN5xUmoEKOFGFfEDfYAxEZpbA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6LAURA6HX2D5QWVOCIT3HN4LYJJHYHF3
X-Message-ID-Hash: 6LAURA6HX2D5QWVOCIT3HN4LYJJHYHF3
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Regarding Transmitting Gain of USRP N-200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6LAURA6HX2D5QWVOCIT3HN4LYJJHYHF3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============2839924500939506306=="

--===============2839924500939506306==
Content-Type: multipart/alternative; boundary="0000000000006ba79a05ff0b74ff"

--0000000000006ba79a05ff0b74ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sure, I will. Thanks again.

On Mon, Jun 26, 2023 at 10:26=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 26/06/2023 12:54, Arhum Ahmad wrote:
>
> I have updated the rfconverter_libiio file in the base of Matlab. Now I
> can see the variation in signal power in the spectrum analyzer. However, =
in
> the receiver, the problem is still the same.
>
> This is squarely a MATLAB problem at this point.  So, you'll have to use
> those support channels rather than usrp-users
>
>
>
> On Mon, Jun 26, 2023 at 8:36=E2=80=AFPM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 26/06/2023 09:32, Arhum Ahmad wrote:
>>
>> Thanks for the response,
>>
>> 1. I am using UBX 10-6000 MHz Rx/Tx (
>> https://www.ettus.com/all-products/ubx40/)
>> 2. Yes, I am using AGC for the processing part. The parameter values I
>> have uses are
>>                                  - DesiredPower: 2
>>                                  - AveragingLength: 50
>>                                  - MaxPowerGain: 60
>> 3. I have checked the spectrum of the signal in a separate spectruHm ana=
lyzer,
>> there is NO change in the spectrum as I vary the gain.
>>
>> Assuming you have a complete UHD installation, you can use the
>> tx_waveforms example app to check this as well.  Since you're
>>   using MATLAB, I cannot help with that aspect.
>>
>>
>>
>> On Mon, Jun 26, 2023 at 2:58=E2=80=AFAM Marcus D. Leech <patchvonbraun@g=
mail.com>
>> wrote:
>>
>>> On 25/06/2023 16:49, Arhum Ahmad wrote:
>>>
>>> Respected sir,
>>> I am using N-200 USRP for transmitting a signal. While transmitting, I
>>> have changed the Gain value in the SDRu transmitting block, but my
>>> signal strength at the receiver remains the same. I also stop and
>>> restart the code but the change in gain does not affect the received
>>> signal. I have tried the changing gain via both available options i.e.,
>>> input port and dialog, but it seems to have no effect on the receiver.
>>> The signal strength at the receiver remains the same. I have tried 30
>>> dB(Maximum gain) to 0 dB (minimum gain) in both cases received SNR is
>>> the same (i.e.,15 dB). I am using a wireless connection in
>>> line-of-sight, with minimum Tx gain at least a few drops in SNR should
>>> be observed. I have also tried -50dB (just checking) but no effect in
>>> the SNR is observed. The same thing I have tried using B210 as Tx, Rx
>>> signal strength does change in this case. However, while using N-200, n=
o
>>> effect of changing the gain value is observed. Somehow gain value is
>>> fixed in N-200 while using the MATLAB SDRu block. Can you PLEASE HELP
>>> ME!!! IT IS VERY, VERY IMPORTANT.
>>>
>>> Well, neither usrp-users nor discuss-gnuradio are support lists for
>>> MATLAB.
>>>
>>> You haven't mentioned which daughter-card you are using in the N200,
>>> which would certainly help to fill in information about
>>>   what *might* be going on.
>>>
>>>
>>> Does your receiver setup use AGC?  Do you know what its set-points are?
>>>
>>> If you simply look at the spectrum on the RX end as you vary gain on th=
e
>>> TX end, do you see a change?   At the higher end,
>>>   SNR may not change very much, depending on how it is being measured,
>>> etc.
>>>
>>>
>>>
>>
>> --
>> *Thanks and Regards*
>> *Arhum Ahmad*
>> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>>
>> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
>> <2016eez0009@iitrpr.ac.in>
>> Lab No. 323, Communication Research Lab, J.C.Bose Building
>>
>> * CONFIDENTIALITY NOTICE: The contents of this email message and any
>> attachments are intended solely for the addressee(s) and may contain
>> confidential and/or privileged information and may be legally protected
>> from disclosure. If you are not the intended recipient of this message o=
r
>> their agent, or if this message has been addressed to you in error, plea=
se
>> immediately alert the sender by reply email and then delete this message
>> and any attachments. If you are not the intended recipient, you are here=
by
>> notified that any use, dissemination, copying, or storage of this messag=
e
>> or its attachments is strictly prohibited. *
>>
>>
>>
>
> --
> *Thanks and Regards*
> *Arhum Ahmad*
> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>
> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
> <2016eez0009@iitrpr.ac.in>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
> * CONFIDENTIALITY NOTICE: The contents of this email message and any
> attachments are intended solely for the addressee(s) and may contain
> confidential and/or privileged information and may be legally protected
> from disclosure. If you are not the intended recipient of this message or
> their agent, or if this message has been addressed to you in error, pleas=
e
> immediately alert the sender by reply email and then delete this message
> and any attachments. If you are not the intended recipient, you are hereb=
y
> notified that any use, dissemination, copying, or storage of this message
> or its attachments is strictly prohibited. *
>
>
>

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--0000000000006ba79a05ff0b74ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sure, I will. Thanks again.</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 26, 2023 at 10:26=
=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">=
patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 26/06/2023 12:54, Arhum Ahmad wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">I have=C2=A0updated the rfconverter_libiio file in t=
he
        base of Matlab. Now I can see the variation=C2=A0in signal power in
        the spectrum analyzer. However, in the receiver, the problem is
        still the same.</div>
    </blockquote>
    This is squarely a MATLAB problem at this point.=C2=A0 So, you&#39;ll h=
ave to
    use those support channels rather than usrp-users<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 26, 2023 at
          8:36=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 26/06/2023 09:32, Arhum Ahmad wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks for the response,
                <div><br>
                </div>
                <div>1. I am using=C2=A0<span>UBX 10-6000 MHz Rx/Tx</span><=
span>=C2=A0</span>(<a href=3D"https://www.ettus.com/all-products/ubx40/" ta=
rget=3D"_blank">https://www.ettus.com/all-products/ubx40/</a>)</div>
                <div>2. Yes, I am using AGC for the processing part. The
                  parameter values I have uses are=C2=A0</div>
                <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Desired=
Power: 2</div>
                <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Averagi=
ngLength:
                  50</div>
                <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- MaxPowe=
rGain: 60</div>
                <div>3. I have=C2=A0checked the spectrum of the signal in a
                  separate=C2=A0spectru<span>H</span>m=C2=A0analyzer, there=
 is NO
                  change in the spectrum=C2=A0as I vary the gain.</div>
              </div>
            </blockquote>
            Assuming you have a complete UHD installation, you can use
            the tx_waveforms example app to check this as well.=C2=A0 Since
            you&#39;re<br>
            =C2=A0 using MATLAB, I cannot help with that aspect.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 26, 2023
                  at 2:58=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 25/06/2023 16:49, Arhum Ahmad wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Respected sir,
                        <div><span style=3D"background-color:rgb(250,250,25=
0);color:rgb(0,0,0);font-size:14px">I
                            am using N-200 USRP for transmitting a
                            signal. While transmitting,=C2=A0</span>I have<=
span style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:=
14px">
                          </span>changed<span style=3D"background-color:rgb=
(250,250,250);color:rgb(0,0,0);font-size:14px">
                            the Gain value </span>in the SDRu<span style=3D=
"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                            transmitting block, but my signal strength
                            at the receiver </span>remains<span style=3D"ba=
ckground-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">=C2=A0the
                            same. I also stop and restart the code but
                            the change in gain does not affect the
                            received signal. I have tried the changing
                            gain via both available options i.e., input
                            port and dialog, but it </span>seems to
                          have no effect<span style=3D"background-color:rgb=
(250,250,250);color:rgb(0,0,0);font-size:14px">
                            on the receiver. The signal strength at the
                            receiver </span>remains<span style=3D"backgroun=
d-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">=C2=A0the
                            same. I have tried 30 dB(Maximum gain) to 0
                            dB (minimum gain) in both cases received SNR
                          </span>is the same<span style=3D"background-color=
:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                            (i.e.,15 dB). I am using a wireless
                            connection in line-of-sight, with minimum Tx
                            gain at </span>least a few<span style=3D"backgr=
ound-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                          </span>drops<span style=3D"background-color:rgb(2=
50,250,250);color:rgb(0,0,0);font-size:14px">
                            in SNR should be observed. I have also tried
                            -50dB (just checking) but </span>no<span style=
=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                            effect in the SNR is observed. The same
                            thing </span>I have<span style=3D"background-co=
lor:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                            tried using B210 as Tx, Rx signal strength
                            does change in this case. However, while
                            using N-200,=C2=A0</span>no<span style=3D"backg=
round-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                            effect of changing the gain value is
                            observed. Somehow</span>=C2=A0gain<span style=
=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                            value is fixed in N-200 while </span>using
                          the MATLAB<span style=3D"background-color:rgb(250=
,250,250);color:rgb(0,0,0);font-size:14px">
                            SDRu block. Can you PLEASE HELP ME!!! IT IS
                            VERY, VERY IMPORTANT.</span><br>
                        </div>
                        <br>
                      </div>
                    </blockquote>
                    Well, neither usrp-users nor discuss-gnuradio are
                    support lists for MATLAB.<br>
                    <br>
                    You haven&#39;t mentioned which daughter-card you are
                    using in the N200, which would certainly help to
                    fill in information about<br>
                    =C2=A0 what *might* be going on.<br>
                    <br>
                    <br>
                    Does your receiver setup use AGC?=C2=A0 Do you know wha=
t
                    its set-points are?<br>
                    <br>
                    If you simply look at the spectrum on the RX end as
                    you vary gain on the TX end, do you see a change?=C2=A0=
=C2=A0
                    At the higher end,<br>
                    =C2=A0 SNR may not change very much, depending on how i=
t
                    is being measured, etc.=C2=A0=C2=A0 <br>
                    <br>
                    <br>
                  </div>
                </blockquote>
              </div>
              <br clear=3D"all">
              <div><br>
              </div>
              <span class=3D"gmail_signature_prefix">-- </span><br>
              <div dir=3D"ltr" class=3D"gmail_signature">
                <div dir=3D"ltr">
                  <div>
                    <div dir=3D"ltr">
                      <div style=3D"color:rgb(100,100,100);font-family:Aria=
l;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53=
,28,117);font-family:Arial,Helvetica,sans-serif;font-size:small"><span>Than=
ks
                            and Regards</span></b><b><br>
                        </b></div>
                      <div style=3D"color:rgb(100,100,100);font-family:Aria=
l;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhum
                          Ahmad</b><br>
                        Ph.D. Scholar,=C2=A0Electrical Engineering
                        Department, IIT Ropar</div>
                      <table style=3D"color:rgb(100,100,100);font-family:Ar=
ial;font-size:12px;width:470px;margin-top:5px" width=3D"470" cellspacing=3D=
"0" cellpadding=3D"0" border=3D"0">
                        <tbody>
                          <tr>
                            <td style=3D"color:rgb(141,141,141)">
                              <p style=3D"margin:0px"><span style=3D"displa=
y:inline-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,141,1=
41);font-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=C2=
=A0<span style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=
=A0arhum.19eez0005<span style=3D"display:inline-block"><a href=3D"mailto:20=
16eez0009@iitrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans-se=
rif" target=3D"_blank">@iitrpr.ac.in</a></span></p>
                            </td>
                          </tr>
                          <tr>
                            <td style=3D"font-family:sans-serif;color:rgb(1=
41,141,141)"><span style=3D"display:inline-block">Lab No.
                                323, Communication Research Lab,
                                J.C.Bose Building</span></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <b><font size=3D"1"><span><span><span>
                        <div>
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div>
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div><span><span>=
<span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0The
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<span>=
</span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </span></span></span></font></b> </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      <span class=3D"gmail_signature_prefix">-- </span><br>
      <div dir=3D"ltr" class=3D"gmail_signature">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53,28,117)=
;font-family:Arial,Helvetica,sans-serif;font-size:small"><span>Thanks and R=
egards</span></b><b><br>
                </b></div>
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT
                Ropar</div>
              <table style=3D"color:rgb(100,100,100);font-family:Arial;font=
-size:12px;width:470px;margin-top:5px" width=3D"470" cellspacing=3D"0" cell=
padding=3D"0" border=3D"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span style=3D"display:inline=
-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,141,141);font=
-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=C2=A0<span =
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.19=
eez0005<span style=3D"display:inline-block"><a href=3D"mailto:2016eez0009@i=
itrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans-serif" target=
=3D"_blank">@iitrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</span=
></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <br>
      <b><font size=3D"1"><span><span><span>
                <div>
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div><span><span>=
<span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0The
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<span>=
</span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </span></span></span></font></b>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100,100);f=
ont-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=
=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-size:s=
mall"><span style=3D"font-family:&quot;times new roman&quot;,serif">Thanks =
and Regards</span></b><b><br></b></div><div style=3D"color:rgb(100,100,100)=
;font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhu=
m Ahmad</b><br>Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT R=
opar</div><table width=3D"470" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;wid=
th:470px;margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)"><p=
 style=3D"margin:0px"><span style=3D"display:inline-block"><a href=3D"tel:+=
91-7015802356" style=3D"color:rgb(141,141,141);font-family:sans-serif" targ=
et=3D"_blank">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(69,10=
2,142);display:inline-block">|</span>=C2=A0arhum.19eez0005<span style=3D"di=
splay:inline-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"co=
lor:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.ac.i=
n</a></span></p></td></tr><tr><td style=3D"font-family:sans-serif;color:rgb=
(141,141,141)"><span style=3D"display:inline-block">Lab No. 323, Communicat=
ion Research Lab, J.C.Bose Building</span></td></tr></tbody></table></div><=
/div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--0000000000006ba79a05ff0b74ff--

--===============2839924500939506306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2839924500939506306==--
