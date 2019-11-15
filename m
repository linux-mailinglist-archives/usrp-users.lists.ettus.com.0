Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6345FE367
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2019 17:53:54 +0100 (CET)
Received: from [::1] (port=53204 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iVeqw-00028A-0C; Fri, 15 Nov 2019 11:53:46 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:38081)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iVeqs-000241-8g
 for usrp-users@lists.ettus.com; Fri, 15 Nov 2019 11:53:42 -0500
Received: by mail-qk1-f175.google.com with SMTP id e2so8633227qkn.5
 for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2019 08:53:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=EJ+pN79RR7ftvMekFUmNZ1PC8aBSl2qwZN/tD0eYSok=;
 b=TLRSBL1VdVDdzcBR3R/ADta3DJ5jIJjbhz6NixZbv8nJozdSkKyauq1E0Z2bTpG3Ct
 S3ivdJQtRbsMzr1XRFuE2FAq4PMqZGKwS62FKkh4MLUMIdg2ffddikKOtSoOTak1NOV4
 PWHm6fj01dlWHCC7WZvS6/AsXN7f80kym4KmMPx0Sj5H1AbTcj+bnuwazmBTmlD7UlMo
 U7Ao1yl6l6t+D1dqMRJNPRf2dfxNFwf8+X9NpqPHrL+XjtGvtT41W3Gck20KT8Kf1LPk
 JDwaZwYEhFPxqC/akAvyuAsFxcAjDznUMmThthKmwUGeYb12g9c3lczri331N+BJOXKo
 ZEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=EJ+pN79RR7ftvMekFUmNZ1PC8aBSl2qwZN/tD0eYSok=;
 b=WV2ECS60Ov7mil1wQnkDEJ8L3XEUEqqpip99z274dNOYMe3fhgcJIaDTcf6YuRI6L8
 FneMb+3dU8RbfnVoZvR1ydmVZOz/EJ60WUGFA8mCoy5RkCt60UqnDxSbqIR6ftga42q3
 J7AiQHCk1+Brw3pGFhA9g/BVOydmEqJvlbhwxcbmc7YuYqlX4db6TGO4XCFhFjP2qjN1
 XWXYFoEWwBErrxYzKXqzl+SPhTGZm9K7csr0LzaPy+GgxKGCvnQylsguVY1Z+Noa3Yij
 lF+BkUNWXbq9IxJBoGjx1j81YmjHz3F5awk/rtmZDGdfcfukvUYDQhILno4uHw/fFsq3
 dWJA==
X-Gm-Message-State: APjAAAXjKxj+/aEVrcSNNUjZY2aTDKxWaSomBV7eNVvfaih8zA5a/8f4
 8UXeOMA6CnF3pU6EgFW3nH9qyiYs+jA=
X-Google-Smtp-Source: APXvYqxxTtxSTdeCcxNlTr9HNB/Sn+GXaNzEzk4eXYXpqT3hHoBKaKLZKv585UJJAzJWDU8eaIiJHA==
X-Received: by 2002:a37:7f02:: with SMTP id a2mr13251387qkd.111.1573836781495; 
 Fri, 15 Nov 2019 08:53:01 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id h14sm981735qkg.53.2019.11.15.08.53.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 Nov 2019 08:53:00 -0800 (PST)
Message-ID: <5DCED7EC.4080008@gmail.com>
Date: Fri, 15 Nov 2019 11:53:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAB1PH1670j0ryMEPsRRAPUrhO63sqQ=uJ5jEA+zBaGkZKgfQ5w@mail.gmail.com>
In-Reply-To: <CAB1PH1670j0ryMEPsRRAPUrhO63sqQ=uJ5jEA+zBaGkZKgfQ5w@mail.gmail.com>
Subject: Re: [USRP-users] Configuring RX connection type on N210/TVRX2
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============3184549617999839992=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============3184549617999839992==
Content-Type: multipart/alternative;
 boundary="------------030906060000000209030505"

This is a multi-part message in MIME format.
--------------030906060000000209030505
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/2019 05:02 AM, Julian Ilinca via USRP-users wrote:
> Hello all,
>
> I have two questions concerning the RX channel configuration on an 
> TVRX2 daughter-board. I cannot seem to find any relevant information 
> in the example files or on the Internet. But first things first, the 
> TVRX2 is connected to a N210 motherboard and I am using the UHD C++ 
> API for configuring the device. Furthermore, I am trying to measure 
> the real (I) component of a VHF signal on both of the channels (RX1 
> and RX2) simultaneously.
>
> 1. The first question is related to IQ sampling:
> The daughter-board is set so that one channel retrieves the I 
> component and the other channel the Q. I retrieved this information 
> with the uhd_usrp_probe command. In the output under RX0 its says 
> connection type = Q and on RX1 connection type = I. What command do I 
> have to use to change connection type of RX0 from Q to I, so that I 
> could have two channels measuring the real component.
That isn't possible.  Signals are presented to the host as complex 
samples.  The TVRX2 *analog hardware* uses a so-called "low-IF" 
architecture,
   and the N210 has a single 2-channel complex ADC.  Each of those two 
