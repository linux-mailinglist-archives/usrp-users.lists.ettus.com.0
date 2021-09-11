Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADED74078E7
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 16:43:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68599383EC0
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 10:43:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kUWcHVx6";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id C544B3845C4
	for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 10:42:09 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id w9so3193669qvs.12
        for <usrp-users@lists.ettus.com>; Sat, 11 Sep 2021 07:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=vaOx7hI9N2T39T+Uj6OHfd9R4gqLYgDuGSS+oGZp4ZA=;
        b=kUWcHVx6NAhGqU8YMhIgMI5ZbTHDIqRZ20hvNMLBRd2n5P0or4dcxZ5Z9kChecOa1Y
         hHhAqp5aeGABO3SNHUn+SOUKRyQSxmqyCfa76QSpHHdIvK0qldVGMl/Qw6yDrNsR5UPm
         krwN9ymqaNpzWC3l1I5etUDriMR2TFZHXlXY12uFZ9axV6+op0G3enld6Z0bNt8FOzpK
         upg/TpXTf8WX14mJp0EKh+zMkNWPxzxT8i9wilQUSkXw1muRBqr/SbJrqiF8mwHrQ4+8
         lpD9L5GVld5q56eixLliugopvhKy3OTjgT/x7srcsx0rlK/f1/BFZi/q0rwEavvjxT0I
         v+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=vaOx7hI9N2T39T+Uj6OHfd9R4gqLYgDuGSS+oGZp4ZA=;
        b=BQjLC5bwbOKNi5XO7WMLJ65/RYa5Tug8hOHTG7+98BlsOdE8D0wdAlnVDnYrDwfa7j
         LWVF5EquLtllg1s99I24ccHRxRSj29JCA3VUw8fn8vAHE0YlswKnFsLfPhndekKsucUY
         YlQ2xZG3XcAInajDbH0YWqONQjrFJNUaoTGyUN+jUMn80x1AsD7AB3a+NWHMlWKQHv7i
         0yA7Qou2HUBWUWMyU38dfxF6fvwQJnh+vRjxGmrW/qdnjNVtEDJqspbaykQw9KV+ZmU4
         aC1rd0UCIFdKJ9og9FdOpo/o46Gez9awRMxtVKukuPPrP/aGYYpOVCLQ/853Y29f8aaO
         5d0w==
X-Gm-Message-State: AOAM5339Q5rT42orUIt85hnWcau9qmVEL+MZ8nqAfztNxsKde7ULYQ0y
	R8NM4VS3JFxsUk4aJYJkHYut/szWUBZVRQ==
X-Google-Smtp-Source: ABdhPJzRLin9+1iQTmgl2c1K2bUyHAemrPPBvxYGSAvQiMOBKPyeW5tTrlRE4qD9+cUgvUg6Z0hAKA==
X-Received: by 2002:a05:6214:13ee:: with SMTP id ch14mr2494615qvb.43.1631371328891;
        Sat, 11 Sep 2021 07:42:08 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id j184sm1337496qkd.74.2021.09.11.07.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Sep 2021 07:42:08 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
 <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
 <804336125.2658048.1631299169124@mail.yahoo.com>
 <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
 <899213065.2697497.1631311503116@mail.yahoo.com>
 <6b46431b-cf2a-4796-c707-cce4ea524c6a@gmail.com>
 <1529290832.2403454.1631339791541@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1b1061ac-8a1f-2009-f5a7-19b58c532fd5@gmail.com>
Date: Sat, 11 Sep 2021 10:42:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1529290832.2403454.1631339791541@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: E7HZVRWFHIKL5MUA3MEU25BM6NQMH32Q
X-Message-ID-Hash: E7HZVRWFHIKL5MUA3MEU25BM6NQMH32Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7HZVRWFHIKL5MUA3MEU25BM6NQMH32Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7964092132628971122=="

