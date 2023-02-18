Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F55669B78F
	for <lists+usrp-users@lfdr.de>; Sat, 18 Feb 2023 02:48:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48EFA38488F
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 20:48:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676684880; bh=AwQYfQiChFRtgpGPdrT5MSaoekAOy+2jGNJXunWfbmI=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=td9upddDm1ex4wB7V5Mhq/6L0VYqI6iI08mEH+U3oqD5HPu7vNi5OqI+TqwkpCYrp
	 uXORtxhIjV9LDL0Hzi3hTpnHGlPLbP1uiiG1MbeabisYKnstqrVZHHtXuVSzBeLpxG
	 pLvtqo3Tswrc2iTDAK08r93c02Mn+B2r84bSYcJUw/dnLasvC0iVd5kqIULURpQ2Bw
	 ZOdKTgkbjRvJXO9JjEdZiW7N7GZFdgWGLMKEkHefUeKHUnWmR+KXUTTK3zlinxDlyG
	 KJ9lIKryIxkvZMpG216d+SaOf50f5PDeoXFquilmQqQRnjRZtUBtdfISRyY73BXd8F
	 LIAZpEnEL1eug==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 6CC6F3848D6
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 20:47:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mkjLOpB0";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id jy21so1146416qvb.3
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 17:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=41yWtdGectLhpVwFpRJdZoNa0YaOZ53aMHXwC7oBPho=;
        b=mkjLOpB0aSP6OKo0eR9xinKpNNmbIEoFrCmSXk1QGaOnKul6VyyOGtjd0L43syjopw
         vk2+qEcHumynxBNKd7SmCIGhjnePZnG/7O0rlbiPLDNEQ0mmlF/7zx/jijfy1ui5fehT
         0KUkg2uVbjpyE73MY/H726zguxb5T3Pb8T+Uw4eMkBWjFvkQR/B2FQY1knJz98oke60B
         GdQdZMs5b3NZT1Dijj4CWBCLDeI1IKi2ONbjkhUJacrZuYIKNW3Tf2XpJ4ZffKDleFSS
         kGM8fL0rrpObEeJB5OwRd03P3DDdWuMExpNBkgtJeA/3AXxsf/uzPXd/udlhO8EOWBxZ
         r/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=41yWtdGectLhpVwFpRJdZoNa0YaOZ53aMHXwC7oBPho=;
        b=sq2RXC/xkKTlUTnux8nIQD4amSLpWQ6V+SbKeJg3Ew/hfe+852XpR+J+v7/Wm9CRgJ
         KwjFfcvuX89qgpYO1QlwL8aQqoD+UesoEbOsbJkgOfH9OEYB04x+3wdGGOHeH9hjePzQ
         eXB8xWaMshL9ewsofXHTELSatIOMck7dKKvuXdvOt72Zlh88CKGaMhhj2gQP/PAxFY6j
         q6g2T6uzzgDuBNjpra1vwlfIvMa2GAqs1gs87VCGBcJrnDfo6phO7cOSdXsgZkrhCxFX
         d59hgyHHpiO4xxnU2iZWtFs2Citme1glnCXgKbe3jdDnqcaP9LGcWbfIAfp7cYLGNmyx
         MuCQ==
X-Gm-Message-State: AO0yUKURCtcQSdpUhpK9JYb2FC7AUlzg+MfGDKTKa7lCGaEZLW7eV916
	IJleMXsuvk2k4w/tCi8CBmg=
X-Google-Smtp-Source: AK7set++Zrsp+rjiUWEAdPyBphyKXuBLRaGVJe2/kMgCNS8FyN0ef62dXIiXmVy+2DydlwDogLlraw==
X-Received: by 2002:a05:6214:f64:b0:56e:bc4c:b55d with SMTP id iy4-20020a0562140f6400b0056ebc4cb55dmr6590840qvb.20.1676684822731;
        Fri, 17 Feb 2023 17:47:02 -0800 (PST)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id k186-20020a37bac3000000b0073ba69263b4sm2827496qkf.73.2023.02.17.17.47.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 17:47:02 -0800 (PST)
