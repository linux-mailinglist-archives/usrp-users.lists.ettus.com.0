Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2554385D4
	for <lists+usrp-users@lfdr.de>; Sun, 24 Oct 2021 00:47:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D03B38477C
	for <lists+usrp-users@lfdr.de>; Sat, 23 Oct 2021 18:47:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UdcgxRXx";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B99723843BB
	for <usrp-users@lists.ettus.com>; Sat, 23 Oct 2021 18:46:18 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id o13so4778577qvm.4
        for <usrp-users@lists.ettus.com>; Sat, 23 Oct 2021 15:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=EzWscAUo7W7sffmtzWNU4iICYeskGnriqBHZBg4IQ1M=;
        b=UdcgxRXxFWqdwwY1IP1UsCiK6XrPBuRwqG6uICh7RGvYY2WM/Xdw6xWWxI53DXru+a
         pp3GcdkLP9Nq/5fEzUlRIcyblpfemyo+acG8t06xTb6oQJZPe473bZpVs0RdxSE0P0b8
         tHsZwmDInKjdyPwOUakK0ZcNZkudq2qL8UxZDMnsfCAsqdqZNIjl1tv+mRotHkki1pQq
         65mpf//B7/Md3/G3YNgyneqP3wDmjldsItFbLCj4+4EbEhh1r2PJFvo1c0SXbqsf1g6+
         xMqoA8iNc2pdnDkaYmZIhnv0eZtovmnVXontPTdgsnZWg/drUySEUbgdIMW2OHPPgxVX
         Smtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=EzWscAUo7W7sffmtzWNU4iICYeskGnriqBHZBg4IQ1M=;
        b=1G9n2Wlr2CiVkaIqm8JFE2ws/vDp7fjgrAaLwKIQUSZVC3VJ9ZeEw/r2MpDA5RVMcz
         WyYktK9Z9Tcp8cz4Py1ZeEkC5S6y8HjNSuXNR+7Tv0gEPetsLiPaOHksUBRSFnQzDcBx
         nfz+tTBL0ombmNd3FKgUKfborvIUwS6jCZaFcA7iivxaYzBjr5jsYAlyo9hxska00iVU
         MtVi+iMG+ABeQU3GWvhrO8lmIDAQlcof3NPnz8wg3puB7Zf0G8tgWfn+gBi67Bcsnhwr
         0ekdfmsuNv07KaRT8QHiFJ0jLn9ppZdSsC3HjHwuJegf5VCIYGrLngGEFlikoPI9HsJn
         8JFA==
X-Gm-Message-State: AOAM533Fv2ucy2iFXmvDYFred+4pon/KQMAmKfNHXzwQcmPw9GumTDTI
	q4khaHUAJ49/gOtBplpPh3hEyq/ehEU=
X-Google-Smtp-Source: ABdhPJyoskFZ+wurpWiLFGDyY7U+LPyf7SKcCVtgxW2neVvjg4jj7K5ijsEsLs3AKeUuDthCGJic6A==
X-Received: by 2002:ad4:5c67:: with SMTP id i7mr7321351qvh.18.1635029177997;
        Sat, 23 Oct 2021 15:46:17 -0700 (PDT)
Received: from [192.168.2.252] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id k9sm6369191qkj.75.2021.10.23.15.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Oct 2021 15:46:17 -0700 (PDT)
To: Ivan Zahartchuk <adray0001@gmail.com>
References: <CAPRRyxsHu+FoQrLpC+fVyVdtmdu4kfXEq8CBmBsA5iGJ+xT-FA@mail.gmail.com>
 <CAPRRyxsDhTm=m_EWds6SbJUuDkVaK0GJyOETVaSPisb_kfzbkw@mail.gmail.com>
 <6d3d9adb-fd20-e86e-fe12-9daf26315df7@gmail.com>
 <CAPRRyxsYL12897gcx+xs9baY7LFyCyJGepeKCS=r4UrO6EGpRQ@mail.gmail.com>
 <b806b59f-3454-01eb-00f6-db6aeea4a1c5@gmail.com>
 <CAPRRyxsi1Ay+z1VC8eAa49v=2Z8sB3rptrPD+3=bh-OZNAqmDw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <6d364a32-0e4a-911c-ccff-aa11da5023ec@gmail.com>
