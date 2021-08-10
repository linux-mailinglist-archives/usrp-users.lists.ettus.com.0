Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4750D3E85D4
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 00:01:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C6601384803
	for <lists+usrp-users@lfdr.de>; Tue, 10 Aug 2021 18:00:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AOU7RZWo";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5C50E384284
	for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 18:00:16 -0400 (EDT)
Received: by mail-qt1-f182.google.com with SMTP id c5so352317qtp.13
        for <usrp-users@lists.ettus.com>; Tue, 10 Aug 2021 15:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=6SAPVsBPAu3jPnL+jhVR1YugtS6Em3cxRguEibT1uYY=;
        b=AOU7RZWoNGMbnOl6o61lFDIr0cALxODBPdrTHF4T41WEKwZDC07j5Wbl1tTQtVhgkR
         vAapyYDGLHqCTk1d8J3euuRcdzNb/6xnzTjCdODTBF67p/qpYaKMMxnmRUQl88gFBRiO
         8DLqQXt4jhr8WxCDexMWqR7o5PpGs75vL+fYrgBS+maqwi6dzrGGeSZMOEhlbUZcrkqB
         fLlfpxX7uBgmbNIvFBNOv4zFpAJCSWzDd13V2yzHDZDPFPtDZzVHkjw3RPL7MABDqC0Q
         Jdiit6Jzzkc2FLKLAVXbloVTnA9ME1ZH1oekwhktM96mD1cNo5iAJOIeCM9TlLJknJgu
         0+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=6SAPVsBPAu3jPnL+jhVR1YugtS6Em3cxRguEibT1uYY=;
        b=kYa1vNp4zDJNIH/38UL3Vr3r6OF3dHMkDDiSdQyqoe9DNthcUOlQO/JEeV27kTPnE3
         fafWy7ubbGtX36TncD5B0TwKCLM8PGSC9FZV3tE17/xQZnA17zmjPgwknFbIeZ8oF+zw
         uIGMT8By42J+25CPbNFdBs+R5Zqain3zks9omXO1W3ty7z/ozKKmviPrPaT3YGI5Jl5k
         e+KY31TUL58NPXjBKoVh32H0u/71UcezAZvzcQ+ONxpWnYjxFop1UQ1kcgqFJWqzjWnl
         9c787A795qF4U36HDkQ6mrlm0Xqi/PiV7704OJDu/0rMTTr2FIJnzDVX5Z8ci0Ax4ovn
         tahA==
X-Gm-Message-State: AOAM533ZkSBhM8sR6cUy281PFb1EkIlHMiUhdPqtraVSdqUqZh3DNurU
	rPe918pVppBd7oeRJ3X0pcSywFgmGrxsbQ==
X-Google-Smtp-Source: ABdhPJzk8L/+i1vSoe6e63QTWNYtMFea6bVVA5BMS6cmgr43ozA5k3T5dkXlrzer7yb0AKM7G2P0tA==
X-Received: by 2002:ac8:748d:: with SMTP id v13mr26420378qtq.209.1628632815585;
        Tue, 10 Aug 2021 15:00:15 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id q26sm6460524qki.120.2021.08.10.15.00.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Aug 2021 15:00:15 -0700 (PDT)
Message-ID: <6112F6ED.7030408@gmail.com>
Date: Tue, 10 Aug 2021 18:00:13 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jonathan Tobin <Tobin@augustusaero.com>,
 Brian Padalino <bpadalino@gmail.com>
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com> <610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com> <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com> <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com> <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com> <CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmail.com> <61129418.2030705@gmail.com> <BN7PR05MB450016DE050AD136763D5F5BD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
In-Reply-To: <BN7PR05MB450016DE050AD136763D5F5BD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
Message-ID-Hash: W2L6GPFZYOHCKGCNAPBJLHS3GRVSV42P
X-Message-ID-Hash: W2L6GPFZYOHCKGCNAPBJLHS3GRVSV42P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W2L6GPFZYOHCKGCNAPBJLHS3GRVSV42P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6508460729181400723=="

This is a multi-part message in MIME format.
--===============6508460729181400723==
Content-Type: multipart/alternative;
 boundary="------------060806070505010307060300"

