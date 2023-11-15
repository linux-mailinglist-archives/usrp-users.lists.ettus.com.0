Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 083CF7ED809
	for <lists+usrp-users@lfdr.de>; Thu, 16 Nov 2023 00:19:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D0744385909
	for <lists+usrp-users@lfdr.de>; Wed, 15 Nov 2023 18:19:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1700090365; bh=Id3MFU01eZ/qsAZfH7uer4/Phm2zN+jCDWG6R+aLiLA=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Rrt3F1bQkIB6OM+slKuK6Qr9xLBPuoYcDwFBIWAj2Cmko6qWQnZ8xTwNHVnvimuoN
	 r/JLOPRllM3TcKQZFLtzCuakJBtPopOCbO6UDKvSVAfyzKp6MbcD/mhXtQTHUsX0KR
	 9S3cM9roXLBc6UYqxfwQ7009DwZUj0b1xlik3aLqItz4NQFv6L7nW9Pl658hpHt4Co
	 ZXYaUfIV0p3N/ZbupLeJ7yItwb7q3w3EYk5nGfomUrNOV54o0KHc+xfboLUsM+14og
	 khMZ9LNgZQHXsFVo822u7TmEN0fhJ01reXcZChr4T1Xgm5YY7a7uvBZ6i3m7ddr0SB
	 +xuJt6F5HOYjw==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 9C5093856A0
	for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 18:18:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PJB+4mhl";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-41cba6e8e65so1342571cf.2
        for <usrp-users@lists.ettus.com>; Wed, 15 Nov 2023 15:18:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700090309; x=1700695109; darn=lists.ettus.com;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UCz2L8x/aIKEgpfPExz5D+2fHu09MOeyvT7JRIqHWUI=;
        b=PJB+4mhlBMcmwd9D/6v7uYgG90Y8p7AXYi/Qk/dOXiNWZfk7ruXoyeLEYcEzSwkEo3
         0p2Q4/OiKZxMdV/3yukEvfj9XA9l1aV9T+HB1fVMt3mVKKojx/8MHyTeKayo+aGYcKrK
         DW8o4ozxQ9G3T6CR9GWwKuJ7JpoGzyxgs14FiXwJZiKO4NyoKvth6mi5EzMqhpKT8WGP
         o3l4GxRSeX9QlZT4IPu3R+qcHDklvlwB5bVb6lW+j5YbxO1jXqA0XXnLht6puA3z+JBT
         TMkJtNO5HSlIQaGFwgOeOIaOrPL05IoeEsxs6m83eiTeS3UPA74jc9nZlHBwOdPchhtD
         t9Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090309; x=1700695109;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UCz2L8x/aIKEgpfPExz5D+2fHu09MOeyvT7JRIqHWUI=;
        b=cyNnH8Uq6y/PrBTsNNf5xf5u77kzgqOM3BiNgSsFmI9OeqHCMNQUdB0XJel/xBHvj2
         oOSOAFGx07fCOeTTEh14DTznRemtADXGpZrwoe1NOQU5Xge4rq90CjR00X/GgwOrwyfv
         3BpPg5zbTqB3Kh/T/jJBQwN6YYu/GU1wqSxkn3u3ehp57ECNXze77LjP5AHcvk1ApoZb
         kqmRHShGdgePxjH4e9vxTfYC/qfdUY+uQXmT1NzFx3z1WRs6wiX6q2hDnZ27qsWxaPQ3
         UoFlnO5UTLFKicOB/MDiMaeVchLr8cdwvIjpdk2be3ixay8GztiS2wfcDI8GfAwu0IgZ
         sCPA==
X-Gm-Message-State: AOJu0YzJZhIhM5izY1YV/vteZndU0/Ub6ItDOp03jnUexdVgb+tAe5Z+
	xOU2+sPO2e53xA5ke5c0+hFew11nmkg=
