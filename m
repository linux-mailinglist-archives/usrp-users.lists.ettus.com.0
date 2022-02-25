Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1599E4C4918
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 16:34:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 50D593850AE
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 10:34:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HfVLQyAX";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D3F83847D6
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 10:33:45 -0500 (EST)
Received: by mail-qk1-f169.google.com with SMTP id v5so4758114qkj.4
        for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 07:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=pQHlX66KaEdbythn2NVkOUaUER8utcRnNgZ8TUddfAs=;
        b=HfVLQyAXK5aUfMa9rxwXyuP2JhVkNDOEehoJkVMx1VfgynPJTKhg1sKvvixYfaVkuL
         PdyTEF4MKe/VDLqWZbi91OqPTLWsH44WrqJivle8/W7M9SlitlBrIb0pU6G4rMLqIC+e
         0KqUODfeYXgKirg6fWSAzqCqv0EB+N+TxQMaVsijiu5RRESVW5UbgHdNeYbyLs5L/a8t
         g3lKYxdkYzrD4qDgITM6OD1x1hNoVk5S678GDbf3kM+VJtWLgdaibEjdBKd1thNeSXfw
         UlGjFpf43XnR6NavNJYUxKGAdVFdFrOgoQefEI3iDf0kAxTALq1Yr0qiO6+a/7zIeBm3
         4uzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=pQHlX66KaEdbythn2NVkOUaUER8utcRnNgZ8TUddfAs=;
        b=fae0td00qVvNOk5QndZ6TQKy4lVPC78eFeYp16YjWkxxwzyRjSgN8FKsgowJgcoKbI
         ZEeEwekXp9jhQT+oFB5FdeIUI9DE4YIhWZTXe7AQC27+cciQfuk98JYKiKZe3Zr0WP+H
         yDU8TydHvOdgF35Fudv0Gcf/SQN5X2oFOOykEaByENPTXWaSX0qnyHbmdrOnesYRJTPg
         P+itSnZ1TZbIEP1n8GCnZ4/MxmiOV3YAKGLywx97x6Wlv6+p5MIvmmT+jiUO9zQBTmJX
         eIosz53ZA3XVNcpnusMQ23VK6k9scWQqb48H5GsSgIwr5k7B8a2ndjFVeBXO7yllfXuB
         JQnA==
X-Gm-Message-State: AOAM533+p3pIFOMEicnz2vHtJAM7YJtxyeczBviQVxA3wDz1hj824E3R
	DWHlf4mlK8j4uc+mPBR/f54=
X-Google-Smtp-Source: ABdhPJxjaNfwwsegiew7bCP1qPI9/hDaQZnJ2CviTekGz46HLbcnjJIJZnSZGVOv3NiFMHLSFNjkgw==
X-Received: by 2002:a37:a8c1:0:b0:4f8:b031:450 with SMTP id r184-20020a37a8c1000000b004f8b0310450mr5184304qke.334.1645803225376;
        Fri, 25 Feb 2022 07:33:45 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v14-20020a05622a014e00b002cf75f5b11esm1570169qtw.64.2022.02.25.07.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 07:33:44 -0800 (PST)
Message-ID: <96c0f91a-981b-9a3b-2a24-ce1559167dac@gmail.com>
Date: Fri, 25 Feb 2022 10:33:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Brian Padalino <bpadalino@gmail.com>
References: <PH1P110MB16650FA41146FF675795EAFDB73E9@PH1P110MB1665.NAMP110.PROD.OUTLOOK.COM>
 <945ac0f4-1724-3472-84cd-1be23fb5c50f@gmail.com>
 <CAEXYVK5y2S3WRhFwVN2pqRcL8usB1iQii9NiWU4SyO-O8xFhfg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAEXYVK5y2S3WRhFwVN2pqRcL8usB1iQii9NiWU4SyO-O8xFhfg@mail.gmail.com>
Message-ID-Hash: WK4CR5UA46VPDEUZFI2TCATFUVV2BNZL
X-Message-ID-Hash: WK4CR5UA46VPDEUZFI2TCATFUVV2BNZL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about external refclk into N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WK4CR5UA46VPDEUZFI2TCATFUVV2BNZL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2154149754855130386=="

