Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BB9205B6D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 21:06:24 +0200 (CEST)
Received: from [::1] (port=53360 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnoFR-0005Fy-Jo; Tue, 23 Jun 2020 15:06:21 -0400
Received: from mail-qv1-f54.google.com ([209.85.219.54]:35173)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jnoFN-00057i-Hz
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 15:06:17 -0400
Received: by mail-qv1-f54.google.com with SMTP id g11so10205160qvs.2
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 12:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=VI7oShl3smUKYInyObI7+xbCyCLIZ1/+lp5/4JqpQI8=;
 b=kUP0QhvPdzOafubrhaM/SDDkaW1F1oOBp5dtMdfSJQDOpd6OXD6OXfF0OJSLtY7YA1
 Bha2iDr1nQdopwqYxrmx1r43UOc1aOEWmJV9dpOqTN26Z1XjwT+f2JWPK40o/yxp8/hg
 0Z0bj87ha7t9xqktS6sscec+Nb5N0UmVhb8TlB03gwKoCjy1ALJPa2eOEp3YMsOVO1OQ
 nnKkvY9R6bEVDpNwDHTNXZpZcxJ2sD21bq2uphghp28TNN3dAIn+Yv+p+dJm3GLBcC7S
 XL6+O1m6SmZDkmOS4VrdiHv/cE4Jlc6B26lRCvGE7SuY6A4GdmtV7zVVu3G7KQD/xzab
 92Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=VI7oShl3smUKYInyObI7+xbCyCLIZ1/+lp5/4JqpQI8=;
 b=QvE5PVPRVLQsI7nInVYxlESsg/uhDOabdrzwV6fKF6uf5N4O7uWKU0axhKH8omeL0D
 tYpS5h0exmA78xAMFVh69XfXrs7wCeahEBQgyOBxvFOecSDTDUfPXh2Ex8KjsNMEoK05
 QvvzmtRgFrtKm9mzoYe78Yx19UAlNQcgbXsBkJ/ufls04abTOA1/o+ehUA1WTFIo+aT5
 cH+miLuwO+9ZOUDjvWf71CcI1h0Qh/15OTYZIGrAPFa1OTAPUXo9sC28DiQdit5Jljn4
 yf+Mw+b44nd69PutOH+PLuGk/JSjvTX6cNZ+PdReFHQS1HNSMwn+qJTBWC5UILqpxEF6
 s19g==
X-Gm-Message-State: AOAM532JTXKmpvYqE0cKZ/wODPwzSDcFIl39tdVgzeJOBMiy5T4zw5jK
 3TkR8F8Yd1DXDUeGcg/gh5eF0nXZZpQ=
X-Google-Smtp-Source: ABdhPJz3XpAL1WhWLEP0F/fmPJLVp4u8YW/ricNPWVBtCr327HN9K9xOvMDlSw69N9zoeb8rFC20Mw==
X-Received: by 2002:a05:6214:852:: with SMTP id
 dg18mr26793295qvb.97.1592939136721; 
 Tue, 23 Jun 2020 12:05:36 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id v6sm1304878qkh.83.2020.06.23.12.05.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jun 2020 12:05:36 -0700 (PDT)
Message-ID: <5EF2527F.7090600@gmail.com>
Date: Tue, 23 Jun 2020 15:05:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAH2Hh738Yjx+iA=oHOP2tmq+TXoj8-k5ZLNUnXJsdjQ9D1q6cg@mail.gmail.com>
In-Reply-To: <CAH2Hh738Yjx+iA=oHOP2tmq+TXoj8-k5ZLNUnXJsdjQ9D1q6cg@mail.gmail.com>
Subject: Re: [USRP-users] 10 MHz Reference Initial Phase in the X310
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

On 06/23/2020 02:45 PM, Aaron Smith via USRP-users wrote:
> Hello,
>
> I am attempting to release a transmission from an X310 every second. 
> To accomplish this, I must measure, and calibrate the delay in the RF 
> front end of the radio for my chosen sample rate. I'd like the 
> transmission to be released within 1 clock cycle of the rising edge of 
> the PPS.
>
> I am feeding the X310 an external 10 MHz reference and 1 PPS, which 
> are produced by the same source, and are being supplied to the radio 
> with matched cable lengths. The source is a GPS receiver and in my lab 
> I have 2 different generations of the GPS receiver.
>
> While calibrating the front end transmit delay I noticed a discrepancy 
> in the radio timing between the separate GPS receiver generations. The 
> 1st generation of GPS receiver is 50 ns different than the calibration 
> for the 2nd generation. When I look at the 1 PPS and 10 MHz output on 
> a scope, I noticed that in the 1st generation the PPS occurs at the 
> top of a 10 MHz cycle, and in the 2nd generation it occurs at the 
> bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 50 ns. I suspect 
> this is not coincidence because I have now tested 6 different GPS 
> receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1 calibrations are 
> the same and they are 50 ns different from the gen 2 calibrations.
>
> Is this the expected behavior? Or is there a bug in the X310 code that 
> handles timing? I have never worked on hardware, but I would not 
> expect the initial phase of a 10 MHz reference to impact absolute time.
>
> Thanks for your help!
>
>
These are external GPS receivers?  What kind?  Given your scope 
measurements, how would this be related to a bug in X310?  I'm confused
   as to how you're linking the 10MHz/1PPS phasing on your external GPS 
receivers to the X310 having bugs.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