X-Google-Smtp-Source: AGHT+IFZ3EiCJOl/nrGyuYCeF6ne8JPkkKvouNf4yjNZ7UwvyYx09mwPYmBdupDVWsrZ+wkjQ86jsw==
X-Received: by 2002:a05:622a:1d5:b0:421:b997:968c with SMTP id t21-20020a05622a01d500b00421b997968cmr8747686qtw.24.1700090308557;
        Wed, 15 Nov 2023 15:18:28 -0800 (PST)
Received: from [192.168.2.170] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id d6-20020ac85346000000b004181a8a3e2dsm3913388qto.41.2023.11.15.15.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 15:18:28 -0800 (PST)
Message-ID: <18f83d77-5aab-4b94-9b0d-0e43afa70cf1@gmail.com>
Date: Wed, 15 Nov 2023 18:18:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: German Farinas <german.farinas@gmail.com>
References: <CAJx0LdXipnYVx+KUwqqkLH=UDc0P5+V8FHU16fb=e9v5dPb0tw@mail.gmail.com>
 <76AAE55D-A2CE-4C2E-AE62-FF732586A134@gmail.com>
 <CAJx0LdVayd4DbfQ92YiVtSoU3xW-4NiLq3c=XetUWmTfZqdKpg@mail.gmail.com>
 <869994db-3609-47b5-8acb-b9f837ac8cd8@gmail.com>
 <CAJx0LdWSR5UORFDNLvhvY_r-TZOo6Okqr9wKN18==+UxiR64uQ@mail.gmail.com>
 <84efc628-a50c-48e6-82d8-322187b998e0@gmail.com>
 <CAJx0LdXX5u1GpvqC5B+_1RzYN9gqSjeaP3y3vXF3rHSH=97JuA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJx0LdXX5u1GpvqC5B+_1RzYN9gqSjeaP3y3vXF3rHSH=97JuA@mail.gmail.com>
Message-ID-Hash: QEYQAY4WJLEB44D2HBC7DQMF5ZMJWJV2
X-Message-ID-Hash: QEYQAY4WJLEB44D2HBC7DQMF5ZMJWJV2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The firmware build is not compatible with the host code build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QEYQAY4WJLEB44D2HBC7DQMF5ZMJWJV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1224255094954786214=="

This is a multi-part message in MIME format.
--===============1224255094954786214==
Content-Type: multipart/alternative;
 boundary="------------sFw3yCeJfr3S4p9EzpBatzX3"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------sFw3yCeJfr3S4p9EzpBatzX3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/11/2023 15:44, German Farinas wrote:
> Can you please point me to the site where I can buy this cable JTAG.=20
> Does ettus sell it?
>
> Thanks,
> German
USB-to-JTAG cables are readily available on the 'net.=C2=A0 I'm fairly su=
re=20
that the N210 has a standard JTAG connector inside it.
 =C2=A0 Though you'll probably need to find one that has explicit support=
 in=20
the "iMpact" tool provided by Xilinx.=C2=A0=C2=A0 I know that DigiLent
 =C2=A0 sell one or two different models, I'm not sure whether they have=20
explicit compatibility with Xilinx tooling or not.=C2=A0 Others here
 =C2=A0 will almost certainly know.=C2=A0 I've never had to JTAG a USRP b=
efore,=20
and I've had them for coming up on two decades and many
 =C2=A0 different models...

But that may not be necessary if you get it into "safe mode" and then=20
use the relevant image-loader tools to load a
 =C2=A0 known-good image into it.=C2=A0 Now, if the safe-mode image is ba=
d, then,=20
yes, you'll have to JTAG an image into it.


