Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B0170738C
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 23:07:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B84B1384655
	for <lists+usrp-users@lfdr.de>; Wed, 17 May 2023 17:07:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684357665; bh=rBVaic8mCTB4D4OghwOyAloQfTHIey51mxZjTamXxGY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=CPCBHWIxif4TDk2SA6aJJsfzM649DjcgO3i6H+VoBfk/+w5d7vnlvjfHU6Gr33oJY
	 oHdeWc7YqnifUe3Jw4YP5cH2MqpcY6MamJAqnrdeCFpvNBrFovT8aowwJ5be6mZqiR
	 tpG1HJwSAHcwSTMK35wSaYfXRXIcNM4kYQBvBv1WpyiLJGtJqTTp+fBy6zqjUyMx9T
	 qHUSa3eLehLj0OQh7ub3S9NGwfP879kP2CLt//j+axLJjbLuxSX/QucgmsEy5KcUC0
	 WHSykb1oAeuuatY5YAFU0jVrGXnp9xGV2gguqxH/muYt6tMbfaj5DoMT3GHFTJ0sHo
	 oZVoa3w7b1iow==
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D582384655
	for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 17:06:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="H3Azai9w";
	dkim-atps=neutral
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-3f41dceb9c9so9435995e9.3
        for <usrp-users@lists.ettus.com>; Wed, 17 May 2023 14:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1684357603; x=1686949603;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZeHENW0w8PKPcSu77O0bvgge3wcL3mfSs4AYTpxRXh8=;
        b=H3Azai9w6IPzndTufgnNomtVPyd1pkMzik3Vo4szwNr5kqqd7x3GWWNLcij66HOcl/
         1XZQfw0XrBsuAQctHkvJ41qZYuqomr8CgIjz8XBoOeKbZE2wh0cpSvEGHZp7E2tRFXVO
         jXojsgsPy9mGZovh8HEDQ21hvcYAis6KT+JiKUuzXtsd2+rehAUy8NR+Hy11ZOpXvfQc
         6+zTNFizlUp4U/tL0vfQEN+nW3YVNt+wLXeAQU1a0pSKsYRkHl/EiDGYIq01WsIYmd8a
         yMPAWqBIMif9nkRZynHqTmpZM1L6dK2qgphF6D5NI1JKMnW1O5NiFqjqwvgsNIRZC5w7
         nF8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684357603; x=1686949603;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZeHENW0w8PKPcSu77O0bvgge3wcL3mfSs4AYTpxRXh8=;
        b=SMGkrAyZZIrfrNAhH2eeTe8ijzLPCfh5ISXzdwOEABxG+u2f10nEth/UH0pc0ZAJYt
         esGtdsFsWjSpHW4U5h7DoFRmUtpisJr5UViyDzGIoGERqT7OW+HcYS945pJ11lXauvx6
         9iF2jfpo2TuSkPVoSwgrfkHgKmHhR3zGu7zGt48sCmTckhC9UnU18e0LXcV1JNqhcSia
         c3I9DT7sGSFAnEVkqZRTarkiud+EYWZPA0Wmnn3r8G1VNXNWL9uwS62qRAMr+YxhiPik
         /k/kHISurDtk/i3nZu+ppXo9PX7ZC9AUw/qHxTGG9mDqtg9PnjLyj93ENYzpl9YKx/Xl
         yriw==
X-Gm-Message-State: AC+VfDwta5P/2Wnbp1ijQlVHDjVTNQZKQgGdhvZBWkcnSjJEOCTi3PY9
	52xEBvg917fzQvv9UPrhPYuqD0Mjup6bSQlfaXhRNQ==
X-Google-Smtp-Source: ACHHUZ6HZ2VJfA4OOqNi0rQ4vyOVgaH4wtre96IeEySn+vtjzv5sBwNf/yDYQ3uLAc67VE5jLaCCMA==
X-Received: by 2002:a7b:c40f:0:b0:3f4:2300:e015 with SMTP id k15-20020a7bc40f000000b003f42300e015mr26089798wmi.5.1684357603526;
        Wed, 17 May 2023 14:06:43 -0700 (PDT)
