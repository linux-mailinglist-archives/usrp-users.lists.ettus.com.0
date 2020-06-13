Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA471F804C
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 04:05:40 +0200 (CEST)
Received: from [::1] (port=58896 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjvY9-0006c7-7k; Fri, 12 Jun 2020 22:05:37 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:44675)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjvY4-0006TP-Sp
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 22:05:32 -0400
Received: by mail-qk1-f181.google.com with SMTP id c14so10842184qka.11
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 19:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=GaUnQVNx/Ny2hxLcn7JJJWFhkfNn83SZgr1cEHEdkpo=;
 b=ap2vYjPTXhQS1I5wd0lTWQf+2n1JmX28T2QlZ0gLEXoaRz5EUpck7rXgYrLr4NCOAU
 Xr+ee6IiXb1pax3Dh5qWGJU9s9kqIWaZaJQGutq0LQR6U6u2DJmUeFhCtRthw8NaDK14
 bO+CO3AwZ2bjYcDaLnCXoPaqabFeNxB56nVKK5GSChQthT2o+9IJbWldEJyO59TaeP0d
 hyNa5yXScfBUYh7w6OBHxWGOtquErEopp4eK5AOyyENOrTt6NoL4UVYXMb4Ta7doI8l+
 cqvUVUTWqQpJwlPdqClSHc5AtQz8T1ToTec9wZtKEpvW6pMTeOXiDyAmPX2hBHRfe4RE
 npoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=GaUnQVNx/Ny2hxLcn7JJJWFhkfNn83SZgr1cEHEdkpo=;
 b=HcjFE+E0/ESYWfYA8axmTtL0UgXHYtI8o94pTrm+5/SfDgM/oYJkzBTlXa25kLoBfq
 Ye9LkG0yoyIHSGL0PKYJd/CE4xRnFVbGUo2kzQGkfm2o3ha6aCrnXh5/GeA1VhXD4B72
 Ja990p74F5Tp6AMKC7e+VzgCjdPspkVfmw83cZj7y9BOdgg5IJB4r7Yu/ty1xwnU4Yy2
 74ww24U+eagO/8igvm6LpxXisCldTy6W9G9eO1g0DhmfoeNFccjrOq87fSA92AGz2918
 DV9rFi9R75PrQaNypuEv+aswoxqx4VAnWRTPD7ihaSZOcTkEu6IF3Op3tNAvodizaJnk
 XkhQ==
X-Gm-Message-State: AOAM530wpZM1ffd0jcRXtpVOFU5aaQiR4uqns4USTzveDby0LdJUjewf
 unvfwyNqWYqjtVEFk5/A9YJfcqiBypM=
X-Google-Smtp-Source: ABdhPJydyiB3CHc57tX+d0JYpejx5KuTDYEJnnJiYDnJGVONF3yGNvAWpbZB/dvoI25rmF6eMXstGQ==
X-Received: by 2002:a37:aa92:: with SMTP id t140mr5875951qke.145.1592013892177; 
 Fri, 12 Jun 2020 19:04:52 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id t75sm6056231qke.35.2020.06.12.19.04.51
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jun 2020 19:04:51 -0700 (PDT)
Message-ID: <5EE43442.70800@gmail.com>
Date: Fri, 12 Jun 2020 22:04:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAH2Hh71qD9o27hGbe3DEtZkgXyWsfcScNX-RB6NbuOCq5DVUGg@mail.gmail.com>
 <CA+JMMq9n4LDNc_8ZjDm=Wpu04V1jALL4Z-CfkvTJ0__aH1Yzjg@mail.gmail.com>
 <CAH2Hh72z75OFeQvto-VcaGAsJ_WDSkq0qAn--tr8amS_4OEhiw@mail.gmail.com>
 <CAKJyDkKpBvR92zC4en=J4S+=-=2ykXqMpiva5x2furAkq1gi+A@mail.gmail.com>
In-Reply-To: <CAKJyDkKpBvR92zC4en=J4S+=-=2ykXqMpiva5x2furAkq1gi+A@mail.gmail.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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
Content-Type: multipart/mixed; boundary="===============3321090823883115827=="
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
--===============3321090823883115827==
Content-Type: multipart/alternative;
 boundary="------------040501050008030604080600"

