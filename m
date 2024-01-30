Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75560842ADB
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jan 2024 18:26:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 120E4384C19
	for <lists+usrp-users@lfdr.de>; Tue, 30 Jan 2024 12:26:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1706635600; bh=uQfadSV/10icgdO38rnLj3mflYzo1MElYgkMX+H4Ye4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dJBnBgLSZhdCZUuETuXtNFV9bGuOqPtsQycaL8EWjhbuTHSGanyXovgIwqXFps++e
	 QqPWO1/Z+R1XGbeG7EizysBwhroQyS/w0bAI/B1p/K6gjbpxdp3ZATZduJAgqj0ke+
	 ugfY/2x+4/+tt2mNbGOH3XoDsCuDk6pH4E+ufOpbxuNgqbiw/uaAwSQObJSqn38LeJ
	 pr7UDX691Prq5Ft/BcL19ofN1sCIPm1sWTDlGubARPN1nNS/FrFRKvzJo61HracwQe
	 9OtMksUj6lFvHuAywT9oZucY/NTTdCSXfEyk4Kom7xrGx+GIeJifadKHt+yZv12VQ3
	 RsnQ802gLYIEg==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id C7743384B0D
	for <usrp-users@lists.ettus.com>; Tue, 30 Jan 2024 12:25:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BTrwSe6a";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-68c3ac1fdb9so25195386d6.2
        for <usrp-users@lists.ettus.com>; Tue, 30 Jan 2024 09:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706635541; x=1707240341; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vXY4S88fj5qKq0XEPlIRSOoARLpDRkXYLtPusq+lEh0=;
        b=BTrwSe6aaP89s3i2HmGX6DAdHBLYgKXMSi3xtz4wjhH8cP4xm9L7K4ZfNMtsdjAOuf
         crw0KlvUmvQ7aLakc4B/IW2TThKW0U7OI+0V+bDTD3CV24uhvGztdqF4ruYdbic0rzlS
         AF17rSTckJcqeFxwuxGrf6zRZzbVBWkpSZB2BZxzf2JR7toopVI7rYfVqh0gHsAm0N6/
         0laRjG6txgVf6M4aQA0cc2tlbBcgedOkKujUCbv4vLTw8Njb7FoYfRkAOROMGKBOt6z1
         SQBgEusxLnOcoj3MVtNbcpbUhuU40kUa0JA/3jo6GyN3vZH/6ycFm2rSyxrptFwzGnNO
         zPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706635541; x=1707240341;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vXY4S88fj5qKq0XEPlIRSOoARLpDRkXYLtPusq+lEh0=;
        b=b0u69VqjhNohTCloxC8MfHypbXPtVK1msKbYBSXRx8TkL4babbp79bfq/9r/aUiP5N
         nksxtcXPQkT0SUpuu4bH2fB8O0PlYcSCnE2tOqrRgtXzABLC5TZRLa+bng8Pz2ciLNNC
         CN/8gaTv0M0mjnwJwbsUCZtT1MwbnoDkAJrWivBaxCkDO7hsLb+SGr/N8iC21NWOcZO2
         1qTmd5PZwptfDT31IRxDSgTyktbxc5+IJSxTbMHrfDjP4oy77l8PGNJ12rKWktzgXnxd
         mbVmmnaCMqsDAnUjC7Qbgg1QUaZ2zoaNy17N32wW8BOkm3cF0oqxLXuFEcpnqj/Qv6C/
         5Eyw==
X-Gm-Message-State: AOJu0YwSorTFz86FRGusHzmfY4YkldU3EftvmKhlqv0oiJKRR8hT2aNo
	b/SkPU1bfMPOXjhpEdDKL/3JPKmxoIrxXLZzEM5zkqLaVdlkTx5m30tmw5GU
X-Google-Smtp-Source: AGHT+IE8h8i0lpUfURD9ZZuLsDAbqG8mlUqiPmDEq8SgyxuFNPnMB6WGvStwx00cwC4Y3xv5vp6MOQ==
X-Received: by 2002:ad4:5742:0:b0:686:ab99:cd0c with SMTP id q2-20020ad45742000000b00686ab99cd0cmr144800qvx.23.1706635540812;
        Tue, 30 Jan 2024 09:25:40 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id 11-20020a0562140dcb00b0068c5116af11sm1845293qvt.142.2024.01.30.09.25.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 09:25:40 -0800 (PST)
Message-ID: <a091ea9a-e517-4086-8b32-a5fa901298a0@gmail.com>
Date: Tue, 30 Jan 2024 12:25:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BN8PR05MB5971F338F42E2F9B91C913B08C7E2@BN8PR05MB5971.namprd05.prod.outlook.com>
 <22168a60-61a4-43bb-afec-a1e74d874961@ettus.com>
 <BN8PR05MB59713B441A1180206D4900B68C7E2@BN8PR05MB5971.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN8PR05MB59713B441A1180206D4900B68C7E2@BN8PR05MB5971.namprd05.prod.outlook.com>
