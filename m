Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D531F043F
	for <lists+usrp-users@lfdr.de>; Sat,  6 Jun 2020 04:39:18 +0200 (CEST)
Received: from [::1] (port=53288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhOjr-00038e-Sw; Fri, 05 Jun 2020 22:39:15 -0400
Received: from mail-qv1-f67.google.com ([209.85.219.67]:33390)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jhOjn-0002zn-Iy
 for usrp-users@lists.ettus.com; Fri, 05 Jun 2020 22:39:11 -0400
Received: by mail-qv1-f67.google.com with SMTP id e20so5746629qvu.0
 for <usrp-users@lists.ettus.com>; Fri, 05 Jun 2020 19:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=m38EV9J1yXYqu2AwJ8fwqk5tNNN0MqPz1wY4dsOkOls=;
 b=KbbBSAUmiDLL+f3W9NSVy9CAmU6fSHd25eD2m9kHb/eZnoRFVnR/IzTYAiJGmGt/lv
 A9M4D5CLs/DC24C+0KL5biYA9+Aus1+vVZRxCrGYiUj+iL5pkc4jWtNVCZal1S43pae0
 kjDEllS4ieP5AfZGAw8f1NsOTDzFLRbiVzjYo51Hg5O2FOKPSwTaeqX9vjGtTtBBKyOo
 HHNaj67HTgoz6+urSKklWYrFRKS+Ta2BxN+Amq50U/i11gDBjRhfUJUQ0ROC7zfDNV3x
 Kxyu79i1+wzs0wBGcSAjEeq6QATy5hXLpt8UBmWXVGDInFJV33D3joOW3VV7tmAzDsgL
 vozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=m38EV9J1yXYqu2AwJ8fwqk5tNNN0MqPz1wY4dsOkOls=;
 b=LwopQLmeV/ja4tTrr3XHwdwWBfrSl51Tt066LfTYbx8+hRfp23Qi6LodQ5LNfGHF3d
 2E2jR479McpihFkpEF01lRhs33hAOIUgTTdRQX/dI4pDXq8E6T8MeZ2Xs8vPcGMwB1Jl
 MeppkBSXzQrhz+abRZTBtzk56/6PLr58SFz02f+IJ7xUM23RBjCm/x7jRDQn2yckbkAN
 skLo+qmozDzhEnQhWWfNcL4tFPydO9LbgTfbFdezhoF+5erAsS5I15gKtE0QYuxeQjvo
 0DgObxCq4jmKMtXBOMhU+Sxa879YN+n+IGmTZwIe5EB5t51NXWmJ26Lwitg/lJ04jCGC
 fe5A==
X-Gm-Message-State: AOAM530j+VmnApO4q6v1VasLjxTmig4QhdQRnbapb6U/Z05sFMKiZ9gi
 iG0NhJ0EFyF7JgFXv46mISWinBhQZ4Y=
X-Google-Smtp-Source: ABdhPJyZzR7Pwbe5Jlqj2RfdUDStbT1exWRUiS4uDbgDwGJM6p5OoOU8SamOsWum0pML1jiT03ZZiw==
X-Received: by 2002:ad4:57a1:: with SMTP id g1mr11964865qvx.174.1591411110863; 
 Fri, 05 Jun 2020 19:38:30 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id t75sm1466044qke.35.2020.06.05.19.38.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jun 2020 19:38:30 -0700 (PDT)
Message-ID: <5EDB01A5.9050306@gmail.com>
Date: Fri, 05 Jun 2020 22:38:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sidd Subramanyam <siddsubra@gmail.com>
References: <985418C5-CF43-4F69-A441-6233A1D0ACBB@gmail.com>
In-Reply-To: <985418C5-CF43-4F69-A441-6233A1D0ACBB@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3217073043359491471=="
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
--===============3217073043359491471==
Content-Type: multipart/alternative;
 boundary="------------040106030804010704090506"

This is a multi-part message in MIME format.
--------------040106030804010704090506
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/05/2020 04:35 PM, Sidd Subramanyam wrote:
> ﻿ By clock bias I am referring to the difference between true GPS time 
> and the USRP time.
>
> For example, in my application I am running 2 Separate B210 USRPs each 
> side by side with a split signal coming from a single S band antenna. 
> However, they are both disciplined using separate GPSDOs with separate 
> antennas to simulate being 2 independent devices. They are being 
> synchronized as described in method 2 in this article 
> (https://files.ettus.com/manual/page_sync.html) and then the data 
> collection is being commanded to start at the same GPS time for both 
> devices.
>
> My goal is to try to create as phase coherent of an operation as 
> possible between the 2 USRPs.
> When I cross correlate the 2 split S band signals to calculate 
> difference in phase between the 2 signals, there is a significant 
> drift over time. This phase difference converted is about 300 
> nanoseconds over the course of 1 second (300 PPB).Because of this, I 
> wished to see if I could use the calculated clock bias that I 
> described above to compensate for this drift in phase.
>
> However, now that you have mentioned that I should in fact be getting 
> 1 PPB accuracy when synchronized to GPS time, I am questioning if I am 
> doing the time synchronization process wrong altogether Since I seem 
> to be getting drift around 300 PB after following the instructions in 
> the link above.
>
> Sidd
>
It would be useful to see the parts of your source-code that set up your 
devices--including clock synch, etc.

Further, I'll note that two randomly chosen GPSDO units, even connected 
to the same antenna, will be producing a 1PPS pulse up to several
   (possibly 10s) of nanoseconds different from one another--which is 
the typical spec on the 1PPS pulse.

In *addition* to this, two (or more) GPSDOs will not produce a 10MHz 
output that precisely track each other, even when connected to the
   same antenna.  Their long-term behavior is good, but short-term, they 
can disagree with one another, in my experience, so building a
   perfectly-coherent system from two separate GPSDO units doesn't work 
nearly as well as you might hope, particularly not a lower-cost
   unit such as is used in the B2xx (where "lower cost" is kind of a 
relative term--the high-end GPSDOs that use a local Rb oscillator are
   considerably pricey, but not easily packaged into something like the 
USRP B210).



--------------040106030804010704090506
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/05/2020 04:35 PM, Sidd
      Subramanyam wrote:<br>
    </div>
    <blockquote
      cite="mid:985418C5-CF43-4F69-A441-6233A1D0ACBB@gmail.com"
      type="cite">
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
      <div dir="ltr">
        <div dir="ltr">
          <meta http-equiv="content-type" content="text/html;
            charset=utf-8">
          <div dir="ltr">﻿
            <meta http-equiv="content-type" content="text/html;
              charset=utf-8">
            By clock bias I am referring to the difference between true
            GPS time and the USRP time.</div>
          <div dir="ltr"><br>
            <div>For example, in my application I am running 2 Separate
              B210 USRPs each side by side with a split signal coming
              from a single S band antenna. However, they are both
              disciplined using separate GPSDOs with separate antennas
              to simulate being 2 independent devices. They are being
              synchronized as described in method 2 in this article (<a
                moz-do-not-send="true"
                href="https://files.ettus.com/manual/page_sync.html">https://files.ettus.com/manual/page_sync.html</a>)
              and then the data collection is being commanded to start
              at the same GPS time for both devices. </div>
            <div><br>
            </div>
            <div>My goal is to try to create as phase coherent of an
              operation as possible between the 2 USRPs.</div>
            <div>When I cross correlate the 2 split S band signals to
              calculate difference in phase between the 2 signals, there
              is a significant drift over time. This phase difference
              converted is about 300 nanoseconds over the course of 1
              second (300 PPB).Because of this, I wished to see if I
              could use the calculated clock bias that I described above
              to compensate for this drift in phase. </div>
            <div><br>
            </div>
            <div>However, now that you have mentioned that I should in
              fact be getting 1 PPB accuracy when synchronized to GPS
              time, I am questioning if I am doing the time
              synchronization process wrong altogether Since I seem to
              be getting drift around 300 PB after following the
              instructions in the link above.</div>
            <div><br>
            </div>
            <div>Sidd</div>
            <div> </div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    It would be useful to see the parts of your source-code that set up
    your devices--including clock synch, etc.<br>
    <br>
    Further, I'll note that two randomly chosen GPSDO units, even
    connected to the same antenna, will be producing a 1PPS pulse up to
    several<br>
      (possibly 10s) of nanoseconds different from one another--which is
    the typical spec on the 1PPS pulse.<br>
    <br>
    In *addition* to this, two (or more) GPSDOs will not produce a 10MHz
    output that precisely track each other, even when connected to the<br>
      same antenna.  Their long-term behavior is good, but short-term,
    they can disagree with one another, in my experience, so building a<br>
      perfectly-coherent system from two separate GPSDO units doesn't
    work nearly as well as you might hope, particularly not a lower-cost<br>
      unit such as is used in the B2xx (where "lower cost" is kind of a
    relative term--the high-end GPSDOs that use a local Rb oscillator
    are<br>
      considerably pricey, but not easily packaged into something like
    the USRP B210).<br>
    <br>
    <br>
  </body>
</html>

--------------040106030804010704090506--


--===============3217073043359491471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3217073043359491471==--