This is a multi-part message in MIME format.
--===============2154149754855130386==
Content-Type: multipart/alternative;
 boundary="------------j1FD4pATuVpeFvOO02pIblfy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------j1FD4pATuVpeFvOO02pIblfy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-25 10:23, Brian Padalino wrote:
> On Fri, Feb 25, 2022 at 10:22 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2022-02-25 10:17, David Raeman wrote:
>>
>>     Hi all, I=E2=80=99d like to provide an external 10MHz sinusoidal c=
lock to
>>     an N320.=C2=A0 The clock signal level is below the 10dBm max spec =
for
>>     this radio, however it=E2=80=99s a bipolar sinewave (1.8Vpp, cente=
red at
>>     0V). I think this is somewhat common for sinewave oscillators.
>>     The N320 documentation isn=E2=80=99t clear on whether this is acce=
ptable,
>>     or whether the external clock must have a DC bias even if its
>>     sinewave. Looking at the schematic, the clock feeds into a TI
>>     CDC3RL02, which seems to indicate the sinusoid must have DC
>>     offset applied to keep it above ~0.3V. Can somebody please confirm=
?
>>
>>     Thanks!
>>
>>
>     It seems likely that you'll need that DC offset to keep the TI
>     chip happy.
>
>
> C2000 in the schematic=20
> (https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf) AC=20
> couples your signal so it's biased by the N320.=C2=A0 I think you shoul=
d be=20
> fine.
>
> Brian
Thanks, Brian.=C2=A0 I missed that in my perusal of the schematic.=C2=A0 =
I don't=20
have an N32x/N320 myself to test this.

That series cap will *remove* any DC bias, I would think.=C2=A0 So, somew=
hat=20
intriguing.


--------------j1FD4pATuVpeFvOO02pIblfy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-25 10:23, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK5y2S3WRhFwVN2pqRcL8usB1iQii9NiWU4SyO-O8xFhfg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Fri, Feb 25, 2022 at 10:22 AM Marcus D. Leech
          &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <div>On 2022-02-25 10:17, David Raeman wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div>
                  <p class=3D"MsoNormal">Hi all, I=E2=80=99d like to prov=
ide an
                    external 10MHz sinusoidal clock to an N320.=C2=A0 The
                    clock signal level is below the 10dBm max spec for
                    this radio, however it=E2=80=99s a bipolar sinewave (=
1.8Vpp,
                    centered at 0V). I think this is somewhat common for
                    sinewave oscillators. The N320 documentation isn=E2=80=
=99t
                    clear on whether this is acceptable, or whether the
                    external clock must have a DC bias even if its
                    sinewave. Looking at the schematic, the clock feeds
                    into a TI CDC3RL02, which seems to indicate the
                    sinusoid must have DC offset applied to keep it
                    above ~0.3V. Can somebody please confirm?</p>
                  <p class=3D"MsoNormal">=C2=A0</p>
                  <p class=3D"MsoNormal">Thanks!</p>
                  <p class=3D"MsoNormal">=C2=A0</p>
                  <br>
                </div>
              </blockquote>
              It seems likely that you'll need that DC offset to keep
              the TI chip happy.=C2=A0</div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div>C2000 in the schematic (<a
                href=3D"https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Sch=
ematic.pdf"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://kb.ettus.com/images/f/f4/USRP_N3XX_MB_Schematic.pdf</a>)
              AC couples your signal so it's biased by the N320.=C2=A0 I
              think you should be fine.</div>
            <div><br>
            </div>
            <div>Brian</div>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks, Brian.=C2=A0 I missed that in my perusal of the schematic.=C2=
=A0 I
    don't have an N32x/N320 myself to test this.<br>
    <br>
    That series cap will *remove* any DC bias, I would think.=C2=A0 So,
    somewhat intriguing.=C2=A0=C2=A0 <br>
    <br>
    <br>
  </body>
</html>

--------------j1FD4pATuVpeFvOO02pIblfy--

--===============2154149754855130386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2154149754855130386==--