Message-ID: <4303e0c2-9425-4295-7249-4bf2f1a75773@gmail.com>
Date: Fri, 17 Feb 2023 20:47:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Anil Gurses <agurses@ncsu.edu>
References: <CANvw1+RzoBzytLFxQUvH1uYu03VpUNp97PXaqaKF6JvVAS5u6Q@mail.gmail.com>
 <d9568b3e-38a3-c32a-7808-e2529efa4f34@gmail.com>
 <CANvw1+RgMMvjG6EFkyVLxqCfO_iC866HyJPSTxdv-XM_6zzW4w@mail.gmail.com>
 <2ce67fb3-d776-534c-1f38-4421da3c5d3a@gmail.com>
 <CANvw1+Rqk-sMaiswCL4=iggm04mrMYgXt50aTEjuuzMq9yYrTA@mail.gmail.com>
 <ed769f5d-1e33-c9b6-2210-73e6b00d7ca0@gmail.com>
 <CANvw1+TR6bVdWruSL42iyPgmpP3854c=T_SNxjVHZ8dtszWuwA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANvw1+TR6bVdWruSL42iyPgmpP3854c=T_SNxjVHZ8dtszWuwA@mail.gmail.com>
Message-ID-Hash: ZDQD5EJNNP7OJTPYHMOE2NW7TIIHO5TS
X-Message-ID-Hash: ZDQD5EJNNP7OJTPYHMOE2NW7TIIHO5TS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Continuous stream receive process
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZDQD5EJNNP7OJTPYHMOE2NW7TIIHO5TS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7895401141512455762=="

This is a multi-part message in MIME format.
--===============7895401141512455762==
Content-Type: multipart/alternative;
 boundary="------------7CfPlKDrnchrNyGPBvu8Wwfz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7CfPlKDrnchrNyGPBvu8Wwfz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/02/2023 20:45, Anil Gurses wrote:
> I think I found the answer. In this document=20
> <https://files.ettus.com/manual/page_stream.html>, it states that "/As=20
> soon as streaming starts, the uhd::rx_streamer::recv() call needs to=20
> be called regularly to accept the incoming data. If recv() is not=20
> called often enough, the device can overrun and stop streaming./".=20
> Since I am putting delays between recv calls(just for testing), the=20
> stream gets stopped. When the RX stream stops, there won't be any light=
s.
>
> Thanks again for your help!
>
>
> A.
Yes.=C2=A0 I said that earlier today.

Including a pointer to a document that describes the LEDs, how they=20
work, and under what circumstances the "streaming" lights
 =C2=A0 are extinguished.=C2=A0=C2=A0 I sent it to the list.


