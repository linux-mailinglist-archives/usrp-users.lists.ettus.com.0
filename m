Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA25A2D3601
	for <lists+usrp-users@lfdr.de>; Tue,  8 Dec 2020 23:13:50 +0100 (CET)
Received: from [::1] (port=52906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmlEv-0003Mq-BF; Tue, 08 Dec 2020 17:13:45 -0500
Received: from mail-qk1-f182.google.com ([209.85.222.182]:41081)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kmlEr-0003Ij-FR
 for USRP-users@lists.ettus.com; Tue, 08 Dec 2020 17:13:41 -0500
Received: by mail-qk1-f182.google.com with SMTP id 19so186804qkm.8
 for <USRP-users@lists.ettus.com>; Tue, 08 Dec 2020 14:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=FURBrJ2T5W4FJKVD9WiovRq18q2DF6+6fUpZ48eceRY=;
 b=a3grEuvhtsiX6jInnsLOQm7/OMyoE1zqfGsrRKI5DRL2D3kV+8EojdTH7TsTWRy/0F
 JwbPAUYNIGaRnbbhYzFaPP9ODY4mwZ5/+6bt3SyL46pbezV4BxdtbDMkGMzoQdz/vucq
 CrJnY3zCFRgYq5LmkcMXQYp9u/+O+GiL4fe8ZMfUkMWsOgUzT2dFi+5Qn2oXpDE1lo10
 AozsxIWUE4BeoUpQRYbYTHYFgKC5/HyFwONw9j2H1CFX32MiFo50H1f/x0sHL80NQoKt
 W2Mtyzr53FmeiFNSVAbPmQYY/GkRGr6webp7RYacjtu/EIRJfEC90PfeQrPuJPVjLtbu
 MYhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=FURBrJ2T5W4FJKVD9WiovRq18q2DF6+6fUpZ48eceRY=;
 b=DyLmBGQU8qyQamzgW5751uFTL28rqwxJ5ecgTVtgfSWnNSjF31ZK3NhP0Eq1jxUG6V
 RcMXhlbcyS2nRV72ouFsNiEOsDZaWop5ZzvZa2bPFJXn6lxtjjtl79gRQvGAgO2qinWb
 QzWEuB2Doh2ccWPJlVMQpWFiOzCsXtZrl3ZLdRdOOpxJysBgCAXTzzXtijryMLN7LUBm
 lY3zoj8R7KUbaYsJ4IzGyEVW2K9FAzvzQe5KqDSUwlBlyyLwhTyO9aSSG96T+jV98Wit
 8bqcnF+c3Nn2N0x7Qau4UmJCUbL8y6sD2LidqpYbNDn6L3F6Rxub2Du4aoGJKDKguFD8
 Wxtw==
X-Gm-Message-State: AOAM533r3ruVXQM6hz81dHP2hYptEKJJFxLZLja064+WM1OFqholD0JJ
 KmoswiLIJ9fc+nzUe6bKkl4=
X-Google-Smtp-Source: ABdhPJxY1Egqq/uvirwgSv6Xa51x2zEHF5eBETPQCx5yU4pQ8LmoojYe7pUF3LGNo/6LnVW78baATA==
X-Received: by 2002:a37:494a:: with SMTP id w71mr6045600qka.132.1607465579590; 
 Tue, 08 Dec 2020 14:12:59 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id z133sm45597qka.20.2020.12.08.14.12.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Dec 2020 14:12:58 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Tue, 8 Dec 2020 17:12:58 -0500
Message-Id: <929C042F-01DF-4CA3-A133-AAE47D9610CB@gmail.com>
References: <trinity-2e638ab8-5a4f-44ce-ad6c-10a18f42d92b-1607455878673@3c-app-gmx-bap18>
In-Reply-To: <trinity-2e638ab8-5a4f-44ce-ad6c-10a18f42d92b-1607455878673@3c-app-gmx-bap18>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] UBX160 TX "noise figure"?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============1333404547849980997=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============1333404547849980997==
Content-Type: multipart/alternative; boundary=Apple-Mail-3186AC23-C931-4ECF-BC00-06A462C59C21
Content-Transfer-Encoding: 7bit