Message-ID-Hash: T5QUK6DKJSW7PRXQE6DJ6KTQKTOFA67V
X-Message-ID-Hash: T5QUK6DKJSW7PRXQE6DJ6KTQKTOFA67V
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 USRP -- Performance questions
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T5QUK6DKJSW7PRXQE6DJ6KTQKTOFA67V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7898370330900485311=="

This is a multi-part message in MIME format.
--===============7898370330900485311==
Content-Type: multipart/alternative;
 boundary="------------0DuFCP9NskuyqnNTgFxvchG9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0DuFCP9NskuyqnNTgFxvchG9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 29/01/2024 12:20, Arnaldo Sans wrote:
>
> Hello Marcus,
>
> Thank you for your quick response... I am attaching a pdf of the email=20
> because I suspect that my screenshots are not making -it to you.
>
> Here are the TX and RX graphs available on the Ettus URL I mentioned=20
> in my initial email...
>
> Below are the RX plots:
>
>  1. Receiver performance =E2=80=93 Gain, IQ Balance, DC Offset, Input I=
P3,
>     Input IP2 and Noise Figure) with a swept Gain range from 0 dB to
>     37.5 dB,=C2=A0at a fixed frequency, 5800 MHz
>  2. Receiver performance=C2=A0=E2=80=93 (Gain,=C2=A0IQ Balance, DC Offs=
et, Input IP3,
>     Input IP2 and Noise Figure) with a swept frequency range from 10
>     MHz to 6 GHz with a fixed Gain of 0.00 dB.
>
> Below are the TX plots:
>
>  1. Receiver performance =E2=80=93 Gain, IQ Balance, DC Offset, Output =
IP3,
>     Output IP2 and Noise Figure) with a swept Gain range from 0 dB to
>     37.5=C2=A0dB,=C2=A0at a fixed frequency, 5800 MHz
>  2. Receiver performance=C2=A0=E2=80=93 (Gain,=C2=A0IQ Balance, DC Offs=
et, Output IP3,
>     Output IP2 and Noise Figure) with a swept frequency range from 10
>     MHz to 6 GHz with a fixed Gain of 0.00 dB.
>
> I would like to know the input power, Pin?
>
> Regarding the attenuators, below is a screenshot from the Ettus URL.=C2=
=A0=20
> I would=C2=A0like to know more about what appear to be fixed attenuator=
s=20
> and how they are used and managed.=C2=A0 According to the data sheet I=20
> think I understand how the variable attenuator is being=C2=A0used and=20
> managed; if there is any documentation that provides additional=20
> details that would be very much appreciated.
>
> *It is my understanding that the HMC624LP4E is a 6-bits, 0.5 dB steps=20
> digital step attenuator. This means I can control as much as 31.5 dB=20
> gain in 0.5dB steps yet the measurements show gain values up to 37.5=20
> dB. Where are the extra 6 dB of gain control coming from?*
>
> Regarding the request for a theory of operation documentation=E2=80=A6 =
this is=20
> because currently I am only looking at block diagrams and schematics =E2=
=80=93=20
> often time many questions can be answered by a theory of operation=20
> document.=C2=A0 I there another URL that has the documents?
>
> Thank=C2=A0you, I appreciate you help.
>
> Regards,
> AJ
>
> -----------------------------------------------------------------------=
-
> *From:*=C2=A0Marcus M=C3=BCller <marcus.mueller@ettus.com>
> *Sent:*=C2=A0Monday, January 29, 2024 10:11 AM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:*=C2=A0[USRP-users] Re: x310 USRP -- Performance questions
>
> *Note: This message originated from outside the FIU Faculty/Staff=20
> email system.*
>
>
> Hi Arnaldo,
>
>
> On 29.01.24 14:23, Arnaldo Sans wrote:
>
>     Are there any details about what the measurement conditions were
>     used to accomplished both the Rx and Tx measurements... e.g. input
>     power etc.?
>
> Which measurements specifically are you referring to? For most of the=20
> RX figures, input power is the actual measured quantity, of sorts?
>
>     Regarding the block diagram... I see various attenuators... that I
>     would like to better understand I have placed green boxes around
>     the attenuators
>
> So, what would you like to understand about these attenuators?
>
>     Is there a theory of operations document / URL for the x310?
>
> I think you're mostly looking at it; could you specify that question a=20
> bit, please?
>
>
> Best regards,
> Marcus
>
>
>
There's no "structured walk-through" of the various hardware designs.=C2=A0=
=C2=A0=C2=A0=20
The schematics and the block-diagrams and the
 =C2=A0 FPGA source code, and the host-side source code, and the API=20
documentation, and the growing collection of app-notes
 =C2=A0 are what there is.

