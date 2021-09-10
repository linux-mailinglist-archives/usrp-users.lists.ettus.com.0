Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABB74070A7
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 19:48:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03D143840B4
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 13:48:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eQULE8qx";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id E6E693840B4
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 13:47:57 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id c10so2841810qko.11
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 10:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=mGkja41N964uDCdCbcVQ/utn7D9co6kY3s+DWWyRT+k=;
        b=eQULE8qxyyRLt5YHcRb7lTcqUEi8TfXudP4O81t55qtLnDrUrbMrNm+ma+B1qQwPOT
         +vSvPQQJIeEqISEvb7ieIufv3D12cvkw73oxNcSFvX5LdMhqzT6T+/IGBBAShuL9HuuB
         ZdwnzGaDpL+Nj4SBqjFO5E5WWKaDYnkB7H+Cp9iME49V/Y4bZb11iLj9Y2p8pV/uD0rg
         p8F6nvWqkpyUaTHre4fNJSAJNdwqbb236VY5jbndi2GwehAkWVMHGiFbsK5g+MXyo/kg
         CFKV2myJFe7aSKnmyoXssAWi7xmCPw23CZMoGtIFgZLbuZDHn0f3yqocNpfrj4jQopdB
         FKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=mGkja41N964uDCdCbcVQ/utn7D9co6kY3s+DWWyRT+k=;
        b=Ya5jHPynECtNNVq9CtEOAuxzItbbwqm0qt8T1RiC6DeVxcGzkdcI2mLqJiDyWpKHud
         30L69qlNkw1xph/NYHEUVlBDBKl80AXq6ItkTLwAVT/JHIa3k8/vkdchFIe+gFRGFrAJ
         ywnNOywlObo1eXxpv20OANy5TQJl0vIjm2LFLd7ir19xU04vHd4ctdqJV/tcFjFNUwu2
         r9gJm88//1znbGrOPOQsl2iGVZ9QRdPXONjgdsx7Hn6KFKhOLdXmEnurKbt0r5UfnmA4
         HNZUpzR5GW721235jmBqv744vc0lVQYRrIBxFUr3KbQ6+gOVZgdS0MtClgR3caCfO7fS
         exMQ==
X-Gm-Message-State: AOAM530NVSefeKU8oD8uNneKhqQv+42z+nMoS1dBWxIuu3IVfS7MiXOn
	+qynbOsCLtyfpHOUCfB0JsOzGMOvMGAc5g==
X-Google-Smtp-Source: ABdhPJzNR6SZZ4ut+GasLe1kXWqjnStVK4MkG2W8Y7aTRidEHcDTN+6oh3LxYm17zg7UFhPERXnGRQ==
X-Received: by 2002:a05:620a:1210:: with SMTP id u16mr8782139qkj.390.1631296077074;
        Fri, 10 Sep 2021 10:47:57 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x25sm3662406qtj.77.2021.09.10.10.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 10:47:56 -0700 (PDT)
To: "Dobler, Anton" <anton.dobler@unibw.de>,
 "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1631283508908.10827@unibw.de>
 <cb50f688-1813-3664-8c4f-b4a3837a5abe@gmail.com>
 <1631289299353.57501@unibw.de>
 <b4b28e43-5d60-f274-753f-2438fdef4a21@gmail.com>
 <1631290147759.59537@unibw.de>
 <d7f1ca9b-ac5a-4902-6656-31db17a1e451@gmail.com>
 <1631295478382.2568@unibw.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <57aef194-1203-c850-825b-f843d2d1cda7@gmail.com>
Date: Fri, 10 Sep 2021 13:47:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1631295478382.2568@unibw.de>
Content-Language: en-US
Message-ID-Hash: I7W34O2KWKZC7WT5ZZTWXK2TNXZOOP4N
X-Message-ID-Hash: I7W34O2KWKZC7WT5ZZTWXK2TNXZOOP4N
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP, GPIO toggling and Gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I7W34O2KWKZC7WT5ZZTWXK2TNXZOOP4N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9103283858711418238=="