--Apple-Mail-3186AC23-C931-4ECF-BC00-06A462C59C21
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I think you=E2=80=99d mentioned you have a spectrum analyzer. What does it h=
ave to say about the SNR of your signal?

Sent from my iPhone

> On Dec 8, 2020, at 2:41 PM, Lukas Haase via USRP-users <usrp-users@lists.e=
ttus.com> wrote:
>=20
> =EF=BB=BF
> Hi Marino,
> =20
> Thank you for confirming the -139dBm/Hz. Indeed, with my sampling rate of 5=
 MSps, this is -139+dB10(5e6)=3D-72dBm, which was exactly my prediction from=
 my initial message.
> =20
> For the RX line noise floor, I am sure it's the usual -169dBm/Hz (5dB NF) .=
.. at least if I disconnect the TX->RX connection, that's what I get.
> =20
> Thanks again for your input! If you could think of anything else I could t=
ry to narrow down things please let me know.
> =20
> Thanks,
> Lukas
> =20
> =20
> =20
> =20
> Gesendet: Dienstag, 08. Dezember 2020 um 03:29 Uhr
> Von: "cyberphox" <cyberphox@gmail.com>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Betreff: Re: [USRP-users] UBX160 TX "noise figure"?
> I work out the TX noise floor is around -139dBm/Hz at roughly similar step=
 attenuator setting, this results in similar Snr you predict=20
> =20
> Your setup seems fine unfortunately at the moment I can=E2=80=99t think of=
 what else at the moment.=20
> =20
> Are you sure about the RX line up noise floor?=20
> =20
> Will keep head scratching ...
> =20
> Have a good day!
> =20
> Marino=20
> =20
> =20
> =20
>> On Mon, 7 Dec 2020 at 18:00, Lukas Haase <lukashaase@gmx.at> wrote:
>> Hi Marino,
>> =20
>> I don't think it's a BW/RBW related issue ... My measurements (noise, sig=
nal etc.) are pretty consistent otherwise.
>> I think I am doing things right in my setup.
>> =20
>> =20
>> That's why I am asking if maybe something is wrong with my original quest=
ion about the "TX SNR" of the USRP. Maybe our conclusions on the noise figur=
e in the TX are wrong?
>> =20
>> Thanks,
>> Lukas
>> =20
>> =20
>> =20
>> Gesendet: Montag, 07. Dezember 2020 um 04:47 Uhr
>>=20
>> Von: "cyberphox" <cyberphox@gmail.com>
>> An: "Lukas Haase" <lukashaase@gmx.at>
>> Betreff: Re: [USRP-users] UBX160 TX "noise figure"?
>> The power remaining from the phase noise skirt contributes but even witho=
ut it as you show is still quite a lot different. It=E2=80=99s not a measure=
ment bandwidth/rbw related issue?
>> =20
>> =20
>> =20
>>> On Mon, 7 Dec 2020 at 08:56, Lukas Haase <lukashaase@gmx.at> wrote:
>>> Hi Marino,
>>> =20
>>> Ok, so when my TX is set to 20dB and the full range is 31.5, then the at=
tenuator should be set to 11.5dB.
>>> =20
>>> How I get the information from my plots:
>>> The SNR=3D38.7dB value is taken by taking the DFT and setting all bins b=
ut the signal bin to zero and calculating 20*log(std(ideal)/std(ideal-orig))=
. Signal period is integer multiple of sampling period and leakage does not e=
xist (at least to the degree it could be relevant). Of course, this SNR incl=
udes everything, incl. phase noise skirt
>>> The orange signal is generated by adding white Gaussian noise to the ide=
al signal such that it has XdB SNR. I sweep over multiple SNR values until I=
 get visual correspondance. =46rom my plot you can see that the white noise f=
loor is this signal (yellow) matches the received signal (red). The SNR for t=
he yellow signal is 50dB. Therefore I can conclude that the SNR of the signa=
l is 50dB if I only take thermal noise into account
>>> Yes, I have measured the noise floor with signal off. It matches exactly=
 with my expectations (-102dBm at RX gain=3D20)
