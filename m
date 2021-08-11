Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6693E9332
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 16:01:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EE78384287
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 10:01:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fvs16YgQ";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 02716383E8A
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 10:01:13 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id l24so2135280qtj.4
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 07:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=Z1lzYDby+XqqMYUODrpq3nSVaoVErIcOvAVL/ElMW6A=;
        b=fvs16YgQb+j5nVrqj6SBssZBwvlueSRtStER8SXJeAVb8zgMUo1+74oJp4x5dFNdY5
         xKOBaiJjwFSRwB8I0pjde+UZLiQiVOEv8WHfuiNEUlr045vuOBtTIBcCqXiY2mnSAhr7
         q0skFWrHMSlROtmNVAc3zTRwTQu/e0UeXFMSk7DVjyHZmvhhlXs46LSs0ixqqjTNWAm0
         7lJdviXvnTH/ey8NZ718xDqA6QdRWb0pNcC4cL5D16jsZf0eppNVUAtugg1Uwa7ZZh5q
         /8rWq2gHisa1JmhovvxpdnV9AH5rwyRLWjOxugn9XeW5PnXXsOOtF13V1c57RzVD+9Hr
         S96A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=Z1lzYDby+XqqMYUODrpq3nSVaoVErIcOvAVL/ElMW6A=;
        b=g53KZKxtwsSbcE9Ntim78a9++ZaTtjWBR1iNAtxiIcrvQGD102mpHpNoZNRE5+ixoL
         Ima9ZXfob6nS4HE4wg2fvDQU2HcLFBROwVDKM51UW2MxIHRNvfb2bxkPvUQe8rCBMN8F
         QmRkxK+tXDyJ0protGgBu2xGkKuCWM8+hu9rrJsMgw0XFzUHbhzIiz9u6raD6ZQ7m2FK
         j4Tr5WuKO6vN7mkN6tpFAoCocwAJkVTGpmWiGegQnwF+UhQhGvXGD+9CJVvxMNRysgr1
         yM7lno7RtC1ndijje70OgtMX0GgdNwPOQY81UD+yrnHQZpafzZBiLck8NH4Dq5IVmzBM
         3XXQ==
X-Gm-Message-State: AOAM530kyjGQEkQ2RXmft3l1R0/9HaCV/5IBQG1S6Ga+cwwTUTIqu4PS
	K+8WdhBLjE22WDM7aO4lJGnT8D3OrhCYFw==
X-Google-Smtp-Source: ABdhPJxDdwvXFQbRf+QSEjllI9b+PJ9aSTSgnwIw3U/ANW96T1R6Nqtky3iYK/usyL4U3j1/92+KLA==
X-Received: by 2002:ac8:5489:: with SMTP id h9mr27072260qtq.391.1628690472988;
        Wed, 11 Aug 2021 07:01:12 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c68sm13135742qkf.48.2021.08.11.07.01.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 07:01:12 -0700 (PDT)
Message-ID: <6113D827.9090108@gmail.com>
Date: Wed, 11 Aug 2021 10:01:11 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Rob Kossler <rkossler@nd.edu>
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com> <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com> <CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmail.com> <61129418.2030705@gmail.com> <BN7PR05MB450016DE050AD136763D5F5BD5F79@BN7PR05MB4500.namprd05.prod.outlook.com> <6112F6ED.7030408@gmail.com> <CAB__hTTH7dXg+QkC0wc7zg3x4LMrWWn9ysqJwPgSwj1PgC+DYQ@mail.gmail.com>
In-Reply-To: <CAB__hTTH7dXg+QkC0wc7zg3x4LMrWWn9ysqJwPgSwj1PgC+DYQ@mail.gmail.com>
Message-ID-Hash: RTU52DKVYUTVFUUBWFWFFRQTXQRAP2FF
X-Message-ID-Hash: RTU52DKVYUTVFUUBWFWFFRQTXQRAP2FF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Tobin <Tobin@augustusaero.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RTU52DKVYUTVFUUBWFWFFRQTXQRAP2FF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5110123697732158057=="

