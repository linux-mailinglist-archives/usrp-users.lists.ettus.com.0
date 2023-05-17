Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A86417071FB
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 21:23:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A338380989
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 15:23:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684351433; bh=iSF07HkBp4T13vJNuoArlbLVm61l30/By8ftxOnF07A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J2mLmI8U2mMeD9+UpE9VwZWRx6xhxUDxn3t2tJhOHz8/9wrFv0oAURgdPYOUDC0Ul
	 n6Os+u4sLeZhAoKEWpKS8P18jSep/iu1kQznGVklSgXkSrvqL6dGd2RNLRWF7rPPYm
	 HAKi6tEYXZxC/5q0cpDx2oGW1Y6J8QwliUeKroIArpPb7VIhc5TlEJMpVnD9uhfQge
	 7p4Of/svr3IeAJQni0rLYBbip7C78ge34TBJOUmeEYHI09aQqaKITFnbzh1zT0C6ui
	 lEZPICtEpqrWvIFIywuuIWXYghf/b88eE8ZjXjFa0Rc1FnEe6ZU9R5kYi3H7yzPBzE
	 Naz0HNyspUR7A==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id AB6723800AF
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 15:22:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qR7Axpt6";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6239144bd59so104576d6.3
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 12:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684351373; x=1686943373;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TX3XWEwnI7MBrX1oXZTmzNyCt0Gx/UlO+5HdqM7DFO0=;
        b=qR7Axpt6285wKGdSQQgDU/pX9xEoAbRhNDVbYZVXCxStmQvYYWDjxAnbizG50SqRlY
         NYDZb8hSMD0yMAuVwnoNRmIFgRBRfP3XhnBzGQPoa14emMxULnczLxOTCiaJxil/GgBN
         oleiGMakAUhsjmby6DShWJwj5sRs6ASiYCgP6OdXJxOA3rrN3yh6N6yBO2ZkdOuWSYnj
         fFYa7CSo1ZhcHpoEQ1ue1+SOldiUx/7C8ZZrSJ96R9xMQaSqziT8tgVJwMOwxboD6+3z
         1D67humMTcyCS0yccU8HpSUmdKrFV07JH6x5xEUW6L6ghGiVbl7OPrKtw2pNrCICuaJb
         zgsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684351373; x=1686943373;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TX3XWEwnI7MBrX1oXZTmzNyCt0Gx/UlO+5HdqM7DFO0=;
        b=fuxerF0wU9zQwO8rE216G9o+GQxErv6bClUpw6wXmGwxdUoFvRK4LjZgtxylf1VciI
         0YAdGddFxNyAsuJ3+I5Kaxa/W5NmO4lZkyVOyvlLYSde/STG8Zi9OZSwbmWuJRiZ8hQR
         FJwppkse0oXKuqtTRk6wXmgCQHnOaqc3p4JYXL8ix2wfhp0HysXtPrxBcoOfpnnboJlC
         qDwbaHlGORJftwS5MiuVvWchhgniY2b3LXfqP/GL+bbtsQRmCuJOr0YvLLdWWbwftHDo
         blfIv30avjjrHinoFMM0qaWzj1C1Xd8g/2HMeuvEo9k8ouWZTD6HTYgtbK47v7CgObBz
         MJtA==
X-Gm-Message-State: AC+VfDxUZLSwddplYm6Qvv6DU9dAHXkaSQVxrCpnOO159Wg90N+f88dB
	PWSITeMA3klAOK81u9f1f6RWIUVgGr8=
X-Google-Smtp-Source: ACHHUZ51qxzx9qsE9ZzwDYo2y/Oe3NFO+FLFUBFSwSqpyD4hy19E0y+woj2MLqx0YyngAYEiL7xEeA==
X-Received: by 2002:a05:6214:5286:b0:5ef:50a3:f9ca with SMTP id kj6-20020a056214528600b005ef50a3f9camr1244993qvb.47.1684351372981;
        Wed, 17 May 2023 12:22:52 -0700 (PDT)
Received: from [192.168.2.150] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id c16-20020a0ca9d0000000b005ef6b124d39sm6575345qvb.5.2023.05.17.12.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:22:52 -0700 (PDT)
Message-ID: <c97452de-34be-a9fe-f86c-15a8bdea58e4@gmail.com>
Date: Wed, 17 May 2023 15:22:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "cjohnson ." <cjohnson@serranosystems.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.com>
 <a017cc06-abad-0f0f-88dc-5f26cacda8c0@gmail.com>
 <1054159327.2913169.1684351212412@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1054159327.2913169.1684351212412@mail.yahoo.com>
Message-ID-Hash: KW7LGUVPPTOU6YCHNGTKELUPIPMJ4FGZ
X-Message-ID-Hash: KW7LGUVPPTOU6YCHNGTKELUPIPMJ4FGZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KW7LGUVPPTOU6YCHNGTKELUPIPMJ4FGZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3153170260354278221=="

