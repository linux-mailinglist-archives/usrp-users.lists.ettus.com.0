Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F0D2CF606
	for <lists+usrp-users@lfdr.de>; Fri,  4 Dec 2020 22:14:06 +0100 (CET)
Received: from [::1] (port=38762 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klIOy-00040d-83; Fri, 04 Dec 2020 16:14:04 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:44450)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1klIOt-0003np-Un
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 16:13:59 -0500
Received: by mail-qk1-f177.google.com with SMTP id y18so6801785qki.11
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 13:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=XHXkZoPDCD9N8reZmYjSWC9+gmrrJ6ijiReeuLb4znA=;
 b=OkytocEKd+HEJXo1i7ebKOMQSY5moDU06U15yRVVy9e7O5JJuGRhI4m02eb8J+Ftzf
 qb38r6Rm3xU7sciv7ExFwMxGP5V1wN6e2Qwl9mgwR0HrI7e8E3MZGOC95KyTTjBDYIzV
 bMP6h6/yxh6g6N5P36e+r/6JQYgvwnnfEB31pjTTlO21yvdZEPNQTNpcb2IJoqtqr4iS
 y1MGiUldilBcYP2XaF+z32+64e7jnzfkTtdeNm06l0rmOer+4FGjd51xsp9UNkFwD8oD
 csKzL7+aZEef38j6JHSGHE+zlzT3maLzN4zCSTpWC/kJajwdF1iJF/VaS/IlfltKQfSc
 pdfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=XHXkZoPDCD9N8reZmYjSWC9+gmrrJ6ijiReeuLb4znA=;
 b=qlZuIm7dQE3gwnvWnhdvAlGPMyQrZSnphlmkSWXnhLKHGKCW9t0ffyqmrQumid9qYz
 xMe3aILPyx86OAHfwrN9QACLcUamle09Un/DUXZMXS56r6l3rc2b8qi8tPKQT6gS/U5D
 3fJjnL+02iT5lExGC7h55te/C5QMDTU6N8x1NHfANXMboQWYIFrH3LxFQ8SmC4+PH0t2
 Doswd2ywpemd2iEA9fD8UnivzEz5Q7AUJy3noa9S7HHLwnfPWn5xaGwZCGS96/YSFJtk
 BWcec8Nh/RKE+VEYWi7CpnD/ThxVYzn9oybcIsWwBcOA7BqxYR6g1MLLyzA8qWJp6FPm
 7cig==
X-Gm-Message-State: AOAM533qh0Z/t3eP9c/A+mZFChoQYyHw5RHe745/DBsoWx9+mBN2f4lw
 BPEdl3l2ZpoV8vRLlU50YMgyvpm+X7M=
X-Google-Smtp-Source: ABdhPJzV0Ss/CXDUng9vZTa932ujGNGSJLB47vj+Ryl2xVvjgHCQA1HM+Hg3B0B4cg4GswKzPfm+5w==
X-Received: by 2002:a37:e09:: with SMTP id 9mr11144028qko.39.1607116399015;
 Fri, 04 Dec 2020 13:13:19 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 r125sm5876657qke.129.2020.12.04.13.13.18
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Dec 2020 13:13:18 -0800 (PST)
Message-ID: <5FCAA66D.9050007@gmail.com>
Date: Fri, 04 Dec 2020 16:13:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACDReSxO=0GoV5V07cjZt2N=BTGOifrs758xHS+snj7bQTXzGQ@mail.gmail.com>
 <CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com>
In-Reply-To: <CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com>
Subject: Re: [USRP-users] Using GPS disciplining on E310
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
Content-Type: multipart/mixed; boundary="===============5974439385669861403=="
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
--===============5974439385669861403==
Content-Type: multipart/alternative;
 boundary="------------060509000303040106090606"

This is a multi-part message in MIME format.
--------------060509000303040106090606
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/04/2020 03:46 PM, Rob Kossler via USRP-users wrote:
> Hi Ofer,
> Here is my understanding
> - The E310 can sync to a PPS signal (either external input or obtained 
> from GPS).  From this PPS, the E310 derives the 10MHz ref signal and 
> uses that as ref for LO signal.  So, there will be lots of phase 
> variation between the LOs in all of your E310 devices even though they 
> will all be trying to stay in sync with a 1 pulse-per-second signal.
Basically, the E310 implements a "poor man's GPSDO" with the built-in 
GPS module it has.  It's the same algorithm as is used in the
   B205mini series for the sync input.    The control algorithm isn't 