channels is *hard wired* to go to one of the ADC channels, and the
   DDC algorithms in the FPGA convert that to a complex base-band signal 
that is then filtered, downsampled, and sent to the host computer.

>
> 2. I'm a confused about the channel mapping convention used when using 
> the TVRX2. In order torecord from two channels I have set the 
> subdev_spec to "A:RX1 A:RX2", and it works fine. However, when I use 
> the "get_rx_num_channels()" function its return value is 1 instead of 2.
> In the manual entry for the function it says:
>
> "This is the number of USRPs times the number of RX channels per 
> board, where the number of RX channels per board is homogeneous among 
> all USRPs."
>
> To get streaming arguments correctly I have to use a vector where I 
> map the channel number s1 and 2 manually:
>
> >>std::vector<size_t> channel_nums;
> >>...
> >> channel_nums.push_back(0);
> >> channel_nums.push_back(1);
> >>...
> >>stream_args.channels = channel_nums;
> >>uhd::rx_streamer::sptr rx_stream = usrp->get_rx_stream(stream_args);
>
> Now, how does the device recognize 2 channels after the 
> get_rx_stream()  function has been called, as it earlier on told me 
> there is only one channel, and how can I specifically configure the 
> properties of channel 1?
Well, you just created two channels within the stream. So, I'm guess 
that's where the number comes from, but I'll agree it's confusing if
   you're expecting it to be the actual hardware channels.


>
> Thanks already in advance for your support!
>
> Br. Julian
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030906060000000209030505
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/15/2019 05:02 AM, Julian Ilinca
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB1PH1670j0ryMEPsRRAPUrhO63sqQ=uJ5jEA+zBaGkZKgfQ5w@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hello all,<br>
        <br>
        I have two questions concerning the RX channel configuration on
        an TVRX2 daughter-board. I cannot seem to find any relevant
        information in the example files or on the Internet. But first
        things first, the TVRX2 is connected to a N210 motherboard and I
        am using the UHD C++ API for configuring the device.
        Furthermore, I am trying to measure the real (I) component of a
        VHF signal on both of the channels (RX1 and RX2) simultaneously.<br>
        <br>
        1. The first question is related to IQ sampling:<br>
        The daughter-board is set so that one channel retrieves the I
        component and the other channel the Q. I retrieved this
        information with the uhd_usrp_probe command. In the output under
        RX0 its says connection type = Q and on RX1 connection type = I.
        What command do I have to use to change connection type of RX0
        from Q to I, so that I could have two channels measuring the
        real component.<br>
      </div>
    </blockquote>
    That isn't possible.  Signals are presented to the host as complex
    samples.  The TVRX2 *analog hardware* uses a so-called "low-IF"
    architecture,<br>
      and the N210 has a single 2-channel complex ADC.  Each of those
    two channels is *hard wired* to go to one of the ADC channels, and
    the<br>
      DDC algorithms in the FPGA convert that to a complex base-band
    signal that is then filtered, downsampled, and sent to the host
    computer.<br>
    <br>
    <blockquote
cite="mid:CAB1PH1670j0ryMEPsRRAPUrhO63sqQ=uJ5jEA+zBaGkZKgfQ5w@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        2. I'm a confused about the channel mapping convention used when
        using the TVRX2. In order torecord from two channels I have set
        the subdev_spec to "A:RX1 A:RX2", and it works fine. However,
        when I use the "get_rx_num_channels()" function its return value
        is 1 instead of 2.<br>
        In the manual entry for the function it says:<br>
        <br>
        "This is the number of USRPs times the number of RX channels per
        board, where the number of RX channels per board is homogeneous
        among all USRPs."<br>
        <br>
        To get streaming arguments correctly I have to use a vector
        where I map the channel number s1 and 2 manually:<br>
        <br>
        &gt;&gt;std::vector&lt;size_t&gt; channel_nums;<br>
        &gt;&gt;...<br>
        &gt;&gt; channel_nums.push_back(0);<br>
        &gt;&gt; channel_nums.push_back(1);<br>
        &gt;&gt;...<br>
        &gt;&gt;stream_args.channels = channel_nums;<br>
        &gt;&gt;uhd::rx_streamer::sptr rx_stream =
        usrp-&gt;get_rx_stream(stream_args);<br>
        <br>
        Now, how does the device recognize 2 channels after the
        get_rx_stream()  function has been called, as it earlier on told
        me there is only one channel, and how can I specifically
        configure the properties of channel 1?<br>
      </div>
    </blockquote>
    Well, you just created two channels within the stream. So, I'm guess
    that's where the number comes from, but I'll agree it's confusing if<br>
      you're expecting it to be the actual hardware channels.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAB1PH1670j0ryMEPsRRAPUrhO63sqQ=uJ5jEA+zBaGkZKgfQ5w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Thanks already in advance for your support!</div>
        <div><br>
        </div>
        <div>Br. Julian<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------030906060000000209030505--


--===============3184549617999839992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3184549617999839992==--

