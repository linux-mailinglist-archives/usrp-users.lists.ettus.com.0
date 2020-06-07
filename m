Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9841F0A87
	for <lists+usrp-users@lfdr.de>; Sun,  7 Jun 2020 10:37:17 +0200 (CEST)
Received: from [::1] (port=51634 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhqnp-0003bO-Ry; Sun, 07 Jun 2020 04:37:13 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:45307)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jhqnm-0003Yf-Bs
 for usrp-users@lists.ettus.com; Sun, 07 Jun 2020 04:37:10 -0400
Received: by mail-qt1-f173.google.com with SMTP id y1so12297710qtv.12
 for <usrp-users@lists.ettus.com>; Sun, 07 Jun 2020 01:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=t+W9WXqgwwWcNGT3nfQPL1JirrRt0ZbZIBpXjSpSNvw=;
 b=jqMiQrNHUvLLqbwF/tLCQr5h6+0cIHRdHUdCU+K8QB4/o2Po2qwclJ38A6um3K421G
 fPnbxBSqeTdVmgfIYekKHvBg6d1nic6m7B4z9yB4YdOvma7TFglodsOxU+PwuGJIbY6R
 Lcf7Qf1sg+CKyoH43O3LlMi+3tgKJkCwsBY4WRMEaGhuuLA9b1VTibXN5eYkfbhADEdi
 dK+Qq7nYARflu4ya+MbS2Y//qe4TrtkQLNqG7FUMhgL4MlPZ2y6fiMvDknyk8A1awps8
 lO4L3oRoynr/Y7lbs5SFjVlCK/sbZYocY5uHc8O5wiPXB9tnMX9pQfuLnfepEtEjl66n
 H06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=t+W9WXqgwwWcNGT3nfQPL1JirrRt0ZbZIBpXjSpSNvw=;
 b=niC1eDMy6m1g9t/+V6M8mwNlXzSAYhZkSKFj4FsQMpkp07hGCJGoB7YAubeX3BUb9x
 sH53w9mAuU2+BTTpsgHJdwlTAp6cJngTfkG0kHp0mTqRIwiB03TK2z68wlQNus30XdGr
 0wEJ37H/46S2QLdjEczHuovYJkHZokuYIx0EZ5og+9SB19ijrgYPtJTb5oJ/QS+38b/w
 g0uYO1MSQRI/kMviReQKYBKeT7rx5zbWJZvOX//W8dD9cTcOloKvMMHGOrCW3uxdeOC2
 UTdG05Cj0Mw7VgNJe51FgCJjM6xPe07Ae6gA8tEdSQvoDpIl6Sl1Mhe/E4EKjD3YCnHB
 VoDg==
X-Gm-Message-State: AOAM532YUuuymeeSh8hCYNULtXxzp1giYezT7/ZQz/jvIS8LiXdA5E3y
 9JvclJbTjn1msXc3aIcytlmtp07wbto=
X-Google-Smtp-Source: ABdhPJzgBKNWvcN3YUo44j8l0NvIN/0kLnqzrHLimvzxF/RvIMDDj8z/t7knQKgmCsl5LI0oe5AP6g==
X-Received: by 2002:ac8:5646:: with SMTP id 6mr17885839qtt.296.1591518989635; 
 Sun, 07 Jun 2020 01:36:29 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id s124sm2778486qke.40.2020.06.07.01.36.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 07 Jun 2020 01:36:28 -0700 (PDT)
Message-ID: <5EDCA70B.1030809@gmail.com>
Date: Sun, 07 Jun 2020 04:36:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sidd Subramanyam <siddsubra@gmail.com>
References: <985418C5-CF43-4F69-A441-6233A1D0ACBB@gmail.com>
 <5EDB01A5.9050306@gmail.com>
 <CADVsdEFd1QJO4vC=fPR7cXJC-WERK8QTYS_1OMsjWAubxe7UNw@mail.gmail.com>
In-Reply-To: <CADVsdEFd1QJO4vC=fPR7cXJC-WERK8QTYS_1OMsjWAubxe7UNw@mail.gmail.com>
Subject: Re: [USRP-users] Clock Bias from board mounted GPSDO
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4738172301009588214=="
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
--===============4738172301009588214==
Content-Type: multipart/alternative;
 boundary="------------010903000000000703000501"

