Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE15BDB0DE
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 21:26:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 782BA3865BB
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 15:26:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760469973; bh=61YaRa6//S8G3Ea0G9LQGI6LSAe7ydEUwt2yMGmKYQo=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=r2mb5A08imSAVHZ5NEU1Nl7yVEUDCphIuyB7//Pq4FiaQSPBy+tthJi7gTmlwaee+
	 zxct+Idh4xBiyhA8n2Spgl2LHVRSGhs/HpNylcSaZuYXfBt0qFFU8pIocFgS8sCpcu
	 73ueWv/sMJCPOtPTOWFkoA9HmnO1ADQHlcLSBgwhzzmG+84E0L+T8ie+22ykykBiAt
	 GjebsJ+0FeiFOf6ifUIQjsvSiZSqdS1Apk0TghYJeRcMQ6LYZrC3lf9DiFr4mSM5yX
	 g5BemsxYuwhM1T4RcQtKsUb+rEe/3ZVyAJ6SUtRqZ5qL3MRcLRWUJMQFoB3DwzlAqd
	 mRkV0oOkhtIbQ==
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 80AA9386550
	for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 15:25:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=andrew.cmu.edu header.i=@andrew.cmu.edu header.b="DQ+UyZOq";
	dkim-atps=neutral
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-59a8c1eb90cso2702913137.0
        for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 12:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=andrew.cmu.edu; s=google-2021; t=1760469946; x=1761074746; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bmytuXoCBmZNjnoVxWeVVRh5WgCRd0H+ENGmV4ZrzWY=;
        b=DQ+UyZOqzDMlMk7QpolxoaPIBMTf4RpS/U33OEIdAgyIJn0QGHI+g04o0FwnHdaZ9r
         Yy5sdsRqDm2KuPyz8jz+L9xmvt2KWYESu8TE8EZNIqjaxVzPWc4YyFjVH35/gTaHkIfy
         DImqH7U8SJzC6axL+oSPSwlYmLOG8lhkrO65GCT5BGemerADb11EwdAhhBpLpTb/Lea6
         1NtE5NwLXggof0+6pIRHDGw4GKot6dvSGezSEbmAMbIdn/m28p9NeQcdZG7zMHvCuRYC
         lwyZ+wdW9zDBrG+B5xTSSO18ZbG9xVTdxul+GiumLiClEzblj2+9HtrsYwkjBma7cguz
         C6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760469946; x=1761074746;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bmytuXoCBmZNjnoVxWeVVRh5WgCRd0H+ENGmV4ZrzWY=;
        b=quFdEpOU2iwRLeDbBxo6A7miEnV2dWSCk7alsIb540i+6MJFRzYJWcvGuADDtVeBfU
         9HYmefq5oiZS6gdznLgjCD1VtQaLADnojEoYFkC5D5wA5XoJPNVKKVPEWoZ2lpjZT6Ie
         Y6HDrjQ2ba0XMyhq0odYSeMVBVTa3lhH4wqxO6FXZBUcFgwsM/PEcHxzu+rBNkTpiL4n
         FJONw3JZkLr3oh+YXt1g59v2dG6rq6P16RyY2F0ynPSs+2H0EQoDqlcGwIW6JuML5tcz
         oCNQC32QsxHp4ucJetzO3o2N2a56no5OpdqOWxfQJGE2BbRpDnRCQ0cxmdAQpIswnwDk
         MvsQ==
X-Gm-Message-State: AOJu0YxAUdyZGzhnsp8bMvDMJCUoz0RIOOY4orkQaW8wBN0ekkt8qXHE
	EM0M6fbL9RZQvgARsPJaQxeWOZTanRFebE7sJaHUlLY/55GN1FPHD3TZOCiZmdOIr4wAI7dhTgb
	EnrOFDTammAz6BtymnZUus2Ow3Bt078I0lYIfsCmv/8Va3G+0ilM=
