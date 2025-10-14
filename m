Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 09955BDB074
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 21:16:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5800E386519
	for <lists+usrp-users@lfdr.de>; Tue, 14 Oct 2025 15:16:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1760469416; bh=WKMJgjfJTBkoCe81lgLfw1bjmWzEseUf0wrBnC1KSI0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0zqlPgSMjAl5MrlBXsew13dphmMOIE/2+rqvnMHSuzf+mmGwKfbH+hD3GdfjEfnlM
	 AKAST2DpUtMV2cqUGGIXOjGBzXvrFqcFe5oFaw28rQkvE/3PpkEGBIfe7tcWHrRKvR
	 MWYPt1nh1D40RLN4emF+KHJVft+i40woelKhMHQj7kNPV5r49Xme4+D7GKXVZx0IuA
	 GHZzuScP9onvyEGs2ABbK/NVX1k/KDGGCbeyrmcx0Xh6XVb61S8MKej5TL1JXETA6W
	 XnTxwj9vLQseJXbAhmUqwKVAFGZbRTBRZzPNGAvXKM5oi93zTq4+djjH4mH0rZBJ9h
	 dqLi7xMFQGPXg==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 89A48386371
	for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 15:16:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HhbQVUSM";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b40f11a1027so1026395966b.2
        for <usrp-users@lists.ettus.com>; Tue, 14 Oct 2025 12:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760469410; x=1761074210; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I8sAQB8bIMoG6Nq2tEI6Z58NDeUv+Jg5R4nXxAn14lU=;
        b=HhbQVUSMlWLTOe7NDYw+U1FYDnDIAfOFK/UgkMzhTX8EAa1vLQo10o0sgjoSF692T9
         BhEC/Wjn5srWDbKnVjYILEBOSnVEad1WBDt9yO//Phz1wc+erZr2gR8V5tOgyLIJlvaa
         aHpTlfkelqqJlSMM6PwRIg/RrGrJy7HlrHtrsAuqqivMjG+dzuP87QEsKdTEcfd0H2at
         uaHXMgTICjyQ+kLkLvAxQW/Pf3oYtTM9Hl4QHCV0kAXzVrvGLx+xmPTB7go96W2qexN2
         yDihdir96jniNbBwbRwIiMBUCuC5nP9PN5FOXFKfWqZUhSsTPiGaEFw1omkROwFiP//7
         5/SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760469410; x=1761074210;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I8sAQB8bIMoG6Nq2tEI6Z58NDeUv+Jg5R4nXxAn14lU=;
        b=OtmLXhlucaRpYJUwtrE1AFbway+KyszATR6H+GS8XQIh31w70WzTYDc3SFK03SxO1E
         aEI9LcJlCRwtmbAyFY+15QkS4SZ1rrUgo27cLgMkWXcKsqL9oiCBDq1YwiWs5vNwyVzg
         3zHxt2NyhyOilQwDPkff8w1gc/7zv04GuLx65Bs6Yw4EJJ8aTjne8j+q1X+kkUOOK92y
         +WkldkX0ibj2m0kp8tNPItcY7wOSyo2SW4IjSyLUgAN9sVznSd6K5YyaEjjOKvr72G2A
         lzmcbJEoAZXsUbn6BQXtTeGwcT7M8YFnDABvwll2lK8KIx+QEkAkYoYIkOrJ0nr3qAAv
         i6KA==
X-Gm-Message-State: AOJu0YylVTZohrATn5yietty+mIVMWcr4kE1wq7NUz0aSfqhBnSIbyXt
	KK5FvcHYI1ZTRzsFbv7gS9Q71QcPONIpOCjTgkJ2lccxF0UuUwhDeSKGr/TA0k7Uy6fTQ0HN3Ax
	AdAD3zXC1J+2etW0SITag8bYXy6Jaqtgu9g==
