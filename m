Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 33972115DE1
	for <lists+usrp-users@lfdr.de>; Sat,  7 Dec 2019 19:12:12 +0100 (CET)
Received: from [::1] (port=40286 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ideYp-0007Fe-J6; Sat, 07 Dec 2019 13:12:07 -0500
Received: from mail-qt1-f172.google.com ([209.85.160.172]:34769)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ideYm-0006oO-1g
 for usrp-users@lists.ettus.com; Sat, 07 Dec 2019 13:12:04 -0500
Received: by mail-qt1-f172.google.com with SMTP id 5so10840545qtz.1
 for <usrp-users@lists.ettus.com>; Sat, 07 Dec 2019 10:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=frupZG/tA+kVSjWSjQKD8S2JYISMwQu17lilCz6yI4I=;
 b=t1pSaMpqZNCxRea2OO/eWURsHEJBfMjX1m4flgVa0H/uTPBr8WaP6hzkyV4nT7hou1
 VY8GoRbBQ7M/82oWQoOFJGiMJV+/tQtNE719fl2kNWqxnl9SltGmuMbdcA9dwqO7CXba
 nhkE0qQN0EJ/UK1cnPJsYVl78qHOHxs1Znb0b9ABi/iFYa/V4UbgvSE+BW3o4IG8x3Cd
 2suJ4wX1b+0IKxs8jR6fafrmzIqJk2bW2brbnR2xLQLsdfsCfWvazWYxgOVu6ag5ZiOi
 d4ufBY8dnjNCRE3AW0go3IEH4jMK6dS9g6qV6FdsYGoZJD8KFj+Z2GdU97/MvH4tBwG7
 UnRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=frupZG/tA+kVSjWSjQKD8S2JYISMwQu17lilCz6yI4I=;
 b=mI5rhK6HG0pLZ4KrnKc0u+Wd1ntORIo64D6ZC/KDkcFERZ+LanB25+0ATe+ppzvmng
 7hJc0y/yF8AKP7BmC+GPNAhDVttZg1uZTknxzCClpmg28FaT1kA0HOsUVrxC9VqgzwAX
 0rDo+xXL7Whu4hP4rIVCQkLJ6dmfII/MZkcNeImC3wXJ/EqDFoNv0CkULFrdhYkoVaCb
 zrGVT9vJyy6DuQhN6qznZlzTeRgiX7K1Y+6qgIZgjxkH7VhTdgXKdTkokniZ0EBywoy0
 r5TV0Wi8cp3qSn0ladUi8Fg+Muaeg9YoXzTYLo/pRCZlqbrJp3sww746+zjCnVIx+wN/
 KS7A==
X-Gm-Message-State: APjAAAU84u/8r43HNa5uCLpYHngWAPx5SVpwxfv9B7VmzwLHRyHtMoEf
 2KxCdDuuEDz1if6xuAdowz/cJ4a6
X-Google-Smtp-Source: APXvYqz5eViie9pULJpdXA35SmVJvp5xr2rT0dfse8hwi+l2naBH1fo1VkCBM9jbVE/NEFwbvhFTtw==
X-Received: by 2002:ac8:3793:: with SMTP id d19mr18347538qtc.30.1575742283341; 
 Sat, 07 Dec 2019 10:11:23 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id g21sm1869397qkl.116.2019.12.07.10.11.22
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Dec 2019 10:11:22 -0800 (PST)
Message-ID: <5DEBEB49.4040607@gmail.com>
Date: Sat, 07 Dec 2019 13:11:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
In-Reply-To: <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
Content-Type: multipart/mixed; boundary="===============6800596020687364387=="
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
--===============6800596020687364387==
Content-Type: multipart/alternative;
 boundary="------------090804050609010807030403"

This is a multi-part message in MIME format.
--------------090804050609010807030403
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/07/2019 12:05 PM, Nate Temple via USRP-users wrote:
> Hi Luke,
>
> What version of UHD are you using?
>
> There was an issue with the DUC/DDC phase accumulator's resolution, 
> but it was fixed with UHD 3.14.1.0.
>
> The threads below are were this was identified:
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059914.html
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html
>
> As recommended from the thread:
>
> Phase may change each time streamers are created, but the phase between TX
> and RX should remain consistent during streaming.  Tuning must be done 
> with
> timed commands and a consistent time delta between the tune time of TX and
> RX must be maintained that is greater than 500us to maintain the coherence
> across re-tunes.
>
>
>
> If you're using the QT widget without any modifications, it will not 
> be using timed commands, you'll need to generate the python file and 
> manually add in the timed commands to the set_freq calls.
>
> Also, if I remember correctly, even with the phase accumulator fix, 
> there was some caveats to which frequencies would stay coherent. I 
> need to go back and look at some notes on it.
>
> Regards,
> Nate Temple
>
The other thing to consider is the contribution of Fractional-N 
synthesis to the unpredictable nature of the phase of two synthesizers, 
even when
   using a common reference.

Many years ago, Texas Instruments published a quite-nice technical brief 
on the difference between Fractional-N and Integer-N synthesis:

http://www.ti.com/lit/an/swra029/swra029.pdf

A side-effect of fractional-N synthesis is that two frac-N synthesizers 
will not necessarily have a zero phase-offset with respect to one another,
   without a bit of "help".  That "help" comes in the form of a special 
"phase reset" signal on *some* modern PLL synthesizers.  One of the
   caveats is that all the synthesizers have to have this "phase reset" 
signal triggered at the same time (or, I think, more properly, within less
   than one cycle of Fref).   So, that is the reason that timed commands 
must be used to allow predictable phase-offset. Fortunately, the MAX2871
   used on the UBX is such a synthesizer.

A further complication, just as a bit of trivia not relevant to this 
case, is that SOME fractional-N synthesizers "dither" the averaging schedule
   used to change between N and N+1 states, in order to spread-out 
synthesizer spurs to reduce energy at sharply-defined frequencies.
   In those cases, it's easy to see how maintaining coherence among 
multiple instances would be impossible, even with a common
   reference.

But this also brings up another issue (not relevant in this case, but 
something to be aware of).  Two frac-N synthesizers of different
   design may not be able to maintain mutual coherence of predictable 
phase-offset.  So these "timed command" tricks can only
   really be used among synthesizers of exactly the same type.  In the 
Ettus case, that means among daughterboards of exactly
   the same type.



--------------090804050609010807030403
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/07/2019 12:05 PM, Nate Temple via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:arial,helvetica,sans-serif">Hi Luke,<br>
          <br>
          What version of UHD are you using?<br>
          <br>
          There was an issue with the DUC/DDC phase accumulator's
          resolution, but it was fixed with UHD 3.14.1.0.<br>
          <br>
          The threads below are were this was identified:<br>
          <br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059914.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059914.html</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-April/059465.html</a><br>
          <br>
          As recommended from the thread:<br>
          <br>
          Phase may change each time streamers are created, but the
          phase between TX<br>
          and RX should remain consistent during streaming.  Tuning must
          be done with<br>
          timed commands and a consistent time delta between the tune
          time of TX and<br>
          RX must be maintained that is greater than 500us to maintain
          the coherence<br>
          across re-tunes.<br>
          <br>
          <br>
          <br>
          If you're using the QT widget without any modifications, it
          will not be using timed commands, you'll need to generate the
          python file and manually add in the timed commands to the
          set_freq calls.<br>
        </div>
        <div class="gmail_default"
          style="font-family:arial,helvetica,sans-serif"><br>
        </div>
        <div class="gmail_default"
          style="font-family:arial,helvetica,sans-serif">Also, if I
          remember correctly, even with the phase accumulator fix, there
          was some caveats to which frequencies would stay coherent. I
          need to go back and look at some notes on it.  <br>
        </div>
        <div class="gmail_default"
          style="font-family:arial,helvetica,sans-serif"><br>
          Regards,<br>
          Nate Temple</div>
      </div>
      <br>
    </blockquote>
    The other thing to consider is the contribution of Fractional-N
    synthesis to the unpredictable nature of the phase of two
    synthesizers, even when<br>
      using a common reference.<br>
    <br>
    Many years ago, Texas Instruments published a quite-nice technical
    brief on the difference between Fractional-N and Integer-N
    synthesis:<br>
    <br>
    <a class="moz-txt-link-freetext" href="http://www.ti.com/lit/an/swra029/swra029.pdf">http://www.ti.com/lit/an/swra029/swra029.pdf</a><br>
    <br>
    A side-effect of fractional-N synthesis is that two frac-N
    synthesizers will not necessarily have a zero phase-offset with
    respect to one another,<br>
      without a bit of "help".  That "help" comes in the form of a
    special "phase reset" signal on *some* modern PLL synthesizers.  One
    of the<br>
      caveats is that all the synthesizers have to have this "phase
    reset" signal triggered at the same time (or, I think, more
    properly, within less<br>
      than one cycle of Fref).   So, that is the reason that timed
    commands must be used to allow predictable phase-offset. 
    Fortunately, the MAX2871<br>
      used on the UBX is such a synthesizer.<br>
    <br>
    A further complication, just as a bit of trivia not relevant to this
    case, is that SOME fractional-N synthesizers "dither" the averaging
    schedule<br>
      used to change between N and N+1 states, in order to spread-out
    synthesizer spurs to reduce energy at sharply-defined frequencies.<br>
      In those cases, it's easy to see how maintaining coherence among
    multiple instances would be impossible, even with a common<br>
      reference.<br>
    <br>
    But this also brings up another issue (not relevant in this case,
    but something to be aware of).  Two frac-N synthesizers of different<br>
      design may not be able to maintain mutual coherence of predictable
    phase-offset.  So these "timed command" tricks can only<br>
      really be used among synthesizers of exactly the same type.  In
    the Ettus case, that means among daughterboards of exactly<br>
      the same type.<br>
    <br>
    <br>
  </body>
</html>

--------------090804050609010807030403--


--===============6800596020687364387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6800596020687364387==--