Date: Sat, 23 Oct 2021 18:46:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPRRyxsi1Ay+z1VC8eAa49v=2Z8sB3rptrPD+3=bh-OZNAqmDw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: 32DUTBRBWRGRKH3JMQG53NVPZB4D7NGT
X-Message-ID-Hash: 32DUTBRBWRGRKH3JMQG53NVPZB4D7NGT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: discuss-gnuradio <discuss-gnuradio@gnu.org>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Fwd: Adding a Window block to an RFNOC graph
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/32DUTBRBWRGRKH3JMQG53NVPZB4D7NGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4127331963285021886=="

This is a multi-part message in MIME format.
--===============4127331963285021886==
Content-Type: multipart/alternative;
 boundary="------------7E5E71C0E934B54FFEE109BF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7E5E71C0E934B54FFEE109BF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-10-23 5:58 p.m., Ivan Zahartchuk wrote:
> I want to create FPGA firmware for USRP E310 with window function but=20
> I get the error I described above. My yaml file is also attached=20
> above. I need to do windowing and FFT on the FPGA side. And understand=20
> why FFT returns zero values even when it is configured to produce=20
> complex data.
There are two distinct problems described here.=C2=A0 One is that for=20
very-small input values, the FFT produces zero outputs. This is very=20
likely due to the
 =C2=A0=C2=A0 fact that the FFT implementation in the FPGA is an integer=20
implementation, with fixed precision.=C2=A0 If it's scaling the output=20
appropriately for
 =C2=A0=C2=A0 mag**2, there will be cases where it produces zeros.=C2=A0=C2=
=A0 You can=20
either increase the RF gain, or, as I *THINK* you're trying to do, use=20
the window
 =C2=A0=C2=A0 function to artificially boost the input amplitudes prior t=
o the FFT=20
computation?

Unfortunately, I don't personally have an RFNOC toolchain myself, so I=20
can't offer much in the way of advice on the build error you're getting,=20
and I'm
 =C2=A0 hoping someone with more RFNOC-on-E310 experience can be of more =
help.


> image.png
>
> =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 17:55, Marcus =
D. Leech <patchvonbraun@gmail.com=20
> <mailto:patchvonbraun@gmail.com>>:
>
>     On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:
>>     Yes I am setting fft for magnitudes. On the front side, I am
>>     doing a log. I perfectly understand where infinity comes from. I
>>     don=E2=80=99t understand why the FFT returns 0. But how can I conf=
igure
>>     the Window?
>>
>     What does uhd_usrp_probe show in the "RFNOC Blocks" section on
>     this device?
>
>     I think the window RFNOC function in GNu Radio takes a list of the
>     window values as a parameter--you can populate that with any of
>     the window.* functions
>     =C2=A0 within Gnu Radio.
>
>
>>     =D0=BF=D1=82, 22 =D0=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2 01:51, Ma=
rcus D. Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>>:
>>
>>         On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:
>>>
>>>         Hello, I have a problem that when receiving samples from the
>>>         USRP E310 board, after the FFT block at low gain, zero
>>>         values are received. After that I log them and get infinity.
>>>         I wanted to figure out what the problem is, but I have no
>>>         idea, maybe the Window block will fix the situation. But
>>>         when building my yaml file, I get the error: [ERR] 2
>>>         Unresolved connection(s) [ERR] =C2=A0 =C2=A0 (window0-out_0 -=
>
>>>         fft0-in0) [ERR] =C2=A0 =C2=A0 (fft0-out_0 -> ep1-in_0) [INF] =
=C2=A0 =C2=A0 =C2=A0 =C2=A0
>>>         (('radio0', 'ctrl_port', 'master'),) [INF] =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
>>>         (('radio0', 'time_keeper', 'listener'),) [INF] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0
>>>         (('radio0', 'x300_radio', 'slave'),) [INF] =C2=A0 =C2=A0 =C2=A0=
 =C2=A0
>>>         (('_device_', 'ctrlport_radio', 'slave'),) [INF] =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
>>>         (('_device_', 'time_keeper', 'broadcaster'),) [INF] =C2=A0 =C2=
=A0 =C2=A0 =C2=A0
>>>         (('_device_', 'x300_radio', 'master'),) Please tell me what
>>>         could be the problem and how can I add the Window block to
>>>         my image?
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list --usrp-users@lists.ettus.com  <mailto=
:usrp-users@lists.ettus.com>
>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.c=
om  <mailto:usrp-users-leave@lists.ettus.com>
>>         Do you have your FFT configured for log output? Because the
>>         logarithm of zero is undefined.
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         <mailto:usrp-users@lists.ettus.com>
>>         To unsubscribe send an email to
>>         usrp-users-leave@lists.ettus.com
>>         <mailto:usrp-users-leave@lists.ettus.com>
>>
>


