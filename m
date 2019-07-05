Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4175FFBC
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jul 2019 05:27:29 +0200 (CEST)
Received: from [::1] (port=58892 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hjEsi-00074N-7O; Thu, 04 Jul 2019 23:27:28 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:44808)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hjEse-0006oc-Dj
 for usrp-users@lists.ettus.com; Thu, 04 Jul 2019 23:27:24 -0400
Received: by mail-qt1-f170.google.com with SMTP id 44so5988990qtg.11
 for <usrp-users@lists.ettus.com>; Thu, 04 Jul 2019 20:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=/+ZA0wIodG74SJKG9fB/HmTKCN1Hi6g4WKWZEQU0n2g=;
 b=JCz3Gzoi5Gbsu2jbmN30/3lTQ502krD9Ig/uEEG7bLqFw5M2xolzIeTGmBmqK++IxN
 rLYmSAcArfOJwejXTj10reG4QWZCCdfSyEBQ+ghq36n5vy5qbsRhADASLiaLqfqjlJJd
 bw7k8gre8gU4dy2lK9dmjfHtJ/+vH9nG59VocGGha9XwOs2Z9RhGw9EBeH7U2SdupCBD
 +ouK00iHwcz/+sfbgBQDn4LshOIYJKtUaXB3PjZ7bM/AjZC/bQFAs7DNR7TpKpEF6w1M
 Q9JcGjF+hfVlOmtb+z5wSUwOqnsyBwAXSif7SnwGfuDpVuL6AfcjC+HhbuC4S9oUZSdH
 ObGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=/+ZA0wIodG74SJKG9fB/HmTKCN1Hi6g4WKWZEQU0n2g=;
 b=pXTxFwxZEF+/211tNCIRVTJ1s9bF96CC/cZgwEGm0xVDl3sTB+mGj/V9lxvOPMiaBv
 vHBfoIHQFsiMsFDTsAV2SkMr0mtSuLsJmQTieIysZkh/v3sHVtm/+6ZTp2X7g+pgvLYp
 w32SS8A2K7riiHDCR9a38Ic+tcOj/9xhwvNhiRb42FxjvpPRqxrpAiM5E6YMZBMkV5qP
 5wF1TIfi3TV0D7Ly+9xM/2jlM0jxKX+6nr5tjRm6qfCX/mFOsEm0/gg9moFccwpQUXXg
 NveDCv7+GAgO5MCTAZdfMwm9yFMzIFpffgys0wFFKD2Rvc+T0Xm4WosaFwnP8vFKL0jt
 L9MA==
X-Gm-Message-State: APjAAAW5+shYvqsM5KAuIY2Hv6PFYEpoTxpjYwmgFiUe6lzT/Ko91hJv
 IxKH5EfXjjKjBSTVVCTCovlJlvy7
X-Google-Smtp-Source: APXvYqw3oBrvrna6JLVk1pBDq2EAt3cyQsLczcXNpoW3dgHoqKEc5R7wagTc9v36vu/04/PupQnEVA==
X-Received: by 2002:ac8:244f:: with SMTP id d15mr847858qtd.32.1562297203815;
 Thu, 04 Jul 2019 20:26:43 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id n3sm3222468qkk.54.2019.07.04.20.26.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 20:26:43 -0700 (PDT)
Message-ID: <5D1EC372.9070100@gmail.com>
Date: Thu, 04 Jul 2019 23:26:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACO3nRR9Ct3n8ofJKRLU4-fdk3ypdxibc1JowJ0yh_46zx5Qfw@mail.gmail.com>
In-Reply-To: <CACO3nRR9Ct3n8ofJKRLU4-fdk3ypdxibc1JowJ0yh_46zx5Qfw@mail.gmail.com>
Subject: Re: [USRP-users] B205mini half-duplex? (GRC)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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

On 07/04/2019 11:14 PM, Tom McDermott via USRP-users wrote:
> I am trying to use a B205mini in half-duplex mode through the TX/RX 
> connector
> from a GRC flowgraph.  Gnuradio 3.7.13.4.  Very slow switching, 
> manually implemented.
>
> The flowgraph implements a simple half-duplex transceiver. In order to 
> switch
> the TX/RX antenna switch, I am starting and stopping samples to the 
> USRP sink
> using the Copy block.  When the Copy block is enabled it passes 
> samples to the USRP sink,
> and when disabled it does not copy samples to the USRP sink.
>
> If the Copy block is statically enabled, then the USRP transmits (RED 
> led 'On' for TX/RX)
> continuously without any underruns.
>
> If the Copy is statically disabled, then USRP goes into receive mode 
> (GREEN led 'On' for TX/RX)
> and stays in that mode.
>
> So far so good.
>
> However if I toggle the enable/disable on the copy block to disable 
> the TX/RX switches as it should
> from red to green, but after I re-enable the Copy block and leave it 
> enabled, the TX/RX  LED goes red
> for awhile, then rapidly flashes red/green/red etc. while printing 
> UUUUUUU  on the GRC console, then
> goes RED for about 5 seconds without underruns, then flashes RED/GREEN 
> rapidly for 5 or 10 seconds
> and underruns, back and forth ad infinitum.
>
> So Copy appears not to be a good way to implement T/R switching.
>
> There is a message port on the USRP sink block.  Can this be used to 
> implement T/R switching?
> Is there some place that the messages that this port accepts defined?  
> I cannot seem to find
> the syntax for the message definitions in the USRP documentation, so I 
> must be looking in the wrong place.
>
> -- Tom, N5EG
>
>
There's some documentation here:

https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
