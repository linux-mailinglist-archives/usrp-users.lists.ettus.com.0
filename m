Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B8C52670C
	for <lists+usrp-users@lfdr.de>; Fri, 13 May 2022 18:30:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52DBC384825
	for <lists+usrp-users@lfdr.de>; Fri, 13 May 2022 12:30:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652459429; bh=i/6RArQnm0FSSMNV3w+zHVfFOt78SdL+SBuz+DyyFLM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nJfZUENPQQMeKb28dEB0qLjdbgdHJ/S9J7ZhOTkyyCEUUNMnlsrLT0FlH7LblOyzV
	 GzBrFaorAeymyqT9PvU1eqKtV/y7tHFlzB2jKeRxYthwn5X6qtcr80TY4UWT8RZhGx
	 UpBnSu95KsmkxrHNOMj4NOk+y7DRESEEmIcH0mea2d6fTcIJdvUtiMcRrAcoGNwW5W
	 cPKLl+GKW1Ettu/HnhffPI60GcqiF5sgQA+HiOkRax0Oyn7JaY+yEi7WcbyLS9qIsq
	 /qP15stgdKdV19k0/s7x/SO+WhI18VympbE69sf8Vd4IWMVwfRurZmyqMGqi3gZwN5
	 rxuQRecspN9Ug==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E040384819
	for <usrp-users@lists.ettus.com>; Fri, 13 May 2022 12:29:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W/QTWv5r";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id dv4so7006648qvb.13
        for <usrp-users@lists.ettus.com>; Fri, 13 May 2022 09:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=HeMS7+QL1/POLYiVdN06vgwmTzi2PltoLtLK4gUwENE=;
        b=W/QTWv5r/gs8LxPeHO9MlZdJ996agMPqorrJdjJYKUezqWQlHML4ZgdtuCMzPXIBLf
         lU+YNT7oFD+oLwxDFlWMSWiuAFGejt2GVUdhhwny6pzZhhIu3USj+oa56ujMS1m9yIhV
         1tLmr6AK1qRRnHcHUytO2t5C0BTyhWj3MfcAuEOuiKSZpG6pG2kolWTJebB/yePH1N4L
         kKkZuk2A3uStr4hiDI5iY1fMXYxDfVpd4VIrZIqrkhzib8f7tx1TOzRXrXQ4Ep0gTAeH
         8yXRCzZiYZy4x4hBGbeY3W1VqsEouID3cI1VwwC1gb6mBS9RVK2UAXjiLBXhWCwk7So/
         1fwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=HeMS7+QL1/POLYiVdN06vgwmTzi2PltoLtLK4gUwENE=;
        b=DX3c+MZda5xcagBy6h/wnbDsM9eU2F0s/TeSvMpD0h7nrZGHU/ZViQy5WLctpS3pFf
         yXMYTIni/hn80o6WWhWuNQstXiA2ghKqFUT3WBNVWHnTZ5X2T30fAIUL5oeGA4mPh730
         nL1NZ6E4Oga6s7+AD0bWKVdHEl7SML89x0Zfo0J2wJGu/pbu1r219IGHaCggy8XbFke/
         i3OdqikixQfc2TLiOwhkMdYDZxI1U/uZU/TpFxFncr66U9KpGh+ITt/tr2r2TvLXDKER
         eRy7Sm1oKzySod7poylePSD13fXAnZ26x6UyJVMukpTAvxRKAOf4GAcqJ+0LiGDci1mi
         GRMQ==
X-Gm-Message-State: AOAM531NXmeR4WONvf9Eg9ltdt26cKOVAETo9yg+aRXgSGTQATTUHMvS
	jHubMD2FNlStXpeP+eZvx0GwmUArCkA=
