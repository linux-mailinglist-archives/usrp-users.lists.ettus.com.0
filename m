Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF5A73E5E5
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 18:58:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 764513817FB
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jun 2023 12:58:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687798696; bh=dZwq20I0PtftQfXz3NyzhPMxpcitPmDfQsnjtU8RkWk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=t1/5Cv1jXGRUQJvERA16A1xuwa/0kjK77wd+fSV2LDfcnssSEy0KX0zDS8wo5k64k
	 VhJGrWh4RmCh03vATqnjgwla79Ees5FaVK6r1F6DirECIkSobqtrZdvVbQrPzDD1rf
	 Hl1g5MGFCNoaLK2zvgSjZby0IvoKU+bT6B03rG8GbGTynN1lrBs69HEsTVVT/UGFvS
	 XSsqsbpmufjm7tQpAp45VZd4CzZEUAUMt9KtqY6/4tec0IZQi75JZ20Cxp8EpVM44W
	 fiT8ubBqXi+KVadrGcFVNz1k6EF51ky3wZRtB21tOBtUfcRCniG/wNW0mNd/nzG7UJ
	 sU0YIHhkhdi7w==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id DAA94383EC6
	for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 12:56:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R5JAlhMD";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7659914a504so99132285a.0
        for <usrp-users@lists.ettus.com>; Mon, 26 Jun 2023 09:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687798580; x=1690390580;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QnU3wDRMdDE7gT+yrNv/b6AaFCrwtweSkSn/r14Jojw=;
        b=R5JAlhMDrl3fiRpJVllOd6oGMP7DGkj82XpKEBRrqD33rU1lkFx1Cc3MvDUvbRv1cu
         JmsmdLqQ4yePK8UEk3/mZqsTd/v/xMfoSnM+ADzAkA5MCJGN+giTpjkRTWMiQ9IF7X+E
         vAn/6RxoLy1A3joCE7DFwzUUEcMC457n9SvB67vJ11vl/BDPEYwXcUnedMSxPSZM1PcQ
         mG/B7P7C4unmavMpFpEP6jim9NJdoPmxFZqXaGRIasIEaKwmX/lx3eX1+j2kLSjqrF1X
         vbkc4dBuRzsIkOfwysJsu5Dsc+MlqOQOpyrr6lnftRvmHROVKTj6UOtar6BDthbDZVbM
         cQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687798580; x=1690390580;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QnU3wDRMdDE7gT+yrNv/b6AaFCrwtweSkSn/r14Jojw=;
        b=PZkXOELIWrBQ+U4EUx9DdVJy/QnHtIvX9xMzGeTeZ4lO6x9r5MgKVnV6M8SYJuVRA7
         L2Iu/Zu6fqYrmB1VGNMzNmL/23VpRx1AFBAssis364/5Ue1NI9+Tc0cMLKt+XyFoVZ8a
         nvl3MwbofN4Y/7f92qu2ytklYzCX7LM3nGYBABxphMXaJ+Mxur2ylB+H8Her1/8ZnPph
         7uxa+rpijQDTozmDm5BawRQpDSp1BAvdTZNbqBH0Eb4b1zAtOvjC86+M4uX08LfcO1LI
         3b6ePbZ1yricbaXfbjPPnz0jyXwt/ZbkZur0N4cJ2OVrCE/QSNPK0UiZybMP1IJ3CGo6
         kVKg==
X-Gm-Message-State: AC+VfDy/2r/bJXQXLFnLXz/7OGZ98RITzi5WrF95uPT7vDz6m1OmJMxG
	kbYeTvTdC/O8KY95GK2iCePrCHOFeS4=
X-Google-Smtp-Source: ACHHUZ40VgJQR6vrFjYNQFFHXSbPB5bMiF9pXVIyjn6StXhNId1JULRSsG0OS9REnwgpm8g/D3SqNg==
X-Received: by 2002:a05:620a:269b:b0:765:84bf:3cbc with SMTP id c27-20020a05620a269b00b0076584bf3cbcmr4339229qkp.36.1687798579918;
        Mon, 26 Jun 2023 09:56:19 -0700 (PDT)