This is a multi-part message in MIME format.
--===============5110123697732158057==
Content-Type: multipart/alternative;
 boundary="------------060902010303060603090004"

This is a multi-part message in MIME format.
--------------060902010303060603090004
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/11/2021 09:18 AM, Rob Kossler wrote:
> It's too bad that Ettus did not implement the STOP_CONTINUOUS as a 
> timed command.  Had they done so, it would have been possible to send 
> a START_CONTINUOUS followed immediately by a STOP_CONTINUOUS (with 
> time stamp) such that the radio would automatically stop on the 
> correct sample. That being the case, the long captures require the 
> user to stop the radio after receiving the desired number of samples 
> and then flush / discard the rest.
> Rob
>
Agreed, that would be a good implementation.  Probably wouldn't be that 
hard to do (he says, displaying an optimism fueled by only superficial 
knowledge
   of the FPGA codebase).


> On Tue, Aug 10, 2021 at 6:00 PM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 08/10/2021 05:07 PM, Jonathan Tobin wrote:
>>     To follow up,
>>
>>     This seems to be the limit now that I have updated to UHD 4.1.0.1
>>     <http://4.1.0.1>:
>>
>>     [ERROR] [0/Radio#0] Requesting too many samples in a single
>>     burst! Requested 18446744028430598144, maximum is 281474976710655.
>>
>>     This occurs with the key arguments: --rx-rate 4.8e6 --rx-subdev
>>     "A:0 A:1 B:0 B:1" --rx-channels "0,1,2,3" --nsamps 2880000000
>>
>>     The nsamps value is for 10 minutes of recording (sample rate * 60
>>     seconds * 10 minutes).
>>
>>     Thanks,
>>     Jonathan
>>
>     Right.  Because that *example* program uses the NUM_SAMPS_AND_DONE
>     streamer type, which requires that the *RADIO* keep track of the
>      number of samples you're interested in.  That was extended from
>     32-bits to 48 bits.
>
>     You'll note that txrx_loopback_to_file will simply run
>     continuously if you *dont* specify --nsamps, because it uses two
>     different streaming modes:
>
>      // setup streaming
>         uhd::stream_cmd_t stream_cmd((num_requested_samples == 0)
>                                          ?
>     uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS
>                                          :
>     uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
>     You can then just interrupt it when you're done or add some code
>     to see if you have enough samples, even when you're running
>     continuously
>       or see if enough time has elapsed, etc, etc.
>
>     Contrast with rx_multi_samples:
>
>       // setup streaming
>         std::cout << std::endl;
>         std::cout << boost::format("Begin streaming %u samples, %f
>     seconds in the future...")
>                          % total_num_samps % seconds_in_future
>                   << std::endl;
>         uhd::stream_cmd_t
>     stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
>     Same comment as above.  You can modify this to run continuously,
>     and then have the sample-gather loop exit when it is satisfied
>     that it has
>       enough samples--either because enough time has elapsed or a
>     sample counter has reached a certain value.
>
>
>     The UHD API is diverse.  There's no possible way that the handful
>     of *example* programs can possibly satisfy every use case, and
>     that's simply
>       not design intent.   Some programming may be required.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     <mailto:usrp-users@lists.ettus.com>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>     <mailto:usrp-users-leave@lists.ettus.com>
>


--------------060902010303060603090004
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/11/2021 09:18 AM, Rob Kossler
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAB__hTTH7dXg+QkC0wc7zg3x4LMrWWn9ysqJwPgSwj1PgC+DYQ@mail.gmai=
l.com"
      type=3D"cite">
      <div dir=3D"ltr">It's too bad that Ettus did not implement the
        STOP_CONTINUOUS as a timed command.=C2=A0 Had they done so, it wo=
uld
        have been possible to send a START_CONTINUOUS followed
        immediately by a STOP_CONTINUOUS (with time stamp) such that the
        radio would automatically stop on the correct sample. That being
        the case, the long captures require the user to stop the radio
        after receiving the desired number of samples and then flush /
        discard the rest.
        <div>Rob</div>
      </div>
      <br>
    </blockquote>
    Agreed, that would be a good implementation.=C2=A0 Probably wouldn't =
be
    that hard to do (he says, displaying an optimism fueled by only
    superficial knowledge<br>
    =C2=A0 of the FPGA codebase).<br>
    <br>
    <br>
    <blockquote
cite=3D"mid:CAB__hTTH7dXg+QkC0wc7zg3x4LMrWWn9ysqJwPgSwj1PgC+DYQ@mail.gmai=
l.com"
      type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 10, 2021 at 6:0=
0
          PM Marcus D. Leech &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 08/10/2021 05:07 PM, Jonathan Tobin wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                To follow=C2=A0up,</div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                This seems to be the limit now that I have updated to
                UHD <a moz-do-not-send=3D"true" href=3D"http://4.1.0.1"
                  target=3D"_blank">4.1.0.1</a>:</div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                [ERROR] [0/Radio#0] Requesting too many samples in a
                single burst! Requested 18446744028430598144, maximum is
                281474976710655.<br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                This occurs with the key arguments: --rx-rate 4.8e6
                --rx-subdev "A:0 A:1 B:0 B:1" --rx-channels "0,1,2,3"
                --nsamps 2880000000</div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                The nsamps value is for 10 minutes of recording (sample
                rate * 60 seconds * 10 minutes).</div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                <br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">
                Thanks,
                <div>Jonathan</div>
                <br>
              </div>
            </blockquote>
            Right.=C2=A0 Because that *example* program uses the
            NUM_SAMPS_AND_DONE streamer type, which requires that the
            *RADIO* keep track of the<br>
            =C2=A0number of samples you're interested in.=C2=A0 That was =
extended
            from 32-bits to 48 bits.<br>
            <br>
            You'll note that txrx_loopback_to_file will simply run
            continuously if you *dont* specify --nsamps, because it uses
            two different streaming modes:<br>
            <br>
            =C2=A0// setup streaming<br>
            =C2=A0=C2=A0=C2=A0 uhd::stream_cmd_t stream_cmd((num_requeste=
d_samples =3D=3D
            0)<br>
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ?
            uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS<br>
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 :
            uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
            <br>
            You can then just interrupt it when you're done or add some
            code to see if you have enough samples, even when you're
            running continuously<br>
            =C2=A0 or see if enough time has elapsed, etc, etc.<br>
            <br>
            Contrast with rx_multi_samples:<br>
            <br>
            =C2=A0 // setup streaming<br>
            =C2=A0=C2=A0=C2=A0 std::cout &lt;&lt; std::endl;<br>
            =C2=A0=C2=A0=C2=A0 std::cout &lt;&lt; boost::format("Begin st=
reaming %u
            samples, %f seconds in the future...")<br>
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 % total_num_sam=
ps % seconds_in_future<br>
            =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 &lt;&lt; std::endl;<br>
            =C2=A0=C2=A0=C2=A0 uhd::stream_cmd_t
            stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE)=
;<br>
            <br>
            Same comment as above.=C2=A0 You can modify this to run
            continuously, and then have the sample-gather loop exit when
            it is satisfied that it has<br>
            =C2=A0 enough samples--either because enough time has elapsed=
 or
            a sample counter has reached a certain value.<br>
            <br>
            <br>
            The UHD API is diverse.=C2=A0 There's no possible way that th=
e
            handful of *example* programs can possibly satisfy every use
            case, and that's simply<br>
            =C2=A0 not design intent.=C2=A0=C2=A0 Some programming may be=
 required.<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a moz-do-not-send=3D"true"
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060902010303060603090004--

--===============5110123697732158057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5110123697732158057==--