>
> On Tue, Nov 14, 2023, 10:50 AM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 09/11/2023 20:11, German Farinas wrote:
>>     I have two N210s. One of the USRPs N210 is working fine with UHD
>>     4.5, I suppose that one is rev4 although it doesn't say it
>>     explicitly at the back of the case. However, the other USRP N210
>>     says explicitly rev2 at the back. This one is giving me the error.
>>
>>     About the motivation for having UHD 4.5 none in specific. I am
>>     just new to UHD and I installed it via command line in Ubuntu 20.
>>     It was just easier. But in the future I may work with X300.
>>
>>
>     One thing to try is to use the "unbricking procedure" for the N210
>     in question, to bring up a "Safe Mode" image that you can then
>     =C2=A0 use to download new FPGA code into:
>
>     https://kb.ettus.com/N200/N210_Device_Recovery
>
>
>>     On Thu, Nov 9, 2023, 7:59 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 09/11/2023 19:24, German Farinas wrote:
>>>         I am using UHD 4.5, I may try 3.15 as you suggested. But I
>>>         don't know how to install both together. My system is Ubuntu
>>>         20.04 LTS.
>>>
>>         There haven't been any (documented) changes for N210 since
>>         UHD 3.13.
>>
>>         You may need to build 3.15 from source.=C2=A0=C2=A0=C2=A0 I ha=
ven't ever
>>         really managed two UHD on the same system at the same time.
>>         =C2=A0 Some folks like to use a different install prefix when
>>         building, and then set LD_LIBRARY_PATH and friends at runtime.
>>         =C2=A0 Some folks use docker containers.
>>
>>         What is the motivation for using UHD 4.5? Unless you have
>>         hardware on the same system that is much newer, of course.
>>
>>>
>>>
>>>
>>>         On Thu, Nov 9, 2023, 7:08 PM Marcus D Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             You may need to stage this from a much earlier rev of
>>>             UHD. I don=E2=80=99t think there have been any updates to=
 N210
>>>             firmware in a long time. So if you can tolerate UHD 3.15
>>>             that might be better for you.
>>>
>>>             Sent from my iPhone
>>>
>>>>             On Nov 9, 2023, at 7:05 PM, German Farinas
>>>>             <german.farinas@gmail.com> wrote:
>>>>
>>>>             =EF=BB=BF
>>>>             I am trying to upload the image to an usrp N210 rev2.0
>>>>             but I got the following error message. Have anyone had
>>>>             the same error before? I need some help with this
>>>>             issue. See the output of the uhd_image_loader below.
>>>>
>>>>             Best,
>>>>             German
>>>>
>>>>             uhd_image_loader --args=3D"type=3Dusrp2,addr=3D192.168.1=
0.2"
>>>>
>>>>             [INFO] [UHD] linux; GNU C++ version 9.4.0;
>>>>             Boost_107100; UHD_4.5.0.0-0ubuntu1~focal1
>>>>             [ERROR] [UHD] Exception caught in safe-call.
>>>>             =C2=A0 in ~usrp2_iface_impl
>>>>             =C2=A0 at
>>>>             /build/uhd-UJYBdq/uhd-4.5.0.0/host/lib/usrp/usrp2/usrp2_=
iface.cpp:82
>>>>             this->lock_device(false); -> RuntimeError:
>>>>             Please update the firmware and FPGA images for your devi=
ce.
>>>>             See the application notes for USRP2/N-Series for
>>>>             instructions.
>>>>             Expected protocol compatibility number [10 to 12], but
>>>>             got 9:
>>>>             The firmware build is not compatible with the host code
>>>>             build.
>>>>             Please run:
>>>>
>>>>             =C2=A0"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downlo=
ader.py"
>>>>             =C2=A0"/lib/bin/uhd_image_loader" \
>>>>             --args=3D"type=3Dusrp2,addr=3D192.168.10.2"
>>>>
>>>>             Error: RuntimeError: Received invalid reply 32 from devi=
ce.
>>>>             _______________________________________________
>>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>             To unsubscribe send an email to
>>>>             usrp-users-leave@lists.ettus.com
>>>
>>
>

--------------sFw3yCeJfr3S4p9EzpBatzX3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/11/2023 15:44, German Farinas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJx0LdXX5u1GpvqC5B+_1RzYN9gqSjeaP3y3vXF3rHSH=3D97JuA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div>Can you please point me to the site where I can buy this
          cable JTAG. Does ettus sell it?</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks,</div>
        <div dir=3D"auto">German<br>
        </div>
      </div>
    </blockquote>
    USB-to-JTAG cables are readily available on the 'net.=C2=A0 I'm fairl=
