Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 471A385079E
	for <lists+usrp-users@lfdr.de>; Sun, 11 Feb 2024 03:11:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14DE53853E9
	for <lists+usrp-users@lfdr.de>; Sat, 10 Feb 2024 21:11:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707617507; bh=HGfiUS1DPwmxXrXJNjopCB2NFxMJW24hJNvA6kMmWfY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=p3ChDqeLSccnZ1YuYx/uFED5aPyiSRihGB8hsDUy8YPRqt4YyvZ23X2Wq6MX3xYu5
	 DdT5acz/qhepbIujcLVirHRn6m9sfT2kew24O6lAihvRd1unBZIabc/nD0rH7L6jkE
	 +gswp+UZGtIKqtdSUHSNzE6LJqLe64aRWy7kUMlQze5xW5FF+/jlFPFoS72iyF+ePg
	 JWl7VK3S4FCdTqNKxiFxIYpk2UiTqwApsQ8V9vEuGcOPJQ86TKbGXKNscrZIhwbyaf
	 2rsLgr2O5gtuv4DMR/qBH7F83DilPGHFX6DkxOce5mRvEb3TeDbylor5Feu1R2/DEY
	 Ct0vtoJcH+btg==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 9477F38539F
	for <usrp-users@lists.ettus.com>; Sat, 10 Feb 2024 21:10:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Fj7fCAvn";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56003c97d98so2617182a12.3
        for <usrp-users@lists.ettus.com>; Sat, 10 Feb 2024 18:10:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1707617449; x=1708222249; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xJRgEGpUMxFiOCi+8Qv46xV7GfWJvy21J2jnJEUrA/g=;
        b=Fj7fCAvnC/xd+K4b53GuD1g6thoiwVtdQMs+mf4cUMsLRFa+bKeYhv+K/my486Kcf8
         VqUo6LoK2hirD7cphVWP0vbobUYTpNbTmD9N0VB9gM1pWul4bZOMzAGhyBroIjzGwziC
         asXsc21NvH6jjlj+mZgeiex3+Ai7eCbkEhIgbLSw21MOpALqSRLlQ/UwNDN2Y53ZkGJZ
         GQbI0QotCT0Mkbv/Ku00drVedp5YNXBPiYuiGM8Ll3jq1nRbFvrQ6OtZHAiNdk4J228X
         Pwa5r6sj6IV7vSM84fkhyOSrgZX+tEcncWEaCFCoXny26AOb0qoXGArz+MlO9WY322OQ
         3qBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707617449; x=1708222249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xJRgEGpUMxFiOCi+8Qv46xV7GfWJvy21J2jnJEUrA/g=;
        b=TZeI+2K65ojiaXZfT3YaeZxgUL+HGTMj5RgRevMc9vBYzhFWhCnVQ2+MmBqw9TVW3Q
         TNaTq0hMz3tMLub4IPnqFB0z13f17ecCqK8LafU2mUJO8o7gXg/akdkYWOeFBHRJif0A
         24Omwto5Vpbv1JAlUwwzthM0jPpQRzmviN/AHqVpv6qW9VUndsShWuVYHj+3KDDOuDuo
         CXqZNJCtyggp30QXQYRxMCaErb7q1uLsucciDYPKfGTwAa/F82r6TJetX7n8uulK7GCr
         q92PbrSbIC5kxDfyqzMXIs1ZTP9OLm8i8PKnsfc+1hlZeskL5buVtb54zcGLoeDQyBh+
         xt7Q==
X-Gm-Message-State: AOJu0YybLDgrSamde5mAB9GO4qAeFSB+noj65RIrcI2YkMQBoVBYmKKt
	kBhkySEfuG+ounLZX8/K3DaWntyAUU/GSq/sXnQaJU9TwJTSJUTayoGnjichCDE8rWyRlLX6e8z
	EevBGpkC4f5dLxW68s1+pxfysBdpv69pHaeNY
