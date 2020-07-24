Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BAE22C190
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 10:59:59 +0200 (CEST)
Received: from [::1] (port=42224 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jytYa-0000Qy-Nl; Fri, 24 Jul 2020 04:59:56 -0400
Received: from mail-ej1-f49.google.com ([209.85.218.49]:45654)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jytYW-0000KO-Jg
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 04:59:52 -0400
Received: by mail-ej1-f49.google.com with SMTP id g7so951286ejw.12
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 01:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=XJVeXl26jap/9n9xrFd+hqx7T3pXb02OVu7eLy4dGTo=;
 b=bFQOu1Mhd3Z8ml02IbHKMW/90LpxpWKY2fikEc3MP9NsBPtkp7UJmQeU1OPuBogHiR
 1/o55HacffGwfYNkKp8tQqPJKbo0kzARKI47JKaKDjA+PPfWPkrnhbyXlGISJtxCWi5K
 jPVkLCbB/2Vv784HQI/SxQoRrYroKcRc+JtnaIFd1uDG83TLMRxBi8vSuNX4IcdY/tzo
 9TuHc0cZRMMoyigWbTOzrHb5GD4ATtz+Wjq2DRhhuYg02DB7zAc8GciIhmIsO6MafVd9
 0cyHdu7p8yeb2lFVh5fr0aDEZgOMD6pWwkNpf94uatMOYdCXOXBKSyPBs4trmiKActFb
 Cm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XJVeXl26jap/9n9xrFd+hqx7T3pXb02OVu7eLy4dGTo=;
 b=Fpy2Muxr72aeGgIAgEmfoeYsOPFCZolxgUmAT79HOvYicUwA7nf6FR3aIdgxYT94d4
 8PSPUB2y4VxIRlAq6WAl28laSeDFsUmstuO4dnLXSCpAN9U6MU3MRvsPcLE5cPQty1rp
 jHhx5CWDV+N24TEKM0is4Xs4tjTN5TzYLXInw93blFwIlzOJCCIwjLpzw3PfzWA4XIfv
 /7RQJNyHhAPZFuMqEX9do4WldoBHhVyE2PVIUsxMz3tq5kjUZTuh+3tNPniSayI0rHie
 T5HwxCRMGyO7dPVt7+hXEJw8BqLuIJdzGsgl4qJCKrfKzqaVxA1lFDZ6pZx5Jv9au1bM
 hl8A==
X-Gm-Message-State: AOAM531aJzB3eImrJirG3EyvWKSoOEaJIo0rz43boSKmh9BLEwJQOrzB
 pcYA5o2NZvphglqC75nSQ7g/59xdjj+LrA==
X-Google-Smtp-Source: ABdhPJxtorrX6bWQI0TMkOtJwVefv/5A8x6BzIxFXwHflQ4TgUxFDlu0CGY2VvW2ug4Ss+vI/Nug1w==
X-Received: by 2002:a17:906:f88c:: with SMTP id
 lg12mr7389104ejb.179.1595581151284; 
 Fri, 24 Jul 2020 01:59:11 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id o18sm253287ejr.45.2020.07.24.01.59.10
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Jul 2020 01:59:10 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <MA1PR01MB2588CC00F48E87E8D085A83190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <cc3892c5-90fe-8467-fc9c-33d0b5b860a5@ettus.com>
Date: Fri, 24 Jul 2020 10:59:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB2588CC00F48E87E8D085A83190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] Using GNU radio
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

This has not overly much to do with that being done with GNU Radio: If
your machine is fast enough, yes. If not, no.

Instead of the overhead of a file on a RAM disk, simply use a vector
sink, at least if you're using modern GNU Radio (3.8): Use the "reserve
memory" field with enough space to record all you wanted to record to
make sure your program doesn't need to shuffle data at runtime.

Also, setting larger output buffers in the GNU Radio blocks can help,
too, if you don't need low latency (which you don't need at all, if
you're just recording). Try setting "2**24" in the min output buffer
setting in your USRP source's "advanced" tab.

Best regards,
Marcus

On 24.07.20 10:42, Koyel Das (Vehere) via USRP-users wrote:
> Can 6 gbps from usrp be written to a file using GNU Radio Companion with usrp source to file sink in a RAM disk?
> 
> Get Outlook for iOS<https://aka.ms/o0ukef>
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
