Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3769D14750A
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jan 2020 00:51:36 +0100 (CET)
Received: from [::1] (port=35768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iumG5-0004Ux-Jt; Thu, 23 Jan 2020 18:51:33 -0500
Received: from mail-qk1-f170.google.com ([209.85.222.170]:39139)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iumG2-0004PF-7R
 for usrp-users@lists.ettus.com; Thu, 23 Jan 2020 18:51:30 -0500
Received: by mail-qk1-f170.google.com with SMTP id c16so351103qko.6
 for <usrp-users@lists.ettus.com>; Thu, 23 Jan 2020 15:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=k/SmjegB4+DYwUhUc1wq0hKQWfW+aRvg52cIKrD8chk=;
 b=IR41eXoPtHsgN3a7jb/rBYVVePWbZZvkgG1e9UgxaPsipwIIyySb/BrEQqwlL49O0f
 Swni/g3qkq2xbhTfg5tmZAeXmx+b5/lt11IND4h6FRmCzqfbls70w/rinUPmE6hL+y11
 sNyjvJeSNVR2XDz5mVb+E6y5H7BdNq2JRk2YhLzY2s6lcXbmuBU4JtTdNzqT9c3hAc6g
 nZpcup4fDc4I4Bd5SVkAzXD0rcWj/FtE1SvFIUjQ/Qvva257Gt5AWUyy/CNi2aDnFadx
 fCqzCdX33M5s/v8uX60CRQzF9UxGmHz78BeC4UlLUvZk/PNGQiWLbIdVtUFY46VNiSXZ
 /GoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=k/SmjegB4+DYwUhUc1wq0hKQWfW+aRvg52cIKrD8chk=;
 b=oH75pVI5O63Iz7UqrTOd7FpUqw+NFupSVogzgAXcjRKnIoJVTe4M6L14mbZAz8Koxz
 SBCnE9dCNFzpcaU4d2zmnNBNLY0h8WI4fJPcoLHPd6QXyU5oTtKlshv8WryA+c3SsAcj
 1MbsL1Frf5UX0JMm1YKPA84q1m2MnS0d4Krmkf/6UScnPcibaXVRgQFc495cHR7z+yLg
 fb3NSuUjxI+W/xLfksF8nniREU8LSxvebHi6sxwn97p+h5RnvUSmguEZ8XJ+3X69RWlM
 e1NWTaftbmXA1sdKV3Pdwn3rXadcp53/YwwWkEj5OfBZlCumiMs4kg+B8ZL0GOVbklf8
 BS+w==
X-Gm-Message-State: APjAAAUSPrMT1vok6LOAKL08sVYIrOWlBl45k4E7P63k21rn9/jdXP2S
 UNWeFZ+9Q5LJsT+DQmnAWrlq2zDSuas=
X-Google-Smtp-Source: APXvYqzZf68WhI/Kj+ua7CvZtP5r/Yceh6ayB3n2CFj91XZdDjCSzMXwNcjIwjEFqKB87bDDONIpZw==
X-Received: by 2002:a05:620a:62c:: with SMTP id 12mr42732qkv.154.1579823449559; 
 Thu, 23 Jan 2020 15:50:49 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id b24sm1864130qto.71.2020.01.23.15.50.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jan 2020 15:50:49 -0800 (PST)
Message-ID: <5E2A3158.7030008@gmail.com>
Date: Thu, 23 Jan 2020 18:50:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-3bada021-7869-4b7e-8a22-e1b797ca06c4-1579800743012@3c-app-gmx-bap69>
In-Reply-To: <trinity-3bada021-7869-4b7e-8a22-e1b797ca06c4-1579800743012@3c-app-gmx-bap69>
Subject: Re: [USRP-users] Exact alignment between gnuradio sample stream and
 USRP time
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 01/23/2020 12:32 PM, Lukas Haase via USRP-users wrote:
> Hi,
>
> TO MY UNDERSTANDING, the USRP has an internal clock that is different from host clock when running gnuradio (which makes sense because there are buffers etc in between).
> Example: I transmit a CW at f=1001, receive it at f=1000 and then use gnuradio to downconvert the remaining 1 MHz I run into trouble (tried it...).
>
> For this reason, there exist timed commands and the tune_request object with which I can execute commands (LO tuning) at a precice time. For example, with these commands I can phase align tuning between TX/RX at different center frequencies:
>
>    tune_req_tx = uhd.tune_request(fcenter-1e6, 1e6)
>    tune_req_rx = uhd.tune_request(2*fcenter)
>    tune_req_rx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
>    tune_req_tx.args=uhd.device_addr(','.join(["mode_n=integer", "int_n_step=1000e3",]))
>
>    now = self.uhd_usrp_sink_0.get_time_now()
>    self.uhd_usrp_sink_0.set_command_time(now + uhd.time_spec(0.1))
>    self.uhd_usrp_source_0.set_command_time(now + uhd.time_spec(0.1))
>
>    self.uhd_usrp_sink_0.set_center_freq(  tune_req_tx, 0)
>    self.uhd_usrp_source_0.set_center_freq(tune_req_rx, 0)
>
>    self.uhd_usrp_source_0.clear_command_time()
>    self.uhd_usrp_sink_0.clear_command_time()
>
> The commands execute execatly at get_time_now() plus 100ms. As far as I understand, these 100ms are to ensure that the host computer has enough time until the USRP processes the clear_command_time function. But it does not relate the exact point in time with anything that exists in gnuradio.
>
> MY QUESTION: What I am unsure is how to align samples in gnuradio with the time on the USRP. For example, suppose I have an ideal clock signal in gnuradio and I want to perform a timed command EXACTLY at a particular sampling point (e.g. rising edge). How would I go about this?
>
> The actions I want to execute exactly time aligned with gnuradio include: tuning requests, reading out sensors (PLL sensor when it settled), switching IO pins through the GPIO interface.
> For example, I would like to switch a GPIO port exactly once per period of a signal in gnuradio and exactly at the same time (clearly there will be delays but that's OK as long as the delay is fixed).
> As another example, I would like to re-tune exactly once in every period of a gnuradio signal. Then I would like to read out when the PLL has settled and generate a binary indicator signal out of it. Plotting the original signal and the indicator signal should tell me exactly (at least sample accuracy) how long the PLL took to settle *relative* to the signal in gnuradio.
>
>
> Thank you very much,
> Luke
>
Whatever "dance" you're using to set the USRP time, (presumably 
something like set_time_unknown_pps), you need to have it derive the
   USRP time register from the host time.  The normal code that is 
emitted in GRC for "unknown_pps" just resets the USRP time to zero.
   But you can arrange for it to be the host time (+1 second or 
something) instead.

You haven't indicated whether you're using GRC, or "naked" Gnu Radio 
programming.

General synchronization "things" are discussed in the knowledge base, here:

https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
