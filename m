Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D4029D1B1
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 20:26:14 +0100 (CET)
Received: from [::1] (port=37008 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXr5H-0007jY-FD; Wed, 28 Oct 2020 15:26:11 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:39906)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kXr5D-0007eR-6y
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 15:26:07 -0400
Received: by mail-qk1-f177.google.com with SMTP id k9so117822qki.6
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 12:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=1b7QV/JxCPvaMujxzmRFvaLWatTvRKsZxapgqaH1Qds=;
 b=VQKh8iEuikyfPRmHxxsUltX5pz5138lCL4mmXw33YaKyt+/JpZ7cvy9iYNS24BFv3V
 m49cN4S2ZVcURJkxxkLXNhuGP3fvJzJogFl2wLCjUf4haH5Tm95dlkIA9ll0cpcelxQs
 3SlOrqcWD/i/1bn3P79wXd8WERqCLsHpAmhEcJnHZNYqr5SVGZQ5L73d6NTcqIz0fZ+M
 yayJ49KBLxla1zANGgxYRF+w4eCGQ9epspjQto+V1/Hdye+HphUqN3CZWsebv/McY6qX
 krm6OHgHEXD5XEI3/0WapfTodMmVcmcMlzPofAMGuEHrjdColEL/bvhCTjf2XxGvB/T8
 AzWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=1b7QV/JxCPvaMujxzmRFvaLWatTvRKsZxapgqaH1Qds=;
 b=PZNJXFw3RMhQTRbmzLS4muWonRb2Hi6bE1aug+AVMZhsjX0POAuN279hBhOx9OIEBv
 EjDVC6zBXFPghjV2lgxT+z+C06N6Oacpd8lPFzConv+1GHA1gcjNSmVCcjBtr50qly5h
 tsm4xyTr029Sev07JEuadU3f9OgM25nKVGtJ/8tgHFiNPshIAaX/ZBEwIUYCx8YwjT8P
 8gTFO/qrCztCE3VCAnsgziEDi4IIC6BFTXuPNmpoEdoBaHxssaWwTH5llJtSCKwPPJCA
 21uE4SuQFCMtMspOIQQXTHXUQF6AszP0DN0Qzm82u/yhTbkFc77JSudSFIc6bYHG21eS
 FfBw==
X-Gm-Message-State: AOAM531ppySzWSaeifVrkW1TGj4XbVnohHj1s0F/x9dZhJIBIo7mc/aA
 2nSZSOM35ZWdsITqoK0n3FF9+xNeSq4J9A==
X-Google-Smtp-Source: ABdhPJzcOrqz1ZRYNn50ebBi0/XGGS9+f+LbEhe7etlykD9+bq0EInYd0vsBUugjDvJBIk1c75ClRA==
X-Received: by 2002:a37:7c3:: with SMTP id 186mr345069qkh.417.1603913126471;
 Wed, 28 Oct 2020 12:25:26 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id q188sm216272qka.56.2020.10.28.12.25.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Oct 2020 12:25:25 -0700 (PDT)
Message-ID: <5F99C5A5.2030307@gmail.com>
Date: Wed, 28 Oct 2020 15:25:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACO3nRTjNOzQ9_e3m0CYWjJi30U8J94adjBaHDNOaSmrZZherQ@mail.gmail.com>
In-Reply-To: <CACO3nRTjNOzQ9_e3m0CYWjJi30U8J94adjBaHDNOaSmrZZherQ@mail.gmail.com>
Subject: Re: [USRP-users] USRP B200mini half-duplex 1 port
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============0684661061653530416=="
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
--===============0684661061653530416==
Content-Type: multipart/alternative;
 boundary="------------000000070807030208040900"