>>> =20
>>> Thanks,
>>> Lukas
>>> =20
>>> Gesendet: Montag, 07. Dezember 2020 um 03:46 Uhr
>>>=20
>>> Von: "cyberphox" <cyberphox@gmail.com>
>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>> Betreff: Re: [USRP-users] UBX160 TX "noise figure"?
>>> Hi Lukas,
>>> =20
>>> Thanks for your reply!=20
>>> =20
>>> I was meaning the attenuator of the TX before the amplifiers.=20
>>> =20
>>> Also from your plots were do you take your noise floor from? Are you rea=
ding from the top of the phase noise skirt? =20
>>> =20
>>> Have you measured the noise floor with signal off? =20
>>> =20
>>> Also it is worth doing this measurement with different power levels just=
 in case you have some non-linearity  issues
>>> =20
>>> Kind regards=20
>>> Marino
>>> =20
>>>> On Mon, 7 Dec 2020 at 08:33, Lukas Haase <lukashaase@gmx.at> wrote:
>>>> Hi Marino,
>>>> =20
>>>> Which digital attenuator do you mean?
>>>> =20
>>>> The 46.43dB attenuation that I use in the TX-RX loopback is just compos=
ed of static, passive attenuators
>>>> The receive gain is set to 20dB. Hence I assume I do not make use of th=
e 6dB "digital gain" in the ADC and from the remaining 31.6dB gain I use 20.=
 Hence I the "digital attenuator" should be 11.5dB if that answers your ques=
tion?
>>>> At a receive gain of 20dB, the noise figure is ~5dB, according to specs=
 and measurements. -174+5+dB10(5e6)=3D-102dBm which is exactly what I measur=
e without a signal applied.
>>>> Thanks,
>>>> Lukas
>>>> =20
>>>> Gesendet: Montag, 07. Dezember 2020 um 03:23 Uhr
>>>> Von: "cyberphox" <cyberphox@gmail.com>
>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>> Cc: "Marcus D. Leech" <patchvonbraun@gmail.com>, USRP-users@lists.ettus=
.com
>>>>=20
>>>> Betreff: Re: [USRP-users] UBX160 TX "noise figure"?
>>>> Hi Lukas,
>>>> =20
>>>> What setting do you have the digital attenuator set to?
>>>> =20
>>>> =20
>>>> Kind regards
>>>> =20
>>>> Marino
>>>> =20
>>>> =20
>>>>> On Mon, 7 Dec 2020 at 02:05, Lukas Haase via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>>>>> Hi Marcus,
>>>>> =20
>>>>> Thanks again!
>>>>> =20
>>>>> I did now the following experiment: I connected TX to RX back-to-back w=
ith 46.43dB attenuation in between. I set TX gain and RX gain to 20dB and tr=
ansmit a single CW at -3dBFS.
>>>>> This means my output power is Pout=3D11.44dBm (cross checked with spec=
trum analyzer) and on RX I sould have Pin=3D-34.99dBm. Indeed, calculating t=
he RMS of the received signal and converting to dBm, I get Pin=3D-35.0224dBm=
. Spot on!
>>>>> =20
>>>>> The red line is what I receive on the PSD (blue is the TX that I send)=
:
>>>>> =20
>>>>> <mime-attachment.png>
>>>>> =20
>>>>> As you can see from the annotation, the measured "SNR" of the received=
 signal is only 38.7dB. I think this is mainly caused by the phase noise ski=