This is a multi-part message in MIME format.
--===============7964092132628971122==
Content-Type: multipart/alternative;
 boundary="------------C075A665A0EE8F7607F10889"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C075A665A0EE8F7607F10889
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-11 1:56 a.m., zhou wrote:
> Thank you Marcus.
> I originally thought that there might be two levels of buffer, one in=20
> device and one in host, and the one in host was bigger and could be=20
> configured by user, but after I checked the UHD library, I couldn't=20
> find the host-side buffer. So, I agree with you that the host sends=20
> the packets to the device immediately.
There IS a host-side buffer.=C2=A0 It exists in the OS kernel between the=
=20
application layer and the ethernet device drivers.
 =C2=A0 In *general* applications will write to I/O devices as fast as th=
e=20
kernel will let them.=C2=A0 This generally means that the
 =C2=A0 kernel must buffer traffic and then put the issuing thread to sle=
ep=20
when the buffers are full.=C2=A0 In the case of the network,
 =C2=A0 the NIC can only issue frames at a fixed rate (10Gbit or 1Gbit)--=
if=20
the application writes faster than that, then the
 =C2=A0 kernel buffer is there to help, and, as I said, will put the=20
application thread to sleep when the buffer is full.

In *addition* to all that, in the continuous-streaming case, the radio=20
will use (AFAIR) ethernet PAUSE frames to "pace"
 =C2=A0 the incoming data to allow smooth sending at exactly the desired=20
sample rate.=C2=A0 This in turn will potentially trigger
 =C2=A0 the kernel buffer-management mechanisms, and potentially cause th=
e=20
sending thread to go to sleep for a bit.

Now, when you specify the send_buff_size as a *stream* argument, that=20
ultimately, on Linux systems, causes the
 =C2=A0 UDP socket to be configured with setsockopt() using the SO_SNDBUF=
=20
option to tell the kernel what size of
 =C2=A0 buffer to use.=C2=A0 It's a bit obscure in the code because the c=
ode=20
supports multiple types of I/O and network-stack
 =C2=A0 implementations.

>
> I also did the same measurement on host using X310 USRP. The results=20
> are the same as N321.
> Can I configure the send buffer size in device? especially in N321. It=20
> has 1G DDR3 RAM and a huge SD card. I don't want a very big buffer;=20
> 10ms will be enough. The buffer size shall vary with sampling rate.
> I will appreciate it very much if you could get clarification from the=20
> devs team.
Most of the DRAM on the N321 is for the Linux *CPU*, and is not=20
available to the FPGA implementation (or, if it is, there's
 =C2=A0 a fixed chunk and the FPGA would have to be recompiled).=C2=A0 Th=
e dev=20
team would know best.

But I'll make this comment here.=C2=A0 If the steady-state case that you'=
re=20
dealing with is that your host CPU cannot "keep up"
 =C2=A0 with a demand for samples at 245Msps, then NO AMOUNT OF BUFFERING=
=20
will help you.=C2=A0=C2=A0 Are you doing this on 4 channels
 =C2=A0 at once?=C2=A0 That's an ungodly sample demand for even=20
quite-well-appointed computers, even if you're just streaming
 =C2=A0 pre-formed sample frames out of a RAM buffer.=C2=A0=C2=A0 This is=
n't, at a=20
high-level, peculiar to USRPs or SDR or DSP.=C2=A0 In ANY
 =C2=A0 producer-consumer architecture with real-time constraints, if the=
=20
producer cannot "keep up" with the consumer, then
 =C2=A0 no amount of pre-buffering will help for the continuous streaming=
=20
case.=C2=A0 Even if the "producer" is able to keep up at
 =C2=A0 99.99% of the rate demand of the "consumer", buffers will eventua=
lly=20
starve and there'll be an underrun.=C2=A0 Standard
 =C2=A0 computer-science stuff.


>
>
>
>
>>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com=20
>> <mailto:usrp-users@lists.ettus.com>
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
>> <mailto:usrp-users-leave@lists.ettus.com>
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com=20
> <mailto:usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
> <mailto:usrp-users-leave@lists.ettus.com>


