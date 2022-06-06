Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B88953F171
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 23:13:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB054383D14
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 17:13:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654550008; bh=smZbXNLONRL6OGcSzLNDfQxEXmz482MoKHe+u2I/IFU=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=s0o7m4jQd56c4CO4Ngw5/9GxaJmChwkIPmLYLbcFBf/yW2qSntvQ/h2R40fpmWV8f
	 QEIdu9EMn/vpPrF0Ik23CcP5W7/GNNHvU09O1dGF/OUFJOlK12mEGn7WMlzvTnhH4s
	 eSqZSZzonO6kmEzLjawzrkl4iNn2RNonhR82LI2hkPgKw8tSqbQFpHk34/rCoUMEUB
	 nudEA5ROKaJY5NAQmFbjGiXWim7qVl71cz8MlG5iYwUxqPEQrzKHdOm4CzIc8Vaqae
	 z+kheWODk95jDUGUY7noKEeknI/+fgotF1Uccawg1cMDsqLiGVdfpkHFjY4T59dl40
	 VAXXUnbPIcV6g==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 45EE2383C85
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 17:12:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654549939; bh=ODzRl9EXVWrlpZ6nErzCAB1gj6qUgg1tiqWOorqMn18=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=JKWpaq3Kh1t46eS9/wB7b862QsXHi0EWkyECMuNbLQn/aDXZZXRQeepgovwJswMqd
	 9UwV09nUWVxknzWUG5bvvgOwEacdhChplWnI0r1webtrgaZVRhPU707oQ2rKgP/hDs
	 nSf+iFRp4WDzw910h+n0BFge0QdDE2IpHfYhXWV3DatfIywSbyw7PNr6mvlBG//liP
	 oT+/W/gAEKRSruDf2KndNU/Wtqg5jv7hAbzQGMJ51W4sJc3oVeHjH16biJzJHmgT79
	 4tjUEcxUvDqV/GerLyWf9v7dGGq5sOMUq7xrnZeMSLLZXw2cJg+Hle4wE568T7dEkQ
	 1/GAhd0ZK9ZAg==
Date: Mon, 6 Jun 2022 21:12:19 +0000
To: usrp-users@lists.ettus.com
From: ri28856@mit.edu
Message-ID: <5MCe4i4StNT3b3yXsHc9dfQzS9q57ay3TyOzbqa8@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: tz5hARja2b8ghH2o2HjDg0JhxSqG06fUeIQL8uNt2A@lists.ettus.com
MIME-Version: 1.0
Message-ID-Hash: EGQYTCV2V46ZBYKCGDA35MV4H4KNETMP
X-Message-ID-Hash: EGQYTCV2V46ZBYKCGDA35MV4H4KNETMP
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DDC and DUC timed command queue depth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EGQYTCV2V46ZBYKCGDA35MV4H4KNETMP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8256955729841563320=="

This is a multi-part message in MIME format.

--===============8256955729841563320==
Content-Type: multipart/alternative;
 boundary="b1_5MCe4i4StNT3b3yXsHc9dfQzS9q57ay3TyOzbqa8"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_5MCe4i4StNT3b3yXsHc9dfQzS9q57ay3TyOzbqa8
Content-Type: text/plain; charset=us-ascii

I modified the three files described above, changing the CMD_FIFO_SIZE parameter in dds_timed.v and axi_tag_time.v, and FIFO_SIZE in ddc.v. In all cases I attempted to adjust to 20, but that used too much BRAM and I instead tried 10, which successfully built.

I loaded the bitfile onto an x310, and ran the following code snippet to test:

```
    uhd::time_spec_t initial_lat(1.0);
    uhd::time_spec_t cmd_time(0.0);
    // Amount of time to increment on each iteration
    uhd::time_spec_t schedule_increment(0, FREQ_SCHEDULE_WINDOW_TICK, CLOCK_RATE);
    uhd::tx_metadata_t md;
    md.has_time_spec = true;
    md.start_of_burst = true;
    md.end_of_burst = true;

    global_usrp_time = usrp->get_time_now();
    // Assume the first packet arrives some time before it is actually sent
    cmd_time = global_usrp_time + initial_lat;

    for (int i = 0; i < queue_size; i++)
    {
        // Transmit
        md.time_spec = cmd_time;
        tx_streamer->send(ppayload, nsamples, md);
        cmd_time += schedule_increment;
        
        // Hop at a scheduled time
        usrp->set_command_time(cmd_time);
        usrp->set_tx_freq(tune_request.getNextTuneRequest());
    }
```

The idea is that I schedule approximately one second in the future a number of transmits and hops spaced \~200 us apart. If the USRP has enough timed command slots in both the digital resampling chain and the transmit chain, this will work fine. 

Running this code with queue_size = 5 against the base x310 image works, but produces a bunch of late Ls to stdout when queue_size = 6. My image which I built with the above parameter modifications has the same behavior as the base image, failing at queue_size = 6.

Is there another FIFO somewhere I need to grow?

--b1_5MCe4i4StNT3b3yXsHc9dfQzS9q57ay3TyOzbqa8
Content-Type: text/html; charset=us-ascii

<p>I modified the three files described above, changing the CMD_FIFO_SIZE parameter in dds_timed.v and axi_tag_time.v, and FIFO_SIZE in ddc.v. In all cases I attempted to adjust to 20, but that used too much BRAM and I instead tried 10, which successfully built.</p><p><br></p><p>I loaded the bitfile onto an x310, and ran the following code snippet to test:</p><pre><code>    uhd::time_spec_t initial_lat(1.0);
    uhd::time_spec_t cmd_time(0.0);
    // Amount of time to increment on each iteration
    uhd::time_spec_t schedule_increment(0, FREQ_SCHEDULE_WINDOW_TICK, CLOCK_RATE);
    uhd::tx_metadata_t md;
    md.has_time_spec = true;
    md.start_of_burst = true;
    md.end_of_burst = true;

    global_usrp_time = usrp-&gt;get_time_now();
    // Assume the first packet arrives some time before it is actually sent
    cmd_time = global_usrp_time + initial_lat;

    for (int i = 0; i &lt; queue_size; i++)
    {
        // Transmit
        md.time_spec = cmd_time;
        tx_streamer-&gt;send(ppayload, nsamples, md);
        cmd_time += schedule_increment;
        
        // Hop at a scheduled time
        usrp-&gt;set_command_time(cmd_time);
        usrp-&gt;set_tx_freq(tune_request.getNextTuneRequest());
    }</code></pre><p>The idea is that I schedule approximately one second in the future a number of transmits and hops spaced ~200 us apart. If the USRP has enough timed command slots in both the digital resampling chain and the transmit chain, this will work fine. </p><p>Running this code with queue_size = 5 against the base x310 image works, but produces a bunch of late Ls to stdout when queue_size = 6. My image which I built with the above parameter modifications has the same behavior as the base image, failing at queue_size = 6.</p><p>Is there another FIFO somewhere I need to grow?</p>


--b1_5MCe4i4StNT3b3yXsHc9dfQzS9q57ay3TyOzbqa8--

--===============8256955729841563320==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8256955729841563320==--