This is a multi-part message in MIME format.
--------------040501050008030604080600
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2020 09:35 PM, Robin Coxe via USRP-users wrote:
> The phase ambiguity is introduced by the divide-by-2 in the PLLs of 
> the Analog Devices AD9361 RF integrated transceiver on the B200.  
>  These dividers randomly introduce a 0-degree or 180-degree phase 
> shift when they come up.
>
>
In *addition* to that, there's the "natural" problem that two 
synthesizers, in lieu of "special features" will NOT lock to the same 
phase offset,
   even when receiving the same 10MHz clock, and even when you tune them 
"at the same time".

Further, unless you start streaming at exactly the same time (as viewed 
from the time-of-day clock on the USRP devices), there'll be
   a potentially-large ambiguity because of that, also.


>
> On Fri, Jun 12, 2020 at 4:08 PM Aaron Smith via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     All of the devices share a 10 MHz reference that is generated from
>     the same source as the 1 PPS.
>
>     When you say it's a phase ambiguity, are you suggesting that it's
>     a problem with the 10Hz reference or something inherent in the
>     radio hardware that I will have to deal with? Or is there a
>     software fix?
>
>     On Fri, Jun 12, 2020, 4:05 PM Nick Foster <bistromath@gmail.com
>     <mailto:bistromath@gmail.com>> wrote:
>
>         The change in time of arrival with B200s is due to phase
>         ambiguity. Do you have a 10MHz reference shared between your
>         devices as well?
>
>         Don't know why N210 has that off-by-one timestamp. I'm
>         guessing that there's an extra flop in the logic for the PPS
>         timing chain somewhere -- as in, the clock starts ticking on
>         the first tick after PPS comes in. I've made that error about
>         half a million times, myself.
>
>         Nick
>
>         On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users
>         <usrp-users@lists.ettus.com
>         <mailto:usrp-users@lists.ettus.com>> wrote:
>
>             Hello all,
>
>             I have two separate, but related, questions.
>
>             I am trying to trigger an RF transmission every second,
>             and I am receiving the transmission with a receiver that
>             has very precise time stamps. I am driving the receiver
>             with the same 1 PPS source as the B200 and N210. For my
>             simple test, I want the time of arrival at the receiver to
>             register at 1 PPS + propagation delay of the RF coax cable
>             + the USRP front end delay. In all cases I am running UHD
>             3.15.LTS
>
>             With the N210 I can achieve this. However when I call
>
>             usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>
>             and poll the last pps time, I see that it is consistently
>             20 ns before a second. That is, the pps shows at:
>
>             999999980 ns
>             1999999980 ns
>             2999999980 ns
>
>             If I call
>             usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then
>             the 1 PPS registers on the second. It's almost like the
>             clock is biased by 20 ns. I have observed this across 3
>             different N210s. What could be causing this?
>
>             With the B200, every time I destroy and recreate the
>             uhd::usrp::multi_usrp there is a random change in the time
>             of arrival at the receiver that appears to be uniformly
>             distributed between 0 and 1/master_clock_rate. Is this
>             expected? The Ettus website says "All functions that
>             directly interact with the AD93xx (tuning, gain change,
>             etc) are subject to the scheduling of the AD93xx. The
>             determinism of these operations are not guaranteed. "
>
>             Is this what I am experiencing?
>
>             Thank you for the help!
>
>             _______________________________________________
>             USRP-users mailing list
>             USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>             http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
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