This is a multi-part message in MIME format.
--===============9103283858711418238==
Content-Type: multipart/alternative;
 boundary="------------1215995E81CF439AE322B138"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1215995E81CF439AE322B138
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-10 1:37 p.m., Dobler, Anton wrote:
>
> Thank you for that explanation! Does the transaction regarding the=20
> GPIO states=C2=A0use the SFP+ ports or the management connection?
>
>
> I will go for the raw c++ application and come back to the list ASAP.
>
>
> Thank you all for your answers!
>
That's a good question, and one for which I don't have an answer I'm=20
certain of.=C2=A0 Copying the usrp-users mailing list.

Your device is an "MPM" device, which is a server on the Linux CPU on=20
your device that handles "management of the radio" via
 =C2=A0 RPC calls.=C2=A0 Browsing (very cursory) the code, it seems that =
it "gets"=20
things like I2C and SPI, so it probably also handles GPIO
 =C2=A0 transactions, it most definitely "lives" on the management interf=
ace.



> =E2=80=8B
>
> -----------------------------------------------------------------------=
-
> *Von:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Freitag, 10. September 2021 18:59
> *An:* Dobler, Anton; discuss-gnuradio@gnu.org
> *Betreff:* Re: AW: AW: USRP, GPIO toggling and Gnuradio
> On 2021-09-10 12:08 p.m., Dobler, Anton wrote:
>>
>> Is there any alternative to the standard GPIO UHD=C2=A0interface, that=
=20
>> allows me the desired speed and is this issue I see related to=20
>> gnuradio and its scheduler or rather to the UHD API for the GPIOs?=E2=80=
=8B
>>
>>
>> BR,
>>
>>
>> Anton=E2=80=8B
>>
> Every GPIO state transition requires a transaction across your network=20
> interface, and then into the FPGA GPIO logic.=C2=A0 That's the absolute=
=20
> upper limit on
> =C2=A0 toggling the GPIOs from the host.
>
> You can test how fast you can make this go with a "raw" UHD C++=20
> program.=C2=A0 Once you've established how fast it can potentially go, =
then=20
> you start
> =C2=A0 evaluating how to approach this latency with GR.=C2=A0 Right now=
, the=20
> waters are very muddy, and I am not the one to comment on GR=20
> latencies, etc.
>
>
>>
>> ----------------------------------------------------------------------=
--
>> *Von:* Marcus D. Leech <patchvonbraun@gmail.com>
>> *Gesendet:* Freitag, 10. September 2021 18:04
>> *An:* Dobler, Anton; discuss-gnuradio@gnu.org
>> *Betreff:* Re: AW: USRP, GPIO toggling and Gnuradio
>> On 2021-09-10 11:54 a.m., Dobler, Anton wrote:
>>>
>>> I am extracting the package rate of a receive signal using a rather=20
>>> complex GRC flowgraph, i.e. I am detecting the preamble of a receive=20
>>> signal and generate a clock from here. This clock signal period is=20
>>> within the range of 100us - 1ms.
>> Toggling GPIOs using the standard GPIO interface for signals this=20
>> fast is likely not going to be very speedy.
>>
>> The GR experts will have to answer your other questions.
>>
>


--------------1215995E81CF439AE322B138
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-10 1:37 p.m., Dobler, Anton
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:1631295478382.2568@unibw.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none">p { margin-top: 0px=
; margin-bottom: 0px; }</style>
      <p>Thank you for that explanation! Does the transaction regarding
        the GPIO states=C2=A0use the SFP+ ports or the management
        connection?=C2=A0<br>
      </p>
      <p><br>
      </p>
      <p>I will go for the raw c++ application and come back to the list
        ASAP.<br>
      </p>
      <p><br>
      </p>
      <p>Thank you all for your answers!<br>
      </p>
    </blockquote>
    That's a good question, and one for which I don't have an answer I'm
    certain of.=C2=A0 Copying the usrp-users mailing list.<br>
    <br>
    Your device is an "MPM" device, which is a server on the Linux CPU
    on your device that handles "management of the radio" via<br>
    =C2=A0 RPC calls.=C2=A0 Browsing (very cursory) the code, it seems th=