>
>
> On Fri, Feb 17, 2023 at 2:19 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 17/02/2023 14:14, Anil Gurses wrote:
>>     Do you know any documentation about USRP continuous streaming? It
>>     might be more useful if I check those documents. I couldn't find
>>     anything about it in the UHD/USRP manual.
>>
>>
>>     A.
>     When you create a streamer, you tell it what type of streaming you
>     wish to do:
>
>     https://files.ettus.com/manual/classuhd_1_1rx__streamer.html
>     https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html
>
>
>
>     The most-normal mode is to stream continuously.=C2=A0 That's what 9=
9%
>     of the applications out there use because they're
>     =C2=A0 doing things like demodulating wireless protocols, etc.
>
>     If, however, you want to kind of "sniff" the spectrum in discrete
>     time chunks, there are other streaming modes, like
>     =C2=A0 NUM_SAMPS_AND_DONE.=C2=A0 The "rx_samples_to_file" example c=
ode uses
>     this when you specify a specific number of
>     =C2=A0 samples to be captured.
>
>
>
>
>>
>>     On Fri, Feb 17, 2023 at 2:06 PM Marcus D. Leech
>>     <patchvonbraun@gmail.com> wrote:
>>
>>         On 17/02/2023 14:00, Anil Gurses wrote:
>>>
>>>         Thanks for your quick response!
>>>
>>>             In general, your application absolutely, positively,
>>>             needs to call
>>>             recv() to consume samples as fast as they're produced,
>>>             on average.
>>>             =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buf=
fers, but
>>>             if your
>>>             application cannot "keep up", no amount of buffering
>>>             will save it.
>>>
>>>
>>>         This is why we have overflows. Then, my interpretation of
>>>         continuous streaming is correct.
>>>
>>>         To test this, I created a simple python script by putting
>>>         delays(sleep) between consecutive recv calls for b205 mini.
>>>         The lights turned on only at recv calls and not during
>>>         delays. I checked the metadata time and USRP time to see if
>>>         the packets are buffered. There was a difference between
>>>         them and it proves that packets are buffered.=C2=A0 However, =
I
>>>         still don't understand how RX light is triggered on
>>>         continuous streaming.
>>>
>>>         A.
>>         The light may turn off when over-runs are happening.=C2=A0 I d=
on't
>>         know the detailed logic behind the lights.
>>
>>         Ah:
>>
>>         https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_ref=
_leds
>>
>>         I'll point out that using Python to do DSP at anything other
>>         than "trivial" rates is a near-guarantee of overruns.=C2=A0 Ev=
en
>>         if you're
>>         =C2=A0=C2=A0 using high-performance underlying libraries like =
Numpy,
>>         the data-marshalling costs in Python make it unsuitable for
>>         anything
>>         =C2=A0=C2=A0 but low-sample-rate experiments.
>>
>>         Gnu Radio does much better in this regard.=C2=A0 While it does=
 use
>>         Python as a kind of "control plane", the "sample plane" is
>>         =C2=A0 all handled in C++ land, and nearly-ALL of the packaged=
 DSP
>>         blocks are written in C++ using SIMD optimizations wherever
>>         =C2=A0 possible.
>>
>>
>>>
>>>
>>>         On Fri, Feb 17, 2023 at 1:43 PM Marcus D. Leech
>>>         <patchvonbraun@gmail.com> wrote:
>>>
>>>             On 17/02/2023 13:34, Anil Gurses via USRP-users wrote:
>>>             > Hi all,
>>>             >
>>>             > I have a simple question about the continuous stream.
>>>             As you all know,
>>>             > USRP RX lights indicate whether it's receiving samples
>>>             or not. On
>>>             > continuous streaming, these lights are turned on if
>>>             the recv function
>>>             > is called from the host computer(stay on until the end
>>>             of recv
>>>             > function call). In theory, the continuous streaming
>>>             mode should
>>>             > receive and buffer these samples. So, shouldn't the
>>>             lights be on until
>>>             > the continuous streaming stop(not until the end of
>>>             recv function call)?
>>>             >
>>>             > If this is how it should be, then my understanding of
>>>             continuous
>>>             > stream is wrong. If I don't call recv function,
>>>             doesn't USRP receive
>>>             > samples and buffer them(on continuous streaming mode)?
>>>             The light is turned on when a receive streamer is
>>>             created, as far as I know.
>>>
>>>             If your application doesn't call recv(), some number of
>>>             samples will be
>>>             buffered in various parts of the library and OS drivers, =
and
>>>             =C2=A0=C2=A0 then they'll just start getting dropped.
>>>
>>>             In general, your application absolutely, positively,
>>>             needs to call
>>>             recv() to consume samples as fast as they're produced,
>>>             on average.
>>>             =C2=A0=C2=A0 Short-term shortfalls are "soaked up" by buf=
fers, but
>>>             if your
>>>             application cannot "keep up", no amount of buffering
>>>             will save it.
>>>
>>>
>>>
>>>
>>>             >
>>>             >
>>>             > Thanks,
>>>             > A.
>>>             >
>>>             > _______________________________________________
>>>             > USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             > To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>             _______________________________________________
>>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>>             To unsubscribe send an email to
>>>             usrp-users-leave@lists.ettus.com
>>>
>>
>