y
    sure that the N210 has a standard JTAG connector inside it.<br>
    =C2=A0 Though you'll probably need to find one that has explicit supp=
ort
    in the "iMpact" tool provided by Xilinx.=C2=A0=C2=A0 I know that Digi=
Lent<br>
    =C2=A0 sell one or two different models, I'm not sure whether they ha=
ve
    explicit compatibility with Xilinx tooling or not.=C2=A0 Others here<=
br>
    =C2=A0 will almost certainly know.=C2=A0 I've never had to JTAG a USR=
P before,
    and I've had them for coming up on two decades and many<br>
    =C2=A0 different models...<br>
    <br>
    But that may not be necessary if you get it into "safe mode" and
    then use the relevant image-loader tools to load a<br>
    =C2=A0 known-good image into it.=C2=A0 Now, if the safe-mode image is=
 bad,
    then, yes, you'll have to JTAG an image into it.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAJx0LdXX5u1GpvqC5B+_1RzYN9gqSjeaP3y3vXF3rHSH=3D97JuA@mail.gm=
ail.com">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
          <div class=3D"gmail_quote" dir=3D"auto">
            <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 14, 2023,
              10:50 AM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div>
                <div>On 09/11/2023 20:11, German Farinas wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>I have two N210s. One of the USRPs N210 is
                      working fine with UHD 4.5, I suppose that one is
                      rev4 although it doesn't say it explicitly at the
                      back of the case. However, the other USRP N210
                      says explicitly rev2 at the back. This one is
                      giving me the error.
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">About the motivation for having
                        UHD 4.5 none in specific. I am just new to UHD
                        and I installed it via command line in Ubuntu
                        20. It was just easier. But in the future I may
                        work with X300.</div>
                      <br>
                      <br>
                    </div>
                  </div>
                </blockquote>
                One thing to try is to use the "unbricking procedure"
                for the N210 in question, to bring up a "Safe Mode"
                image that you can then<br>
                =C2=A0 use to download new FPGA code into:<br>
                <br>
                <a href=3D"https://kb.ettus.com/N200/N210_Device_Recovery=
"
                  target=3D"_blank" rel=3D"noreferrer"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://kb.ettus.com/N200/N210_Device_Recovery</a><br>
                <br>
                <br>
                <blockquote type=3D"cite">
                  <div dir=3D"auto">
                    <div>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov=
 9,
                          2023, 7:59 PM Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" rel=3D"noreferrer"
                            moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                          <div>
                            <div>On 09/11/2023 19:24, German Farinas
                              wrote:<br>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div>I am using UHD 4.5, I may try 3.15
                                  as you suggested. But I don't know how
                                  to install both together. My system is
                                  Ubuntu 20.04 LTS.
                                  <div dir=3D"auto"><br>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            There haven't been any (documented) changes
                            for N210 since UHD 3.13.=C2=A0 <br>
                            <br>
                            You may need to build 3.15 from source.=C2=A0=
=C2=A0=C2=A0 I
                            haven't ever really managed two UHD on the
                            same system at the same time.<br>
                            =C2=A0 Some folks like to use a different ins=
tall
                            prefix when building, and then set
                            LD_LIBRARY_PATH and friends at runtime.<br>
                            =C2=A0 Some folks use docker containers.<br>
                            <br>
                            What is the motivation for using UHD 4.5?=C2=A0
                            Unless you have hardware on the same system
                            that is much newer, of course.<br>
                            <br>
                            <blockquote type=3D"cite">
                              <div dir=3D"auto">
                                <div>
                                  <div dir=3D"auto"><br>
                                  </div>
                                  <br>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr"=
>On
                                      Thu, Nov 9, 2023, 7:08 PM Marcus D
                                      Leech &lt;<a
href=3D"mailto:patchvonbraun@gmail.com"
rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">p=
atchvonbraun@gmail.com</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
                                      <div dir=3D"auto">You may need to
                                        stage this from a much earlier
                                        rev of UHD. I don=E2=80=99t think=
 there
                                        have been any updates to N210
                                        firmware in a long time. So if
                                        you can tolerate UHD 3.15 that
                                        might be better for you.=C2=A0<br=