Received: from [192.168.2.173] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id c6-20020ad44306000000b006300a5513d7sm3341708qvs.116.2023.06.26.09.56.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 09:56:18 -0700 (PDT)
Message-ID: <436ad383-6909-585d-b161-6afa4f77b0f2@gmail.com>
Date: Mon, 26 Jun 2023 12:56:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
References: <CA+QP_P=kMBqVSfi7ktJdrayHEjMWxu0SK-1jpgJx3ho2=fxOJQ@mail.gmail.com>
 <11ffaa69-3ae5-bd0f-8570-dc0caf48912f@gmail.com>
 <CA+QP_PnM2bqW6U+FG6NbaQ66ES921w9EPVGu-Uf8JoPGPnW1fQ@mail.gmail.com>
 <d846abc8-cbbb-0bb4-0432-72ac15aeb7df@gmail.com>
 <CA+QP_P=CR4FscWA3wwM1Jj4Ng3sKCRqbL6EDA1Zo3dDMoS_vdw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+QP_P=CR4FscWA3wwM1Jj4Ng3sKCRqbL6EDA1Zo3dDMoS_vdw@mail.gmail.com>
Message-ID-Hash: UP7J3GA5YR7DFWI34SAKXNKEEC26WKSL
X-Message-ID-Hash: UP7J3GA5YR7DFWI34SAKXNKEEC26WKSL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Regarding Transmitting Gain of USRP N-200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UP7J3GA5YR7DFWI34SAKXNKEEC26WKSL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2073122309249072671=="

This is a multi-part message in MIME format.
--===============2073122309249072671==
Content-Type: multipart/alternative;
 boundary="------------8xO07Jxa2x0Dy0pTyHmIjmPF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8xO07Jxa2x0Dy0pTyHmIjmPF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/06/2023 12:54, Arhum Ahmad wrote:
> I have=C2=A0updated the rfconverter_libiio file in the base of Matlab. =
Now=20
> I can see the variation=C2=A0in signal power in the spectrum analyzer.=20
> However, in the receiver, the problem is still the same.
This is squarely a MATLAB problem at this point.=C2=A0 So, you'll have to=
 use=20
those support channels rather than usrp-users


