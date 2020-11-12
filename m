Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB45E2AFD1F
	for <lists+usrp-users@lfdr.de>; Thu, 12 Nov 2020 02:51:33 +0100 (CET)
Received: from [::1] (port=53082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kd1lr-0002cb-5U; Wed, 11 Nov 2020 20:51:31 -0500
Received: from mail-qv1-f52.google.com ([209.85.219.52]:35043)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kd1ln-0002WA-Da
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 20:51:27 -0500
Received: by mail-qv1-f52.google.com with SMTP id g19so2048670qvy.2
 for <usrp-users@lists.ettus.com>; Wed, 11 Nov 2020 17:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=jBbLXVco49FOebEFB6RfJ0auiGnTn+lWMKHUJED+kXA=;
 b=d5mQ8DLIqnTO2GJEkQcWccjxqw2fdi1cBH2SIN68/Te34LHtttVw18fUFZB7wI/HfK
 3Apc130znD5Jb5JVm5/+QdN49b8mY+DSOKp+gvfDpyOEfl4nmseHqDvMpCC4u30XOJQ6
 iBws/2dRXMROolBoaoeVWCiz5/yhR6XgO4zuFoZ3UchUzYYXJbTt0QYBZdtIM94toWhC
 C+ZReqoeePbEeQ30t6pcUZc/S4LQgbKGxscKKNuzUZH6y/zTBQmXrhLfjmDiDsXaxGxf
 6ncRSjbEdxFIdQKkDFL3hgc4Cu4+NCpEHJWDAR8sn3obSLwt1XssZvjHW4ngJ5BGE7wF
 oCgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=jBbLXVco49FOebEFB6RfJ0auiGnTn+lWMKHUJED+kXA=;
 b=nRKOT0EgpCR6wXiVkSENMeqL0ll0qhua0DP+QmXlyQfl5pru53VrC64vByLxQ6OyZc
 pVtuwxpMTyR6hABzss0q7XtUa7+ewuVex2+OxhFuDBbkYJ5ocWduPF09iAFjUQGjfQsX
 SiUyCGD8pkcj3bWP2IjjwCdARMiaXnm/UKFMBHMaCfg+QO8Ozj7ndG7xuZbt+vzEqUrt
 2jOlxIy1COMIuukrJZhUQ2Ak9sSRHs4uG3q5yVMznsf9977H81z+EL+1Az0MPH1zCyb4
 k9rXKss9/mlJh/8N7CIfgz5aS/rjLGJr8URNtkv3/icUulSgbkFZtYcEtM5f0PnUo1gt
 vJOA==
X-Gm-Message-State: AOAM531dvpFvNXeX3+UtddFe2LMIgraYDBIrlh3oYHYHlVc61DT30Vdx
 X1JZwQDn7+74hPV8SAA8/QjyWdXJpVY=
X-Google-Smtp-Source: ABdhPJxynvqegtA8TbQS9UDFjjOCqeF+Fz28BNLJSDSjJECDbdmz/JpNXriaQ6HuGYt7qEJjXYUnZw==
X-Received: by 2002:ad4:4e13:: with SMTP id dl19mr10211046qvb.53.1605145846534; 
 Wed, 11 Nov 2020 17:50:46 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id b12sm4022734qkk.71.2020.11.11.17.50.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 17:50:46 -0800 (PST)
Message-ID: <5FAC94F5.6060909@gmail.com>
Date: Wed, 11 Nov 2020 20:50:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Dustin Widmann <dw2zq@virginia.edu>, usrp-users@lists.ettus.com
References: <35ae5da8ab09a4c3bbb77d059d775a91b98d4c9b.camel@virginia.edu>		
 <5FAC37FA.1060605@gmail.com>	
 <4150ed6df83730bba2cbc5ef916af8064c284edf.camel@virginia.edu>	
 <5FAC8763.1090904@gmail.com>
 <d66ce8deb5691b545bcdeb65fabf69b55306c692.camel@virginia.edu>
In-Reply-To: <d66ce8deb5691b545bcdeb65fabf69b55306c692.camel@virginia.edu>
Subject: Re: [USRP-users] twinrx consistent phase offset
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

On 11/11/2020 08:34 PM, Dustin Widmann wrote:
> Hey Marcus,
>
> I'm using UHD 4.0.0;;
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_106700; UHD_4.0.0.0-1-
> gcf570707
>
> I had stumbled on the "tune twice" thing quite accidentally (I don't
> think I ran into any documentation on it, I was just trying to test for
> repeatability with a single frequency, and noticed the first time was
> always wrong), but now that you mention it, I guess it kind of makes
> sense. I don't know how deep the command queue depth is, but I expect a
> tune on the twinrx would ostensibly need to e.g. set the preselector
> filter, enable/disable the low frequency pre-amp, select high band/low
> band, tune the first stage lo, tune the second stage lo, select high
> band first stage oscillator, and maybe another few things that I'm
> missing. The only bit about that which I'm not sure is what the minimum
> acceptable delays should be to ensure stability in this double-tune
> operation. As it stands presently I am taking about ~500ms to retune
> the receiver, it would be great if I could get that down some, though I
> have bigger fish to fry as of yet.
10s of ms should be more than adequate.

Given that you're using LO-sharing (I didn't realize this), then you may 
be running up against
   a regression in the code base.  The 90/180/270 offsets are suggestive 