--------------C075A665A0EE8F7607F10889
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-11 1:56 a.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:1529290832.2403454.1631339791541@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div>
        <div dir=3D"ltr" data-setdir=3D"false">Thank you Marcus.</div>
        <div dir=3D"ltr" data-setdir=3D"false">I originally thought that
          there might be two levels of buffer, one in device and one in
          host, and the one in host was bigger and could be configured
          by user, but after I checked the UHD library, I couldn't find
          the host-side buffer. So, I agree with you that the host sends
          the packets to the device immediately.</div>
      </div>
    </blockquote>
    There IS a host-side buffer.=C2=A0 It exists in the OS kernel between=
 the
    application layer and the ethernet device drivers.<br>
    =C2=A0 In *general* applications will write to I/O devices as fast as=
 the
    kernel will let them.=C2=A0 This generally means that the<br>
    =C2=A0 kernel must buffer traffic and then put the issuing thread to
    sleep when the buffers are full.=C2=A0 In the case of the network,<br=
>
    =C2=A0 the NIC can only issue frames at a fixed rate (10Gbit or
    1Gbit)--if the application writes faster than that, then the<br>
    =C2=A0 kernel buffer is there to help, and, as I said, will put the
    application thread to sleep when the buffer is full.<br>
    <br>
    In *addition* to all that, in the continuous-streaming case, the
    radio will use (AFAIR) ethernet PAUSE frames to "pace"<br>
    =C2=A0 the incoming data to allow smooth sending at exactly the desir=
ed
    sample rate.=C2=A0 This in turn will potentially trigger<br>
    =C2=A0 the kernel buffer-management mechanisms, and potentially cause=
 the
    sending thread to go to sleep for a bit.<br>
    <br>
    Now, when you specify the send_buff_size as a *stream* argument,
    that ultimately, on Linux systems, causes the<br>
    =C2=A0 UDP socket to be configured with setsockopt() using the SO_SND=
BUF
    option to tell the kernel what size of<br>
    =C2=A0 buffer to use.=C2=A0 It's a bit obscure in the code because th=
e code
    supports multiple types of I/O and network-stack<br>
    =C2=A0 implementations.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1529290832.2403454.1631339791541@mail.yahoo.com">
      <div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I also did the same
          measurement on host using X310 USRP. The results are the same
          as N321.</div>
        <div dir=3D"ltr" data-setdir=3D"false">Can I configure the send
          buffer size in device? especially in N321. It has 1G DDR3 RAM
          and a huge SD card. I don't want a very big buffer; 10ms will
          be enough. The buffer size shall vary with sampling rate.</div>
        <div dir=3D"ltr" data-setdir=3D"false">I will appreciate it very
          much if you could get clarification from the devs team.</div>
        <div dir=3D"ltr" data-setdir=3D"false">=C2=A0</div>
      </div>
    </blockquote>
    Most of the DRAM on the N321 is for the Linux *CPU*, and is not
    available to the FPGA implementation (or, if it is, there's<br>
    =C2=A0 a fixed chunk and the FPGA would have to be recompiled).=C2=A0=
 The dev
    team would know best.<br>
    <br>
    But I'll make this comment here.=C2=A0 If the steady-state case that
    you're dealing with is that your host CPU cannot "keep up"<br>
    =C2=A0 with a demand for samples at 245Msps, then NO AMOUNT OF BUFFER=
ING
    will help you.=C2=A0=C2=A0 Are you doing this on 4 channels<br>
    =C2=A0 at once?=C2=A0 That's an ungodly sample demand for even
    quite-well-appointed computers, even if you're just streaming<br>
    =C2=A0 pre-formed sample frames out of a RAM buffer.=C2=A0=C2=A0 This=
 isn't, at a
    high-level, peculiar to USRPs or SDR or DSP.=C2=A0 In ANY<br>
    =C2=A0 producer-consumer architecture with real-time constraints, if =