that good, and you cannot maintain coherence among multiple E310s
   using this.


> - Regarding your time synchronization question, there are examples of 
> setting the E310 clock (using set_time_next_pps, I think) to match the 
> GPS clock.  Thus, all of your E310s could have the same time.  But, 
> how do you plan to control all of your E310s when you want the 
> transmit to turn on? Will you have an SSH session to each of them?
> Rob
>
Once all your E310 radio system clocks agree on time, you can used timed 
streaming.

The "sync_to_gps" example application should give some broad help in 
setting up GPS synchronization.


> On Fri, Dec 4, 2020 at 2:28 PM Ofer Saferman via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hello,
>     I would like to synchronize several E310 devices.
>     It is my understanding that the only way to do that is by
>     connecting a GPS antenna and performing disciplining to a derived
>     1-PPS signal.
>     I have a few questions to help me better understand how to make it
>     work:
>     1. Does GPS disciplining achieve frequency lock between devices or
>     phase lock?
>     2. How to start transmitting at the exact moment on all
>     synchronized devices? Can the unit clock be synchronized to GPS
>     clock? and then just start the transmission with some delay from
>     unit clock on all devices? Can someone share the relevant C
>     commands to perform the time synchronization to GPS clock or point
>     to a relevant code example?
>
>     Thanks,
>     Ofer Saferman
>
>
>     -- 
>     This message has been scanned for viruses and
>     dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>     and is
>     believed to be clean. _______________________________________________
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


--------------060509000303040106090606
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/04/2020 03:46 PM, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">Hi Ofer,
          <div>Here is my understanding</div>
          <div>- The E310 can sync to a PPS signal (either external
            input or obtained from GPS).  From this PPS, the E310
            derives the 10MHz ref signal and uses that as ref for LO
            signal.  So, there will be lots of phase variation between
            the LOs in all of your E310 devices even though they will
            all be trying to stay in sync with a 1 pulse-per-second
            signal.</div>
        </div>
      </div>
    </blockquote>
    Basically, the E310 implements a "poor man's GPSDO" with the
    built-in GPS module it has.  It's the same algorithm as is used in
    the<br>
      B205mini series for the sync input.    The control algorithm isn't
    that good, and you cannot maintain coherence among multiple E310s<br>
      using this.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">
          <div>- Regarding your time synchronization question, there are
            examples of setting the E310 clock (using set_time_next_pps,
            I think) to match the GPS clock.  Thus, all of your E310s
            could have the same time.  But, how do you plan to control
            all of your E310s when you want the transmit to turn on? 
            Will you have an SSH session to each of them? </div>
          <div>Rob</div>
        </div>
        <br>
      </div>
    </blockquote>
    Once all your E310 radio system clocks agree on time, you can used
    timed streaming.<br>
    <br>
    The "sync_to_gps" example application should give some broad help in
    setting up GPS synchronization.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Fri, Dec 4, 2020 at 2:28
            PM Ofer Saferman via USRP-users &lt;<a
              moz-do-not-send="true"
              href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir="ltr">
              <div>Hello,</div>
              <div>I would like to synchronize several E310 devices.</div>
              <div>It is my understanding that the only way to do that
                is by connecting a GPS antenna and performing
                disciplining to a derived 1-PPS signal.</div>
              <div>I have a few questions to help me better understand
                how to make it work:</div>
              <div>1. Does GPS disciplining achieve frequency lock
                between devices or phase lock?</div>
              <div>2. How to start transmitting at the exact moment on
                all synchronized devices? Can the unit clock be
                synchronized to GPS clock? and then just start the
                transmission with some delay from unit clock on all
                devices? Can someone share the relevant C commands to
                perform the time synchronization to GPS clock or point
                to a relevant code example?</div>
              <div><br>
              </div>
              <div>Thanks,</div>
              <div>Ofer Saferman<br>
              </div>
              <div><br>
              </div>
            </div>
            <br>
            -- <br>
            This message has been scanned for viruses and
            <br>
            dangerous content by
            <a moz-do-not-send="true"
              href="http://www.mailscanner.info/" target="_blank"><b>MailScanner</b></a>,
            and is
            <br>
            believed to be clean.
            _______________________________________________<br>
            USRP-users mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
            <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
              rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
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

--------------060509000303040106090606--


--===============5974439385669861403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5974439385669861403==--