--------------040501050008030604080600
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/12/2020 09:35 PM, Robin Coxe via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAKJyDkKpBvR92zC4en=J4S+=-=2ykXqMpiva5x2furAkq1gi+A@mail.gmail.com"
      type="cite">
      <div dir="ltr">The phase ambiguity is introduced by the
        divide-by-2 in the PLLs of the Analog Devices AD9361 RF
        integrated transceiver on the B200.   These dividers randomly
        introduce a 0-degree or 180-degree phase shift when they come
        up.  
        <div>
          <div><br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    In *addition* to that, there's the "natural" problem that two
    synthesizers, in lieu of "special features" will NOT lock to the
    same phase offset,<br>
      even when receiving the same 10MHz clock, and even when you tune
    them "at the same time".  <br>
    <br>
    Further, unless you start streaming at exactly the same time (as
    viewed from the time-of-day clock on the USRP devices), there'll be<br>
      a potentially-large ambiguity because of that, also.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAKJyDkKpBvR92zC4en=J4S+=-=2ykXqMpiva5x2furAkq1gi+A@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Fri, Jun 12, 2020 at 4:08
          PM Aaron Smith via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">All of the devices share a 10 MHz reference
            that is generated from the same source as the 1 PPS.
            <div dir="auto"><br>
            </div>
            <div dir="auto">When you say it's a phase ambiguity, are you
              suggesting that it's a problem with the 10Hz reference or
              something inherent in the radio hardware that I will have
              to deal with? Or is there a software fix?</div>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Fri, Jun 12, 2020, 4:05
              PM Nick Foster &lt;<a moz-do-not-send="true"
                href="mailto:bistromath@gmail.com" rel="noreferrer"
                target="_blank">bistromath@gmail.com</a>&gt; wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir="ltr">
                <div>The change in time of arrival with B200s is due to
                  phase ambiguity. Do you have a 10MHz reference shared
                  between your devices as well?</div>
                <div><br>
                </div>
                <div>Don't know why N210 has that off-by-one timestamp.
                  I'm guessing that there's an extra flop in the logic
                  for the PPS timing chain somewhere -- as in, the clock
                  starts ticking on the first tick after PPS comes in.
                  I've made that error about half a million times,
                  myself.<br>
                </div>
                <div><br>
                </div>
                <div>Nick<br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Fri, Jun 12, 2020
                  at 2:23 PM Aaron Smith via USRP-users &lt;<a
                    moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com"
                    rel="noreferrer noreferrer" target="_blank">usrp-users@lists.ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">
                    <div>Hello all,</div>
                    <div><br>
                    </div>
                    <div>I have two separate, but related, questions.</div>
                    <div><br>
                    </div>
                    <div>I am trying to trigger an RF transmission every
                      second, and I am receiving the transmission with a
                      receiver that has very precise time stamps. I am
                      driving the receiver with the same 1 PPS source as
                      the B200 and N210. For my simple test, I want the
                      time of arrival at the receiver to register at 1
                      PPS + propagation delay of the RF coax cable + the
                      USRP front end delay. In all cases I am running
                      UHD 3.15.LTS<br>
                    </div>
                    <div><br>
                    </div>
                    <div>With the N210 I can achieve this. However when
                      I call
                      <pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0));</pre>
                    </div>
                    <div>and poll the last pps time, I see that it is
                      consistently 20 ns before a second. That is, the
                      pps shows at:</div>
                    <div><br>
                    </div>
                    <div>999999980 ns<br>
                    </div>
                    <div>1999999980 ns<br>
                    </div>
                    <div>2999999980 ns<br>
                    </div>
                    <div><br>
                    </div>
                    <div>If I call
                      usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e-9));
                      then the 1 PPS registers on the second. It's
                      almost like the clock is biased by 20 ns. I have
                      observed this across 3 different N210s. What could
                      be causing this?</div>
                    <div><br>
                    </div>
                    <div>With the B200, every time I destroy and
                      recreate the uhd::usrp::multi_usrp there is a
                      random change in the time of arrival at the
                      receiver that appears to be uniformly distributed
                      between 0 and 1/master_clock_rate. Is this
                      expected? The Ettus website says
                      "All functions that directly interact with the
                      AD93xx (tuning, gain change, etc) are subject to
                      the scheduling of the AD93xx. The determinism of
                      these operations are not guaranteed. "<br>
                    </div>
                    <div><br>
                    </div>
                    <div>Is this what I am experiencing? <br>
                    </div>
                    <div><br>
                    </div>
                    <div>Thank you for the help!<br>
                    </div>
                    <div><br>
                    </div>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a moz-do-not-send="true"
                    href="mailto:USRP-users@lists.ettus.com"
                    rel="noreferrer noreferrer" target="_blank">USRP-users@lists.ettus.com</a><br>
                  <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                    rel="noreferrer noreferrer noreferrer"
                    target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </blockquote>
              </div>
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

--------------040501050008030604080600--


--===============3321090823883115827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3321090823883115827==--