rt (and potentially the I/Q image).
>>>>> In order to keep only consider thermal noise, I add random noise to th=
e original CW (using randn(...)+1i*randn(...) in MATLAB) until it matches ro=
ughly the white noise floor of the received signal. It's SNRoutput=3D50dB (y=
ellow line).
>>>>> =20
>>>>> Now, according to our discussion below, at Gtx=3D20, we should have SN=
Routput=3D72dB (assuming thermal noise only).
>>>>> =20
>>>>> Where could the 22dB difference in SNR come from?
>>>>> =20
>>>>> Thanks!
>>>>> Lukas
>>>>> =20
>>>>> =20
>>>>> PS: I am aware of phase noise, DC offsets, I/Q imbalance etc. But as y=
ou can see from my plot, I am only considerung thermal noise. The thermal no=
ise of the receiver should be orders of magnitude lower (at least -102dBm) s=
o the receiver noise should not limit the results either.
>>>>> =20
>>>>> =20
>>>>> Gesendet: Montag, 30. November 2020 um 17:08 Uhr
>>>>> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>>>>=20
>>>>> An: "Lukas Haase" <lukashaase@gmx.at>
>>>>> Cc: USRP-users@lists.ettus.com
>>>>> Betreff: Re: [USRP-users] UBX160 TX "noise figure"?
>>>>> On 11/30/2020 01:54 PM, Lukas Haase wrote:
>>>>> Hi Marcus,
>>>>> =20
>>>>> That makes sense, thanks.
>>>>> =20
>>>>> Would you be willing to confirm if what I am doing here is correct?
>>>>> =20
>>>>> <mime-attachment.png>
>>>>> =20
>>>>> To first order, the DAC has an SNR of 98dB (16 bit). Then I use Fries'=
 equation to get the NF of the following stages (for the filter and the atte=
nuator, the noise figure is equal to its attenuation). The NF is dominated b=
y the 2nd and third term.
>>>>> Then I subtract the NF from the SNR which gives me an output SNR somew=
here between 92dB and 67dB. Does that sound right?
>>>>> =20
>>>>> <mime-attachment.png>
>>>>> =20
>>>>> =20
>>>>> For the attenuator term, just assign it a NF (in dB) of (31.5 - TXGAIN=
).
>>>>>=20
>>>>> The noise figure of an attenuator is just the attenuation value--simil=
arly for the filter.  Just pretend it's a fixed attenuator with 0 gain.
>>>>>=20
>>>>> So the 'noise figure' after the DAC is just  2+(31.5 - TXGAIN) then fa=
ctor in the gains and noise figures of the amplifiers.
>>>>>=20
>>>>>=20
>>>>> =20
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-3186AC23-C931-4ECF-BC00-06A462C59C21
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I think you=E2=80=99d mentioned you have a s=
pectrum analyzer. What does it have to say about the SNR of your signal?<br>=
<br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquo=
te type=3D"cite">On Dec 8, 2020, at 2:41 PM, Lukas Haase via USRP-users &lt;=
usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div style=3D"font-family: Verdana;fo=
nt-size: 12.0px;"><div>Hi Marino,</div>

<div>&nbsp;</div>

<div>Thank you for confirming the -139dBm/Hz. Indeed, with my sampling rate o=
f 5 MSps, this is -139+dB10(5e6)=3D-72dBm, which was exactly my prediction f=
rom my initial message.</div>

<div>&nbsp;</div>

<div>For the RX line noise floor, I am sure it's the usual -169dBm/Hz (5dB N=
F) ... at least if I disconnect the TX-&gt;RX connection, that's what I get.=
</div>

<div>&nbsp;</div>

<div>Thanks again for your input! If you could think of anything else I coul=
d try to narrow down things please let me know.</div>

<div>&nbsp;</div>

<div>Thanks,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;
<div>&nbsp;
<div name=3D"quote" style=3D"margin:10px 5px 5px 10px; padding: 10px 0 10px 1=
0px; border-left:2px solid #C3D9E5; word-wrap: break-word; -webkit-nbsp-mode=
: space; -webkit-line-break: after-white-space;">
<div style=3D"margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Dienstag, 08. Dezemb=
er 2020 um 03:29 Uhr<br>
<b>Von:</b>&nbsp;"cyberphox" &lt;cyberphox@gmail.com&gt;<br>
<b>An:</b>&nbsp;"Lukas Haase" &lt;lukashaase@gmx.at&gt;<br>
<b>Betreff:</b>&nbsp;Re: [USRP-users] UBX160 TX "noise figure"?</div>

<div name=3D"quoted-content">
<div>I work out the TX noise floor is around -139dBm/Hz at roughly similar s=
tep attenuator setting, this results in similar Snr you predict&nbsp;</div>

<div>&nbsp;</div>

<div>Your setup seems fine unfortunately at the moment I can=E2=80=99t think=
 of what else at the moment.&nbsp;</div>

<div>&nbsp;</div>

<div>Are you sure about the RX line up noise floor?&nbsp;</div>

<div>&nbsp;</div>

<div>Will keep head scratching ...</div>

<div>&nbsp;</div>

<div>Have a good day!</div>

<div>&nbsp;</div>

