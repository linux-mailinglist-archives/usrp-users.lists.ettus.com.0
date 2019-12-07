Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B17115AD8
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 04:36:52 +0100 (CET)
Received: from [::1] (port=50672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1idQtk-0005xd-LQ; Fri, 06 Dec 2019 22:36:48 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:39391)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1idQth-0005te-Sr
 for usrp-users@lists.ettus.com; Fri, 06 Dec 2019 22:36:45 -0500
Received: by mail-qk1-f175.google.com with SMTP id d124so8294327qke.6
 for <usrp-users@lists.ettus.com>; Fri, 06 Dec 2019 19:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=w2LC8Q73yHBNad4Ui6Knx4Z1kAlz6i0+jEM2pUTLzBI=;
 b=skEIBJOj9sE8w5MtdCJhigxGFm5S7nv+ZjInTqAHl4845gVqYzN2l/Sw4urusyoiXr
 w+6IYFpUtD5Bt0NanYf1VfUvmJIBFZe8kWh3h9PtLKgnaHyB+f7ol0xZYBaMrAwPY170
 clSJjbKfUm4jeO24G/fdH/WHkqluMuJ9OT+zlxe92qKNhh1/tjLOvE06kQmOjLEEyLoc
 V9LTQKFNMOS08ZyUeqGkTv3FAm3NOweiVZzqDkuJwv44JFDwMQVJ7087l9ZnCyPvVCPb
 OyMU06RC9rYCnTCeS1FitcXWlbktPlyX9WAIpZlJZLYmgUXMqZPJ7Tp0uBSAb3jLd+oR
 HADA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=w2LC8Q73yHBNad4Ui6Knx4Z1kAlz6i0+jEM2pUTLzBI=;
 b=dYW2C3mJJ/MZhMMDgXJFaXv13MI0tIUlLarTyEtGLceVkfWCQsXx5GozsjqKlmqN/j
 0cHqgNBK8e+cPysWMMhKL5FXmU8Mo5hP+Za/OYAn6WEzAKhzBSrmEimtKb2ZUe/OrrYN
 hQejNTuXDLC3ALMnqH1Wh9rcFj1uLLDS5s/kagrjTRODmGqee+6HfT8c4mYmRKkp8OQY
 0AWMuxw6XfJdG1ha9W+LP1DBGjiCawOlEI5EzBkHn5zvc04TvtIaMTm6wOqX67diQi9z
 Jl8eyJfSvj9cKmXBi56RhHPwNK3/HpynuuD1pfuOGKE6dWpWNmwuazBOPrabI2FvSDVy
 a2Ag==
X-Gm-Message-State: APjAAAUvbLuE6l37SWt9ulCHl19yq4hVNpH/R7TJWtnHCEvRTJQpbCYI
 KCgjHUQCYW+7hqo2pOtzXsZ+CeOs
X-Google-Smtp-Source: APXvYqxOET8bccohsrNhT0lxaAZaLRr/Zj1j2civVr88isvHdM4alb1syMrjJr7CyvmxJ5HDTGbgFg==
X-Received: by 2002:a37:4b97:: with SMTP id
 y145mr16988448qka.133.1575689764959; 
 Fri, 06 Dec 2019 19:36:04 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id k15sm6483374qta.75.2019.12.06.19.36.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Dec 2019 19:36:04 -0800 (PST)
Message-ID: <5DEB1E23.80107@gmail.com>
Date: Fri, 06 Dec 2019 22:36:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-1bb7574a-e0e8-4b44-b04c-dfc7fe55e8f2-1575685982004@3c-app-gmx-bs31>
In-Reply-To: <trinity-1bb7574a-e0e8-4b44-b04c-dfc7fe55e8f2-1575685982004@3c-app-gmx-bs31>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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

On 12/06/2019 09:33 PM, Lukas Haase via USRP-users wrote:
> Hi,
>
> I am using the USRP X310+UBX160 with gnuradio to perform very precicse phase measurements: The TX transmits a CW which is reflected by an object and received by the RX.
>
> The received phase provides an accurate estimate of the distance to the reflected object, once the fixed phase relation (between TX/RX-LO, filters, cables etc.) has been subtracted out.
>
> This works nicely so far.
>
> However, I need my system to work across power cycles, and more importantly, across different frequencies: The goal is to perform fast frequency hopping and obtain the phase for each frequency.
>
> Unfortunately it seems that the phase relationship between TX/RX is lost when I tune the USRP to a different center frequency and back. For example, I have the center frequency set to 900 MHz and the phase I measure (by computing the angle of the I/Q samples) stays constant. But when I set the center frequency to 950 MHz and then back to 900 MHz, the phase has a random value again.
>
> Is there any way to avoid this?
> Or is there any way to lock the LO phase to a particular phase when tuning back to the original frequency?
>
> Thanks,
> Luke
>
It *might* be possible to phase-synchroniez the RX and TX LOs using 
timed commands combined, possibly with INTEGER_N tuning.

There's an APP Note on phase-synchronization here:

https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices

My gut tells me this is going to be hard, though, since the requirement 
is to bring a synthesizer back to the same relative phase it had when it
   was previously tuned to the same frequency.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
