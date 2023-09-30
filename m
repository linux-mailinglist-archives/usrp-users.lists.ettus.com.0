Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 813887B438F
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 22:30:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 19F2B384D8B
	for <lists+usrp-users@lfdr.de>; Sat, 30 Sep 2023 16:30:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696105814; bh=IfmDnyb5rqwqdTeDDgty9BPNu1ZZdx40BM6h5r7Frts=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZhGP0/ri90FWhS3rbVXWAZHyTyYGWlTBOhQWiDXvMbKf8K+pmAFWOUlZlAK3NVQQu
	 WUYCHdOdL/gIbjGG3Gd+OIWhTtd5dvXrWhJWWi2JYnxRfyVFsHBWblvmUafLl9z+BP
	 AWLVqRuvr+IwlDf7W4qrL22JwgUJEFis5oE6hqnhu9FJ/6KAT3USFVdpuont6YOeda
	 kt2w2xLo2UGfWVZfPYM7KeNxCqa98jxnLUaecn85Lx4Q4ThMzm/pDMwR7mLuRl4SwR
	 0YvpTc3I5j9BTDVL2KAxZ5OnhA5YNpfTdze+StKEpEMpgkuAOX+RNaF4WBak3QE39O
	 DUkjNGi1I9K3Q==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 5906A384D66
	for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 16:29:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XLAIYAGa";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-41808baf6abso86273291cf.3
        for <usrp-users@lists.ettus.com>; Sat, 30 Sep 2023 13:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696105798; x=1696710598; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxHhe50vUA5ysGTTCukN97f61KprZFLf8I9CFjEPlXk=;
        b=XLAIYAGagL9pkEfsz0LF8u6qr6Q/875DpqfEPIpmmXvKcXF8SEt87E0aIY4HJRQ0jq
         Z0TYakYSpOmQzvOgbxVQi0O8q7n7TKbOK+WbiccePf4/FgKTFwGFeAR+fjA8QyKzeD4P
         FOldhmrF5fDRtv3R8Da7t1qFAM07Jrc9+Vww5feKx6n7Kc/5sQVwqkKvAcxBnR4QBWAt
         c3z7hf5OrW6AUl1FMOFmjhzTLrHJMn75o/UJNXzgJNKpVCZm/I/CuujYDt2//noVs51N
         T0XVmL7/INjEPdKV68NnRiCERR5pMpDNiCO8rkFEvuWBN7NAMeaVA73WrVD46Gzm+VWS
         SGLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696105798; x=1696710598;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fxHhe50vUA5ysGTTCukN97f61KprZFLf8I9CFjEPlXk=;
        b=YamugYoAQPt5S4mZXOLXp7hYVq/2o6JE6onHB0b0Mc+XxTvk/WjzWauYaFPRN5r2wg
         UP4AfiJszgffScpB49e6h4zGe3eMeRbaXAabmA/HCuT3o9DJTt3RD2L5ytodIX5PIG2i
         jhhu/aRwuIrxMdykHAbnkJAIgmEj8QG7tBSQWxOkrPWjqRlH1RVqB54e2rrrabWllJIC
         gRRlzhxPCgT/nu8g4l9gBly6ta2mlOoZIUuF05Z7AzW1AZ8UQO3mKszB9xZUE/wabuwl
         HF4OsVY7Ix5ULwB5HFQfDfVJep6H3FIP43jG9qXBObiFMgapSbFOI6W1G+WYRgKxWrPG
         oBwA==
X-Gm-Message-State: AOJu0Yw1O3jSyc3vYC4QvS0OQMkTveRAdVVc4RkXMhY2aTwtwq+YVP+5
	ZgSf2/0Ng8MJ0cjS6JB2NTM=
X-Google-Smtp-Source: AGHT+IGKpKVQTH8KU6wAZzK9NQnBYdAohd6dnSZfKoPuqcaqlLNkJqkgzdp63dMRenH8Li8VqqNWMw==
X-Received: by 2002:a05:622a:1997:b0:410:ab6d:54da with SMTP id u23-20020a05622a199700b00410ab6d54damr8948857qtc.16.1696105798552;
        Sat, 30 Sep 2023 13:29:58 -0700 (PDT)
Received: from [192.168.2.156] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id m12-20020a0cf18c000000b0065b0d9b4ee7sm5210315qvl.20.2023.09.30.13.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Sep 2023 13:29:57 -0700 (PDT)
Message-ID: <2290324c-60b7-0dfb-d46e-7cfcc084d21d@gmail.com>
Date: Sat, 30 Sep 2023 16:29:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Devin Kelly <dwwkelly@gmail.com>
References: <CAANLyuZ1vMXzQ5APUzvX4OBsc042d+-1WAn2BEpaGxSrSQO3Mw@mail.gmail.com>
 <ab880db7-6a66-16ba-65f4-2bed82ec7318@gmail.com>
 <CAANLyubyYcO56Vjc4Ym0SuX734tNFA-zCDJ-AruGoE1TJRGVbA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAANLyubyYcO56Vjc4Ym0SuX734tNFA-zCDJ-AruGoE1TJRGVbA@mail.gmail.com>
Message-ID-Hash: CPNIZWTMUZD2DC4NNN4Z2O7WFMSZSGZ4
X-Message-ID-Hash: CPNIZWTMUZD2DC4NNN4Z2O7WFMSZSGZ4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210/B205 TX Distortion
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CPNIZWTMUZD2DC4NNN4Z2O7WFMSZSGZ4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0251403797001115157=="

This is a multi-part message in MIME format.
--===============0251403797001115157==
Content-Type: multipart/alternative;
 boundary="------------x0uHU030a3UDbEzxqRMHolvj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------x0uHU030a3UDbEzxqRMHolvj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 30/09/2023 10:33, Devin Kelly wrote:
> Marcus,
>
> I think I forgot to attach the second screen cap (see below).
>
> Is it possible to just leave the TX chain=C2=A0on?=C2=A0 I'm sending ma=
ny pulses=20
> rapidly so it doesn't make sense to turn it on and off so much.
>
> Devin
>
> image.png
>
> On Fri, Sep 29, 2023 at 6:43=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 29/09/2023 17:14, Devin Kelly wrote:
>>
>>     All,
>>
>>     I=E2=80=99ve noticed some odd behavior when transmitting bursts on=
 a B210
>>     and B205mini.=C2=A0 When scheduling my bursts there=E2=80=99s a bi=
g =E2=80=9Cblip=E2=80=9D
>>     before my desired signal.=C2=A0 I eventually started looking at
>>     tx_bursts.cpp and was able to re-create the =E2=80=9Cblip=E2=80=9D=
using this command:
>>
>>     ./tx_bursts --repeat --rep-delay 0.01 --gain 50 --dilv
>>
>>     Though pretty much every command had the =E2=80=9Cblip.=E2=80=9D=C2=
=A0 I=E2=80=99ve attached
>>     some oscilloscope screen caps below.=C2=A0 My desired signal start=
s
>>     around 977 ns.=C2=A0 This is with UHD 4.4 and the =E2=80=9Cblip=E2=
=80=9D happens on
>>     every burst (the second screep cap shows this but it=E2=80=99s har=
d to see).
>>
>>     I=E2=80=99ve also noticed that the blip magnitude stays the same a=
nd if I
>>     increase the gain where the rest of the signal increases or
>>     decreases.
>>
>>     How do I make this go away??=C2=A0 I=E2=80=99ve tried pre-pending =
0s to my
>>     signal and fiddling with pretty much every MultiUSRP setter.
>>
>>     Thanks!
>>
>>     Devin
>>
>>
>     I can't really see details in the plot you attached, but my guess
>     is that this is just the turn-on transient of the RF power amplifie=
r
>     =C2=A0 chain.=C2=A0=C2=A0 Not sure there's much you can do to get r=
id of it if
>     you're sending TX bursts, since the TX hardware has to be turned
>     =C2=A0 on/off between bursts.
>
For a test, you could put your burst waveform in a file, and use=20
tx_samples_from_file with the --repeat option, and see what the
 =C2=A0 behavior is.=C2=A0 My guess is you'll get the TX-on transient at =
the very=20
start, and the rest will be smooth sailing.



--------------x0uHU030a3UDbEzxqRMHolvj
Content-Type: multipart/related;
 boundary="------------Uhew7EHClNsydTIY11JlMa0Z"

--------------Uhew7EHClNsydTIY11JlMa0Z
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 30/09/2023 10:33, Devin Kelly wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAANLyubyYcO56Vjc4Ym0SuX734tNFA-zCDJ-AruGoE1TJRGVbA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Marcus,
        <div><br>
        </div>
        <div>I think I forgot to attach the second screen cap (see
          below).</div>
        <div><br>
        </div>
        <div>Is it possible to just leave the TX chain=C2=A0on?=C2=A0 I'm=
 sending
          many pulses rapidly so it doesn't make sense to turn it on and
          off so much.</div>
        <div><br>
        </div>
        <div>Devin</div>
        <div><br>
        </div>
        <div><img src=3D"cid:part1.gmcjV00j.E0FWEfpU@gmail.com"
            alt=3D"image.png" class=3D"" width=3D"562" height=3D"182"><br=
>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 29, 2023 at
          6:43=E2=80=AFPM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb=
(204,204,204);padding-left:1ex">
          <div>
            <div>On 29/09/2023 17:14, Devin Kelly wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <p class=3D"MsoNormal">All,</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">I=E2=80=99ve noticed some odd beha=
vior when
                  transmitting bursts on a B210 and B205mini.=C2=A0 When
                  scheduling my bursts there=E2=80=99s a big =E2=80=9Cbli=
p=E2=80=9D before my
                  desired signal.=C2=A0 I eventually started looking at
                  tx_bursts.cpp and was able to re-create the
                  =E2=80=9Cblip=E2=80=9Dusing this command:</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal" style=3D"margin-left:0.5in">./tx_b=
ursts
                  --repeat --rep-delay 0.01 --gain 50 --dilv</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">Though pretty much every command
                  had the =E2=80=9Cblip.=E2=80=9D=C2=A0 I=E2=80=99ve atta=
ched some oscilloscope
                  screen caps below.=C2=A0 My desired signal starts aroun=
d
                  977 ns.=C2=A0 This is with UHD 4.4 and the =E2=80=9Cbli=
p=E2=80=9D happens
                  on every burst (the second screep cap shows this but
                  it=E2=80=99s hard to see).</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">I=E2=80=99ve also noticed that the=
 blip
                  magnitude stays the same and if I increase the gain
                  where the rest of the signal increases or decreases.</p=
>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">How do I make this go away??=C2=A0=
 I=E2=80=99ve
                  tried pre-pending 0s to my signal and fiddling with
                  pretty much every MultiUSRP setter.</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">Thanks!</p>
                <p class=3D"MsoNormal">Devin</p>
                <br>
              </div>
            </blockquote>
            I can't really see details in the plot you attached, but my
            guess is that this is just the turn-on transient of the RF
            power amplifier<br>
            =C2=A0 chain.=C2=A0=C2=A0 Not sure there's much you can do to=
 get rid of it
            if you're sending TX bursts, since the TX hardware has to be
            turned<br>
            =C2=A0 on/off between bursts.</div>
        </blockquote>
      </div>
    </blockquote>
    For a test, you could put your burst waveform in a file, and use
    tx_samples_from_file with the --repeat option, and see what the<br>
    =C2=A0 behavior is.=C2=A0 My guess is you'll get the TX-on transient =
at the
    very start, and the rest will be smooth sailing.<br>
    <br>
    <br>
    <br>
  </body>