>
                                        <br>
                                        <div dir=3D"ltr">Sent from my
                                          iPhone</div>
                                        <div dir=3D"ltr"><br>
                                          <blockquote type=3D"cite">On No=
v
                                            9, 2023, at 7:05 PM, German
                                            Farinas &lt;<a
href=3D"mailto:german.farinas@gmail.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                              moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">german.farinas@gmail.com</a>&gt; wrote:<b=
r>
                                            <br>
                                          </blockquote>
                                        </div>
                                        <blockquote type=3D"cite">
                                          <div dir=3D"ltr">=EF=BB=BF
                                            <div dir=3D"auto">
                                              <div
                                                style=3D"font-size:12.8px=
"
                                                dir=3D"auto">I am trying
                                                to upload the image to
                                                an usrp N210 rev2.0 but
                                                I got the following
                                                error message. Have
                                                anyone had the same
                                                error before? I need
                                                some help with this
                                                issue. See the output of
                                                the uhd_image_loader
                                                below.</div>
                                              <div
                                                style=3D"font-size:12.8px=
"
                                                dir=3D"auto"><br>
                                              </div>
                                              <div
                                                style=3D"font-size:12.8px=
"
                                                dir=3D"auto">Best,</div>
                                              <div
                                                style=3D"font-size:12.8px=
"
                                                dir=3D"auto">German</div>
                                              <div
                                                style=3D"font-size:12.8px=
"
                                                dir=3D"auto"><br>
                                              </div>
                                              <div
                                                style=3D"font-size:12.8px=
"
                                                dir=3D"auto">uhd_image_lo=
ader
--args=3D"type=3Dusrp2,addr=3D192.168.10.2"</div>
                                              <div
                                                style=3D"font-size:12.8px=
"
                                                dir=3D"auto"><br>
                                                [INFO] [UHD] linux; GNU
                                                C++ version 9.4.0;
                                                Boost_107100;
                                                UHD_4.5.0.0-0ubuntu1~foca=
l1<br>
                                                [ERROR] [UHD] Exception
                                                caught in safe-call.<br>
                                                =C2=A0 in ~usrp2_iface_im=
pl<br>
                                                =C2=A0 at
                                                /build/uhd-UJYBdq/uhd-4.5=
.0.0/host/lib/usrp/usrp2/usrp2_iface.cpp:82<br>
this-&gt;lock_device(false); -&gt; RuntimeError:<br>
                                                Please update the
                                                firmware and FPGA images
                                                for your device.<br>
                                                See the application
                                                notes for USRP2/N-Series
                                                for instructions.<br>
                                                Expected protocol
                                                compatibility number [10
                                                to 12], but got 9:<br>
                                                The firmware build is
                                                not compatible with the
                                                host code build.<br>
                                                Please run:<br>
                                                <br>
=C2=A0"/lib/x86_64-linux-gnu/uhd/utils/uhd_images_downloader.py"<br>
=C2=A0"/lib/bin/uhd_image_loader" \<br>
                                                =C2=A0 =C2=A0
                                                --args=3D"type=3Dusrp2,ad=
dr=3D192.168.10.2"<br>
                                                <br>
                                                Error: RuntimeError:
                                                Received invalid reply
                                                32 from device.</div>
                                            </div>
                                            <span>_______________________=
________________________</span><br>
                                            <span>USRP-users mailing
                                              list -- <a
href=3D"mailto:usrp-users@lists.ettus.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a></span><br>
                                            <span>To unsubscribe send an
                                              email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com"
rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"
                                                moz-do-not-send=3D"true"
class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a></spa=
n><br>
                                          </div>
                                        </blockquote>
                                      </div>
                                    </blockquote>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            <br>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                  </div>
                </blockquote>
                <br>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------sFw3yCeJfr3S4p9EzpBatzX3--

--===============1224255094954786214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1224255094954786214==--
