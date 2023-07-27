Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF56F765F4F
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jul 2023 00:24:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 86B91384CE9
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jul 2023 18:24:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690496649; bh=o9EoxmwDJ598kKaO2voJRB7N2QacxUtEodEs5bgyV2s=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=flLgUP/PCUZ4hkdTPLzTGF5HGZnxDa+Z7L/I3yp7ELWyEvWKnBPW3Rjh58MF96zgl
	 AJYd7SdqxNykdc8s+kSKN/jQU4zYxf5w/64yjeIQJfNpcaeqzo8eZI+0AYVsc7R4Au
	 1B+wC7GsvgQY95iPncJ+ip0K/MUcpnXTr4q4wZqhyqZSKeCwYb/snGOQu7iNOrIglZ
	 BNLrds/J+9rNUM9UAT1wOVR67vcGjvSUgp3k5PFYBco5O9qs+ycFKgc1y29v6tTCK6
	 hkpw8zQZ2bzUBszP/Pd+7yzOcY5D4cQdl98Zxy+FDUmTcO96OKEFpTyAutSmaXNyus
	 0TlmJ+Bm60IzA==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id AF5D5384CB2
	for <usrp-users@lists.ettus.com>; Thu, 27 Jul 2023 18:23:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="opQXKctC";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7673180224bso115642485a.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Jul 2023 15:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690496611; x=1691101411;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dJHJwHF/a9eKmDjL0RYBVu236oleSW69sOZCb0DprT8=;
        b=opQXKctC6DfhSgg3g+r1dBwDahXnLfhQdB7bmtHdUYYojUsbHmBNt/Jqh8G6z/4O1X
         qftHliVOay9WNZkw0U8T9c0XnaMlDpjOMIi6vY+IXeYEjPm45lkQmHiA31y78TjnMYjM
         tsNTyK78ZoYGVksg/vViEr36BukcIavSatxlXadMyRwGE0eyYGeXr0B34vTkbnuqYuiM
         D/YFJXgn2EsbHWVBMtbV00Y4lQa263nzdC9G8Cp5wHXZHy6inQikuCwIyXHDzYtsZ4iY
         3ZbHjBuw7FuskQYBtAijFx4aOyvSwaTjgxmuaHRVk39g6hH8tfs8N6mPcJpwjKyxDmym
         QzgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690496611; x=1691101411;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dJHJwHF/a9eKmDjL0RYBVu236oleSW69sOZCb0DprT8=;
        b=RE0bDMIhN/edgljMSNQA+FMxHxPVAQTPvMyJHzwSkEA8Ad6PkkSKkh3aS5Yf5/fJK0
         EHo+39NmlRRKDHVaXKJCnx/N6KahzBy8eKYvqtAIzUHwHeICun6yAAGTbKloH/BmJLa5
         0JAoIGDbTC+6J+U/IDhYOkhD6/b9CYXg+vGPQXLxUGGqPqpoQKsboICYMjjc20OKWiBj
         d3D/3sFFcL/HQYR0WDSLICfYUICQQedWz3urVpDJmltIrlVHGSyYbZ0MERWDcstaCFm+
         9q0tC1bmxWvFYyE+Elp79pYy+IllP/SRNaykBUwOjgHa3+JH0zVdJQQ3q2LJkYG6fM1a
         CCzg==
X-Gm-Message-State: ABy/qLY63W0VS9U5D7er1c4BGHn1OQCBjw+jFt6/xudQmw119pfRnayy
	FaeqrOzhWTq4Ne/L4ItV8WvjawRePzY=
X-Google-Smtp-Source: APBJJlF9omva1KvlJukDFh3l1hXAgBUt2YMN1vCviliGn7NxGhd2oRrawX6Tltk7jAtjT2BKmXOvyQ==
X-Received: by 2002:a0c:b449:0:b0:635:e4ed:b6c9 with SMTP id e9-20020a0cb449000000b00635e4edb6c9mr813176qvf.24.1690496610949;
        Thu, 27 Jul 2023 15:23:30 -0700 (PDT)
Received: from [192.168.2.173] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id i11-20020a0cf48b000000b0063cf9478fddsm735783qvm.128.2023.07.27.15.23.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 15:23:30 -0700 (PDT)
Message-ID: <2da7d74e-fad1-7fe6-0851-24e2512b74cc@gmail.com>
Date: Thu, 27 Jul 2023 18:23:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <PH0PR09MB7433546CE3D5D14F18D7005DA800A@PH0PR09MB7433.namprd09.prod.outlook.com>
 <85f24be9-3286-b80d-4eed-27cf5fae5bf7@gmail.com>
 <PH0PR09MB7433E43091B0FE111D4D2F74A800A@PH0PR09MB7433.namprd09.prod.outlook.com>
 <ad84ae31-517b-89f3-c4b4-936343939747@gmail.com>
 <CAB__hTQSCSSWKHx3pSqARywC0ryMUEnJkKsG_1r73RhQ5Jpzgg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQSCSSWKHx3pSqARywC0ryMUEnJkKsG_1r73RhQ5Jpzgg@mail.gmail.com>