X-Google-Smtp-Source: AGHT+IGbKIjb5fqZn5FT6HRPzazeOHqG96KpidnIAOsXOkd1fccQWhUK4/Pe5hTA8yoE0ZfD9MfaLu8P1EGARaed0DA=
X-Received: by 2002:a05:6402:31a1:b0:561:8918:9f5d with SMTP id
 dj1-20020a05640231a100b0056189189f5dmr799238edb.20.1707617449235; Sat, 10 Feb
 2024 18:10:49 -0800 (PST)
MIME-Version: 1.0
References: <fQ2AEeHqk1f2jwuhe1oZOqHucYzNbsPIesuyY5qKrvg@lists.ettus.com>
 <CAB__hTTTNSCg+HskvWrFTbaXhXoJgK5Gq7ihF2d5uqYPpMyYcg@mail.gmail.com> <b70389b0-ae5c-45d7-9b5e-037cc2637980@gmail.com>
In-Reply-To: <b70389b0-ae5c-45d7-9b5e-037cc2637980@gmail.com>
Date: Sat, 10 Feb 2024 21:10:37 -0500
Message-ID: <CAB__hTR+LsHS-CzjaU9jPHoVFz5RaP6FBZLY1cd9o1OT1qx_Kw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: AEH46LS64KKIYHWQKEH2UTAUMFBK4W65
X-Message-ID-Hash: AEH46LS64KKIYHWQKEH2UTAUMFBK4W65
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AEH46LS64KKIYHWQKEH2UTAUMFBK4W65/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7092131711095493002=="

--===============7092131711095493002==
Content-Type: multipart/alternative; boundary="00000000000079da3b061111ab03"

--00000000000079da3b061111ab03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But it should. This is basic functionality that is completely broken. The
commit to fix it is simple.

