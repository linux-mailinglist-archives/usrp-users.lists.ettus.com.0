Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 343AA73E5DF
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 18:56:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 513B0383693
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 12:56:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687798565; bh=p0lYFEQukeCu09IzYSQI23LdMjGBu9gN7ttaMD3DYEw=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=SPjkfO401sHBn0qHUoJEJyhr5SffgYLNrZioxQnKgL4lXoH8d1ct/jJLnxzj02HaP
	 7Calc+cGg2OIBYG3w55Nh7XJkYDmJj0XvIiB9xCyCIa9vXmd8mRNwJttSLBXnmN+S7
	 1VZCrGxQQSyPkUHunyJZbQLpi6mU4tJgYSgcvF5Xf5easzezs+Kb1L00J3OIxSrVFz
	 73IS1y5+gaeIM60dZzEtG2W/ITs14znHP+1MDwT0dVA1Z7GYGez7AM0le5XFpVzOCj
	 6TY1rSzatzt6yqdkxwYnkBlBt0YkI46Zjij9qJhRCuvCkxNeFMLUwfQ/fSnqbVV4SM
	 CLUjPZFtbEoCA==
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 41F78380B09
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 12:54:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="NCQZuNUA";
	dkim-atps=neutral
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-26309247002so282453a91.0
        for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 09:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1687798491; x=1690390491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Er27il0Ke4y8Ak3c2koEUNjOVp6+51pXPzcZgcbJ+Ac=;
        b=NCQZuNUAPQTVhV7AZLIHipcY2EQDaAPXe4U1iKJxoiN8G3fhu5ZQHrN4oYrmcJ8sim
         BVRlm4l1ZgGUiStUtoteHo/UZZWoW/o9iQ8XUFBcuLr6tE21ZpdaBbFaHa5PONjsVX5/
         S9o4OA5oSd5Na3kIPbQc49s9nMJJ37oC5NOa8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687798491; x=1690390491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Er27il0Ke4y8Ak3c2koEUNjOVp6+51pXPzcZgcbJ+Ac=;
        b=ebU3yuI628yw4aaOvsHj2GBFG2V/FH3lRLt0tPTqZgJuXL1Uem5itMVeeCPRHO4I64
         gNtW+PIWFfeexGbvWlKjIVdPSw8BDwx82YcYr8tPZ1Dnu2vVrxUTQxX/qzWpSw/sQD3Z
         qeaZ06Dd2vzssjNALZJOIZr3fSDR3OTcjAW11YlCsVihicqAETAYEQ3r5eIgdRWVvp9P
         WEzNxSwDDPSx3FsbkiZNnhg/l5kfYSqNI77aFodpWPIg6z+CY2JiXfMAhBeTWJ7AtXqM
         CvDiKs0eLa+jQY05E8vs+qMhEsALNujhlMw6BXwbrDCShMabm/i6WORju4e3V6b0BRk1
         503g==
X-Gm-Message-State: AC+VfDyNjmzubkTmtHw91tdrawpy5X5AwSCHp+chqI8OF5BQERb4iMHm
	GK10pBVG3MUtcp2scJb0b7lReNY+Whc8FTeU8AzpwTHkdnj/pFlLD+RX+1WPBkhKCx3oczzNJ65
	X2lFXgOz/zJY5+Dbu27qlF+S92y7m/BznNdsvFfIOKP1EuQ==
X-Google-Smtp-Source: ACHHUZ7qKivwDyHTyrkNK6cpaaUs/DlC1r7/a4yXJwgXn5qYOyoKsVodnF4NaKNuSzfwzrar5yj4GlvYQ93koeeQGPE=
X-Received: by 2002:a17:90a:1b0a:b0:25e:ff04:4fb with SMTP id
 q10-20020a17090a1b0a00b0025eff0404fbmr20552424pjq.23.1687798490848; Mon, 26
 Jun 2023 09:54:50 -0700 (PDT)
MIME-Version: 1.0
References: <CA+QP_P=kMBqVSfi7ktJdrayHEjMWxu0SK-1jpgJx3ho2=fxOJQ@mail.gmail.com>
 <11ffaa69-3ae5-bd0f-8570-dc0caf48912f@gmail.com> <CA+QP_PnM2bqW6U+FG6NbaQ66ES921w9EPVGu-Uf8JoPGPnW1fQ@mail.gmail.com>
 <d846abc8-cbbb-0bb4-0432-72ac15aeb7df@gmail.com>