at it
    "gets" things like I2C and SPI, so it probably also handles GPIO<br>
    =C2=A0 transactions, it most definitely "lives" on the management
    interface.<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:1631295478382.2568@unibw.de">
      <p>
      </p>
      <p>=E2=80=8B<br>
      </p>
      <div style=3D"color: rgb(33, 33, 33);">
        <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
        <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11=
pt"
            face=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b>
            Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
            <b>Gesendet:</b> Freitag, 10. September 2021 18:59<br>
            <b>An:</b> Dobler, Anton; <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:discuss-gnuradio@gnu.org">discuss-gnuradio@gnu.org</a><=
br>
            <b>Betreff:</b> Re: AW: AW: USRP, GPIO toggling and Gnuradio<=
/font>
          <div>=C2=A0</div>
        </div>
        <div>
          <div class=3D"moz-cite-prefix">On 2021-09-10 12:08 p.m., Dobler=
,
            Anton wrote:<br>
          </div>
          <blockquote type=3D"cite">
            <style type=3D"text/css" style=3D"">p
	{margin-top:0px;
	margin-bottom:0px}</style>
            <p><span style=3D"font-size:12pt">Is there any alternative </=
span><span
                style=3D"font-size:12pt">to the standard GPIO
                UHD=C2=A0interface, that allows me the desired speed and =
is
                this issue I see related to gnuradio and its scheduler
                or rather to the UHD API for the GPIOs?</span><span
                style=3D"font-size:12pt">=E2=80=8B</span><br>
            </p>
            <p><br>
            </p>
            <p>BR,</p>
            <p><br>
            </p>
            <p>Anton=E2=80=8B<br>
            </p>
          </blockquote>
          Every GPIO state transition requires a transaction across your
          network interface, and then into the FPGA GPIO logic.=C2=A0 Tha=
t's
          the absolute upper limit on<br>
          =C2=A0 toggling the GPIOs from the host.<br>
          <br>
          You can test how fast you can make this go with a "raw" UHD
          C++ program.=C2=A0 Once you've established how fast it can
          potentially go, then you start<br>
          =C2=A0 evaluating how to approach this latency with GR.=C2=A0 R=
ight now,
          the waters are very muddy, and I am not the one to comment on
          GR latencies, etc.<br>
          <br>
          <br>
          <blockquote type=3D"cite">
            <p><br>
            </p>
            <div style=3D"color:rgb(33,33,33)">
              <hr tabindex=3D"-1" style=3D"display:inline-block; width:98=
%">
              <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font
                  style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                  color=3D"#000000"><b>Von:</b> Marcus D. Leech
                  <a class=3D"moz-txt-link-rfc2396E"
                    href=3D"mailto:patchvonbraun@gmail.com"
                    moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&=
gt;</a><br>
                  <b>Gesendet:</b> Freitag, 10. September 2021 18:04<br>
                  <b>An:</b> Dobler, Anton; <a
                    class=3D"moz-txt-link-abbreviated"
                    href=3D"mailto:discuss-gnuradio@gnu.org"
                    moz-do-not-send=3D"true">
                    discuss-gnuradio@gnu.org</a><br>
                  <b>Betreff:</b> Re: AW: USRP, GPIO toggling and
                  Gnuradio</font>
                <div>=C2=A0</div>
              </div>
              <div>
                <div class=3D"moz-cite-prefix">On 2021-09-10 11:54 a.m.,
                  Dobler, Anton wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <style type=3D"text/css" style=3D"">p
	{margin-top:0px;
	margin-bottom:0px}</style>
                  <p><span style=3D"font-size:12pt"></span></p>
                  <div>I am extracting the package rate of a receive
                    signal using a rather complex GRC flowgraph, i.e. I
                    am detecting the preamble of a receive signal and
                    generate a clock from here. This clock signal period
                    is within the range of 100us - 1ms.</div>
                </blockquote>
                Toggling GPIOs using the standard GPIO interface for
                signals this fast is likely not going to be very speedy.<=
br>
                <br>
                The GR experts will have to answer your other questions.<=
br>
                <br>
              </div>
            </div>
          </blockquote>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------1215995E81CF439AE322B138--

--===============9103283858711418238==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9103283858711418238==--