X-Google-Smtp-Source: ABdhPJznJkClx7LSaFCjtsMTqDksFkli6XzLlMe+MgdLbkkjCPOfNqmoZ1AbPrqTzGD+xLvj6Hah/Q==
X-Received: by 2002:a05:6214:e6b:b0:45b:1ea:74d9 with SMTP id jz11-20020a0562140e6b00b0045b01ea74d9mr5127183qvb.22.1652459359771;
        Fri, 13 May 2022 09:29:19 -0700 (PDT)
Received: from [192.168.2.164] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id c28-20020a05620a201c00b0069fcf7678besm1526317qka.105.2022.05.13.09.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 09:29:19 -0700 (PDT)
Message-ID: <68fa2a49-70c4-acb1-8c39-0da849393b75@gmail.com>
Date: Fri, 13 May 2022 12:29:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Marcin Puchlik <puchlikmarcin@gmail.com>
References: <CAFghhNOMn+uGS5hNck9bAuhM9+_oiv1yjq494=saGc7-M7Begw@mail.gmail.com>
 <714d6b41-a910-175c-b25f-e30e6154fcb0@gmail.com>
 <CAFghhNMMweXPTLyhvG0v9c2VhRSJgCG3T3mac8EGA8cmFEnw6g@mail.gmail.com>
 <7ba1bae0-0218-372f-c263-91ead59e6153@gmail.com>
 <CAFghhNO3LZ9beJbCgfiRZUvzOwRd6vgoCMsrBYECONmHgjx=OA@mail.gmail.com>
 <e5a70f4b-c3d9-729c-dffd-aa79194da80d@gmail.com>
 <CAFghhNPFpQriBBkKUDtMEsffymDS=jNCmkTFJzG77OO-gFk=BA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFghhNPFpQriBBkKUDtMEsffymDS=jNCmkTFJzG77OO-gFk=BA@mail.gmail.com>
Message-ID-Hash: DM3PWN75FCX4Q5CKCI2RW4CWG3MNKXZP
X-Message-ID-Hash: DM3PWN75FCX4Q5CKCI2RW4CWG3MNKXZP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why do we need 1 PPS and 10 MHz signal to synchronize
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DM3PWN75FCX4Q5CKCI2RW4CWG3MNKXZP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7013216661474927264=="

This is a multi-part message in MIME format.
--===============7013216661474927264==
Content-Type: multipart/alternative;
 boundary="------------o9ESZ9R1jkrJkNcZ7eCd6Uw0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------o9ESZ9R1jkrJkNcZ7eCd6Uw0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-13 10:38, Marcin Puchlik wrote:
> But you know what I observed and what is weird? When I ask for an=20
> external source and I intentionally turn off the external generator=20
> providing a 10 MHz signal, USRP behaves as if it was still seeing a 10=20
> MHz reference signal at its input. Doesn't matter if the generator is=20
> switched on or off - USRP behaves the same way. Because of that I am=C2=
=A0=20
> not sure if USRP is being clocked=C2=A0from an internal or external clo=
ck=20
> source. Is it the bug in the GNU radio or UHD or am I doing=C2=A0someth=
ing=20
> wrong? How can I get the feedback from the USRP hardware that it was=20
> locked to the external clock? Is it even possible?
>
The external clock is simply used to "discipline" or "steer" the main=20
system clock.=C2=A0 If that "steering" signal goes away, the clock PLL si=
mply=20
"holds" are where it
 =C2=A0 was last and the system clock will do what it would do "naturally=
" if=20
not getting any steering signal.=C2=A0 Unless you have some way of measur=
ing=20
precise phase and
 =C2=A0 frequency offsets in your overall system, you won't notice any=20
high-level functional change.