Message-ID-Hash: C2UGC3LCSTFQ4B7YEJNMHHVJANCCRTYK
X-Message-ID-Hash: C2UGC3LCSTFQ4B7YEJNMHHVJANCCRTYK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: David J Li <dli@mitre.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: N310 correct choice for coherent 4 channel RX w/ 1 TX ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C2UGC3LCSTFQ4B7YEJNMHHVJANCCRTYK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7872344291589917597=="

This is a multi-part message in MIME format.
--===============7872344291589917597==
Content-Type: multipart/alternative;
 boundary="------------SDR6heGmsNURzR78ue9KaUcL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------SDR6heGmsNURzR78ue9KaUcL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/07/2023 18:13, Rob Kossler wrote:
>
> Depending on "just how coherent" you need to be affects whether you=20
> want/need "shared LO".=C2=A0 If the LO is not shared, then each LO=20
> disciplines to a common reference signal. This can provide a=20
> consistent average phase offset among channels (as in the X310/UBX),=20
> but the instantaneous phase of a given channel can deviate based on=20
> its individual phase locked loop (PLL). All of the PLLs will keep the=20
> relative phase/frequency within a tolerance, but it is not the same as=20
> a shared LO for which slight deviations=C2=A0will be identical on every=
=20
> channel.
> Rob
>
I have described high-precision-coherence requirements as "brutal=20
coherence" ('brutal' because designing hardware that
 =C2=A0 provides such is, well, a 'brual' task).

My own application for coherence--astronomical interferometry benefits=20
most from a completely-shared-LO scheme, along with
 =C2=A0the necessary DSP bits that both guarantee zero mutual phase noise=
,=20
and ideally, no channel-to-channel phase *offset*.

Ironically enough, in the "olden days" of interferometry, even if your=20
LO (that was shared among all your receive chains)
 =C2=A0 was kinda crappy from a phase-noise perspective, it didn't matter=
,=20
because ALL the channels were "shaking and shimmering"
 =C2=A0 together at the same instant in time--so their mutual phase-noise=
 was=20
quite low.

Once you bring one-synth-per-channel into the mix, then you have a=20
couple of problems to deal with, even with a shared
 =C2=A0 reference clock:

 =C2=A0=C2=A0=C2=A0 A higher mutual phase noise
 =C2=A0=C2=A0=C2=A0 B often unpredictable phase offset

Whether (A) is a serious problem depends very much on your=20
application--in astronomical interferometry, your
 =C2=A0 correlation SNR degrades with mutual phase noise, but one tends t=
o=20
integrate for long periods, so it's not
 =C2=A0 a total disaster.

For (B), this can usually be calibrated out at the start of a "run"=20
(whatever that means in your application).=C2=A0 Radio observatories
 =C2=A0 do this even when they have a "brutally coherent" receiving set-u=
p,=20
because analog bits and pieces up near the antenna, and
 =C2=A0 signal distribution systems often impart differential phase offse=
ts=20
due to temperature effects.=C2=A0 So, even there, with
 =C2=A0 a "brutally coherent" setup, there's a phase-offset calibration d=
one=20
at the start...




