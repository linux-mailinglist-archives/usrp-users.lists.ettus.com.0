Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6098DDDE
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 21:24:30 +0200 (CEST)
Received: from [::1] (port=60216 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxysl-0006qL-Nh; Wed, 14 Aug 2019 15:24:27 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:38319)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hxysi-0006lU-MA
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 15:24:24 -0400
Received: by mail-qt1-f170.google.com with SMTP id x4so13365948qts.5
 for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2019 12:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=3jkoQ/266onbGdKIB/ZDRxZtZ3cx4HELKhCSY/RuQAM=;
 b=E0TD6DIPiaELl2ex3SpWiUCO7ctoYQpip4eMdjYk4iEiuqv6qC+wvgxD60pMFhFl+d
 PZaKx+mlh8x4sXqriKdROMRTMHp7VP/jaje+rOordx5jbku+K4vJaWAWJT9+HOfQ2m7y
 3CDYROtCslUC1dEAh0ygPqpj7OMwOd6sdKB9Pu1fey5U+LFK3nVX6Rdp5i89TQX8P79f
 grFTlhI9jSjSPxWG02k62zfDyctDbLHn/U9XukR08S+xEQ3VLLuf1hzmMjdCcs1t1MOF
 FEVT3hh2GOwHV5T5OFtrIlUdH+Up/+hNDJvDuFk7vPnUIomzojDkJpYHh0Ys2AwgGhBZ
 eSZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=3jkoQ/266onbGdKIB/ZDRxZtZ3cx4HELKhCSY/RuQAM=;
 b=pFY4zHl1E+yr9/idi0GhZ7lvrPZo2mX200DBJh0RSPJAO5Rc0LAmEG2C6qu3Q9046J
 kX32Mwa0cgJYkmyFS0NxfmeQjOuzJL8mLzxjmIQjETgYPTJ7XhIG94ebwKGGKXDlKooU
 8oNYjayLJgL552VVbmyp7YrGLyzTigr0OSHbMJ/ukQCX6y3gjauZ5AiZVvfmRs7T5+9J
 F69Do2fP/OKV+3KclYkZ5JTsZZu6jRZJIFWihirSwCMSniedfqRWhGR1rS15R1GJJmy0
 S27qxUZgCohZlX5vcq4E17N20pCittUq6pmsb4XeCg1RHPHNdTg7HNIsv5v9G1Oy4sxU
 NaoQ==
X-Gm-Message-State: APjAAAUBKrls3p9taN4eUKwwjPALUdbIK9tO4xyderDt7tejv+Aq2NEG
 ho4qTa3kIsiklz4fsFXM77OS+vMR
X-Google-Smtp-Source: APXvYqzxq0SRkJQDUfTDLNUZ3c/mC7Wex6vj9aH1FkinJ4XX3GUNKuu2Vd/CANI5aFiev2tBbfJMRQ==
X-Received: by 2002:ac8:5219:: with SMTP id r25mr927587qtn.43.1565810623966;
 Wed, 14 Aug 2019 12:23:43 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id g25sm340544qkk.87.2019.08.14.12.23.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 12:23:43 -0700 (PDT)
Message-ID: <5D545FBE.6010909@gmail.com>
Date: Wed, 14 Aug 2019 15:23:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Tellrell White <t_whit_87@yahoo.com>, usrp-users@lists.ettus.com
References: <1754624003.3660157.1565753634913.ref@mail.yahoo.com>
 <1754624003.3660157.1565753634913@mail.yahoo.com> <5D5382D4.60007@gmail.com>
 <451633320.3650050.1565757496009@mail.yahoo.com> <5D5414F4.6070501@gmail.com>
 <979073040.3843554.1565804979556@mail.yahoo.com>
In-Reply-To: <979073040.3843554.1565804979556@mail.yahoo.com>
Subject: Re: [USRP-users] UHD Error with X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============9138336876167625487=="
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
--===============9138336876167625487==
Content-Type: multipart/alternative;
 boundary="------------020305090300090304070705"

This is a multi-part message in MIME format.
--------------020305090300090304070705
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/14/2019 01:49 PM, Tellrell White wrote:
> Marcus
> I am running this in a Linux based VM running Ubuntu 16.04 LTS. The 
> laptop I'm using is a Dell Precision 7730 with a Intel Xeon processor 
> w/ cpu @ 2.90 GHz. It also has 64 GB or RAM. I'm using the 1 GbE on 
> Ethernet port 0 on the X310. I'm using a sample rate of 1 MHz and 
> center freq of 2.45 Ghz. Also, i'm using an older version of GNU 
> Radio: 3.7.7
VM ethernet performance and reliability has not been that good.  Can you 
try this on "bare metal"??

Also, what happens if you just use one of the UHD test tools, like 
"benchmark_rate" ?


>
> On Wednesday, August 14, 2019, 10:04:39 AM EDT, Marcus D. Leech 
> <patchvonbraun@gmail.com> wrote:
>
>
> On 08/14/2019 12:38 AM, Tellrell White wrote:
>> Marcus
>>
>>
>>
>> However, I re-flashed the device with " uhd_image_loader --args 
>> type=x300" , power cycled and after running uhd_usrp_probe
>> get what's shown below. This doesn't seem to be the new image. It's 
>> showing RFNoC blocks from a previous image that was installed prior 
>> to my use and when I try to run a flowgraph I'm getting the same 
>> error as mentioned in my previous message. Ideas??
> These just look like the standard RFNOC blocks for X310.   Keep in 
> mind that internally, for several releases, UHD uses RFNOC, even if your
>   code doesn't.
>
> What type of hardware is this running on?  What kind of ethernet 
> interface is connected to the X310?
>
> What sample rate are you using?
>
> What OS version?  Within a VM, or on raw hardware?
>
>
>