In-Reply-To: <d846abc8-cbbb-0bb4-0432-72ac15aeb7df@gmail.com>
Date: Mon, 26 Jun 2023 22:24:40 +0530
Message-ID: <CA+QP_P=CR4FscWA3wwM1Jj4Ng3sKCRqbL6EDA1Zo3dDMoS_vdw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: CUOSGPNATL6X6YJI4CRVJ5Q53BR4E4OZ
X-Message-ID-Hash: CUOSGPNATL6X6YJI4CRVJ5Q53BR4E4OZ
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Regarding Transmitting Gain of USRP N-200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CUOSGPNATL6X6YJI4CRVJ5Q53BR4E4OZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============4183947660400476354=="

--===============4183947660400476354==
Content-Type: multipart/alternative; boundary="00000000000080693205ff0b35a4"

--00000000000080693205ff0b35a4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have updated the rfconverter_libiio file in the base of Matlab. Now I can
see the variation in signal power in the spectrum analyzer. However, in the
receiver, the problem is still the same.

On Mon, Jun 26, 2023 at 8:36=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 26/06/2023 09:32, Arhum Ahmad wrote:
>
> Thanks for the response,
>
> 1. I am using UBX 10-6000 MHz Rx/Tx (
> https://www.ettus.com/all-products/ubx40/)
> 2. Yes, I am using AGC for the processing part. The parameter values I
> have uses are
>                                  - DesiredPower: 2
>                                  - AveragingLength: 50
>                                  - MaxPowerGain: 60
> 3. I have checked the spectrum of the signal in a separate spectruHm anal=
yzer,
> there is NO change in the spectrum as I vary the gain.
>
> Assuming you have a complete UHD installation, you can use the
> tx_waveforms example app to check this as well.  Since you're
>   using MATLAB, I cannot help with that aspect.
>
>
>
> On Mon, Jun 26, 2023 at 2:58=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 25/06/2023 16:49, Arhum Ahmad wrote:
>>
>> Respected sir,
>> I am using N-200 USRP for transmitting a signal. While transmitting, I
>> have changed the Gain value in the SDRu transmitting block, but my
>> signal strength at the receiver remains the same. I also stop and
>> restart the code but the change in gain does not affect the received
>> signal. I have tried the changing gain via both available options i.e.,
>> input port and dialog, but it seems to have no effect on the receiver.
>> The signal strength at the receiver remains the same. I have tried 30
>> dB(Maximum gain) to 0 dB (minimum gain) in both cases received SNR is
>> the same (i.e.,15 dB). I am using a wireless connection in
>> line-of-sight, with minimum Tx gain at least a few drops in SNR should
>> be observed. I have also tried -50dB (just checking) but no effect in
>> the SNR is observed. The same thing I have tried using B210 as Tx, Rx
>> signal strength does change in this case. However, while using N-200, no
>> effect of changing the gain value is observed. Somehow gain value is
>> fixed in N-200 while using the MATLAB SDRu block. Can you PLEASE HELP
>> ME!!! IT IS VERY, VERY IMPORTANT.
>>
>> Well, neither usrp-users nor discuss-gnuradio are support lists for
>> MATLAB.
>>
>> You haven't mentioned which daughter-card you are using in the N200,
>> which would certainly help to fill in information about
>>   what *might* be going on.
>>
>>
>> Does your receiver setup use AGC?  Do you know what its set-points are?
>>
>> If you simply look at the spectrum on the RX end as you vary gain on the
>> TX end, do you see a change?   At the higher end,
>>   SNR may not change very much, depending on how it is being measured,
>> etc.
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

--00000000000080693205ff0b35a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have=C2=A0updated the rfconverter_libiio file in the bas=
e of Matlab. Now I can see the variation=C2=A0in signal power in the spectr=
um analyzer. However, in the receiver, the problem is still the same.</div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Jun 26, 2023 at 8:36=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:pat=
chvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 26/06/2023 09:32, Arhum Ahmad wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thanks for the response,
        <div><br>
        </div>
        <div>1. I am using=C2=A0<span>UBX 10-6000 MHz Rx/Tx</span><span>=C2=
=A0</span>(<a href=3D"https://www.ettus.com/all-products/ubx40/" target=3D"=
_blank">https://www.ettus.com/all-products/ubx40/</a>)</div>
        <div>2. Yes, I am using AGC for the processing part. The
          parameter values I have uses are=C2=A0</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- DesiredPower: 2</=
div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- AveragingLength: =
50</div>
        <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- MaxPowerGain: 60<=
/div>
        <div>3. I have=C2=A0checked the spectrum of the signal in a
          separate=C2=A0spectru<span>H</span>m=C2=A0analyzer,
          there is NO change in the spectrum=C2=A0as I vary the gain.</div>
      </div>
    </blockquote>
    Assuming you have a complete UHD installation, you can use the
    tx_waveforms example app to check this as well.=C2=A0 Since you&#39;re<=
br>
    =C2=A0 using MATLAB, I cannot help with that aspect.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 26, 2023 at
          2:58=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 25/06/2023 16:49, Arhum Ahmad wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Respected sir,
                <div><span style=3D"background-color:rgb(250,250,250);color=
:rgb(0,0,0);font-size:14px">I
                    am using N-200 USRP for transmitting a signal. While
                    transmitting,=C2=A0</span>I have<span style=3D"backgrou=
nd-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                  </span>changed<span style=3D"background-color:rgb(250,250=
,250);color:rgb(0,0,0);font-size:14px">
                    the Gain value </span>in the SDRu<span style=3D"backgro=
und-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                    transmitting block, but my signal strength at the
                    receiver </span>remains<span style=3D"background-color:=
rgb(250,250,250);color:rgb(0,0,0);font-size:14px">=C2=A0the
                    same. I also stop and restart the code but the
                    change in gain does not affect the received signal.
                    I have tried the changing gain via both available
                    options i.e., input port and dialog, but it </span>seem=
s
                  to have no effect<span style=3D"background-color:rgb(250,=
250,250);color:rgb(0,0,0);font-size:14px">
                    on the receiver. The signal strength at the receiver
                  </span>remains<span style=3D"background-color:rgb(250,250=