Received: from ?IPV6:2001:9e8:386a:cd00:998f:ca6a:6065:3212? ([2001:9e8:386a:cd00:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id u24-20020a05600c211800b003f1958eeadcsm3304756wml.17.2023.05.17.14.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 14:06:42 -0700 (PDT)
Message-ID: <5a290988-e8ce-8c37-a5b5-e200960047a9@ettus.com>
Date: Wed, 17 May 2023 23:06:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com, cjohnson@serranosystems.com
References: <6yx612buSyar5SNsVgbvrACyBOu0J47fS0BT75pU@lists.ettus.com>
 <a017cc06-abad-0f0f-88dc-5f26cacda8c0@gmail.com>
 <1054159327.2913169.1684351212412@mail.yahoo.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <1054159327.2913169.1684351212412@mail.yahoo.com>
Message-ID-Hash: 7REVYQDPNNNNMNF7VAXY6X2D6GDVXDW4
X-Message-ID-Hash: 7REVYQDPNNNNMNF7VAXY6X2D6GDVXDW4
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Remote Streaming UHD 4.4 on USRP-2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7REVYQDPNNNNMNF7VAXY6X2D6GDVXDW4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2804298080721674013=="

This is a multi-part message in MIME format.
--===============2804298080721674013==
Content-Type: multipart/alternative;
 boundary="------------OLcOGIXG0qgQsKt7IIHWawx0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OLcOGIXG0qgQsKt7IIHWawx0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hey Cy,

it's getting a bit late here in Germany=C2=B9, I'll try to come up with a=
 test setup tomorrow;=20
haven't tried that feature (it being rather fresh).

Excellent debugging by the way; my first reaction was that, hm, if MAC ad=
dress resolution=20
fails, the device might be trying to inadvisably stream out the wrong por=
t, and then throw=20
errors=E2=80=A6 But you precluded that by specifying the MAC address. Jus=
t to verify, since that=20
is a supermicro built-in interface, is this 10 Gb/s ethernet? If it is, f=
ine, otherwise,=20
my reproduction will aim for lower rates than 200 MS/s, and gigabit ether=
net.

Regarding what might be going wrong on the host side of things: the actua=
l error you're=20
seeing is thrown in lib/rfnoc/link_stream_manager.cpp; it checks capabili=
ties that the=20
streamer controlling sfp1 really needs to have for this to work. Now the =
question becomes=20
whether it doesn't have these, or whether the self-diagnosis is wrong.

Best,
Marcus (the one of lesser wisdom)


=C2=B9 Just as Marcus Leech, I'm a contractor =E2=80=93 I moonlight, but =
it's getting a bit too much=20
moon and to little light mentally for me tonight.

On 17.05.23 21:20, cjohnson . wrote:
> Hi Marcus,
>
> Okay, thanks for that information.
>
> What should we try next?
>
> Thanks,
> --Cy
>
> On Wednesday, May 17, 2023 at 12:05:39 PM PDT, Marcus D. Leech <patchvo=
nbraun@gmail.com>=20
> wrote:
>
>
> On 17/05/2023 14:49, cjohnson@serranosystems.com <mailto:cjohnson@serra=
nosystems.com> wrote:
>
> Hi Marcus,
>
> I am still interested to know how your team tests to verify the FPGA is=
 sending the=20
> data=E2=80=A6.meanwhile I did two quick experiments based on your sugge=
stions.
>
> I have no visibility into the details of the R&D teams testing apparatu=
s, but I have=20
> been told that this feature was tested
> =C2=A0 in the automated test jig they use.=C2=A0 That's all I know.
>
> I'm a (very) part-time contractor, and not an Ettus/NI R&D employee.=C2=
=A0 So I'm singularly=20
> unqualified to talk about the
> =C2=A0 test setup.
>
>
>
>> 1) Same setup using the second interface I setup on the network card f=
or the remote=20
>> port @192.168.30.30, =E2=80=9C./remote_rx.py --rate=3D200e6 --freq=3D1=
223e6 --gain=3D20=20
>> --dest-addr=3D192.168.30.30 --dest-port=3D54321 --adapter=3Dsfp1=20
>> --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D.
>>
>> Setup netcat -ul 54321 to listen to this port, and can be verified as =
listening (bottom=20
>> line):
>>
>>     |Proto Recv-Q Send-Q Local Address Foreign Address State udp 0 0 1=
27.0.0.53:53
>>     0.0.0.0:* udp 0 0 0.0.0.0:111 0.0.0.0:* udp 0 0 0.0.0.0:631 0.0.0.=
0:* udp 0 0
>>     0.0.0.0:5353 0.0.0.0:* udp 0 0 0.0.0.0:50237 0.0.0.0:* udp 0 0 0.0=
.0.0:54321 0.0.0.0:* |
>>
>> Still no traffic to 192.168.30.30 (remote streaming dest), only contro=
l data between=20
>> USRP (192.168.30.2) and host (192.168.30.1) when sniffing.
>>
>> 2) Set the dest-addr to be the host (192.168.30.2), which I would thin=
k would be=20
>> equivalent to =E2=80=9Cnormal streaming=E2=80=9D. =E2=80=9C./remote_rx=
.py --rate=3D200e6 --freq=3D1223e6 --gain=3D20=20
>> --dest-addr=3D192.168.30.2 --dest-port=3D54321 --adapter=3Dsfp1=20
>> --dest-mac-addr=3D3c:ec:ef:c2:43:47=E2=80=9D
>>
>> Setup netcat -ul 54321 to listen to this port, and can be verified as =
listening (bottom=20
>> line):
>>
>>     |Proto Recv-Q Send-Q Local Address Foreign Address State udp 0 0 1=
27.0.0.53:53
>>     0.0.0.0:* udp 0 0 0.0.0.0:111 0.0.0.0:* udp 0 0 0.0.0.0:631 0.0.0.=
0:* udp 0 0
>>     0.0.0.0:5353 0.0.0.0:* udp 0 0 0.0.0.0:50237 0.0.0.0:* udp 0 0 0.0=
.0.0:54321 0.0.0.0:* |
>>
>> I don=E2=80=99t see any high speed IQ data going between 192.168.30.1 =
(host) and 192.168.30.2=20
>> (USRP), only the normal control trickle.
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
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------OLcOGIXG0qgQsKt7IIHWawx0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hey Cy,</p>
    <p>it's getting a bit late here in Germany=C2=B9, I'll try to come up
      with a test setup tomorrow; haven't tried that feature (it being
      rather fresh).</p>
    <p>Excellent debugging by the way; my first reaction was that, hm,
      if MAC address resolution fails, the device might be trying to
      inadvisably stream out the wrong port, and then throw errors=E2=80=A6=
 But
      you precluded that by specifying the MAC address. Just to verify,
      since that is a supermicro built-in interface, is this 10 Gb/s
      ethernet? If it is, fine, otherwise, my reproduction will aim for
      lower rates than 200 MS/s, and gigabit ethernet.</p>
    <p>Regarding what might be going wrong on the host side of things:
      the actual error you're seeing is thrown in
      lib/rfnoc/link_stream_manager.cpp; it checks capabilities that the
      streamer controlling sfp1 really needs to have for this to work.
      Now the question becomes whether it doesn't have these, or whether
      the self-diagnosis is wrong.<br>
    </p>
    <p>Best,<br>
      Marcus (the one of lesser wisdom)</p>
    <p><br>
    </p>
    <p>=C2=B9 Just as Marcus Leech, I'm a contractor =E2=80=93 I moonligh=
t, but it's
      getting a bit too much moon and to little light mentally for me
      tonight.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 17.05.23 21:20, cjohnson . wrote:<b=
r>
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
  </body>
</html>

--------------OLcOGIXG0qgQsKt7IIHWawx0--

--===============2804298080721674013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2804298080721674013==--