--------------7E5E71C0E934B54FFEE109BF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-10-23 5:58 p.m., Ivan
      Zahartchuk wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxsi1Ay+z1VC8eAa49v=3D2Z8sB3rptrPD+3=3Dbh-OZNAqmDw@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div id=3D"gmail-tw-container" class=3D"gmail-"
style=3D"width:652px;color:rgb(32,33,36);font-family:arial,sans-serif;fon=
t-size:medium"><span
            style=3D"display:block">
            <div>
              <div>
                <div class=3D"gmail-tw-src-ltr" id=3D"gmail-tw-ob"
                  style=3D"display:flex;min-height:140px">
                  <div class=3D"gmail-oSioSc"
                    style=3D"width:0px;display:flex">
                    <div id=3D"gmail-tw-target"
style=3D"font-size:0px;margin:0px;text-align:initial;background-color:rgb=
(248,249,250);border-radius:8px;min-width:0px;width:0px;display:flex">
                      <div id=3D"gmail-kAz1tf" class=3D"gmail-g9WsWb"
                        style=3D"margin:0px;text-align:initial;padding:10=
px
                        16px 48px">
                        <div class=3D"gmail-tw-ta-container gmail-F0azHf
                          gmail-tw-nfl"
                          id=3D"gmail-tw-target-text-container"
                          tabindex=3D"0"
                          style=3D"overflow:hidden;outline:0px">
                          <pre class=3D"gmail-tw-data-text gmail-tw-text-=
large gmail-XcVN5d gmail-tw-ta" id=3D"gmail-tw-target-text" dir=3D"ltr" s=
tyle=3D"font-family:inherit;unicode-bidi:isolate;font-size:28px;line-heig=
ht:36px;background-color:transparent;border:none;padding:2px 0.14em 2px 0=
px;overflow:hidden;width:270px;white-space:pre-wrap"><span class=3D"gmail=
-Y2IQFc" lang=3D"en">I want to create FPGA firmware for USRP E310 with wi=
ndow function but I get the error I described above. My yaml file is also=
 attached above. I need to do windowing and FFT on the FPGA side. And und=
erstand why FFT returns zero values even when it is configured to produce=
 complex data.</span></pre>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </span></div>
      </div>
    </blockquote>
    There are two distinct problems described here.=C2=A0 One is that for
    very-small input values, the FFT produces zero outputs. This is very
    likely due to the<br>
    =C2=A0=C2=A0 fact that the FFT implementation in the FPGA is an integ=
er
    implementation, with fixed precision.=C2=A0 If it's scaling the outpu=
t
    appropriately for<br>
    =C2=A0=C2=A0 mag**2, there will be cases where it produces zeros.=C2=A0=
=C2=A0 You can
    either increase the RF gain, or, as I *THINK* you're trying to do,
    use the window<br>
    =C2=A0=C2=A0 function to artificially boost the input amplitudes prio=
r to the
    FFT computation?<br>
    <br>
    Unfortunately, I don't personally have an RFNOC toolchain myself, so
    I can't offer much in the way of advice on the build error you're
    getting, and I'm<br>
    =C2=A0 hoping someone with more RFNOC-on-E310 experience can be of mo=
re
    help.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAPRRyxsi1Ay+z1VC8eAa49v=3D2Z8sB3rptrPD+3=3Dbh-OZNAqmDw@mail.=
gmail.com">
      <div dir=3D"ltr">
        <div id=3D"gmail-tw-container" class=3D"gmail-"
style=3D"width:652px;color:rgb(32,33,36);font-family:arial,sans-serif;fon=
t-size:medium"><span
            style=3D"display:block">
            <div>
              <div>
                <div class=3D"gmail-tw-src-ltr" id=3D"gmail-tw-ob"
                  style=3D"display:flex;min-height:140px">
                  <div class=3D"gmail-oSioSc"
                    style=3D"width:0px;display:flex">
                    <div id=3D"gmail-tw-target"
