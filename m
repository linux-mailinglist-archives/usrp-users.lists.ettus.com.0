Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD02119FA1
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 00:46:04 +0100 (CET)
Received: from [::1] (port=46100 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iepCc-0002Ws-3Q; Tue, 10 Dec 2019 18:46:02 -0500
Received: from mail-il1-f179.google.com ([209.85.166.179]:45074)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iepCY-0002O0-VK
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 18:45:59 -0500
Received: by mail-il1-f179.google.com with SMTP id p8so17736558iln.12
 for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2019 15:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=GaYDnVDv80CL4q8ufCHpmgMy1/yplXOK3Ud77XB7nmc=;
 b=cjZ6PLF0vmgp4wDts0fRaSejW5RdV8mtRfE6tTUU1EtvwOWoKjNTX25/j3wgnjw+0e
 EjkGMuUtejNJMAQHm1HDVNC9cWTXQm3tWZcRb4f2CrDKtIJiS+Pcx8IHVUgo8h7zERto
 ZbSkWPtQcViuygqq82J6Pmgn5PgQGjuZgTPF+KQDHCGUGjLhA0JmOc8LnKPvKJopdcAf
 0+HUDUgTvm/AGsQvbDUtfi3zwS3cCCxm2HjFzc9+fHv627ekA8eBJTGXybYG3rD3Ljxf
 VAqXlRdZ1whoVRKWajsMjptdzZfBATI4z0f4MOzLAI2W4H+hGmKVALatMi156CPKDf0X
 lFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=GaYDnVDv80CL4q8ufCHpmgMy1/yplXOK3Ud77XB7nmc=;
 b=EIed6syFwOLRjurCMSPcTG58nhHKE6JpCU3DP7zHJm/ljduTnaJU74/ZIYAA7g4rib
 8AHjLq/y+orUMhAEpn2GyoiewvDVIe9UFSce/saOs9N22aUHhmcadLYVsGQK+Lvr7bCt
 8V7v1OYa0UFdxrSP0PALNakTIHesZSsf0tbva9NLUgGXGeyxYkfnN2txXm8ZQFt/DLaN
 7Fo1dXvgQI2Jo1nOblBK8wgJNO1Eh2yowG5gZHs+EG/0CuiDnk85OmOKTOxBGFINAMJo
 w0bDQVwF81VAIJdM9gl5rkcwGicewQDRa3yXTbF3+zcumrilx/ZiJjd0D2X7vH+8NpGA
 uUoA==
X-Gm-Message-State: APjAAAXQ2qozZB2COJti1qdb0Qwqg+4Y8wKWRL0ST4RMlkFr743OqJdI
 DrIDHtWXPJ1uO4liR1BBkHs8VcLo
X-Google-Smtp-Source: APXvYqw2wIIX/XL/bX2Q7YxoQlFXZXCRk3MFivR2HyQ5aH4LZlX9k7T7m375moKuxFmb/KXffPZRAA==
X-Received: by 2002:a92:49db:: with SMTP id k88mr302577ilg.25.1576021518038;
 Tue, 10 Dec 2019 15:45:18 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id f7sm91288ioo.27.2019.12.10.15.45.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 15:45:17 -0800 (PST)
Message-ID: <5DF02E07.2000504@gmail.com>
Date: Tue, 10 Dec 2019 18:45:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
 <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
 <5DEEAC89.60403@gmail.com>
 <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
 <5DEEB562.4030602@gmail.com>
 <trinity-459dbf7b-f04c-4912-9571-52b962a344fb-1575950607303@3c-app-gmx-bs45>
 <5DEF2185.5010308@gmail.com>
 <trinity-f74e7b0f-88a0-4aa0-ac0f-ac8cd023596e-1576015922416@3c-app-gmx-bap30>
In-Reply-To: <trinity-f74e7b0f-88a0-4aa0-ac0f-ac8cd023596e-1576015922416@3c-app-gmx-bap30>
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

On 12/10/2019 05:12 PM, Lukas Haase wrote:
> Hi Marcus,
>
>> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
>> [...]
>> You're using the MANUAL policy for BOTH DSP and RF. Let the automatic
>> "stuff" do its thing, with the only difference being integer-N tuning.
> Pretty incredible, I think I found the(?) issue.
> https://kb.ettus.com/UBX#Phase_Synchronization:
>
> "If you are operating the UBX at frequencies below 1 GHz and need phase synchronization, then it is necessary to select a 20 MHz daughterboard clock rate, instead of using the default 50 MHz rate [...] If you're using GNU Radio, then you can add "dboard_clock_rate=20e6" to the "Device Arguments" field of the properties for the UHD Sink and UHD Source blocks."
>
>
> I did this and lo and behold, the phase stays constant across tunes!
> It even works without mode_n=integer most of the time ... I think sometimes I get the frequency shift I was mentioning in a previous message.
> With mode_n=integer it works for all frequencies I have tried. I really hope I did not miss anything.
>
>
Well, that is something I did not know, although perhaps I should 
have.   Hard to keep *everything* in my brain about all the various bits of
  hardware Ettus has released in the last few years...

Please let us know if there's anything *else* that crops up...



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