>
> On Mon, Jun 26, 2023 at 8:36=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 26/06/2023 09:32, Arhum Ahmad wrote:
>>     Thanks for the response,
>>
>>     1. I am using UBX 10-6000 MHz
>>     Rx/Tx(https://www.ettus.com/all-products/ubx40/)
>>     2. Yes, I am using AGC for the processing part. The parameter
>>     values I have uses are
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- DesiredPower: 2
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- AveragingLength: 50
>>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- MaxPowerGain: 60
>>     3. I have=C2=A0checked the spectrum of the signal in a
>>     separate=C2=A0spectruHm=C2=A0analyzer, there is NO change in the
>>     spectrum=C2=A0as I vary the gain.
>     Assuming you have a complete UHD installation, you can use the
>     tx_waveforms example app to check this as well.=C2=A0 Since you're
>     =C2=A0 using MATLAB, I cannot help with that aspect.
>
>
>>
>>     On Mon, Jun 26, 2023 at 2:58=E2=80=AFAM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 25/06/2023 16:49, Arhum Ahmad wrote:
>>>         Respected sir,
>>>         I am using N-200 USRP for transmitting a signal. While
>>>         transmitting, I havechangedthe Gain value in the
>>>         SDRutransmitting block, but my signal strength at the
>>>         receiver remains=C2=A0the same. I also stop and restart the c=
ode
>>>         but the change in gain does not affect the received signal.
>>>         I have tried the changing gain via both available options
>>>         i.e., input port and dialog, but it seems to have no
>>>         effecton the receiver. The signal strength at the receiver
>>>         remains=C2=A0the same. I have tried 30 dB(Maximum gain) to 0 =
dB
>>>         (minimum gain) in both cases received SNR is the
>>>         same(i.e.,15 dB). I am using a wireless connection in
>>>         line-of-sight, with minimum Tx gain at least a fewdropsin
>>>         SNR should be observed. I have also tried -50dB (just
>>>         checking) but noeffect in the SNR is observed. The same
>>>         thing I havetried using B210 as Tx, Rx signal strength does
>>>         change in this case. However, while using N-200, noeffect of
>>>         changing the gain value is observed. Somehow=C2=A0gainvalue i=
s
>>>         fixed in N-200 while using the MATLABSDRu block. Can you
>>>         PLEASE HELP ME!!! IT IS VERY, VERY IMPORTANT.
>>>
>>         Well, neither usrp-users nor discuss-gnuradio are support
>>         lists for MATLAB.
>>
>>         You haven't mentioned which daughter-card you are using in
>>         the N200, which would certainly help to fill in information ab=
out
>>         =C2=A0 what *might* be going on.
>>
>>
>>         Does your receiver setup use AGC?=C2=A0 Do you know what its
>>         set-points are?
>>
>>         If you simply look at the spectrum on the RX end as you vary
>>         gain on the TX end, do you see a change? At the higher end,
>>         =C2=A0 SNR may not change very much, depending on how it is be=
ing
>>         measured, etc.
>>
>>
>>
>>
>>     --=20
>>     *Thanks and Regards**
>>     *
>>     *Arhum Ahmad*
>>     Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar
>>
>>     +91- <tel:+91-7015802356>7974897279
>>     |=C2=A0arhum.19eez0005@iitrpr.ac.in <mailto:2016eez0009@iitrpr.ac.=
in>
>>
>>     Lab No. 323, Communication Research Lab, J.C.Bose Building
>>
>>
>>     *
>>     /CONFIDENTIALITY NOTICE:=C2=A0The contents of this email message a=
nd
>>     any attachments are intended solely for the addressee(s) and may
>>     contain confidential and/or privileged information and may be
>>     legally protected from disclosure. If you are not the intended
>>     recipient of this message or their agent, or if this message has
>>     been addressed to you in error, please immediately alert the
>>     sender by reply email and then delete this message and any
>>     attachments. If you are not the intended recipient, you are
>>     hereby notified that any use, dissemination, copying, or storage
>>     of this message or its attachments is strictly prohibited./
>>     *=20
>
>
>
> --=20
> *Thanks and Regards**
> *
> *Arhum Ahmad*
> Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT Ropar
>
> +91- <tel:+91-7015802356>7974897279 |=C2=A0arhum.19eez0005@iitrpr.ac.in=
=20
> <mailto:2016eez0009@iitrpr.ac.in>
>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
>
> *
> /CONFIDENTIALITY NOTICE:=C2=A0The contents of this email message and an=
y=20
> attachments are intended solely for the addressee(s) and may contain=20
> confidential and/or privileged information and may be legally=20
> protected from disclosure. If you are not the intended recipient of=20
> this message or their agent, or if this message has been addressed to=20
> you in error, please immediately alert the sender by reply email and=20
> then delete this message and any attachments. If you are not the=20
> intended recipient, you are hereby notified that any use,=20
> dissemination, copying, or storage of this message or its attachments=20
> is strictly prohibited./
> *=20

--------------8xO07Jxa2x0Dy0pTyHmIjmPF
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/06/2023 12:54, Arhum Ahmad wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_P=3DCR4FscWA3wwM1Jj4Ng3sKCRqbL6EDA1Zo3dDMoS_vdw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I have=C2=A0updated the rfconverter_libiio file in=
 the
        base of Matlab. Now I can see the variation=C2=A0in signal power =
in
        the spectrum analyzer. However, in the receiver, the problem is
        still the same.</div>
    </blockquote>
    This is squarely a MATLAB problem at this point.=C2=A0 So, you'll hav=
e to
    use those support channels rather than usrp-users<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_P=3DCR4FscWA3wwM1Jj4Ng3sKCRqbL6EDA1Zo3dDMoS_vdw@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 26, 2023 at
          8:36=E2=80=AFPM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 26/06/2023 09:32, Arhum Ahmad wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks for the response,
                <div><br>
                </div>
                <div>1. I am using=C2=A0<span>UBX 10-6000 MHz Rx/Tx</span=
><span>=C2=A0</span>(<a
                    href=3D"https://www.ettus.com/all-products/ubx40/"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://www.ettus.com=
/all-products/ubx40/</a>)</div>
                <div>2. Yes, I am using AGC for the processing part. The
                  parameter values I have uses are=C2=A0</div>
                <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Desir=
edPower: 2</div>
                <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- Avera=
gingLength:
                  50</div>
                <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- MaxPo=
werGain: 60</div>
                <div>3. I have=C2=A0checked the spectrum of the signal in=
 a
                  separate=C2=A0spectru<span>H</span>m=C2=A0analyzer, the=
re is NO
                  change in the spectrum=C2=A0as I vary the gain.</div>
              </div>
            </blockquote>
            Assuming you have a complete UHD installation, you can use
            the tx_waveforms example app to check this as well.=C2=A0 Sin=
ce
            you're<br>
            =C2=A0 using MATLAB, I cannot help with that aspect.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 26, 202=
3
                  at 2:58=E2=80=AFAM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 25/06/2023 16:49, Arhum Ahmad wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">Respected sir,
                        <div><span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">I
                            am using N-200 USRP for transmitting a
                            signal. While transmitting,=C2=A0</span>I hav=
e<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                          </span>changed<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            the Gain value </span>in the SDRu<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            transmitting block, but my signal strength
                            at the receiver </span>remains<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">=C2=A0the
                            same. I also stop and restart the code but
                            the change in gain does not affect the
                            received signal. I have tried the changing
                            gain via both available options i.e., input
                            port and dialog, but it </span>seems to
                          have no effect<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            on the receiver. The signal strength at the
                            receiver </span>remains<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">=C2=A0the
                            same. I have tried 30 dB(Maximum gain) to 0
                            dB (minimum gain) in both cases received SNR
                          </span>is the same<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            (i.e.,15 dB). I am using a wireless
                            connection in line-of-sight, with minimum Tx
                            gain at </span>least a few<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                          </span>drops<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            in SNR should be observed. I have also tried
                            -50dB (just checking) but </span>no<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            effect in the SNR is observed. The same
                            thing </span>I have<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            tried using B210 as Tx, Rx signal strength
                            does change in this case. However, while
                            using N-200,=C2=A0</span>no<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            effect of changing the gain value is
                            observed. Somehow</span>=C2=A0gain<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            value is fixed in N-200 while </span>using
                          the MATLAB<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
                            SDRu block. Can you PLEASE HELP ME!!! IT IS
                            VERY, VERY IMPORTANT.</span><br>
                        </div>
                        <br>
                      </div>
                    </blockquote>
                    Well, neither usrp-users nor discuss-gnuradio are
                    support lists for MATLAB.<br>
                    <br>
                    You haven't mentioned which daughter-card you are
                    using in the N200, which would certainly help to
                    fill in information about<br>
                    =C2=A0 what *might* be going on.<br>
                    <br>
                    <br>
                    Does your receiver setup use AGC?=C2=A0 Do you know w=
hat
                    its set-points are?<br>
                    <br>
                    If you simply look at the spectrum on the RX end as
                    you vary gain on the TX end, do you see a change?=C2=A0=
=C2=A0
                    At the higher end,<br>
                    =C2=A0 SNR may not change very much, depending on how=
 it
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
                      <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font=
-size:small"><span>Thanks
                            and Regards</span></b><b><br>
                        </b></div>
                      <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b>Arhum
                          Ahmad</b><br>
                        Ph.D. Scholar,=C2=A0Electrical Engineering
                        Department, IIT Ropar</div>
                      <table
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:47=
0px;margin-top:5px"
                        width=3D"470" cellspacing=3D"0" cellpadding=3D"0"
                        border=3D"0">
                        <tbody>
                          <tr>
                            <td style=3D"color:rgb(141,141,141)">
                              <p style=3D"margin:0px"><span
                                  style=3D"display:inline-block"><a
                                    href=3D"tel:+91-7015802356"
                                    style=3D"color:rgb(141,141,141);font-=
family:sans-serif"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true">+91-</a>7974=
897279</span>=C2=A0<span
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span
                                  style=3D"display:inline-block"><a
                                    href=3D"mailto:2016eez0009@iitrpr.ac.=
in"
style=3D"color:rgb(141,141,141);font-family:sans-serif" target=3D"_blank"
                                    moz-do-not-send=3D"true">@iitrpr.ac.i=
n</a></span></p>
                            </td>
                          </tr>
                          <tr>
                            <td
                              style=3D"font-family:sans-serif;color:rgb(1=
41,141,141)"><span
                                style=3D"display:inline-block">Lab No.
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
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div><span><spa=
n><span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0Th=
e
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
                                                          prohibited.<spa=