I'm also not sure how the "37.5dB" was obtained in testing, and TBH, the=20
person who did these tests is, AFAIR, long-gone
 =C2=A0 from the Emerson/NI/Ettus world.

The small fixed attenuators are likely there to buffer against=20
reflections from filters that follow, and/or to assure that
 =C2=A0 the max Pout cannot exceed some regulatory limit even with the=20
variable attenuator turned up to maximum.

The UBX is a two-stage (again, AFAIR) superheterodyne design, with the=20
2nd conversion stage being direct-conversion,
 =C2=A0 which is what is sampled by the ADCs on the motherboard.=C2=A0 I =
believe=20
that converse is true for the TX side.=C2=A0=C2=A0 But since
 =C2=A0 my main application for my own applications is radio astronomy, I=
=20
only rarely "care" about the TX side of things.

On TX, signals start out as quadrature baseband signals, and if they are=20
between 500MHz and 6GHz, the sum gets
 =C2=A0 presented directly to the RFPA output stage.=C2=A0 If under 500MH=
z,=20
there's a 2nd conversion stage before being
 =C2=A0 presented to the RPGA output stage.



--------------0DuFCP9NskuyqnNTgFxvchG9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 29/01/2024 12:20, Arnaldo Sans
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BN8PR05MB59713B441A1180206D4900B68C7E2@BN8PR05MB5971.namprd05=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <p style=3D"margin-top: 0px; margin-bottom: 0px;"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Hello
          Marcus,</span></p>
      <p><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">=C2=A0=
</span></p>
      <p class=3D"elementToProof"><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
Thank
          you for your quick response... I am attaching a pdf of the
          email because I suspect that my screenshots are not making -it
          to you.</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
=C2=A0</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
Here
          are the TX and RX graphs available on the Ettus URL I
          mentioned in my initial email...</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
=C2=A0</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
Below
          are the RX plots:=C2=A0=C2=A0</span></p>
      <ol data-listchain=3D"__List_Chain_109"
        style=3D"list-style-type: decimal;" start=3D"1">
        <li
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
          <span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: black;">Receiver
            performance =E2=80=93
          </span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Gain,
            IQ Balance, DC Offset, Input IP3, Input IP2 and Noise
            Figure) with a swept Gain range from 0 dB to 37.5 dB,=C2=A0at=
 a
            fixed frequency, 5800 MHz</span></li>
        <li
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0); margin=
-bottom: 12pt;"
          class=3D"elementToProof">
          <span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: black; background-co=
lor: white;">Receiver
            performance=C2=A0=E2=80=93 (Gain,</span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">=C2=A0=
IQ
            Balance, DC Offset, Input IP3, Input IP2 and Noise Figure)
            with a swept frequency range from 10 MHz to 6 GHz with a
            fixed Gain of 0.00 dB.</span></li>
      </ol>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
=C2=A0</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
Below
          are the TX plots:=C2=A0=C2=A0</span></p>
      <ol data-listchain=3D"__List_Chain_110"
        style=3D"list-style-type: decimal;" start=3D"1">
        <li
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
          <span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: black;">Receiver
            performance =E2=80=93 Gain, IQ Balance, DC Offset, Output IP3=
,
            Output IP2 and Noise Figure) with a swept Gain range from 0
            dB to </span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">37.5=C2=
=A0dB,=C2=A0at
            a fixed frequency, 5800 MHz</span></li>
        <li
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
          <span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: black; background-co=
lor: white;">Receiver
            performance=C2=A0=E2=80=93 (Gain,</span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">=C2=A0=
IQ
            Balance, DC Offset, Output IP3, Output IP2 and Noise Figure)
            with a swept frequency range from 10 MHz to 6 GHz with a
            fixed Gain of 0.00 dB.</span></li>
      </ol>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
=C2=A0</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black; b=
ackground-color: yellow;">I
          would like to know the input power, Pin?</span><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
=C2=A0=C2=A0</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
=C2=A0</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
Regarding
          the attenuators, below is a screenshot from the Ettus URL.=C2=A0=
 I
          would=C2=A0like to know more about what appear to be fixed
          attenuators and how they are used and managed.=C2=A0 According =
to
          the data sheet I think I understand how the variable
          attenuator is being=C2=A0used and managed; if there is any
          documentation that provides additional details that would be
          very much appreciated.</span></p>
      <p class=3D"elementToProof"><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: black;">=
=C2=A0</span></p>
      <p><span
style=3D"font-family: Aptos, sans-serif; font-size: 11pt; color: rgb(0, 0=
, 0); background-color: yellow;"><b>It
            is my understanding that the HMC624LP4E is a 6-bits, 0.5 dB
            steps digital step attenuator. This means I can control as
            much as 31.5 dB gain in 0.5dB steps yet the measurements
            show gain values up to 37.5 dB. Where are the extra 6 dB of
            gain control coming from?</b></span></p>
      <p><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">=C2=A0=
