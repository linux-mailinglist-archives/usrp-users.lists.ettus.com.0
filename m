Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 359047C7AA
	for <lists+usrp-users@lfdr.de>; Wed, 31 Jul 2019 17:54:30 +0200 (CEST)
Received: from [::1] (port=52202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hsqvr-0001MA-9p; Wed, 31 Jul 2019 11:54:27 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:33759)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hsqvo-0001HV-4J
 for usrp-users@lists.ettus.com; Wed, 31 Jul 2019 11:54:24 -0400
Received: by mail-qk1-f180.google.com with SMTP id r6so49634483qkc.0
 for <usrp-users@lists.ettus.com>; Wed, 31 Jul 2019 08:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=m/qr/S/dLNn5SejVpbXBAzT6Al44ncEr60COdZEo5ZI=;
 b=o29fl8hrxp3jmdB+t8AVHLjbhudBDmZ04HI/9ZzGjzeSqerSZ3Cnxrt+vCUKcvI/yG
 M2zhuyvi0mxswDbRirzemiL1006/ULpacKI9MJl5iaM6KPt2nlKFIw+NYBjQQW2Bht+9
 2Tlk896zq4EpX0TohPlC7pbXYBl4r2al7L4AWgRTEDk0iKWeyt3y3C0yoig1fBnu53ij
 WtbMrDuJUhPHvJTJSqq7facC76jddD5E3LkOAgIIzoJOAevNh9IbgcZzVsRzwG6sVdUW
 lXWCe/l3aM/dEfqkZ0otL4MlNteQWA5hxguisVv/Tqf/eN6Nabfoge4xnNJUPe3szqe1
 IA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=m/qr/S/dLNn5SejVpbXBAzT6Al44ncEr60COdZEo5ZI=;
 b=CZ6XNUHAMAgsv+jpxY1bAFBfa5aixXGv3fH7nJNZVyeMNFf78FnNwCpDtai5TmDnhV
 rD1Q0EFRjUq91nQ2tuK/v4B0TG2Sf8WSg3nzCJ7W83DieufqvCN4leAhnjUxzYcR8XDy
 Xu8yIUG5mLxq0eCbln5WRs9AiOz7crMBrBaRLTUTQxlABscUZT34TgxCD4gd0QszoH4k
 3RaBlZ6l9TB2LuS0T3Z0FFNIP3uGm6p485e7gt/Gl2loLlSoPjEA79aFodljuLHXsEUt
 qXuNy1eHFA6H4U0Fmm67ABvFNqz2jU/6NEF6fOfzxqSqMEzpD81kwAG61AE0idNPhmAQ
 QqoQ==
X-Gm-Message-State: APjAAAWfJaUTeykr4uNCHN/ApaRNjk6dOjzhWj0LvNfetRo7FkDX9+z+
 qbyGf92A1ic0O9Csm9btjXXCzoJ4WNk=
X-Google-Smtp-Source: APXvYqwapiiWp1sZa/RqeXrwyDlYFzBsTt6QPOWaHtncBDPYjUsTWEL7ktb4Yaegj3VcPydJHm6T1Q==
X-Received: by 2002:a37:7cf:: with SMTP id 198mr82537973qkh.450.1564588423415; 
 Wed, 31 Jul 2019 08:53:43 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20]) by smtp.googlemail.com with ESMTPSA id
 x205sm31631806qka.56.2019.07.31.08.53.42
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 08:53:42 -0700 (PDT)
Message-ID: <5D41B986.9030904@gmail.com>
Date: Wed, 31 Jul 2019 11:53:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAGXuw=gpxavTSx2MES=wip=nSo7Ge0OuE+8MT0mgp+omPCoe=A@mail.gmail.com>
In-Reply-To: <CAGXuw=gpxavTSx2MES=wip=nSo7Ge0OuE+8MT0mgp+omPCoe=A@mail.gmail.com>
Subject: Re: [USRP-users] Phase coherent UBX160s on multiple X310s
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
Content-Type: multipart/mixed; boundary="===============1493223497076577818=="
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
--===============1493223497076577818==
Content-Type: multipart/alternative;
 boundary="------------080308000703080606070102"