<div>Marino&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;
<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Mon, 7 Dec 2020 at 18:00, Lukas Haase &lt;<a hr=
ef=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt; w=
rote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0 0.8ex;border-left: 1=
.0px rgb(204,204,204) solid;padding-left: 1.0ex;">
<div>
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div>Hi Marino,</div>

<div>&nbsp;</div>

<div>I don't think it's a BW/RBW related issue ... My measurements (noise, s=
ignal etc.) are pretty consistent otherwise.</div>

<div>I <em>think </em>I am doing things right in my setup.</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>That's why I am asking if maybe something is wrong with my original que=
stion about the "TX SNR" of the USRP. Maybe our conclusions on the noise fig=
ure in the TX are wrong?</div>

<div>&nbsp;</div>

<div>Thanks,</div>

<div>Lukas</div>

<div>&nbsp;</div>

<div>&nbsp;
<div>&nbsp;
<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0 10.0px 10.=
0px;border-left: 2.0px solid rgb(195,217,229);">
<div style=3D"margin: 0 0 10.0px 0;"><b>Gesendet:</b>&nbsp;Montag, 07. Dezem=
ber 2020 um 04:47 Uhr</div>
</div>
</div>
</div>
</div>
</div>

<div>
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div>
<div>
<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0 10.0px 10.=
0px;border-left: 2.0px solid rgb(195,217,229);">
<div style=3D"margin: 0 0 10.0px 0;"><br>
<b>Von:</b>&nbsp;"cyberphox" &lt;<a href=3D"mailto:cyberphox@gmail.com" targ=
et=3D"_blank">cyberphox@gmail.com</a>&gt;<br>
<b>An:</b>&nbsp;"Lukas Haase" &lt;<a href=3D"mailto:lukashaase@gmx.at" targe=
t=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
<b>Betreff:</b>&nbsp;Re: [USRP-users] UBX160 TX "noise figure"?</div>

<div>
<div>The power remaining from the phase noise skirt contributes but even wit=
hout it as you show is still quite a lot different. It=E2=80=99s not a measu=
rement bandwidth/rbw related issue?</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>
<div class=3D"gmail_quote">
<div class=3D"gmail_attr">On Mon, 7 Dec 2020 at 08:56, Lukas Haase &lt;<a hr=
ef=3D"mailto:lukashaase@gmx.at" target=3D"_blank">lukashaase@gmx.at</a>&gt; w=
rote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin: 0.0px 0.0px 0.0px 0.8ex;b=
order-left-width: 1.0px;border-left-style: solid;padding-left: 1.0ex;border-=
left-color: rgb(204,204,204);">
<div>
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div style=3D"font-family: Verdana;">Hi Marino,</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Ok, so when my TX is set to 20dB and th=
e full range is 31.5, then the attenuator should be set to 11.5dB.</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">How I get the information from my plots=
:</div>

<ul style=3D"font-family: Verdana;">
	<li style=3D"font-family: Verdana;">The SNR=3D38.7dB value is taken=
 by taking the DFT and setting all bins but the signal bin to zero and calcu=
lating <span style=3D"font-family: &quot;Courier New&quot; , Courier , monos=
pace;">20*log(std(ideal)/std(ideal-orig))</span>. Signal period is integer m=
ultiple of sampling period and leakage does not exist (at least to the degre=
e it could be relevant). Of course, this SNR includes everything, incl. phas=
e noise skirt</li>
	<li style=3D"font-family: Verdana;">The orange signal is generated b=
y adding white Gaussian noise to the <span style=3D"font-family: &quot;Couri=
er New&quot; , Courier , monospace;">ideal </span>signal such that it has Xd=
B SNR. I sweep over multiple SNR values until I get visual correspondance. =46rom=
 my plot you can see that the white noise floor is this signal (yellow) matc=
hes the received signal (red). The SNR for the yellow signal is 50dB. Theref=
ore I can conclude that the SNR of the signal is 50dB if I only take thermal=
 noise into account</li>
	<li style=3D"font-family: Verdana;">Yes, I have measured the noise f=
loor with signal off. It matches exactly with my expectations (-102dBm at RX=
 gain=3D20)</li>
</ul>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Thanks,</div>

