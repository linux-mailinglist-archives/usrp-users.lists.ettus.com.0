Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6198822FF0C
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jul 2020 03:45:48 +0200 (CEST)
Received: from [::1] (port=50112 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0Egc-0005Vg-2r; Mon, 27 Jul 2020 21:45:46 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:38078)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k0EgY-0005Ol-8i
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 21:45:42 -0400
Received: by mail-qt1-f172.google.com with SMTP id a32so13823914qtb.5
 for <usrp-users@lists.ettus.com>; Mon, 27 Jul 2020 18:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=xqdIOeQA3hzyLGCG4k35Zo5RJID9iHaRoPT/BatgQU4=;
 b=bDu4ijCqF0IaldGR70qv1Rbb7lHliD6oC7IWuNO5/9pu3BvN9NzycYfzWyUxS9WJUE
 f4PV8ZDhaY3Yx/jUjlUBvA1mMo8ZnQcYjLcWwS8tGGo7aOuxlxcIzBvbMWCt+Vb/l6Ir
 zy/nfzNOEuPdNVyKT0B4YKf7zyaRi5GWyxhDefS9b1hdYHwUVOHedME/44rHZRmhZ2ND
 g30nfiAVfVEwgWZJT1RiYiFCgGWX7vVFcLF1FRkaTBU4uczhwrWMA9CtCfTb3pulUMut
 Wr+HkcChCbNDNUj21ATwXesuAPoIy0+z5Z0xdNki6KVW0XjLHmEwLvrnT1dlKiB3aaFh
 8hGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=xqdIOeQA3hzyLGCG4k35Zo5RJID9iHaRoPT/BatgQU4=;
 b=BW66lTlh/H4RS8NJLC8S0Ud71Ml1PJelX+IPsXXWffCzCJO9SdgzKyWZkDK4AEvShE
 GM4fUSOKanRlENO2TLzDaqzBSr5TY7pKs8fcNt4B1HUBkykacjUIFZFpzukkLusymhEx
 dllA31Jy1f+fvwiDkKez+OwXQyz5dmNPXpuvEEn/440iFROyXp0em/YQPjBAAJ4F4KMr
 3vEKZx93DbRlbCnGTs1blzD+x/Fg8n+T1+TugqU6U0h7k7qFWZhvbEUjccZxxwPQCzSL
 Kf7bCh9GS3FCjbTJ5AvnD/gPOQsswHWtkrao/TEmOowzUs9y191SLgVIT740UJLwJ7PQ
 goEQ==
X-Gm-Message-State: AOAM530vGYI89vtsmc3bkKy1CqGLV7MC+OtNiq8nVclK4KRXtsuetIow
 s+m5vnEx2rDy2wFchADAPCefKMSPdHM=
X-Google-Smtp-Source: ABdhPJxIYD68C1/KJQFp3R46DCIC9tt3f8cm5RGu+kIAHOCZFAEwpwSAWDbz61w73r70tnYvCeg/wQ==
X-Received: by 2002:ac8:1729:: with SMTP id w38mr23811167qtj.103.1595900701413; 
 Mon, 27 Jul 2020 18:45:01 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148]) by smtp.googlemail.com with ESMTPSA id
 p12sm19119481qkk.118.2020.07.27.18.45.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Jul 2020 18:45:01 -0700 (PDT)
Message-ID: <5F1F831C.3070001@gmail.com>
Date: Mon, 27 Jul 2020 21:45:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAH2Hh71y=SwYu3-0OHcrmxn_PEpWJgzDA7pZu0bUbNBjEv05bg@mail.gmail.com>
In-Reply-To: <CAH2Hh71y=SwYu3-0OHcrmxn_PEpWJgzDA7pZu0bUbNBjEv05bg@mail.gmail.com>
Subject: Re: [USRP-users] B200 cannot output a sine wave
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
Content-Type: multipart/mixed; boundary="===============6483649988093130952=="
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
--===============6483649988093130952==
Content-Type: multipart/alternative;
 boundary="------------090400050405000902060806"

This is a multi-part message in MIME format.
--------------090400050405000902060806
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/27/2020 09:05 PM, Aaron Smith via USRP-users wrote:
> Hello all,
>
> I am trying to output a sine wave from a B200 using custom code, or 
> the UHD tx_waveform example. In either case, when I view the output on 
> an o-scope, there is not a pure sine wave. The output looks more 
> triangular wave. I have used this scope with other B200s and the same 
> code to get a pure sine. Is the radio damaged? Is there some sort of 
> calibration required? I am using UHD 3.15.0.
>
> Thanks
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
What frequency?  What gain settings? What is your baseband bandwidth?  
Is your coax cable known to be "good" at the frequency of interest?
   What sample rate?  Is the baseband signal well within the Nyquist limits?



--------------090400050405000902060806
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/27/2020 09:05 PM, Aaron Smith via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAH2Hh71y=SwYu3-0OHcrmxn_PEpWJgzDA7pZu0bUbNBjEv05bg@mail.gmail.com"
      type="cite">
      <div dir="auto">Hello all,
        <div dir="auto"><br>
        </div>
        <div dir="auto">I am trying to output a sine wave from a B200
          using custom code, or the UHD tx_waveform example. In either
          case, when I view the output on an o-scope, there is not a
          pure sine wave. The output looks more triangular wave. I have
          used this scope with other B200s and the same code to get a
          pure sine. Is the radio damaged? Is there some sort of
          calibration required? I am using UHD 3.15.0. </div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">Thanks</div>
        <div dir="auto"><br>
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
    What frequency?  What gain settings? What is your baseband
    bandwidth?  Is your coax cable known to be "good" at the frequency
    of interest?<br>
      What sample rate?  Is the baseband signal well within the Nyquist
    limits?<br>
    <br>
    <br>
  </body>
</html>

--------------090400050405000902060806--


--===============6483649988093130952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6483649988093130952==--