This is a multi-part message in MIME format.
--------------000000070807030208040900
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/28/2020 12:42 PM, Tom McDermott via USRP-users wrote:
> -----------------------------  Included message ---------------
> Message: 5
> Date: Tue, 27 Oct 2020 20:28:12 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com 
> <mailto:patchvonbraun@gmail.com>>
> To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] USRP B200mini half-duplex 1 port
> Message-ID: <5F98BB1C.7070300@gmail.com 
> <mailto:5F98BB1C.7070300@gmail.com>>
> Content-Type: text/plain; charset=windows-1252; format=flowed
>
> On 10/27/2020 08:24 PM, Alvaro Pendas Recondo via USRP-users wrote:
> > Hello,
> >
> > I am trying to implement a half-duplex system with one antenna,
> > preferably using just one port in the USRP device. I have noticed that
> > the port that is labelled as TX in the B200mini can also receive (the
> > same as the TX/RX port in the "normal" B200). My question is, is it
> > possible to change modes in that port during execution time? I have
> > read that, as a rule of thumb, the port should receive as default and
> > transmit when it receives samples to do so. However, I do not know if
> > that functionality applies to the B200mini.
> >
> > If it is possible, do you have any general ideal about the best way to
> > do it in GNURadio?
> >
> > Best regards,
> >
> > Alvaro
> >
> >
> As far as I know the TX port on the B200mini is actually a TX/RX port,
> and the transmit/receive switching logic is implemented in the hardware.
>
> You might post to the discuss-gnuradio mailing list on topics related to
> Gnu Radio.   I've never implemented a TX/RX application in GR myself,
>    but I'm fairly sure the hardware supports it.
>
> ---------------------------------------------------------------
>
> Assuming you are using the B205mini - the TX/RX port switching appears 
> to work on
> detecting samples in the transmit buffer (FIFO). When the Tx FIFO is 
> empty it switches to receive.
> There are a number of problems with this, in that once in receive it 
> is very difficult to fill
> the transmit FIFO enough to get it to transmit continuously again.
>
> What happens is that if the transmit source is throttled in any 
> manner, a few samples get TX queued
> then the mini switches to TX and empties the FIFO enough to switch 
> back to receive. So it
> goes into a high-speed Tx/Rx/Tx/Rx/Tx/Rx .....     mode. Using for 
> example an audio source
> causes sample rate limiting to the rate of that source.
>
> If instead a source is provided that can burst a whole bunch of 
> samples to the TX Fifo, then
> it gets into TX mode and stays. For example, a constant source with no 
> throttling.  Unfortunately this
> isn't so useful for actual information.
>
> All the above tested at a sample rates of 96 ksps and some lower.    
> Higher sample rates have not been tried,
> probably the behavior would be different.   Finding any documentation 
> about what is
> going on, how it works, FIFO sizes, %FULL %EMPTY trigger levels, etc.  
> has been fruitless so far.
>
> -- Tom, N5EG
>
>
My guess is that 96ksps is way too low a sample rate to keep the TX FIFO 
happy.  If you're using an audio source, you probably need to
   re-sample up to a higher rate, and whenever you have two bits of 
hardware with their own sample clocks, you have the "two clock"
   problem.  What is needed is an elastic buffer with notions (feedback) 
about how close the audio system is to over-running or under-running,
   and the DSP flow tweaks the sample rate ever-so-slightly as appropriate.

This is why professional audio systems use samplers that are all 
mutually clock-locked to one another--otherwise, the "two clock"
   problem is inevitable.



