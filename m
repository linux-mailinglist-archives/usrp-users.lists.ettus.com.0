Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7984C48BF
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 16:24:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1359C385107
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 10:24:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UzFcyfdb";
	dkim-atps=neutral
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F25838459C
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 10:24:00 -0500 (EST)
Received: by mail-pf1-f171.google.com with SMTP id y11so4964932pfa.6
        for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 07:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rGM2pd+cyQ3DIj0T2c/UKvaPMW4sczpJ22gXoINrHYY=;
        b=UzFcyfdbQuoeQ46VYA0fkkkbbadKdxxWvwbiyYD4b06OHC7+HhHmA4lmE4mmwFdgB5
         KvpsH6avm0GwX0QU8G2ls4cu31mJvhcBnK+mgY94yvvcBnA6+jhTzc8oLTdtzf/Kd7Az
         IkfTrfcYcxE/6TfrIAspD4/KUpciHKeocRgEiOnKPRB6Wpfd4XBq3AfkDH2aaKCRQPXh
         H/PR6gsXe6AQzwRKspyx+xLtq0dmXdkv2C1LG1gjeCvl0D9FQE+Rm/pl7wvfhqahEU2B
         84PHLMqV5vaYSlmvejDBThAwX8b7xI842PErQJIXbNlnWHQlU9lDXNB3IlKeuYz0TqfW
         XKuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rGM2pd+cyQ3DIj0T2c/UKvaPMW4sczpJ22gXoINrHYY=;
        b=jm2P4SMwRSO9Fvx70Kh8BGzwrK4h8DwCtK6m+o8rcTNY5lLzBHBrfcBTei04eWOp8F
         cp3fcV26RJjGOAzo/2ii8qKlzwnNAHr0eTLLdrUM925Hp5FbYZAZa3lwCiFAqa8BLtwg
         k8AhX+0JeX5k3iv0O9YEpBDKwNFE++eFjbmCw2IgiNGSPebGYX0iX/9rLSeQ9tRp5J6t
         zBeuqZ1Y2seGQUkTWmAIlKKC4qB33YRRRRAfwLaBFEs4KaG2F2qkcrBVEmvPJRiEmOhI
         ymC0GW7sNA4A29hQ+DGKWIM2ajCvP2NsqvAWbMsroTBdZBu4hWOVdkIcrCF9saXOkW99
         pFrw==
X-Gm-Message-State: AOAM533Tk5GXTgYT4PlT/7dV6up7EDrL2een2nw0uktOai1OqCamXvIQ
	JZ7VT4N+fKXGdH7vrD7nS8XeBBoGHCIjgs3iEkRnBMSvjjo=
X-Google-Smtp-Source: ABdhPJyA6aBcaso778f/XfCXH3UlU33HYyjKYUS5tyxcfmXWC3qEAuxJZczk7g+rrxj7Fx837JVHcQ+4Uuc4xDyd6r8=
X-Received: by 2002:a63:1456:0:b0:373:c08c:124d with SMTP id
 22-20020a631456000000b00373c08c124dmr6616518pgu.363.1645802639397; Fri, 25
 Feb 2022 07:23:59 -0800 (PST)
MIME-Version: 1.0
References: <PH1P110MB16650FA41146FF675795EAFDB73E9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
 <945ac0f4-1724-3472-84cd-1be23fb5c50f@gmail.com>
In-Reply-To: <945ac0f4-1724-3472-84cd-1be23fb5c50f@gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 25 Feb 2022 10:23:48 -0500
Message-ID: <CAEXYVK5y2S3WRhFwVN2pqRcL8usB1iQii9NiWU4SyO-O8xFhfg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6FXG6R5LWM4Z66SFA6N75XUHFH2SXMVA
X-Message-ID-Hash: 6FXG6R5LWM4Z66SFA6N75XUHFH2SXMVA
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about external refclk into N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6FXG6R5LWM4Z66SFA6N75XUHFH2SXMVA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6059518459149102876=="

--===============6059518459149102876==
Content-Type: multipart/alternative; boundary="000000000000b11a2805d8d9492d"

--000000000000b11a2805d8d9492d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 25, 2022 at 10:22 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-02-25 10:17, David Raeman wrote:
>
> Hi all, I=E2=80=99d like to provide an external 10MHz sinusoidal clock to=
 an
> N320.  The clock signal level is below the 10dBm max spec for this radio,
> however it=E2=80=99s a bipolar sinewave (1.8Vpp, centered at 0V). I think=
 this is
> somewhat common for sinewave oscillators. The N320 documentation isn=E2=
=80=99t
> clear on whether this is acceptable, or whether the external clock must
> have a DC bias even if its sinewave. Looking at the schematic, the clock
> feeds into a TI CDC3RL02, which seems to indicate the sinusoid must have =
DC
> offset applied to keep it above ~0.3V. Can somebody please confirm?
>
>
>
> Thanks!
>
>
>
> It seems likely that you'll need that DC offset to keep the TI chip happy=
.
>

C2000 in the schematic (
https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf) AC couples
your signal so it's biased by the N320.  I think you should be fine.

Brian

--000000000000b11a2805d8d9492d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 25, 2022 at 10:22 AM Marcus D=
. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.=
com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-02-25 10:17, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Hi all, I=E2=80=99d like to provide an exter=
nal
          10MHz sinusoidal clock to an N320.=C2=A0 The clock signal level i=
s
          below the 10dBm max spec for this radio, however it=E2=80=99s a
          bipolar sinewave (1.8Vpp, centered at 0V). I think this is
          somewhat common for sinewave oscillators. The N320
          documentation isn=E2=80=99t clear on whether this is acceptable, =
or
          whether the external clock must have a DC bias even if its
          sinewave. Looking at the schematic, the clock feeds into a TI
          CDC3RL02, which seems to indicate the sinusoid must have DC
          offset applied to keep it above ~0.3V. Can somebody please
          confirm?<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Thanks!<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <br>
      </div>
    </blockquote>
    It seems likely that you&#39;ll need that DC offset to keep the TI chip
    happy.=C2=A0</div></blockquote><div><br></div><div><div>C2000 in the sc=
hematic (<a href=3D"https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic=
.pdf">https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf</a>) AC c=
ouples your signal so it&#39;s biased by the N320.=C2=A0 I think you should=
 be fine.</div><div><br></div><div>Brian</div></div></div></div>

--000000000000b11a2805d8d9492d--

--===============6059518459149102876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6059518459149102876==--