X-Gm-Gg: ASbGncs+PfNS/m2MEa7cFyQJfQE1D6FI8fQXNgHnop7BJcsEomQantfG4AiEgxoS7se
	5c/S1oDH++oKfT4qBzAqfYphfNq4RR15cQaibnNKOo0ERc6ooDEU/vqKiATkATFlyLeh7gXKu/z
	b7U8a8YblGB75cuZIEnYWK07xemJmVQvJ5tf7F3uvkWSgvviOppREMCJUc3HVrE7axEgLx+JBth
	XTqHziRFKThDgERzG3BzuUnwSE=
X-Google-Smtp-Source: AGHT+IHo+ubgDarkkS+AECAC0YBo/V0YfuFeeuHdp3R+k7QKDZ3Ewt5raU6G4V6O1NO2p5wn7a+is4eGziV+zAgSu7g=
X-Received: by 2002:a05:6102:4a96:b0:5d6:5ac:3902 with SMTP id
 ada2fe7eead31-5d605ac3938mr5537339137.21.1760469945703; Tue, 14 Oct 2025
 12:25:45 -0700 (PDT)
MIME-Version: 1.0
References: <CADVT9V0BcWTox-3h-s3-gab4JW3wFX46JqpWHpHnddi-e2bZfw@mail.gmail.com>
 <CAEXYVK5R7C75N+p12RJs7jndVKme0=7n=P+uu32yH9VqELRu5w@mail.gmail.com>
In-Reply-To: <CAEXYVK5R7C75N+p12RJs7jndVKme0=7n=P+uu32yH9VqELRu5w@mail.gmail.com>
From: Daniel Mayer <dmayer@andrew.cmu.edu>
Date: Tue, 14 Oct 2025 19:25:34 -0400
X-Gm-Features: AS18NWCW42AJWDM3k0YfH23soDbZLX5uY17kRMDDBWAQyZyQS8hSHoefK-Bxwvo
Message-ID: <CADVT9V3Hw_rhvan5Hhrc2g_s=yNtwu0O_rdLGFa+fBKV=OA9cg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: JFGLVCS37G6MLPAKHWQLNCCOA7W6I3HP
X-Message-ID-Hash: JFGLVCS37G6MLPAKHWQLNCCOA7W6I3HP
X-MailFrom: dmayer@andrew.cmu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 not transmitting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JFGLVCS37G6MLPAKHWQLNCCOA7W6I3HP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4448177412681067665=="

--===============4448177412681067665==
Content-Type: multipart/alternative; boundary="000000000000c073580641235981"

--000000000000c073580641235981
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I was indeed trying to transmit with an empty slot; switching the channel
to 1 fixed the problem.

Thanks for your help!