n></span></i></span></span></span></span></div>
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
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b
style=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font=
-size:small"><span
                    style=3D"font-family:&quot;times new
                    roman&quot;,serif">Thanks and Regards</span></b><b><b=
r>
                </b></div>
              <div
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;margin-b=
ottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, II=
T
                Ropar</div>
              <table
style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;width:47=
0px;margin-top:5px"
                width=3D"470" cellspacing=3D"0" cellpadding=3D"0" border=3D=
"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span
                          style=3D"display:inline-block"><a
                            href=3D"tel:+91-7015802356"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">+9=
1-</a>7974897279</span>=C2=A0<span
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.=
19eez0005<span
                          style=3D"display:inline-block"><a
                            href=3D"mailto:2016eez0009@iitrpr.ac.in"
                            style=3D"color:rgb(141,141,141);font-family:s=
ans-serif"
                            target=3D"_blank" moz-do-not-send=3D"true">@i=
itrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td
                      style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span
                        style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</sp=
an></td>
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
                                                          <div dir=3D"ltr=
">
                                                          <div dir=3D"ltr=
">
                                                          <div><span><spa=
n><span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0Th=
e
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
                                                          prohibited.<spa=
n></span></i></span></span></span></span></div>
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
  </body>
</html>

--------------8xO07Jxa2x0Dy0pTyHmIjmPF--

--===============2073122309249072671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2073122309249072671==--