of a re-synch problem
   not with the RF synthesizers, but with the quad-rate real-to-complex 
converter that's in the
   FPGA codebase.

You could try this against UHD 3.15.X


> Unless I'm mistaken and more is required, I'm already using LO sharing
> between the channels (but that doesn't seem to be enough...). For
> clarity, my initialization function does this: (modified for brevity,
> but in order).
>
> _usrp = uhd::usrp::multi_usrp::make(args);
> _usrp->set_clock_source("internal",0);
> _usrp->set_rx_subdev_spec("B:0 B:1",0);
> _usrp->set_tx_subdev_spec("A:0",0);
> _usrp->set_rx_antenna("RX1",0);
> _usrp->set_rx_antenna("RX2",1);
> _usrp->set_tx_antenna("TX/RX",0);
> _usrp->set_rx_lo_source("internal", uhd::usrp::multi_usrp::ALL_LOS, 0);
> _usrp->set_rx_lo_source("companion", uhd::usrp::multi_usrp::ALL_LOS,
> 1);
> _usrp->set_rx_rate(100e6, 0);
> _usrp->set_rx_rate(100e6, 1);
> _usrp->set_tx_rate(400e3, 0);
> _usrp->set_tx_gain(0,0);
> _usrp->set_rx_gain(65,0);
> _usrp->set_rx_gain(65,1);
> _usrp->set_rx_bandwidth(100e6,0);
> _usrp->set_rx_bandwidth(100e6,1);
> _usrp->set_tx_bandwidth(100e6,0);
> _usrp->set_time_unknown_pps(uhd::time_spec_t(0.0));
>
> I had thought all I needed to do was the "set_rx_lo_source" bit to
> enable the LO sharing. Have I done that correctly or have I missed
> something? If that is correct, do I need to change how I go about
> tuning (detailed in the first email in the chain)?
>
> Dustin
>
>
> On Wed, 2020-11-11 at 19:52 -0500, Marcus D. Leech wrote:
>> On 11/11/2020 06:20 PM, Dustin Widmann wrote:
>>> Thanks for the quick response Marcus!
>>>
>>> It seems to be fairly frequency dependent. I'm attaching a link to
>>> a
>>> data file so y'all can take a look at what I mean. I ran a dense-
>>> ish
>>> sweep several times to try to get a feel for how reproducible
>>> things
>>> were /etc. The transmitter was retuned at each frequency, but the
>>> receiver was only retuned every 10MHz.
>>> https://u.pcloud.link/publink/show?code=XZviezXZGl5Ypkv46LSVf9l9n1YtOV05z92k
>>> in this file:
>>> * blue or green text = range of datapoints that seem to have
>>> reproducible phase offsets (I alternated between blue and green
>>> when I
>>> noticed a "jump" in the value ;; sometimes these jumps were
>>> 90/180/270
>>> degree, but often not, and were reproducible regardless)
>>> * orange text = phase offset is off in some consistent manner
>>> (90/180/270 degree jump) and/or reproducible aberrant value
>>> * red text = phase offset seems to be random/garbage
>>> * red background = invalid datapoint (either tone is at unexpected
>>> bin
>>> on channel 1, channel 2, or both ;; this is one of the other
>>> questions
>>> I was alluding to in my first email, I'm presuming its a separate
>>> issue, but maybe not. It's worth noting that when the tone is
>>> observed
>>> at the wrong frequency, the frequency where it is observed is often
>>> a
>>> multiple of the reference clock instead)
>>>
>>> Dustin
>>>
>> What version of UHD are you using?
>>
>> I spoke with the original developer of the TwinRX driver, and the
>> preferred approach to tuning if you want coherence
>>     is to tune it twice with timed commands.  The reason for this is
>> that
>> the number of transactions required to tune the
>>     TwinRx exceeds the size of the X310 command queue, but various
>> things
>> get cached, so the second attempt will have
>>     fewer commands in the queue, and will go through with all the
>> appropriate timing.
>>
>> Since this is on a single X310 platform, and it's TwinRX, you might
>> consider instead using LO sharing:
>>
>> https://kb.ettus.com/TwinRX#New_Multi_USRP_Functions
>>
>>
>


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
