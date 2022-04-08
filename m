Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D34824F97F2
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 16:23:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8D983851D4
	for <lists+usrp-users@lfdr.de>; Fri,  8 Apr 2022 10:23:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649427799; bh=Xlh86spELWDxDZGNB0pCraDnB0chiDFgbGPvfKdw518=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rHBHL1NSiwaLz2k/k7b6uy+BFayulV8tBu0VokC3Rj8Y+YrURtHulWcrjyKBuLj/Q
	 1xSqa9LDbdKoadQcANmaf2git+CGNW5U06c55aHT2jByyfaoIl+X3SEAuMayFQ9brF
	 tv75Pu81onB5KYkR+mAZmwJeI2NXelTKQoCBKO15gZO9O2oCx3M/oOcdIGln0/kma+
	 m0qOJzEpQK+3rlTOhs00QKp/SizS7jSIrgKXbVR75IwqvS1R56zKZKO3iYDe9oRl5o
	 tk+wEJycE7KBZ9YxHkncnOOVW2poCce6ZcbSv46Toa/SZT1lEJORwcCCBcaln+hOIo
	 YHPz4bc04Dzew==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 81889385084
	for <usrp-users@lists.ettus.com>; Fri,  8 Apr 2022 10:22:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CV34esiu";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id j21so10871867qta.0
        for <usrp-users@lists.ettus.com>; Fri, 08 Apr 2022 07:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=fjlwiGT8hlsh4rK6zR6MlsdehCWEUqkXHAB0BYXLFko=;
        b=CV34esiueyC8drBw5UQV8uWSwQerpe0s4eEygt5CuAOiAJRMHzn51wg+jNBBCdw+L3
         anV6hptm5k+L/tDZC9lEz5GdXaX7juB0JOkKbe0+8JvWoCcOCbmeyvxYZLwMN0OEqKAT
         dcOU3omR5/4o+mQ2BXZCAHCiaKzACxTS06rd7tyZmcdN0feD3KlL+aL+TQdasBJhq0eM
         Vgil7WSWCp2DDPg6ya+X21KS3EmTwxX+ImmweWHuQp3nZXWgxdL4OtWfmll0StMrdeLX
         7vit3/sMuR/BXZe+EqLuslInFAMpZz6XPczlSvmorcMCDI2R43ivJZtYBZ5yz0dapJ1y
         AKQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=fjlwiGT8hlsh4rK6zR6MlsdehCWEUqkXHAB0BYXLFko=;
        b=NtI9O5n4YaytyBwYgsuCprA5PvGc8HF8OlB0nYjgaNoBZt3l3UGxNcWc0Mo0ND0fc7
         mBqAFALw40DN5HtTs8k0GZwtKX6rfblny1Yuuu2IUKaS3eLqIDkqMnZM/uxgTjpED5/a
         PPuYKAp6v1w4d6Ys8bpF4Arnu6XUQB6NtNQRZS4g2EpMtovAVvkqWZ9dNDBfnhrtC+VK
         7U8KHxkSjRrr/X0nnrDl6cpRazxIe8J4hu5kk+MXjzAQjPMHBzLub5EnKYyUFW9O2tga
         RQmRFfMO7Enk3t7BJYTnogeLXnueLbMM13wo+Ni3hrFIuPvjxL1eqTN0RZN2nQS0ncU+
         nSjQ==
X-Gm-Message-State: AOAM531sUAZiHLcPaLSb85YU3ye2F9DzCx2/iJekis7lMzFUKRf2mSlq
	LJMyaRxg8tcT7GqOE5GNIt/w2p3672w=
X-Google-Smtp-Source: ABdhPJxqidQDB4WrwCaJYfGd3i/kE/DzvzznpPlLEq9nXpx6JLSVuH0dXSbPLMmgLoINmq29V8DCVw==
X-Received: by 2002:ac8:5c4e:0:b0:2e2:104f:7257 with SMTP id j14-20020ac85c4e000000b002e2104f7257mr16120733qtj.544.1649427735532;
        Fri, 08 Apr 2022 07:22:15 -0700 (PDT)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id p13-20020a05622a048d00b002e1ce0c627csm18923262qtx.58.2022.04.08.07.22.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Apr 2022 07:22:15 -0700 (PDT)
Message-ID: <d9c10d82-d370-4834-7b5f-ccd7968fde10@gmail.com>
Date: Fri, 8 Apr 2022 10:22:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99@AS4P250MB0799.EURP250.PROD.OUTLOOK.COM>
Message-ID-Hash: 5DJXCP436K36MZ6RRQCGN6VPAM5UNOWN
X-Message-ID-Hash: 5DJXCP436K36MZ6RRQCGN6VPAM5UNOWN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [x410] Frequency Selectivity?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5DJXCP436K36MZ6RRQCGN6VPAM5UNOWN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2549945546902474916=="

This is a multi-part message in MIME format.
--===============2549945546902474916==
Content-Type: multipart/alternative;
 boundary="------------xkH96iil1c9WKohMEHSvECm7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xkH96iil1c9WKohMEHSvECm7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-04-08 09:56, Tobias Kronauer wrote:
> Hi all,
>
> we use a X410 and send 60k samples via localhost. We increase the=20
> frequency within the frame every 6k samples. We observe a frequency=20
> selectivity of the USRP. Can you help us on that? In the attachment=20
> [0], you can find the MWE (we tried to keep it as small as possible).=20
> Let us explain the problem in the following plot:
>
>
> In the left column, you can find the transmitted signal, in the right=20
> column the received signal. In the lower row, you see the spectrogram.=20
> One can clearly see that the signal gets attenuated, depending on the=20
> frequency. One would expect the amplitude to remain constant.
>
> The transmitted signal changes every 6k signal its frequency. Within=20
> these 6k samples, we simply send complex exponentials. The frequencies=20
> are: [-25, -19.44 -13.9, =C2=A0-8.3, - 2.78 =C2=A0 2.78 =C2=A0 8.3 =C2=A0=
13.9, 19.4 =C2=A025].
> Rf config:
> ```cpp
> =C2=A0 =C2=A0 =C2=A0const double FS =3D 50e6;
> =C2=A0 =C2=A0 Config conf;
> =C2=A0 =C2=A0 conf.txAnalogFilterBw =3D 400e6;
> =C2=A0 =C2=A0 conf.rxAnalogFilterBw =3D 400e6;
> =C2=A0 =C2=A0 conf.txGain =3D 35;
> =C2=A0 =C2=A0 conf.rxGain =3D 35;
> =C2=A0 =C2=A0 conf.txCarrierFrequency =3D 2e9;
> =C2=A0 =C2=A0 conf.rxCarrierFrequency =3D 2e9;
> =C2=A0 =C2=A0 conf.txSamplingRate =3D FS;
> =C2=A0 =C2=A0 conf.rxSamplingRate =3D FS;
> ```
> For different RfConfigs, the results are less distinct.
>
> Kind regards,
>
> Tobias
>
> Attachments:
>
> [0]: usrp_mwe.cpp
>
>
Your plots aren't particularly clear in what they're showing, neither is=20
your problem description.=C2=A0 Is your list of "frequencies" in terms of=
 the=20
baseband?=C2=A0 In Hz?=C2=A0 Khz?=C2=A0 MHz?

ANY radio receiver (or transmitter) will have a passband response that=20
is dependent on the analog passband response of the various components=20
in the system.=C2=A0 With
 =C2=A0 a DSP radio the passband response is conceptually the convolution=
 of=20
the=C2=A0 analog and digital responses.=C2=A0 The passband for any SDR wi=
ll=20
exhibit roll-off at the edges
 =C2=A0 of your passband--that roll-off CANNOT be infinitely steep withou=
t=20
the filters also being infinitely long.

I don't have an X410, so I don't know what the passband *should* look=20
like, but I imagine that there are both edge roll-off effects and the=20
passband is not
 =C2=A0 perfectly "flat".

If you inject a laboratory noise source into the receiver, and just look=20
at the spectrum integrated over a few seconds, you will see the=20
pass-band response of the
 =C2=A0 radio at the desired frequency, at the desired sample-rate.


--------------xkH96iil1c9WKohMEHSvECm7
Content-Type: multipart/related;
 boundary="------------ceekB4eoX0iH5mKNwYLn8a1f"

--------------ceekB4eoX0iH5mKNwYLn8a1f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-08 09:56, Tobias Kronauer
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:AS4P250MB07996EB3B5E9CFB8EFBD4D969BE99@AS4P250MB0799.EURP250.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hi all,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <div><br>
        </div>
        <div>we use a X410 and send 60k samples via localhost. We
          increase the frequency within the frame every 6k samples. We
          observe a frequency selectivity of the USRP. Can you help us
          on that? In the attachment [0], you can find the MWE (we tried
          to keep it as small as possible). Let us explain the problem
          in the following plot:</div>
        <div><br>
        </div>
        <div><img style=3D"max-width: 100%;" class=3D"w-836 h-964"
            size=3D"39830" contenttype=3D"image/png"
            data-outlook-trace=3D"F:1|T:1"
            src=3D"cid:part1.FyWuFAmC.eHWa603R@gmail.com"><br>
        </div>
        <div>In the left column, you can find the transmitted signal, in
          the right column the received signal. In the lower row, you
          see the spectrogram. One can clearly see that the signal gets
          attenuated, depending on the frequency. One would expect the
          amplitude to remain constant.</div>
        <div><br>
        </div>
        <div>The transmitted signal changes every 6k signal its
          frequency. Within these 6k samples, we simply send complex
          exponentials. The frequencies are: [-25, -19.44 -13.9, =C2=A0-8=
.3,
          - 2.78 =C2=A0 2.78 =C2=A0 8.3 =C2=A013.9, 19.4 =C2=A025].</div>
        <div>Rf config:</div>
        <div>```cpp</div>
        <div>=C2=A0 =C2=A0 =C2=A0const double FS =3D 50e6; </div>
        <div>=C2=A0 =C2=A0 Config conf;</div>
        <div>=C2=A0 =C2=A0 conf.txAnalogFilterBw =3D 400e6;</div>
        <div>=C2=A0 =C2=A0 conf.rxAnalogFilterBw =3D 400e6;</div>
        <div>=C2=A0 =C2=A0 conf.txGain =3D 35;</div>
        <div>=C2=A0 =C2=A0 conf.rxGain =3D 35;</div>
        <div>=C2=A0 =C2=A0 conf.txCarrierFrequency =3D 2e9;</div>
        <div>=C2=A0 =C2=A0 conf.rxCarrierFrequency =3D 2e9;</div>
        <div>=C2=A0 =C2=A0 conf.txSamplingRate =3D FS;</div>
        <div>=C2=A0 =C2=A0 conf.rxSamplingRate =3D FS;</div>
        <div>```</div>
        <div>For different RfConfigs, the results are less distinct.</div=
>
        <div><br>
        </div>
        Kind regards,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Tobias</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Attachments:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        [0]: usrp_mwe.cpp<br>
      </div>
      <div>
        <p style=3D"font-size: 11pt; font-family: Calibri, sans-serif,
          serif, &quot;EmojiFont&quot;; margin: 0px;">
          <br>
        </p>
      </div>
    </blockquote>
    Your plots aren't particularly clear in what they're showing,
    neither is your problem description.=C2=A0 Is your list of "frequenci=
