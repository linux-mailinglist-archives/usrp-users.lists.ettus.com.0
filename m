Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0A43E926C
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 15:19:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFB0C38464D
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 09:19:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="LGOHsmwz";
	dkim-atps=neutral
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 03BD1384282
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 09:18:20 -0400 (EDT)
Received: by mail-ot1-f45.google.com with SMTP id n1-20020a9d1e810000b0290514da4485e4so524183otn.4
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 06:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nrUBkoWM+s23PLyjuLhVU/tG4hsmGLmsrAdP4ZONjt4=;
        b=LGOHsmwzJ34RmQPfg7EFTmgIkMdGFe21MRsw/jM9/16F93VlnEnkELWhQjoA8tBupa
         UNl0W7u96IayHBLejOTewe9XZmn7d8RKZ/lbBAgE+voJ4Q2dXgQXb+NP+3ex1p0FHzz7
         fcdb8VkVdwepwVpjEGHCdGxhjESdFRZnee07ypjWWyI6YHBjg8MLGvtyEwx3KA1wJms8
         sy1Sbzn3hRCBhg1nKMTUXMd7faaht3oPTE/StNHIKcI88M+tbmSLYYm4inl+4Eigj5tX
         /Hvytg/QK+53yJapiqO9/Yj2etUCrBVJhrHHOl3tONp8VCt0GzrcvpxT+dXVLEFBnrj0
         37kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nrUBkoWM+s23PLyjuLhVU/tG4hsmGLmsrAdP4ZONjt4=;
        b=Tc5GMSfU7eKHz9bLCWYDE1yVP+51Izrf62PQg+eE9Bj3UBerNXrUrjHQKUkbHVVZtZ
         PCKquUYQSF/EBQgZ7z63dbGLftUCZ39j4kLtURy3I4ksDvlYD5/lKdmAeMkmp0YnMg+k
         BtLzPPypftjLllNpXF7g+cz/FfwvLMgpVNpg1+j+G/cYfMKxLfDpdgqb/EvEmjDvUdWk
         gECZTkuiFIS6WzoVW7u5elz8hWR3T9yKn6k44J4k37wB8c/4+mRKc0A+JJ7phKVCqoup
         Whg+iGmJT5wxzTWCGw0Apij/Itgp9ekYTqK17viUE8HRxyLO+wkLkpTCvLYVmsZpXHX8
         tC5Q==
X-Gm-Message-State: AOAM5329RzWoFQnT0DVrXTI/+PRnFbage/v1qrYQ4gkE6RJFpW0mnsSB
	07rmeZlz4TMRZEiNCmp47SGldWnrzOQm9+ota/Sw4A==
X-Google-Smtp-Source: ABdhPJyINiMDuWhO/u3fTomiea6RzWMp7EehxbfNz9IINkckGyLDgNXsiiuAD4Acw6DvKRBhoiLNtQnYkW6YvyRNzU8=
X-Received: by 2002:a9d:53cd:: with SMTP id i13mr11797116oth.302.1628687900086;
 Wed, 11 Aug 2021 06:18:20 -0700 (PDT)
MIME-Version: 1.0
References: <BN7PR05MB4500ABFB5DD85D4FDB6FAD99D5F39@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610DE851.70308@gmail.com> <BN7PR05MB45007CFF2FEC947F65240178D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EA718.1080908@gmail.com> <BN7PR05MB45000D8D6B914F082812F1A9D5F49@BN7PR05MB4500.namprd05.prod.outlook.com>
 <610EBFD9.2060400@gmail.com> <BN7PR05MB450047CE239680F69CB94A0ED5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB45009AF50E6C4419B7D2837DD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <BN7PR05MB4500AA5AAC12664AB2D8E87CD5F69@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAEXYVK7VhtzWybERTn1emuLRW3T6GeFhi8QiABpyj2G_jRO2sA@mail.gmail.com>
 <BN7PR05MB4500466BB13226803348260AD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAEXYVK7-jo67VbrkrCZ6YqDzoVsY-D7JXBYwbFhOrrJOP0eWag@mail.gmail.com>
 <61129418.2030705@gmail.com> <BN7PR05MB450016DE050AD136763D5F5BD5F79@BN7PR05MB4500.namprd05.prod.outlook.com>
 <6112F6ED.7030408@gmail.com>
In-Reply-To: <6112F6ED.7030408@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 11 Aug 2021 09:18:09 -0400
Message-ID: <CAB__hTTH7dXg+QkC0wc7zg3x4LMrWWn9ysqJwPgSwj1PgC+DYQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: Q52G2JKMSJKVOTVTXQCNKDDIDYD7SVIS
X-Message-ID-Hash: Q52G2JKMSJKVOTVTXQCNKDDIDYD7SVIS
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan Tobin <Tobin@augustusaero.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Too Many Samples in a Single Burst
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q52G2JKMSJKVOTVTXQCNKDDIDYD7SVIS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5975102305498291289=="

--===============5975102305498291289==
Content-Type: multipart/alternative; boundary="000000000000bc73dc05c94873fd"

--000000000000bc73dc05c94873fd
Content-Type: text/plain; charset="UTF-8"

It's too bad that Ettus did not implement the STOP_CONTINUOUS as a timed
command.  Had they done so, it would have been possible to send a
START_CONTINUOUS followed immediately by a STOP_CONTINUOUS (with time
stamp) such that the radio would automatically stop on the correct sample.
That being the case, the long captures require the user to stop the radio
after receiving the desired number of samples and then flush / discard the
rest.
Rob

