Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 949802D9E0B
	for <lists+usrp-users@lfdr.de>; Mon, 14 Dec 2020 18:46:28 +0100 (CET)
Received: from [::1] (port=57336 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1korvS-0007oE-ND; Mon, 14 Dec 2020 12:46:22 -0500
Received: from mail-qt1-f175.google.com ([209.85.160.175]:45927)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1korvO-0007i5-Gz
 for usrp-users@lists.ettus.com; Mon, 14 Dec 2020 12:46:18 -0500
Received: by mail-qt1-f175.google.com with SMTP id g24so57602qtq.12
 for <usrp-users@lists.ettus.com>; Mon, 14 Dec 2020 09:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=2fcKPRUr3DfZkWbx1aUtAy1fzh/B/8eqhuRjtYxMNw4=;
 b=fS1xSmIJNWWY4pvT7jofPsQMMGTuH0X/DhwdxIYZXzQFcZL1BWZh1Y7yYpOdXL87aT
 195dwuoj1ORUriK9bIYJzt6yDOJOzlfF4raHkYx2lR2qtuwTLVlSi22FH51juzarZB3Y
 17KNN4rpb+xukv7gvwXALm93HJ5jCUeEAG6hh75RxvAOicjEtwEnl/8LtLPyQGN12IBS
 L6uUxghEN4eDygkdbziGu8WJg7aMdANaXkXsHV4Iv+gAxznTOXdTbxQ5Lbvag7o4HIZw
 J3ws2hHmiOhUSypBxTmIvlJp9CbeXrP0Lf9NulhhROziQjoVwHFJt+vIPG5uSQGusiEy
 HZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=2fcKPRUr3DfZkWbx1aUtAy1fzh/B/8eqhuRjtYxMNw4=;
 b=MOwL7xidcrvHDNh+nJ5eXEztrjsXdlXUrGtKnzL+LmZ75Pz018WKUgF/JeFttn5/Tj
 +IQVx/hZwvBKgATY0WEUT8bUwRabsjgJgzoZvNAQpGwSJavo8Lb8rsByvUANwQzrhKUx
 bWbxREeXM34sRrOmD7n3vutWow8aQHg8ISI87hGDy96TSadRCyHyR2bV2tbya/utojBs
 5MDl1B100kV/HpUuxVVnu4yH0PONuV8uD1gcktyPrnj/xX/86PwY+wt42iKBp5cmWgrz
 5s3IHOANQXroE1i0G/dBlJZKXAb6h/wEYy2vERrj68hmdLCcLYtVWFbgYLLV89oOOmt3
 sZzg==
X-Gm-Message-State: AOAM531D7pXChcRkssWQ/mk1ySgIft/Udt8XMbk6fD43+7+NeGYWvyYe
 NadhN03p1KPtIFXxAx1u74MuSoPBNgY=
X-Google-Smtp-Source: ABdhPJyJ2yIlrKh0fdajhdq67FqzZ/FLJdPpPavinlWpttaGrKpJz6ahc4jsIPBpHENfsxS1jEmswQ==
X-Received: by 2002:ac8:59c3:: with SMTP id f3mr32016543qtf.214.1607967937522; 
 Mon, 14 Dec 2020 09:45:37 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id x49sm876844qtx.6.2020.12.14.09.45.36
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 14 Dec 2020 09:45:36 -0800 (PST)
Message-ID: <5FD7A4BF.7040305@gmail.com>
Date: Mon, 14 Dec 2020 12:45:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com>
In-Reply-To: <CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com>
Subject: Re: [USRP-users] LO phase alignment for multiple B200s
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
Content-Type: multipart/mixed; boundary="===============5900983128492342846=="
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
--===============5900983128492342846==
Content-Type: multipart/alternative;
 boundary="------------040609060409020105060704"

This is a multi-part message in MIME format.
--------------040609060409020105060704
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/2020 10:19 AM, Bach Nguyen via USRP-users wrote:
> Hi all,
>
> I was using my 2 B200s to measure the magnitude and phase difference 
> in voltage gain of two signal chains on-site and I notice that there 
> is a random phase offset between the 2 inputs. I read the USRP Manual 
> on Device Synchronization and realize that I was tuning the 2 B200 
> asynchronously, even though I had them start streaming synchronously 
> using the external PPS. There are several things that I would like to 
> ask and clarify:
>
>  1. Does the usrp->set_command_time(cmd_time) set all the subsequent
>     command (before clear_command_time()) to start after cmd_time
>     seconds or they will start at the exact cmd_time instant in the
>     time registers?
>
The timed commands trigger at the time instant in the on-board timestamp 
registers.
>
>  1. Once I retune the 2 B200s simultaneously to centre frequency f1,
>     then the device is closed or re-tuned to other frequency, f2, if I
>     re-tune it back to center frequency f1, would the phase offset
>     between the 2 B200 RX streams be the same as original, when I
>     firstly re-tuned it?
>
No.  Since the B200 DO NOT SUPPORT timed-tuning, and since there's no 
hardware support for the necessary re-synch feature, you can't
   get a predictable phase-offset between two B200s, even with shared 
10Mhz reference, 1PPS, and the use of timed commands.
>
>  1. Does the phase offset, after re-tuning, varies with different
>     centre frequency (ie. offset at frequency f1 different from
>     frequency f2)?
>
Yes.  That's just a property of PLL synthesizers without phase re-synch.

>  1. My code was a modified version of the rx_samples_to_file.cpp, with
>     the synchronization principle mentioned below. Would it be enough
>     to make the 2 B200s synchronized with constant phase offset
>     between LOs? Besides, the program was started for a week, then
>     stopped completely, and re-started again after a few days (I
>     regard this as "device is closed", and re-initialized) , would the
>     phase offset between LO, in this case, remains constant as before
>     the stop?
>
No.  See above.

> The program I used has 2 threads, each for 1 B200. The threads' tasks 
> (after adding the LO alignment part) are:
>
>   * 1st thread: Call set_time_unknown_pps() on the 1st B200,once done,
>     send sync_signal to 2nd B200. Then use the set_command_time(3.0),
>     set_rx_freq(fc,0) and clear_command_time() for LO phase offset.
>   * 2nd thread: Keep polling the sync_signal, once it receives, use
>     set_time_next_pps(1.0) to synchronize the 2 B200. Once done, I use
>     the set_command_time(3.0), set_rx_freq(fc,0) and
>     clear_command_time() for LO phase offset.
>   * After the above steps, both threads have a while loop to keep
>     polling the value of time register for the last PPS, if it is 5
>     seconds then the stream command is issued in both threads. After
>     that, I use the rx_stream->recv to record the samples from the 2
>     B200s.
>
> Cheers,
> Bach
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------040609060409020105060704
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/14/2020 10:19 AM, Bach Nguyen via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div style="font-size:12pt">Hi all,</div>
        <div style="font-size:12pt"><br>
        </div>
        <div style="font-size:12pt">I was using my 2 B200s to measure
          the magnitude and phase difference in voltage gain of two
          signal chains on-site and I notice that there is a random
          phase offset between the 2 inputs. I read the USRP Manual on
          Device Synchronization and realize that I was tuning the 2
          B200 <span class="gmail-x_ILfuVd gmail-x_NA6bn"><span
              class="gmail-x_hgKElc">asynchronously</span></span>, even
          though I had them start streaming synchronously using the
          external PPS. There are several things that I would like to
          ask and clarify:</div>
        <div style="font-size:12pt">
          <ol>
            <li>Does the usrp-&gt;set_command_time(cmd_time) set all the
              subsequent command (before clear_command_time()) to start
              after cmd_time seconds or they will start at the exact
              cmd_time instant in the time registers?</li>
          </ol>
        </div>
      </div>
    </blockquote>
    The timed commands trigger at the time instant in the on-board
    timestamp registers.<br>
    <blockquote
cite="mid:CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div style="font-size:12pt">
          <ol>
            <li>Once I retune the 2 B200s simultaneously to centre
              frequency f1, then the device is closed or re-tuned to
              other frequency, f2, if I re-tune it back to center
              frequency f1, would the phase offset between the 2 B200 RX
              streams be the same as original, when I firstly re-tuned
              it?</li>
          </ol>
        </div>
      </div>
    </blockquote>
    No.  Since the B200 DO NOT SUPPORT timed-tuning, and since there's
    no hardware support for the necessary re-synch feature, you can't<br>
      get a predictable phase-offset between two B200s, even with shared
    10Mhz reference, 1PPS, and the use of timed commands.<br>
    <blockquote
cite="mid:CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div style="font-size:12pt">
          <ol>
            <li>Does the phase offset, after re-tuning, varies with
              different centre frequency (ie. offset at frequency f1
              different from frequency f2)?</li>
          </ol>
        </div>
      </div>
    </blockquote>
    Yes.  That's just a property of PLL synthesizers without phase
    re-synch.<br>
    <br>
    <blockquote
cite="mid:CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div style="font-size:12pt">
          <ol>
            <li>My code was a modified version of the
              rx_samples_to_file.cpp, with the synchronization principle
              mentioned below. Would it be enough to make the 2 B200s
              synchronized with constant phase offset between LOs?
              Besides, the program was started for a week, then stopped
              completely, and re-started again after a few days (I
              regard this as "device is closed", and re-initialized) ,
              would the phase offset between LO, in this case, remains
              constant as before the stop?<br>
            </li>
          </ol>
        </div>
      </div>
    </blockquote>
    No.  See above.<br>
    <br>
    <blockquote
cite="mid:CAJRKpROu58UmkPMQ2xhBwiQgBRsNY9ONjRAkcbyZ-5FTz7xgpQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div style="font-size:12pt">The program I used has 2 threads,
          each for 1 B200. The threads' tasks (after adding the LO
          alignment part) are:<br>
        </div>
        <div style="font-size:12pt">
          <ul>
            <li>1st thread: Call set_time_unknown_pps() on the 1st
              B200,once done, send sync_signal to 2nd B200. Then use the
              set_command_time(3.0), set_rx_freq(fc,0) and
              clear_command_time() for LO phase offset.<br>
            </li>
            <li>2nd thread: Keep polling the sync_signal, once it
              receives, use set_time_next_pps(1.0) to synchronize the 2
              B200. Once done, I use the set_command_time(3.0),
              set_rx_freq(fc,0) and clear_command_time() for LO phase
              offset.</li>
            <li>After the above steps, both threads have a while loop to
              keep polling the value of time register for the last PPS,
              if it is 5 seconds then the stream command is issued in
              both threads. After that, I use the rx_stream-&gt;recv to
              record the samples from the 2 B200s.</li>
          </ul>
          <div>Cheers,</div>
          <div>Bach</div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040609060409020105060704--


--===============5900983128492342846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5900983128492342846==--

