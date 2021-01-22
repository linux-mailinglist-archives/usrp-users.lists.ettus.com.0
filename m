Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A202FFB6D
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 04:50:54 +0100 (CET)
Received: from [::1] (port=54306 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2nTG-0004Tl-RX; Thu, 21 Jan 2021 22:50:50 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:38785)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l2nTD-0004OS-KR
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 22:50:47 -0500
Received: by mail-oi1-f170.google.com with SMTP id h6so3287135oie.5
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 19:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=xAkQcj1LTChcUhKiY6JxKSTFVPbf4uf10JKcP1L1KDk=;
 b=LeOWR6xtLMQ5AT5cF4L4MWb+Ofqabhy1exYLUhmUlGclCc0wLsM5j1vUuQ4L0v6YGe
 hAOktuRwSYZoz45Lv1+WlJpBGxb3+OTiTXbYK5mkYk8TS1ttprnVbdEUZi2nDg22eEjO
 92IM99SsYfoYVEifpbZIvxVSPIQ6y7CG+dA3XeVYwWxp2QuGcN6Vi8SATyzHxOjP1mor
 fzh0jdvhDJkJyq7eepMTUZMY/0Zc1EyQa0dnqrRHMXZo68pQegeu5BGMHysB93eijWG4
 ReO5BP8ke3J9lBZdDznbdXiPx0CQp7+cjGPTx/p1FgSDUOBpkFx6vgdVFCWKPUebn5nh
 V+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=xAkQcj1LTChcUhKiY6JxKSTFVPbf4uf10JKcP1L1KDk=;
 b=pCp/RVAlXZoZx8EuiG3a59AeKALvfcDJ1vOO7g0hgiRs/gUWt2VZeq4TJ0ZXtXqsCT
 BgalEiyqUD/OcZOAh4SPLJ4MK7tIa3JvfDRyfYmE4Xvw/HNJGw/7t0OsY5fNx/zGj9z2
 4cvoCzUs4br3aH2UmRhHVbCcNQvEbuM3dhqy7QwS62MGADrfs8Y7mO9dZrczfYvCaTQz
 EUXqB8yPrsE0hVCF4V3xOQqMDJsee6kyxdqPsK4253fjyILDwHPUrNdgkbmuz9eZ9jn+
 CMvo9/BQ1bG2w9r/SVQlBYzalYOMasiBqpAfzH5dWmQg2FhJCxgp1zvrof9T457Cecf3
 PovA==
X-Gm-Message-State: AOAM533WnnYD9wW72sZ5jsGFkhPndaxx7BljFX3yznEjJsP7X4wWOteV
 SAZR0ucT0UQhHzqFlroFmhzan9yzb8LPy1WRx2/8hWCOdJo=
X-Google-Smtp-Source: ABdhPJyzXPgelZLdFBrf2KfUGzh4Gixz72LAWXdzIXxghtEi/yRZQo5ugb1XPAzKC4LAYQrP0aXpHuEy43QOlTNwATQ=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr2029325oic.124.1611287406567; 
 Thu, 21 Jan 2021 19:50:06 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT+gaOgFF2_ME+=bY9S21e_D-+XfCv7dH_qRmAZ-6h6oQ@mail.gmail.com>
 <CAB__hTTKkyz0fx9fGa_ePM9xZXHLcvYnbhsSCH3vYLA5z2G5Og@mail.gmail.com>
 <20210121224824.uajvcmmust7bgzfc@barbe>
In-Reply-To: <20210121224824.uajvcmmust7bgzfc@barbe>
Date: Thu, 21 Jan 2021 22:49:55 -0500
Message-ID: <CAB__hTSRar-TPwEH-bSDPoKoowPkjHVQngJwSHu+DiZvybhGaQ@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] No streaming using OOT RFNoC Block in UHD4
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

