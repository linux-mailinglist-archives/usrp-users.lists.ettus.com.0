Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED03890C2A
	for <lists+usrp-users@lfdr.de>; Sat, 17 Aug 2019 04:33:25 +0200 (CEST)
Received: from [::1] (port=51338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hyoWx-0001O0-6V; Fri, 16 Aug 2019 22:33:23 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:43782)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hyoWt-0001Jx-UL
 for usrp-users@lists.ettus.com; Fri, 16 Aug 2019 22:33:19 -0400
Received: by mail-qt1-f178.google.com with SMTP id b11so8175955qtp.10
 for <usrp-users@lists.ettus.com>; Fri, 16 Aug 2019 19:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=R+BBo0oQuY7PbA5pzjjfEP85ywrZkE2yLBNFJLNtIGI=;
 b=foVVbwT1zqWCxwt3jQIsvDGIz+xQWy8VsX7/NAFHAPaYbiyIP/IsqY2kgBKNMbE+tz
 NTPPjk8/GB9ez/lT1Nce4bmHluxADVBCJkZ16NaC6wlGCKYjC5YhnuzseI55ip3clI3y
 im/cgkjseu0e2QCJ40lqCUa60SYYdp0FhSk7Q1PDglOdGWiYfI40DqG597XsF/Ud4DE5
 I49v1kDRuwqdromsiM6KizMss+Hf9FMlDxc5s2ZQloBbEt0575WHg6fmbjrORjqCo43U
 KgKQDrjxFdEKEGK5k6wnO1W9j2bJMwKpLta/OV9Ig/lcNDiJ/euo3/NejD1sZZDllVO7
 g0tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=R+BBo0oQuY7PbA5pzjjfEP85ywrZkE2yLBNFJLNtIGI=;
 b=g0vVQKmVPz1aFNbu52b5RSGU8pWFkyZHIgHgkNh8ApLvBVenPsyVS/D5KHWV0m4pIz
 URXMqW1+UFjZRT8wRPbRYIjVsgy38Z2jiKc0i6ixsLXRXAz2iuUIQ7PsGSWi13kT7R0/
 CHhzUbuZxcP32bAuOWY5mU6ReAOa3vCxa86Nj7mVCNWw0f54I2E58r/8WL9F2KNtzRwF
 mRuOsS2EY5iObSN0wFekO6QKyoOBW9aRh0ZiBZU5uuO+Otqh6i3DOmIBQPj+IxpmUOA7
 8zpIH8UiWsGxybEyFodwkGNxmG6o0d991DDyuD/drzbTR89py+/dW4T+jG0ARX8vy86L
 u3bA==
X-Gm-Message-State: APjAAAWS+fJED8x0yJtULNxyuhwMUEyiOo93GJfKhYRbLfieVwANss56
 BCFRny4SUedfGUB5UoNeyaiwrvuE
X-Google-Smtp-Source: APXvYqzRZxZ76E0LsC/vfgrI9fHfxwqkhR50HE8zXO+reK+O3EnDFYdyXwJjrWrPHQPKXAaQJcp5Iw==
X-Received: by 2002:ac8:6d0f:: with SMTP id o15mr11282817qtt.200.1566009159122; 
 Fri, 16 Aug 2019 19:32:39 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id i20sm3687131qkk.67.2019.08.16.19.32.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 19:32:38 -0700 (PDT)
Message-ID: <5D576746.1010008@gmail.com>
Date: Fri, 16 Aug 2019 22:32:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
In-Reply-To: <9d637be0-b80a-33cb-492d-0197e3ba6f5a@3db-labs.com>
Subject: Re: [USRP-users] Incorrect RX time_spec values with X300, TwinRX,
 and v3.14.1.0
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

On 08/16/2019 04:54 PM, Jason Roehm via USRP-users wrote:
> I have a software application that interfaces to an X300 with a TwinRX 
> daughterboard installed. We recently upgraded our UHD version to 
> v3.14.1.0 in our application. Since then, we've observed that the 
> time_spec values on consecutive blocks of data received from the unit 
> (i.e. from two sequential calls to rx_streamer::recv()) are not 
> consistent with one another. The timecodes reported by the unit seem 
> to be moving forward at twice real time.
>
> As an example, assume that I have the X300 configured for a sample 
> rate of 100 MSPS, and that I'm getting 1000 samples per call to recv() 
> (these are just round numbers to simplify the discussion). I'm seeing 
> metadata from consecutive recv() calls that look like this:
>
> Block 1:
> - time_spec.get_whole_secs(): 0
> - time_spec.get_frac_secs(): 0
> - 1000 samples @ 100 MHz = 10 usec of data
>
> Block 2:
> - time_spec.get_whole_secs(): 0
> - time_spec.get_frac_secs(): 0.000020 (where I would have expected 
> 0.000010 instead)
> - 1000 samples @ 100 MHz = 10 usec of data
>
> ... and so on.
>
> If you watch the stream of timestamps received from the device, it 
> looks like time is passing at twice the appropriate rate. I noticed 
> this recent commit that seemed could be related:
>
> https://github.com/EttusResearch/uhd/commit/5f75f73f25016958ab32710bb0cbd5ce4481041b 
>
>
> If I revert that commit, then the timekeeping on the TwinRX channel 
> works properly again. However, that isn't a fix that I can work with; 
> I also use this hardware in a configuration where the X300 has a 
> TwinRX and LFRX daughterboard installed simultaneously. Without the 
> above commit, then I am unable to stream data from the LFRX; the 
> rx_streamer never returns any data for that channel. I previously 
> reported that problem 
> (http://ettus.80997.x6.nabble.com/USRP-users-X300-with-TwinRX-and-LFRX-under-UHD-v3-14-td12749.html) 
> and never got an answer, but the above commit silently fixed it in 
> v3.14.1.0.
>
> How can I get correct timekeeping with the X300/TwinRX, while 
> maintaining my ability to stream from a TwinRX and LFRX simultaneously?
>
> Jason
>
>
I THINK this is fixed in commit:

f712d477b97e2ee7cca56d5afcf199f00959eb85


> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
