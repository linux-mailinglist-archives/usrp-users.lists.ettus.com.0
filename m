Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A650D20BB87
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 23:27:12 +0200 (CEST)
Received: from [::1] (port=37450 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jovsL-0004xP-1v; Fri, 26 Jun 2020 17:27:09 -0400
Received: from mail-qv1-f44.google.com ([209.85.219.44]:38028)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jovsG-0004t1-Sq
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 17:27:04 -0400
Received: by mail-qv1-f44.google.com with SMTP id m9so5153701qvx.5
 for <usrp-users@lists.ettus.com>; Fri, 26 Jun 2020 14:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=6/1u7jI9H5Y9zTJhVN3+ORsvar+tBIx2rbIfL6xFkoY=;
 b=h1jy9aBCKsw61V3rTTXV9WF/rATxERmxG/v9Ob630G64vUDNdflXWlRu6Lcug3Ql7K
 KmjpAypWq5hG7B4HNclz/ODQ9peJLVf4+4R6aPEJktbcDoR8Wp8y2U5Xoz0B1yWc11As
 r8kpuqSCDhDjXpXH5SgiurZ7gfyFNYFR7NYYRdOBz9vdOC7xNNaV0VA4Yb8gt77P4oin
 K3YsYNZPbpFblzp4Dv8hGteqjBsjHDQoIByml7PLfwQbuZ8SllflZIY4OGcjoz3F/94A
 fRw+Up+kvQ0i/Mb7DOYhw79PaCczthR30drnjj6d9jMLW9lEaNupauSMI0dp2FtE59P4
 cxfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=6/1u7jI9H5Y9zTJhVN3+ORsvar+tBIx2rbIfL6xFkoY=;
 b=iWp2AtPVSopK2k4o6MzMRSQODfGfLrelXmcodQ5nZIWUrszehy6a7DzhpGjIwEZcAs
 rfaH62/S347Pg9APIl2vAePkAjuzHY8XYQi9O9ipRs6ZOFHkbZMvNMcbY5PBvV2otbMl
 Nh8AnPJSs9xv/Bp+bUmNZxjEX+5bBrn19JJDqttyGhIul9QIsK1tIH209Xztg6a2HxoJ
 wZtsCeEEmt/VZchLRaRB4RyPM25tzK49v4lg+0pgB7TJRIHQni1I0rwha7qXXx7cP/3N
 UfI9n/gjeAnuF65bC/ZewPBaBscKUa5PSfq+duAYLKNoeMFTuj8ztloZN8oOwsmI+eqi
 /m2A==
X-Gm-Message-State: AOAM533Tks2VN/YIB2HuTtYnRktn2EKakcc7/GQH0LmrZnI7TojqXMG3
 GFWznDGr/jd8BLIrd+dh8WRXXl9HkVJr+Q==
X-Google-Smtp-Source: ABdhPJwFChG1zwqua7iJc2VnvMla78H7yToHeMCjI9cPt52IY0usxv6pPXAJfgYvLLOnaucGSIROCQ==
X-Received: by 2002:ad4:44a6:: with SMTP id n6mr4916322qvt.113.1593206784122; 
 Fri, 26 Jun 2020 14:26:24 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id i8sm4133234qtr.90.2020.06.26.14.26.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jun 2020 14:26:23 -0700 (PDT)
Message-ID: <5EF667FE.3080502@gmail.com>
Date: Fri, 26 Jun 2020 17:26:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Daniel Tajik <tajikd@mcmaster.ca>
CC: usrp-users@lists.ettus.com
References: <CAMuWo5trjDhxSOc0sKbw9-SshYmTKHv2UWM+aPa1v7t+a04Lyw@mail.gmail.com>
 <5EF5536B.5060500@gmail.com>
 <CAMuWo5sGe1Ce8MEeK1T9s2kKgY+h8eY-S205nM89LTnqLWHFtA@mail.gmail.com>
 <5EF588CD.70001@gmail.com>
 <CAMuWo5suz2RF20UYxmmRsp=xq7KHE0wu3377-R6UNc1t+JUQ7Q@mail.gmail.com>
In-Reply-To: <CAMuWo5suz2RF20UYxmmRsp=xq7KHE0wu3377-R6UNc1t+JUQ7Q@mail.gmail.com>
Subject: Re: [USRP-users] B210 Loopback Exponential Decay in Burst Messaging
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
Content-Type: multipart/mixed; boundary="===============0554398461447035450=="
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
--===============0554398461447035450==
Content-Type: multipart/alternative;
 boundary="------------010909050202030206080403"

This is a multi-part message in MIME format.
--------------010909050202030206080403
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/26/2020 01:53 PM, Daniel Tajik wrote:
> I was able to clean up my signals by downconverting on the Rx side 
> with a frequency offset, then using one of GNURadio's xlating filters 
> to shift it back to the 0 frequency and filter out all irrelevant 
> responses.
You can have UHD and the B2xx do this for you, using offset tuning so 
you don't need an xlating filter block in GR.

You can simply pass:

uhd.tune_request(desired_freq,desired_offset)

Into the block where it normally takes a (float) frequency

You might need to import uhd in an import block as well.




>
> It's a little bit confusing that the B210 doesn't seem to have any 
> indicator that the DC offset is enabled. Indeed I spent several hours 
> adjusting the FE corrections block on GNURadio where it says I can 
> enable/disable those options.
It will tell you at runtime if the setting is anything other than 
"default" as far as I remember.

The GR UHD blocks really have no idea until *runtime* exactly what 
they're going to be talking to, so having them "understand" what the
   individual foibles of the plethora of different device types and 
configurations actually "mean" would be daunting, and prone to
   maint issues.  So, the blocks are general, and not device-specific.


>
> Thanks for your help!
>
> Dan
>
> On Fri, Jun 26, 2020 at 1:34 AM Marcus D. Leech 
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     On 06/25/2020 11:14 PM, Daniel Tajik wrote:
>     > Hey Marcus!
>     >
>     > Yep, my configuration has the recommended 30 dB attenuation. I
>     haven't
>     > maxed out either gain stages to avoid risking anything, mostly sit
>     > around 50 dB on both Rx and Tx side, as its recommended to also
>     use at
>     > least half the gain available to achieve a suitable noise figure.
>     >
>     > No frequency hopping here, just ran a couple tests to see if
>     different
>     > carrier frequencies would improve the behaviour, which it did
>     not. I
>     > primarily run the test at 435 MHz, and the overall bandwidth I'm
>     > looking at is 25 KHz. My GFSK modulation is squeezed in between
>     that
>     > at the 6.25 KHz deviation. As for half/full duplex, the test I am
>     > running is a single channel loopback test on a B210, so the
>     transmit
>     > and receive port are both running at the same time (i.e. Full
>     duplex).
>     >
>     > Still not sure what the problem is in my implementation. I
>     assume its
>     > something internal? LO leakage or some sort of cross-coupling
>     > somewhere? I've read that operating Rx and Tx at nearby frequencies
>     > can lead to interference issues but I'm not sure if this
>     exponential
>     > decay in a burst transmission is how it manifests itself in my
>     > implementation. Any other tests I can try to explore the cause
>     of this?
>     >
>     > Thanks!
>     >
>     I would try using offset tuning on the RX side.  The B2xx series
>     doesn't
>     actually have a way of disablng DC offset removal as far as I
>     know--it's
>        always on.
>
>
>
>
> -- 
> Daniel Tajik
>
> PhD Student, EMVi Research Laboratory
> Department Electrical and Computer Engineering
> McMaster University
> 1280 Main Street West, ITB-A201
> Hamilton, ON, Canada L8S 4K1
> tajikd@mcmaster.ca
> <mailto:tajikd@mcmaster.ca>


--------------010909050202030206080403
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/26/2020 01:53 PM, Daniel Tajik
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAMuWo5suz2RF20UYxmmRsp=xq7KHE0wu3377-R6UNc1t+JUQ7Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>I was able to clean up my signals by downconverting on the
          Rx side with a frequency offset, then using one of GNURadio's
          xlating filters to shift it back to the 0 frequency and filter
          out all irrelevant responses. <br>
        </div>
      </div>
    </blockquote>
    You can have UHD and the B2xx do this for you, using offset tuning
    so you don't need an xlating filter block in GR.<br>
    <br>
    You can simply pass:<br>
    <br>
    uhd.tune_request(desired_freq,desired_offset)<br>
    <br>
    Into the block where it normally takes a (float) frequency<br>
    <br>
    You might need to import uhd in an import block as well.<br>
    <br>
    <br>
    <br>
    <br>
    <blockquote
cite="mid:CAMuWo5suz2RF20UYxmmRsp=xq7KHE0wu3377-R6UNc1t+JUQ7Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>It's a little bit confusing that the B210 doesn't seem to
          have any indicator that the DC offset is enabled. Indeed I
          spent several hours adjusting the FE corrections block on
          GNURadio where it says I can enable/disable those options.</div>
      </div>
    </blockquote>
    It will tell you at runtime if the setting is anything other than
    "default" as far as I remember.<br>
    <br>
    The GR UHD blocks really have no idea until *runtime* exactly what
    they're going to be talking to, so having them "understand" what the<br>
      individual foibles of the plethora of different device types and
    configurations actually "mean" would be daunting, and prone to<br>
      maint issues.  So, the blocks are general, and not
    device-specific.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAMuWo5suz2RF20UYxmmRsp=xq7KHE0wu3377-R6UNc1t+JUQ7Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div><br>
        </div>
        <div>Thanks for your help!</div>
        <div><br>
          Dan</div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, Jun 26, 2020 at 1:34
            AM Marcus D. Leech &lt;<a moz-do-not-send="true"
              href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">On 06/25/2020 11:14 PM,
            Daniel Tajik wrote:<br>
            &gt; Hey Marcus!<br>
            &gt;<br>
            &gt; Yep, my configuration has the recommended 30 dB
            attenuation. I haven't <br>
            &gt; maxed out either gain stages to avoid risking anything,
            mostly sit <br>
            &gt; around 50 dB on both Rx and Tx side, as its recommended
            to also use at <br>
            &gt; least half the gain available to achieve a suitable
            noise figure.<br>
            &gt;<br>
            &gt; No frequency hopping here, just ran a couple tests to
            see if different <br>
            &gt; carrier frequencies would improve the behaviour, which
            it did not. I <br>
            &gt; primarily run the test at 435 MHz, and the overall
            bandwidth I'm <br>
            &gt; looking at is 25 KHz. My GFSK modulation is squeezed in
            between that <br>
            &gt; at the 6.25 KHz deviation. As for half/full duplex, the
            test I am <br>
            &gt; running is a single channel loopback test on a B210, so
            the transmit <br>
            &gt; and receive port are both running at the same time
            (i.e. Full duplex).<br>
            &gt;<br>
            &gt; Still not sure what the problem is in my
            implementation. I assume its <br>
            &gt; something internal? LO leakage or some sort of
            cross-coupling <br>
            &gt; somewhere? I've read that operating Rx and Tx at nearby
            frequencies <br>
            &gt; can lead to interference issues but I'm not sure if
            this exponential <br>
            &gt; decay in a burst transmission is how it manifests
            itself in my <br>
            &gt; implementation. Any other tests I can try to explore
            the cause of this?<br>
            &gt;<br>
            &gt; Thanks!<br>
            &gt;<br>
            I would try using offset tuning on the RX side.  The B2xx
            series doesn't <br>
            actually have a way of disablng DC offset removal as far as
            I know--it's<br>
               always on.<br>
            <br>
            <br>
          </blockquote>
        </div>
        <br clear="all">
        <div><br>
        </div>
        -- <br>
        <div dir="ltr">
          <div dir="ltr">
            <div>
              <div dir="ltr">
                <div dir="ltr">
                  <div dir="ltr">
                    <div dir="ltr">
                      <div dir="ltr">Daniel Tajik</div>
                      <div dir="ltr"><font size="2"><br>
                        </font>
                        <div>
                          <div style="font-size:small">PhD Student, EMVi
                            Research Laboratory</div>
                          <div style="font-size:small">Department
                            Electrical and Computer Engineering</div>
                          <div style="font-size:small">McMaster
                            University</div>
                          <div style="font-size:small"><span
                              style="font-size:12.8px">1280 Main Street
                              West, ITB-A201</span><br
                              style="font-size:12.8px">
                            <span style="font-size:12.8px">Hamilton, ON,
                              Canada L8S 4K1</span><br>
                          </div>
                          <div style="font-size:small"><a
                              moz-do-not-send="true"
                              href="mailto:tajikd@mcmaster.ca"
                              style="color:rgb(17,85,204)"
                              target="_blank">tajikd@mcmaster.ca<br>
                            </a></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010909050202030206080403--


--===============0554398461447035450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0554398461447035450==--

