Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEEB177DA5
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 18:42:01 +0100 (CET)
Received: from [::1] (port=36882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9BYO-0006Yq-9x; Tue, 03 Mar 2020 12:42:00 -0500
Received: from mail-qk1-f181.google.com ([209.85.222.181]:33228)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1j9BYJ-0006J2-Rb
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 12:41:55 -0500
Received: by mail-qk1-f181.google.com with SMTP id p62so4266598qkb.0
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 09:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=t7VE+WmrAW6Vjj1A9xMZm0Zbq+inMsNeGxf/4KkAxYc=;
 b=urOgV3jBdvKGdkblVZyZPC/I4PNubbhymZxN8Fzf0Ji6ojpI5VByLJh6DwmAj/TqpZ
 nMhUCXhV2HgXgfJHXkGEeEtX2VEbNzBka649MTNPdZ7JcuKvzEjK63XL9Y1m7esuYiXj
 e8GKKTjKoCIaMCZ8p8umKaS3bugfe3Q3tvFGHMvgP/+LcChyEAzuHmSbLtdIC4yukJwy
 I4ALLqcV2itxouHcEcohMXxTZOQaZ/O2lBUPsHlH3rADErn9M7kb1Yf6vc0ZdUNS4tKf
 Jppxe1XurZolds1L7Me2vHSQVV3aM09zy5HmZUTUzn/yO5kS60mrGbz4cQbbEROX5+29
 mcXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=t7VE+WmrAW6Vjj1A9xMZm0Zbq+inMsNeGxf/4KkAxYc=;
 b=NhWH2rfUX1IWu0a9CrGyIf/3iRMlYmXouudPSNjudmu8BOy+JUb+vRTLPswE13Ju0c
 JwoI6UR984dWGdMtzgXA8WPd+bIP2BuMeSns8EZmIrqVc3dtxMZbo3xTEE3XuilE+rYQ
 iq+kXVfL6zdSz1MfbIO0BXGkAVsDf/HmE7lQhIaB42bjugzcPwB3S+kxDDycmpwG3RST
 jiGeFWo1PkCnCbbxgbfQFKiCZSWhtEGa4syaiA+SsXO1RCKdmc40dgkb5qQhQ8/unBdU
 NlPhoWOjHelI5IpX+muQyDgyPSvo+zIAsjRztLslzAkVGPEYYMGitF9dnkczS8zPba0l
 dQDA==
X-Gm-Message-State: ANhLgQ1robbEHLyCNf2FUugOVXSLBtZRnIwRrovpBgONpYv+8jCQslh3
 DdTuQLGv2q2BPUgw2xuSEBGlJfpjxfU=
X-Google-Smtp-Source: ADFU+vv80gDHtm/zh2NESblmya8Jj7ai0xrxyyiOqVTzkeXN8vbfIYZL0M9ZKuljCmdUT8stu8Y8WQ==
X-Received: by 2002:a05:620a:698:: with SMTP id
 f24mr5347474qkh.476.1583257275197; 
 Tue, 03 Mar 2020 09:41:15 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id 17sm9905351qkc.81.2020.03.03.09.41.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Mar 2020 09:41:14 -0800 (PST)
Message-ID: <5E5E96BA.5010905@gmail.com>
Date: Tue, 03 Mar 2020 12:41:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
 <CAB__hTSgAJcWu=AwsRYs6HmGYMOqk1kAKC4fFgmVWVd8Fw0THQ@mail.gmail.com>
 <CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com>
In-Reply-To: <CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com>
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
Content-Type: multipart/mixed; boundary="===============3929852486187288849=="
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
--===============3929852486187288849==
Content-Type: multipart/alternative;
 boundary="------------000303020303060903080000"

This is a multi-part message in MIME format.
--------------000303020303060903080000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/03/2020 12:08 PM, Sam Reiter via USRP-users wrote:
> For what it's worth, I was able to reproduce the behavior described 
> here, but didn't get to dig into it much. My leading suspicion would 
> be what Rob mentioned about timestamping. Lukas' code sets a command 
> time, but I'm not clear on how timestamp metadata for packets being 
> sent to the radio are handled. Might be a good question to loop the 
> discuss-gnuradio mailing list in on?
>
> Sam Reiter
Timed commands, I thought, were ALWAYS referred to the motherboard 
clock, without regard to timestamps in the stream?


>
> On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     I wonder if the issue is related to a missing time stamp on the
>     baseband samples going from GR to UHD.  If the stream does not
>     have a time stamp, the DUC is unable to apply the timed command
>     because the DUC does not really know the time - it must pull the
>     time from the streaming samples. This is in contrast to the radio
>     block which does have access to time and can apply timed commands
>     by referring to the motherboard clock.
>
>     I am not too familiar with GR so I'm not sure how to know if GR is
>     putting a time stamp on the streaming samples.
>     Rob
>
>     On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         Hi Marcus,
>
>         Thank you that would be amazing!
>
>         I followed the tutorial and built everything from source:
>
>         $ lsb_release -a
>         No LSB modules are available.
>         Distributor ID: Ubuntu
>         Description:    Ubuntu 18.04.4 LTS
>         Release:        18.04
>         Codename:       bionic
>         $ uname -a
>         Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3
>         14:05:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
>         $ cd uhd
>         $ git status
>         HEAD detached at v3.15.0.0
>         $ cd ../gnuradio
>         $ git status
>         HEAD detached at v3.7.14.0
>
>
>         Thank you!
>
>         Lukas
>
>
>
>         PS: For some reason I sometimes do not get responses from this
>         list. I just saw it looking at the mailman archives. Hence I
>         cannot respond (to keep headers intact) but need to create a
>         new message and manually "quote". I hope that still preserves
>         the context somehow.
>
>
>
>         Marcus Leech wrote:
>         > On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
>         >> Hi again,
>         >>
>         >> I created a minimum example (gnuradio) that shows the issue
>         described below.
>         >> To summarize: Retuning to a different dsp frequency on an
>         USRP X310 (+UBX160) does not work (command ignored) ONLY if a
>         timed command (in future is used).
>         >> The code shows it in a simple manner. Commenting out the
>         single line with set_command_time makes the example work.
>         >>
>         >> I am absolutely out of ideas and would appreciate any input!
>         >>
>         >> Best,
>         >> Lukas
>         > Lukas.
>         >
>         > Thanks for sticking with this.  I'll have a discussion with
>         Ettus R&D to
>         > see if this is a known issue and/or if there's a workaround.
>         >
>         > Remind me which version of UHD you're using?
>
>
>
>         _______________________________________________
>         USRP-users mailing list
>         USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>         http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------000303020303060903080000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 03/03/2020 12:08 PM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com"
      type="cite">
      <div dir="ltr">For what it's worth, I was able to reproduce the
        behavior described here, but didn't get to dig into it much. My
        leading suspicion would be what Rob mentioned about
        timestamping. Lukas' code sets a command time, but I'm not clear
        on how timestamp metadata for packets being sent to the radio
        are handled. Might be a good question to loop the
        discuss-gnuradio mailing list in on?
        <div>
          <div><br clear="all">
            <div>
              <div dir="ltr" class="gmail_signature"
                data-smartmail="gmail_signature">
                <div dir="ltr">
                  <div>
                    <div dir="ltr">Sam Reiter <br>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Timed commands, I thought, were ALWAYS referred to the motherboard
    clock, without regard to timestamps in the stream?<br>
    <br>
    <br>
    <blockquote
cite="mid:CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Mar 3, 2020 at 10:59
          AM Rob Kossler via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">I wonder if the issue is related to a missing
            time stamp on the baseband samples going from GR to UHD.  If
            the stream does not have a time stamp, the DUC is unable to
            apply the timed command because the DUC does not really know
            the time - it must pull the time from the streaming samples.
            This is in contrast to the radio block which does have
            access to time and can apply timed commands by referring to
            the motherboard clock.
            <div><br>
            </div>
            <div>I am not too familiar with GR so I'm not sure how to
              know if GR is putting a time stamp on the streaming
              samples.<br>
              <div>Rob</div>
            </div>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Mon, Mar 2, 2020 at
              10:04 AM Lukas Haase via USRP-users &lt;<a
                moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">Hi Marcus,<br>
              <br>
              Thank you that would be amazing!<br>
              <br>
              I followed the tutorial and built everything from source:<br>
              <br>
              $ lsb_release -a<br>
              No LSB modules are available.<br>
              Distributor ID: Ubuntu<br>
              Description:    Ubuntu 18.04.4 LTS<br>
              Release:        18.04<br>
              Codename:       bionic<br>
              $ uname -a<br>
              Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb
              3 14:05:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux<br>
              $ cd uhd<br>
              $ git status<br>
              HEAD detached at v3.15.0.0<br>
              $ cd ../gnuradio<br>
              $ git status<br>
              HEAD detached at v3.7.14.0<br>
              <br>
              <br>
              Thank you!<br>
              <br>
              Lukas<br>
              <br>
              <br>
              <br>
              PS: For some reason I sometimes do not get responses from
              this list. I just saw it looking at the mailman archives.
              Hence I cannot respond (to keep headers intact) but need
              to create a new message and manually "quote". I hope that
              still preserves the context somehow.<br>
              <br>
              <br>
              <br>
              Marcus Leech wrote:<br>
              &gt; On 02/28/2020 01:01 PM, Lukas Haase via USRP-users
              wrote:<br>
              &gt;&gt; Hi again,<br>
              &gt;&gt;<br>
              &gt;&gt; I created a minimum example (gnuradio) that shows
              the issue described below.<br>
              &gt;&gt; To summarize: Retuning to a different dsp
              frequency on an USRP X310 (+UBX160) does not work (command
              ignored) ONLY if a timed command (in future is used).<br>
              &gt;&gt; The code shows it in a simple manner. Commenting
              out the single line with set_command_time makes the
              example work.<br>
              &gt;&gt;<br>
              &gt;&gt; I am absolutely out of ideas and would appreciate
              any input!<br>
              &gt;&gt;<br>
              &gt;&gt; Best,<br>
              &gt;&gt; Lukas<br>
              &gt; Lukas.<br>
              &gt;<br>
              &gt; Thanks for sticking with this.  I'll have a
              discussion with Ettus R&amp;D to<br>
              &gt; see if this is a known issue and/or if there's a
              workaround.<br>
              &gt;<br>
              &gt; Remind me which version of UHD you're using?<br>
              <br>
              <br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a moz-do-not-send="true"
                href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
              <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
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

--------------000303020303060903080000--


--===============3929852486187288849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3929852486187288849==--