the
    producer cannot "keep up" with the consumer, then<br>
    =C2=A0 no amount of pre-buffering will help for the continuous stream=
ing
    case.=C2=A0 Even if the "producer" is able to keep up at<br>
    =C2=A0 99.99% of the rate demand of the "consumer", buffers will
    eventually starve and there'll be an underrun.=C2=A0 Standard<br>
    =C2=A0 computer-science stuff.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:1529290832.2403454.1631339791541@mail.yahoo.com">
      <div><br>
        <div dir=3D"ltr" style=3D"color:rgb(0, 0, 0);font-family:Helvetic=
a
          Neue, Helvetica, Arial, sans-serif;"><span><span
              style=3D"color:rgb(0, 0, 0);font-family:Helvetica Neue,
              Helvetica, Arial, sans-serif;"><br clear=3D"none">
            </span></span></div>
        <div dir=3D"ltr" style=3D"color:rgb(0, 0, 0);font-family:Helvetic=
a
          Neue, Helvetica, Arial, sans-serif;"><br clear=3D"none">
        </div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"ydp694195a5yahoo_quoted_1603233993"
        class=3D"ydp694195a5yahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div>
            <div id=3D"ydp694195a5yiv5942770610">
              <div>
                <div class=3D"ydp694195a5yiv5942770610yqt5932123032"
                  id=3D"ydp694195a5yiv5942770610yqtfd72072">
                  <blockquote type=3D"cite">
                    <div
                      class=3D"ydp694195a5yiv5942770610ydp18a06c0yahoo_qu=
oted"
id=3D"ydp694195a5yiv5942770610ydp18a06c0yahoo_quoted_1837252270">
                      <div style=3D"font-family:'Helvetica Neue',
                        Helvetica, Arial,
                        sans-serif;font-size:13px;color:#26282a;">
                        <div>
                          <div
                            id=3D"ydp694195a5yiv5942770610ydp18a06c0yiv53=
78333377">
                            <div>
                              <div
                                class=3D"ydp694195a5yiv5942770610ydp18a06=
c0yiv5378333377yqt4910377105"
id=3D"ydp694195a5yiv5942770610ydp18a06c0yiv5378333377yqtfd24992">
                                <blockquote type=3D"cite">
                                  <div
class=3D"ydp694195a5yiv5942770610ydp18a06c0yiv5378333377ydpa2579362yahoo-=
style-wrap"
                                    style=3D"font-family:Helvetica Neue,
                                    Helvetica, Arial,
                                    sans-serif;font-size:13px;">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr"> <br clear=3D"none=
">
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                                <br clear=3D"none">
                              </div>
                            </div>
                          </div>
_______________________________________________<br clear=3D"none">
                          USRP-users mailing list -- <a shape=3D"rect"
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            rel=3D"nofollow" target=3D"_blank"
                            moz-do-not-send=3D"true">usrp-users@lists.ett=
us.com</a><br
                            clear=3D"none">
                          To unsubscribe send an email to <a
                            shape=3D"rect"
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            rel=3D"nofollow" target=3D"_blank"
                            moz-do-not-send=3D"true">usrp-users-leave@lis=
ts.ettus.com</a>
                          <div
                            class=3D"ydp694195a5yiv5942770610ydp18a06c0yq=
t4910377105"
id=3D"ydp694195a5yiv5942770610ydp18a06c0yqtfd94940"><br clear=3D"none">
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div class=3D"ydp694195a5yqt5932123032"
              id=3D"ydp694195a5yqtfd62361">______________________________=
_________________<br
                clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect"
                href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollo=
w"
                target=3D"_blank" moz-do-not-send=3D"true">usrp-users@lis=
ts.ettus.com</a><br
                clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect"
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"nofollow" target=3D"_blank" moz-do-not-send=3D"tru=
e">usrp-users-leave@lists.ettus.com</a><br
                clear=3D"none">
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------C075A665A0EE8F7607F10889--

--===============7964092132628971122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7964092132628971122==--