This is a multi-part message in MIME format.
--===============3153170260354278221==
Content-Type: multipart/alternative;
 boundary="------------92nhQfRhrEPhcrfki9c5FqD0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------92nhQfRhrEPhcrfki9c5FqD0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/05/2023 15:20, cjohnson . wrote:
> Hi Marcus,
>
> Okay, thanks for that information.
>
> What should we try next?
>
> Thanks,
> --Cy
Could you share the "ifconfig" for your host (or whatever the modern=20
equivalent is with the "ip" toolset).


>
> On Wednesday, May 17, 2023 at 12:05:39 PM PDT, Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>
> On 17/05/2023 14:49, cjohnson@serranosystems.com=20
> <mailto:cjohnson@serranosystems.com> wrote:
>
> Hi Marcus,
>
> I am still interested to know how your team tests to verify the FPGA=20
> is sending the data=E2=80=A6.meanwhile I did two quick experiments base=
d on=20
> your suggestions.
>
> I have no visibility into the details of the R&D teams testing=20
> apparatus, but I have been told that this feature was tested
> =C2=A0 in the automated test jig they use.=C2=A0 That's all I know.
>
> I'm a (very) part-time contractor, and not an Ettus/NI R&D employee.=C2=
=A0=20
> So I'm singularly unqualified to talk about the
> =C2=A0 test setup.
>
>
>
>> 1) Same setup using the second interface I setup on the network card=20
>> for the remote port @192.168.30.30, =E2=80=9C./remote_rx.py --rate=3D2=
00e6=20
>> --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.30 --dest-port=3D=
54321=20
>> --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.
>>
>> Setup netcat -ul 54321 to listen to this port, and can be verified as=20
>> listening (bottom line):
>>
>>     |Proto Recv-Q Send-Q Local Address Foreign Address State udp 0 0
>>     127.0.0.53:53 0.0.0.0:* udp 0 0 0.0.0.0:111 0.0.0.0:* udp 0 0
>>     0.0.0.0:631 0.0.0.0:* udp 0 0 0.0.0.0:5353 0.0.0.0:* udp 0 0
>>     0.0.0.0:50237 0.0.0.0:* udp 0 0 0.0.0.0:54321 0.0.0.0:* |
>>
>> Still no traffic to 192.168.30.30 (remote streaming dest), only=20
>> control data between USRP (192.168.30.2) and host (192.168.30.1) when=20
>> sniffing.
>>
>> 2) Set the dest-addr to be the host (192.168.30.2), which I would=20
>> think would be equivalent to =E2=80=9Cnormal streaming=E2=80=9D. =E2=80=
=9C./remote_rx.py=20
>> --rate=3D200e6 --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.30.2=20
>> --dest-port=3D54321 --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:=
47=E2=80=9D
>>
>> Setup netcat -ul 54321 to listen to this port, and can be verified as=20
>> listening (bottom line):
>>
>>     |Proto Recv-Q Send-Q Local Address Foreign Address State udp 0 0
>>     127.0.0.53:53 0.0.0.0:* udp 0 0 0.0.0.0:111 0.0.0.0:* udp 0 0
>>     0.0.0.0:631 0.0.0.0:* udp 0 0 0.0.0.0:5353 0.0.0.0:* udp 0 0
>>     0.0.0.0:50237 0.0.0.0:* udp 0 0 0.0.0.0:54321 0.0.0.0:* |
>>
>> I don=E2=80=99t see any high speed IQ data going between 192.168.30.1 =
(host)=20
>> and 192.168.30.2 (USRP), only the normal control trickle.
>>
>>
>> Thanks,
>>
>> =E2=80=94Cy
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------92nhQfRhrEPhcrfki9c5FqD0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/05/2023 15:20, cjohnson . wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1054159327.2913169.1684351212412@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpb4355ee1yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Okay, thanks for that
          information.=C2=A0=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">What should we try next?</=
div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">--Cy</div>
      </div>
    </blockquote>
    Could you share the "ifconfig" for your host (or whatever the modern
    equivalent is with the "ip" toolset).<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1054159327.2913169.1684351212412@mail.yahoo.com">
      <div class=3D"ydpb4355ee1yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div><br>
        </div>
      </div>
      <div id=3D"yahoo_quoted_5088712209" class=3D"yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, May 17, 2023 at 12:05:39 PM PDT, Marcus D.
            Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"yiv6486873639">
              <div>
                <div class=3D"yiv6486873639moz-cite-prefix">On 17/05/2023
                  14:49, <a rel=3D"nofollow noopener noreferrer"
                    shape=3D"rect"
                    ymailto=3D"mailto:cjohnson@serranosystems.com"
                    target=3D"_blank"
                    href=3D"mailto:cjohnson@serranosystems.com"
                    class=3D"yiv6486873639moz-txt-link-abbreviated
                    moz-txt-link-freetext" moz-do-not-send=3D"true">cjohn=