--------------000000070807030208040900
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/28/2020 12:42 PM, Tom McDermott
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CACO3nRTjNOzQ9_e3m0CYWjJi30U8J94adjBaHDNOaSmrZZherQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>-----------------------------  Included message 
          ---------------<br>
        </div>
        <div>Message: 5</div>
        Date: Tue, 27 Oct 2020 20:28:12 -0400<br>
        From: "Marcus D. Leech" &lt;<a moz-do-not-send="true"
          href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;<br>
        To: <a moz-do-not-send="true"
          href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a><br>
        Subject: Re: [USRP-users] USRP B200mini half-duplex 1 port<br>
        Message-ID: &lt;<a moz-do-not-send="true"
          href="mailto:5F98BB1C.7070300@gmail.com" target="_blank">5F98BB1C.7070300@gmail.com</a>&gt;<br>
        Content-Type: text/plain; charset=windows-1252; format=flowed<br>
        <br>
        On 10/27/2020 08:24 PM, Alvaro Pendas Recondo via USRP-users
        wrote:<br>
        &gt; Hello,<br>
        &gt;<br>
        &gt; I am trying to implement a half-duplex system with one
        antenna, <br>
        &gt; preferably using just one port in the USRP device. I have
        noticed that <br>
        &gt; the port that is labelled as TX in the B200mini can also
        receive (the <br>
        &gt; same as the TX/RX port in the "normal" B200). My question
        is, is it <br>
        &gt; possible to change modes in that port during execution
        time? I have <br>
        &gt; read that, as a rule of thumb, the port should receive as
        default and <br>
        &gt; transmit when it receives samples to do so. However, I do
        not know if <br>
        &gt; that functionality applies to the B200mini.<br>
        &gt;<br>
        &gt; If it is possible, do you have any general ideal about the
        best way to <br>
        &gt; do it in GNURadio?<br>
        &gt;<br>
        &gt; Best regards,<br>
        &gt;<br>
        &gt; Alvaro<br>
        &gt;<br>
        &gt;<br>
        As far as I know the TX port on the B200mini is actually a TX/RX
        port, <br>
        and the transmit/receive switching logic is implemented in the
        hardware.<br>
        <br>
        You might post to the discuss-gnuradio mailing list on topics
        related to <br>
        Gnu Radio.   I've never implemented a TX/RX application in GR
        myself,<br>
        <div>
             but I'm fairly sure the hardware supports it.</div>
        <div><br>
        </div>
        <div>---------------------------------------------------------------</div>
        <div><br>
        </div>
        <div>Assuming you are using the B205mini - the TX/RX port
          switching appears to work on <br>
        </div>
        <div>detecting samples in the transmit buffer (FIFO). When the
          Tx FIFO is empty it switches to receive.</div>
        <div>There are a number of problems with this, in that once in
          receive it is very difficult to fill</div>
        <div>the transmit FIFO enough to get it to transmit continuously
          again.</div>
        <div><br>
        </div>
        <div>What happens is that if the transmit source is throttled in
          any manner, a few samples get TX queued</div>
        <div>then the mini switches to TX and empties the FIFO enough to
          switch back to receive. So it</div>
        <div>goes into a high-speed Tx/Rx/Tx/Rx/Tx/Rx .....     mode.   
          Using for example an audio source</div>
        <div>causes sample rate limiting to the rate of that source.<br>
        </div>
        <div><br>
        </div>
        <div>If instead a source is provided that can burst a whole
          bunch of samples to the TX Fifo, then</div>
        <div>it gets into TX mode and stays. For example, a constant
          source with no throttling.  Unfortunately this</div>
        <div>isn't so useful for actual information.</div>
        <div><br>
        </div>
        <div>All the above tested at a sample rates of 96 ksps and some
          lower.    Higher sample rates have not been tried, <br>
        </div>
        <div>probably the behavior would be different.   Finding any
          documentation about what is</div>
        <div>going on, how it works, FIFO sizes, %FULL %EMPTY trigger
          levels, etc.  has been fruitless so far.</div>
        <div><br>
        </div>
        <div>-- Tom, N5EG</div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    My guess is that 96ksps is way too low a sample rate to keep the TX
    FIFO happy.  If you're using an audio source, you probably need to<br>
      re-sample up to a higher rate, and whenever you have two bits of
    hardware with their own sample clocks, you have the "two clock"<br>
      problem.  What is needed is an elastic buffer with notions
    (feedback) about how close the audio system is to over-running or
    under-running,<br>
      and the DSP flow tweaks the sample rate ever-so-slightly as
    appropriate.<br>
    <br>
    This is why professional audio systems use samplers that are all
    mutually clock-locked to one another--otherwise, the "two clock"<br>
      problem is inevitable.<br>
    <br>
    <br>
  </body>
</html>

--------------000000070807030208040900--


--===============0684661061653530416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0684661061653530416==--