,250);color:rgb(0,0,0);font-size:14px">=C2=A0the
                    same. I have tried 30 dB(Maximum gain) to 0 dB
                    (minimum gain) in both cases received SNR </span>is
                  the same<span style=3D"background-color:rgb(250,250,250);=
color:rgb(0,0,0);font-size:14px">
                    (i.e.,15 dB). I am using a wireless connection in
                    line-of-sight, with minimum Tx gain at </span>least
                  a few<span style=3D"background-color:rgb(250,250,250);col=
or:rgb(0,0,0);font-size:14px">
                  </span>drops<span style=3D"background-color:rgb(250,250,2=
50);color:rgb(0,0,0);font-size:14px">
                    in SNR should be observed. I have also tried -50dB
                    (just checking) but </span>no<span style=3D"background-=
color:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                    effect in the SNR is observed. The same thing </span>I
                  have<span style=3D"background-color:rgb(250,250,250);colo=
r:rgb(0,0,0);font-size:14px">
                    tried using B210 as Tx, Rx signal strength does
                    change in this case. However, while using N-200,=C2=A0<=
/span>no<span style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);f=
ont-size:14px">
                    effect of changing the gain value is observed.
                    Somehow</span>=C2=A0gain<span style=3D"background-color=
:rgb(250,250,250);color:rgb(0,0,0);font-size:14px">
                    value is fixed in N-200 while </span>using the
                  MATLAB<span style=3D"background-color:rgb(250,250,250);co=
lor:rgb(0,0,0);font-size:14px">
                    SDRu block. Can you PLEASE HELP ME!!! IT IS VERY,
                    VERY IMPORTANT.</span><br>
                </div>
                <br>
              </div>
            </blockquote>
            Well, neither usrp-users nor discuss-gnuradio are support
            lists for MATLAB.<br>
            <br>
            You haven&#39;t mentioned which daughter-card you are using in
            the N200, which would certainly help to fill in information
            about<br>
            =C2=A0 what *might* be going on.<br>
            <br>
            <br>
            Does your receiver setup use AGC?=C2=A0 Do you know what its
            set-points are?<br>
            <br>
            If you simply look at the spectrum on the RX end as you vary
            gain on the TX end, do you see a change?=C2=A0=C2=A0 At the hig=
her
            end,<br>
            =C2=A0 SNR may not change very much, depending on how it is bei=
ng
            measured, etc.=C2=A0=C2=A0 <br>
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
--00000000000080693205ff0b35a4--

--===============4183947660400476354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4183947660400476354==--
