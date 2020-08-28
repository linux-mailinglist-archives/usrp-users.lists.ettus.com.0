Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DC2255E7E
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 18:04:05 +0200 (CEST)
Received: from [::1] (port=44118 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBgrB-0005pG-Mu; Fri, 28 Aug 2020 12:04:01 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:33108)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kBgr7-0005aQ-Vk
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 12:03:58 -0400
Received: by mail-qk1-f179.google.com with SMTP id p4so1400788qkf.0
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 09:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=s88JnFtRPdVDKutjobfhJK3GeSJLLXkfmFL6MeTWNZU=;
 b=HqTqIPKcRxDO0UeP00l8lop3Fb4HDQTBYlNkrGZNfohA5mMYrYjTzOuml4bkd0jcBx
 6KcCbNqywfi423an0sasD3+1KXlV7zw0FCfMrjkI4kyB9TSRbvxbqzB5IKJy22fXn8GO
 m5YAJu7AbLgSJ7yDR9aNqkocoxRrNwJjaicsD/Bm/aesAz2Yco/rA0AkE0TNJKTjPmTO
 Y65WBAzlihUNvURPcnYnPGk6R7Y04znN397cDU5PxVFXZGSFjGEYQd7XTQ4hnh42ju2P
 KdJ3piZSaj0rHcHv2U3E8Pg2HjjTRkK10dRZmng54G7Tf6MSHvdDP/KC0V6rzjzjZx59
 TccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=s88JnFtRPdVDKutjobfhJK3GeSJLLXkfmFL6MeTWNZU=;
 b=GJy1Gmx4cDCZQ0E4eCz8SOcSjlPZqmLYfNi9fFLjM0YaOTIkAZWmA2KVOD7RVf9PcC
 CCj6XxQCz9TWeu5+gVcCDbASupxdlcR31h1bbcTWlF4PBgITk52zlRsgwm9xSOmav06Y
 3gmyohy1LwCTvTzI3jtjVZfKeGIHGssp9h/VE874IHKu5g8uCK8jJjgpZMzDFU9yvBEo
 Ei1bBOgMRD/zA3UKeKnu9XSGmt2AapHhnBEMfVowQf/hWqASp2DXTN6F2KXhbYFidJCg
 tBTdy6nVtCHmflt9OCUxD0PyVctDuJ1Od1FmmLBuoJx3zlF0nZbnqkb5wHTFcOyzpWoL
 AXZA==
X-Gm-Message-State: AOAM533ssek05uT+6xGT8gtcOyYNLYwSioSAbQifEcIgg+2it0RoVoec
 x+r3lLNW45ruIHJO/rPA8CPQNE6a4zc=
X-Google-Smtp-Source: ABdhPJwKTTuMFi53C/AuOq/a0Pb08k64546jo60Pklz03MJXJpntkon4HX4AS4GPUEcywudIp8UeEA==
X-Received: by 2002:a37:9c8:: with SMTP id 191mr1817431qkj.292.1598630597220; 
 Fri, 28 Aug 2020 09:03:17 -0700 (PDT)
Received: from lab.localdomain (d24-146-32-64.commercial.cgocable.net.
 [24.146.32.64])
 by smtp.googlemail.com with ESMTPSA id c9sm1085894qkm.122.2020.08.28.09.03.16
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Aug 2020 09:03:16 -0700 (PDT)
Message-ID: <5F492AC3.6070005@gmail.com>
Date: Fri, 28 Aug 2020 12:03:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com>
In-Reply-To: <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com>
Subject: Re: [USRP-users] [UHD] Announcing 4.0.0.0 Release Candidate 1
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
Content-Type: multipart/mixed; boundary="===============6866741160322115808=="
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

This is a multi-part message in MIME format.
--===============6866741160322115808==
Content-Type: multipart/alternative;
 boundary="------------050306020407020003000908"

