Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F72D229E95
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:34:28 +0200 (CEST)
Received: from [::1] (port=53006 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyIdN-0008To-RO; Wed, 22 Jul 2020 13:34:25 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:38970)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyIdJ-0008L7-V9
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:34:21 -0400
Received: by mail-qk1-f176.google.com with SMTP id l6so2768048qkc.6
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=iwDsC7BDtfmGvxGNz2ia1vvXEcdagSZZMUqRLUmiJ84=;
 b=ccuu8eKnfXeZGLDsuYl1KTIpGTyB3+LmWMCcfpDUHYX7jXokPbPAv7yB1HJdMecPrk
 8J18FxZk+mTZAmkUZ7SbKBSYxoBP+S56ezbthqh6tphWHyWepd1TYOCu3VAKX2Omkvtp
 JMr5TWl5KqhLzEiY6w2hCJG5OSr7qfeTLlSCyjUazjeNv2SFpncHm9JgfL/E2+5Zs5Nz
 vf/TVR36TQuDtpGHifBIoxqHRRkAxIeyyeH1GCeluONq7bhPcXI4akkT2AmuAyLVP2uA
 FhdET/7L7iYV9DcXcJ5kYUnEYq/pk93jjrK3Kmolvxdnl38011aasLMCfaFGDLiPfORz
 QEdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=iwDsC7BDtfmGvxGNz2ia1vvXEcdagSZZMUqRLUmiJ84=;
 b=M6QFrx4adZ73Az+rMWjkL6L/EsvxSJeNyv8oFxuz0yZBm3cjd+CvEr2YxhvJRVhyW3
 K1dZAIyIZl1vGEVXo5o9rH/CF/yBR0MCoEAdA2xPS/j1ILAHnYa4V0bPxYvrbucaNgji
 lFABWiO8gq9IZTGS6agxIvaGWDC6ePyPzZccxdUcoR5GTsDAoIPWLIAXK1C6oMApPAef
 tzZ06tM7GH5vrzabdH9xLKVByCrrpezRh/2B54sSrJK9HpHVQmXAHc2TrJ0I+m5MbYuU
 ERHLveOl+8xkfm917dnIsRYauoMVabuNRyW/Nuru8sg/aR21HLymOxe2mdtIoYYmcih3
 JGiw==
X-Gm-Message-State: AOAM530L8b2sKCXCKf0jq0pWRSzyLpytKz9VBRzPpaw0OvOjTryLhsCA
 6IbMRg4dSshFX0aSXNj6k4YJuI/AFak=
X-Google-Smtp-Source: ABdhPJwkOQQKvDIzqYZR5pwY0pEWZTuDoUWjgJPNK2Fa7M3+f4p4f1Y2Ttm3qRS4tR1YJ4+3QhG4fQ==
X-Received: by 2002:a37:ae01:: with SMTP id x1mr1032083qke.179.1595439221133; 
 Wed, 22 Jul 2020 10:33:41 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id l31sm272386qtc.33.2020.07.22.10.33.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 10:33:40 -0700 (PDT)
Message-ID: <5F187873.2040206@gmail.com>
Date: Wed, 22 Jul 2020 13:33:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: David Carsenat <carsenat@gmail.com>
CC: usrp-users@lists.ettus.com
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
In-Reply-To: <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
Subject: Re: [USRP-users] C++ thread Priority.
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
Content-Type: multipart/mixed; boundary="===============6241697782734500301=="
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
--===============6241697782734500301==
Content-Type: multipart/alternative;
 boundary="------------010509080801080507080604"

This is a multi-part message in MIME format.
--------------010509080801080507080604
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/22/2020 01:22 PM, David Carsenat wrote:
> Ok thanks. The code is really simple and i don't think it can be 
> optimized.
> Is there other linux OS i can try ?
> Thanks again.
>
If it's really simple, what is the sample-rate?  Is it trying to write 
data to the filesystem at high rates?  No amount of code optimization 
can get
   around the fact that the disk subsystem is very slow compared to 
other parts of the computer, like memory, CPU, etc.


