Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D016255F32
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 18:53:06 +0200 (CEST)
Received: from [::1] (port=44816 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBhcc-0003br-8m; Fri, 28 Aug 2020 12:53:02 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:38274)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kBhcY-0003UY-Du
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 12:52:58 -0400
Received: by mail-qk1-f178.google.com with SMTP id p2so31325qkj.5
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 09:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=TorJgVtBW+9TcW6d5+ux7+/4fiFOnd1apVLVN3Glz2s=;
 b=TV4BJr2UAcnArn1fOPUMfIaT16vPGkTj5CpwFiN/TZ87v/X+kX5i7Rvz6Vx8tEBryy
 FD4t7fCnHP6ikVHFVqM32FeGrk1JNJqFPezeSNGhMHsPsEgU+xwsZ2UUvd6sgwRME/TZ
 28uKRD72RrLBOQZkj5gBu/PrmD1fkCrsNZa/j0vWikgNGZBVgc4hGVRIGoas2Bj3uwuY
 dEmmpnyfSmjXEoX7eEO6g7wWjuCecEbnXRn5nZI3sTN7+5VJIoVvdB4cM0BFKLQnuM2L
 Q2VjOIX9woqUgKf1tC6Bv6oPpjxhDffz5PqlDPgFoFMaXCnHaFEuN81YkQCMzndwa2oZ
 2Gwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=TorJgVtBW+9TcW6d5+ux7+/4fiFOnd1apVLVN3Glz2s=;
 b=V6dXR5y842ZC6CkdcUaZvCy/rZuJNKRS5CSiECPHr2I4H3+UE0aD0YVxdieyw1KxNT
 aFW/tlTn2Fy7kfZ3XGyyoB/jHcKfy9ioSTQtWCKJx2NGAy9tcI1C9Xlhy6jF0WvPGq1V
 zmiNVXf0EQAMcxb4ECjAhMEG+QPveEdBOeccgrysvWDlZOuMimEl9PeMD/Zona7r9yJ2
 caicA0W3LPRc2aVnOTdm/JVSPXhhiAzdno37yaq7CB2p928meiF9VtxeS0hqOyFCi88Q
 tUGlldIfEA9C+rQAdYEOmfw+gXs8nlhOBiQY/T+QiCiq7BaYXSxyDCe1ejTMmLy+C0aw
 8SUA==
X-Gm-Message-State: AOAM533dB4eyiLYadujmMUCMM258S4iOixVhXf7clC2COH/IQpwSuqNM
 nQ6YPg6x9wXjyLgXG7UlIbcFLrLDSTQ3DQ==
X-Google-Smtp-Source: ABdhPJyW0cv7azDNQbtWrAk+sl0sNnD20Qyjy6Tj5cG8dg6Iwjf6OOCwPiudnQqvxU7ByPFVEqNiUg==
X-Received: by 2002:a05:620a:141a:: with SMTP id
 d26mr28651qkj.97.1598633537621; 
 Fri, 28 Aug 2020 09:52:17 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id w44sm1466020qtj.86.2020.08.28.09.52.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Aug 2020 09:52:17 -0700 (PDT)
Message-ID: <5F493640.4080504@gmail.com>
Date: Fri, 28 Aug 2020 12:52:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nando Pellegrini <i1ndp.nando@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
 <e2e93aff-492b-4c4b-21bb-c510e4152ca0@gmail.com>
In-Reply-To: <e2e93aff-492b-4c4b-21bb-c510e4152ca0@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5579326071925922070=="
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
--===============5579326071925922070==
Content-Type: multipart/alternative;
 boundary="------------040101050409080701060108"

This is a multi-part message in MIME format.
--------------040101050409080701060108
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/28/2020 12:23 PM, Nando Pellegrini wrote:
> Hi Marcus ,
> I am back with more or less same problem, trying to restore the former 
> situation.
> I did not add any device argument simply because i really never needed 
> to change the default.
> I do not pretend to have the problem solved at once on a release 
> candidate , i was simply reporting them.
> In addition but not sure how could help , and now i am talking about 
> the low level of performance, my testing application is a simple and 
> short code looping on a receive function (with high priority)  but 
> unable to pull out all the expected data. The CPU load is very low and 
> it seems like the lower levels of software are not able to engage the 
> cpu. I normally set the float32 format as output but tried to avoid 
> the conversion setting 16bit integer. Nothing changes.
> Of course i do not know how lower starting from the UHD library end 
> ending with the OS process scheduling , and , strange, but the same in 
> two different CPUS where the fastest has the worse behavior.
> I made also an attempt starting with the short latency version of 
> kernel , exactly the same!
> That's the status.
> nando
If you use the 'benchmark_rate' tool that comes with UHD, what are your 
results with both this new release candidate and 3.15?



--------------040101050409080701060108
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/28/2020 12:23 PM, Nando
      Pellegrini wrote:<br>
    </div>
    <blockquote
      cite="mid:e2e93aff-492b-4c4b-21bb-c510e4152ca0@gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      Hi Marcus ,<br>
      I am back with more or less same problem, trying to restore the
      former situation.<br>
      I did not add any device argument simply because i really never
      needed to change the default.<br>
      I do not pretend to have the problem solved at once on a release
      candidate , i was simply reporting them.<br>
      In addition but not sure how could help , and now i am talking
      about the low level of performance, my testing application is a
      simple and short code looping on a receive function (with high
      priority)  but unable to pull out all the expected data. The CPU
      load is very low and it seems like the lower levels of software
      are not able to engage the cpu. I normally set the float32 format
      as output but tried to avoid the conversion setting 16bit integer.
      Nothing changes. <br>
      Of course i do not know how lower starting from the UHD library
      end ending with the OS process scheduling , and , strange, but the
      same in two different CPUS where the fastest has the worse
      behavior.<br>
      I made also an attempt starting with the short latency version of
      kernel , exactly the same!<br>
      That's the status.<br>
      nando<br>
    </blockquote>
    If you use the 'benchmark_rate' tool that comes with UHD, what are
    your results with both this new release candidate and 3.15?<br>
    <br>
    <br>
  </body>
</html>

--------------040101050409080701060108--


--===============5579326071925922070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5579326071925922070==--