<div style=3D"font-family: Verdana;">Lukas</div>

<div style=3D"font-family: Verdana;">&nbsp;
<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px=
 10.0px;border-left-width: 2.0px;border-left-style: solid;font-family: Verda=
na;border-left-color: rgb(195,217,229);">
<div style=3D"margin: 0.0px 0.0px 10.0px;font-family: Verdana;"><b style=3D"=
font-family: Verdana;">Gesendet:</b>&nbsp;Montag, 07. Dezember 2020 um 03:46=
 Uhr</div>
</div>
</div>
</div>
</div>
</div>

<div>
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">
<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px=
 10.0px;border-left-width: 2.0px;border-left-style: solid;font-family: Verda=
na;border-left-color: rgb(195,217,229);">
<div style=3D"margin: 0.0px 0.0px 10.0px;font-family: Verdana;"><br>
<b style=3D"font-family: Verdana;">Von:</b>&nbsp;"cyberphox" &lt;<a href=3D"=
mailto:cyberphox@gmail.com" style=3D"font-family: Verdana;" target=3D"_blank=
">cyberphox@gmail.com</a>&gt;<br>
<b style=3D"font-family: Verdana;">An:</b>&nbsp;"Lukas Haase" &lt;<a href=3D=
"mailto:lukashaase@gmx.at" style=3D"font-family: Verdana;" target=3D"_blank"=
>lukashaase@gmx.at</a>&gt;<br>
<b style=3D"font-family: Verdana;">Betreff:</b>&nbsp;Re: [USRP-users] UBX160=
 TX "noise figure"?</div>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">Hi Lukas,</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Thanks for your reply!&nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">I was meaning the attenuator of the TX b=
efore the amplifiers.&nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Also from your plots were do you take y=
our noise floor from? Are you reading from the top of the phase noise skirt?=
 &nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Have you measured the noise floor with s=
ignal off? &nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Also it is worth doing this measurement=
 with different power levels just in case you have some non-linearity &nbsp;=
issues</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Kind regards&nbsp;</div>

<div style=3D"font-family: Verdana;">Marino</div>

<div style=3D"font-family: Verdana;">&nbsp;
<div class=3D"gmail_quote" style=3D"font-family: Verdana;">
<div class=3D"gmail_attr" style=3D"font-family: Verdana;">On Mon, 7 Dec 2020=
 at 08:33, Lukas Haase &lt;<a href=3D"mailto:lukashaase@gmx.at" style=3D"fon=
t-family: Verdana;" target=3D"_blank">lukashaase@gmx.at</a>&gt; wrote:</div>=


<blockquote class=3D"gmail_quote" style=3D"margin: 0.0px 0.0px 0.0px 0.8ex;b=
order-left-width: 1.0px;border-left-style: solid;padding-left: 1.0ex;font-fa=
mily: Verdana;border-left-color: rgb(204,204,204);">
<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div style=3D"font-family: Verdana;">Hi Marino,</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Which digital attenuator do you mean?</=
div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<ul style=3D"font-family: Verdana;">
	<li style=3D"font-family: Verdana;">The 46.43dB attenuation that I u=
se in the TX-RX loopback is just composed of static, passive attenuators</li=
>
	<li style=3D"font-family: Verdana;">The receive gain is set to 20dB=
. Hence I assume I do not make use of the 6dB "digital gain" in the ADC and f=
rom the remaining 31.6dB gain I use 20. Hence I the "digital attenuator" sho=
uld be 11.5dB if that answers your question?</li>
	<li style=3D"font-family: Verdana;">At a receive gain of 20dB, the n=
oise figure is ~5dB, according to specs and measurements. -174+5+dB10(5e6)=3D=
-102dBm which is exactly what I measure without a signal applied.</li>
</ul>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">Thanks,</div>

<div style=3D"font-family: Verdana;">Lukas</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px=
 10.0px;border-left-width: 2.0px;border-left-style: solid;font-family: Verda=
na;border-left-color: rgb(195,217,229);">
<div style=3D"margin: 0.0px 0.0px 10.0px;font-family: Verdana;"><b style=3D"=
font-family: Verdana;">Gesendet:</b>&nbsp;Montag, 07. Dezember 2020 um 03:23=
 Uhr<br>