This is a multi-part message in MIME format.
--------------050306020407020003000908
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/28/2020 05:42 AM, Nando Pellegrini via USRP-users wrote:
> Michael,
> I am posting a first feedback on the new 4.0 release candidate, i was 
> in a hurry to test it hoping to be back able to use the full 
> capabilities of my B200mini.
> The environment is an Ubuntu 20.4 with an Intel I7 CPU.
> The current results are not convincing yet, the following is a trace 
> of an application should behave like a sort of spectrum analyzer:
> ---------------------------------------------------------------------------------------------------------------------------------------------------------
> Error opening log file: basic_ios::clear: iostream error
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
> UHD_4.0.0.0-0-unknown
> [INFO] [B200] Detected Device: B200mini
> [INFO] [B200] Operating over USB 3.
> [INFO] [B200] Initialize CODEC control...
> [INFO] [B200] Initialize Radio control...
> [INFO] [B200] Performing register loopback test...
> [INFO] [B200] Register loopback test passed
> [INFO] [B200] Setting master clock rate selection to 'automatic'.
> [INFO] [B200] Asking for clock rate 16.000000 MHz...
> [INFO] [B200] Actually got clock rate 16.000000 MHz.
> [INFO] [B200] Asking for clock rate 56.000000 MHz...
> [INFO] [B200] Actually got clock rate 56.000000 MHz.
> RX Rate: 56.000000 Msps...
> RX Freq: 100.000000 MHz...
> RX Gain: 0.000000 dB...
> RX Bandwidth: 56.000000 MHz...
> Clock Source: external
> Wait for REF... - 0  - 0 REF NOT Locked: ...
> OOverflow indication,Receive session error ERROR_CODE_OVERFLOW
> Timeout while streaming    ERROR_CODE_TIMEOUT
> Timeout while streaming
> -------------------------------------------------------------------------------------------------------------------------------------
> The error is not recoverable, the time out signal goes on with no data 
> transfer , the example is at 56Mhz sample rate but it is the same at 
> any rate.
> I suspect it has to do with the buffer size which is a bit weird 
> (81920 Samples);
> With this application really i do not care of loosing a block but as 
> long as i can recovery and continue.
>
> Different problem with Radio Astronomy recordings where i cannot lose 
> a single sample  , the maximum sample rate i can sustain is no more 
> than 40MSaples/sec with a block length of 65536 samples , with lower 
> block length even worse. Exactly the same as in previous release.
> In the past and with same applications 56Mhz bandwidth were not a 
> problem but also the Os is no more the same.
> In all cases there is an initial error in opening the log file.
> Regards,nando
Nando:

Have you specified:

num_recv_frames=128

In the device arguments, or left it at the default?



--------------050306020407020003000908
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/28/2020 05:42 AM, Nando
      Pellegrini via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      Michael,<br>
      I am posting a first feedback on the new 4.0 release candidate, i
      was in a hurry to test it hoping to be back able to use the full
      capabilities of my B200mini.<br>
      The environment is an Ubuntu 20.4 with an Intel I7 CPU.<br>
      The current results are not convincing yet, the following is a
      trace of an application should behave like a sort of spectrum
      analyzer:<br>
---------------------------------------------------------------------------------------------------------------------------------------------------------<br>
      Error opening log file: basic_ios::clear: iostream error<br>
      [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
      UHD_4.0.0.0-0-unknown<br>
      [INFO] [B200] Detected Device: B200mini<br>
      [INFO] [B200] Operating over USB 3.<br>
      [INFO] [B200] Initialize CODEC control...<br>
      [INFO] [B200] Initialize Radio control...<br>
      [INFO] [B200] Performing register loopback test... <br>
      [INFO] [B200] Register loopback test passed<br>
      [INFO] [B200] Setting master clock rate selection to 'automatic'.<br>
      [INFO] [B200] Asking for clock rate 16.000000 MHz... <br>
      [INFO] [B200] Actually got clock rate 16.000000 MHz.<br>
      [INFO] [B200] Asking for clock rate 56.000000 MHz... <br>
      [INFO] [B200] Actually got clock rate 56.000000 MHz.<br>
      RX Rate: 56.000000 Msps...<br>
      RX Freq: 100.000000 MHz...<br>
      RX Gain: 0.000000 dB...<br>
      RX Bandwidth: 56.000000 MHz...<br>
      Clock Source: external<br>
      Wait for REF... - 0  - 0 REF NOT Locked: ...<br>
      OOverflow indication,Receive session error ERROR_CODE_OVERFLOW<br>
      Timeout while streaming    ERROR_CODE_TIMEOUT<br>
      Timeout while streaming<br>
-------------------------------------------------------------------------------------------------------------------------------------<br>
      The error is not recoverable, the time out signal goes on with no
      data transfer , the example is at 56Mhz sample rate but it is the
      same at any rate.<br>
      I suspect it has to do with the buffer size which is a bit weird
      (81920 Samples);<br>
      With this application really i do not care of loosing a block but
      as long as i can recovery and continue.<br>
      <br>
      Different problem with Radio Astronomy recordings where i cannot
      lose a single sample  , the maximum sample rate i can sustain is
      no more than 40MSaples/sec with a block length of 65536 samples ,
      with lower block length even worse. Exactly the same as in
      previous release.<br>
      In the past and with same applications 56Mhz bandwidth were not a
      problem but also the Os is no more the same.<br>
      In all cases there is an initial error in opening the log file.<br>
      Regards,nando<br>
    </blockquote>
    Nando:<br>
    <br>
    Have you specified:<br>
    <br>
    num_recv_frames=128<br>
    <br>
    In the device arguments, or left it at the default?<br>
    <br>
    <br>
  </body>
</html>

--------------050306020407020003000908--


--===============6866741160322115808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6866741160322115808==--

