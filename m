Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FD82581A6
	for <lists+usrp-users@lfdr.de>; Mon, 31 Aug 2020 21:19:30 +0200 (CEST)
Received: from [::1] (port=36486 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kCpKv-000313-SE; Mon, 31 Aug 2020 15:19:25 -0400
Received: from mail-qv1-f47.google.com ([209.85.219.47]:35301)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kCpKr-0002xB-FS
 for usrp-users@lists.ettus.com; Mon, 31 Aug 2020 15:19:21 -0400
Received: by mail-qv1-f47.google.com with SMTP id b13so3019156qvl.2
 for <usrp-users@lists.ettus.com>; Mon, 31 Aug 2020 12:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=h2W5ZuAkB7YBFSNxrNiCeSg2hyT3tb2rqxLLuBJJjq0=;
 b=M28ELusNImY9YMPasZodpxaaN2V/wcC2yaLo+PwhxBWIX9HILagwMiLYNjrQZDMib1
 qt3IWEQjrWd0cG6uLLopsj28eAk3p3/Jxyf9bT60R7l4ypXQygQN65tAyMy/2l2x9VBt
 0Xx0EGLg5RrwZsct1Z/Dr1TIN/u0EHorTj+GW4frUT4migPxr9eozqMqWcQQIz8K6sQH
 KkzgL6MdPIiJNQbVCT/yHkzA5zkguMkejxsjKU/yzLpM6RUg8n+Yla+Cz7YX0fkThbEB
 /8YvRfmVyFKWsDEXBj2NDAZO2MDEyhrQYvBF8j1YdMXGMra55y92r+Q7VuFnd6ZR81hS
 p7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=h2W5ZuAkB7YBFSNxrNiCeSg2hyT3tb2rqxLLuBJJjq0=;
 b=UU3x4rDkyjtGvjfx6eRriVdGMaApkk41owAneQkuO+YtpVTZfeF0uE9G5pUKKu9D/X
 CigKBAZzntb00NReLLEvEInTp5FQnan5tpCgl902J2gATc2F1M9tU3eXZJMrwbJCTFAk
 b3t2FVBTxYfceHIWFufit3RJtYM/CVDyG/9IQKWHypymfm1nwrlhiHJ5xiRORNMxAdQz
 yNFwtdQuQvObhyXRAcAZs5LY2sN7HDRAxrHZ4P1SAevaEHMHflezTjX/51zmZCVLEDlF
 5yPd3zPmmggXdKkX7tcxLdCmSfjUeDqj4y+2xXFznuT7QS6ZohOwL33UZ7M1tOWdQKNi
 9efw==
X-Gm-Message-State: AOAM531gmy+VdRKBh+XpSQrec8YHGV/tpAqNozbGGsxC1Vhq2c4oIfac
 c4AZnngU6lJzjMHaARQgO/SGM+nDQco=
X-Google-Smtp-Source: ABdhPJzVnuCv19wTkn9bX/lrw3sjIrUW2n10OZ3Um7QbNjkpUcS8C+gDzGdPfF1TeRL/flI513Nn+Q==
X-Received: by 2002:a0c:f607:: with SMTP id r7mr2578732qvm.219.1598901520873; 
 Mon, 31 Aug 2020 12:18:40 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id i7sm10416511qkb.131.2020.08.31.12.18.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 31 Aug 2020 12:18:40 -0700 (PDT)
Message-ID: <5F4D4D0F.4050702@gmail.com>
Date: Mon, 31 Aug 2020 15:18:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sylvain Munaut <246tnt@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
 <CAHL+j09qPSV6XAj-fvURxyR3KHwxjqc1y7rJmto-tjSZqTuqBw@mail.gmail.com>
In-Reply-To: <CAHL+j09qPSV6XAj-fvURxyR3KHwxjqc1y7rJmto-tjSZqTuqBw@mail.gmail.com>
Subject: [USRP-users] UHD num_recv_frames, etc
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

On 08/28/2020 12:21 PM, Sylvain Munaut wrote:
>
> I've always been curious why UHD doesn't automatically set those
> parameters depending on the sample rate ... because AFAICT the
> defaults universally sucks for high sample rate and changing them is
> always the first thing to do to get things to work.
>
> I understand at low sample rate you don't want useless buffering but
> UHD knows the rate of data flow, so it could have defaults based on a
> "time" measurement and then convert that time into buffer size /
> buffer count so that the buffering is always about the same time-wise.
>
> Cheers,
>
>      Sylvain
I'm fairly sure that you have to specify those parameters at the time 
you create the underlying libusb device, which means that
   supporting mid-session sample-rate changes gets awkward...



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