>
> On Wed, Jul 26, 2023 at 5:30=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 26/07/2023 17:17, David J Li wrote:
>>
>>     Thanks for the suggestion, Marcus. The N320 and N321 are only
>>     both 2 TX/RX devices as far as I can tell, so to satisfy 4 RX, 1
>>     TX it looks like I would need 2 devices. Do you happen to know if
>>     there is any official documentation on using the external LO for
>>     the N310 hidden somewhere on the Ettus wiki? The 5 GHz external
>>     LO initial input requirement doesn=E2=80=99t seem to be documented
>>     anywhere as far as I can tell.
>>
>     It is the case that there are some app-notes needed for the N310,
>     including the "5GHz Lore" -- this requirement comes, from
>     =C2=A0 what I understand, from the AD9371 data-sheet.
>
>     There are folks on this list who have used the external LO on N310
>     successfully, including (I believe, please correct me if I'm
>     =C2=A0 wrong) Rob Kossler.
>
>
>>     *From:*Marcus D. Leech <patchvonbraun@gmail.com>
>>     <mailto:patchvonbraun@gmail.com>
>>     *Sent:* Wednesday, July 26, 2023 4:51 PM
>>     *To:* usrp-users@lists.ettus.com
>>     *Subject:* [EXT] [USRP-users] Re: N310 correct choice for
>>     coherent 4 channel RX w/ 1 TX ?
>>
>>     ZjQcmQRYFpfptBannerEnd
>>
>>     On 26/07/2023 16:47, David J Li wrote:
>>
>>         Hi all,
>>
>>         I=E2=80=99m currently using a USRP N310 for an application tha=
t
>>         requires coherent 4 channel RX w/ the ability to TX on 1
>>         channel as well. In the past, I=E2=80=99ve used USRP X310s to =
do 4
>>         channel coherent RX and found the calibration process for
>>         that to be relatively straight forward using the TwinRX
>>         cards. It was simply phase aligned input signals into each RX
>>         port and computing the constant phase offset between channels
>>         and just adjusting for that factor in my processing digitally.
>>
>>         My understanding is that this is more complicated w/ the
>>         N310. The procedure as I understand is that during
>>         initialization the N310 external LO needs to be set at 5 GHz.
>>         After initialization, the external LO can be set to 2 times
>>         the desired center freq, but that there is still a 180 deg
>>         ambiguity between channels which would need to be figured out
>>         via calibration w/ a phase aligned input signal. Is this
>>         correct? Is there some way to shorten or optimize this
>>         procedure?
>>
>>     The phase ambiguity arises from the 2XLO mixing in the RFIC
>>     chips, and there's no way around it.
>>
>>     You might look at the N320/N321 family for multi-channel coherent
>>     TX/RX applications.
>>
>>
>>         Second question would be if the process is simpler on
>>         different USRP models akin to how the X310 w/ TwinRX cards
>>         work where you just need to compute some calibration values
>>         once at powerup and afterwards those values hold pretty true
>>         for a long time as long as your gain/center freq don=E2=80=99t
>>         change. Having the requirement of being able to TX on at
>>         least 1 channel prevents me from using an X310 w/ TwinRX cards=
.
>>
>>         Thanks,
>>
>>         -David
>>
>>
>>
>>         _______________________________________________
>>
>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>
>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.co=
m
>>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------SDR6heGmsNURzR78ue9KaUcL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/07/2023 18:13, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQSCSSWKHx3pSqARywC0ryMUEnJkKsG_1r73RhQ5Jpzgg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div>
          <div>Depending on "just how coherent" you need to be affects
            whether you want/need "shared LO".=C2=A0 If the LO is not sha=
red,
            then each LO disciplines to a common reference signal. This
            can provide a consistent average phase offset among channels
            (as in the X310/UBX), but the instantaneous phase of a given
            channel can deviate based on its individual phase locked
            loop (PLL). All of the PLLs will keep the relative
            phase/frequency within a tolerance, but it is not the same
            as a shared LO for which slight deviations=C2=A0will be ident=
ical
            on every channel.</div>
          <div>Rob</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    I have described high-precision-coherence requirements as "brutal
    coherence" ('brutal' because designing hardware that<br>
    =C2=A0 provides such is, well, a 'brual' task).<br>
    <br>
    My own application for coherence--astronomical interferometry
    benefits most from a completely-shared-LO scheme, along with<br>
    =C2=A0the necessary DSP bits that both guarantee zero mutual phase no=
ise,
    and ideally, no channel-to-channel phase *offset*.<br>
    <br>
    Ironically enough, in the "olden days" of interferometry, even if
    your LO (that was shared among all your receive chains)<br>
    =C2=A0 was kinda crappy from a phase-noise perspective, it didn't mat=
ter,
    because ALL the channels were "shaking and shimmering"<br>
    =C2=A0 together at the same instant in time--so their mutual phase-no=
ise
    was quite low.<br>
    <br>
    Once you bring one-synth-per-channel into the mix, then you have a
    couple of problems to deal with, even with a shared<br>
    =C2=A0 reference clock:<br>
    <br>
    =C2=A0=C2=A0=C2=A0 A higher mutual phase noise<br>
    =C2=A0=C2=A0=C2=A0 B often unpredictable phase offset<br>
    <br>
    Whether (A) is a serious problem depends very much on your
    application--in astronomical interferometry, your<br>
    =C2=A0 correlation SNR degrades with mutual phase noise, but one tend=
s to
    integrate for long periods, so it's not<br>
    =C2=A0 a total disaster.<br>
    <br>
    For (B), this can usually be calibrated out at the start of a "run"
    (whatever that means in your application).=C2=A0 Radio observatories<=
br>
    =C2=A0 do this even when they have a "brutally coherent" receiving
    set-up, because analog bits and pieces up near the antenna, and<br>
    =C2=A0 signal distribution systems often impart differential phase
    offsets due to temperature effects.=C2=A0 So, even there, with<br>
    =C2=A0 a "brutally coherent" setup, there's a phase-offset calibratio=
n
    done at the start...<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQSCSSWKHx3pSqARywC0ryMUEnJkKsG_1r73RhQ5Jpzgg@mail.gmai=
