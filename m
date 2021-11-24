Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E6245C949
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 16:56:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1A10383DAE
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 10:56:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kprG/gmy";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 31B88384175
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 10:50:05 -0500 (EST)
Received: by mail-qt1-f181.google.com with SMTP id o17so3059756qtk.1
        for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 07:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=FHLWzU7IhBXPJ7QUkK/4UmERNPnTt7gnx3PWOx3mRQM=;
        b=kprG/gmynTyz4wF0cSBVFcRdyepoF30YPKeIABrX5wEgTmML1rMY0dXUTp1hoa6WGr
         K3jpD93jc/lO2sCF3T/cmMy6H3E4TPzf3ggJjkyheiJnDY0+bTJiViqZyGg0R9BKya15
         EC6O4o1Y2CTeGCnaQ0mEjxezn5T2YjueIQ/MS7ak4zeW45j0UBC0cbYir6B4Dqkzzt4E
         x3JJGEPqFweOQnZZgtmqDzyoyWsQo5YtwzRmjbbL2j/Ctk+GxZMbTDzc8JEApzHyJCu9
         KF80PBc8CFwdv3iAb+sVJQb1C6UNhGPsfSuBidCH2TnhlYCMgHX8HPuMQD/NMFunmq2o
         niWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=FHLWzU7IhBXPJ7QUkK/4UmERNPnTt7gnx3PWOx3mRQM=;
        b=RXylT6HjIrQFSVGPiEaP+3VdhG07pQeyffcJ207PoQS/QNuZiGfULaAP57hxNdIAGq
         gDUaHTjtm3s0cF/VhOsHpriI32u2HIE3gwkO2Ow4WZq31UmHFx26cWxdnny9pFSaL2ZN
         9zA5AEL0p1mlP0cwIhiDg6zhQ5+krsJwPbHRF4gro4Hful0AjDLwqLpSBRXB1QkLu3OL
         y6g7SpVh6fdkVuikLHfCxhg5uGoQpy8axvOQUY4Qcvd36xOumm0ZpeH+qOo+bhED1t9z
         iztIi7YOboTx6F34gggRIbbZMCzN6pzK175wgazxOTjRPMko7FRbCt95ICpgsW2HV2ma
         mxCw==
X-Gm-Message-State: AOAM531Jjda9pRrsWQcQwJXq+yeKvbnFUUN55leuViPIHQ4GSl1NFWlQ
	9Efi9kaIqeTSBxGc7hQnebWxrl3y1kE=
X-Google-Smtp-Source: ABdhPJyOta5DIOsqK+tKWK+br6L3ClSTC+0IBJ3Q8HyxWwjfXvABAvdRFbyXEEvfcvSvIjb/EgD7Vw==
X-Received: by 2002:a05:622a:189:: with SMTP id s9mr8534229qtw.352.1637769004416;
        Wed, 24 Nov 2021 07:50:04 -0800 (PST)
Received: from [192.168.2.213] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bs16sm57232qkb.45.2021.11.24.07.50.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Nov 2021 07:50:04 -0800 (PST)
Message-ID: <32a88fc6-c018-e429-0db2-83440a4737bb@gmail.com>
Date: Wed, 24 Nov 2021 10:50:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu>
Message-ID-Hash: ZTRCOERVJO7UPWGANBIXWNBIR2HTMLNL
X-Message-ID-Hash: ZTRCOERVJO7UPWGANBIXWNBIR2HTMLNL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 FPGA errors
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZTRCOERVJO7UPWGANBIXWNBIR2HTMLNL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7779560273373319315=="

This is a multi-part message in MIME format.
--===============7779560273373319315==
Content-Type: multipart/alternative;
 boundary="------------od7n0RFH479A5fJYoQVihm67"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------od7n0RFH479A5fJYoQVihm67
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-23 14:20, Dustin Widmann wrote:
> Hi list,
>
> I occasionally, unpredictably, get FPGA-related errors. Usually some=20
> sort of FPGA timeouts, so I have to reset the USRP after these errors,=20
> which is rather inconvenient.
>
> The software is C++ using the UHD 4 multi-usrp API.
>
> Without going into too much detail, I wonder if there is anything=20
> particular to my *approach* that could make things more prone to FPGA=20
> errors of any sorts. I'm also curious about the different=20
> =E2=80=9Cstream_modes=E2=80=9D that are available, their pros and cons =
/ use cases,=20
> and more particularly if I'm really using the one best suited to my=20
> use case.
>
> Before describing that, this is what I'm trying to do. It's fairly=20
> simple, but I'm trying to make it tune, collect, and then tune again=20
> as quickly as possible without leaving my cozy C++ bed. It's currently=20
> doing this >100 times per second.
> * transmits continuously
> * in a loop:
> *** tune the transmitter and receivers and set their gain:
> *** receive a fixed number of samples
>
> How I'm currently going about it:
>
>
> In main object/thread
> * init the radio
> * create a tx object and move it to a new thread
> * give the tx object a streamer
> * tell the tx object to start streaming
> * create a rx object and move it to a new thread
> * give the rx object a streamer
> * tell the rx object to start streaming
> * in a loop (forever):
> *** clear command time
> *** set command time to now()+0.004
> *** set_rx_freq to next frequency for both channels
> *** set_tx_freq to next frequency for channel 0
> *** set the rx gain
> *** set the tx gain
> *** sleep for 4ms
> *** ask the rx object to save some samples
One thing that leaps out at me is that it is likely the case that=20
completing tuning for 3 channels all within 8ms is really unlikely to be=20
satisfied,
 =C2=A0 depending on the type of daughterboard you have installed.


