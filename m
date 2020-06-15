Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B691FA3A5
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2020 00:41:52 +0200 (CEST)
Received: from [::1] (port=54972 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jkxnY-0002EP-Vl; Mon, 15 Jun 2020 18:41:48 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:39036)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jkxnV-0002AA-0W
 for usrp-users@lists.ettus.com; Mon, 15 Jun 2020 18:41:45 -0400
Received: by mail-qk1-f171.google.com with SMTP id w3so17442738qkb.6
 for <usrp-users@lists.ettus.com>; Mon, 15 Jun 2020 15:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=rbcR/wqlngyCTsetu8Pp2TFdsK6YK5esQ36seIsUl0s=;
 b=Jx0mZIRVejYFmDGCLalXQb8QpvNb6zp8GJR30ze70FTesX6lyqMgp+fhQDQ1KmRBhP
 LMRYq1xovA7hyT3uSrrILGV1qgTGRkDwqk60CeAGzKcy09jCpVTcEf5xCznfoWzOcBNi
 OiXRuUt5bOUKOo+EuTPATirX2JodxH+d0HamA4KJOXnob1i2eD/pUuiUa1KhOKXtr+XD
 jP1TfW2AGrJTyiHvqEju08jR5uaajHRD9cC8thbSp4HIJbv+qvKkDldvE7SmxYft9xeu
 DvwxnODm8dPKAPN7ngJIMIgzIBT655QR4rWZV5WSEaikqia3297h8BGbAzoeuJRqbqC7
 XwHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=rbcR/wqlngyCTsetu8Pp2TFdsK6YK5esQ36seIsUl0s=;
 b=KjBusqJioDp0n6bJmRjYukuNnjeGs/AgNlqpU3Il2sOM5BhTrX0E8pQOYI1FTfR6Fo
 Am4hGu4vBv07nAo93bHUMJhSj9yeYhBL+8yBmalUzpiTq5mcTLGtaBCDiDS/4UMYKfL+
 QPtUwNnThCg96W5nFEgEJYFZlOIhCDdiXnlMY9At7DLXXAELmZbtIU3mXn/2HNbMYjY2
 sR5Ftu3eeTXjNswmI3I49Ml7cpB5ag48Q7R2z/ZH6NJcRYBmBCnSXSJstVxJjG//YcwX
 eqC6kZVnI5HN9EyUhtAjDNKW7w702snElnhVQvb3A46b7zZYZJ/CKbkVMKdex0bgyYdk
 Q6zQ==
X-Gm-Message-State: AOAM531ly5yzo/Yri/rd/m93UCi4qUz2ndCfoZXKMWMfV81vrNfXZmeB
 MDn0FeQ9WqsX5DNdms+fJV9QZQceTwQ=
X-Google-Smtp-Source: ABdhPJwwzO4Q/PidsezJa6tfasEmcj4oes57iZ05F9jPD3onGSh+zB68xq1iierqDoOCwgTJ99N2kA==
X-Received: by 2002:ae9:c10d:: with SMTP id z13mr16678879qki.3.1592260864244; 
 Mon, 15 Jun 2020 15:41:04 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id x36sm13090002qtd.97.2020.06.15.15.41.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 15:41:03 -0700 (PDT)
Message-ID: <5EE7F8FF.50904@gmail.com>
Date: Mon, 15 Jun 2020 18:41:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Aaron Smith <aarsmith54@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAH2Hh72HmeMWJW_qoXLZqnSQTtA_E329tJ0CSnsAtAy7Mj7_=w@mail.gmail.com>
 <056029D3-7656-4461-A933-7298467C4D5A@gmail.com>
 <CAH2Hh70z2hCajHOLWk=R24ZhqLTR_KuR=fKaY9q=zebG8Y4CQQ@mail.gmail.com>
 <5EE7C3EA.9090902@gmail.com>
 <CAH2Hh72yRc9Hu-+0JxiLr4pi1UyDz1RpxKRwgN6vdwAmaVbaEA@mail.gmail.com>
In-Reply-To: <CAH2Hh72yRc9Hu-+0JxiLr4pi1UyDz1RpxKRwgN6vdwAmaVbaEA@mail.gmail.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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

On 06/15/2020 03:42 PM, Aaron Smith wrote:
> I am using the python api.
>
> usrp = uhd.usrp.MultiUSRP()
>
> # Set gain, clock rate, sample rate etc...
>
> usrp.set_clock_source('external')
> usrp.set_time_source('external')
>
> ts_reset = uhd.types.TimeSpec(0.0)
> usrp.set_time_next_pps(ts_reset)
> time.sleep(1.0)
> last_pps = usrp.get_time_last_pps().to_ticks(1e9)
> if last_pps % int(1e9) != 0:
>     print("Error failed to align clock")
>
> # The signal is complex float data, scaled to a max amplitude of 0.9 
> approx 0.1 secs in duration
> signal_data = numpy.fromfile('signal.dat',dtype=numpy.complex64)
>
> wirefmt = 'sc16'
>
> sa = uhd.usrp.StramArgs('fc32',wirefmt)
> sa.channels = [0]
> stream = usrp.get_tx_stream(sa)
>
> # Send 3 seconds in future
> send_time = usrp.get_time_last_pps().get_real_secs() + 3.0
> metadata = uhd.type.TXMetadata()
> metadata.has_time_spec = True
> metadata.time_spec = uhd.types.TimeSpec(send_time)
>
> stream.send(signal_data, metadata)
>
> # Ensure the transmission is complete before returning
> time.sleep(4.0)
>
> sys.exit(0)
>
>
This probably has to do with uncertainty in the way the 1PPS signal is 
flopped into the device.    What sample rate are you using, and what
   master clock rate?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
