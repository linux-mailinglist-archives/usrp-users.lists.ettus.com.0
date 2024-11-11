Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C73619C4221
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 16:45:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 66F03386B35
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 10:45:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731339904; bh=8Fh+VVRNCs5MW/USeZG7TSHexl+dvlXqtBK4ljp7nN8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MVu82tmgc2LvIcZQ6m+xK7LhF2EuCvZ5yMAkvOoHKKlNnnft/G4GCuT5eXBOTgfp3
	 Xde5H2NQp4aKeIxusPmKQ0dnXHrnSCGINDcpXWTFEMDwwZ9xXGAY2V9vCCqkn0+ZGs
	 WhV9z8FfFooO0Z3pISnZlPkGISO1xzot2II9UmGevjC4aWQwo5vTNCtdvmVbZmsvkr
	 iQ3M0hHTnCb+sds8Fiq0XyFkAlTgPrq+0K2T90DwZ7ycv0rwKsSTo1yR0C2oVFApde
	 Yq0AjkIq/f75zzo7mP4XTMox2kNSul33rTXLrM4MmHdzZrX+FpIV1trWAIbfcz00mI
	 RcIfFaFnLsXug==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 09CC7386BDF
	for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 10:44:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EQHcFVwJ";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-46094b68e30so38358661cf.0
        for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 07:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731339878; x=1731944678; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKlw9MXlElhpaxhtxf/v2HEvhMqlqkNza+8JeQl/KFk=;
        b=EQHcFVwJqhSdR1od2z9e4zIyj4gBjVkiT1L2pWTCWJZd4fV2Wkn9vCnCKAlbE03tbG
         0fwaDza0KNYJcVuZ+bPZUhL7A4XqEIFEKDhwGqVjd/GgvkcSHNU1roHd5qQNWZjw7AaU
         uWFIwUOesGmFwvZ0DyXP8Bm1GbBuIeN/kJItTjLrSRc5tCgpcR+7ZKVCLQI3GJSjgDv8
         cJK1O8TPzgRH5UvFmbmLTDhCsRj0IDWtp68NBL66hqiavlomykEOXut9gMXurKyiFWOq
         onxwJTkkD6+0+MBkPqzFeWZfzRFMvOwz7ATm3m6ARJE7jcQJc8E6z+/fY1Tya6b2FdBe
         indw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731339878; x=1731944678;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iKlw9MXlElhpaxhtxf/v2HEvhMqlqkNza+8JeQl/KFk=;
        b=FF/q2u6lKMfSDA5GazjjdLltLT3KRBbGd2TL7ScEVEKqIjiVoFL/afvCRj0aIaz4Vj
         VEBUFCMFa3b8xox53GlTKmlaKJ6V5sQUovJQRDk72ZeLIp+Ro9OIYbVkC9+zLcv5AbU9
         Bb/7T/6ImTguQiQpAoNYtxT7r+vs7tAxY5/f2Fm7vmisIAaAC0Ur0m9NfuZKqv+/xWbc
         nRoRYehKGiVdlI+JbtCktx9Gqg8nJU7Po2r28tCMGcPSRNlb0keb44J9RiL2vObD5AXA
         CVTRlJKN4z3ZS3K56IfFH5fz7BRgPyxr6/6K4QQC+q83PnaX8oJf88pf42XP12TwNyZa
         7Fog==
X-Gm-Message-State: AOJu0Ywv9CIDe9nyzafmGTZwkdtM6G0hzYC/W70y5lpYnv9FugP9Voy/
	AFy01IOnpKymjYwRuom9fBZqLAN4J9TILZ30SNZimkGY+gDfUPLdAe2oYA==
X-Google-Smtp-Source: AGHT+IHhvGMujIwD0SfiNRqxm2yEN7eugjCbXUq5387Av3iHZ6tuSEf1OGtGs0NDRaU87h1c5sro5g==
X-Received: by 2002:a05:622a:609:b0:461:141b:47a4 with SMTP id d75a77b69052e-4630940ee15mr220893281cf.36.1731339878066;
        Mon, 11 Nov 2024 07:44:38 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-462ff41d949sm64154541cf.25.2024.11.11.07.44.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2024 07:44:37 -0800 (PST)
Message-ID: <9b280e0b-6d84-434e-90b4-d23a526a3d0c@gmail.com>
Date: Mon, 11 Nov 2024 10:44:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <epNrry0rqxfry59kLwmGVbtWQqjomWNmPiMCUmbXJh8@lists.ettus.com>
 <332b6345-7db9-487b-acad-cba161de0bd9@ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <332b6345-7db9-487b-acad-cba161de0bd9@ettus.com>