style=3D"font-size:0px;margin:0px;text-align:initial;background-color:rgb=
(248,249,250);border-radius:8px;min-width:0px;width:0px;display:flex">
                      <div id=3D"gmail-kAz1tf" class=3D"gmail-g9WsWb"
                        style=3D"margin:0px;text-align:initial;padding:10=
px
                        16px 48px">
                        <div class=3D"gmail-tw-target-rmn
                          gmail-tw-ta-container gmail-F0azHf
                          gmail-tw-nfl"
                          id=3D"gmail-tw-target-rmn-container"
                          style=3D"overflow:hidden;outline:0px">
                          <pre class=3D"gmail-tw-data-placeholder gmail-t=
w-text-small gmail-tw-ta" id=3D"gmail-tw-target-rmn" dir=3D"ltr" style=3D=
"unicode-bidi:isolate;background-color:transparent;border:none;padding:0p=
x 0.14em 0px 0px;margin-top:0px;margin-bottom:0px;font-family:inherit;ove=
rflow:hidden;width:270px;white-space:pre-wrap;font-size:16px;line-height:=
24px;color:black"><span class=3D"gmail-Y2IQFc"></span></pre>
                        </div>
                        <div class=3D"gmail-iYB33c"
                          style=3D"display:flex;width:302px;height:48px">
                          <div class=3D"gmail-dlJLJe"
                            style=3D"display:flex;margin:10px 11px 0px
                            auto">
                            <div style=3D"visibility: hidden;"><span
                                class=3D"gmail-povykd" role=3D"button"
                                tabindex=3D"0"
                                style=3D"outline:0px;display:inline-block=
">
                                <div class=3D"gmail-U9URNb"
style=3D"opacity:0.74;font-size:12px;font-style:italic;min-width:26px;pad=
ding:11px"><span
                                    class=3D"gmail-XrZwB"
                                    aria-label=3D"=D0=97=D0=BD=D0=B0=D1=87=
=D0=BE=D0=BA &quot;=D0=9F=D1=80=D0=BE=D0=B2=D0=B5=D1=80=D0=B5=D0=BD=D0=BE
                                    =D1=81=D0=BE=D0=BE=D0=B1=D1=89=D0=B5=D1=
=81=D1=82=D0=B2=D0=BE=D0=BC&quot;" role=3D"img"
style=3D"display:inline-block;height:26px;padding-left:5px;vertical-align=
:middle"><img
                                      src=3D"cid:ii_kv4cem720"
                                      alt=3D"image.png"
                                      moz-do-not-send=3D"true" width=3D"1=
6"
                                      height=3D"16"></span><span
                                    class=3D"gmail-nlMhfd"
style=3D"display:inline-block;height:26px;line-height:26px;word-break:bre=
ak-all"></span></div>
                              </span></div>
                          </div>
                          <div class=3D"gmail-tw-menu" id=3D"gmail-tw-tme=
nu"
style=3D"display:inline-block;line-height:normal;white-space:nowrap"><spa=
n
                              class=3D"gmail-tw-menu-btn"
                              id=3D"gmail-tw-cpy-btn" title=3D"=D0=9A=D0=BE=
=D0=BF=D0=B8=D1=80=D0=BE=D0=B2=D0=B0=D1=82=D1=8C"
                              aria-label=3D"=D0=9A=D0=BE=D0=BF=D0=B8=D1=80=
=D0=BE=D0=B2=D0=B0=D1=82=D1=8C =D1=82=D0=B5=D0=BA=D1=81=D1=82"
                              role=3D"button" tabindex=3D"0"
style=3D"display:inline-block;height:48px;color:rgb(112,117,122);overflow=
:hidden;width:48px;outline:0px"><span
                                class=3D"gmail-tw-menu-btn-image
                                gmail-z1asCe gmail-wm4nBd"
style=3D"display:inline-block;height:24px;line-height:24px;width:24px;bor=
der:1px
                                solid transparent;padding:10px"></span></=
span><span
                              class=3D"gmail-fQjaD" aria-hidden=3D"true"
                              style=3D"display:inline-block"><span
                                class=3D"gmail-povykd"
                                style=3D"display:inline-block"></span></s=