<b style=3D"font-family: Verdana;">Von:</b>&nbsp;"cyberphox" &lt;<a href=3D"=
mailto:cyberphox@gmail.com" style=3D"font-family: Verdana;" target=3D"_blank=
">cyberphox@gmail.com</a>&gt;<br>
<b style=3D"font-family: Verdana;">An:</b>&nbsp;"Lukas Haase" &lt;<a href=3D=
"mailto:lukashaase@gmx.at" style=3D"font-family: Verdana;" target=3D"_blank"=
>lukashaase@gmx.at</a>&gt;<br>
<b style=3D"font-family: Verdana;">Cc:</b>&nbsp;"Marcus D. Leech" &lt;<a hre=
f=3D"mailto:patchvonbraun@gmail.com" style=3D"font-family: Verdana;" target=3D=
"_blank">patchvonbraun@gmail.com</a>&gt;, <a href=3D"mailto:USRP-users@lists=
.ettus.com" style=3D"font-family: Verdana;" target=3D"_blank">USRP-users@lis=
ts.ettus.com</a></div>
</div>
</div>
</div>
</div>
</div>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">
<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px=
 10.0px;border-left-width: 2.0px;border-left-style: solid;font-family: Verda=
na;border-left-color: rgb(195,217,229);">
<div style=3D"margin: 0.0px 0.0px 10.0px;font-family: Verdana;"><br>
<b style=3D"font-family: Verdana;">Betreff:</b>&nbsp;Re: [USRP-users] UBX160=
 TX "noise figure"?</div>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">Hi Lukas,</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">What setting do you have the digital at=
tenuator set to?</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Kind&nbsp;regards</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Marino</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;
<div class=3D"gmail_quote" style=3D"font-family: Verdana;">
<div class=3D"gmail_attr" style=3D"font-family: Verdana;">On Mon, 7 Dec 2020=
 at 02:05, Lukas Haase via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" style=3D"font-family: Verdana;" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:</div>

<blockquote class=3D"gmail_quote" style=3D"margin: 0.0px 0.0px 0.0px 0.8ex;b=
order-left-width: 1.0px;border-left-style: solid;padding-left: 1.0ex;font-fa=
mily: Verdana;border-left-color: rgb(204,204,204);">
<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div style=3D"font-family: Verdana;">Hi Marcus,</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Thanks again!</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">I did now the following experiment: I c=
onnected TX to RX back-to-back with 46.43dB attenuation in between. I set TX=
 gain and RX gain to 20dB and transmit a single CW at -3dBFS.</div>

<div style=3D"font-family: Verdana;">This means my output power is <strong s=
tyle=3D"font-family: Verdana;">Pout=3D11.44dBm</strong> (cross checked with s=
pectrum analyzer) and on RX I sould have Pin=3D-34.99dBm. Indeed, calculatin=
g the RMS of the received signal and converting to dBm, I get <strong style=3D=
"font-family: Verdana;">Pin=3D-35.0224dBm</strong>. Spot on!</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">The red line is what I receive on the P=
SD (blue is the TX that I send):</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;"><div>&lt;mime-attachment.png&gt;</div><=
/div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">As you can see from the annotation, the=
 measured "SNR" of the received signal is only 38.7dB. I think this is mainl=
y caused by the phase noise skirt (and potentially the I/Q image).</div>

<div style=3D"font-family: Verdana;">In order to keep only consider thermal n=
oise, I add random noise to the original CW (using <span style=3D"font-famil=
y: &quot;Courier New&quot; , Courier , monospace;">randn(...)+1i*randn(...)<=
/span> in MATLAB) until it matches roughly the white noise floor of the rece=
ived signal. It's <strong style=3D"font-family: Verdana;">SNRoutput=3D50dB</=
strong> (yellow line).</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Now, according to our discussion below,=
 at Gtx=3D20, we should have <strong style=3D"font-family: Verdana;">SNRoutp=
ut=3D72dB</strong> (assuming thermal noise only).</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Where could the <strong style=3D"font-f=
amily: Verdana;">22dB difference</strong> in SNR come from?</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">Thanks!</div>