</span></p>
      <p><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Regar=
ding
          the request for a theory of operation documentation=E2=80=A6 th=
is is
          because currently I am only looking at block diagrams and
          schematics =E2=80=93 often time many questions can be answered =
by a
          theory of operation document.=C2=A0 I there another URL that ha=
s
          the documents?</span></p>
      <p><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">=C2=A0=
</span></p>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        Thank=C2=A0you, I appreciate you help.</div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof"
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        Regards,</div>
      <div class=3D"elementToProof"><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">AJ</s=
pan></div>
      <div
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display: inline-block; width: 98%;">
      <div dir=3D"ltr" id=3D"divRplyFwdMsg"><span
style=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0,=
 0, 0);"><b>From:</b>=C2=A0Marcus
          M=C3=BCller <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:m=
arcus.mueller@ettus.com">&lt;marcus.mueller@ettus.com&gt;</a><br>
          <b>Sent:</b>=C2=A0Monday, January 29, 2024 10:11 AM<br>
          <b>To:</b>=C2=A0<a class=3D"moz-txt-link-abbreviated" href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b>=C2=A0[USRP-users] Re: x310 USRP -- Performance
          questions</span>
        <div>=C2=A0</div>
      </div>
      <p
style=3D"text-align: center; margin: 0px auto; padding: 5px; border-width=
: 1px; border-style: solid; border-color: black; width: 65%; color: red;"=
>
        <b>Note: This message originated from outside the FIU
          Faculty/Staff email system.</b></p>
      <br>
      <p style=3D"margin-top: 0px; margin-bottom: 0px;">Hi Arnaldo,</p>
      <p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
      </p>
      <div>On 29.01.24 14:23, Arnaldo Sans wrote:</div>
      <blockquote>
        <div>A<span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">re
            there any details about what the measurement conditions were
          </span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 14.6667px; color: rgb(0, 0, 0); b=
ackground-color: rgb(255, 255, 255);">used
            to accomplished both the Rx and Tx measurements</span><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">...
            e.g. input power etc.?</span></div>
      </blockquote>
      Which measurements specifically are you referring to? For most of
      the RX figures, input power is the actual measured quantity, of
      sorts?<br>
      <blockquote><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Regar=
ding
          the block diagram... I see various attenuators... that I would
          like to better understand I have placed green boxes around the
          attenuators</span></blockquote>
      So, what would you like to understand about these attenuators?<br>
      <blockquote><span
style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Cal=
ibri, Helvetica, sans-serif; font-size: 14.6667px; color: rgb(0, 0, 0); b=
ackground-color: rgb(255, 255, 255);">Is
          there a theory of operations document / URL for the x310?</span=
></blockquote>
      <p style=3D"margin-top: 0px; margin-bottom: 0px;">I think you're
        mostly looking at it; could you specify that question a bit,
        please?</p>
      <p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
      </p>
      <p style=3D"margin-top: 0px; margin-bottom: 0px;">Best regards,<br>
        Marcus</p>
      <br>
      <br>
    </blockquote>
    There's no "structured walk-through" of the various hardware
    designs.=C2=A0=C2=A0=C2=A0 The schematics and the block-diagrams and =
the<br>
    =C2=A0 FPGA source code, and the host-side source code, and the API
    documentation, and the growing collection of app-notes<br>
    =C2=A0 are what there is.<br>
    <br>
    I'm also not sure how the "37.5dB" was obtained in testing, and TBH,
    the person who did these tests is, AFAIR, long-gone<br>
    =C2=A0 from the Emerson/NI/Ettus world.<br>
    <br>
    The small fixed attenuators are likely there to buffer against
    reflections from filters that follow, and/or to assure that<br>
    =C2=A0 the max Pout cannot exceed some regulatory limit even with the
    variable attenuator turned up to maximum.<br>
    <br>
    The UBX is a two-stage (again, AFAIR) superheterodyne design, with
    the 2nd conversion stage being direct-conversion,<br>
    =C2=A0 which is what is sampled by the ADCs on the motherboard.=C2=A0=
 I
    believe that converse is true for the TX side.=C2=A0=C2=A0 But since<=
br>
    =C2=A0 my main application for my own applications is radio astronomy=
, I
    only rarely "care" about the TX side of things.<br>
    <br>
    On TX, signals start out as quadrature baseband signals, and if they
    are between 500MHz and 6GHz, the sum gets<br>
    =C2=A0 presented directly to the RFPA output stage.=C2=A0 If under 50=
0MHz,
    there's a 2nd conversion stage before being<br>
    =C2=A0 presented to the RPGA output stage.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------0DuFCP9NskuyqnNTgFxvchG9--

--===============7898370330900485311==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7898370330900485311==--