l.com">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 26, 2023 at
            5:30=E2=80=AFPM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <div>On 26/07/2023 17:17, David J Li wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div>
                  <p class=3D"MsoNormal">Thanks for the suggestion,
                    Marcus. The N320 and N321 are only both 2 TX/RX
                    devices as far as I can tell, so to satisfy 4 RX, 1
                    TX it looks like I would need 2 devices. Do you
                    happen to know if there is any official
                    documentation on using the external LO for the N310
                    hidden somewhere on the Ettus wiki? The 5 GHz
                    external LO initial input requirement doesn=E2=80=99t=
 seem
                    to be documented anywhere as far as I can tell.</p>
                </div>
              </blockquote>
              It is the case that there are some app-notes needed for
              the N310, including the "5GHz Lore" -- this requirement
              comes, from<br>
              =C2=A0 what I understand, from the AD9371 data-sheet.<br>
              <br>
              There are folks on this list who have used the external LO
              on N310 successfully, including (I believe, please correct
              me if I'm<br>
              =C2=A0 wrong) Rob Kossler.<br>
              <br>
              <br>
              <blockquote type=3D"cite">
                <div>
                  <p class=3D"MsoNormal">=C2=A0</p>
                  <div
style=3D"border-right:none;border-bottom:none;border-left:none;border-top=
:1pt
                    solid rgb(225,225,225);padding:3pt 0in 0in">
                    <p class=3D"MsoNormal"><b><span>From:</span></b><span=
>
                        Marcus D. Leech <a
                          href=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true">&lt;=
patchvonbraun@gmail.com&gt;</a>
                        <br>
                        <b>Sent:</b> Wednesday, July 26, 2023 4:51 PM<br>
                        <b>To:</b> <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a><br>
                        <b>Subject:</b> [EXT] [USRP-users] Re: N310
                        correct choice for coherent 4 channel RX w/ 1 TX
                        ?</span></p>
                  </div>
                  <div>
                    <p class=3D"MsoNormal"><span style=3D"font-size:1pt">=
=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span style=3D"font-size:1pt">=
=C2=A0</span></p>
                    <p class=3D"MsoNormal"><span
                        style=3D"font-size:1pt;color:white">ZjQcmQRYFpfpt=
BannerEnd</span></p>
                  </div>
                  <div>
                    <p class=3D"MsoNormal">On 26/07/2023 16:47, David J L=
i
                      wrote:</p>
                  </div>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal">Hi all,</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">I=E2=80=99m currently using a =
USRP N310
                      for an application that requires coherent 4
                      channel RX w/ the ability to TX on 1 channel as
                      well. In the past, I=E2=80=99ve used USRP X310s to =
do 4
                      channel coherent RX and found the calibration
                      process for that to be relatively straight forward
                      using the TwinRX cards. It was simply phase
                      aligned input signals into each RX port and
                      computing the constant phase offset between
                      channels and just adjusting for that factor in my
                      processing digitally. </p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">My understanding is that this
                      is more complicated w/ the N310. The procedure as
                      I understand is that during initialization the
                      N310 external LO needs to be set at 5 GHz. After
                      initialization, the external LO can be set to 2
                      times the desired center freq, but that there is
                      still a 180 deg ambiguity between channels which
                      would need to be figured out via calibration w/ a
                      phase aligned input signal. Is this correct? Is
                      there some way to shorten or optimize this
                      procedure? </p>
                  </blockquote>
                  <p class=3D"MsoNormal"><span>The phase ambiguity arises
                      from the 2XLO mixing in the RFIC chips, and
                      there's no way around it.<br>
                      <br>
                      You might look at the N320/N321 family for
                      multi-channel coherent TX/RX applications.<br>
                      <br>
                      <br>
                    </span></p>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">Second question would be if th=
e
                      process is simpler on different USRP models akin
                      to how the X310 w/ TwinRX cards work where you
                      just need to compute some calibration values once
                      at powerup and afterwards those values hold pretty
                      true for a long time as long as your gain/center
                      freq don=E2=80=99t change. Having the requirement o=
f being
                      able to TX on at least 1 channel prevents me from
                      using an X310 w/ TwinRX cards.</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">Thanks,</p>
                    <p class=3D"MsoNormal">-David</p>
                    <p class=3D"MsoNormal"><span><br>
                        <br>
                      </span></p>
                    <pre>_______________________________________________<=
/pre>
                    <pre>USRP-users mailing list -- <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=
=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a></pre>
                    <pre>To unsubscribe send an email to <a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"=
true" class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a=
></pre>
                  </blockquote>
                  <p class=3D"MsoNormal"><span>=C2=A0</span></p>
                </div>
              </blockquote>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------SDR6heGmsNURzR78ue9KaUcL--

--===============7872344291589917597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7872344291589917597==--