On Fri, Feb 9, 2024 at 10:06=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 09/02/2024 09:07, Rob Kossler via USRP-users wrote:
>
> This is fixed in 4.5 and 4.6.  Are you able to switch?
> Rob
>
> I'll add that it's unlikely for the fix to get back-ported to 4.4 at this
> point.
>
>
>
>
> On Fri, Feb 9, 2024 at 5:04=E2=80=AFAM <speik@hs-bremen.de> wrote:
>
>> Hi,
>>
>> I am facing the same problem.
>>
>> I am on a Linux machine and hardware is an X300 with a UBX160.
>>
>> When I am above 500 MHz the actual carrier freq becomes about 2000 MHz
>> smaller.
>>
>> I checked it with the uhd example script  tx_waveforms that comes with
>> the uhd install. Below is the output. Note that actual frequency is
>> negative. There is no output at 915 MHz on a spectrum analyzer. Below 50=
0
>> MHz everything is fine.
>>
>> Same happens when using Gnuradio.
>>
>>  Thanks
>>
>> Soren
>>
>>
>> ------------------------------
>>
>> $ ./tx_waveforms --freq 915e6 --rate 5e6 --gain 0
>>
>> Creating the usrp device with: ...
>> [INFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400;
>> UHD_4.4.0.0+ds1-4
>> [INFO] [X300] X300 initialization sequence...
>> [INFO] [X300] Maximum frame size: 1472 bytes.
>> [INFO] [X300] Radio 1x clock: 200 MHz
>> Using Device: Single USRP:
>> Device: X-Series Device
>> Mboard 0: X300
>> RX Channel: 0
>> RX DSP: 0
>> RX Dboard: A
>> RX Subdev: UBX RX
>> RX Channel: 1
>> RX DSP: 1
>> RX Dboard: B
>> RX Subdev: Unknown (0xffff) - 0
>> TX Channel: 0
>> TX DSP: 0
>> TX Dboard: A
>> TX Subdev: UBX TX
>> TX Channel: 1
>> TX DSP: 1
>> TX Dboard: B
>> TX Subdev: Unknown (0xffff) - 0
>>
>> Setting TX Rate: 5.000000 Msps...
>> Actual TX Rate: 5.000000 Msps...
>>
>> Setting TX Freq: 915.000000 MHz...
>> Setting TX LO Offset: 0.000000 MHz...
>> Actual TX Freq: -1085.000002 MHz...
>>
>> Setting TX Gain: 0.000000 dB...
>> Actual TX Gain: 0.000000 dB...
>>
>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>> Setting device timestamp to 0...
>> Checking TX: TXLO: locked ...
>> Press Ctrl + C to stop streaming...
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000079da3b061111ab03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">But it should. This is basic functionality that is comple=
tely broken. The commit to fix it is simple.=C2=A0</div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 9, 2024 =
at 10:06=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">=
<u></u>

 =20
   =20
 =20
  <div>
    <div>On 09/02/2024 09:07, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">This is fixed in 4.5 and 4.6.=C2=A0 Are you able to
        switch?
        <div>Rob</div>
      </div>
    </blockquote>
    I&#39;ll add that it&#39;s unlikely for the fix to get back-ported to 4=
.4 at
    this point.</div><div><br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 9, 2024 at 5:04=
=E2=80=AFAM
          &lt;<a href=3D"mailto:speik@hs-bremen.de" target=3D"_blank">speik=
@hs-bremen.de</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left=
-color:rgb(204,204,204)">
          <p>Hi,</p>
          <p>I am facing the same problem.</p>
          <p>I am on a Linux machine and hardware is an X300 with a
            UBX160.</p>
          <p>When I am above 500 MHz the actual carrier freq becomes
            about 2000 MHz smaller. </p>
          <p>I checked it with the uhd example script=C2=A0 tx_waveforms th=
at
            comes with the uhd install. Below is the output. Note that
            actual frequency is negative. There is no output at 915 MHz
            on a spectrum analyzer. Below 500 MHz everything is fine.</p>
          <p>Same happens when using Gnuradio. </p>
          <p>=C2=A0Thanks</p>
          <p>Soren</p>
          <p>=C2=A0</p>
          <div>
            <hr></div>
          <p>$ ./tx_waveforms --freq 915e6 --rate 5e6 --gain 0</p>
          <p>Creating the usrp device with: ...<br>
            [INFO] [UHD] linux; GNU C++ version 13.1.0; Boost_107400;
            UHD_4.4.0.0+ds1-4<br>
            [INFO] [X300] X300 initialization sequence...<br>
            [INFO] [X300] Maximum frame size: 1472 bytes.<br>
            [INFO] [X300] Radio 1x clock: 200 MHz<br>
            Using Device: Single USRP:<br>
            Device: X-Series Device<br>
            Mboard 0: X300<br>
            RX Channel: 0<br>
            RX DSP: 0<br>
            RX Dboard: A<br>
            RX Subdev: UBX RX<br>
            RX Channel: 1<br>
            RX DSP: 1<br>
            RX Dboard: B<br>
            RX Subdev: Unknown (0xffff) - 0<br>
            TX Channel: 0<br>
            TX DSP: 0<br>
            TX Dboard: A<br>
            TX Subdev: UBX TX<br>
            TX Channel: 1<br>
            TX DSP: 1<br>
            TX Dboard: B<br>
            TX Subdev: Unknown (0xffff) - 0</p>
          <p>Setting TX Rate: 5.000000 Msps...<br>
            Actual TX Rate: 5.000000 Msps...</p>
          <p>Setting TX Freq: 915.000000 MHz...<br>
            Setting TX LO Offset: 0.000000 MHz...<br>
            Actual TX Freq: -1085.000002 MHz...</p>
          <p>Setting TX Gain: 0.000000 dB...<br>
            Actual TX Gain: 0.000000 dB...</p>
          <p>[WARNING] [0/Radio#0] Attempting to set tick rate to 0.
            Skipping.<br>
            Setting device timestamp to 0...<br>
            Checking TX: TXLO: locked ...<br>
            Press Ctrl + C to stop streaming...</p>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre style=3D"font-family:monospace">________________________________=
_______________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" style=3D"font-family:monospace">usrp-users@lists.ettus.com<=
/a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" style=3D"font-family:monospace">usrp-users-leave=
@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000079da3b061111ab03--

--===============7092131711095493002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7092131711095493002==--