--------------7CfPlKDrnchrNyGPBvu8Wwfz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/02/2023 20:45, Anil Gurses wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+TR6bVdWruSL42iyPgmpP3854c=3DT_SNxjVHZ8dtszWuwA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>I think I found the answer. In this <a
            href=3D"https://files.ettus.com/manual/page_stream.html"
            target=3D"_blank" moz-do-not-send=3D"true">document</a>, it
          states that "<i>As soon as streaming starts, the
            uhd::rx_streamer::recv() call needs to be called regularly
            to accept the incoming data. If recv() is not called often
            enough, the device can overrun and stop streaming.</i>".
          Since I am putting delays between recv calls(just for
          testing), the stream gets stopped. When the RX stream stops,
          there won't be any lights. <br>
        </div>
        <div><br>
        </div>
        <div>Thanks again for your help! <br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>A.<br>
        </div>
      </div>
    </blockquote>
    Yes.=C2=A0 I said that earlier today.<br>
    <br>
    Including a pointer to a document that describes the LEDs, how they
    work, and under what circumstances the "streaming" lights<br>
    =C2=A0 are extinguished.=C2=A0=C2=A0 I sent it to the list.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CANvw1+TR6bVdWruSL42iyPgmpP3854c=3DT_SNxjVHZ8dtszWuwA@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 2:1=
9
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 17/02/2023 14:14, Anil Gurses wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Do you know any documentation about USRP continuous
                  streaming? It might be more useful if I check those
                  documents. I couldn't find anything about it in the
                  UHD/USRP manual. <br>
                </div>
                <div><br>
                </div>
                <div><br>
                </div>
                <div>A.<br>
                </div>
              </div>
            </blockquote>
            When you create a streamer, you tell it what type of
            streaming you wish to do:<br>
            <br>
            <a
              href=3D"https://files.ettus.com/manual/classuhd_1_1rx__stre=
amer.html"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/classuhd_1_1rx__streamer.html</a><br>
            <a
              href=3D"https://files.ettus.com/manual/structuhd_1_1stream_=
_cmd__t.html"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://files.ettus.com/man=
ual/structuhd_1_1stream__cmd__t.html</a><br>
            <br>
            <br>
            <br>
            The most-normal mode is to stream continuously.=C2=A0 That's =
what
            99% of the applications out there use because they're<br>
            =C2=A0 doing things like demodulating wireless protocols, etc=
.<br>
            <br>
            If, however, you want to kind of "sniff" the spectrum in
            discrete time chunks, there are other streaming modes, like<b=
r>
            =C2=A0 NUM_SAMPS_AND_DONE.=C2=A0 The "rx_samples_to_file" exa=
mple code
            uses this when you specify a specific number of<br>
            =C2=A0 samples to be captured.<br>
            <br>
            <br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 202=
3
                  at 2:06 PM Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <div>On 17/02/2023 14:00, Anil Gurses wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div><br>
                        </div>
                        <div>Thanks for your quick response! <br>
                        </div>
                        <div><br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex"> In
                          general, your application absolutely,
                          positively, needs to call <br>
                          recv() to consume samples as fast as they're
                          produced, on average.<br>
                          =C2=A0=C2=A0 Short-term shortfalls are "soaked =
up" by
                          buffers, but if your <br>
                          <div> application cannot "keep up", no amount
                            of buffering will save it.</div>
                        </blockquote>
                        <div><br>
                        </div>
                        <div>This is why we have overflows. Then, my
                          interpretation of continuous streaming is
                          correct. <br>
                        </div>
                        <div><br>
                        </div>
                        <div>To test this, I created a simple python
                          script by putting delays(sleep) between
                          consecutive recv calls for b205 mini. The
                          lights turned on only at recv calls and not
                          during delays. I checked the metadata time and
                          USRP time to see if the packets are buffered.
                          There was a difference between them and it
                          proves that packets are buffered.=C2=A0 However=