</html>
--------------Uhew7EHClNsydTIY11JlMa0Z
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Id: <part1.gmcjV00j.E0FWEfpU@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAA9cAAAE/CAIAAADDnae4AAAAAXNSR0IArs4c6QAAAERlWElm
TU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAD16AD
AAQAAAABAAABPwAAAACRRhW3AABAAElEQVR4AezdC7ymV1Uf/jVhcp8QMpNJQkISSMgFiAkB
uWhJ1db2b2/a1kpjbaHEvxQVrFpbWmoVr39bUauWqxUQ+5d4bdVqW4siJmqxFiIqIVyTQCDJ
JBOSTO7JTL/nXXP27POc91zfc86cc951PvN5Zj/7Wfv222uv/dtr7+d5d7zoRS/6ki/5krPO
OmvPnj1Rf4VAIVAIFAKFQCFQCGxBBO6+++7bb7/9/e9//80337wFq19VniIEfvVXf/WKK67Q
4J1U9ud//uenqOnV1EKgECgECoFCoBAoBAqBQuBoI3DM0a5AlV8IFAKFQCFQCBQChUAhUAhM
HQI7b7nllqlrdDW4ECgECoFCoBAoBAqBQqAQOKoI7Fyr0q+++uq1yqryKQQKgUKgECgECoFC
oBCYQgSuvfba6Wn1mrFwkE0VcNOjItXSQqAQKAQKgUKgECgENgCBaXPp1rnwNVaqaVOgheAr
HBKZwqFw6MdI6UPpQ+lDj0DpQ49G2YcejQqvDIHSnpXhVdKFQCFQCBQChUAhUAgUAh0Ck5DJ
N8dLDsVV+e/uOKU77HHevsPxz3tfV9bL48qDh+PPf2UXv+zgrt+Oq+YWFKM8zzhhqSxuuOGG
Q6O/8oUvBdUKn0+iQCssalOLFw7ZPYVD4dAP1NKH0ofShx6B0ocejbIPPRorD++6OO56R1y3
Y+bfLQfjuR+OHaNM9t4Y598T14/iH7gqLn374awveUc89M6R/Fvi3LfG0tR5XpUOvCsOnBa7
rznyYNfLYtfHY9/DR2I2KlTas1FIVzmFQCFQCBQChUAhUAhsQwTWiEz2XupLDkZzdWPkV310
xM45zjs3NpnGzhuqmckldx32lxOYST7ytTdhXvbev+62PWr5jAmUL3wMKGsStUYKtCZ1OZqZ
FA6JfuFQOPTjsPSh9KH0oUeg9KFHo+xDj8Zk4RPPjrg7Djwejoic1GX10Gcj9sSuncFxnp7y
fPjQ3XHShZ1cC+6Oh1834y//4O/E3lfEnj+cDX/V4RMv+z8UJ182e/rl5eFX6Pd/U0u8kYHS
no1Eu8oqBAqBQqAQKAQKgUJgmyGwJmRydED88AmTuQe1m498JpBO8RGAA5d2gtqEZ277PPtw
RPO1D/LMTMZfyxc+HpfJY9dEgSavxlHPoXDILigcCod+MJY+lD6UPvQIlD70aJR96NFYdRhF
flV8+p/End3h7BNfNi67kVN83IOVxe2/KfZ83UyS3ZfHrW+IQytLvVbSpT1rhWTlUwgUAtsP
ARay/9t+DawWFQKFQCEwOQLs5CSZjLzU7RR45tR81W5XcS788LdWev93H5apW0fMr4kru4Pm
SzSi+cKXkFv+4wmBW35Bm1yycMgOKhwKh36olj6UPpQ+9AiUPvRolH0ofWj6MIkyDMjxbJ5H
mPfo9Eh7e/LIG5kLJFzmiRTlzGR105zXNGcLX+D/YuELAFPRhUAhUAgUAoVAIVAIFAJHA4EJ
WHj7gMnhT4YfOvJplNV9L3z5LDyLHvjgF4OvWPhi6EzybAIFmqTYTZe2cMguKRwKh35wlj6U
PpQ+9AiUPvRolH2AxpSAUCy81/wKFwKFQCFQCBQChUAhUAgcZQSmjYXXb2euscJNiQItiVrh
kBAVDoVDP1hKH0ofSh96BEofejTKPvRoVHhlCJT2rAyvki4ECoFCoBAoBAqBQqAQ6BCYEjLZ
TqSUL7zr/LUITokCLQlV4ZAQFQ6FQz9YSh9KH0ofegRKH3o0yj70aFR4ZQiU9qwMr5IuBAqB
QqAQKAQKgUKgEOgQmBIyWb7wrs/XNDglCrQkZoVDQlQ4FA4NAcrQ/pYcQdtbAA7bu4HLbF3h
kEAVDoXDModMiS2IQI2iBaGpB4VAIVAIFAKFQCFQCBQCSyEwJWSyfOFLKcJqn0+JAi0JT+GQ
EBUOhUM/WEofSh9KH3oESh96NMo+9GhUeGUIlPasDK+SLgQKgUKgECgECoFCoBDoEJgSMlm+
8K7P1zQ4JQq0JGaFQ0JUOBQO/WApfSh9KH3oESh96NEo+9CjUeGVIVDaszK8SroQKAQKgUKg
ECgECoFCoENgSshk+cK7Pl/T4JQo0JKYFQ4JUeFQOPSDpfSh9KH0oUeg9KFHo+xDj0aFV4ZA
ac/K8CrpQqAQKAQKgUKgECgECoEOgSkhk+UL7/p8TYNTokBLYlY4JESFQ+HQD5bl68NL4sn+
9Wm3U3j5OGynVs9vS+GQmBQOhcP80TElMTvWqp1G0bXXXrtWuVU+hUAhUAhsJwQGPGNJa5kU
/Pq4bzuBUG0pBAqBQmBxBKaETPKFX3HFFaA4ZnE46ulKERjMtStNvm3kC4fsysKhcEgE0O5k
3i2wyGB/TZz9gjjl8jh5EZkt/ajGRXZf4VA49AO59KFHo8IrQ6C0Z2V4lXQhUAgUAgsggIW/
MS78vjh/Gx9KWaDpFV0IFAJTjcCUkMk6F75eWj4lCrQkfIVDQlQ4FA79YFmmPnxl7P7qOP2a
OLNPu53Cy8RhOzV5bFsKh4SlcCgcxg6QilwBAjWKVgBWiRYChUAhsAAC/N9/HM89FFf598Px
jAWkKroQKAQKgW2IwORk8uVx5cE444Qj2Oz67ZE5TaPq+tE4/ErkSHLG0h6K8195RH75oZmc
745TdnYp5pXePeuC5QvvwFjT4OQKtKbVOWqZFQ4JfeFQOPSDcJn68Pw4JVPtiif1ybdNeJk4
bJv2LtSQwiGRKRwKh4XGyArjLzkYV70zds3/8Mj+uOHYuG7H6N/FcWiU7SXviIfeOYp5S5z7
1jnEfZnFHnhXHDgtdl9zRHzXy2LXx2Pfw0diNipUo2ijkK5yCoFCYDsj8ONxQfPZ/EY8Zzs3
tdpWCBQChcBcBCYnk/O80WM81sp8c7ykc2Oj75e+fW5NIjLhJXcddqUT2HvjkXBKn7cvnve+
Iwndzs/nyOMWKl94g2KNA5Mr0BpX6ChlVzgk8IVD4dAPweXow7PjJEk+FTPOlBO26WesloND
j9t2DRcO2bOFQ+Gw3mN8dzz3sRGBnj2Osuvi2XMpo6IfujtOunBcJXbHw6+b8Zd/8Hdi7yti
zx/Ohr/q8EGU/R+Kky+bPZTy8tizJ/Z/07h81j2uRtG6Q1wFFAKFwBQgcH1czhf+s3Gx6wfi
yilocTWxECgECoHDCExOJuf5wnts+bzTdT3j555l5AQGLu1MMseJznd+aPbUSh+OkGceKx/k
2Zc7DK+XLzzhq2shUAgUAoXA6hA4M467LR65IR64IQ4cFzu8rLm6fCpVIVAIFAJbEYEhY13L
+9veGyc/ddYLvid29S9Wrrac/TfFnq+bSbz78rj1DYcPna82s1Wny55edfJKWAgUAoVAIQCB
J+IlvxnPQb5fH+dxh39PnFewFAKFQCEwJQhMTiYX9YUfcVcv+1z44U+g9P7vPqxfMqtr4sru
oPkS3bVevvAlip2Cx5Mr0PYAqXDIfiwcCod+RC+pD8j378d9Pxifluo98fnH4uCTYy2cNX0l
NkF4SRw2QR03ogqFQ6JcOBQO6znezvvI7LntiHO+LPZdP3JXf2PsOy3Oeduo4DfH3h0TnOfO
rF4bO/4s7n98PVuyWN41ihZDp54VAoVAIbAMBLBw/m9Xsq4Pxhf/cjxrGelKpBAoBAqB7YDA
ZGTSEe38/vfMdfbYd/uwicj+eyYx8pqn/NjvhS/zXDjYs4ixmYzvlOYLH/94FbGTAbeKAjdp
ksIhO6ZwKBz6IVr6sEx9+JY4u2fhH4wr/euR3B7h0odl6sP26O4lW1H6UPrQlGRKlKFYeOvx
ChQChUAhsFkQ+N34gk/HC1ttOML3xYvTNd4iK1AIFAKFwHZFYNpY+DHbtSOPVrumRIGWhLdw
SIgKh8KhHyxL6sPlcfJH4sGW5Lfint11LrzBse0CS+rDtmvx+AYVDolL4TBePyp2OQiU9iwH
pZIpBAqBQmARBG6M5/+zOKcJ/JM4qx1QaZEVKAQKgUJguyIwJWSynUgpX/gaa/KUKNCSqBUO
CVHhUDj0g2VJfTg/ju/lhZ84Wl+fHdRjTW+XxGFNS9u8mRUO2TeFQ+GweUfpVqlZjaKt0lNV
z0KgENh4BFjI/m+hCtwRL+pPgacv/Pvj/F7+NXF2f1vhQqAQKAS2DQLs5LZpyyINKV/4IuBM
9GhKFGhJjAqHhKhwKBwSgWtHf8ItkPH9Ff/eF4/1MW+N2z8WD/UxPUfv47dWuMZF9lfhUDj0
I7f0oUejwitDoLRnZXiVdCFQCBQCcxH41jj7Q/G8uXHxi3Hpr8WzWyQWXr7whkYFCoFCYJsh
MCVksnzh66W3U6JAS8JXOCREhUPh0A+WJfXhzni0lxc+No75K3Fac4E/L3ZdGCe024HwVrld
Eoet0pAJ61k4JICFQ+Ew4VCq5FGjqJSgECgECoFJEPjpuOi34rJBDq8afSaF//vV8VTk+11x
8X+KS34wnr7VifigmXVbCBQChQAEpoRMli98vbR9ShRoSfgKh4SocCgc+sGyuD784zjzAd9E
Gff30jhd9IvjlKfHCV8XZ8z/lMq4RJs3bnEcNm+917pmhUMiWjgUDms9tqYvvxpF09fn1eJC
oBBYSwQ+GS/4z/GsQY7pC38sXnJzvOCmeP6n4gW+IF4fER+gVLeFQCGwPRCYEjJZvvD1Utcp
UaAl4SscEqLCoXDoB8vi+uDnG66P+3p54bfE7TfEgZ2x4/w44eI4iS88BS6LkwaSW+h2cRy2
UEMmrGrhkAAWDoXDhEOpkk/LUZ7q6UKgECgE1gmBhTzc/yMuS/93f+UjX6dqVLaFQCFQCBwt
BKZkSVa+8PVSsClRoCXhKxwSosKhcGgIUIb2N38E5duW833hJO+e+xHxz8YjIi+KE+dnslVi
4LBVqrqu9SwcEt7CoXBY14E2FZnXKJqKbq5GFgKFwPog8GNxwZ/O+1h4FvU9cV7vBX9PXPb5
+KL5X1NZn3pVroVAIVAIbBwCU0Imyxe+Xio1JQq0JHyFQ0JUOBQO/WBZRB9Oi533LfCBlO+O
W/8o7vcjmh+NB38l7vpvcc+H48EXxil9zlsrvAgOW6shE9a2cEgAC4fCYcKhVMnrXHjpQCFQ
CBQCq0fgI/F83wtfKP2vxrN/I57z7rjkW+Lsfxbn+JTKQofIF8qh4guBQqAQ2PwITMmSrHzh
66WKU6JAS8JXOCREhUPh0A+WRfTh1Ni5b+757z7hD8dnfi/u/fN48ANx4Efito/Hw/3TLRde
BIct15ZJKlw4JHqFQ+EwyTiqtDMI1CgqPSgECoFCYNUI3BYvXPznML8hzuoFyhe+aqgrYSFQ
CGxaBKaETJYvfL00cEoUaEn4CoeEqHAoHPrBsog+PBaHesklww/FE1fGriXFNqfAIjhszgqv
U60KhwS2cCgc1mmITVG2NYqmqLOrqYVAIbDWCHwonte7uudnzxfeRz4RL/nvcVkfU+FCoBAo
BLY6AlNCJssXvl6KOiUKtCR8hUNCVDgUDv1gWUgfviPOOS+OH/ux8D55H/YR8bPjuD5mC4UX
wmELNWFNqlo4JIyFQ+GwJgNqqjOpUTTV3V+NLwQKgUURYCH7v4EsFv5I/IVB5OK3vxLPui++
aHGZeloIFAKFwNZCgJ3cWhVeXW3LF7463JZONSUKtCQQhUNCVDgUDonAtaM/4RbI+LxeEifd
sfAHUnrJPnywv9lS4RoX2V2FQ+HQD9zShx6NCq8MgdKeleFV0oVAIVAIzCLwU3HRSn8L81Vx
1v+O585mUP8XAoVAIbAdEJgSMlm+8PVS1ilRoCXhKxwSosKhcOgHy0L6sDt23h6P9pLLCd8S
jyxHbBPKLITDJqzqulapcEh4C4fCYV0H2lRkXqNoKrq5GlkIFALrgMBvxnPeFs9cacY+q7LS
JCVfCBQChcBmRmByMvnyuPJgnHHCnEaety+u8hsLh+J57+viR5IZf/4ru/hlB3f9dlx1d5yy
s0swrvTu8WywfOGzSKz1/5Mr0FrX6OjkVzgk7oVD4dCPwIX04YI44aZ4qJdcTvjUeNLiHzdc
TiZHRWYhHI5KZY5ioYVDgl84FA5rNAwvORhXvTN27ZiT3d4b4/x74vodcd2OeOCquPTth59e
8o546J0zkde9Jc5965C4z8ligZsD74oDp8Xua4483vWy2PXx2HcUfty4RtGRXqhQIVAIFAIr
QeBP4spV8Ok/iCtWkWol9SrZQqAQKAQ2FIHJyeQ8bzRq3lzdGPlVH40Zlv7meEnnxibT2Hlr
b7q6L7nrsB+dwEzykU+9CfOy9/51t+1Ry2dMoHzhY0BZk6jJFWhNqnHUMykcsgsKh8KhH4wL
6cPlq/oVzNOi3wjty9ns4YVw2Oz1Xuv6FQ6JaOFQOKz12DqS38vjpCM38dBnI/bErp2x6+IR
F5999NDdcdKFszf9/7vj4dfN+Ms/+Dux9xWx5w9nw191+CDK/g/FyZfNHkp5eezZE/u/qU+/
YeEaRRsGdRVUCBQC2wyBT8QXrsKr7bMq3xJnbzMoqjmFQCEwzQhMTiYHvvC5t+0k90wgneIj
tAcu7eyBJjxzy3d+aPbUSh+OaL72QZ6ZyfjrevnCE766FgKFQCFQCCwTAfz7KSOv9jLlGfWU
zG+krDRVyRcChUAhsJkRGM9bJ4o98WXjko+c4uMerCxu/02x5+tmkuy+PG59QxxaWeq1ks4e
XavcKp9CoBAoBKYEgVfHUz8QV66isT8eF5QvfBW4VZJCoBDYtAhMTibnOr81tPmqhVdxLvzw
J1B6/3cflqlbR8yviSu7g+ZLALxevvAlip2Cx5Mr0PYAqXDIfiwcCod+RI/Vhy+MU06MY3qx
ZYa9YXR+HL9M4U0lNhaHTVXDjalM4ZA4Fw6Fw3qOOL7q877j8Cnw3ZfEvutH7upvjH2nxTlv
GxX85ti7Y4Lz3JnVa2PHn8X9j69nSxbLu0bRYujUs0KgECgEFkDgN+I5vxzPWuDhYtHfEef8
ejx7MYl6VggUAoXAlkJgMjLJ7Z3fMJm5zj32nfH990xi5DXP+PYRlR6sZZ4LlyS/nTI2kz7D
I+HmCz8SNWFoMuAmLHwTJS8csjMKh8KhH5alD4vogw8Ovisu7uFafviPtuaP2Jc+LKIPy+/9
bSNZ+lD60JR5SpShWHjr8QoUAoVAIXA0Efh0vPDNK//hzKzx6g6UH83WVtmFQCFQCCyMwLSx
8NUcRlwYvXpy+NsFBcSUDKQlO7pwSIgKh0Vw+FQ8fEc8uqQujRW4Ox4bG7/JI0sfsoMKh8Kh
H6qlDz0aFV4ZAqU9K8OrpAuBQqAQGCHwe3H5Kj4WnuDVufBSokKgENhOCEwJmWwnUsoXvsba
OyUKtCRqhUNCVDgUDv1gGasP58Xx18d9vdjyw7vj2OULbx7JsThsnuptWE0Kh4S6cCgcNmzQ
bduCahRt266thhUChcDECLCQ/V+f3xPxkv52ReGPxPNXJF/ChUAhUAhsZgTYyc1cvbWqW/nC
1wrJYT5TokDDZs+7LxwSksKhcEgErh39CbdAxrveHA+38EoDB+KJlSbZDPI1LrIXCofCoR+P
pQ89GhVeGQKlPSvDq6QLgUKgEBghcH1cvmokfrW+F75q7CphIVAIbD4EpoRMli98vVRvShRo
SfgKh4SocCgc+sEyXx+8l3lWHNfLrCh8ehy76jc7V1TQ2grPx2Ft898quRUO2VOFQ+GwVcbs
5q1njaLN2zdVs0KgENisCPxwPON9E/jCr41LtyIL36y9UfUqBAqBo4zAlJDJ8oWvl55NiQIt
CV/hkBAVDoVDP1jm68PzY9d74/O9zIrCu2PniuQ3ifB8HDZJxTa4GoVDAl44FA4bPPS2YXE1
irZhp1aTCoFCYJ0RuDle8C1x9qoLeVdc/LWxd9XJK2EhUAgUApsKgSkhk+ULXy+tmxIFWhK+
wiEhKhwKh36wzNeH8+OED8SBXmZF4Yfi4IrkN4nwfBw2ScU2uBqFQwJeOBQOGzz0tmFxNYq2
YadWkwqBQmCdEfiDuGKSg91vjWd+V5y3znWs7AuBQqAQ2CAEpoRMli98vfRpShRoSfgKh4So
cCgcGgKUof21EXTGZD9+eXs8em4c33LbKgE4bJWqrms9C4eEt3AoHNZ1oE1F5jWKpqKbq5GF
QCGwdgjwgt8WL5zEF/6P4oz/GZetXY0qp0KgECgEjiYCU0Imyxe+Xko2JQq0JHyFQ0JUOBQO
/WAZ6MOVsWt/PN4LrDT8s3HnvnhspamOuvwAh6Nen6NVgcIhkS8cCoejNQa3T7k1irZPX1ZL
CoFCYEMQeE2c/YG4csKivi/OnzCHSl4IFAKFwCZBYErIZPnC10vfpkSBloSvcEiICofCoR8s
A304J447GId6gVWET40nrSLV0U0ywOHoVuYoll44JPiFQ+FwFIfhNim6RtE26chqRiFQCGwU
Aj8TF/9+XDFhab8Uz5owh0peCBQChcAmQWBKyGT5wtdL36ZEgZaEr3BIiAqHwqEfLAN9uDRO
ujEe7AVWET4pjllFqqObZIDD0a3MUSy9cEjwC4fC4SgOw21SdI2ibdKR1YxCoBDYKAR+N77g
P8ZFE5b2G/GcCXOo5IVAIVAIbBIEpoRMli98vfRtShRoSfgKh4SocCgc+sEy0IcT40nvj/t7
gVWEn5j4ZPkqCp0wyQCHCXPbuskLh+y7wqFw2LqjeLPUvEbRZumJqkchUAhsPgRYyP4vK3go
rprkY+GZybvjks3X3KpRIVAIFAKrQYCdXE2yrZamfOHr1WNTokBLwlc4JESFQ+GQCFw7+hNu
gYyf/Hr6ZL++OXkFVpFDjYsErXAoHPrhU/rQo1HhlSFQ2rMyvEq6ECgEphuBb4tzJvzhzMTv
5+KSyR3q090V1fpCoBDYLAhMCZlcri/8KbHzhC34Av5R1KYpUaAlES4cEqLCoXDoB8tAHz4c
D14f9/UCqwjvLl/4KlDbHEkG+rA5KnUUalE4JOiFw1FQvk1e5M7Y8YvxrH8cZwosXtXSnsXx
qaeFQCFQCPQIXBuXvj+e28esLuwbKeULXx10laoQKAQ2GwIrJJOn/F5c5QWb2X8v+fDh9uz4
xnheRh6Mc182vpHLkRmfcjZW6S/ZF7tmb/0/k+cTcXoXMz64XF/443Hon8enfiwu+NN43t+O
PeMzq9gOgRUqUJdyewULh+zPwqFw6Ed2rw+7Y+e98Xj/dHXhyX99c3XlTpKqx2GSfLZ62sIh
e7BwKBwmGMuH7ooP7ojrRv+uf/Yoo11xyZviwJtmIq//mXj6O8bR4uXILFWrA++OB/fEaR3L
3/W1cdJNcddSCcc/33vTkfVEW1icd03EN8VTc0nx6/Gcr429Y1PXKBoLS0UWAoVAITAWgQ/E
lb8WOWWMfb7cyOvi8lfHU5crXXKFQCFQCGxiBFZIJud7o7Vtxzs6F/WuuPRQXPzGYZOXIzOT
+V1x6f7D3FgmZ3zsSHgmx+Pi/P3x3PfMZj66nV/W7OPu/7G+8H2XHF5M3Blxy9cfDt/69og3
xef8k/xvxu6fi0v9E+hyq+ARBFaoQEcSbrNQ4ZAdWjgUDv3Q7vXh6XH8J+Lh/unqwg/GwdUl
PIqpehyOYjWOetGFQ3ZB4VA4TDAYd5weV448xe04yq4Lu+wejYfuiZPmfc91OTJy2bE7HvjW
GT58w3Vx5jfFU37rcPiMl44Oojwa+/8sdl1x+FDKjq+PPafG/m/uSl9d8JJDMeMC7/+eHSe9
Ny6fPXlz1X3xxW+Ni740Tm0yNYoaFBUoBAqBQmBJBB6IL16T89w/ExeXL3xJtEugECgEtgQC
qyaTI593uqVnfNizB8SH7upZEJYrM3vsm+/8qtkD330YAb909uj5nDxnCxr//1hf+HjRjPUu
/5vis/visbw9JZ70yjiLU/wNccHzu5PpCV9dC4FCoBAoBBZH4M6ROV1cZjlP74rHzo7jlyNZ
MoVAIVAIbH4EFiOjCz87ELddF7vOnhXY21HT2bjh/8uRGaaZd38g9n8i9jgaflzsfk7c8kPz
BFYRMcYXnrm8Iy5u7vAW2Bcvfm6cnP26isIqSSFQCBQCU4gAE7omvvDvivN+KZ41hQBWkwuB
QmD7ITABmWyu6OWc+V6OzEyGS/rC2zF0X0eZFV66W1bsC5fl18Tpf2PucfDPxaM/Erd9RfzZ
DfHA0mVOh8QECrStACocsjsLh8KhH9hNH/5NnCt+8o+FZ+Ynb7VfdWg49OBMYbhwyE4vHAqH
1Q1/b0PeOOvz3hXnXBV3vncmo0OvibtOj7NHb2Tu+MnYe/DwWe38NGG+PbmQzCoqMpPVnjjn
2+Lgn8SBVaSfn2SML7zOhc+HqWIKgUKgEFgdAm+OZ/KFry7t/FSOhs+PrJhCoBAoBLYcAitc
krWPlviy35FvleR3u/PIxuyhbUj0LLzdznwSsJPpAVumL1ySmWoskEmf4ZFw84UfiepCY1j4
G0dzRjZp7DdSVghcV9r2ChYO2Z+FQ+HQj+zSh4E+3BjPvzle0EM0SdgPAE2SfOPTlj4k5oVD
4dCPvtIHaEwJCIuz8F4rZsL1vfAhInVfCBQChcAECKDgb4+LJshgTtKfWrus5uRbN4VAIVAI
bCwC08bCj1kS3tPj2H8V53oN/9vik18TN7479i2ZZJoFpkSBluziwiEhKhwKh36wNH04Nnbc
HI/0jyYJnxpPmiT5xqdtOGx80ZuqxMIhu6NwKBw21cDcXJV5d1z6+jj/KbFz8WrVKFocn3pa
CBQChUBDwOm+b432Ta0WvcqAn+FcZcpKVggUAoXAZkJgSshkO5GyhC+cI5wL/PVxy+fj8c3U
TZu3LlOiQEt2QOGQEBUOhUM/WJo+PBhP/PEavU0v/+NiR1/K5g83HDZ/Vdejhu0LlVOOQ8O2
cEgoCoemEhVYMQKlPSuGrBIUAoXA1CDAQrY/JIwvvFGxyTHwM5yTZ1I5bBgCa9j1G1bnKqgQ
2BgE2MmNKejolrJcX/jRreVWLH1KFGjJrikcEqLCoXBIBK4d/Qn7/+rY+9F4MOPX5HrH7K8a
r0luG5DJlI+LF8QpCXKPwzRT8x6HDVC/TVtE4bBpu2YLVKy0Zwt0UlWxECgEjjYCr4qzPh5f
+L64fA0r8uvx7DU8Zb6GFausxiIw9vM408zCx6JUkdOJwJSQyfKFr5d6T4kCLQlf4ZAQFQ6F
Qz9Y6MN5ccKFceJn1u4DKfI/oX47s0d504f3xrFZx94+PCtO2vQVX68K9jisVxlbId/CYSv0
0matY2nPZu2ZqlchUAhsIgT4QR0K/+k1/cL378Xl5QvfRH28VFV+LZ49X+Qb4qz5kWvrILcP
M7+IhWLWtuiFSqn4QmCAwJSQyfKFD/p9zW6nRIGWxKtwSIgKh8KhHyz0If2g/yvu7+MnDD81
jjsvjp8wk41MPuXj4vg4Jjluj8OFtjQ2/d96UHN59jisFIP1qNJK67BW8pPgsFZ1qHy2KgKl
PVu156rehUAhsFEIYAx/EFfwhY91fK66Fh9b64Pmq65JJVwOAn8cz53PHW+M589P+y3jPio/
P+38hGNjxvrCF8ptbPzyI8dWYGzk8vPcMMmx9ZwwcmzlJ8xzcyafsKVTQibLF75e2jslCrQk
fIVDQlQ4FA6DwfJF8eT3x30/FbcP4ie5/fW4e9dSP5854dQ4SfXmp53ycfFoHEpMehzaYfEe
rnN8C36pv7E9OzZyoZxWJLxQJoP4sXn+szhnIJa3PQ4Z86LZz8iMlV/zyEFtB7d9cYNHg9uU
HLva6TNp4UHyxGEQ2YQFxj5afmSf1SLhsRmmfP8ow33MSvNcZtpFst0Gj5b41Z5t0MINboLP
kG1wiZuzuMIh+2V6cGBPFzGp04PDIuMRPl8Yuwg0EraI8IoefToePXaBH+7pne7ZR3039eEV
lTih8JTrw12zX5bscfiTeKBHdZGu8aHD+U8xvz7yr8ZpchPTRz5j3KGX5410si9aeKwP/tsW
4NCp1YMcvmgcjX7aAuemehwG+cy/7Vvk6V+P3fNlxsZcOa6lYyXzU5KDgga3fcJXx1P720XC
YzNpkT0OLTJzG9wuUsR3jOumfzJ6JWCQSa4WBpEL5UxsmZJyGEh+bey1nhxEtoIG8Z+59jfb
o2kIFAtf416ev6Zf4wK2SHaFQ3bUlODQzGgLDPR0SnAYtLq/TTb8VbFH5A1r96uZWcT/jvuP
X4CFp0Drl+eMPsThNmflwdO83YDrlOvD2bMe7h6HE8d96OZvzqWY2Y8vnMsm29fH+47bP0v0
+8gMf9NcyjiWms9PJSYd802XUiZfC8ba+/ivjzOvGFWyj0x5MQNX8TfGU+eLPX3cguEvxJPn
V+y02Cn5IIck3IPI80drgEHk2DyfMm5n6cXj1hV/dzSizx63unjNuNNE8+vfx/T6IH5Q1V4y
w2MFltwWm59PH5N5jl2G9WKtAs+Nk+fHj8WK2HxM5jdhg7dB5ld+g2OKha8x4P1ado2z3lLZ
FQ7ZXdsVh/mms6mnR/Of9jjgo/71Yinfp2rh+Y9aQRkgMBBuAoPJvsXPD7Qc5j9awxhOx78Y
p94fj//5mv5kjxpeH/d9aqlPH/oQHsbw5fGU1qK+1X24CaxfoNeH9Stl8+Q8gPeR2RMpPQ7I
00BM/XfEjvmRvnTZN+0vxalkBlz8qji1l8nwU0aEdfAib3JTDtQBO5cEZ+pXa2IWYleDsp4c
O0+afQO1f/TscV9jzKM4g2aOjTx3HNlNyb89YsOtrKeN1jm55myRz5yLW8YnXx8kz09//p25
eab8P44zW4YCZ44KGnua6PlzF0uZKll7yyFL/4rRxoXIXh++Ok5vYn2gB0pyt3hwH3l3PE7+
5XPrqe0p00ueNfJP27XoI7Osp8fx8yO/JE69pMOw7aL0khTpslEvj9058R5535YMp3yLv3Sc
krSn2y9QLHyN+3Swll3j3LdOdoVD9tU04MAEm5tzX7g5lkS2f6Bo4QEzzngC6VFrt72m9zyA
QHs0EB77KCMHkplDe9QyFBgb2Qu0cF+rjMy0TaAVKpCOcK7EY2LHLfHImrNwhR6cJXatAoMA
/m0NgDT8UDw9Z/2/NfKzqt7lI2/WiranB5mv9HYaxsUimDRH9ZI4PHmuU5ZrXH+dEcf2fJRS
KSs7sRX6QDyBD70lntliBLDwvJVJiz84Gzp99ivmIvBXZaFisw8P/49FcVUORvFfjqecOree
t8ejJ49ikmW2TNJNOziXkpS3mY4UvtO5rXmkP0vhO28ZCqD7rjDpI5NVewejj3zUKFngBMuA
Rl/ccc2WQ7LD4+ZuOvHEE8hrk/SbAMI9yG6Tfw92HqygPPp/Zll46oPzGyLnt0iGr4/z+uXW
VaMGDjzxuQIZVCDp74Cak/H3N+cuNr5ydHvBXARQakYe7e5bunvU9lNj5z9S2e7PXHBBnDD/
lYavmbeu+Po4S7bnzFWzAcJdxtszWCx8jfu1X8uucdZbKrvCIbtrm+GQ80q7Cvy7eAZCwDnH
o/b3Y++Z3VzY3Es8aib1nI9NGOYDU9Fg0u21W7ZmGjQ3C8pHwnnbX3Pv0lVkOmkEBvw45WVi
jzXdM+mJF9OyUr0+Fbdxe0Qsa9LyEWhP+4B2NZmscytCexHfa0ZHM++PJ7ium8BaBdC1+aVn
5v88znlTPPOlsff5cYpjD5fFyS+MU54bu3jCvi7O4Iiy++8zeXvi2L45mXahPCes9jYbF4ug
kQAONtlBnUl6HEzG/fkTBIXMgKAkY0aXe6cywk2yd1K2hM+Ze1og+a6VWE+OPx4PoU0nzaXR
Dqnjyph9X3MLyL8SpyGjf3cunUJh74nHe4aHCObZ9361oFYzy4VZ//EoOHM5ZVR0kumMNOI0
/Hvj/EZPM/7ikZd0cAz9oTio7S/uCDeD89F4SJKB1//ACKi/2m0HkUlmP6DduVrobZR+zMqD
pQ0KgVxs9H5rkXlIAz1tkgr60lG5F81ltw+MFga5R0Em9eH8EYkfsNgs6NlzO/S40Qpk4F+3
ESGrAYnPVXqydk/zLx35jHbf0lyQ6Lh+3wPmXxinwCo7K5PTQ/FUsf/VMGbQq8eSNyVPYUs1
BucFc/cH6IlNm17HCN82WoBlqmm4Fgtf415e0rexxuVt1uwKh+yZ7YdDm1fMNEgDo/zqOPtV
8VQskzHF83Kb0qN0rbnN6eTK0fyB7/61OI3htkOKCkhiAktXsduczCRBCs2siIj9X/Mxpmh3
mJMGO8cMBr9QgxZ4asJW6NUzXHOXUvxL9495IqukR9SEn6kd+iQjUuZmI5NWNs01/VV5a5mR
p3hV7wfj6SJ7BiN5/2KWgjKVSGKakEXDyieiE5Dr4t7UjbW95nw8P0/THkrRPHCjqXQnLmWN
xDuu45Lo9NNwvlenIdmW+XlOHrP9xsXimPSnbFFMHDdJc+KQXw65Ye7bmcmzvULQM9Hcu/fD
qz0LfzAOGi/I6F/p+OXO2HFJnPT43B0S5VoqWzDnKRR1NhySQtGTnrdxeVou8mj27UKssW0x
+GWLt4RL2jQ4145b0LqetBnmH44He8IqEzpGkspZFrY8BdBiC8u+Sri1Chj7zXmfyYkppf/a
uoGf7uFkw5mtgnLkslG9Ys+sYOauYTzNJcSLOmZPJtcJXzw3sq1++zyTxBvvzVZ4mhsR6GmT
FEjK2yqf+nB3POYRs9bvb+R65vTY2Xs6njXi9L1/Wj11qOSsZU+jk8Q/EYe+eXYngUwaQHXo
C3osDtole2ac8Jc6dZLtZ+ORE+NJ1vDC7U9CyXttpIe07vZ4rI9Uw1xa9Is9FaC6suoXS0aH
CaLlPw2BI2NpGlq7AW3sfRsbUNymLaJwyK7ZTjgwmhqFB5jG9sVju+IYTBotNg+J3x3H+sfj
4mMdqLBdRbdmLDPK5+PxL4iTzYhMMI+I2d0e+t+I3TfFg/fFE3ti52NxSD5yYb7lj0BwO3FI
+2kb07B9T9MqEu/TIiR/P+7DWt4d+0whn4qHueU8NROYOE17n4yHTYGIC7+XSn5pnKpQnAMX
f1LsMGcQ3h+PPxyHvM7IaWT+/lux5454VHIyGPxbu28IqpX546GRC+0Zcbwc0NZb45EPjpyU
iLX54+Z4mJia277n/hEw+cnZrOkIuI3d747zeObSVycrNQTXmv8NjgRk/tllOHfSgr5Qfqm8
NVvzhn4+nvjyOA1p+J34PI8jfD44+wqpFcV/iM+ZHck7SzPWka+gsfF9iX14O42Lvl3CAyhA
Cpk8opCSuOn/jHuS4ObnIHKpdl883neT8SWr9850x+FT4M6BGBoycfA3B10Wl760VO8swlkU
dBkt/qO4/2VxRusa6kfYEPAvJV2dHjEEzopje85Nty8dldufHlFPo4Y/9WMjT3PmYKDRJa8d
98eg5e9E+18fOc5bQQIfigcwPJh8Q3ws463eMTZnpVozM179jZT/d6R1GXNyHKPVSH+eDMlI
V3bmc/HoIyM+1yJPGAF12uyeg3j2p18SpGQOEGE5tLSWBHnIp8UIGONfNmKleaylPWJMWrgF
9IWcDf8WI3luWTBKfWQyZlSU3dNNOS60kUw6qlNYbunLODaOaa0QmSz2jDiOt6L1cttVaAeQ
ZEJvIMAT/7FZ+6NEpvWVcRaj2q922Gcq+j/inis6wi0rNVf0vSPve9bKatAuCvPeg0AZHown
SMo/xVzZ/1zs5TXjqQEVlW0S9IxU6Ge7vmg5bONAsfA17lxr2W08wSwfrMIhsdpmOPBmsdGm
Z+5hPNusbArstcLs1Z/F5D65KJ5s7md8zcpfGbt5UzjScmq3XY7+os4mLQ4YE4ys0FZ0RAxG
y7etOF6cE+MRfHfviDrIit/XXI7u8+xivYdmqP8x5h6z17Fx70vi1D+M+3hicHQOtvfEPTix
MxgfjQfxS9ODWefL4lQT2G3xCF4uB44fMxkyajZCIE6JnTgB6oy+mypQBwRFfUwPEn4iHpZJ
rg3E+yQcD5/lh7RkrA3kzIVpAXDnyCGEWr14FqX/GZ9fj0PhcOOC6jsiw9YVumPgvhqI6bLc
6AeXFRFSbptYT0Dmz+MBmVrhjEjA8eBqM2tO+eLb3N+HB0W4pTn9J9K32bho7QUCrtNjQlF/
khuxY+cUAzmmQoTFc/Fm8vfGvc1P6ehUO3uQWygpQ8EEPh2PtLO/bpEY62GrJrqaYq6GicGF
D2WSjLcGpicIWXriM9J4ERDf+ymNAmqMB/e0SW4GL9ZOsTOtKwJtBWuxali1SG5UN0ZW7+E2
hHnrDe1GE8mj7wbUw3EQ72/JXxZnSus2PbgZz2j0i4eM/OfxNGmFGZaMcc1VzcvnHlaGUu/C
T2F7cXkAvaEtnmRfw5RkEHBNXdYDYjgMdgAII/F59GXAJi0eJHd4D8dNDVHKrSNOTD7rbFxY
mOV5ax8+yqLzKjmX+f+J+9sHdtpTdL9HBmO2tfW78fnWXhsII5N1LDvZryKArNNvjAeP9Nzo
KMtH4iFGu1c8xk0ldX1PzVUgl4UDF4A8bxn1aashFz53DEDy9aGMp8Mg/ciML+bIcsWE0qtx
y2EbB4qFr3HnFgVPQAuH7YeDmTV9zGYR1A3vnO8xGgyn3BduE2QLNLHm70kKLt4kd8Kso07+
JpIvmPl3ZBsUnybW2P9oGphxEGZlklLkSiAZABdvFpdcs/e7cFB5ZHZJH6R5Dr8xB8ic59vW
+b54FPXHPhEIyRF6LUI4nGVE2VGfzNl0gi6YY9KJJRPUxKO8TZm8mvAaRevjJw9jCajVIHNo
NApuXsy2/3Hcb/Uyv0Td6p+J2buDJl1TaXJubkJ8Dhcf4XCCgJYqCKXwVpZVR1tXiMl4mQ9q
MihuEfuQmQzkt9Bt6nyr8HzOhN2m39duD33AYMBuw+GOeMyaM5vfTqHgpulDlSGHOj3kPLb9
Yr3UihitMB+yiGqudDzMAlKP3xQP+a5FSr42nkYfHIhCfXovqT0cm042cDibW56c0JbQ/y3u
6Y8lOMVEB6xO+0hJDD8NyUZlDrgmZ6r4XtOsCW25aE5PzXln/yweOBAH+4FpVYzoI7hJZzNP
kg5UaLt2tXpqXd5ijS0SSv612xZQSfC2V2PF/8M4o1+lpKSG5LYAgt60kV1Kat4sFWHNTElD
vpXyD+KMjMRZbWhkPGqeXJPZbEBpIN+EZRsrl0sg48JbHFi4sTxYV6uA4nxdp1ld5it5tu5L
Ntzq/3/igKVRO4TNDQE9GvIHcd+MrZz9s4Cx5+Bfv6ijTg4B2q7xGsCs4MzhIvUBIKVtkRaQ
vxf30lsUv0VSJGerjILeK8CAWyf8SNyGizdJ26EsCXVSsRYpK0W322kIHBl109DaDWijtewG
lLL5iygcso+2Ew7oAtJsJshpoE0Gm18bF69h4y7EHCNJfp9+97zi8cngk9DnWqJRcKlsfHPP
N86dJzjnF+oXLnGI+fFrEsOh2E+Q8kQgWs6Yiv2B3497+d7eFXf2pKHJZMB0blvAZxMwLWcM
HKT5O3G6lzjxQmeIM8Y65PvjfOyBtyzRE5bc3kUegMYPsnTXVo0WxjhbZBbaHrmVVd72kSm2
AddBxRYqMeuWp3QGMhhki8G9bPgQsw/TIi3hcFOHtjGbjGzEqJ30aMwbQUGnWto8R4SQNeKC
9LhFyv80Hmzd6uSGJaXeQQTbySL8Bqe3BsC9MOyWpxo6zuEkkkcZmSDcPJLp2e3lsQufc6Sh
53yakwrfkzZa4QdiLU0x7FbQV8RuvFZ9+hapkkYpvSfHNBAmyCjS35IDU7Y4X3+oAw1VKzK/
2VG35ul3nqclf2mcni5bS50WacjkuZEGnUfqY+3ku439MRXvdCbX7NcAInFTLmpnM6wxMlsr
WChRY/wewc1I1Da95r8Yd7V+R0x1HwHNzFqZLzDgXMjpIxtTmZzLX8ApcDS6+em9DCMrYw0g
7ZwbEq8C6t/WxhLC1iJHs7nS+8NR6e3+rbin71B55iKtX5VpC3+5lZUFeVbJ1YKcGbw3Hjcp
tEjqBGfN6cFXJf51Mv2yimRaUdsjLTlnec/pW/w2DhQLX+POXcTHs8Ylbe7sCofsn+2EQ/7i
zEDvcva6Pu5NnvHLcVe/49kL9/NxbiLn036q6+X72a6P36LhD8SBfxef+bN40ETrb81bwTff
ZneZI1JYS74Jp0cwpN+Je/8g7s9XAM3l/pkmsSKn8xeqTHP74eIyx04cRuLncziecwuxcMBA
pOMTPG35LWG3jY6oQ/6C49+P0xGI3HkQiWNlDQd03COEdeBLFulfymc98zZj+vAgpiXJHAaZ
DLLqb1ueIn1bTeVbVinmmpvmzX3bF+GMdRNDT5NYO7OUkSQxHlzEv3STj6jY4fVSGwvpys2X
9t43+zpvyjtsgFvfOHsyOw8ro1NJcLMUrmUBKuETHO2sQjJCfEeV7p1lorlm8OYAeeu0TJ5X
JPj9cf/ggxXYldK5MHtJBRFzXqWP1HZDnq+0j7TEVboDOX1kHofwukUfmcsMa8sW6ZyY0i0w
Bj89+864A5nrKSMHgWUMgt4fFsc+5SC3/ugLBolf6pT+DDeZXGn3x51VMtfnfZ5W6bn2Nppa
PZsPu19ya0iW65SXfyns0Bf+SuEbYTVfiMynVjuNcOeqjL9chdsaJldNuPh/ibsbuzXKiBmP
ztH979lXOzLD3GFoCwORSs+EraU2TIx6emgXxXogE+bV+W+BtvwTJulcIpvWWpSSFiHOmfQd
qu15wOY93bqIMIgw/sGnCefvTmS22/W6viy8N2dbCMFJqr0e82tCN0mt5DBh8pV23/rhsNKa
HF35ZeIw1qnW1zy/ItLHbHCY/vQOj1a6A9A/H/v+U9zJx/Of4y6eEruWdr3NFp8YEQVzszPf
/zFuN3mbgG3LIoW8L23KRwt+Lu5kx3ndsHnTIUn5y/DDo+kKf3WLLErIP2RXmk9XtnKTJGd0
Rfz32M+lJNDq5mkyAwfHRapYPmozVpMUyHOofcwahk3SP+UFsNGfidbfGmbesmpjPAN/DW0Y
/XE0pgfr1+Lu3x7NgtCG1XfFLV8dN5pxkYDl/Jwn9y0qMzqfeiIu6EwtWuOABKr9LXGO0ykO
AvmAA17YDo+OfOen+IZdO3qEJYjE1JOUOw6btZVP1pYnLB2ErV0CfdOcgXHrXx6YyTCZNogy
Jr9KKZz5tMOmTV7AKiJvm1hfaAv3XzgR2YT7jzm0E/M805mQGN6GD7ntz0z/SRzgGkxO41Ge
GHllPBVJaqQTK3J0gSsUfcFpMkOeYMqPe/UjMXt2cDrZYKHzOKulbFsA5GFumdD/HFOy/fiI
5tIB/tTmNc/i+NdVsiXPyCzojaOT7hnj6hejDK7mjs14PnLJm389I73LIZCWIWNcNQq3/v/j
zhYjkIj1BxhE4meQ+Qm+4+4vf0m0cVNPhP84DmjRYKQ7neypE1ktNXj1F91Ix3/GW7ck1+yX
EMmhrUV/Oe5uvnYZMkq5zmkrqD+dJdn56zmZpxMb/OU+UNOKFkhwaM6vxf40XOaLJPE2oOTT
iKxVloLUiv8Cvc5MUHPW0saUW92akYlb0vdmDC0VcplBwdqeQ7qcs/INvVSSPKDSlCRzzkdt
jZGR+ftTre0ZyTWjsaaAvHW1MBDZFvxtBCmXkvySHuv+Ukm6iG0eXBcW3iAGXh/eMCyPSqHZ
uuXMr6uu3iBhm3WSog2eDtAe7FYPnq70dvGy5LY4Dn1yZ8vc9jFZmfkxrZKLPGoyywz0WS3C
dJtYC8i/D/vF5rElNhwWEugzGZvDIpFNARaRGTxapI29ZNZqobo1O/5f426T9H+Iz9r9RJ3t
V/p0yR/G/XxgvxH7TSEEXh+3iOctE8Or9wtxFwrO0cJrjrWjpwyxc40/Hp99e9xhkjDJObmB
jiMQb4nbMUj/3h63SyvDt8TnMMifi30OPl4TH/35uMtEaxmAi5tNMfsPxgMmaRSTxZfkv8c9
nPQKRX1+PG4zW7hVf/Jvi88JmypMD6rhESaRvuGcp++JxzRETVB/pZARwOwxgzZpAc0mrwny
N2O/xuKyyfsVJ2fxvxp3K6t9nXDx09J9F6w07L3P9NW1hOklRW5s1ptQcxEigGx5ERCqKalf
0HG33Fcarh/76bPlNgjgQ3lKx7nzZAA4OqptwwR35IP/gXg6Mo21OIuMdDosa/te/N+L07l4
1c1M70uUnL5eePWxSxkiQ04MIxB5KvqaOBO/x9fRFHrraSpk80DzqedJmPbKlw8np/9YbfNR
XpOCZ/K0hBnmzm/tyhieRdV2GsHgEuONQEsLeVpyuE2ZTGL90J9v1lIftWy5ZcAJYDognMwp
kxsg+BPXYDq8kwfbW0jXYy5OaLLuyMPfdFIO0tJb2gVtnLXtFHFC01Jp1Sc/Pk2YJojvfyc1
60MPR2eRZ9zkYtKA/K+4D2V3YKAxUXBRdaMS3UxlyJpj/Mn5Mre88g3n08wzI/FsC187MDkc
mnwmbwWJN5xFNl+sGLkZU9ihIclQtLSGnsrkkesWadxZbAwOYFwb+/IFR6d0mqQ8LRqtHlHe
FokHG8sXxQncyS3SENCbbvt9AIAj5eKNkTzDTUDRSCQNsWnQksuT+4CeN9LpEQVgoHxextqg
NUpaJihblOzWfCFPpiaPdNOBxNZT8Hrj3F5TWxdZ9hDOF1j73UXGysJGoX2t1JnXmfL7WmVW
VUK9k18Qb5sbcBu9GTJDoOlASvo4T1vPeFUgI/M6U8xodyVv80qdLD5TsVu8V2VsqWHnLUYg
NxbysErGc9Msx/70mWz18Nqz8OY2SO1JgBYJe5RPm8z8gEyaWIYXynZs2u+L8zN5e5rJW7bz
M28xmaS/zZhWgXzUOJa1bC/QCsqy+muKpR3MTPo8+/D8fdtWRAvM//HhVpaAHPK2yfdPhdtf
XxOReZup2u+l5W1eM2EfBoXb9m+QSZOczyA96pcTbdLtc2jJG+Ct4fnItf1rCbOS7ZaAtqRY
PhIeBPokGf6uOK9VL3MQ3xJmuN0KZDj1IcMtsmXeB9rTFO7Rbsn7EltkBvpHmW2Lb6W0mJY2
U7ltj5pwfrqhPXIIwSPTsBkCXUZ8vydu4Vj9r6MprSeX7Kw5lS/qV+IuUw7O8btxr88LSm4i
NIf92/gMp6wZAndHDX99dlJEJsx/n4yHnJqQhDy+aKbBknFu4VfERxHx60ZZpStdpD1N89O/
jJtV6ffiPl55PnJF/ER81oSB8X99fIxYHhv93rjlP8fduLtDqxqCpquAhOYwnxR4ZXxMWOlO
Tpvy1dl7QqbPn4k7kdTXxqe0V4ukMvf791/iLnWWA6ZrblMolsOD9cPxGXvzMPEPZVclKNm3
1aJl7o2QXMWfow6tH32aI3OwBtB8zCD7KGvlUdZHANly/Uw8Omrv58lrIAzRx5+JO0zn/R50
5rnINXeTMUXsGSs16yPZ6W9zqh6X9fFKfB1T//Z4GhbLneyWDCaEpvMHO10gJt3h4hFlpgAd
xwgRTTRIzmJM80nWSXr0hnhGcuJvjrMdTxeJoCSjdcs3L3PV5nF3qxoe/XRchNNkW+QswH2u
5pktxqOSvo+pCQp9nVcGRp+rg3B+Pq9x3MRcDbExzvXmgFQHpXhhYPCGogGSvsN0n1M5ObcT
EXnsBOaU8EviKVmxLALJdhBFlVIma04heaYhrPTGmDFLQxXUvseS/S4H72ui4MZm9lEmd0Uu
EcQsokUacZYKCUWLNHYU4aRTxmQSgwKN9nHSJiag/v7pozz/QNI/a1TJvW+Qzc/IZORtOZR5
Wo3D3BLIq3ty+844V7x1Jl3NZVWrAPqoEy3/+t0AyxW3CHeuPAlLjuph/HkQWUzOqqpEcvAJ
8F+Ifb8U+6zHspS8wg0rzSnAIj8jrWZxTXrSSzp08Y64w5lpTcuv+Cvd4RAVMEL7AyFIsG0E
J2cc9PK5RpmQBI6lMtJsCdf4OgNFII9xt7IMVQJGKMncEpHcyP3F2Idht3dAyVsOay+97AAA
QABJREFUsW8WzM2LL1L/2qLMnZYGFIc3D4JqQy+7JotDjg1Gy9E+B4sENJrON8kRzg+qp6Vy
1rYRQq53mKheq78qWS62HtHLHjn3r+ubzDQEDm91rbSph+KqHXFdn8rndZgwp/JzUeuDvm0d
pmPsIRJmDoQZ0BYWYOOYgMwKM8uP9RJjocwTAvkor3nrVSG3zBNl7QXeHM80HYrpH6U1z+S9
AjElNlPkwKZjDAQyq7w1rhCF18d5RpR49e93SfpCM2dX2ia3/P5rqwNzD4dsSysik3iUgYZV
n22GGfE8TaUVUGqH+TIryorH+CWRNk22HBKBQYlZ3L+Oc82yg17IR+0qn/7TBy0fNqj/3Fgr
LgWyf1smAllKi8EsLZ2JmbEYsj55k6EDGvU9cZ6zfXRDNaiE5idXICZV9mNLnknyUYPabcan
7mX+MmzmpjUw83G1mX7jKH+GHhVrzfGoN/2ZVV7h3MQylfjUBGUJpz70SeTWKpl1c5seBWKp
DFklty0g3I5lZyRM8IzMqokJoF9s7ptG5x8g4MUXPFJHoGJZDfTa5mVqZsbkNTNJWLJirUVv
i2emW87RhTfG54wRs2kSZc3P5D4pnTkw7hQsI/MUcpoCo0xt+xL5yN3CUN3AZbxzfudBAo8S
WKydPrRUpmfThhb5J9KI8y8PMzRa2YTlnGnxy+xBMs4y2hSXihi2x3kvjNzn53h5zQGoPkg8
MSsEUJiT0jVlKjVH2vO1MBBJYbAEMuBNoil5WjMs36j0RQh2I6uquBms1ucsisz1+Bvjme1c
h+8PiGxb6ppzuAL+mzXFo+Bhsyysm1TeZEmvTJY+xK4r3x13ijTXGnTa7gyrlRJlaEfGM5P5
1+Yv1F8506MgmOJA0hfi8iNxfzF2WnHhl3l499/EeVgL2F0dG8W0TPaOGvOocelhA5ZS9BAP
4BhWHxRccj3OZuoghMl07suYuhIXtCOP66Ck+a0G9gercK7D6PBxQN2ED4280ccBUM2dJdBx
cMDPnELmnkcXVECrFYqg8yDmT3wziVYOinZQR9N45XM2SceHlQw98dnsN4/GI2Ln1C9TRn8I
Z0sFrE4Zc0dTLPbSiasXgO+RyrvmH+QRxDfEBSomxsuyKoaF50uH6XSflQ3D03f9ZZurVmOT
DxU7///iGan8JFEli0aVMRWCKMdyjmKtGC2KTnzb6PP5NhkouYUrzipVLqpBIRNcau+Igudh
9EyOmussTA7P66tk0aWD+sPBTApPiuGfPBL+9q/8o3VGYpqOPM5kymAnKXb6rRWkAugpdm5d
lIsZU4wxbs2JHxu5aYj0EbNvV8qS2NEp5LVViR1jIkbH4mfqmZX33RKL0vzAf0bSq9nFxpyj
0vK0qGgkXnIYWsjp4h+OC+gbxNjbtL3W7d8RT2N407LJ2dLdyiqXOukkph66XjfJpC1CZCst
UmuFaRjmxlpWVVsEdE02X554OQUGFH1uxMAyCRR/OU4b8HjyCrKeTFOcefIa2MhSjZ4XMbys
t0NuFhhSpaSlGnUdHB9XvewOnn6SKfyuuEPX0wcrhBbJRULrbBr8oG9vjr6QKFta2vO0FF63
q2/aXv7imdwPfi5uOHt2l2BucYvLeHrZ+XPSHvMdceUPxKeOn/Uuzc1tzN3qfeGI+Pz8rHWw
Wx+QpxaDp2J+KJ6eS0mPfiSeYTQaJ0wbFU95HgvxLaFIbNhTWsKBIV5MsmpzKgOdRFY+mYQt
Nm7bPCShMCWjKBJayRH7xnhq2o62AsvBRthu6ais01icNIV8Boogb25gerKSMlFnV8KuDLor
i+Pa/xlOtlkZF8kV0RbWUiWdSqsticxzMa3yNBImWtT4ipbKvM1eufeqXXA2ryQC/Y9pybBh
JSxnv9rAlMMhq2fSUpCecuvHHeSgSs50+gqVokV6mpKgVhP1tzUsJleoubQlY0Q55ZY9kr+g
ywISNrfJ0FtNDa7MzZXBcljQSOOVIYb3KNEc5tE/jbPJ27l2ZlTO0M5ULBFa5ur2W+Oc5FKD
YY8AKRFi+RPKWW5Kis989IWy5O+2Kcwr4kzYaiZHr6eKTiom0m0aGjjDs+GfuXmEwAkjBD7F
qtV6JN89N6PoUIDQN3Wgb5nENZ1noEtTCHnUIU/Qaq85WC9oi216r/PLXynq7+14NVTz5Hnt
Z+Fl2I6HNm1RkyxOWmqWaqkJ2fD2lIzdcKqbbVQTM3pm0pCnISiXJJkqSVW6ptI6yySn7Swx
b8X8+47wuc1/T7v6r/diGc7kSRDb6u7H4rZcQmSGSaMzk0xlSmvZZgx20mIyz7z21NMioSVv
LOR1cXPKyDOd+mRMwK6c66+Nm+WjAp7mLCWAsqAIBIT5jdKRL2yazPwtPCzghW0CuDYKnk/X
1ReuiBwausz3B9w6bKCBiUZWoF1F5j8xAv3HiUdu/pkT5JYofxQHOFacWvnpuEPDTfbYUtIg
pNx2R8twwgCCS+cbMUXc+UfxISY09dwBGNbMiFMQBvyv4lwE1wewWRU+Y8d2BdKlihX9vdjL
O+s3wzngfe+FF9BYAI4c2AcD06P8MgNJ719yzNN/v5WYeo4HMAW4i6JVIAeF0QpYxtwaICl4
azJXiGPcbrm9eWcNqytGv0hCGZzNMI4sCfKpcqkE3TCcUUCRrDe2hOVnfXKCI58r2DzgmzaN
viUrTTMlbc/RTShmBJGZQ56m8FkSMf5wsgwAMH/F1q1jzaYDAUY4JzJhZYkcrQeOxXET8NYv
Vi9tE4Axzzz9lI9UeXIm51nQ8RnpkRQwrwngZ05WZCUz3tViY/SrPU+2kmmROVul+RJp6tFl
9A011BdZJf0FQ+tMVWoJrdbEywq2+cppeySQkGZMzoA4X5LajGwg6BGTTvt+H5Nuz82CJ3uZ
sC72zyuhPz1aZlCSfOf4J+IC5ihzS6ubYVd7ZT0JZueb/z4/bJo/CWwBnOdDqJlUZqucxXQ9
HAYHcvSygdNew8iybCeqeSYXo56slmWJMIWRv5gkWnm4xTsJmTBNPfNuFJgBUzfykdWaL0G1
qTMjrV2tNLLyYmTrqiCLuoZkUil7hrR38Fkt2wiS5BZWZuhqvPQezxa/DoGdPxeXPy/+nEN5
R3zi4bj8T8aUsaTM/b8cD58RT3npkbTeiT/uI7PTwZHohUOr9IVnhr1H3CDMyd4inQZTF6TW
P1bbgKSXWCnTZrzpDE4RBpfBctjIkvfJcYj+mQkMSEaKC4rJ4Hb6izO/bbuDbfpvsZ95NeSs
EVnnLxh9vt54y/6zxjLyuQcoqHIFuAEQxxxyKpbLd1OLp5QG57Czhs24xaed2kP7UBbTLeum
boaKWsmBCaZnjKskRiAx26ZGuPGGEWIklox2wxkIQ5oDRsDajvabs40xhozXhCqz/vmWiVK0
wkiw+pGEW9oxVsbCCP9knAQT5sxekg+42uKxTjCdWG4a+aqaW8MOWWqI4W08MEnk1ZatNJwQ
Xy+0oX2GnMWomRIjJMO+W59YlDO3eocVA4gKGNUSKiIdBgIgvSbOcixMKbrM4LfWJyxeVzLZ
5I1P6x+gaamexR35QkyQ+pcvBEoqr1EG4QNxN7tJVTTTot9ESB6wukBag1Pd7JoxuJom3u+K
61BAGdWegs5RPJ4wAxWGvzTz3voxeg16VkcMdBpZkZBni82OGogu51EzlTcrQDvdNoq2AjTs
QSGtV+AdPgYd5QEIjQIp9Xtp7KWfFJWa0QfsnB+OAqiPOugUbJWi0gpTHcuLz319nJMvl6Qb
Q/1pEecN0Cit/cd/Hxd8a3xSWLZqizfgN2ChmSKxH8sMmPPfQNWIkLntacJWbmJYQypH9yjJ
T8aFBDSKtxsskgCQr8U+tY4ww6nD6Hf1dtIZU6BW24SlUQYOmuJWQ/KF9Jwz6I/Jm10mAzGj
j4Dz0Jqm/jpFoUgD/xN5HjsMVfMV/f3xaVetGPtHRnxeUyDPx5sgc7OrPeolW2SfVmQrKAXa
bYq5bQw7y5qf5/ycpWqRAplnSzgooq9PFpFXBDfz6eWTdhsCZHjgWimZpL0n0Oez5uEkPWa+
dtpnySLUM3GwosiA4ygCtNQEzJby2HFuMRq2Iv3OovOsTBM2aY1KSYwXyxgWOw+Lt+Icz1jS
a96EVxFIfpwJ02PaMslzF419is9jbCx8Kn9Kus1fWEx3TEYOmEFGpq/EUJUkY5x8MIS1Gi9s
DIOhwGYMTD/faPXCiL3TpsvsX0ur5kkEsVUWjFM/lzSGfK9OyU2Na/2S3JQRzk1RXWNEy9gO
0pvjIrbXPyt5ObMMVrNm1fZZunRkEM7kilaKynMks9JWOwa7pyKZx1weMBRmLqZDvEmNYnO6
W9WYAhJqE24yfr+0evms34QwHwTN8SZA46ysUxrJmTK6P8pjamBYzD4ZraUMOLNPqdrPCySh
FGlSIJZOVmsAlhZl7LeIW958ty3M48DyqFKLyYBh4mBbLlfyxU0d6pFhy8YK3DXi9yaOPBXt
c9c2IphicwoPjjkX1clsmWueXT6yXgkZVXMcqLmHdF8Wav6SxGSN2Tv74RedfiIuzN4xLUqC
UaSbIDtXKiMuB6NwNpb7rG0Oi0ycLSZ5+n827qAPP9R5Mwmk5mhdW9gYsKZ4c5xrPk2tU2HV
oySmhjzXoKqYjIolr5ObP/TDzMXvbnTvjEMUw76rKSZr7kC8VWhKSigASWPG2MlIc41eln/r
YvGIiurx7mcvp+R6Xk9/cdz7nsN0+a7/FRd99cySdf/cEpeUOfj22P+dseflcdsvjFLujt3P
in1vm5vL4ncTsXBZNyL+b+JcX+2Bsp7WncyBpzA1zPQondYHOptGEjDkcAsDEinHipAArgWG
zIDUPeRd2ZERrdkpT0afOUhXAe8Ow8oQ6Gm0NX2N6LLf1+A/yNUnJmE1JjmyYgTaUmRu3JoS
sCJeotGC4bhzZn7Z7mTfW0hnp7oZGIypylvjIqDEtAKttDb9mtirYs5vMVh+vAOX0jrWFiWV
OY+FeddQx4FcbXFmQu2yKmV52TJjCenH/DgD/CYIuBhojFNbJAeOatM/pfOdSO6PNWSAzBmI
tSoZq/y1vtQrk/R1YUtGIKy4hbTCxAMcSLom2jnA2Fm0+BWjXwNmUER+KA4YHiyCrsFEVVvm
hj3qDyXtNUgYBaTWpGKsmsAYwX8YZ7IRZGTCSsIWrbRCsHg1AvUUAidzdspaiOXVIkMXqlmQ
bFHM18a5RrjR65GeNRSRPEVzWWmy/sXX2Vl5IsQcRXbG7S//x7hIQeYkTxXkqTW31RdroibM
MSpPAXgFoG0SZSaIURIC3xPnY6hAM29B0nzDVlKV0Rpml1u2AfJ0TLvUUEJtpDBqrl36XQdZ
dL16VEMvljk1SPi5cSx90H3mA8XJWZOxXjHyUaKuhwYQEHEZsllst363U4zT6CYqd0yckq6+
5CtGhylZPeWfXU/Makr/snRmaE0zXuCpelBSkOSeUgOtMCK4dlTD7KhDNRkydF4rzKkqZleX
2VUBUAPnX8S5owXMzIqCEXQYGuYA0SI5qzwoaGkqJEphfuLNTSo5f1abUdkF/jKV6WGB5+Oj
M9WgoMVvW/Xm59j/NP0gE676nh8Png6y8tQ/BbXjJU2e6cuwa85qg7SLVG8g2d8uM5Uxy01g
WyanwFwD9/ksGW44tPpjCdkQO+bsgBxMtGyRz6hxiuMWlvcYj3HKcOX7WMwRraPnedoBNaFX
IuknhTTL8rxSNqpuOBuwTIFBRzmXrN6EApOsB4zrNLmNRqsMCssE5fhloxgxrMJMx0HAsH84
dvZHL8h7a615XvMYiUiGyIEoxjbJJRjNOxb8usCmCrMjW4PXbqHzTiK5fpMenRvHcd5jSDJR
vexuNpmbI08iMR1srKf+ksg6rZEMKclco0qmp/b7Mrgp/66C2IE8FSM5i4Tvost6zW0eiWFy
WWNmQeloqHiqwnOR72CYGsTknzbimt8ft3pzIz/vLd5mRXr622+qp7DZ31yTq9mMSceBcPs+
o4LAQqP8MVCj/2cuCpL8Z+PO1nCS2s4Aeuo0xdvj4qyW3uQ1y9dLPGKuXVnOr40z3mA/bPRn
NNFw8w7rmpAaYtwTHmq4mTFLYSTbxxNh4in0XCFgSmL55YOji+FeSVgYcMynvf3peDpzbThY
RJGU3JAx70iCYxgdjLawv1QSbfQRlX8ft6keNqLTVcYUhlnlB2R0aNZT8/lu8siHQZf7FeaO
r4rdr4r9ClJK20zApr4TnKO3LVNhMHtTGx2z/H7d6J3g1NvcTudyckTKcssUQ9lUHklTVSRK
ncXISlmolKnEbRs7iBCyR431MnhnGhbBFNAuK5xU74xcv+vuOBHpnv07+IF48KVxIpd2kumM
X47M/plp0U6+vSaeF95bvw/9qX8xm+9y/p+UhSsjiTibKwzldDPgEP6JaecusjZM7d8ebU7l
be5zvWh0ToCK5Ev9uSxOx0Pm2Rb0bnnQsy8RDrdpAQVUIOsg3FwdyTbE+GurQOG/MNpKy/OI
GRZptMzIzUpav1Km3G0xQsSzSv4J2MR0Rb5dmV0DUqDfo3Qmp8Wko6U1R7y/rGpz5GhFa0ij
4MTa5l1W3mjXdtuvozxmLqnoJ8YTecolT8yn+6cpN7Fc2Wcq40GgmUJhTXjaKDI7a2c8qdUn
28jngeexGoQTJZlkq8XMHPIY/ambTszFkjyxfP96BWgIp3zW8Jy5s296pLKSebaVcMOkz619
9cnU3seTT2DVh6nNuTNLbI8EGBcWM2vbnio3ixbTK4zb3slBH/JpFqQCTZ7KMbVtAzdzTj1M
MDMGv08daN2UFAGAKeDa3IrA729Z8JRRpRk9m+2UjGzbxHkrbV/zNjA9zRGUGp7Ceu380Z6v
28QBhk0zcQ5W++oUXeG157grTLq5xHN+bXVa5NYjU2CTzMC64sA7ZRfLoMu+w5sH1RtUZvHb
hdI6O6Rdl8XBPIjv2DGr+M7RaVFsyRxsVWx5yVCrD7aHGFmg4gSMlZGCsaEyxh2igNygR5Lc
NzqBbYI3QSBVzTAmaWDPe5865pQnxHrJxduCaqTpRm4oeQrjzc2wtOTYA0aVdrVFCjSalZH4
NHeMBXaODjzGAd9b4wHmC43GWYnpCDj0PksyeXobtj8VF+WqBv/7/dhvfZ45s9X8Eb475BZJ
xWDsxEKJVcfCRVrMp6S9R9YjWZGFkNkh45tl5qdIhmq7LKdjAuhUUtIUzqsuSGKt5qM8Z0y9
HeM86qC7AcJLKtJqCvXMQpm1PKKmIa8YzQ4EQMpvJaCvdXFKSpuHH3QorfDUn1POlnCsSt7m
lXsLgD6CpJnJ+JXONiKIr49bFS3PlHRGuT/hLZIk60e7hHvt5brSWT6ckgkpmwA/IOOWMVBK
9JjftNK2uX48LkxJ5yepZaqEjs7jInZuXxCnO7IlBy+B0HBttPi0AIObSA4pfSeAzvJxZEF8
HF7H1Bd0o03ulrU+5K8yutioSUlrm6ySxYYtSoth8U5rZPP1ICIuRjOdGiCjqhZymdaVBdA2
dUb0c4EkElwmEtMH+UaWOFbaesmkZjlNkj7k6k5Y5U2vyDFNxgT0jkhVFcPC2J22LSbGn8qL
NMQsJ/S7qlI8C5v3jFaV7MbLZpWchnP8IeJa5J9hIjm9pYQ+a0NFR/ltwOXBP1+6kCVl7v3a
mY+AOZTywC/M/ETDyo6jKD+XhUtXBNXu/w0SeDSIWb/bNnLWr4jMue0wuu3D613uIvkv1PY2
ryySdpJHyQL7ZcZCufWklqFZSGxt45MEryLPvrYrSt5vXs9POKDg8wXENCO4SVRrbCUXiZzx
BM9+8WP9wlmB9ct/kpyXU7c8DT9JKZl2OWWRTM9cO02BGaxJH2mFyf7eq7+0ZzZZJVe8Ks/B
CzsFx92I/OGLvHRcvBx73xafNOP6JDwxnjOHWOTDI/u7M9+TeVAkWqPm5nLJTclomZfsxdiv
xzCSpWEqnJEYPH8qGmdLxxEOvnYv76LyWirDrIzP2uT3RiwGbKyJ5LP3cpiihTlZMQxUGMWx
U+rQDn9eUlVPuSQd6vMNTeH2R0Armlc44zVQZdKVK8aGG/LKI6hoTCKdAm6TufqWTrowxTQX
L56EZdrA5MOGsFp95uqrLM6tFhptQsVGmT+JZypJm16GXnLfPEQhTzKc7hgewmfNkzUkCUDN
cYtHZqQr1pU0scUIgMIXOZOBuU3nKFhQYRt6HBZNWEPwMC5elFdkUlIBbvImk0RNNyGCqkeS
SUxfgJonuczkGZYwPc3qjO9mi0Q222jvxRzH3Suy/7Z0TjCPXP2XfMk0S8fk2ryjpSL5YkGX
fmX52/pOyQQKH4Wn8x6Wi6rU3FUk06tNGJc1xWQPenMxk2s4Zi9M0saFXWuYcCM2lUA6cwGm
PukWJOnUls1kqWzDNp+U0g0WNeHSzsxJwgE1d5vsP+Nppk1+NNryj554RFJn/dbclQxhtcW5
Xf9lnNvogZOQ+U5L8+OQNNCseQRsz6akPA23tB7ilZIsGfLZsyIBkh5rx9L6rQz8W/fZTMgj
eSQtGPKHC6io8SUmu96KRZgq0j1DJiOtgdVZ6R5tyN9Jz1m6mKVlbp75LK9DKU607L44bv2B
pfOcI3F4LTgnbtxNOrzbk2XSbsvB9AS3hBUoBAqBrYiA+fLL4kNmLDZ6XR26PTirKGsVSZS4
ilSrSNI3bUXhZZblAzvOrWbOOJDXab47bl2Pgvo8fQzEqXGKkZFmU2FXLrSkQRlv958TgZcy
t/5xUDUUKS3/KxZit9DE35glVx+eYYYmb7fXxIzN8LXzSYt0Egyz53XDBriK0Qg7dd5d4Q3G
mPEbPANNH22jn6s+vh2pPm+Li5B+7ITXkFcPlcHUBdQqj5AhspLgB75lYQnBR4h8/0rcLRUm
6kyItvDTu4UtB620XhDKBmqOdQU25rDcd5Oa+QLGAZz7ZfFRp+nkhl5g6ogIdzJybA59U3zW
FgEfrVsfQv3euNVHdTHmfxRnvjRuFJlgvjEu5FC0p5eRcqYP51x7nSrZD7w6bvS5GJJeI0E3
4QbPlMyPRKGh3va2g/rV8WENzNpi/9iS08PfGTd7LyjPEGos5/e3xdO+K27+vtGLHyBFK60Q
vivO96l+rwDZBlTnZGnXxRU/Gp/BNS0knDuyAuFM/cY4+9/Gp4GsLEeKebu5Y383LsdKLZCA
w4MOJYVK7pe2vLrAG6LaXtSRRKSvpvikjDy/N853gMcyTKRD84CiEvg03yFOz1dtacdl671h
H7lDZSz/SOLZfnwAenYb4I9M+3YQr+23xydFOiuPLtO098bl1lHemOTP9mZOuu1/NC7QrYne
B+JK+essyT19dXwczj8az6APGuvsu71EkLoFPiWkNlfHGXzkL4+PKig/jQJAUFPIzNMvU2Lb
APHWmdVyRko+06ex1zkN+5++lworLyCppFUBDJ2GzYIcB6f2VJ1TmTe6db1DsNZ7yK5lQEZq
u5WqAYiFZ0HwpAkypOo2mW0aZJ7GL2bvkJg3GZxTeE183Gs2qTk+BETHHH35kfhMvpDtIwd+
5MHq6OfiUpF03sqBR8kaTH3+dZznkIylrwYaQd4JpE4OoBoIPxCfVgHNVHlN0E2wladI51iM
UPE/FhcaHQ7PPOnqL9+QKeasT8YZN8aH/sbMkPAW5hd9dfz5vA+bLEcmk7/oS+NPfjQu/va4
aYFvrcwU0//dcMMNV1xxhZglfeF7b4rnvbdPOi7sJVMekbYx0UQGvkYmj91sTwVyy0kgdx5H
J5Jn/DcCKeZNRKmE7R5mjPFgRPF/6Ph0aQjnI9dcbAn0n226NR7Oxb14C4MUlmEr5bfjnlYx
jpN0qxBjN1PYldfENb0sGdmSM/d9HfKp/PkSuGrctkL7sFakZJ82Gys+62PACEPJUeAUdm1N
a5WxPSo+r5mw1TxLkYRHp69Gy03AAtQ1E4I3b8WkiwggKTzoLLSMmSCjpeC1pE5AckNQEpVv
NcxAu/W0tZr3yy1b2QrK4lozdV/GqKFU7TYj25VjrIWzoNYQdUsFGwjkbbpJhImlb8Yk4TZr
mKBl21USPplKfMNTxfqmtQxT0hX4INLAzBNuIjlFvMwgQP0yW5k0PTeasv6MKSTppDpI0gQk
tBOqwvkDk279ZRdkV7qVMFVo9HDmVkAdqFOfT+o8DTd3pgxdyqqSz+HgUWayuivesLqE2yzV
uuLg7bEGly4e7PW3R2sb6Cm4nJOOu2IALSze1O7jOenl8sj8LVJaVxTcFbUVUGcTsyPIvODE
7OkbOA4zcD2as3mgTfCEuU7ZDQSdLw03MoV7xYj8a+ITWB1N5l3D/zJzXl4Bf0ikTXDsk/eR
a1za34l7/UoUI4l8qwyiqQ4clg7Y8NoiCgpqNllazkjA4vRO45BkMWRrADJWqm1cKxfJEInh
yTAdmTkLcL6qJyaURy5nKjRyQGYgLcx3xnmDg3Ce8qzn4Z+UzCt6lx7KFql0/Lj3q+WJF+Xy
cZqkmqSAVZBliULT8jhIIDIPAgG2eaMhD2SkjdXVIjJ0TKdYKuSvvTSzoPnqgyWTAYKr3kdG
kc7vjvMY52ZwdDRqa6nATqqhsiBJMbzU5ES7hHl2RXJqwBxhfiLl7+rAtwDXssUAaymHPDRi
/WMFAlsGUIbWV4T1MjTyVT8FJVzy9MjJe2vCXBC6TW108NViiTUW4y/9606zmOMs7TIS5xaw
ZaFdrUVi6I+FAYvdHM8aJd62Bh3ImdQtV7HJBWUHVCqPyPzzMj02LJxcJc+6OH6d9U+ZdK7z
91sXHU42+o96+Aoh53RyAHHaDiirTc1sM6l4343QotyiyRzy1XYnWrPv2ukUTx0uysNLOSHq
EfVH3/P0VI4LW1vZNblTkXm65tn6PFyeP5OU1sCjfKO3TUzytAkDE49yS6Rlss4Bb2Se+uUz
b2T6O/3F8fjsh018fPCqRw7HLyQzqNrjr4t7zohzXjWjzEd4yEBoodslzoU7aX76DANe7C8/
HG7gOfDES2HpbKfGhgvls/1nP0u/0lFWgwl7ZZzlKnztzIe9TzVg4G74GS3UhUvDkTK6yBBY
ncuN8TWskQ8LNetmvgSjCNW2PmN0mDndbCgyKBa4bByFeCDuZcgYZWGeFQrnnSG+k4fiIZXE
7u2qkCSv791awhrD3vIevZ93HH8Ac//K0YaLJSmFs+Rla9h0hsy4Ndg0yg+CkFcrKw0jnMnO
L/vYoDFIjDrjOdvl5Qla6Mu13ABKQQetTVk03hpjiTXBcsQwPbia/FWSgwc/Y2sMdTMK+2IY
KB22tggZUEVb5RtdBonBwyYah2ru5ZU87marzoJVEZJrjrUya2V46xqI8Sdhb7b5jFJTFwvo
PBxL5ExeVomPR7uMWGtis5o1usprpvZClRvDrf7ineK9sGpnxHWWCljWq5L6uMVZjTQNZBNV
W7v0lLa41a0j9fA+xF7bZHqE+VEBS3kzFgNNZ8RbZ8OQBff+h7TW1iqgxK+MnXofShqlwrrb
3AxA1WbiHRfRKH1kv1vvA43RtyjHa52kpE7UBnTAMT+BkUm1oeydSFhpgoqBJa0Pw50biDrC
wka1tcgjJsPkzZTLGZjQliflNKWBxb98Q5fjgWNAlbyB4OUnR3qgal9P3eie9qqeXpbtL8bN
wvxq1JIxZaDBpUVqImcF0UBhjh+ng+iSgpxfBDtYjDvbqUiz1ulWlNq0zX3I6ukgmqNQA8SQ
NNzyeCuV09fwVEMzsZmDQsKcahEzKCgVakIBvOqnr4FMtdKMrs5LsWGptl9BjO/yG6U389UC
h6fbtLeY+Z77bPkFtXQLlZLx858yqtIyFO1RhtMj6FF7hbcJcJkzPlmiT3/wMmY4GZUwJ6ir
V70zno2iuvnUYEQUxLMJdvnZDYEUy5OvMrehb0ZI9pyPmETWIHPA7TJSHXiF8jiHuqkwMWWh
ET4BgaOnmKwEGEDGij3JSDOCT46ynMZmniexVDayjNAUaFdmrYUTASPd+kEkdyNeK6Cb3hgv
NvabJ0ikRY53mdjeXDaLyeS87Kyf+ctxZMZTvD/TK+uq5nnryhL63iLjxgS1d2lgZULBziVP
D0XKM56sSq7/mTK1YrT5TQHC4rVsVcAWh2pbumSrLZnkoEoqz+yzn+ayZJzMOEPnKZSyFDSA
gfJ6Yi4AMlKeprC/Gmc65ZJLsoxn2H2BQCuY6KTm4vUFQyfwvvg8iyog+Y/HBaZ1uxnNVyWe
2eef1psspDlLDMOLL9ptAJp66s1M7qr+bKlGCftLnH8sLqBszQ8okoZ4gcEMYvpISVds5J/G
OSbHPDXe4k1GzD79bDECeBG+MYjUy/qFD8iMQCYLovyfjx3md9NQRrr6KoBrS+4LsKqk67WI
+vW1MtOZPXl88pxJvsj+zri4+dTk448a2wew2EtHj7rpAhOZz4aaxVAUE4cZLTdnfCI5Vz5t
xMnBaKJdueZMzVF/OwwYPwVr+jkqbb0vj/+D+JDvhY+cuDPfC58Ba/i3HJmZNKNDKRc9PT75
umEOS98fUY5xsuf9cOz/lTj5meOeZVz77R7npSAIVs4M3Uw/WDeGjKaiF8YGbk3FbSqhEYYE
PoqOow44hI6x1ej9EjbLDhElc/vauNmbxYjI/xlZH9yFgWCh8A9D3TgxFLEQt/J3MItaGCos
Kf2m0PicQtUHQSGQmsqCW1wab8iu18BZDe1HmlWSGH5ML2kh/mGTS/7aKGd5ooYU1JD2eg1P
iaZ5hPga8GyWsefWPpoaKhH5o0/0jLKyNdaIlsUk7Cqi5kYafszp4rUGGmxsawKSysQbP24l
tPJGnb3iqQlcDky80pl1SezQGf/MjcayYmYFBkVAi9BWsKPajA0ZaW1EijeQzBBGCKKpoH8Q
e6124OCrc5wcmmBeSfMHB63zSCXVxFrf2+7Iq27KHeRb4mTZamwu9AVQcHVQRDoJWBx2k9XW
CldmTomGYqIkrYSSIHyMNfLnJaTcq81PqoHUWx3qDDqNYp198JEDQM11ik7kF5EDe8qmy9aa
jbBBLqE8Tb10jNtGY02x1n5qCDSGNWdQb69qr+boR1rE7iiXlUdcdKL5MKtBA/UgMRODsmyP
+kQua66NZKzK9CZPgOWEBjoIy+GB+gtbMACf3lIYugoBNhcJcC5LblRLqpwjnXz1C5T8HxaK
PHymOs3UEC5ADQc+a650nxRg42ip2Rp9oYEqZlGnmUaQjqNLANQozbeK0y5qLNJBWKsL+gAl
843cdLcFp1WQ0eGNOjJmVhOkTrGoSB3QdxTAI5nku5tWlWIQCBUG5qr/lnmmYtX5b5WE640D
3bACpO04xCbExBDOWs2cmL/22gxnZHvURwqLz0eNpuebah6J6Z/yvGRaPD4fZfJMSDK9mwIt
q8w5UzVhkaakRvGTuxiGIptkC/ANKTdflRPprT7HBvhE2Q380qgXqT4ikQ+jyQo8+SjrN5Zz
GKEt8wwY2lbRKGlyl4xkslgSht3gRXqyIbw5/At/FPt5nVom+UVXVoW5YzxT0qxkRs5z5yQb
Dmi9BT+vRIs09pmyZGON9aL1CJ9f9ySW7FbOLx/9MAWvh5VAttFTlk2L0hS7zT/m3fSaq6CM
oQ9fdu0f87nkN2SSvXlk5WC+ZjlZvMOJI2wmaIvbngcz0Ry6JqMmplEiLXtSrJ22NzTM1HqH
GyKFSTK2StcKk441hniR7CHDe0vcP1gqYTi8hwRY+FacljL1vB44QItUeVPngHAjr0DGK7Kb
5ENe6a7sdhpeYfHOk/CA6LvMUIx/PvMC4bbqy0eaw5lo3lFiE8YorPT6jzZKjg6RNGukWF51
Io0ygfaRZhBayq3eIrFzH0GGpJ9TUCvLWo/kqSAqgbw1SQHLPO6n/GZLsimRVNSOhx5RYmqO
SJWRrR8IS59Xn8k6h+/9orhuXhGDyMHtPPHDEbdfMPtywkISC8UPB3wnt+u9ceKvzBwrPLeL
nBNsFFxs70hANfwbTNtIDzEUmWbz07AshrFDVPSe4bCwxgbSzFE7fIIw316Wh3kIyAH7zHyQ
chRT2uNGHx1H9VL5aHwKoLbMKONlROFGMmdGZYJfWq5lvhlj5GAnsrKbY3xa0xMzbBhWWdGk
XKmb27AWbC+rRJ4AwieJ4aeGlNuqwOoZnZIJAfQOC2++DS9GWK+bILOGWDUZVi9zEG/tYa1p
KZmmJNcbclb5LNSaJOcGvFARuf2kFZys7D4xZRlgTNjMsiDCOscumzxl7jbNkEyE0U05jH6C
e+YWCMDHt4QtnVWJcWc6R53FZTuzdaBodSOg2q75h2Xyno5WkzMR8EFncyucBfRCBpT0r5Vu
29TTHQ3GzOSD+d/IXwVAAmh3xjG+Rqw8cz1tqaMtWLU6qD+grIjUNoXhL6CLW4xb6xkdxBgJ
M1JURQAUGRhFHkiBlsphJzZRghZj+sl5Ref6xx/AYeOfOshBVi03tzRBkzXBEi67MrvAqu+Y
UekaSBNGCR88ZvT6fHaQHk/51EwVYASJqYaOEMjelzP5tPUWJyMFOIFSmfKhJhUOTRjt1hHw
gV52t/613EpLlxVmYTUhnU90gMYqQgx4s6xccNqCl+Ekf6twsk5S3KZNu944WH/aqaerpsbN
A8L8yqwOh0E+g1vL1IXodUJh1LQk+ERj5z1QTaAFPM0wCykwKMIi35jN7fhcHrwhbmM8pbJm
bgQo58cRLz/8cS0uqiw3f7YsTU16bZyE6Wm0ydGQ78lQJkTX+JLa1wYzMv0vgwUDK6qS7E/K
uJojeIvYZ+wnjY9IRgaH5hQ4pqNo+XUvpqmlBQIarcnsrakz40XyYTnz/a/iU/jcZXFM+mWY
VsQUl+XtknlGssPW/6gwS4WSyoE+fHNcbnucXwbD5lgVqY98NpEpZuVa6QKmOae38QRhs0zu
D6RBUytDICH1NGFPi9cvb7gCTaymwkb3M38HuGXeO4nFq4C5u5fEPvk7PEIPMqErW41a/Ono
VFJGptqMHM+20GdIdlZVYOQ54ibbm5J55Uwx537pyHmfMdxkliX95JLxkuPxfVphU+0PxaeT
GecjHeE8PReeWTX3cMSbze1wUicLjxQzcHz+OMN923P2Ed9T9vyKi0lHz5qIs418Z7rYrGHr
ICdK8dmz0pptKbZ8RP50XKRWvx93cJ9lia4+RqxWVJcGWgF+tD2YjkCSgTFtvSYuPjtu+oYx
Tw5H9RRcVDKz7C2Uxb/sHo8EWtjUnu5GAZ7pfHmoWQE8kmTbTMzlL8aWDExWyeQyt1yX09q2
ICYmz6xfcghh5wGyDhnv6tHg9+QyqybAICoiufI3+zrQqAmq0bhjNlYm7edC+M6zRBRN2jTH
YlqSzK0VISATko3niWG+JUke5jY5cfsdQTGGk2v+SZ6lc7RoI3sqPr0LGHNaMY/8OmCDNxNm
iVnJVj2PGtfvq/TtOO3oUH4ij002R1TmZjTKKumvQEbmNTfCsuFpMVOgL5SkyIzPKxBEWmVl
77ezd/k025J1yF7oa5vl9jEtVWKlm1Kmv5KRrVQCKe+pt0msZ3L33C3V4vNOckxGrVI4O5FA
JsxINRdAwa0H8lFWW3LqqotBncVxYmXHpZgfhxfo/7JEqYyszC2fyj/fdvdIjOrRE90tDF5D
rHW6gmxVk8+qotqSUF2KkV2TMGa2+bOX4M2GiEww3abAqq/reh561bXa+ITrjYORyEeVvbbx
rVt+iavAYXElzKdNb/uatMiWQwv0YkuGe1PchNNMIRm9ceZm1guoc/Pt5VunfE+YqJ0uyRmB
dl7FbVaJMwVnRW56juKp4cxr09ycYpBILi2B5lAU9hqcwxhYDgew2/yzO5perZ6Fq1t61rl+
ZgVnvkKbXFOgRWoay8Mb3T6i5xFGi0ML8MvYW0thbjUBDbF051/LSNRKtTkm3KYrRICzLJ/y
kaXjuemDQ/xO4Ng3TgFWVIClyhwyUjH4LraHMbeWJs2FMHraE25JOGJ7IsuSi8zpKU+iZ7au
9jPBYos1Y5I0Q9h8auHRxATUwcGbJpmPbMhbMOS3Dpswj4zdxb6bPIK/q/m0F0ujzQPdIgX4
ULTUYqNF6lBsNefcjIS5ZYkcKQl3YZPk47Oc8+slqXIZby6mIc4goNFNEm6EIeNRi8wXnzjd
85RLi8+AfYBGvXRHYp4n8lMg/X3CInN3RThZviWBA7GWDSmZTTYiqFP6fTJ+Sq4L+cL3vjZO
vnjm64T597wBHAMK7qkdpTdde63fdqEQvAVpUzLc0rZH+TTjM9yv3TOmCRPLPdZBqv6WjB+4
ajEtbcb0V1nNF2s1UfOelPQJW6oUblfx7VELeJphGeLEeds/bckzsJBjJv0uLWFf+UyYj1pZ
Av6BwtPGIPOpGEvSFm7Js7OyIJEp4DbpXYolvRvI5CPXzKHdtpVJK061BxNYK2V+feSTxfWP
si0tFZn+aSt6bGAg6bY1BOwtSRMTyHAf08Qy0No4kMynfW0zpmU1yKfdNoEWmP9ITD5N6ync
kG+p2PEWzkBrbN66DmJatlliSz64HcTn0+VfV+f7XH7+W0VyvXHQTfOtxCYEZ71xWE6TF1Hp
gb3qc5OqjSDxaSdzw62JoeZ2UxGg9hG3/BVGJ8EM3tzX+rq4yQF3JxD6X8PgxEHXenImT1NS
ui17au5TFegvzt2/1I79Hx+HcHGbWq0yKsw3zCvffrjeIycw+a098sPGTdIeHeWxROewbJGY
FmJqFuOXza/Ce8SRn19r/fY4x7cjU/i/xt2vGX0xBpXP360Tb0WBrVtv4KbpOEhhXnB0Gd3P
FQJ9eLUzw6M/3LqtDZIrW9L4WQNnApMWY8D2gZ0nwQ49ylR55eAn2T6OjvM5yZPuhtyvSDEI
8+4DsPmDM753+maMxVW6Qg6vGzJ29Cl35L6n+xZFTgCi5v0vMODlnMTorG+G/MzsoT5F+9k+
OeXecmbp7IBND2ErsdlCZv5H6zl9nPdokZyG9p/delGyHQLRIppjwTPzYPbP+UYNdKr+/7Z3
NsCWVdWd3w/BouERpV93K99GMjwMhCcdHUehVWZMVWIlw6RiEhxTII2KoMmMmThYZibxY3Ri
DUVZM0GEjnxFkzeJVvyoGU1QW22EGTMiEgQamzFARMPrfiTa0IxCv/mfs+5dd91zz3333r7n
fdxzfq9evV5n7332Ofu3/+f0Ouuus69SaNplWchGTxQS1bsUym//6AlKUSdtvSA8gCkOqOQf
DV9JpO2G+ti89QGIMlc9YqjcJFssyCLi1lhPbjq0LhAlx3uMT675K/LHDM2yGlhLPWZo3X09
KWmK9Tzgx2qI0W/AC7Npl1xt/f5RevxLehYd7qc31uh3OjN8s9Cf7nqqKtT6ptwytws7+mbB
6ezX3jw836vQTJv2qwaFKt+ln2Ht/ZnemqlQJ7ZMV6qy2tI2hcJCFLlwJt5YR+ydiEJj3/Sj
y/AezPYqH0t0Wws9eBszxMHPITKPR/EeZPihY6GVF6oKm4X2y2z6jjL83Ky9V/Xu7rrqrSqU
lHZS0ENhF21qL9/Rjd5m1tLKS2fBqnp76C0p7by0cJx9Cx0O5FBoX9fNVeCw/F1inYBdBQ4r
N9J4XZitv/GqNGdOE2GRcjsTuYNKYFAU8Lrw8C//I6ZbyGVRqFJulnIz/Pzlnym0LNe28NVv
8njkhcdHAr3+odizdowJJPJ9lZymQoVLvU+lNduyTj/fWgsiq5GXb+FYrZrnLRUfVZKDnDZF
VbzQXofVpvxODzMrlUUengqV++s53/LXdVw50zp/jxxrFyNj3qR2kR70JKPzl9unFw0t0K5y
5b4rT0OG0lQ861Werr0AKn/XnTZ55HLrBVkuuOfzKLatM1cwUQ8//sqmelO5gsFyBCMoraOg
7BHl+SiRVW3sRw301KQUDj20tMv0MfU++2RSMWAv1MlbonyMHCsn0J6dLORvjRXvVwhf8WnP
57FyIco/W+jEwvUMoFnWs4pSSvxA+o5689M92KwqPUHpr8Lk3kyGsNvnLXrecNHqc2Z9vqHN
GPb+hXS3FepVJe9Bc2SOsr1aYOV6arJCBem9Ze/Ti6qkASXx6kCaZQFv7/6UrUKj+Lc+9rFC
nbyF1SWn+JGv919vo6OhfuN8Y7rjvH51fcp9vvvU17l4PcR4+vEtuJ79mlVSPgyHtdXJ6hx9
GA79gOsM/STdiI1LC2ODUvvQ9irtavjCcTgMf5T13FJ+hn50hm6s0NmuyfyOOpZ660Gen2ZB
7qMMIyNfVkl9KrHAquOSk2oRUCuR4yInSS6LZ3R4S7ks7sWqUJFL8yAV//Y28uAtNB7fGlSt
jltQhd4T7U1bkgur1/7UPuYWa9OyQTxLWCWKK5vDLTv+KOFbm75enmxlaWtBVYXe9bZJ9NXk
PevxQ66tJStKD/ocQG6xeX7xbOX26bFEqxEotcOOpTQVpYgovKr4unswCpObv65wvg9Nqfk6
beVwvyT9RHxpUqtEiLBCwk5Pb3/Jll+pFOe4MIgeYOTT6+gq95HKWTenPH7mYA8GaqMMeG+p
hyKV6/3d6B9rtUctpaB3paK/rpf1NZFqJm/Yd9cTlKUhxZi9PlGRe63PN2yyrLHWozP/NaYV
CI497cRTEjctjeCHcMN06KkjKtfYJQnNRXyEUPRdDrQK41OZGv95/qqrVibwDvURhD4/0abe
AfBCGXYIjcuPpQPpcVRVKix8uBF3rKvtGi4ZoL5WwH9V7bYbJfs0vsj+o10hDPHetEKHqKrb
FeVQ1UmuQj9wMMhwkJ+hH9FwYxXkt24PUSc99Lst6wWnWCXvyhxBBX1tXuz9lviGn8+Xvr3F
bQXILUQd35zTp8e2oJ6vPqH2irxacnZcklxPAoWYq/WsuKMfwgw5QJY/Gcv12GBuvqWhW5W8
WDmCcXRWrryCuK9svYgih7vwNpHIWMqKO5fSg3qTy6hz8ELtLv9bgXP5c3KC/VVX9aYIsWqV
vOFZDdpdbRRSlW8t199OQy+e6ZFA2flyB+OTiebCQtRaQNZa6q8mQiegzxbcNVehHnX08rpe
arcMdWusJyLl9yvN3T1vleuxRI6p4uj2cry11HCU/axcIP+yZCtXoo4i353np7xUkXWdg73x
b82UAqQx6vz1GoCV2F/tK6c5JosrA8p85ThMPWvZZyNxX9n2uFIo9HC1l0s5pjEvMcMmwpRm
JRKJnqBka1EUb6wZ0eIN2tQpWVKQbFESeVWJQPwUyNQlep7L5P3U3uhIsHeolpGyzN/eXSix
/2jhAAfTABzgEO8G6KEJepCTESfdbH2dhy+6H2tjjNZ3jN6hGiv8qcBhwaOyqGFMDLBu88hx
V26xfxmK96+WlnsdfWtFSS0kGU9Pu9grd9FXUKF5/7awoLe31+yif6aW8resgeXQy1ahHdfj
vnZdyHuWz62UEn/tTy3t7U89HkSnzZKn5bZquTA/urmq6tNfeVeVMkzyV5Z/pPCzt7SAsdJC
7FvirVzxdfn0SvWO/qi8cOWuqE89dfjuyrHRal3npGeZK2/lynjRRwT6qsv4IqYC+epNYe/4
8q7aK8FGfRZ8XA1KyTz22oD1qeErD0eLjThDlatQa9DpxDoZIXmhxcJtYQbbXXHr+NqA92kL
vNim/43vv3qhUkpka/UtHdQL40R4oZKIYhsrt48P/EMMFfq7ATFAHh/SCh8Wef81NuKVVeNh
rt7Q6hTjGYcaHIweHOAQryP00Bw9FJwSpRBYSkmh3F8ljDqJ7p3ayzVRhLUrHJp9d8yDCkBG
11wtzbtVBoX3pkKLHHsarqrk91i2TPQ4lbJo3q07x9aJIr7qRO6g/nq3tqOvdqJy1VrIM65r
rnJ3vn1fGfIg9b6QDmeLptt1ofNUJwXP3vK59cpp7MeeFrSkY+xTYVS5sB4It6qr8lVW1Ym/
SqhyxVzliWo5jniq9lKsvNi4yLJWHRF8pUz4+4XaXQnoyq5RyrWdvB1Ith4VBCSuXqLd9bCk
0LW/2KrGGqMGrpbRNVehZlNOszq3Du2vwvNx/XUrtMcqre4XW8rWUpjxoU4l5lsXgt826sIS
Pbaej70tYN3qlCxpJD6qqcp6i761WtpbtkqOt33trx47ZWhdSDWwEhmmWA0/Tqg8UVVFicZ+
6m0P9sI9/yQa9YYyzuiIdRk9OMAhXkfoAT2gh5jV4DRiwrEX9maGqEpBbm9ghlzhQnquXEl5
M56Pbs3s1b3C97yYL3VLd9qMLfpxRb5ArR/L3MqY1a0qhef1txBqVZ86eoxPq42FbG3JYO/T
3u+0dTlUaPcHy3T3Nzutsb6UQ4b8YN9Xhnn/D3cXaikSxaFjMNh3KXxvjt5rlFMux9rWF7Zm
dp4Wj/cd7euB5En7N5JalbLYlT1iqwl7YwWJlYNh8WMrVLq5EGn3+LCkKmWKa7CWtO27vz3H
XvBELfAcVwBUex1dfwsxaX2ftwpjJF6bejLReriFabIniqvyRYHVxn7sZPTY0C7o/BvfmNT8
2rNH4WnHPn8o5D5Zn4WjfzVfjKXTe24VnhMKtfXeHOyFl2ak1BvKOKMj1mX04ACHeB2hB/TQ
cD3IwS390D/mbwiRvBy5d+ZlRmIK3xb8M6s1h8xb2tfixNUzvMp8XN80fyvGI1Vl/rpn8Vpj
CxJ7WosVmlMuf04n7H1aeoweIWKh5XLI3fdmMsw/U767rS1j9wfzg/Uqp31TnrVXV/rVS5yx
T4u8ypOOhfq+BSW0+FIqfji1kWseW8pV1WZhRHIEFfYuOPH+7BETRf44j8ErH6bwtKMj+pcx
+dH12qjCzAXOGr4OZF+X5i3NKMTClb6vZy19PVOhmTZjkozV6jHPUz6sxL4f1L5Hz3uwHO7C
7srgV4PCI5B95lDw7M37j58DeM9KGY+crdyftWzTDqQPHGLLr+VBdH3HUCz0buttFD/RqPdo
V2F0xPwMMhzgEC839IAeGq4H5T/42h0RhTmUsUR2aXZsDNxae6UfKEW4sK82SwsL/k3BL7RO
/BsWe/vUNzHHQjtDe/3Oyy3JoeCb2nE19sIJaC9PirD7gy2yWTr2wtn+SVpQb3GVRj8H5a70
Hqiwu/EpDNYeYAruvr4HUEfp/eJSHe6j3fkwKpEPqoW97VVaPx8ZBc9YJcpF6W2mcqVwFOjJ
jdZXsdrzSexTnnThww3VaikeT6mPje0VAi8pzQu3WluR3VuWzrLV6j2HyNme3Cyc77vbAjj6
PlQvcSN+YuCF+ojA7eYYg2PhYhFzUWQ3h84hjJSYn0GDAxzi5YMe0EPD9aA3/yzSHDnItqhw
odDcl1ioEG/MbFaV+UCFOKXt0uuvq7zUuy1tGb0rP4fSQq81w/KAC4W2WdjdfE1PoV7m/lDq
rZYeYpnCwtG9ZSyXrd/SJyW1jy1tdz9521SAXL9aAKe3pR/ODQ2qtFnBBVd7a1b4xEPlitxb
nNv77N3Xq/wrqK2kVAml52PtC068fWldIcXIjxWNmEzv5cscqKBw3wVjKALLXEVD7U8jCEAA
AhCAQE0JXJFO7I3d/k46YT6dXhjxDem092p5t+4ffdFm7+5qshKF3Uce4RBvy787c5jdC23i
ZmFEhU1rOWbhMp3EM3G793C9Jf367NdS7QtV2rRfP24/Y5mWhT77nVXv0UtbWm+/F75l00+p
cKDCpjcb8kDx6A1xJu+8886l/CeyGstuCLiBjOBgiOAAh3ixoAcRiD8RTgNtoWjaqEvdlB3p
n3xaK1t0//zX9PxeL1xNSnsoLezub0W2So9b6oUPc/iV00PpeQ5zSmvSZngOqzMuO8o70omr
SWN4CKt5VpUfCy+8cqR0CAEIQAACECgnUOo2XZV+stcL/9100kVpS28vpT30NludknV1Mqsz
5MYeRZ/DrObYm+aFD5UXvpoTMOnHaoiABk4THAwRHOAQLxb0gB6iHvRlk3E9EKuylZtjM7OX
SajtbbzSJdWeDNeFzdf65BC/VWeldUX/h05gfblY/4QAACLgSURBVKrn0MfDnhCAAAQgAIGK
CJQGj5WRUlpeWljRidANBNY1gYY4k56RQiy8Yjk2READqcHBEMEBDvFiQQ+N1UNp8LiweIVL
pbSx19bP4Lpo7HVRPzGv2Yi4itYMPQeGAAQgAIEJJPBbfVY+mcChcMoQqIZAQ5xJYuHVyKW3
l4YIqHfghRI4GBA4wCFeGugBPUQ96LtOmhb2jsN3m+uC68LFgHGIBLiKDhEcu0EAAhCAQCMJ
kP/dyGln0MsRaIgzSSx8ORGMU9cQAQ1EBAdDBAc4xIsFPaCHqIcTL3h13GyszXXBddFY8U9V
NXJdRfPz81X1Rj8QgAAE6kSg4Gdwt6zT5DIWCECgKgINcSYVC5+bm6sKWtZP4f+YKrueqL7g
YNMFBzjECxc9oAf0EAmgh0iD+wN6cD00RAyekeIDH9doCLhxMbE/BCAAAQhAAAIQgEAZgYY4
k+6Fs154mQrGKGuIgAYSgoMhggMc4sWCHtADeogE0EOkwf0h0sAejQDqGY0XrSEAAQhAAAIQ
gAAEAoERncljvpK2LXV+z72n1dXUZWmrlR9MJ10Y+g/mMG1C8xJTRz93IU2HmqzPp9OmUFJu
Egsv5zJ+6YgCGv+A67QHONjEwAEO8RJFD+gBPUQC6CHS4P4QaQxtL+1N35hKu/LfW3863206
zX4o7f9QVnjrTel5N5S5xcO0GXQO+/80PTGTjg1e/vRr01G7095BO65APepZAah0CQEIQAAC
EIAABJpCYERnsjcaLVBTN4QQ9XQ6fSmddnWR3zBtss73ptMXW7F2dbLl2x076/GZ6ZTF9MLP
tzvPN3uP1a4O/xILDzAqNUcUUKXHXk+dwcFmAw5wiNclekAP6CESQA+RBveHSGNoe2pTOjtP
PvF0lOlTw84/SgceS0fNhpLcHKaNGk5tTI//2yymfueu9JzL07P/qmVv+bU8EeVHafHuND3X
SkqZuiTNPCstvqV4rFXZRj2rgpmDQAACEIAABCAAgXoSOGRnMo95W1g6i2G3E8SL4eo2tWHb
tNO+FTvf1k74jrYc8NPbqeddfbYPVP7vSsXCDR9/IQABCEAAAhCAAAQgMCqBcr81K535m/aL
mAfSlpd3t9ufvrsrTR/fLtzc9dJku7T732HadO9RsrU/LT6QZpQa/sy08Yz04B+UNFmVIqO8
KofiIBCAAAQgAAEIQAACdSMwhjPpoehhcr6HaZN1ODAW7mnoWh2l3XjwpKxULHzwkeveYgwB
1QoNHGw64QCHeGGjB/SAHiIB9BBpcH+INIax9Tbkve2Y93Q6YVt6dGe229Jvpr2b0vH5G5lT
/y1tPtjK1balCe3tyX5thjlsoU3W1Uw64W3p4DfT/kLd6m2intVjzZEgAAEIQAACEIBA7QiM
6Ez6oiVaNbyzVoni02XrhUcvXOBK20SgQ8bCtUt2Gu3s8NhDX9tj4X1bjFoxIrhRu5+Y9nCw
qYIDHOJFix7QA3qIBNBDpMH9AT24HhoiBrxwn3EMCEAAAhCAAAQgAIG1J9A0L/ywtUderzNo
iIAGThocDBEc4BAvFvSAHtBDJIAeIg3uD5EG9mgEUM9ovGgNAQhAAAIQgAAEIBAINMSZ9IwU
YuFh8qswGyKggajgYIjgAId4saAH9IAeIgH0EGlwf4g0GmJPVTVOqWd+fr6q3ugHAhCAQJ0I
FP5/5W5Zp8llLBCAQFUEGuJMKhY+NzdXFbSsn8L/MVV2PVF9wcGmCw5wiBcuekAP6CESQA+R
BvcH9OB6aIgYPCPFBz6u0RBw42JifwhAAAIQgAAEIACBMgINcSbdCycvvEwFY5Q1READCcHB
EMEBDvFiQQ/oAT1EAugh0uD+EGlgj0YA9YzGi9YQgAAEIAABCEAAAoFAQ5xJYuFhzis1GyKg
gczgYIjgAId4saAH9IAeIgH0EGlwf4g0sEcjgHpG40VrCEAAAhCAAAQgAIFAoCHOJLHwMOeV
mg0R0EBmcDBEcIBDvFjQA3pAD5EAeog0uD9EGtijEUA9o/GiNQQgAAEIQAACEIBAINAQZ5JY
eJjzSs2GCGggMzgYIjjAwQlIDP4z8AqqdwNxqPcAhxwdHAwUHOAw5CVDs74EuIr6oqECAhCA
AAQgAAEIQGAQgYY4k8TCBwnhUOsbIqCBeOBgiOAAh3ixoAf0gB4iAfQQaXB/iDSwRyOAekbj
RWsIQAACEIAABCAAgUCgIc4ksfAw55WaDRHQQGZwMERwgEO8WNADekAPkQB6iDS4P0Qa2KMR
QD2j8aI1BCAAAQhAAAIQgEAg0BBnklh4mPNKzYYIaCAzOBgiOMAhXizoAT2gh0gAPUQa3B8i
DezRCKCe0XjRGgIQgAAEIAABCEAgEGiIM0ksPMx5pWZDBDSQGRwMERzgEC8W9IAe0EMkgB4i
De4PkUZD7Kmqxin1zM/PV9Ub/UAAAhCoE4HC/6/cLes0uYwFAhCoikBDnEnFwufm5qqClvVT
+D+myq4nqi842HTBAQ7xwkUP6AE9RALoIdLg/oAeXA8NEYNnpPjAxzUaAm5cTOwPAQhAAAIQ
gAAEIFBGoCHOpHvhh5VBoOzQCTREQAMBwcEQwQEO8WJBD+gBPUQC6CHS4P4QaWCPRgD1jMaL
1hCAAAQgAAEIQAACgcD4zuRF6eyDacuRoc+UTl5I25ay361fDuV5Sys/5U2hfGhz+gtp2750
zOFhh7Kjh+q2SSy8TaLqf8cXUNVntDb9wcG4wwEO8QpED+gBPUQC6CHS4P4QaRySPXswbbsx
TXcvPLL53nTKY+nWqbRrKj2+LZ1+favr2RvSgRuzwl0fTiddW3Tchzn+/pvT/mPTxu2dttMX
puk9aeHJTslqWahntUhzHAhAAAIQgAAEIFBDAuM7kz3RaLnmHuqWR77t/pR56dekc0MYW23c
O3eqFuqe3duKo6tBtnseU/fGirLH+Lo2vcr7KTGIhZdAqaRofAFVchpr3gkcbArgAId4MaIH
9IAeIgH0EGlwf4g0qrIvSkeFrg48ktJMmj48TZ+W++LtqgP70lGntjfivxvTk+/M4uXf+GLa
fHGaub1tn99KRFm8Kx19Zjsp5aI0M5MWL4/7r5qNelYNNQeCAAQgAAEIQAAC9SMwvjNZiIV3
b3omd2ZYUDxnWAhpG1dvnG0qdr7UzlqJdkoeay/0aZ2U/12pWLjh4y8EIAABCEAAAhCAAARG
JVDutxZLD39/enGeHKIUkTMGfWfkhguLu2fbeVC8rGK0ssXdaeZ12S4bz0oPXZmWRtu7qtZG
uare6AcCEIAABCAAAQhAoFEExncmu4PfguexatmHkBfeWgIlxr+jrU61qRTz7enskGg+YNJW
KhY+4LANqB5fQPWABAebRzjAIV7R6AE9oIdIAD1EGtwfIo3qbMWqT/6dVhb4xtm0cGserr4s
LRybTrguP8w1afPUGPnc1tUVaeru9MOnqjvv0XpCPaPxojUEIAABCEAAAhCAQCAwnjOpsLet
YZL97U77tvK4nknKo+ZW7ouohFNJQ+aFaxdbO6W0k9hhx/ZYeKdoTGs8cGMefB3tDgebDDjA
IV6W6AE9oIdIAD1EGtwf0IProSFiwAv3GceAAAQgAAEIQAACEFh7Ak3zwg9be+T1OoOGCGjg
pMHBEMEBDvFiQQ/oAT1EAugh0uD+EGlgj0YA9YzGi9YQgAAEIAABCEAAAoFAQ5xJz0ghFh4m
vwqzIQIaiAoOhggOcIgXC3pAD+ghEkAPkQb3h0ijIfZUVeOUeubnB62bXtXB6AcCEIDARBEo
/P/K3XKiZo+ThQAEVolAQ5xJxcLn5uaqZFr4P6bKrieqLzjYdMEBDvHCRQ/oAT1EAugh0uD+
gB5cDw0Rg2ek+MDHNRoCblxM7A8BCEAAAhCAAAQgUEagIc6ke+HkhZepYIyyhghoICE4GCI4
wCFeLOgBPaCHSAA9RBrcHyIN7NEIoJ7ReNEaAhCAAAQgAAEIQCAQaIgzSSw8zHmlZkMENJAZ
HAwRHOAQLxb0gB7QQySAHiIN7g+RBvZoBFDPaLxoDQEIQAACEIAABCAQCDTEmSQWHua8UrMh
AhrIDA6GCA5wiBcLekAP6CESQA+RBveHSAN7NAKoZzRetIYABCAAAQhAAAIQCAQa4kwSCw9z
XqnZEAENZAYHQwQHODgBicF/Bl5B9W4gDvUe4JCjg4OBggMchrxkaNaXAFdRXzRUQAACEIAA
BCAAAQgMItAQZ5JY+CAhHGp9QwQ0EA8cDBEc4BAvFvSAHtBDJIAeIg3uD5EG9mgEUM9ovGgN
AQhAAAIQgAAEIBAINMSZJBYe5rxSsyECGsgMDoYIDnCIFwt6QA/oIRJAD5EG94dIA3s0Aqhn
NF60hgAEIAABCEAAAhAIBBriTBILD3NeqdkQAQ1kBgdDBAc4xIsFPaAH9BAJoIdIg/tDpIE9
GgHUMxovWkMAAhCAAAQgAAEIBAINcSaJhYc5r9RsiIAGMoODIYIDHOLFgh7QA3qIBNBDpMH9
IdJoiD1V1Tilnvn5+ap6ox8IQAACdSJQ+P+Vu2WdJpexQAACVRFoiDOpWPjc3FxV0LJ+Cv/H
VNn1RPUFB5suOMAhXrjoAT2gh0gAPUQa3B/Qg+uhIWLwjBQf+LhGQ8CNi4n9IQABCEAAAhCA
AATKCDTEmXQv/LAyCJQdOoGGCGggIDgYIjjAIV4s6AE9oIdIAD1EGtwfIg3s0QigntF40RoC
EIAABCAAAQhAIBAY35m8KJ19MG05stPn9BfStqXwe39qvRKZt7SqU97UaT+8lfW8Lx1zeNij
5+ihLpjEwgOMSs3xBVTp6axZZ3Aw9HCAQ7wI0QN6QA+RAHqINLg/RBqHZM8eTNtuTNO9C48s
pjuPSLum8t/T0lLe+ewN6cCNecmH00nXdjnuQx58/81p/7Fp4/ZO8+kL0/SetPBkp2S1LNSz
WqQ5DgQgAAEIQAACEKghgfGdyZ5odEnEWuCuSeeGMLbc99OvL+K0HWf3tuLoarD53o5trU9e
SFu/3NlRm739dKrdIhbuKCo2xhdQxSe0Rt3BwcDDAQ7xEkQP6AE9RALoIdLg/hBpVGtvTC/8
ce5At9NRpk9r56XkBzqwLx11atkhN6Yn35nFy7/xxbT54jRze9s+v5WIsnhXOvrMdlLKRWlm
Ji1eXtbPipehnhVHzAEgAAEIQAACEIBAfQmM70z2xMIjLMW8LXSdxbnbHrkaFELatktXEF2x
86V21kq0U1KfllZe6DMet2ivVCzc8PEXAhCAAAQgAAEIQAACoxIoeqzl24e/P724/c7lGUN/
Z+R3d6ajj2tHwWfSdHyxsvw4g0sXd6eZ12XNNp6VHrqylXQ+eLeKWxjlijulOwhAAAIQgAAE
IACBZhAY35lcNhbeCVcPnRfeWgIlxr+jrWmxrrans0Oi+YDZWqlY+IDDNqB6fAHVAxIcbB7h
AId4RaMH9IAeIgH0EGlwf4g0qrNPvq+dt53SCeelhVvzcPVlaeHYdMJ1+WGuSZunxsjntq6u
SFN3px8+Vd15j9YT6hmNF60hAAEIQAACEIAABAKB8ZzJbKXCdpqKp337wiaqiuuZpDxqvsx6
4UPmhevs7RAjLDrusfAw9PHM8cCNd+z1tDccbDbgAId4XaIH9IAeIgH0EGlwf0AProeGiAEv
3GccAwIQgAAEIAABCEBg7Qk0zQs/bO2R1+sMGiKggZMGB0MEBzjEiwU9oAf0EAmgh0iD+0Ok
gT0aAdQzGi9aQwACEIAABCAAAQgEAg1xJj0jhVh4mPwqzIYIaCAqOBgiOMAhXizoAT2gh0gA
PUQa3B8ijYbYU1WNU+qZnx963fSqjko/EIAABCaBQOH/V+6WkzBpnCMEILDaBBriTCoWPjc3
VyXcwv8xVXY9UX3BwaYLDnCIFy56QA/oIRJAD5EG9wf04HpoiBg8I8UHPq7REHDjYmJ/CEAA
AhCAAAQgAIEyAg1xJt0LJy+8TAVjlDVEQAMJwcEQwQEO8WJBD+gBPUQC6CHS4P4QaWCPRgD1
jMaL1hCAAAQgAAEIQAACgUBDnEli4WHOKzUbIqCBzOBgiOAAh3ixoAf0gB4iAfQQaXB/iDSw
RyOAekbjRWsIQAACEIAABCAAgUCgIc4ksfAw55WaDRHQQGZwMERwgEO8WNADekAPkQB6iDS4
P0Qa2KMRQD2j8aI1BCAAAQhAAAIQgEAg0BBnklh4mPNKzYYIaCAzOBgiOMDBCUgM/jPwCqp3
A3Go9wCHHB0cDBQc4DDkJUOzvgS4ivqioQICEIAABCAAAQhAYBCBhjiTxMIHCeFQ6xsioIF4
4GCI4ACHeLGgB/SAHiIB9BBpcH+INLBHI4B6RuNFawhAAAIQgAAEIACBQKAhziSx8DDnlZoN
EdBAZnAwRHCAQ7xY0AN6QA+RAHqINLg/RBrYoxFAPaPxojUEIAABCEAAAhCAQCDQEGeSWHiY
80rNhghoIDM4GCI4wCFeLOgBPaCHSAA9RBrcHyKNQ7CvSecupW32uy8dc3ini5MXWuVbv9wp
TBelsw+2yk95Uygf2pz+QtrWfSDrc8uRQ3dRWUPUUxlKOoIABCAAAQhAAALNIzCGMymf+PTr
W8Qyt/v+NJVvbb63Y88e7LTp2Ln7fiiuc+7HRw8+88vbx11u8oiFL0dnnLoxBDTOYdfdvnCw
KYEDHOLFiR7QA3qIBNBDpMH9IdIY3d7/L9J921u7Ld6V0kyazsPhG2fTQ1empbxmcXfafG7u
nV+TNj+Wvmsh8MvSwlLa+KHiIS3UPbu3FS+Xi5859HmsveXu35T27Uszr+vsuPGstHBr61id
0tWwUM9qUOYYEIDAZBLQHTL+TOYgOGsIQAACK0tA98kqDtCJf3eHqz2HxA07mmLnXckqeWnW
ZilZqNtsc77jvtEeIR2FWHgVs1zWR0UCKut6osrgYNMFBzgYgfn5+T23zs8evSBDPy86MZ37
PKtp4l+uC5t1OMAhXv/oIdIYx74mzZ6edp/ViUkfuLmsu31p/1Nl5bFsMS3mWS777896W7w8
q8vsjWlDHmhXAP7RY9PGPAY/fWGa3pMWnoz7r5qNelYNNQeCAAQmjoB87sfelf3K0O8T/yn7
bbIjPnEzyAlDAAKrQGBoZ/Lw96cXt9/FPGM+nFme5N3J1R4zFu4vX8bc8WinLE3F4ugKqHeO
G86oxCQWXgKlkqKhBVTJ0dZvJ3CwuYEDHERA3vZnXp/e+Il04/fP+ez29IU3pg1HZL+3vKGh
jjjXBdeFEYADHCKBUeyn3pn+eirtyn+/5Vks8o/fnB6+ND14Xbuvm9ITbVP/bjg+pTwEbrFt
r9kwk554wLdGMxa+lI46Mx2zPc0c1gqcj7Z/Na25q1bDkV4gAIF6EZALrhD4a34mG5XsH70/
LX2g83uAiHi9ppvRQAAC4xAYx5nsDlH7WXRyxFPqrIsS7T47duV8xzbRzg+Tdbu7JLPcz6Fo
EAsvEqlqexwBVXUO66EfONgswKHhHDwK/vG/yVzwL176jCOe0XWBHtnIiDjXRcOvi65rICX0
gB4Kkjikzc2vzBY/mT3QWsbEX6xceEF68NjWUuJH7+qso7L74rTh9XnjPHz+6Bj53NnSK6el
fR87pPOuZieuomo40gsEIFAXAoUouMLeMQoebSLidZlzxgEBCIxFoCHOJLHwsVSyzM4NEdAy
BKwKDnCIImmgHrQKymcvSfctpDOfm677lfSlNyeFvfv9qOoLb2pQjngD9VA69XAwLHCAQ+kF
0oRC+2KhCkbKVVQBRLqAAATqQuBVm/Y8+4jWJ5zPP2rxyMPKV8R6aumwbz8+s5R/i8STTx/+
2YXZp5cquy3XhSXjgAAEGkRAa7nWfrSKhc/NzdV+mAwQAhCAAAQgAAEIQAAC64gAGSnraDI4
FQhAAAIQgAAEIACBphE4rGkDZrwQgAAEIAABCEAAAhBYcwJ44Ws+BZwABCAAAQhAAAIQgEDj
COCFN27KGTAEIAABCEAAAhCAwJoTwAtf8yngBCAAAQhAAAIQgAAEGkcAL7xxU86AIQABCEAA
AhCAAATWnMAyXvi7v/7Ekv08+PGzuk/0/L94+MetuqVWZafoH//6Px7f3Xyyt5bhkHzUPmgv
WfKiyR5+z9lnPHoU0SEhXdReEjmTcg4dED7/dZbEpiv+1z+07wRP3vkHGZhO0VOPfOY1OaqS
ory8pn9+9ZZHW0z2fWm7jbGkqKaDbw/r6nueXvr2DdPazKz4s/iVy7Z/fuFgLGq1bO9bj399
3BrwMxvMIV28c9/So7f8WvmsdldmW/lP3/blvUxEafdQ/ZR9zI/fc/XWVqmX1Y+DD62vJro5
efvJR7EjbVtKszt85gcb7/7czpY3LXfDPQrbTyUFP+z8v9j5UXPVM5+jUDn4YOu4xTIcOmDc
qi+HbIo0TPnYu3cXZ9+qCrNeYxT9ObgQMlZ21dSYQ0qnzn+n5Xy3L+FNV+z8q9wbz91xqzx1
xw4rUnN3zds71O7fX/3Ezj96WT4q+d4Hdmf21t/f8d68aOsffutxd81rN/LOgC7M3Wzzwjul
uUdeLFTTfeamxoaTbmcAOt53y+oMSh56IzjkLtSju3fv6+NCvXTHbv2X0q5Ua/NEs+J2YQfa
BFt9OWQjbXnfPvrssaWmHFK6+JM7W88aPsruea2rJHIXvMsL9/XCuwGUb8mv3tcd337317/f
XRB3lPtR8Mdi7QTbRQ5xoMU6DTNWT/Coe0+9dGANlEQJh1jUCEmcOr+nHfDuFUqvi17itffu
Vp8S+dz7ci+8M6SSok5lbayr79n7lZ33DuVolvijdcAQh9XznNFToBHHHeoAII5B/la5T33x
zofv2fn1dqX8r32tcHAwY0cTbpdwiEXtQbf/1WiDOeFj7z398rHVUxLb09altDml2RgLdy98
mYwUx7b15Jn9D37qEd9O55+1ZeZF7/lu9slRr7+tygOPfnNvp7Ws6Jy4LcM+fCoE2rv2XE8b
BQ5dA/3UXY9u2DK3KZxuV3Wr3MeubbcnjkMYpJsNlYSP34yuOW+CJDa95nmbjvvFP8+u40JI
XEBU+ROLD/+fyOjU973kuPs+945YZI75jvnv5DeDdi9y4PPtpYkOnZ86uzl977bbwnC3bj/v
uXt3XR+LUu6Yf/IT33o8G7HFzhU9V9DcCExe6Pzqe958xGdefc9SGHduXnjh3GOffvU1P4rl
V5+35atXXbo/FrU80h2tRJZ2zFhuqgHpCSx377wuti6c3TwVT+TY4/5plpRiPw3i0B5y6b8X
77zyjPvedfMP2pW33/ZIOuW8S5SV8dLtL9/09zs/cke7Jvs3+qtuyzBRhGyOuNN6t1/6suM3
xHPcsOm0n0oN4XD6T216+rtf7ppjTXINJSEX/CNp7yVpIc70aLacxL5ussJ9P+6uzEp6PXP3
OHXoll0SKRztvFa7dQ+H7hHEIerU6svBZ7B8ArKBN0QShSm3WQ+fGhXq6yyJPPuk22HOcsHb
PnWeuZL9b9kp6Kgnd7itop2won339Q+xd3Zd35bno2Sn2fKq2052PPO8qpW50k5Y0b6T533b
oNpB3fa/PtSegpTKgsJqnzvc5n3LzL3uPi298/Vm6HwPtp4fMjMmvjeKQz4v7jTHWWoXtv/N
6xQfzWNzJaHz2K5ll0dT40HWlx2H0DqzbMCtweZjj7ZumPXkkI1dLHqenNp82v/mjCZeEop/
n9x6PWhgLLzzBtWT3/jPLYnIj1h6/Xf+2bNe/N4QCW/VZf986pevv+sIDwFnbsbNJ153yimv
uSu06WNmkcIXvef24nuffVqvYvGhcOg+vXpw0JjKUHQPtXerKZLoHflyJbWRxLYbvn3Agk9/
/5f/Kox47wde97mHN570IivKhPP9f7PwhiNf2A57P3DBT07p54z7fr3ME/9/3/xg3vKB3/3f
eSd7P/63PzjuFz9qb3uGo6xT89f/x/eeMij/909OsnPM3sb88BHv2DD7hlbY+463nnG0AJxz
y0tvKfHEn7z/YxdnLe+4fuffpuNe9rL0wO6FI19xdSGbZZ0OP56WPM4L9r71jIsLwe2sSUnU
uywo3Optz41n5528ZefuZ2Vx5Jt3Lzx724e+lb/uGQ+4Xu2bX/Xvvvjsi36YyeKDz7x7977v
fa39EUCzOPSZH7lWVz5n/ud/7s9ivZyvz5/z+XOzG8UVh1/T46PFpmZnQeMXXP65fi9+9u6w
/kpuf+PrP/bYOf8908nnz3nk3r/be/+ezEGtNwcNcOkDT1129E+/JUTCayqJ7enolE75SPZe
pn63pLTlDaO8oFkI5ZUL2BvJzwhhwEJjb6XyaGcbS+t9MZGuE44DixU+fDdiy7Yd94j2RHBo
D6J7Br3UDR9Y3VH4QH3oXWh8+G502nWs2Em0J0sSGo8ngcsFXyaQ7c0cQSyJdtbj0kRmpCwb
yM7zT1pvbxqDWBLtVvx8kmLieRA78yj8x9NHslTxfKkQn/gsEn5/qVsdo8XRtiC5d9npaX1b
hSE0j0NXbDObq8wN6/6Rz/3emD0un6ydI96a3NhJtK2zIXz2tRdJ12n3nk6ruqtV/Th0Da8D
QcXdiliqoyTK88I7FAqWXIcHioHqLi8ha69GrfyTZV/Oyz0Ky1PJ9uhOJl/WRymc1BpsLsdB
PFrJF27VlkNAH2UQ7bxJAyTRRhHH3rb1bxMlEddD6X1f05dICc3aEIP7rqIuL1zby3v0nT7W
kyVH+u/aCxS2zsuXSEmpK03FqqPnHe28dlmPfj0Nu+dcunzPspcP5YT3WRwl7hrt7Bj99+o5
g/VRoAGE54bicJYdUWwc7Wxgk8QhOl7RzifIC+RwtpcLyd5KbCdq5I30J3PTLEEjq+zO1ej1
Vdt7rat/fag2nO50E1Xao0StOWhwDxU/u4hY8vnygtqhKPfC+76dqVcRn/8r3/Snk65UX7ka
VvHJf/7997w0yz8JL+flNb2p4T+YPu/rqrr5xD33HchI5+541lZ9fPD8Phkv+ZSs7Z/lOPz+
z/6XPWfkb6n+3qb/uS1L26kvhwGz0CRJLIeiYZLIw9XZVbzwvpN3/UaWVRLe18zK8/yTf9zz
M2/ONzrNlmMYUqHU7W2/9UsfX771OqvVK5knvOIjNl79zfJP7rjneZd+1Ur+bOs9b/E0lf5n
nmW05D9q//ZXXt+/4YTU6G3Ff+gkZdhJv+T4jYsP/HE7UWPAQOR02grjN2299z+8qvsNzwG7
rk21vGabwdfufetzX94+4eZxGJ7+7W+cfcvXnnN55iYs3favn76hkK+ijp54xtYbVZmlbixm
/WZOWg5Zzed/I6Y3DH/UtW4pjzMfwtIfPmd+W56iUWsOeiXzpFflCTj5qAd8hFFrFKutvHak
cLWPu96OBwefEVAYCji4JDAgAAEI9CHgAdI+9U0phoPP9ISjGGmlQh80BgQgAAEIQAACEIAA
BCAAAQhAAAIQgAAEIAABCEBgcggQC5+cueJMIQABCEAAAhCAAARqR6Dv25m1GykDggAEIAAB
CEAAAhCAwHohgBe+XmaC84AABCAAAQhAAAIQaA6Bw6sa6gUXXFBVV/QDAQhAAAIQgAAEINBA
AvPz880Z9bBe+NJD106dfKlz0abbZrz23+9sFLjC8NmEAAQgAAEIQAACEBiHQNNCusWMlO03
vU8e9u535wzf/dv7bjpzGJrRQR+mfY3bNE1A/aYSDkYGDnCI1wh6QA/oIRJAD5EG94dIo5n2
mTvv+O0d2dBlXCt33L3wQvBbm/5rpFBPMxXDqCEAAQhAAAIQgEAlBKpyJi+49l1Pm6d65yVv
my4/tWHalO85dmn5SoU7/vI3X7lp9g0PvW/nL9993tZLp27YPfBARMELiKoSUKHbiduEg00Z
HOAQL170gB7QQySAHiIN7g+Rxlj229968y888ac/e6l81KsefuFVn/6Xx/d2N0yb3r2qLvn/
qKPuel3YcvQAAAAASUVORK5CYII=

--------------Uhew7EHClNsydTIY11JlMa0Z--

--------------x0uHU030a3UDbEzxqRMHolvj--

--===============0251403797001115157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0251403797001115157==--