X-Gm-Gg: ASbGncspYfr/s/rr5JczixB8peFLDdK/lK7E1nywV4hEEudAA1WIQib0vdP65ALTI2L
	2LAmprt/ZwT+ooYCRhuy/drZoPgQy5T4LckShbqodS4UpFjTmniD5LX2X5iGfkJXRirA8GB2GCx
	HT3WJNlfk+OlMM2D2vA9Q9g9lxvU9PIf/3jdrOwrbXzieBgmtuKX7jse3a+gKF7+Uwv3M0x2mDA
	cRqcM3K5oUpRtDGVr3TMv08WRAkqxb4bpCB
X-Google-Smtp-Source: AGHT+IGZCHEjwxdioy5dBLF+oPIrmTYgFWN9OY3NhLRvsEpRT3crJkgZTrNtSFAHfSTbe6SpS0YwqiJxyb4Qgr0z9p4=
X-Received: by 2002:a17:907:6e8a:b0:b3d:5088:213d with SMTP id
 a640c23a62f3a-b50abfd4902mr2727079166b.42.1760469410312; Tue, 14 Oct 2025
 12:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <CADVT9V0BcWTox-3h-s3-gab4JW3wFX46JqpWHpHnddi-e2bZfw@mail.gmail.com>
In-Reply-To: <CADVT9V0BcWTox-3h-s3-gab4JW3wFX46JqpWHpHnddi-e2bZfw@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 14 Oct 2025 15:16:38 -0400
X-Gm-Features: AS18NWAQUJYrCpWHtjY_W-r9LruVkvcyxxBmiEsZht9sPmbDtZxhujq3Fca5mNI
Message-ID: <CAEXYVK5R7C75N+p12RJs7jndVKme0=7n=P+uu32yH9VqELRu5w@mail.gmail.com>
To: Daniel Mayer <dmayer@andrew.cmu.edu>
Message-ID-Hash: 4SKOLMFCMZUYRNDC2KY5FAYVXRHGKER4
X-Message-ID-Hash: 4SKOLMFCMZUYRNDC2KY5FAYVXRHGKER4
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X310 not transmitting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4SKOLMFCMZUYRNDC2KY5FAYVXRHGKER4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9066248941275921871=="

--===============9066248941275921871==
Content-Type: multipart/alternative; boundary="000000000000d6ffb9064123395c"

--000000000000d6ffb9064123395c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 3:05=E2=80=AFPM Daniel Mayer <dmayer@andrew.cmu.edu=
> wrote:

> Hello,
> I am attempting to transmit with a USRP X310 using the 'tx_waveforms'
> example (./tx_waveforms --rate 25e6 --freq 900e6 --gain 20), but a
> SignalHound spectrum analyzer placed next to the transmitting antenna of
> the USRP is not picking up any signal above the noise floor at that
> frequency. The spectrum analyzer shows signals transmitted by other
> devices, so it seems unlikely that the spectrum analyzer is broken.
>
> The text output of the example is as follows:
>
>> Setting TX Rate: 25.000000 Msps...
>> Actual TX Rate: 25.000000 Msps...
>>
>> Setting TX Gain: 20.000000 dB...
>>
>> *Actual TX Gain: 0.000000 dB...*
>> Setting device timestamp to 0...
>>
>> *[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.*Setti=
ng
>> TX Freq: 900.000000 MHz...
>> Setting TX LO Offset: 0.000000 MHz...
>> *Actual TX Freq: 0.000000 MHz...*
>
> I did notice that the 'Actual TX Gain' and 'Actual TX Freq' are both set
> to 0; could this be a cause of the problem?
>
> For completeness, here are the configuration parameters that the example
> prints out:
>
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> Using Device: Single USRP:
>>   Device: X-Series Device
>>   Mboard 0: X310
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: Unknown (0xffff) - 0
>>   RX Channel: 1
>>     RX DSP: 1
>>     RX Dboard: B
>>     RX Subdev: UBX RX
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: Unknown (0xffff) - 0
>>   TX Channel: 1
>>     TX DSP: 1
>>     TX Dboard: B
>>     TX Subdev: UBX TX
>
>
It looks like you have a UBX in slot 1 and nothing in slot 0, but you're
telling the TX waveforms program to transmit on the default channel (0
presumably?) which would be the empty slot.

Try changing the subdev or the channel specification to see if you can get
it to talk to the UBX.

Good luck.

Brian

--000000000000d6ffb9064123395c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Oct 14, 2025 at 3:05=E2=80=AFPM D=
aniel Mayer &lt;<a href=3D"mailto:dmayer@andrew.cmu.edu">dmayer@andrew.cmu.=
edu</a>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div=
>I am attempting to transmit with a USRP X310 using the &#39;tx_waveforms&#=
39; example (./tx_waveforms --rate 25e6 --freq 900e6 --gain 20), but a Sign=
alHound spectrum analyzer placed next to the transmitting antenna of the US=
RP is not picking up any signal above the noise floor at that frequency. Th=
e spectrum analyzer shows signals transmitted by other devices, so it seems=
 unlikely that the spectrum analyzer is broken.=C2=A0</div><div><br></div><=
div>The text output of the example is as follows:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Setting TX Rate: 25.000000 Msps...<br>Actual TX=
 Rate: 25.000000 Msps...<br><br>Setting TX Gain: 20.000000 dB...<br><b>Actu=
al TX Gain: 0.000000 dB...<br></b><br>Setting device timestamp to 0...<br><=
b>[WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br></b>=
Setting TX Freq: 900.000000 MHz...<br>Setting TX LO Offset: 0.000000 MHz...=
<br><b>Actual TX Freq: 0.000000 MHz...</b></blockquote><div>I did notice th=
at the &#39;Actual TX Gain&#39; and &#39;Actual TX Freq&#39; are both set t=
o 0; could this be a cause of the problem?=C2=A0</div></div><div><br></div>=
<div>For completeness, here are the configuration parameters that the examp=
le prints out:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">[INFO] =
[X300] Radio 1x clock: 200 MHz<br>Using Device: Single USRP:<br>=C2=A0 Devi=
ce: X-Series Device<br>=C2=A0 Mboard 0: X310<br>=C2=A0 RX Channel: 0<br>=C2=
=A0 =C2=A0 RX DSP: 0<br>=C2=A0 =C2=A0 RX Dboard: A<br>=C2=A0 =C2=A0 RX Subd=
ev: Unknown (0xffff) - 0<br>=C2=A0 RX Channel: 1<br>=C2=A0 =C2=A0 RX DSP: 1=
<br>=C2=A0 =C2=A0 RX Dboard: B<br>=C2=A0 =C2=A0 RX Subdev: UBX RX<br>=C2=A0=
 TX Channel: 0<br>=C2=A0 =C2=A0 TX DSP: 0<br>=C2=A0 =C2=A0 TX Dboard: A<br>=
=C2=A0 =C2=A0 TX Subdev: Unknown (0xffff) - 0<br>=C2=A0 TX Channel: 1<br>=
=C2=A0 =C2=A0 TX DSP: 1<br>=C2=A0 =C2=A0 TX Dboard: B<br>=C2=A0 =C2=A0 TX S=
ubdev: UBX TX</blockquote></div></div></blockquote><div><br></div><div>It l=
ooks like you have a UBX in slot 1 and nothing in slot 0, but you&#39;re te=
lling the TX waveforms program to transmit on the default channel (0 presum=
ably?) which would be the empty slot.</div><div><br></div><div>Try changing=
 the subdev or the channel specification to see if you can get it to talk t=
o the UBX.</div><div><br></div><div>Good luck.</div><div><br></div><div>Bri=
an</div></div></div>

--000000000000d6ffb9064123395c--

--===============9066248941275921871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9066248941275921871==--