pan><span
                              class=3D"gmail-tw-menu-btn gmail-za3ale"
                              id=3D"gmail-tw-spkr-button"
                              aria-label=3D"=D0=A1=D0=BB=D1=83=D1=88=D0=B0=
=D1=82=D1=8C =D0=BF=D0=B5=D1=80=D0=B5=D0=B2=D0=BE=D0=B4" role=3D"button"
                              tabindex=3D"0"
style=3D"display:inline-block;height:48px;color:rgb(112,117,122);overflow=
:hidden;width:48px;outline:0px"><span
                                class=3D"gmail-tw-menu-btn-image
                                gmail-z1asCe gmail-JKu1je"
                                title=3D"=D0=A1=D0=BB=D1=83=D1=88=D0=B0=D1=
=82=D1=8C =D0=BF=D0=B5=D1=80=D0=B5=D0=B2=D0=BE=D0=B4"
style=3D"display:inline-block;height:24px;line-height:24px;width:24px;bor=
der:1px
                                solid transparent;padding:12px 10px 8px">=
</span></span></div>
                        </div>
                        <span id=3D"gmail-tw-info-bubble"></span></div>
                    </div>
                  </div>
                </div>
                <div><span style=3D"display:block"></span></div>
              </div>
            </div>
          </span></div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 22 =D0=BE=D0=BA=
=D1=82. 2021 =D0=B3. =D0=B2 17:55,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true">patchvonbraun@gmail.com</a>&gt;:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-10-22 6:05 a.m., Ivan Zahartchuk wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <pre id=3D"gmail-m_-6403856710437878954gmail-tw-target-te=
xt" style=3D"text-align:left" dir=3D"ltr"><span lang=3D"en">Yes I am sett=
ing fft for magnitudes. On the front side, I am doing a log. I perfectly =
understand where infinity comes from. I don=E2=80=99t understand why the =
FFT returns 0. But how can I configure the Window?</span></pre>
              </div>
              <br>
            </blockquote>
            What does uhd_usrp_probe show in the "RFNOC Blocks" section
            on this device?<br>
            <br>
            I think the window RFNOC function in GNu Radio takes a list
            of the window values as a parameter--you can populate that
            with any of the window.* functions<br>
            =C2=A0 within Gnu Radio.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">=D0=BF=D1=82, 22 =D0=
=BE=D0=BA=D1=82. 2021 =D0=B3. =D0=B2
                  01:51, Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true">patchvonbr=
aun@gmail.com</a>&gt;:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 2021-10-21 6:40 p.m., Ivan Zahartchuk wrote:<=
br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr"><br>
                          </div>
                          <div dir=3D"ltr">
                            <pre id=3D"gmail-m_-6403856710437878954gmail-=
m_7164106155543386629m_2664631585752873320gmail-tw-target-text" style=3D"=
text-align:left" dir=3D"ltr"><span lang=3D"en">Hello, I have a problem th=
at when receiving samples from the USRP E310 board, after the FFT block a=
t low gain, zero values are received. After that I log them and get infin=
ity. I wanted to figure out what the problem is, but I have no idea, mayb=
e the Window block will fix the situation. But when building my yaml file=
, I get the error:
[ERR] 2 Unresolved connection(s)
[ERR] =C2=A0 =C2=A0 (window0-out_0 -&gt; fft0-in0)
[ERR] =C2=A0 =C2=A0 (fft0-out_0 -&gt; ep1-in_0)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'ctrl_port', 'master'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'time_keeper', 'listener'),=
)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('radio0', 'x300_radio', 'slave'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'ctrlport_radio', 'slave'=
),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'time_keeper', 'broadcast=
er'),)
[INF] =C2=A0 =C2=A0 =C2=A0 =C2=A0 (('_device_', 'x300_radio', 'master'),)
<span lang=3D"en">Please tell me what could be the problem and how can I =
add the Window block to my image?

</span></span></pre>
                          </div>
                        </div>
                      </div>
                      <br>
                      <fieldset></fieldset>
                      <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true">usrp-users-leave@li=
sts.ettus.com</a>
</pre>
                    </blockquote>
                    Do you have your FFT configured for log output?=C2=A0
                    Because the logarithm of zero is undefined.<br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true">usrp-users=
@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true">usrp-users=
-leave@lists.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------7E5E71C0E934B54FFEE109BF--

--===============4127331963285021886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4127331963285021886==--