>
>
> =C5=9Br., 11 maj 2022 o 16:14=C2=A0Marcus D. Leech <patchvonbraun@gmail=
.com>=20
> napisa=C5=82(a):
>
>     On 2022-05-11 09:51, Marcin Puchlik wrote:
>>     Will=C2=A0it be enough to clock USRP from the external 10 MHz sign=
al
>>     generator? When I run the flowgraph I cannot see the information
>>     that is using the external clock. Here is the output from GNU Radi=
o:
>>     [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>>     UHD_3.15.0.HEAD-0-gaea0e2de
>>     [INFO] [B200] Detected Device: B200
>>     [INFO] [B200] Operating over USB 2.
>>     [INFO] [B200] Initialize CODEC control...
>>     [INFO] [B200] Initialize Radio control...
>>     [INFO] [B200] Performing register loopback test...
>>     [INFO] [B200] Register loopback test passed
>>     [INFO] [B200] Setting master clock rate selection to 'automatic'.
>>     [INFO] [B200] Asking for clock rate 16.000000 MHz...
>>     [INFO] [B200] Actually got clock rate 16.000000 MHz.
>>     [INFO] [B200] Asking for clock rate 51.200000 MHz...
>>     [INFO] [B200] Actually got clock rate 51.200000 MHz.
>>     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at pps =
edge
>>     [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps (synchrono=
usly)
>>     [INFO] [B200] Asking for clock rate 51.200000 MHz...
>>     [INFO] [B200] OK
>>     [INFO] [B200] Asking for clock rate 51.200000 MHz...
>>     [INFO] [B200] OK
>>     [WARNING] [AD936X] Selected Tx sample rate (0.2 MHz) is less than
>>     analog frontend filter bandwidth (0.2 MHz).
>>
>>
>>     image.png
>>
>     Yeah, I don't think it puts out an "i'm locked to the external
>     reference" message.
>
>     But you've asked for "external" clock source, so you should be
>     good to go, assuming your external generator meets the requirements=
.
>
>
>>     =C5=9Br., 11 maj 2022 o 15:24=C2=A0Marcus D. Leech
>>     <patchvonbraun@gmail.com> napisa=C5=82(a):
>>
>>         On 2022-05-11 09:18, Marcin Puchlik wrote:
>>>         Marcus,
>>>         Thank you very much for the answer. Does it mean that 1 PPS
>>>         signal is optional? Can I only provide an external 10 MHz
>>>         clock without 1 PPS?
>>>         *Z powa=C5=BCaniem *
>>>         *Marcin Puchlik*
>>         *Yes, absolutely.=C2=A0 If timestamp synchronization is not
>>         important to you, then you can just provide a 10MHz reference
>>         when you want better
>>         =C2=A0 frequency accuracy and drift characteristics than are
>>         offered by the on-board clock and/or you want some type of
>>         phase-synchronization
>>         =C2=A0 but don't care much about mutual phase offsets....
>>
>>
>>
>>
>>
>>         *
>>>
>>>
>>>         =C5=9Br., 11 maj 2022 o 14:24=C2=A0Marcus D. Leech
>>>         <patchvonbraun@gmail.com> napisa=C5=82(a):
>>>
>>>             On 2022-05-11 06:17, Marcin Puchlik wrote:
>>>>             Hello Community,
>>>>             Like in the topic, I know that a stable 10 MHz source
>>>>             is needed as a clock signal but why do we need=C2=A01 PP=
S
>>>>             signal? How is it used by the USRP hardware? Can
>>>>             someone explain that to me?
>>>>             Thanks
>>>>             Marcin
>>>>
>>>>             _______________________________________________
>>>>             USRP-users mailing list --usrp-users@lists.ettus.com
>>>>             To unsubscribe send an email tousrp-users-leave@lists.et=
tus.com
>>>             1PPS is used to provide timestamp-clock synchronization
>>>             across multiple devices, typically.=C2=A0 This is importa=
nt
>>>             when your application requires this, such as in MIMO or
>>>             =C2=A0 multi-receiver TDOA schemes, etc.
>>>
>>>             Basically, when you have multiple devices you use
>>>             set_time_unknown_pps() or set_time_next_pps() to signal
>>>             to all devices in your multi_usrp object=C2=A0 that at th=
e next
>>>             =C2=A0 1PPS, to set the timestamp clock to the value give=
n in
>>>             the the API call.
>>>
>>>             This turns out to be useful even in single devices that
>>>             are "bicameral", such as B210 and X310, where there are
>>>             (for historic and architectural reasons)
>>>             =C2=A0 TWO timestamp clocks.=C2=A0 Use the 1PPS synchroni=
zation
>>>             primitives causes the internal timestamp clocks to
>>>             become synchronized.
>>>
>>>
>>>             _______________________________________________
>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>
>>
>

--------------o9ESZ9R1jkrJkNcZ7eCd6Uw0
Content-Type: multipart/related;
 boundary="------------tTH9tfP0umfzPtdS0bHM1HpQ"

--------------tTH9tfP0umfzPtdS0bHM1HpQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-13 10:38, Marcin Puchlik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFghhNPFpQriBBkKUDtMEsffymDS=3DjNCmkTFJzG77OO-gFk=3DBA@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">But you know what I observed and what is weird?
        When I ask for an external source and I intentionally turn off
        the external generator providing a 10 MHz signal, USRP behaves
        as if it was still seeing a 10 MHz reference signal at its
        input. Doesn't matter if the generator is switched on or off -
        USRP behaves the same way. Because of that I am=C2=A0 not sure if
        USRP is being clocked=C2=A0from an internal or external clock sou=
rce.
        Is it the bug in the GNU radio or UHD or am I doing=C2=A0somethin=
g
        wrong? How can I get the feedback from the USRP hardware that it
        was locked to the external clock? Is it even possible?=C2=A0<br
          clear=3D"all">
        <div>
          <div dir=3D"ltr" data-smartmail=3D"gmail_signature">
            <div dir=3D"ltr">
              <div dir=3D"ltr"><br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    The external clock is simply used to "discipline" or "steer" the
    main system clock.=C2=A0 If that "steering" signal goes away, the clo=
ck
    PLL simply "holds" are where it<br>
    =C2=A0 was last and the system clock will do what it would do "natura=
lly"
    if not getting any steering signal.=C2=A0 Unless you have some way of
    measuring precise phase and<br>
    =C2=A0 frequency offsets in your overall system, you won't notice any
    high-level functional change.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAFghhNPFpQriBBkKUDtMEsffymDS=3DjNCmkTFJzG77OO-gFk=3DBA@mail.=
gmail.com">
      <div dir=3D"ltr"><br>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=C5=9Br., 11 maj 2022 o
          16:14=C2=A0Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          napisa=C5=82(a):<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2022-05-11 09:51, Marcin Puchlik wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Will=C2=A0it be enough to clock USRP from the extern=
al
                  10 MHz signal generator? When I run the flowgraph I
                  cannot see the information that is using the external
                  clock. Here is the output from GNU Radio:</div>
                <div>[INFO] [UHD] linux; GNU C++ version 9.4.0;
                  Boost_107100; UHD_3.15.0.HEAD-0-gaea0e2de<br>
                  [INFO] [B200] Detected Device: B200<br>
                  [INFO] [B200] Operating over USB 2.<br>
                  [INFO] [B200] Initialize CODEC control...<br>
                  [INFO] [B200] Initialize Radio control...<br>
                  [INFO] [B200] Performing register loopback test... <br>
                  [INFO] [B200] Register loopback test passed<br>
                  [INFO] [B200] Setting master clock rate selection to
                  'automatic'.<br>
                  [INFO] [B200] Asking for clock rate 16.000000 MHz... <b=
r>
                  [INFO] [B200] Actually got clock rate 16.000000 MHz.<br=
>
                  [INFO] [B200] Asking for clock rate 51.200000 MHz... <b=
r>
                  [INFO] [B200] Actually got clock rate 51.200000 MHz.<br=
>
                  [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transit=
ion at
                  pps edge<br>
                  [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
                  (synchronously)<br>
                  [INFO] [B200] Asking for clock rate 51.200000 MHz... <b=
r>
                  [INFO] [B200] OK<br>
                  [INFO] [B200] Asking for clock rate 51.200000 MHz... <b=
r>
                  [INFO] [B200] OK<br>
                  [WARNING] [AD936X] Selected Tx sample rate (0.2 MHz)
                  is less than<br>
                  analog frontend filter bandwidth (0.2 MHz).<br>
                </div>
                <div><br>
                </div>
                <div><br>
                </div>
                <img src=3D"cid:part1.RUeS9ULe.P47KURli@gmail.com"
                  alt=3D"image.png" class=3D"" width=3D"562" height=3D"56=
2"><br>
              </div>
              <br>
            </blockquote>
            Yeah, I don't think it puts out an "i'm locked to the
            external reference" message.<br>
            <br>
            But you've asked for "external" clock source, so you should
            be good to go, assuming your external generator meets the
            requirements.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=C5=9Br., 11 maj 20=
22 o
                  15:24=C2=A0Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  napisa=C5=82(a):<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2022-05-11 09:18, Marcin Puchlik wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Marcus,
                        <div>Thank you very much for the answer. Does it
                          mean that 1 PPS signal is optional? Can I only
                          provide an external 10 MHz clock without 1
                          PPS?<br clear=3D"all">
                          <div>
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div>
                                  <div dir=3D"ltr"><b>Z powa=C5=BCaniem=C2=
=A0</b>
                                    <div><b>Marcin Puchlik</b></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                    <b>Yes, absolutely.=C2=A0 If timestamp synchronizatio=
n is
                      not important to you, then you can just provide a
                      10MHz reference when you want better<br>
                      =C2=A0 frequency accuracy and drift characteristics
                      than are offered by the on-board clock and/or you
                      want some type of phase-synchronization<br>
                      =C2=A0 but don't care much about mutual phase
                      offsets....<br>
                      <br>
                      <br>
                      <br>
                      <br>
                      <br>
                    </b>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">=C5=9Br., 1=
1 maj
                          2022 o 14:24=C2=A0Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          napisa=C5=82(a):<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div>
                            <div>On 2022-05-11 06:17, Marcin Puchlik
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">Hello Community,
                                <div>Like in the topic, I know that a
                                  stable 10 MHz source is needed as a
                                  clock signal but why do we need=C2=A01 =
PPS
                                  signal? How is it used by the USRP
                                  hardware? Can someone explain that to
                                  me?</div>
                                <div>Thanks</div>
                                <div>
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div>Marcin</div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <br>
                              <fieldset></fieldset>
                              <pre>______________________________________=
_________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
                            </blockquote>
                            1PPS is used to provide timestamp-clock
                            synchronization across multiple devices,
                            typically.=C2=A0 This is important when your
                            application requires this, such as in MIMO
                            or<br>
                            =C2=A0 multi-receiver TDOA schemes, etc.<br>
                            <br>
                            Basically, when you have multiple devices
                            you use set_time_unknown_pps() or
                            set_time_next_pps() to signal to all devices
                            in your multi_usrp object=C2=A0 that at the n=
ext<br>
                            =C2=A0 1PPS, to set the timestamp clock to th=
e
                            value given in the the API call.<br>
                            <br>
                            This turns out to be useful even in single
                            devices that are "bicameral", such as B210
                            and X310, where there are (for historic and
                            architectural reasons)<br>
                            =C2=A0 TWO timestamp clocks.=C2=A0 Use the 1P=
PS
                            synchronization primitives causes the
                            internal timestamp clocks to become
                            synchronized.<br>
                            <br>
                            <br>
                          </div>
_______________________________________________<br>
                          USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          To unsubscribe send an email to <a
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
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
--------------tTH9tfP0umfzPtdS0bHM1HpQ
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.RUeS9ULe.P47KURli@gmail.com>
Content-Transfer-Encoding: base64

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

--------------tTH9tfP0umfzPtdS0bHM1HpQ--

--------------o9ESZ9R1jkrJkNcZ7eCd6Uw0--

--===============7013216661474927264==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7013216661474927264==--