This is a multi-part message in MIME format.
--------------060806070505010307060300
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/10/2021 05:07 PM, Jonathan Tobin wrote:
> To follow up,
>
> This seems to be the limit now that I have updated to UHD 4.1.0.1:
>
> [ERROR] [0/Radio#0] Requesting too many samples in a single burst! 
> Requested 18446744028430598144, maximum is 281474976710655.
>
> This occurs with the key arguments: --rx-rate 4.8e6 --rx-subdev "A:0 
> A:1 B:0 B:1" --rx-channels "0,1,2,3" --nsamps 2880000000
>
> The nsamps value is for 10 minutes of recording (sample rate * 60 
> seconds * 10 minutes).
>
> Thanks,
> Jonathan
>
Right.  Because that *example* program uses the NUM_SAMPS_AND_DONE 
streamer type, which requires that the *RADIO* keep track of the
  number of samples you're interested in.  That was extended from 
32-bits to 48 bits.

You'll note that txrx_loopback_to_file will simply run continuously if 
you *dont* specify --nsamps, because it uses two different streaming modes:

  // setup streaming
     uhd::stream_cmd_t stream_cmd((num_requested_samples == 0)
                                      ? 
uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS
                                      : 
uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);

You can then just interrupt it when you're done or add some code to see 
if you have enough samples, even when you're running continuously
   or see if enough time has elapsed, etc, etc.

Contrast with rx_multi_samples:

   // setup streaming
     std::cout << std::endl;
     std::cout << boost::format("Begin streaming %u samples, %f seconds 
in the future...")
                      % total_num_samps % seconds_in_future
               << std::endl;
     uhd::stream_cmd_t 
stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);

Same comment as above.  You can modify this to run continuously, and 
then have the sample-gather loop exit when it is satisfied that it has
   enough samples--either because enough time has elapsed or a sample 
counter has reached a certain value.


The UHD API is diverse.  There's no possible way that the handful of 
*example* programs can possibly satisfy every use case, and that's simply
   not design intent.   Some programming may be required.



--------------060806070505010307060300
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 08/10/2021 05:07 PM, Jonathan Tobin
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:BN7PR05MB450016DE050AD136763D5F5BD5F79@BN7PR05MB4500.namprd05=
.prod.outlook.com"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;m=
argin-bottom:0;} </style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        To follow=A0up,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        This seems to be the limit now that I have updated to UHD
        4.1.0.1:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        [ERROR] [0/Radio#0] Requesting too many samples in a single
        burst! Requested 18446744028430598144, maximum is
        281474976710655.<br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        This occurs with the key arguments: --rx-rate 4.8e6 --rx-subdev
        "A:0 A:1 B:0 B:1" --rx-channels "0,1,2,3" --nsamps 2880000000</di=
v>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        The nsamps value is for 10 minutes of recording (sample rate *
        60 seconds * 10 minutes).</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,
        <div>Jonathan</div>
        <br>
      </div>
    </blockquote>
    Right.=A0 Because that *example* program uses the NUM_SAMPS_AND_DONE
    streamer type, which requires that the *RADIO* keep track of the<br>
    =A0number of samples you're interested in.=A0 That was extended from
    32-bits to 48 bits.<br>
    <br>
    You'll note that txrx_loopback_to_file will simply run continuously
    if you *dont* specify --nsamps, because it uses two different
    streaming modes:<br>
    <br>
    =A0// setup streaming<br>
    =A0=A0=A0 uhd::stream_cmd_t stream_cmd((num_requested_samples =3D=3D =
0)<br>
    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ?
    uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS<br>
    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 :
    uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
    <br>
    You can then just interrupt it when you're done or add some code to
    see if you have enough samples, even when you're running
    continuously<br>
    =A0 or see if enough time has elapsed, etc, etc.<br>
    <br>
    Contrast with rx_multi_samples:<br>
    <br>
    =A0 // setup streaming<br>
    =A0=A0=A0 std::cout &lt;&lt; std::endl;<br>
    =A0=A0=A0 std::cout &lt;&lt; boost::format("Begin streaming %u sample=
s, %f
    seconds in the future...")<br>
    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 % total_=
num_samps % seconds_in_future<br>
    =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &lt;&lt; std::endl;<br>
    =A0=A0=A0 uhd::stream_cmd_t
    stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
    <br>
    Same comment as above.=A0 You can modify this to run continuously, an=
d
    then have the sample-gather loop exit when it is satisfied that it
    has<br>
    =A0 enough samples--either because enough time has elapsed or a sampl=
e
    counter has reached a certain value.<br>
    <br>
    <br>
    The UHD API is diverse.=A0 There's no possible way that the handful o=
f
    *example* programs can possibly satisfy every use case, and that's
    simply<br>
    =A0 not design intent.=A0=A0 Some programming may be required.<br>
    <br>
    <br>
  </body>
</html>

--------------060806070505010307060300--

--===============6508460729181400723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6508460729181400723==--