Message-ID-Hash: NXLYBKIRH5IPR45PKD2JAZDWEIMFPAUY
X-Message-ID-Hash: NXLYBKIRH5IPR45PKD2JAZDWEIMFPAUY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal Distortion and Phase Issues with USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NXLYBKIRH5IPR45PKD2JAZDWEIMFPAUY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1740135100125645019=="

This is a multi-part message in MIME format.
--===============1740135100125645019==
Content-Type: multipart/alternative;
 boundary="------------Jyy0q1fe6xIVDqkASbWF0NUm"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Jyy0q1fe6xIVDqkASbWF0NUm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 11/11/2024 10:10, Marcus M=C3=BCller wrote:
>
> Hello!
>
> Regarding what you see in trailing, my guess is that this is the step=20
> response of the built-in DC offset cancellation filter; "DC offset=20
> cancellation" is high-pass filter behaviour. This affects only=20
> frequencies in your signal that are very low. It is meant to remove=20
> imperfections that happen on every quadrature mixer&ADC device. So,=20
> unless you really see a problem with the signal itself, this is=20
> probably fine! You say you have an issue with this, but don't explain=20
> the actual issue.
>
> The phase in that trailing part can remain constant, that's OK. The=20
> step response of a real-valued filter is real, and you should simply=20
> see the phase of the last output sample at the moment of "input=20
> switchoff".
>
> Regarding "Amplitude and Signal length": I can't really tell what=20
> you're showing us here. What kind of signal did you feed into the=20
> USRP? Where does it come from? At which frequency? What is the USRP=20
> tuned to? What's its sample rate? Most importantly: What is it that=20
> worries you about this? As far as I can tell, this might seem normal,=20
> and not an issue!
>
>
> Best regards,
> Marcus
>
What type of signal?=C2=A0 Narrowband signals can be considerably more=20
affected by DC-offset correction than wideband
 =C2=A0 signals.=C2=A0 One can use offset-tuning to move the signal outsi=
de the=20
"view" of the DC-offset correction.=C2=A0 The second
 =C2=A0 argument to "tune_request" allows you to specify an offset.

Also, how are these devices connected?=C2=A0 "Over the air" or with a cab=
le.=C2=A0=20
If with a cable, please ensure that there's
 =C2=A0 adequate attenuation in the cable to prevent overload or even dam=
age=20
to the B210 front-end.


> On 11.11.24 14:18, yibindeng66@outlook.com wrote:
>>
>> Hi everyone,
>>
>> I'm working on a project where I generate a signal and simultaneously=20
>> receive it using both the Pluto SDR and the USRP B210. However, I=E2=80=
=99m=20
>> running into some unexpected issues with the B210's reception, and=20
>> I=E2=80=99m hoping for some guidance.
>>
>> Here are the main problems I=E2=80=99m encountering:
>>
>> *Signal Trailing*: As shown in the figures, The signal received by=20
>> the Pluto has clear boundaries, while the signal received by the B210=20
>> has noticeable trailing compared to the Pluto.
>>
>> *Strange Phase Characteristics*: The phase behavior of the=20
>> B210-received signal is unusual. Specifically=EF=BC=8Cduring the trail=
ing=20
>> phase of the signal, the phase remains constant, which is unexpected.=20
>> When there is no signal, the phase appears to be chaotic.
>>
>> *Amplitude and Signal Length*: As shown in the figure, when the=20
>> signal length is relatively short, both the maximum and the average=20
>> amplitude increase as the signal length grows.
>>
>> I suspect that each sample might be significantly broadened in the=20
>> time domain, but since I am not entirely familiar with the USRP=20
>> B210's hardware processing, I am unsure if this is the root cause. I=20
>> am wondering if these issues could potentially be improved by=20
>> modifying the hardware configuration, such as adjusting the filter=20
>> settings or other parameters. The code I=E2=80=99m using for the B210=20
>> receiver is attached.
>>
>> Has anyone experienced similar issues or have suggestions on=20
>> adjusting the B210's configuration or setup to address these=20
>> distortions? Any insights would be greatly appreciated.
>>
>> Thanks in advance for your help!
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------Jyy0q1fe6xIVDqkASbWF0NUm
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 11/11/2024 10:10, Marcus M=C3=BClle=
r
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:332b6345-7db9-487b-acad-cba161de0bd9@ettus.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello!<br>
      </p>
      <p>Regarding what you see in trailing, my guess is that this is
        the step response of the built-in DC offset cancellation filter;
        "DC offset cancellation" is high-pass filter behaviour. This
        affects only frequencies in your signal that are very low. It is
        meant to remove imperfections that happen on every quadrature
        mixer&amp;ADC device. So, unless you really see a problem with
        the signal itself, this is probably fine! You say you have an
        issue with this, but don't explain the actual issue.<br>
      </p>
      <p>The phase in that trailing part can remain constant, that's OK.
        The step response of a real-valued filter is real, and you
        should simply see the phase of the last output sample at the
        moment of "input switchoff".</p>
      <p>Regarding "Amplitude and Signal length": I can't really tell
        what you're showing us here. What kind of signal did you feed
        into the USRP? Where does it come from? At which frequency? What
        is the USRP tuned to? What's its sample rate? Most importantly:
        What is it that worries you about this? As far as I can tell,
        this might seem normal, and not an issue!</p>
      <p><br>
      </p>
      <p>Best regards,<br>
        Marcus<br>
      </p>
    </blockquote>
    What type of signal?=C2=A0 Narrowband signals can be considerably mor=