>
> in tx object/thread
> * in a loop (until asked to stop by main)
> *** call send on the streamer with max_num_samps samples from a fixed=20
> waveform
> * when killed, send an empty end_of_burst
>
> in rx object/thread
> * issue STREAM_MODE_START_CONTINUOUS, starting 0.25 in the=20
> future/_restart
> * in a loop (until asked to stop by main)
> *** recv=C2=A0 max_num_samps from the streamer
> *** check for/handle errors if they occur (often do at the start of=20
> the stream)
> *** copy the samples=C2=A0 if currently collecting, else discard them
> * when killed, issue STREAM_MODE_STOP_CONTINOUS
>
> I can/will provide more detail/code/etc, but that's not necessarily=20
> relevant to the *approach* I wouldn't think. To reiterate the=20
> question, I want to know if there is anything about the approach that=20
> would make FPGA related errors likely.
>
> -Dustin
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------od7n0RFH479A5fJYoQVihm67
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-23 14:20, Dustin Widmann
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu">Hi
      list,
      <br>
      <br>
      I occasionally, unpredictably, get FPGA-related errors. Usually
      some sort of FPGA timeouts, so I have to reset the USRP after
      these errors, which is rather inconvenient.
      <br>
      <br>
      The software is C++ using the UHD 4 multi-usrp API.
      <br>
      <br>
      Without going into too much detail, I wonder if there is anything
      particular to my *approach* that could make things more prone to
      FPGA errors of any sorts. I'm also curious about the different
      =E2=80=9Cstream_modes=E2=80=9D that are available, their pros and c=
ons / use
      cases, and more particularly if I'm really using the one best
      suited to my use case.
      <br>
      <br>
      Before describing that, this is what I'm trying to do. It's fairly
      simple, but I'm trying to make it tune, collect, and then tune
      again as quickly as possible without leaving my cozy C++ bed. It's
      currently doing this &gt;100 times per second.
      <br>
      * transmits continuously
      <br>
      * in a loop:
      <br>
      *** tune the transmitter and receivers and set their gain:
      <br>
      *** receive a fixed number of samples
      <br>
      <br>
      How I'm currently going about it:
      <br>
      <br>
      <br>
      In main object/thread
      <br>
      * init the radio
      <br>
      * create a tx object and move it to a new thread
      <br>
      * give the tx object a streamer
      <br>
      * tell the tx object to start streaming
      <br>
      * create a rx object and move it to a new thread
      <br>
      * give the rx object a streamer
      <br>
      * tell the rx object to start streaming
      <br>
      * in a loop (forever):
      <br>
      *** clear command time
      <br>
      *** set command time to now()+0.004
      <br>
      *** set_rx_freq to next frequency for both channels
      <br>
      *** set_tx_freq to next frequency for channel 0
      <br>
      *** set the rx gain
      <br>
      *** set the tx gain
      <br>
      *** sleep for 4ms
      <br>
      *** ask the rx object to save some samples
      <br>
    </blockquote>
    One thing that leaps out at me is that it is likely the case that
    completing tuning for 3 channels all within 8ms is really unlikely
    to be satisfied,<br>
    =C2=A0 depending on the type of daughterboard you have installed.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:360d04b1-759d-69cb-fa01-d400cb592203@virginia.edu">
      <br>
      in tx object/thread
      <br>
      * in a loop (until asked to stop by main)
      <br>
      *** call send on the streamer with max_num_samps samples from a
      fixed waveform
      <br>
      * when killed, send an empty end_of_burst
      <br>
      <br>
      in rx object/thread
      <br>
      * issue STREAM_MODE_START_CONTINUOUS, starting 0.25 in the
      future/_restart
      <br>
      * in a loop (until asked to stop by main)
      <br>
      *** recv=C2=A0 max_num_samps from the streamer
      <br>
      *** check for/handle errors if they occur (often do at the start
      of the stream)
      <br>
      *** copy the samples=C2=A0 if currently collecting, else discard th=
em
      <br>
      * when killed, issue STREAM_MODE_STOP_CONTINOUS
      <br>
      <br>
      I can/will provide more detail/code/etc, but that's not
      necessarily relevant to the *approach* I wouldn't think. To
      reiterate the question, I want to know if there is anything about
      the approach that would make FPGA related errors likely.
      <br>
      <br>
      -Dustin
      <br>
      <br>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------od7n0RFH479A5fJYoQVihm67--

--===============7779560273373319315==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7779560273373319315==--