--------------020305090300090304070705
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/14/2019 01:49 PM, Tellrell White
      wrote:<br>
    </div>
    <blockquote
      cite="mid:979073040.3843554.1565804979556@mail.yahoo.com"
      type="cite">
      <div class="ydp77728d86yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;"> </div>
      <div class="ydp77728d86yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;" dir="ltr" data-setdir="false">Marcus</div>
      <div class="ydp77728d86yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;" dir="ltr" data-setdir="false">I am
        running this in a Linux based VM running Ubuntu 16.04 LTS. The
        laptop I'm using is a Dell Precision 7730 with a Intel Xeon
        processor w/ cpu @ 2.90 GHz. It also has 64 GB or RAM. I'm using
        the 1 GbE on Ethernet port 0 on the X310. I'm using a sample
        rate of 1 MHz and center freq of 2.45 Ghz. Also, i'm using an
        older version of GNU Radio: 3.7.7</div>
    </blockquote>
    VM ethernet performance and reliability has not been that good.  Can
    you try this on "bare metal"??<br>
    <br>
    Also, what happens if you just use one of the UHD test tools, like
    "benchmark_rate" ?<br>
    <br>
    <br>
    <blockquote
      cite="mid:979073040.3843554.1565804979556@mail.yahoo.com"
      type="cite">
      <div class="ydp77728d86yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;"><br>
      </div>
      <div class="ydp77728d86yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;"> </div>
      <div class="yahoo_quoted" id="yahoo_quoted_6414121447">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On Wednesday, August 14, 2019, 10:04:39 AM EDT, Marcus
            D. Leech <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id="yiv5869272306">
              <div>
                <div class="yiv5869272306yqt7379963785"
                  id="yiv5869272306yqtfd40325">
                  <div class="yiv5869272306moz-cite-prefix">On
                    08/14/2019 12:38 AM, Tellrell White wrote:<br
                      clear="none">
                  </div>
                </div>
                <blockquote type="cite">
                  <div class="yiv5869272306yqt7379963785"
                    id="yiv5869272306yqtfd68699">
                    <div
                      class="yiv5869272306ydpfeed99a8yahoo-style-wrap"
                      style="font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;"> </div>
                    <div
                      class="yiv5869272306ydpfeed99a8yahoo-style-wrap"
                      style="font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;" dir="ltr">Marcus </div>
                    <br clear="none">
                    <div
                      class="yiv5869272306ydpfeed99a8yahoo-style-wrap"
                      style="font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;"><br
                        clear="none">
                    </div>
                    <div
                      class="yiv5869272306ydpfeed99a8yahoo-style-wrap"
                      style="font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;"><br
                        clear="none">
                    </div>
                    <div
                      class="yiv5869272306ydpfeed99a8yahoo-style-wrap"
                      style="font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;" dir="ltr">
                      <div
                        class="yiv5869272306ydpfeed99a8yahoo-style-wrap"
                        style="text-align:left;color:rgb(0, 0,
                        0);text-transform:none;text-indent:0px;letter-spacing:normal;font-family:Helvetica
                        Neue, Helvetica, Arial,
sans-serif;font-size:13px;font-style:normal;font-variant:normal;font-weight:400;text-decoration:none;word-spacing:0px;white-space:normal;orphans:2;"
                        dir="ltr">However, I re-flashed the device with
                        " <span><span style="background-color:rgb(255,
                            255, 255);color:rgb(29, 34,
                            40);display:inline;float:none;font-family:Helvetica
                            Neue, Helvetica, Arial,
sans-serif;font-size:13px;font-style:normal;font-variant:normal;font-weight:400;letter-spacing:normal;orphans:2;text-align:left;text-decoration:none;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;">uhd_image_loader
                            --args type=x300</span></span>" , power
                        cycled and after running uhd_usrp_probe </div>
                    </div>
                    <div
                      class="yiv5869272306ydpfeed99a8yahoo-style-wrap"
                      style="font-family:Helvetica Neue, Helvetica,
                      Arial, sans-serif;font-size:13px;" dir="ltr"> get
                      what's shown below. This doesn't seem to be the
                      new image. It's showing RFNoC blocks from a
                      previous image that was installed prior to my use
                      and when I try to run a flowgraph I'm getting the
                      same error as mentioned in my previous message.
                      Ideas??</div>
                  </div>
                </blockquote>
                These just look like the standard RFNOC blocks for
                X310.   Keep in mind that internally, for several
                releases, UHD uses RFNOC, even if your<br clear="none">
                  code doesn't.<br clear="none">
                <br clear="none">
                What type of hardware is this running on?  What kind of
                ethernet interface is connected to the X310?<br
                  clear="none">
                <br clear="none">
                What sample rate are you using?<br clear="none">
                <br clear="none">
                What OS version?  Within a VM, or on raw hardware?
                <div class="yiv5869272306yqt7379963785"
                  id="yiv5869272306yqtfd27642"><br clear="none">
                  <br clear="none">
                  <br clear="none">
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

--------------020305090300090304070705--


--===============9138336876167625487==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9138336876167625487==--

