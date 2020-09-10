Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E132649D1
	for <lists+usrp-users@lfdr.de>; Thu, 10 Sep 2020 18:32:40 +0200 (CEST)
Received: from [::1] (port=44950 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kGPV1-0002G4-CG; Thu, 10 Sep 2020 12:32:39 -0400
Received: from mail-qv1-f48.google.com ([209.85.219.48]:40717)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kGPUx-00026R-5t
 for usrp-users@lists.ettus.com; Thu, 10 Sep 2020 12:32:35 -0400
Received: by mail-qv1-f48.google.com with SMTP id j3so3636571qvi.7
 for <usrp-users@lists.ettus.com>; Thu, 10 Sep 2020 09:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=3idVTPLI4Txxd90XKW7YDCvSYyvyMDjXv45+gEC6BDI=;
 b=DUy9SrVOQ6S/KmsgGcSj/bJSG93qhFY1KTxXfSKjB0i43t+qwCsmCgc/T2XHVbk25h
 +MuXsEvvP7atp6IOSDw6q0o9yZ9lX13Dj/F83GzCnQ5/f7CKh3X+73/5YD1gXZjTJTeR
 wOrC1y8M+Q4Aq2NrPhe7jQo8bSz3IdswWDjsBGY3sWFtaFGQ8Sg335f6da44gNwzKe3P
 q25PhO5Se3kLksrURwsYSP5ap3cERfXsCYhdvpl48YYCUnwo7mMkmtVaCPVu/qRYbNep
 VqwquQGy2PbDjK8MUh7qJWSIEdfCNk5GfDcl7ybrQ/EYt/niUpxb/mJg0QAF/VgUDORI
 5rOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=3idVTPLI4Txxd90XKW7YDCvSYyvyMDjXv45+gEC6BDI=;
 b=WbmCDlESZNw18kkQDpX5XOd82CQY0xrFCeLKe94tfIYyel8r8SWYdbQuFcFC5k93Sf
 WIirYv6AkUXuvJtERpu3H+D8/MEm/+NxmhKtfzuPo24H6EYkubKl3jF+EIfbDsbSpxz1
 G9GXy/Fgm7iD3liV5qNVFgG9nd0YjBU4NLjEu5JkRdoBBdi+nR0korfr2zOkAqYG2xhS
 0+uIb7/V0LSmk6YlpbSIYxHzh6LnAR16D5c73IMhgAoFpqujCRwQooFs7uIuawrD//2U
 lvIprEjc3IYw4XllkCFWegqRwfR78h+92bIp5FwJAorrjrJWt4cEqunKHW+r6ULWIt7f
 C9Iw==
X-Gm-Message-State: AOAM531l1HvlDBJXwV8w1Y+1ze1AtQBGQj9KEm6HkcW67fWW9cXW3Q67
 uipJteHLeMIOPuOTXAoB998lTdkrPFatVA==
X-Google-Smtp-Source: ABdhPJzpE9aBp+djnQKat1uo/+/OiIJs+X3BvhzFcfNZvE9DL1JOTUaYRQkzp4jIBOm5gkx3xNCSTw==
X-Received: by 2002:a0c:f887:: with SMTP id u7mr9241060qvn.124.1599755514329; 
 Thu, 10 Sep 2020 09:31:54 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id d49sm7799407qtc.55.2020.09.10.09.31.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Sep 2020 09:31:53 -0700 (PDT)
Message-ID: <5F5A54F9.2000502@gmail.com>
Date: Thu, 10 Sep 2020 12:31:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Xiang Ma <marxwolfs@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CACryqrG8a3S1ARULWRPYte8aoUVmh8B-qBxjX6GS_j_kam_q-w@mail.gmail.com>
 <5F5A50F1.4080500@gmail.com>
 <CACryqrG3Eo6KTFM1v2SpA2Dc8Q71iznrLtai=79bPWgDG=xXRw@mail.gmail.com>
 <5F5A52C5.20703@gmail.com>
 <CACryqrG_kG4==1T_zjWqNPENWoe3y5ff7j9EOeHxQqFv1tFnmg@mail.gmail.com>
In-Reply-To: <CACryqrG_kG4==1T_zjWqNPENWoe3y5ff7j9EOeHxQqFv1tFnmg@mail.gmail.com>
Subject: Re: [USRP-users] RuntimeError: System receive MTU size
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

On 09/10/2020 12:26 PM, Xiang Ma wrote:
> Yes, no errors and warnings.
>
OK, so it's likely that your rfid receiver code is doing something 
"weird" with the setup of the USRP.

Try something simple like the "benchmark_rate" utility:

UHD Benchmark Rate Allowed options:
   --help                   help message
   --args arg               single uhd device address args
   --duration arg (=10)     duration for the test in seconds
   --rx_subdev arg          specify the device subdev for RX
   --tx_subdev arg          specify the device subdev for TX
   --rx_rate arg            specify to perform a RX rate test (sps)
   --tx_rate arg            specify to perform a TX rate test (sps)
   --rx_otw arg (=sc16)     specify the over-the-wire sample mode for RX
   --tx_otw arg (=sc16)     specify the over-the-wire sample mode for TX
   --rx_cpu arg (=fc32)     specify the host/cpu sample mode for RX
   --tx_cpu arg (=fc32)     specify the host/cpu sample mode for TX
   --ref arg                clock reference (internal, external, mimo, 
gpsdo)
   --pps arg                PPS source (internal, external, mimo, gpsdo)
   --mode arg               DEPRECATED - use "ref" and "pps" instead (none,
                            mimo)
   --random                 Run with random values of samples in send() and
                            recv() to stress-test the I/O.
   --channels arg (=0)      which channel(s) to use (specify "0", "1", 
"0,1",
                            etc)
   --rx_channels arg        which RX channel(s) to use (specify "0", 
"1", "0,1",
                            etc)
   --tx_channels arg        which TX channel(s) to use (specify "0", 
"1", "0,1",
                            etc)
   --overrun-threshold arg  Number of overruns (O) which will declare the
                            benchmark a failure.
   --underrun-threshold arg Number of underruns (U) which will declare the
                            benchmark a failure.
   --drop-threshold arg     Number of dropped packets (D) which will 
declare the
                            benchmark a failure.
   --seq-threshold arg      Number of dropped packets (D) which will 
declare the
                            benchmark a failure.

     Specify --rx_rate for a receive-only test.
     Specify --tx_rate for a transmit-only test.
     Specify both options for a full-duplex test.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
