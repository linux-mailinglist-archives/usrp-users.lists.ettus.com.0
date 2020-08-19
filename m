Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C00C24A334
	for <lists+usrp-users@lfdr.de>; Wed, 19 Aug 2020 17:35:37 +0200 (CEST)
Received: from [::1] (port=59320 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k8Q7k-0004sT-5A; Wed, 19 Aug 2020 11:35:36 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:34254)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k8Q7g-0004iG-9S
 for usrp-users@lists.ettus.com; Wed, 19 Aug 2020 11:35:32 -0400
Received: by mail-qk1-f171.google.com with SMTP id x69so21973834qkb.1
 for <usrp-users@lists.ettus.com>; Wed, 19 Aug 2020 08:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=o0W/4Oo8b98DmyfrZ9w1j0HIZhHG8aHaz5lNhZqyi6c=;
 b=pg86sA28BhpaiSfXVPmGiFHKizwpf6Qx/4DfzxScKSMzG3mWrXhzSUJZGZ1Xf4flil
 JLz5i/y2PlhOFHM/eeUp53QSnprji18dEiH2AYze7jZsskSLj9s9hX4sJdewQ/vIzEtq
 IcUytq+QWgl3vmZQPz1ZvXOm7fQC24lXLYtzya/5jSWz0EGhmXIrHONvC+iuYjyJotwh
 S0WWv9dUO32uWPy9AXm5yEtpicSNic5MDqrzfcDCRxK5VkQj49lBWR0Cc8ZJkU0YhI/7
 SpJPUPGImQuhdgYsqU1SPlxa1vWggTjhj385W+qbQvU4AAOdE0AFd8QyO0E8vovPMmPG
 F9lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=o0W/4Oo8b98DmyfrZ9w1j0HIZhHG8aHaz5lNhZqyi6c=;
 b=L4k8FfFAbQ3ETC1oexSJVbDmKsZ2HtF9nGIQCsB7zBtCKzmLUh4j0kHhTpGDCrH9K2
 6Icg/dXpCXfDq2GCJeZu7PYrwMhI+PV9vpzE2ONVrOi7bGHMHbgB6kVZUZcSHMIXWXWU
 LuE2jqT4F6Vs0MjUUF0InYDAq+NvobDKyBZa9agCGfKu96qVKTP9ztnE02e/wDVj7EaV
 DOK39jjosZqFNc1u6m/5oLQePDsiMfgkE5rNAJ05ZGqZzKxJfHr3FAmVmQF40Tuyyu5/
 TzvV6Ox8QuDgBdHjEJ1OSPQDE5SypLB9dDYa5CUVxaUPGwdwP6vm1rYwvhsU1yJMh2wb
 XjDA==
X-Gm-Message-State: AOAM530v0A26oXeACbqIAYzOEUdGsV/GMpSLj/v6/N1m9LJ9NFxGMO5G
 4tCJkyDW+FV/l1fVyR8DrfxiADHLEfmSSaIz
X-Google-Smtp-Source: ABdhPJwUcNSO4DT7DVLOpQwum+eHqsI05/BR6M0sjBvn1QmLpGQ4sOWiz4qWPYkP/gQNvpco7Zo2Aw==
X-Received: by 2002:a37:714:: with SMTP id 20mr22732895qkh.367.1597851291442; 
 Wed, 19 Aug 2020 08:34:51 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id i19sm24242673qkk.68.2020.08.19.08.34.48
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Aug 2020 08:34:48 -0700 (PDT)
Message-ID: <5F3D4697.8070503@gmail.com>
Date: Wed, 19 Aug 2020 11:34:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANwgjNqWApsiG2Nmgxr3K_KBr-XPKXK2t9FgAqkPgidXV3MP0w@mail.gmail.com>
 <CANwgjNpE_4RyMsXqVx3ObWJEB2ysogRbNQrx3k-ZOKSgRW_E8g@mail.gmail.com>
In-Reply-To: <CANwgjNpE_4RyMsXqVx3ObWJEB2ysogRbNQrx3k-ZOKSgRW_E8g@mail.gmail.com>
Subject: Re: [USRP-users] Fwd: Benchmark_rate.py error
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
Content-Type: multipart/mixed; boundary="===============6397650995400638861=="
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
--===============6397650995400638861==
Content-Type: multipart/alternative;
 boundary="------------060600060900000201070400"

This is a multi-part message in MIME format.
--------------060600060900000201070400
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/19/2020 11:27 AM, Ephraim Moges via USRP-users wrote:
> Good Morning,
>
> I am having a problem running the python benchmark_rate.py. The error 
> message I am receiving is in the image attached "the module uhd has no 
> attribute 'usrp'". My installation indicated everything was good when 
> I ran a make test, so I am not sure if I need to be in a specific 
> folder so that it can find the attribute or what.
>
> Sincerely,
>
> Moges
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
What OS?   How exactly did you install UHD?



--------------060600060900000201070400
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/19/2020 11:27 AM, Ephraim Moges
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANwgjNpE_4RyMsXqVx3ObWJEB2ysogRbNQrx3k-ZOKSgRW_E8g@mail.gmail.com"
      type="cite">
      <div dir="auto">
        <div class="gmail_quote" dir="auto">
          <div dir="ltr" class="gmail_attr">Good Morning,<br>
          </div>
          <div dir="auto">
            <div dir="auto"><br>
            </div>
            <div dir="auto">I am having a problem running the python
              benchmark_rate.py. The error message I am receiving is in
              the image attached "the module uhd has no attribute
              'usrp'". My installation indicated everything was good
              when I ran a make test, so I am not sure if I need to be
              in a specific folder so that it can find the attribute or
              what.<br>
              <br>
              <div data-smartmail="gmail_signature" dir="auto">Sincerely,<br>
                <br>
              </div>
              <div data-smartmail="gmail_signature" dir="auto">Moges<br>
              </div>
            </div>
          </div>
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
    What OS?   How exactly did you install UHD?  <br>
    <br>
    <br>
  </body>
</html>

--------------060600060900000201070400--


--===============6397650995400638861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6397650995400638861==--