es"
    in terms of the baseband?=C2=A0 In Hz?=C2=A0 Khz?=C2=A0 MHz?<br>
    <br>
    ANY radio receiver (or transmitter) will have a passband response
    that is dependent on the analog passband response of the various
    components in the system.=C2=A0 With<br>
    =C2=A0 a DSP radio the passband response is conceptually the convolut=
ion
    of the=C2=A0 analog and digital responses.=C2=A0 The passband for any=
 SDR will
    exhibit roll-off at the edges<br>
    =C2=A0 of your passband--that roll-off CANNOT be infinitely steep wit=
hout
    the filters also being infinitely long.<br>
    <br>
    I don't have an X410, so I don't know what the passband *should*
    look like, but I imagine that there are both edge roll-off effects
    and the passband is not<br>
    =C2=A0 perfectly "flat".<br>
    <br>
    If you inject a laboratory noise source into the receiver, and just
    look at the spectrum integrated over a few seconds, you will see the
    pass-band response of the<br>
    =C2=A0 radio at the desired frequency, at the desired sample-rate.<br=
>
    <br>
    <br>
  </body>
</html>
--------------ceekB4eoX0iH5mKNwYLn8a1f
Content-Type: image/png; name="frequency_selectivity.png"
Content-Disposition: inline; filename="frequency_selectivity.png"
Content-Id: <part1.FyWuFAmC.eHWa603R@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAA0QAAAPECAYAAACOqfv2AAAAOXRFWHRTb2Z0d2FyZQBNYXRw
bG90bGliIHZlcnNpb24zLjUuMSwgaHR0cHM6Ly9tYXRwbG90bGliLm9yZy/YYfK9AAAACXBI
WXMAAA9hAAAPYQGoP6dpAACbA0lEQVR4nOzdd3hUVeL/8c+dlEkoSUBSCAZCU0SagsSgCC5Z
grIqVnBRyiKsBXcxNthV6mpEsayKYqHoT10sK/YvihRrBAFZARFRQRRIQk0gSNqc3x+YMUMK
SUim3ffreeYhc++595xJmJN85p5zrmWMMQIAAAAAG3L4ugEAAAAA4CsEIgAAAAC2RSACAAAA
YFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2
RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsE
IgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSAC
AAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAA
AAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAA
YFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2
RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsE
IgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSAC
AAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAA
AAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAA
YFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2
RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsEIgAAAAC2RSACAAAAYFsE
IgAAAAC2RSACAAAAYFsEIgAAAAC2RSACcMK2bdsmy7K0YMECXzcFAGxpxYoVsixLK1as8HVT
gIBDIALq6PPPP9fUqVN14MABXzcFAAAAdUQgAuro888/17Rp0whEAAAAAYxABAAAgkZBQYGv
mwAgwBCIgDqYOnWqbr/9dklS27ZtZVmWLMvStm3bNH/+fFmWpXnz5nkcc++998qyLL333nvV
nnv16tVKT09XixYtFBkZqbZt2+ovf/mLR5lZs2apT58+OumkkxQZGamePXvqtddeq3Auy7I0
fvx4vfrqq+rcubMiIyOVmpqq9evXS5KeeuopdejQQREREerfv7+2bdvmcXz//v3VpUsXrVmz
Rn369HG3Z86cOTX6Pn377be64oor1Lx5c0VERKhXr1566623PMoUFxdr2rRp6tixoyIiInTS
SSfp3HPP1ZIlS2pUBwD7mjp1qizL0jfffKM///nPatasmc4991xNmTJFDodDS5cu9Sg/btw4
hYeH63//+1+1512yZInOPfdcxcTEqEmTJjr11FP1j3/8w72/qKhIkydPVs+ePRUdHa3GjRur
b9++Wr58ucd5yuZXzpo1S7Nnz1a7du3UqFEjDRw4UD///LOMMZoxY4ZOPvlkRUZG6pJLLtG+
ffs8zpGcnKw//elP+uCDD9SjRw9FRESoc+fOev3112v0PVq5cqUGDRqk6OhoNWrUSP369dNn
n33mUebgwYOaMGGCkpOT5XQ6FRcXpz/+8Y9au3ZtjeoAAp1ljDG+bgQQaL7++mvdd999+s9/
/qOHH35YLVq0kCRdeumlaty4sS666CJ98sknWr9+vZKSkrR+/Xr16tVL1157rZ599tkqz5ub
m6tOnTopNjZWY8eOVUxMjLZt26bXX39d33zzjbtcUlKSLr74YnXu3FlFRUVauHChVq1apXfe
eUeDBw92l7MsS926ddP+/ft10003SZIyMzMVHR2tO+64Q0888YTGjBmj/fv36/7779c555yj
ZcuWuY/v37+/tmzZopKSEl111VU65ZRT9Morr+jTTz/V3Llz3UFt27Ztatu2rebPn69Ro0ZJ
kjZu3KhzzjlHrVq10siRI9W4cWO98sor+uSTT/Tf//5Xl156qSTpn//8pzIzM3Xdddepd+/e
ys/P1+rVq9W9e3fdeeed9fMDAxCUpk6dqmnTpqlz587q2LGj0tPTZYzR2LFjlZKSon379mn9
+vVq2rSp3n//fQ0aNEgzZszQXXfdVeU5N27cqDPPPFPdunXTtddeK6fTqe+//16rVq3SRx99
JEnas2ePunXrpquvvlodO3bUwYMHNXfuXP34449atWqVevToIen3vrFHjx4qKirSddddp337
9un+++/XmWeeqT/84Q9asWKFhg0bpu+//16PPfaYRo0a5fGBWllIyc3N1fXXX6+4uDjNnz9f
Gzdu1OLFi/XHP/5R0tFFFc4//3wtX75c/fv3lyQtW7ZMF1xwgXr27KkrrrhCDodD8+fP17ff
fqtPPvlEvXv3liQNHz5cr732msaPH6/OnTtr7969+vTTTzV06FANHz68AX5ygJ8xAOrkgQce
MJLM1q1bK+zbtWuXad68ufnjH/9oCgsLzRlnnGFat25t8vLyqj3nokWLjCTz5ZdfVlvu8OHD
Hs+LiopMly5dzB/+8AeP7ZKM0+n0aONTTz1lJJmEhASTn5/v3j5p0qQKr6dfv35GknnwwQfd
2woLC02PHj1MXFycKSoqMsYYs3XrViPJzJ8/311uwIABpmvXrubIkSPubS6Xy/Tp08d07NjR
va179+5m8ODB1b5eAKjMlClTjCRz9dVXV9i3fv16Ex4ebq677jqzf/9+06pVK9OrVy9TXFxc
7TkffvhhI8ns3r27yjIlJSWmsLDQY9v+/ftNfHy8+ctf/uLeVtY3xsbGmgMHDri3l/W33bt3
92jP1VdfbcLDwz36zTZt2hhJ5r///a97W15enmnZsqU544wz3NuWL19uJJnly5cbY472tx07
djTp6enG5XK5yx0+fNi0bdvW/PGPf3Rvi46ONjfddFO13xcgmDFkDmgACQkJmj17tpYsWaK+
fftq3bp1mjdvnqKioqo9LiYmRpL0zjvvqLi4uMpykZGR7q/379+vvLw89e3bt9LhDQMGDFBy
crL7eUpKiiTp8ssvV9OmTSts//HHHz2ODw0N1V//+lf38/DwcP31r39Vbm6u1qxZU2n79u3b
p2XLlumqq67SwYMHtWfPHu3Zs0d79+5Venq6tmzZoh07drhf88aNG7Vly5YqXy8AVOf666+v
sK1Lly6aNm2ann32WaWnp2vPnj167rnnFBoaWu25yvrhN998Uy6Xq9IyISEhCg8PlyS5XC7t
27dPJSUl6tWrV6X98JVXXqno6Gj387L+9pprrvFoT0pKioqKitz9Y5nExET3VXVJioqK0ogR
I/TVV18pOzu70jauW7dOW7Zs0Z///Gft3bvX3Q8XFBRowIAB+vjjj92vLyYmRitXrtTOnTur
/d4AwYpABDSQYcOGafDgwVq1apXGjh2rAQMGHPeYfv366fLLL9e0adPUokULXXLJJZo/f74K
Cws9yr3zzjs6++yzFRERoebNmys2NlZPPvmk8vLyKpyzdevWHs/LfiknJSVVun3//v0e2xMT
E9W4cWOPbaeccookVZhzVOb777+XMUZ33323YmNjPR5TpkyRdHR4oCRNnz5dBw4c0CmnnKKu
Xbvq9ttv19dff13l9wgAjtW2bdtKt99+++3q3r27Vq1apSlTpqhz587HPdfQoUN1zjnn6Lrr
rlN8fLyGDRumV155pUI4eu6559StWzf33MfY2Fi9++67DdIPd+jQQZZleWw7Xj9c9iHTyJEj
K/TDzz77rAoLC91tvf/++7VhwwYlJSWpd+/emjp1aoUPx4BgVv3HJADqbO/evVq9erUk6Ztv
vpHL5ZLDUf1nEJZl6bXXXtMXX3yht99+W++//77+8pe/6MEHH9QXX3yhJk2a6JNPPtHFF1+s
8847T0888YRatmypsLAwzZ8/Xy+99FKFc4aEhFRaV1XbTT1MKyz7w+G2225Tenp6pWU6dOgg
STrvvPP0ww8/6M0339QHH3ygZ599Vg8//LDmzJmj66677oTbAiD4lb9qXt6PP/7oDgZli8nU
5Fwff/yxli9frnfffVeLFy/Wyy+/rD/84Q/64IMPFBISohdeeEGjRo3SkCFDdPvttysuLk4h
ISHKzMzUDz/8UOGcvuyHH3jgAfecpmM1adJEknTVVVepb9++WrRokT744AM98MADmjlzpl5/
/XVdcMEFJ9wWwN8RiIA6OvbTumPddNNNOnjwoDIzMzVp0iQ98sgjysjIqNG5zz77bJ199tm6
55579NJLL2n48OFauHChrrvuOv33v/9VRESE3n//fTmdTvcx8+fPP6HXU5WdO3eqoKDA4yrR
d999J0keQ/HKa9eunSQpLCxMaWlpx62jefPmGj16tEaPHq1Dhw7pvPPO09SpUwlEAOrM5XJp
1KhRioqK0oQJE3Tvvffqiiuu0GWXXXbcYx0OhwYMGKABAwbooYce0r333qt//vOfWr58udLS
0vTaa6+pXbt2ev311z1+F5RdAa9vZVfdy9d1vH64ffv2ko4Or6tJP9yyZUvdeOONuvHGG5Wb
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
er7EMySHQ4pJPvovfIZABABAfXrvtqP/bv1YeuxMz30/Lvd+ewDU3f+7tPbHrJ7r+Tzr8er3
S9LEn4+GKvgEcRQAAADwpUO5vm6BrRGIAAAAAF+yLF+3wNYIRAAAAIAvEYh8ikAEAAAA+JLF
n+S+xHc/yLDIKwAAQICxQnzdAlsjEJUze/ZsJScnKyIiQikpKVq1alW15V999VV16tRJERER
6tq1q9577z2P/cYYTZ48WS1btlRkZKTS0tK0ZcuWhnwJABDU6rufBgC/wBUin+K7/5uXX35Z
GRkZmjJlitauXavu3bsrPT1dubmVr/rx+eef6+qrr9aYMWP01VdfaciQIRoyZIg2bNjgLnP/
/ffr0Ucf1Zw5c7Ry5Uo1btxY6enpOnLkiLdeFgAEjYbopwHALzi4QuRLljHcSluSUlJSdNZZ
Z+nxx4+uFe9yuZSUlKSbb75ZEydOrFB+6NChKigo0DvvvOPedvbZZ6tHjx6aM2eOjDFKTEzU
rbfeqttuO3pPiry8PMXHx2vBggUaNmxYjdqVn5+v6Oho5eXlKSrq+OvT5+QfUcq9S2t07hO1
LeLPXqkHsKvkIy95ra5t9w2ucdna9kv1pb776Zqo02udGl2zcgDwG3PbFllN4mpU1ld9cDDj
xqySioqKtGbNGk2aNMm9zeFwKC0tTVlZWZUek5WVpYyMDI9t6enpeuONNyRJW7duVXZ2ttLS
0tz7o6OjlZKSoqysrCoDUWFhoQoLC93P8/Pza/VaHAd36fGwR2t1DAD/5K338hpXR0k1D0S+
0BD9dGVOtA8GgLooNRZ/lPsQ33tJe/bsUWlpqeLj4z22x8fH69tvv630mOzs7ErLZ2dnu/eX
bauqTGUyMzM1bdq0Wr+GMlbxIf0p5Is6Hw/Af3jrvRwIwwQaop+uzIn2wUeKSxVR56MB2FWp
CES+xPfez0yaNMnjE838/HwlJSXV+HhXo1hNLh7ZEE2rYHrYc16pB7Arb72Xt5kEXeSVmvzf
ifbBEWHMAwBQey7DtH5fIhBJatGihUJCQpSTk+OxPScnRwkJCZUek5CQUG35sn9zcnLUsmVL
jzI9evSosi1Op1NOp7MuL0OSZCJi9Hxpep2Prw0CEdCwvPVeDgQN0U9X5kT7YACoi1JfN8Dm
iKOSwsPD1bNnTy1d+vtiBC6XS0uXLlVqamqlx6SmpnqUl6QlS5a4y7dt21YJCQkeZfLz87Vy
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
PaZ///6yLMvjcf3113uU2b59uwYPHqxGjRopLi5Ot99+u0pKShrypQAAEOD4wxqAd3FjVknD
hw/Xrl27tGTJEhUXF2v06NEaN25ctTcBlKSxY8dq+vTp7ueNGjVyf11aWqrBgwcrISFBn3/+
uXbt2qURI0YoLCxM9957b4O9FgAAAAA1Z/tAtGnTJi1evFhffvmlevXqJUl67LHHdOGFF2rW
rFlKTEys8thGjRopISGh0n0ffPCBvvnmG3344YeKj49Xjx49NGPGDN15552aOnWqwsPDG+T1
AAAAeB2rAyKA2X7IXFZWlmJiYtxhSJLS0tLkcDi0cuXKao998cUX1aJFC3Xp0kWTJk3S4cOH
Pc7btWtXxcfHu7elp6crPz9fGzdurPKchYWFys/P93gAAAAAaBi2v0KUnZ2tuLg4j22hoaFq
3ry5srOzqzzuz3/+s9q0aaPExER9/fXXuvPOO7V582a9/vrr7vOWD0OS3M+rO29mZqamTZtW
15cDAEBAM75uAADbCdpANHHiRM2cObPaMps2barz+ceNG+f+umvXrmrZsqUGDBigH374Qe3b
t6/zeSdNmqSMjAz38/z8fCUlJdX5fAAAAACqFrSB6NZbb9WoUaOqLdOuXTslJCQoNzfXY3tJ
SYn27dtX5fygyqSkpEiSvv/+e7Vv314JCQlatWqVR5mcnBxJqva8TqdTTqezxvUCAAD4HnOI
ELiCNhDFxsYqNjb2uOVSU1N14MABrVmzRj179pQkLVu2TC6Xyx1yamLdunWSpJYtW7rPe889
9yg3N9c9JG/JkiWKiopS586da/lqas4w1gAAEMCYmw/A22y/qMJpp52mQYMGaezYsVq1apU+
++wzjR8/XsOGDXOvMLdjxw516tTJfcXnhx9+0IwZM7RmzRpt27ZNb731lkaMGKHzzjtP3bp1
kyQNHDhQnTt31rXXXqv//e9/ev/993XXXXfppptu4goQAABVIREB8DLbByLp6GpxnTp10oAB
A3ThhRfq3HPP1dNPP+3eX1xcrM2bN7tXkQsPD9eHH36ogQMHqlOnTrr11lt1+eWX6+2333Yf
ExISonfeeUchISFKTU3VNddcoxEjRnjctwgAACAoEGQRwIJ2yFxtNG/evNqbsCYnJ8uUG4uW
lJSkjz766LjnbdOmjd577716aSMAAACA+scVIgAAAAC2RSACAAB+hKFXALyLQAQAAIATRJBF
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
pzp06KAFCxZUaE9Nfk5PPvmkunXr5r5ZW2pqqv7v//7Pb9t7rPvuu0+WZWnChAl+2+apU6fK
siyPR6dOnfy2vWV27Niha665RieddJIiIyPVtWtXrV692r3f395/dkM/HBz9cKD3wRL9cEO0
V6IPDkoGQWPhwoUmPDzczJs3z2zcuNGMHTvWxMTEmJycnHqv67333jP//Oc/zeuvv24kmUWL
Fnnsv++++0x0dLR54403zP/+9z9z8cUXm7Zt25pff/3VXWbQoEGme/fu5osvvjCffPKJ6dCh
g7n66qvd+/Py8kx8fLwZPny42bBhg/nPf/5jIiMjzVNPPeUu89lnn5mQkBBz//33m2+++cbc
ddddJiwszKxfv96jPenp6Wb+/Plmw4YNZt26debCCy80rVu3NocOHXKXuf76601SUpJZunSp
Wb16tTn77LNNnz593PtLSkpMly5dTFpamvnqq6/Me++9Z1q0aGEmTZrkLvPjjz+aRo0amYyM
DPPNN9+Yxx57zISEhJjFixe7y9T05/TWW2+Zd99913z33Xdm8+bN5h//+IcJCwszGzZs8Mv2
lrdq1SqTnJxsunXrZv7+97/77fd4ypQp5vTTTze7du1yP3bv3u237TXGmH379pk2bdqYUaNG
mZUrV5off/zRvP/+++b77793l/G395+d0A8HTz8cyH2wMfTDDdVe+uDgRCAKIr179zY33XST
+3lpaalJTEw0mZmZDVrvsb+IXS6XSUhIMA888IB724EDB4zT6TT/+c9/jDHGfPPNN0aS+fLL
L91l/u///s9YlmV27NhhjDHmiSeeMM2aNTOFhYXuMnfeeac59dRT3c+vuuoqM3jwYI/2pKSk
mL/+9a/Vtjk3N9dIMh999JG7fWFhYebVV191l9m0aZORZLKysowxR//4cDgcJjs7213mySef
NFFRUe423nHHHeb000/3qGvo0KEmPT3d/fxEfk7NmjUzzz77rF+39+DBg6Zjx45myZIlpl+/
fu5fxP7Y5ilTppju3btX+jr8sb3GHH0PnHvuuZW22ZjAeP8FM/rho4K1Hw6EPtgY+uGGbC99
cHBiyFyQKCoq0po1a5SWlube5nA4lJaWpqysLK+2ZevWrcrOzvZoS3R0tFJSUtxtycrKUkxM
jHr16uUuk5aWJofDoZUrV7rLnHfeeQoPD3eXSU9P1+bNm7V//353mfL1lJU53mvOy8uTJDVv
3lyStGbNGhUXF3ucq1OnTmrdurVHm7t27ar4+HiPuvLz87Vx48YataeuP6fS0lItXLhQBQUF
Sk1N9ev23nTTTRo8eHCF8/prm7ds2aLExES1a9dOw4cP1/bt2/26vW+99ZZ69eqlK6+8UnFx
cTrjjDP0zDPPuPcHwvsvWNEPy6NMMPXDgdQHS/TDDdle+uDgRCAKEnv27FFpaalHhyBJ8fHx
ys7O9mpbyuqrri3Z2dmKi4vz2B8aGqrmzZt7lKnsHOXrqKpMda/Z5XJpwoQJOuecc9SlSxf3
ecLDwxUTE1Ntm+vanvz8fP3666+1/jmtX79eTZo0kdPp1PXXX69Fixapc+fOftvehQsXau3a
tcrMzKywzx/bnJKSogULFmjx4sV68skntXXrVvXt21cHDx70y/ZK0o8//qgnn3xSHTt21Pvv
v68bbrhBf/vb3/Tcc8951Ouv779gRj9ceT2VCZR+OND6YIl+uKHbSx8cnEJ93QDA22666SZt
2LBBn376qa+bclynnnqq1q1bp7y8PL322msaOXKkPvroI183q1I///yz/v73v2vJkiWKiIjw
dXNq5IILLnB/3a1bN6WkpKhNmzZ65ZVXFBkZ6cOWVc3lcqlXr1669957JUlnnHGGNmzYoDlz
5mjkyJE+bh1QM4HSDwdSHyzRD3sDfXBw4gpRkGjRooVCQkIqrLySk5OjhIQEr7alrL7q2pKQ
kKDc3FyP/SUlJdq3b59HmcrOUb6OqspU9ZrHjx+vd955R8uXL9fJJ5/s0eaioiIdOHCg2jbX
tT1RUVGKjIys9c8pPDxcHTp0UM+ePZWZmanu3bvr3//+t1+2d82aNcrNzdWZZ56p0NBQhYaG
6qOPPtKjjz6q0NBQxcfH+12bjxUTE6NTTjlF33//vV9+jyWpZcuW6ty5s8e20047zT3ExJ/f
f8GOfrjyeo4VSP1wIPXBEv2wN9pLHxycCERBIjw8XD179tTSpUvd21wul5YuXarU1FSvtqVt
27ZKSEjwaEt+fr5WrlzpbktqaqoOHDigNWvWuMssW7ZMLpdLKSkp7jIff/yxiouL3WWWLFmi
U089Vc2aNXOXKV9PWZljX7MxRuPHj9eiRYu0bNkytW3b1mN/z549FRYW5nGuzZs3a/v27R5t
Xr9+vUcntmTJEkVFRbk7x+O150R/Ti6XS4WFhX7Z3gEDBmj9+vVat26d+9GrVy8NHz7c/bW/
tflYhw4d0g8//KCWLVv65fdYks4555wKSxV/9913atOmjST/fP/ZBf2wPMoEYz/sz32wRD/s
jfbSBwcpX6/qgPqzcOFC43Q6zYIFC8w333xjxo0bZ2JiYjxWXqkvBw8eNF999ZX56quvjCTz
0EMPma+++sr89NNPxpijS07GxMSYN99803z99dfmkksuqXTJyTPOOMOsXLnSfPrpp6Zjx44e
S04eOHDAxMfHm2uvvdZs2LDBLFy40DRq1KjCkpOhoaFm1qxZZtOmTWbKlCmVLjl5ww03mOjo
aLNixQqPpT0PHz7sLnP99deb1q1bm2XLlpnVq1eb1NRUk5qa6t5ftrTnwIEDzbp168zixYtN
bGxspUt73n777WbTpk1m9uzZlS7tWZOf08SJE81HH31ktm7dar7++mszceJEY1mW+eCDD/yy
vZUpv7qRP7b51ltvNStWrDBbt241n332mUlLSzMtWrQwubm5ftleY44upRsaGmruueces2XL
FvPiiy+aRo0amRdeeMFdxt/ef3ZCPxw8/XAw9MHG0A/Xd3vpg4MTgSjIPPbYY6Z169YmPDzc
9O7d23zxxRcNUs/y5cuNpAqPkSNHGmOOLjt59913m/j4eON0Os2AAQPM5s2bPc6xd+9ec/XV
V5smTZqYqKgoM3r0aHPw4EGPMv/73//Mueeea5xOp2nVqpW57777KrTllVdeMaeccooJDw83
p59+unn33XcrlKmsrZLM/Pnz3WV+/fVXc+ONN5pmzZqZRo0amUsvvdTs2rXL4zzbtm0zF1xw
gYmMjDQtWrQwt956qykuLq7wvenRo4cJDw837dq186ijTE1+Tn/5y19MmzZtTHh4uImNjTUD
Bgxw/yL2x/ZW5thfxP7W5qFDh5qWLVua8PBw06pVKzN06FCPe0n4W3vLvP3226ZLly7G6XSa
Tp06maefftpjv7+9/+yGfjg4+uFg6IONoR+u7/YaQx8cjCxjjPHe9SgAAAAA8B/MIQIAAABg
WwQiAAAAALZFIAIAAABgWwQiAAAAALZFIAIAAABgWwQiAAAAALZFIAIAAABgWwQiAAAAALZF
IAIAAABgWwQiAAAAALZFIAIAAABgWwQiAAAAALZFIAIAAABgWwQiAAAAALZFIAIAAABgWwQi
AAAAALZFIAIAAABgWwQiAAAAALZFIAIAAABgWwQiAAAAALZFIAIAAABgWwQiAAAAALZFIAIA
AABgWwQiAAAAALZFIAL8yBNPPKEFCxb4uhl+66WXXtIjjzzi62YACGL0w4D9WMYY4+tGADiq
S5cuatGihVasWOHrpvilP/3pT9qwYYO2bdvm66YACFL0w4D9cIUICFAFBQVeq+vIkSNyuVxe
qw8AAgH98FGHDx/2dROAE0Iggu0cPHhQEyZMUHJyspxOp+Li4vTHP/5Ra9eudZfp37+/unTp
ojVr1qhPnz6KjIxU27ZtNWfOnArnKyws1JQpU9ShQwc5nU4lJSXpjjvuUGFhYYWyL7zwgnr3
7q1GjRqpWbNmOu+88/TBBx9IkpKTk7Vx40Z99NFHsixLlmWpf//+kqQFCxbIsix99NFHuvHG
GxUXF6eTTz7Zfd4nnnhCp59+upxOpxITE3XTTTfpwIEDFeqfPXu22rVrp8jISPXu3VuffPKJ
+vfv765HklasWCHLsrRw4ULdddddatWqlRo1aqT8/Hzt27dPt912m7p27aomTZooKipKF1xw
gf73v/951FN2jldeeUXTpk1Tq1at1LRpU11xxRXKy8tTYWGhJkyYoLi4ODVp0kSjR4+u9PtV
Xv/+/fXuu+/qp59+cn9/kpOTJUkjR45URESENm3a5HFMenq6mjVrpp07d1Z7bgDeRT8cmP3w
sT+X8847T40aNdKkSZN0/vnnKzY2Vrm5ue6yRUVF6tq1q9q3b+/V8AjUVqivGwB42/XXX6/X
XntN48ePV+fOnbV37159+umn2rRpk84880x3uf379+vCCy/UVVddpauvvlqvvPKKbrjhBoWH
h+svf/mLJMnlcuniiy/Wp59+qnHjxum0007T+vXr9fDDD+u7777TG2+84T7ftGnTNHXqVPXp
00fTp09XeHi4Vq5cqWXLlmngwIF65JFHdPPNN6tJkyb65z//KUmKj4/3aPuNN96o2NhYTZ48
2f3LZerUqZo2bZrS0tJ0ww03aPPmzXryySf15Zdf6rPPPlNYWJgk6cknn9T48ePVt29f3XLL
Ldq2bZuGDBmiZs2aefxSLzNjxgyFh4frtttuU2FhocLDw/XNN9/ojTfe0JVXXqm2bdsqJydH
Tz31lPr166dvvvlGiYmJHufIzMxUZGSkJk6cqO+//16PPfaYwsLC5HA4tH//fk2dOlVffPGF
FixYoLZt22ry5MlV/tz++c9/Ki8vT7/88osefvhhSVKTJk0kSf/+97+1bNkyjRw5UllZWQoJ
CdFTTz2lDz74QP/v//2/Cu0C4Fv0w4HZD5fZu3evLrjgAg0bNkzXXHON4uPjNWHCBHXr1k3X
X3+9Xn/9dUnSlClTtHHjRq1YsUKNGzc+7nkBnzGAzURHR5ubbrqp2jL9+vUzksyDDz7o3lZY
WGh69Ohh4uLiTFFRkTHGmP/3//6fcTgc5pNPPvE4fs6cOUaS+eyzz4wxxmzZssU4HA5z6aWX
mtLSUo+yLpfL/fXpp59u+vXrV6E98+fPN5LMueeea0pKStzbc3NzTXh4uBk4cKDHeR9//HEj
ycybN8/d9pNOOsmcddZZpri42F1uwYIFRpJHncuXLzeSTLt27czhw4c92nHkyJEK7d+6datx
Op1m+vTpFc7RpUsX9/fKGGOuvvpqY1mWueCCCzzOkZqaatq0aVPhdR9r8ODBVZZ7//33jSTz
r3/9y/z444+mSZMmZsiQIcc9JwDvox8O3H647OcyZ86cCvueeuopI8m88MIL5osvvjAhISFm
woQJxz0n4GsMmYPtxMTEaOXKlccdRhUaGqq//vWv7ufh4eH661//qtzcXK1Zs0aS9Oqrr+q0
005Tp06dtGfPHvfjD3/4gyRp+fLlkqQ33nhDLpdLkydPlsPh+bazLKvGbR87dqxCQkLczz/8
8EMVFRVpwoQJHucdO3asoqKi9O6770qSVq9erb1792rs2LEKDf39wvDw4cPVrFmzSusaOXKk
IiMjPbY5nU53PaWlpdq7d6+aNGmiU0891WOoS5kRI0a4PxmVpJSUFBlj3J/slt/+888/q6Sk
pKbfigoGDhyov/71r5o+fbouu+wyRURE6Kmnnqrz+QA0HPrhwO6HnU6nRo8eXWH7uHHjlJ6e
rptvvlnXXnut2rdvr3vvvfe45wN8jUAE27n//vu1YcMGJSUlqXfv3po6dap+/PHHCuUSExMr
XOI/5ZRTJMm9ytmWLVu0ceNGxcbGejzKypWNpf7hhx/kcDjUuXPnE2p727ZtPZ7/9NNPkqRT
Tz3VY3t4eLjatWvn3l/2b4cOHTzKhYaGuufhHK8u6ejQlIcfflgdO3aU0+lUixYtFBsbq6+/
/lp5eXkVyrdu3drjeXR0tCQpKSmpwnaXy1XpOWpj1qxZat68udatW6dHH31UcXFxJ3Q+AA2D
fvh3gdgPt2rVSuHh4ZXumzt3rg4fPqwtW7ZowYIFFQId4I+YQwTbueqqq9S3b18tWrRIH3zw
gR544AHNnDlTr7/+ui644IJancvlcqlr16566KGHKt1/7C+cE+XNXyyV1XXvvffq7rvv1l/+
8hfNmDFDzZs3l8Ph0IQJEypd/aj8p6g12W5O8C4AX331lfuPn/Xr1+vqq68+ofMBaBj0w3Wv
yx/64eq+BytWrHAvzrB+/XqlpqYe93yArxGIYEstW7bUjTfeqBtvvFG5ubk688wzdc8993j8
It65c6cKCgo8Pp387rvvJMn9aV779u31v//9TwMGDKh2yEX79u3lcrn0zTffqEePHlWWq82w
DUlq06aNJGnz5s1q166de3tRUZG2bt2qtLQ0j3Lff/+9zj//fHe5kpISbdu2Td26datRfa+9
9prOP/98zZ0712P7gQMH1KJFi1q1vS6q+/4UFBRo9OjR6ty5s/r06aP7779fl156qc4666wG
bxeA2qMfPirQ+uHq7Nq1SzfffLMGDhzoXgwiPT3d/doBf8WQOdhKaWlpheEAcXFxSkxMrLDc
aElJiccclKKiIj311FOKjY1Vz549JR39lHPHjh165plnKtT166+/ulcgGjJkiBwOh6ZPn17h
E7zyn8Y1bty40mVaq5KWlqbw8HA9+uijHueZO3eu8vLyNHjwYElSr169dNJJJ+mZZ57xGB/+
4osvav/+/TWuLyQkpMKnh6+++qp27NhR43OciMaNG1c5nOPOO+/U9u3b9dxzz+mhhx5ScnKy
Ro4cWaNlZAF4D/1wYPfD1Rk7dqxcLpfmzp2rp59+WqGhoRozZswJX/0HGhpXiGArBw8e1Mkn
n6wrrrhC3bt3V5MmTfThhx/qyy+/1IMPPuhRNjExUTNnztS2bdt0yimn6OWXX9a6dev09NNP
uyeoXnvttXrllVd0/fXXa/ny5TrnnHNUWlqqb7/9Vq+88oref/999erVSx06dNA///lPzZgx
Q3379tVll10mp9OpL7/8UomJicrMzJQk9ezZU08++aT+9a9/qUOHDoqLi3NPDK5MbGysJk2a
pGnTpmnQoEG6+OKLtXnzZj3xxBM666yzdM0110g6OpZ96tSpuvnmm/WHP/xBV111lbZt26YF
Cxaoffv2Nf5E9E9/+pOmT5+u0aNHq0+fPlq/fr1efPFFj09FG1LPnj318ssvKyMjQ2eddZaa
NGmiiy66SMuWLdMTTzyhKVOmuJfsnT9/vvr376+7775b999/v1faB+D46IcDux+uyvz58/Xu
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

--------------ceekB4eoX0iH5mKNwYLn8a1f--

--------------xkH96iil1c9WKohMEHSvECm7--

--===============2549945546902474916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2549945546902474916==--