On Tue, Oct 14, 2025 at 3:16=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Tue, Oct 14, 2025 at 3:05=E2=80=AFPM Daniel Mayer <dmayer@andrew.cmu.e=
du>
> wrote:
>
>> Hello,
>> I am attempting to transmit with a USRP X310 using the 'tx_waveforms'
>> example (./tx_waveforms --rate 25e6 --freq 900e6 --gain 20), but a
>> SignalHound spectrum analyzer placed next to the transmitting antenna of
>> the USRP is not picking up any signal above the noise floor at that
>> frequency. The spectrum analyzer shows signals transmitted by other
>> devices, so it seems unlikely that the spectrum analyzer is broken.
>>
>> The text output of the example is as follows:
>>
>>> Setting TX Rate: 25.000000 Msps...
>>> Actual TX Rate: 25.000000 Msps...
>>>
>>> Setting TX Gain: 20.000000 dB...
>>>
>>> *Actual TX Gain: 0.000000 dB...*
>>> Setting device timestamp to 0...
>>>
>>> *[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.*Sett=
ing
>>> TX Freq: 900.000000 MHz...
>>> Setting TX LO Offset: 0.000000 MHz...
>>> *Actual TX Freq: 0.000000 MHz...*
>>
>> I did notice that the 'Actual TX Gain' and 'Actual TX Freq' are both set
>> to 0; could this be a cause of the problem?
>>
>> For completeness, here are the configuration parameters that the example
>> prints out:
>>
>>> [INFO] [X300] Radio 1x clock: 200 MHz
>>> Using Device: Single USRP:
>>>   Device: X-Series Device
>>>   Mboard 0: X310
>>>   RX Channel: 0
>>>     RX DSP: 0
>>>     RX Dboard: A
>>>     RX Subdev: Unknown (0xffff) - 0
>>>   RX Channel: 1
>>>     RX DSP: 1
>>>     RX Dboard: B
>>>     RX Subdev: UBX RX
>>>   TX Channel: 0
>>>     TX DSP: 0
>>>     TX Dboard: A
>>>     TX Subdev: Unknown (0xffff) - 0
>>>   TX Channel: 1
>>>     TX DSP: 1
>>>     TX Dboard: B
>>>     TX Subdev: UBX TX
>>
>>
> It looks like you have a UBX in slot 1 and nothing in slot 0, but you're
> telling the TX waveforms program to transmit on the default channel (0
> presumably?) which would be the empty slot.
>
> Try changing the subdev or the channel specification to see if you can ge=
t
> it to talk to the UBX.
>
> Good luck.
>
> Brian
>

--000000000000c073580641235981
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was indeed trying to transmit with an empty slot; s=
witching the channel to 1 fixed the problem.</div><div><br></div><div>Thank=
s for your help!</div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 14, 2025 at 3:16=E2=80=AF=
PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Tue, Oct 14, 2025 at 3:05=E2=80=
=AFPM Daniel Mayer &lt;<a href=3D"mailto:dmayer@andrew.cmu.edu" target=3D"_=
blank">dmayer@andrew.cmu.edu</a>&gt; wrote:</div><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<=
div>I am attempting to transmit with a USRP X310 using the &#39;tx_waveform=
s&#39; example (./tx_waveforms --rate 25e6 --freq 900e6 --gain 20), but a S=
ignalHound spectrum analyzer placed next to the transmitting antenna of the=
 USRP is not picking up any signal above the noise floor at that frequency.=
 The spectrum analyzer shows signals transmitted by other devices, so it se=
ems unlikely that the spectrum analyzer is broken.=C2=A0</div><div><br></di=
v><div>The text output of the example is as follows:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Setting TX Rate: 25.000000 Msps...<br>Actu=
al TX Rate: 25.000000 Msps...<br><br>Setting TX Gain: 20.000000 dB...<br><b=
>Actual TX Gain: 0.000000 dB...<br></b><br>Setting device timestamp to 0...=
<br><b>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br=
></b>Setting TX Freq: 900.000000 MHz...<br>Setting TX LO Offset: 0.000000 M=
Hz...<br><b>Actual TX Freq: 0.000000 MHz...</b></blockquote><div>I did noti=
ce that the &#39;Actual TX Gain&#39; and &#39;Actual TX Freq&#39; are both =
set to 0; could this be a cause of the problem?=C2=A0</div></div><div><br><=
/div><div>For completeness, here are the configuration parameters that the =
example prints out:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">[I=
NFO] [X300] Radio 1x clock: 200 MHz<br>Using Device: Single USRP:<br>=C2=A0=
 Device: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<b=
r>=C2=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX=
 Subdev: Unknown (0xffff) - 0<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX D=
SP: 1<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=
=C2=A0 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard:=
 A<br>=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 1=
<br>=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 =
TX Subdev: UBX TX</blockquote></div></div></blockquote><div><br></div><div>=
It looks like you have a UBX in slot 1 and nothing in slot 0, but you&#39;r=
e telling the TX waveforms program to transmit on the default channel (0 pr=
esumably?) which would be the empty slot.</div><div><br></div><div>Try chan=
ging the subdev or the channel specification to see if you can get it to ta=
lk to the UBX.</div><div><br></div><div>Good luck.</div><div><br></div><div=
>Brian</div></div></div>
</blockquote></div></div>

--000000000000c073580641235981--

--===============4448177412681067665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4448177412681067665==--