, I
                          still don't understand how RX light is
                          triggered on continuous streaming. <br>
                        </div>
                        <div><br>
                        </div>
                        <div>A. <br>
                        </div>
                      </div>
                    </blockquote>
                    The light may turn off when over-runs are
                    happening.=C2=A0 I don't know the detailed logic behi=
nd
                    the lights.=C2=A0 <br>
                    <br>
                    Ah:<br>
                    <br>
                    <a
href=3D"https://files.ettus.com/manual/page_usrp_b200.html#b200_hw_ref_le=
ds"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">https://files.ettus=
.com/manual/page_usrp_b200.html#b200_hw_ref_leds</a><br>
                    <br>
                    I'll point out that using Python to do DSP at
                    anything other than "trivial" rates is a
                    near-guarantee of overruns.=C2=A0 Even if you're<br>
                    =C2=A0=C2=A0 using high-performance underlying librar=
ies like
                    Numpy, the data-marshalling costs in Python make it
                    unsuitable for anything<br>
                    =C2=A0=C2=A0 but low-sample-rate experiments.<br>
                    <br>
                    Gnu Radio does much better in this regard.=C2=A0 Whil=
e it
                    does use Python as a kind of "control plane", the
                    "sample plane" is<br>
                    =C2=A0 all handled in C++ land, and nearly-ALL of the
                    packaged DSP blocks are written in C++ using SIMD
                    optimizations wherever<br>
                    =C2=A0 possible.<br>
                    <br>
                    <br>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">
                        <div><br>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb
                          17, 2023 at 1:43 PM Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">patchvonbraun=
@gmail.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">On
                          17/02/2023 13:34, Anil Gurses via USRP-users
                          wrote:<br>
                          &gt; Hi all,<br>
                          &gt;<br>
                          &gt; I have a simple question about the
                          continuous stream. As you all know, <br>
                          &gt; USRP RX lights indicate whether it's
                          receiving samples or not. On <br>
                          &gt; continuous streaming, these lights are
                          turned on if the recv function <br>
                          &gt; is called from the host computer(stay on
                          until the end of recv <br>
                          &gt; function call). In theory, the continuous
                          streaming mode should <br>
                          &gt; receive and buffer these samples. So,
                          shouldn't the lights be on until <br>
                          &gt; the continuous streaming stop(not until
                          the end of recv function call)?<br>
                          &gt;<br>
                          &gt; If this is how it should be, then my
                          understanding of continuous <br>
                          &gt; stream is wrong. If I don't call recv
                          function, doesn't USRP receive <br>
                          &gt; samples and buffer them(on continuous
                          streaming mode)?<br>
                          The light is turned on when a receive streamer
                          is created, as far as I know.<br>
                          <br>
                          If your application doesn't call recv(), some
                          number of samples will be <br>
                          buffered in various parts of the library and
                          OS drivers, and<br>
                          =C2=A0=C2=A0 then they'll just start getting dr=
opped.<br>
                          <br>
                          In general, your application absolutely,
                          positively, needs to call <br>
                          recv() to consume samples as fast as they're
                          produced, on average.<br>
                          =C2=A0=C2=A0 Short-term shortfalls are "soaked =
up" by
                          buffers, but if your <br>
                          application cannot "keep up", no amount of
                          buffering will save it.<br>
                          <br>
                          <br>
                          <br>
                          <br>
                          &gt;<br>
                          &gt;<br>
                          &gt; Thanks,<br>
                          &gt; A.<br>
                          &gt;<br>
                          &gt;
                          _______________________________________________=
<br>
                          &gt; USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          &gt; To unsubscribe send an email to <a
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><br>
_______________________________________________<br>
                          USRP-users mailing list -- <a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a><br>
                          To unsubscribe send an email to <a
                            href=3D"mailto:usrp-users-leave@lists.ettus.c=
om"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users-le=
ave@lists.ettus.com</a><br>
                        </blockquote>
                      </div>
                    </blockquote>
                    <br>
                  </div>
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

--------------7CfPlKDrnchrNyGPBvu8Wwfz--

--===============7895401141512455762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7895401141512455762==--