> Le mer. 22 juil. 2020 à 19:12, Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> a écrit :
>
>     On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
>     > Hello, I have made a c++ code which sends samples in the main
>     function
>     > and receives samples in a thread launched in this main function.
>     > I have read that we can set the real time priority with the
>     > set_thread_priority function.
>     > I have tried to call this function (with parameters (1,true) inside
>     > the main function but it doesn't seem to change the priority of the
>     > executable. When I launch another application, I have lots of U
>     and O.
>     >
>     > Do you have an idea how to achieve what I want ? i.e. allocate
>     almost
>     > all computer resources to my uhd program ? What is the best way ?
>     > I have already tuned my ubuntu with advice given on Ettus site.(
>     > cpu-freq set etc...)
>     >
>     > Many thanks
>     >
>     > David
>     >
>     In general, applications have only very-rough control over the
>     behavior
>     of the scheduler.  This is true in most general-purpose operating
>     system
>        environments, whether it's Windows, Linux, *BSD, MacOS, etc.
>
>     If you've played with priorities, and starting up other programs
>     causes
>     OU to happen, you should probably consider:
>
>     (A) Optimizing your code -- find out where the hot-spots are, and
>     see if
>     they can be improved
>     (B) Choosing a faster CPU
>
>     The CPU usage of a DSP flow is roughly proportional to:
>
>     inherent-per-sample-complexity X sample-rate
>
>     Can you lower the sample rate and still achieve what you need to
>     achieve?  Can you improve the main-path per-sample complexity?
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------010509080801080507080604
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/22/2020 01:22 PM, David Carsenat
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com"
      type="cite">
      <div dir="auto">Ok thanks. The code is really simple and i don't
        think it can be optimized. 
        <div dir="auto">Is there other linux OS i can try ?</div>
        <div dir="auto">Thanks again.</div>
      </div>
      <br>
    </blockquote>
    If it's really simple, what is the sample-rate?  Is it trying to
    write data to the filesystem at high rates?  No amount of code
    optimization can get<br>
      around the fact that the disk subsystem is very slow compared to
    other parts of the computer, like memory, CPU, etc.<br>
    <br>
    <br>
    <blockquote
cite="mid:CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com"
      type="cite">
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">Le mer. 22 juil. 2020 à 19:12,
          Marcus D. Leech via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          a écrit :<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0 0 0
          .8ex;border-left:1px #ccc solid;padding-left:1ex">On
          07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:<br>
          &gt; Hello, I have made a c++ code which sends samples in the
          main function <br>
          &gt; and receives samples in a thread launched in this main
          function.<br>
          &gt; I have read that we can set the real time priority with
          the <br>
          &gt; set_thread_priority function.<br>
          &gt; I have tried to call this function (with parameters
          (1,true) inside <br>
          &gt; the main function but it doesn't seem to change the
          priority of the <br>
          &gt; executable. When I launch another application, I have
          lots of U and O.<br>
          &gt;<br>
          &gt; Do you have an idea how to achieve what I want ? i.e.
          allocate almost <br>
          &gt; all computer resources to my uhd program ? What is the
          best way ?<br>
          &gt; I have already tuned my ubuntu with advice given on Ettus
          site.( <br>
          &gt; cpu-freq set etc...)<br>
          &gt;<br>
          &gt; Many thanks<br>
          &gt;<br>
          &gt; David<br>
          &gt;<br>
          In general, applications have only very-rough control over the
          behavior <br>
          of the scheduler.  This is true in most general-purpose
          operating system<br>
             environments, whether it's Windows, Linux, *BSD, MacOS,
          etc.<br>
          <br>
          If you've played with priorities, and starting up other
          programs causes <br>
          OU to happen, you should probably consider:<br>
          <br>
          (A) Optimizing your code -- find out where the hot-spots are,
          and see if <br>
          they can be improved<br>
          (B) Choosing a faster CPU<br>
          <br>
          The CPU usage of a DSP flow is roughly proportional to:<br>
          <br>
          inherent-per-sample-complexity X sample-rate<br>
          <br>
          Can you lower the sample rate and still achieve what you need
          to <br>
          achieve?  Can you improve the main-path per-sample complexity?<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank"
            rel="noreferrer">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010509080801080507080604--


--===============6241697782734500301==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6241697782734500301==--