> > In the rfnoc_rx_to_file program,
> > streaming is started by the function rx_stream->issue_stream_cmd().  Note
> > that this is a command to the streamer which then must be forwarded to the
> > gain controller and then the ddc controller and then the radio controller
> > which will then turn on the radio.
>
> I have a question regarding that statement.
> Since the gain block and the radio+ddc are on different EP,
> wouldn't the rx_streamer able to transfer that command to the radio
> without forwarding it to the gain block?
> I do not know the type of issue_stream_cmd.
> From the RFNoC Specification, it is stated that it is an "Action",
> "calling into API provided by the graph".
> It is also stated that it "propagates". But it does not specify
> in which case it does or not and how it does it.

I don't think it matters about the different EP.  Once the "graph" is
constructed, the
propagation goes from node to node. But, I don't really understand it
well, so I can't
comment on it.

> > So, one question I have is: does the command make it to the radio?  I think
> > that you can tell by looking at the LED - does it turn on?
> >
> >    - If so, then I am on the wrong path.
> >    - If not, then
> >       - Maybe there is some setting in the gain block controller that is
> >       not forwarding the command.
> >       - Or, more likely, maybe the gain block controller is not being used
> >       at all because of the block finding issue "block#0" vs "gain#0".  In this
> >       case, perhaps building the gain block controller in-tree would help
>
> You are right!
> The LED does not turn on when putting the gain block
> (Radio -> DDC -> Gain -> rx_streamer).
> So it seems that the stream_cmd is not forwarded... But why?
>
> You said that I could try to build the controller in-tree.
> I would like to avoid that.
> Could I issue_stream_cmd on the radio_ctrl instead of rx_streamer?
> How would it work with multiple radios (like in the X310)?

I think you could issue the stream command on either the DDCs or the Radios
and it should work.  I would suggest the DDCs which will then forward the
commands to the radio.  It should work fine with multiple radios.  If you need
them to start synchronously, then it will still work so long as you
have a common
start time for all radios which will each hold off the start of streaming until
the specified time.

Also, regarding building in-tree, are you opposed to building in-tree as even
a temporary test case?  It's not too difficult to do.  I am not
talking about the
FPGA code - just the block controller HPP / CPP.


> On a side note:
> Are we forced to implement a custom controller for each RFNoC block?
> I was expecting that I could just write the verilog part
> and use the basic noc_block_base controller to manage my blocks in C++,
> using regs()->peek32/poke32 to set my registers etc.
> But from above, it seems that it does not forward the issue_stream_cmd
> by default? Is that correct?

As far as I understand, we presently need a custom controller for each RFNoC
block.  But, I'm not positive. This has been one area where the
rollout for RFNoC
4.0 has not been smooth.  You should be able to do just as you intended, but
I'm not sure that UHD 4.0 is ready for that such that in the meantime, you might
be better off building custom controllers.

That said, I don't think that the command forwarding is disabled by default.
Honestly, I don't know what is the issue and I am just guessing. But,
I didn't need
to do anything special with my blocks and I am not seeing the issue.
On the other
hand, I did build a custom block controller for each and so maybe that
is related
to the problem....


>
> > Also, it might help if you turn on "debug" logging (export
> > UHD_LOG_LEVEL=debug; export UHD_LOG_CONSOLE_LEVEL=debug) and run the
> > rfnoc_rx_to_file example.  First try with a working block such as FFT and
> > then with the gain block and see if there are any clues.
> > Rob
>
> I attached 3 logs:
>  - normal.log is (Radio -> DDC -> rx_streamer)
>  - fft.log is (Radio -> DDC -> fft -> rx_streamer)
>  - gain.log is (Radio -> DDC -> gain -> rx_streamer)
>
> I just had to specify "--spp 256" to match the default FFT size
> (otherwise I get overrun).

I looked at the log files but nothing there.  It is possible that we
would need "trace" level
logging to see anything useful.  But, that may require a re-build of
UHD with the
appropriate command to enable trace debugging.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