This is a multi-part message in MIME format.
--------------080308000703080606070102
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/31/2019 09:38 AM, Mitch Grabner via USRP-users wrote:
> Hello,
>
> I'm trying to achieve a constant phase offset with multiple X310s each 
> using a UBX160 daughter card. My procedure is as follows:
> 1) All X310s have a 10MHz reference and PPS fed via an octoclock
> 2) each device FPGA time is aligned on the PPS edge
> 3) each device sets their LO to the same frequency at the same time 
> using timed FPGA commands
> 4) each device transmits an orthogonal PN sequence using timed 
> transmit and the phase of each is measured on a x310 which is also 
> initialized using the previous procedure
>
> The behavior I have seen is that the phase difference between radios 
> is constant only when using a low center frequency (tested on 40 MHz 
> fc, 1 MHz Fs). At 2.4 GHz and 920 Mhz the phase drifts between runs. 
> Does anyone have any insight into why this would be the case?
>
> Things I have tried:
> - Integer-n and fractional-n tuning
> - manual and automatic tuning policies
>
> The UHD version is source built 3.13.0|||| 
> <https://github.com/EttusResearch/uhd/commit/f114cfa0ddf70228d10462758c2b8e878c993f5d> 
> from git and I have rebuilt the FPGA image with these commits added:
> https://github.com/EttusResearch/fpga/commit/205747dee8e73ec15f521e9363337c8c03582d91
> https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d
> I'm also going to try using the most up-to-date 3.14.1.0 release.
>
> Thanks,
>
Let us know whether the 3.14.1.0 release helps.

I'm a bit surprised by the problem showing up on the *higher* bands, 
because below 500MHz, there are TWO layers of synthesizers and mixers
   involved--you'd expect phase-coherence problems to be more likely in 
that case.

The LOs have phase-reset features, which I'm fairly-sure are actually 
implemented.

What is the magnitude of the phase offset in the high-band case?




--------------080308000703080606070102
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/31/2019 09:38 AM, Mitch Grabner
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAGXuw=gpxavTSx2MES=wip=nSo7Ge0OuE+8MT0mgp+omPCoe=A@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>I'm trying to achieve a constant phase offset with multiple
          X310s each using a UBX160 daughter card. My procedure is as
          follows:</div>
        <div>1) All X310s have a 10MHz reference and PPS fed via an
          octoclock</div>
        <div>2) each device FPGA time is aligned on the PPS edge</div>
        <div>3) each device sets their LO to the same frequency at the
          same time using timed FPGA commands</div>
        <div>4) each device transmits an orthogonal PN sequence using
          timed transmit and the phase of each is measured on a x310
          which is also initialized using the previous procedure</div>
        <div><br>
        </div>
        <div>The behavior I have seen is that the phase difference
          between radios is constant only when using a low center
          frequency (tested on 40 MHz fc, 1 MHz Fs). At 2.4 GHz and 920
          Mhz the phase drifts between runs. Does anyone have any
          insight into why this would be the case?</div>
        <div><br>
        </div>
        <div>Things I have tried:</div>
        <div>- Integer-n and fractional-n tuning</div>
        <div>- manual and automatic tuning policies</div>
        <div><br>
        </div>
        <div>The UHD version is source built 3.13.0<code></code><a
            moz-do-not-send="true"
href="https://github.com/EttusResearch/uhd/commit/f114cfa0ddf70228d10462758c2b8e878c993f5d"
            class="gmail-muted-link"><code></code></a> from git and I
          have rebuilt the FPGA image with these commits added:</div>
        <div><a moz-do-not-send="true"
href="https://github.com/EttusResearch/fpga/commit/205747dee8e73ec15f521e9363337c8c03582d91">https://github.com/EttusResearch/fpga/commit/205747dee8e73ec15f521e9363337c8c03582d91</a></div>
        <div><a moz-do-not-send="true"
href="https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d">https://github.com/EttusResearch/fpga/commit/0b2364653405612a6d5dfaa0e69b1c6798771e6d</a></div>
        <div>I'm also going to try using the most up-to-date 3.14.1.0
          release.</div>
        <div><br>
        </div>
        <div>Thanks,<br>
        </div>
        <br>
      </div>
    </blockquote>
    Let us know whether the 3.14.1.0 release helps.<br>
    <br>
    I'm a bit surprised by the problem showing up on the *higher* bands,
    because below 500MHz, there are TWO layers of synthesizers and
    mixers<br>
      involved--you'd expect phase-coherence problems to be more likely
    in that case.<br>
    <br>
    The LOs have phase-reset features, which I'm fairly-sure are
    actually implemented.<br>
    <br>
    What is the magnitude of the phase offset in the high-band case?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------080308000703080606070102--


--===============1493223497076577818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1493223497076577818==--