e
    affected by DC-offset correction than wideband<br>
    =C2=A0 signals.=C2=A0 One can use offset-tuning to move the signal ou=
tside the
    "view" of the DC-offset correction.=C2=A0 The second<br>
    =C2=A0 argument to "tune_request" allows you to specify an offset.<br=
>
    <br>
    Also, how are these devices connected?=C2=A0 "Over the air" or with a
    cable.=C2=A0 If with a cable, please ensure that there's<br>
    =C2=A0 adequate attenuation in the cable to prevent overload or even
    damage to the B210 front-end.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:332b6345-7db9-487b-acad-cba161de0bd9@ettus.com">
      <p> </p>
      <div class=3D"moz-cite-prefix">On 11.11.24 14:18, <a
          class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
          href=3D"mailto:yibindeng66@outlook.com" moz-do-not-send=3D"true=
">yibindeng66@outlook.com</a>
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:epNrry0rqxfry59kLwmGVbtWQqjomWNmPiMCUmbXJh8@lists.ettus.com">
        <meta http-equiv=3D"content-type"
          content=3D"text/html; charset=3DUTF-8">
        <p>Hi everyone,</p>
        <p>I'm working on a project where I generate a signal and
          simultaneously receive it using both the Pluto SDR and the
          USRP B210. However, I=E2=80=99m running into some unexpected is=
sues
          with the B210's reception, and I=E2=80=99m hoping for some guid=
ance.</p>
        <p>Here are the main problems I=E2=80=99m encountering:</p>
        <p><strong>Signal Trailing</strong>: As shown in the figures,
          The signal received by the Pluto has clear boundaries, while
          the signal received by the B210 has noticeable trailing
          compared to the Pluto.</p>
        <p><strong>Strange Phase Characteristics</strong>: The phase
          behavior of the B210-received signal is unusual.
          Specifically=EF=BC=8Cduring the trailing phase of the signal, t=
he
          phase remains constant, which is unexpected. When there is no
          signal, the phase appears to be chaotic.</p>
        <p><strong>Amplitude and Signal Length</strong>: As shown in the
          figure, when the signal length is relatively short, both the
          maximum and the average amplitude increase as the signal
          length grows. </p>
        <p>I suspect that each sample might be significantly broadened
          in the time domain, but since I am not entirely familiar with
          the USRP B210's hardware processing, I am unsure if this is
          the root cause. I am wondering if these issues could
          potentially be improved by modifying the hardware
          configuration, such as adjusting the filter settings or other
          parameters. The code I=E2=80=99m using for the B210 receiver is
          attached.</p>
        <p>Has anyone experienced similar issues or have suggestions on
          adjusting the B210's configuration or setup to address these
          distortions? Any insights would be greatly appreciated.</p>
        <p>Thanks in advance for your help!</p>
        <br>
        <fieldset class=3D"moz-mime-attachment-header"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"tru=
e">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a
        class=3D"moz-txt-link-abbreviated moz-txt-link-freetext"
        href=3D"mailto:usrp-users-leave@lists.ettus.com"
        moz-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------Jyy0q1fe6xIVDqkASbWF0NUm--

--===============1740135100125645019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1740135100125645019==--