son@serranosystems.com</a>
                  wrote:<br clear=3D"none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <p>Hi Marcus,</p>
                <p>I am still interested to know how your team tests to
                  verify the FPGA is sending the data=E2=80=A6.meanwhile =
I did
                  two quick experiments based on your suggestions.</p>
                I have no visibility into the details of the R&amp;D
                teams testing apparatus, but I have been told that this
                feature was tested<br clear=3D"none">
                =C2=A0 in the automated test jig they use.=C2=A0 That's a=
ll I
                know.<br clear=3D"none">
                <br clear=3D"none">
                I'm a (very) part-time contractor, and not an Ettus/NI
                R&amp;D employee.=C2=A0 So I'm singularly unqualified to =
talk
                about the<br clear=3D"none">
                =C2=A0 test setup.
                <div id=3D"yiv6486873639yqtfd61628"
                  class=3D"yiv6486873639yqt9844494158"><br clear=3D"none"=
>
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <p>1) Same setup using the second interface I setup
                      on the network card for the remote port
                      @192.168.30.30, =E2=80=9C./remote_rx.py --rate=3D20=
0e6
                      --freq=3D1223e6 --gain=3D20 --dest-addr=3D192.168.3=
0.30
                      --dest-port=3D54321 --adapter=3Dsfp1
                      --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.</p>
                    <p>Setup netcat -ul 54321 to listen to this port,
                      and can be verified as listening (bottom line):</p>
                    <blockquote>
                      <pre><code>Proto Recv-Q Send-Q Local Address       =
    Foreign Address         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre>
                    </blockquote>
                    <p>Still no traffic to 192.168.30.30 (remote
                      streaming dest), only control data between USRP
                      (192.168.30.2) and host (192.168.30.1) when
                      sniffing.</p>
                    <p> </p>
                    <p>2) Set the dest-addr to be the host
                      (192.168.30.2), which I would think would be
                      equivalent to =E2=80=9Cnormal streaming=E2=80=9D. =E2=
=80=9C./remote_rx.py
                      --rate=3D200e6 --freq=3D1223e6 --gain=3D20
                      --dest-addr=3D192.168.30.2 --dest-port=3D54321
                      --adapter=3Dsfp1 --dest-mac-addr=3D3c:ec:ef:c2:43:4=
7=E2=80=9D
                    </p>
                    <p>Setup netcat -ul 54321 to listen to this port,
                      and can be verified as listening (bottom line):</p>
                    <blockquote>
                      <pre><code>Proto Recv-Q Send-Q Local Address       =
    Foreign Address         State     =20
udp        0      0 127.0.0.53:53           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:111             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:631             0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:5353            0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:50237           0.0.0.0:*                    =
     =20
udp        0      0 0.0.0.0:54321           0.0.0.0:* </code></pre>
                    </blockquote>
                    <p>I don=E2=80=99t see any high speed IQ data going b=
etween
                      192.168.30.1 (host) and 192.168.30.2 (USRP), only
                      the normal control trickle.</p>
                    <p><br clear=3D"none">
                    </p>
                    <p>Thanks,</p>
                    <p>=E2=80=94Cy</p>
                    <br clear=3D"none">
                    <fieldset
                      class=3D"yiv6486873639moz-mime-attachment-header"><=
/fieldset>
                    <pre class=3D"yiv6486873639moz-quote-pre">___________=
____________________________________
USRP-users mailing list -- <a rel=3D"nofollow noopener noreferrer" shape=3D=
"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" hr=
ef=3D"mailto:usrp-users@lists.ettus.com" class=3D"yiv6486873639moz-txt-li=
nk-abbreviated moz-txt-link-freetext" moz-do-not-send=3D"true">usrp-users=
@lists.ettus.com</a>
To unsubscribe send an email to <a rel=3D"nofollow noopener noreferrer" s=
hape=3D"rect" ymailto=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D=
"_blank" href=3D"mailto:usrp-users-leave@lists.ettus.com" class=3D"yiv648=
6873639moz-txt-link-abbreviated moz-txt-link-freetext" moz-do-not-send=3D=
"true">usrp-users-leave@lists.ettus.com</a>
</pre>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"yqt9844494158" id=3D"yqtfd44069">______________=
_________________________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                ymailto=3D"mailto:usrp-users@lists.ettus.com"
                href=3D"mailto:usrp-users@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                ymailto=3D"mailto:usrp-users-leave@lists.ettus.com"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users-leave@lists.ettus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------92nhQfRhrEPhcrfki9c5FqD0--

--===============3153170260354278221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3153170260354278221==--
