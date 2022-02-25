Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8CF4C4925
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 16:37:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29D4B38519D
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 10:37:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O+dtWitw";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id AEACB384FA0
	for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 10:36:33 -0500 (EST)
Received: by mail-qv1-f46.google.com with SMTP id j5so6871004qvs.13
        for <usrp-users@lists.ettus.com>; Fri, 25 Feb 2022 07:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=tHaZFe6JJHVs/dQYtbQ+WLwa0uZv0pPeRkhmaTyGE6g=;
        b=O+dtWitwwL6Ki4go0C2TxHCmL+OSz0TYdpY23bV0XNQ2AcrcEtPntPTZLWQ/50g1U0
         ounCmVNw+xXUSDCUaP3Y9IJiQERGDc+2masVPx8yH1ma+iD4g4HcNZdlVILsclyNe2gg
         DPr3hepNLPBxio6TnqU+hNln6SeeJB9YH83G3SjropM9RPpVwAkoDdNVNAtIsSnysbFg
         eWGqF2OYglyeB/m9E20cErtxwVEW8zbkn4yhE+tkCOnL97hGpPEOl6xOuiL8doqH1Y+Q
         il8hFgVquQoTXV0PIjUz5W0t1IzPYtlxlHJptMuAQiHl3g7m4ZwZuxXnY37mbYqhC0zh
         3H3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=tHaZFe6JJHVs/dQYtbQ+WLwa0uZv0pPeRkhmaTyGE6g=;
        b=nRIfIDxYKUxtBxoX6Ohp5n98rUuYJN8ewxf0IvxHsFNzAA95DEuJx+6DsQcaMOx71y
         lM9YGCvaqVPa8XBmeh+sP1M4lSL1v3p53n90zaBHnfBrwr1nH2Ks6I6Y6yEjNBMboJrZ
         uHoodz5SWWBHED7OZl5gVs4ug1MrI+fp26PIure7YyDHz2AMBTbk5rRj9LHExpN/4QbX
         pXBRSqXWJbhhmtca5GsApjkGaplSZkLoXD4Xys8nssi3y+CKFxpS+fv36nqRRTZyZvRc
         53PkkswWhbaKlpkd/h03BO2E164w8cXz7Aj0zjpE12hwfE2KbbmpB6JIYs1Q3mqAuJzb
         t4tA==
X-Gm-Message-State: AOAM533990D4RccpNJwtd4NzaNIHVRutphMwtmPCsN5MNWQXV2xcwhKr
	8tRViAVEzLuOaTrAVdq0Tc4=
X-Google-Smtp-Source: ABdhPJxfGW7l5E7xLw7VJmIQbxjOqS5xNysZh6283yFA7yLhmqd+9jY8iCUNzViP4Ovf7ZqYzoCC9A==
X-Received: by 2002:a05:6214:2461:b0:42b:e935:df9a with SMTP id im1-20020a056214246100b0042be935df9amr6428358qvb.21.1645803393125;
        Fri, 25 Feb 2022 07:36:33 -0800 (PST)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id w20-20020a05622a135400b002dd9806d532sm1626393qtk.54.2022.02.25.07.36.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 07:36:32 -0800 (PST)
Message-ID: <233132a2-d66e-c023-f1cd-41891e01df23@gmail.com>
Date: Fri, 25 Feb 2022 10:36:32 -0500
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
Message-ID-Hash: ISJTSWAOQYPIHQMZTT5L2HQBYI4HRZMZ
X-Message-ID-Hash: ISJTSWAOQYPIHQMZTT5L2HQBYI4HRZMZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question about external refclk into N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ISJTSWAOQYPIHQMZTT5L2HQBYI4HRZMZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3359642316020229464=="

This is a multi-part message in MIME format.
--===============3359642316020229464==
Content-Type: multipart/alternative;
 boundary="------------BzfbEq09SWyWUU63KazLkDcW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BzfbEq09SWyWUU63KazLkDcW
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
There's also D2 which is designed to clip incoming signals into range=20
for the TI chip.
--------------BzfbEq09SWyWUU63KazLkDcW
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
    There's also D2 which is designed to clip incoming signals into
    range for the TI chip.<br>
  </body>
</html>

--------------BzfbEq09SWyWUU63KazLkDcW--

--===============3359642316020229464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3359642316020229464==--