On Tue, Aug 10, 2021 at 6:00 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 08/10/2021 05:07 PM, Jonathan Tobin wrote:
>
> To follow up,
>
> This seems to be the limit now that I have updated to UHD 4.1.0.1:
>
> [ERROR] [0/Radio#0] Requesting too many samples in a single burst!
> Requested 18446744028430598144, maximum is 281474976710655.
>
> This occurs with the key arguments: --rx-rate 4.8e6 --rx-subdev "A:0 A:1
> B:0 B:1" --rx-channels "0,1,2,3" --nsamps 2880000000
>
> The nsamps value is for 10 minutes of recording (sample rate * 60 seconds
> * 10 minutes).
>
> Thanks,
> Jonathan
>
> Right.  Because that *example* program uses the NUM_SAMPS_AND_DONE
> streamer type, which requires that the *RADIO* keep track of the
>  number of samples you're interested in.  That was extended from 32-bits
> to 48 bits.
>
> You'll note that txrx_loopback_to_file will simply run continuously if you
> *dont* specify --nsamps, because it uses two different streaming modes:
>
>  // setup streaming
>     uhd::stream_cmd_t stream_cmd((num_requested_samples == 0)
>                                      ?
> uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS
>                                      :
> uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
> You can then just interrupt it when you're done or add some code to see if
> you have enough samples, even when you're running continuously
>   or see if enough time has elapsed, etc, etc.
>
> Contrast with rx_multi_samples:
>
>   // setup streaming
>     std::cout << std::endl;
>     std::cout << boost::format("Begin streaming %u samples, %f seconds in
> the future...")
>                      % total_num_samps % seconds_in_future
>               << std::endl;
>     uhd::stream_cmd_t
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
>
> Same comment as above.  You can modify this to run continuously, and then
> have the sample-gather loop exit when it is satisfied that it has
>   enough samples--either because enough time has elapsed or a sample
> counter has reached a certain value.
>
>
> The UHD API is diverse.  There's no possible way that the handful of
> *example* programs can possibly satisfy every use case, and that's simply
>   not design intent.   Some programming may be required.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bc73dc05c94873fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s too bad that Ettus did not implement the STOP_CON=
TINUOUS as a timed command.=C2=A0 Had they done so, it would have been poss=
ible to send a START_CONTINUOUS followed immediately by a STOP_CONTINUOUS (=
with time stamp) such that the radio would automatically stop on the correc=
t sample. That being the case, the long captures require the user to stop t=
he radio after receiving the desired number of samples and then flush / dis=
card the rest.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 10, 2021 at 6:00 PM Marcus D. Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 08/10/2021 05:07 PM, Jonathan Tobin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        To follow=C2=A0up,</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        This seems to be the limit now that I have updated to UHD
        <a href=3D"http://4.1.0.1" target=3D"_blank">4.1.0.1</a>:</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        [ERROR] [0/Radio#0] Requesting too many samples in a single
        burst! Requested 18446744028430598144, maximum is
        281474976710655.<br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        This occurs with the key arguments: --rx-rate 4.8e6 --rx-subdev
        &quot;A:0 A:1 B:0 B:1&quot; --rx-channels &quot;0,1,2,3&quot; --nsa=
mps 2880000000</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        The nsamps value is for 10 minutes of recording (sample rate *
        60 seconds * 10 minutes).</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">
        Thanks,
        <div>Jonathan</div>
        <br>
      </div>
    </blockquote>
    Right.=C2=A0 Because that *example* program uses the NUM_SAMPS_AND_DONE
    streamer type, which requires that the *RADIO* keep track of the<br>
    =C2=A0number of samples you&#39;re interested in.=C2=A0 That was extend=
ed from
    32-bits to 48 bits.<br>
    <br>
    You&#39;ll note that txrx_loopback_to_file will simply run continuously
    if you *dont* specify --nsamps, because it uses two different
    streaming modes:<br>
    <br>
    =C2=A0// setup streaming<br>
    =C2=A0=C2=A0=C2=A0 uhd::stream_cmd_t stream_cmd((num_requested_samples =
=3D=3D 0)<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ?
    uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 :
    uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
    <br>
    You can then just interrupt it when you&#39;re done or add some code to
    see if you have enough samples, even when you&#39;re running
    continuously<br>
    =C2=A0 or see if enough time has elapsed, etc, etc.<br>
    <br>
    Contrast with rx_multi_samples:<br>
    <br>
    =C2=A0 // setup streaming<br>
    =C2=A0=C2=A0=C2=A0 std::cout &lt;&lt; std::endl;<br>
    =C2=A0=C2=A0=C2=A0 std::cout &lt;&lt; boost::format(&quot;Begin streami=
ng %u samples, %f
    seconds in the future...&quot;)<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 % total_num_samps % sec=
onds_in_future<br>
    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 &lt;&lt; std::endl;<br>
    =C2=A0=C2=A0=C2=A0 uhd::stream_cmd_t
    stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);<br>
    <br>
    Same comment as above.=C2=A0 You can modify this to run continuously, a=
nd
    then have the sample-gather loop exit when it is satisfied that it
    has<br>
    =C2=A0 enough samples--either because enough time has elapsed or a samp=
le
    counter has reached a certain value.<br>
    <br>
    <br>
    The UHD API is diverse.=C2=A0 There&#39;s no possible way that the hand=
ful of
    *example* programs can possibly satisfy every use case, and that&#39;s
    simply<br>
    =C2=A0 not design intent.=C2=A0=C2=A0 Some programming may be required.=
<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bc73dc05c94873fd--

--===============5975102305498291289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5975102305498291289==--