<div style=3D"font-family: Verdana;">Lukas</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">PS: I am aware of phase noise, DC offse=
ts, I/Q imbalance etc. But as you can see from my plot, I am <em style=3D"fo=
nt-family: Verdana;">only </em>considerung thermal noise. The thermal noise o=
f the receiver should be orders of magnitude lower (at least -102dBm) so the=
 receiver noise should not limit the results either.</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;
<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px=
 10.0px;border-left-width: 2.0px;border-left-style: solid;font-family: Verda=
na;border-left-color: rgb(195,217,229);">
<div style=3D"margin: 0.0px 0.0px 10.0px;font-family: Verdana;"><b style=3D"=
font-family: Verdana;">Gesendet:</b>&nbsp;Montag, 30. November 2020 um 17:08=
 Uhr<br>
<b style=3D"font-family: Verdana;">Von:</b>&nbsp;"Marcus D. Leech" &lt;<a hr=
ef=3D"mailto:patchvonbraun@gmail.com" style=3D"font-family: Verdana;" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;</div>
</div>
</div>
</div>
</div>
</div>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">
<div style=3D"margin: 10.0px 5.0px 5.0px 10.0px;padding: 10.0px 0.0px 10.0px=
 10.0px;border-left-width: 2.0px;border-left-style: solid;font-family: Verda=
na;border-left-color: rgb(195,217,229);">
<div style=3D"margin: 0.0px 0.0px 10.0px;font-family: Verdana;"><br>
<b style=3D"font-family: Verdana;">An:</b>&nbsp;"Lukas Haase" &lt;<a href=3D=
"mailto:lukashaase@gmx.at" style=3D"font-family: Verdana;" target=3D"_blank"=
>lukashaase@gmx.at</a>&gt;<br>
<b style=3D"font-family: Verdana;">Cc:</b>&nbsp;<a href=3D"mailto:USRP-users=
@lists.ettus.com" style=3D"font-family: Verdana;" target=3D"_blank">USRP-use=
rs@lists.ettus.com</a><br>
<b style=3D"font-family: Verdana;">Betreff:</b>&nbsp;Re: [USRP-users] UBX160=
 TX "noise figure"?</div>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;background-color: rgb(255,255,255);">
<div style=3D"font-family: Verdana;">On 11/30/2020 01:54 PM, Lukas Haase wro=
te:</div>

<blockquote style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;font-size: 12.0px;">
<div style=3D"font-family: Verdana;">Hi Marcus,</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">That makes sense, thanks.</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">Would you be willing to confirm if what=
 I am doing here is correct?</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;"><div>&lt;mime-attachment.png&gt;</div><=
/div>

<div style=3D"font-family: Verdana;">
<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">To first order, the DAC has an SNR of 9=
8dB (16 bit). Then I use Fries' equation to get the NF of the following stag=
es (for the filter and the attenuator, the noise figure is equal to its atte=
nuation). The NF is dominated by the 2nd and third term.</div>

<div style=3D"font-family: Verdana;">Then I subtract the NF from the SNR whi=
ch gives me an output SNR somewhere between 92dB and 67dB. Does that sound r=
ight?</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;"><div>&lt;mime-attachment.png&gt;</div><=
/div>

<div style=3D"font-family: Verdana;">&nbsp;</div>

<div style=3D"font-family: Verdana;">&nbsp;</div>
</div>
</div>
</blockquote>
For the attenuator term, just assign it a NF (in dB) of (31.5 - TXGAIN).<br>=

<br>
The noise figure of an attenuator is just the attenuation value--similarly f=
or the filter.&nbsp; Just pretend it's a fixed attenuator with 0 gain.<br>
<br>
So the 'noise figure' after the DAC is just&nbsp; 2+(31.5 - TXGAIN) then fac=
tor in the gains and noise figures of the amplifiers.<br>
<br>
<br>
&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" style=3D"font-family: Verdana;=
" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" style=3D"font-family: Verdana;" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a></blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div></div><span>_______________________________________________</span><br>=
<span>USRP-users mailing list</span><br><span>USRP-users@lists.ettus.com</sp=
an><br><span>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</span><br></div></blockquote></body></html>=

--Apple-Mail-3186AC23-C931-4ECF-BC00-06A462C59C21--


--===============1333404547849980997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1333404547849980997==--