This is a multi-part message in MIME format.
--------------010903000000000703000501
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/06/2020 08:54 AM, Sidd Subramanyam wrote:
> Thank you for this clarification regarding the 10 MHz drift and the 1 
> PPS pulse. When you mention that the 10 MHz outputs will not precisely 
> track each other in the short run but better in the long run, could 
> you provide an estimate for the duration at which the behavior will 
> track better? My previous email had stated how in a 1 second interval 
> I was experiencing around a ~300 nanosecond drift. However, in other 
> samples I had taken spanning upto 30 seconds, this drift seemed to 
> worsen upto ~15-17 microseconds. From your email regarding how much 
> the 10 MHz deviates during the short run as well as its long term 
> behavior I’m very sure I must be doing something wrong in my code setup.
>
> I have provided some code sections of how I am attempting to 
> synchronize the time. I start this script at roughly the same time 
> (within about a couple of seconds) on both USRPs, and they begin to 
> initialize settings such as bandwidth and center frequency. I then 
> have them wait to start collection at the nearest rounded up 10 second 
> time multiple of GPS time in seconds, since the initialization can 
> take varying time for both USRPs to initialize. I also attached the 
> full code to this email.
>
> **
I don't immediately see anything wrong with your code, but of course, 
this code is just recording samples, which you are presumably
   cross-correlating in an "offline" manner post-facto?

Something you might try is to use integer-N tuning, which may result in 
a more mutually-coherent LO setting across your two
   synthesizers:

tune_req.args = uhd::device_addr_t 
<https://files.ettus.com/manual/classuhd_1_1device__addr__t.html>("mode_n=integer");

Also, you log the time when the recording is expected to take place--are 
these values actually the same in the two instances?

What sample rate are you using?  How much data are you recording?

Is this code ever triggered?

         if (time_tmp > 0.000001)
         {
             std::cout << boost::format("XX %d Get Time of USRP %f\n") % 
f % num_dropped_samps;
         }

--------------010903000000000703000501
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/06/2020 08:54 AM, Sidd
      Subramanyam wrote:<br>
    </div>
    <blockquote
cite="mid:CADVsdEFd1QJO4vC=fPR7cXJC-WERK8QTYS_1OMsjWAubxe7UNw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div style="font-family:Helvetica;font-size:12px"><font
              color="#000000">Thank you for this clarification regarding
              the 10 MHz drift and the 1 PPS pulse. When you mention
              that the 10 MHz outputs will not precisely track each
              other in the short run but better in the long run, could
              you provide an estimate for the duration at which the
              behavior will track better? My previous email had stated
              how in a 1 second interval I was experiencing around a
              ~300 nanosecond drift. However, in other samples I had
              taken spanning upto 30 seconds, this drift seemed to
              worsen upto ~15-17 microseconds. From your email regarding
              how much the 10 MHz deviates during the short run as well
              as its long term behavior I’m very sure I must be doing
              something wrong in my code setup.</font></div>
          <div style="font-family:Helvetica;font-size:12px"><font
              color="#000000"><br>
            </font></div>
          <div style="font-family:Helvetica;font-size:12px"><font
              color="#000000">I have provided some code sections of how
              I am attempting to synchronize the time. I start this
              script at roughly the same time (within about a couple of
              seconds) on both USRPs, and they begin to initialize
              settings such as bandwidth and center frequency. I then
              have them wait to start collection at the nearest rounded
              up 10 second time multiple of GPS time in seconds, since
              the initialization can take varying time for both USRPs to
              initialize. I also attached the full code to this email.</font></div>
          <div style="font-family:Helvetica;font-size:12px"><font
              color="#000000"><br>
            </font></div>
          <b style="font-family:Helvetica;font-size:12px"><font
              color="#000000"></font></b><br>
        </div>
      </div>
    </blockquote>
    I don't immediately see anything wrong with your code, but of
    course, this code is just recording samples, which you are
    presumably<br>
      cross-correlating in an "offline" manner post-facto?<br>
    <br>
    Something you might try is to use integer-N tuning, which may result
    in a more mutually-coherent LO setting across your two<br>
      synthesizers:<br>
    <br>
    <font face="monospace">tune_req.args = <a class="code"
        href="https://files.ettus.com/manual/classuhd_1_1device__addr__t.html">uhd::device_addr_t</a>(<span
        class="stringliteral">"mode_n=integer"</span>);</font><br>
    <br>
    Also, you log the time when the recording is expected to take
    place--are these values actually the same in the two instances?<br>
    <br>
    What sample rate are you using?  How much data are you recording?<br>
    <br>
    Is this code ever triggered?<br>
    <br>
    <font face="monospace">        if (time_tmp &gt; 0.000001)<br>
              {<br>
                  std::cout &lt;&lt; boost::format("XX %d Get Time of
      USRP %f\n") % f % num_dropped_samps;<br>
              }</font><br>
  </body>
</html>

--------------010903000000000703000501--


--===============4738172301009588214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4738172301009588214==--

