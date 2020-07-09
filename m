Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C3321A79C
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jul 2020 21:15:22 +0200 (CEST)
Received: from [::1] (port=56780 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jtc0t-0002lH-JE; Thu, 09 Jul 2020 15:15:19 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:38255)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jtc0p-0002aI-ML
 for usrp-users@lists.ettus.com; Thu, 09 Jul 2020 15:15:15 -0400
Received: by mail-qt1-f182.google.com with SMTP id a32so2557355qtb.5
 for <usrp-users@lists.ettus.com>; Thu, 09 Jul 2020 12:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=38zDDokHElXDF1m2WPBTGdMLTi6vrk9rhzTTl17l9jM=;
 b=ZO9mRo0PdB1xy5LprZmo1gdcPX94b9EivcxzmCjR87oDS36N+kQ9hP8lx7sGsF5DP1
 IEN60a0zl3J/8Q11vQQKvUZYEuGM5/Z80QgXB/n2QI5BHdMlQ4RSNbnhkww+bkiKNSse
 pRVHJlIH1yblzsRLEg8INfmM6XsBKkfcY1MqTGETB6SLl46raOwW3ukMJGwhGP3SOd9L
 CLFiR6Iq4ENyimB8ULUC2auEO+5eDfZBR32BrO+MGHARnXOLlK38TE8K1JA/IgDjC3lP
 rZJoXdvIQSGkzkXRUBArZ/q+hzhQWZNavovYI1BJz/HQ22CT6JOVlCINxJCjcqHm9vZj
 fQWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=38zDDokHElXDF1m2WPBTGdMLTi6vrk9rhzTTl17l9jM=;
 b=fQU56i4/hOJMeL1/aWgSWbD67Wv2ZXVl0m2VHceSb+PmkMam+up3n7F1JIUxuGY9zM
 5BJIQMDgsZmAtl+hPJk7mXdZGewMW90nLH5ISlym0MdzS3UqYrDd3/e0Ib4vpLls/zma
 F/mQyEz/oK/gVo1BREqBLaetl6p/ZdQoK2LVExlqxzSjpKdXr2/YLv+552qGa5JUedCj
 NzX7ty2nWFuuQfrRMCo8n6um+Onb41gwQFCO4dKj5V1L1WTkClbm2JFlWv0U+Imodx0U
 WgtZGiPUPHsktVwC7Lb3yzOIN+6JuN+2DbYY8B17Vlh57G85QKHr/oPUGvtsZZwH4jor
 JEhg==
X-Gm-Message-State: AOAM5335N66dkyjUYuo9EZlw6Cqjsn2U6HUEz8RzW5NLk4TQQ6i6VZ9I
 uCKrBXL5OqjBYdQZeNxjTAxIXs64
X-Google-Smtp-Source: ABdhPJzY2KxoGUKONl45MmL14aFVNbgeNWECLJ6bb6FVV02mF+2ozx4Whw/Yonov1G8xNVbMAAU7fw==
X-Received: by 2002:ac8:36bb:: with SMTP id a56mr67324402qtc.201.1594322074951; 
 Thu, 09 Jul 2020 12:14:34 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id 142sm4826535qki.35.2020.07.09.12.14.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 Jul 2020 12:14:34 -0700 (PDT)
Message-ID: <5F076C99.8000303@gmail.com>
Date: Thu, 09 Jul 2020 15:14:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFPzw1m-mmo1=awxMVoa3mPSQPJ7qD9G-gA=oXTz6k+35XLQHA@mail.gmail.com>
In-Reply-To: <CAFPzw1m-mmo1=awxMVoa3mPSQPJ7qD9G-gA=oXTz6k+35XLQHA@mail.gmail.com>
Subject: Re: [USRP-users] Timeout error with LO aligned
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
Content-Type: multipart/mixed; boundary="===============2836907314339289307=="
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
--===============2836907314339289307==
Content-Type: multipart/alternative;
 boundary="------------090502080505080902080400"

This is a multi-part message in MIME format.
--------------090502080505080902080400
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/09/2020 03:09 PM, Anabel Almodovar via USRP-users wrote:
> Hello,
>
> I am trying to sync two X310 cards with two TwinRXs using timed 
> commands as indicated in links 
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD and 
> https://files.ettus.com/manual/page_sync.html. However, when using the 
> "set_comand_time" statement I get a timeout error.
>
> */Unexpected Standard exception from MEX file.
> What() is:ERROR_CODE_TIMEOUT  No packet received, implementation 
> timed-out./*
>
>  I'm working on Ubuntu 16.04 with UHD 3.12.0.0 and run the code in 
> Matlab R2018a.
> Does anyone know why this error may be caused?
>
> Thank you in advance.
>
> Regards,
> Anabel
>
>
You should probably upgrade to the most-recent version of UHD that 
MatLab allows, since there have been many updates and bug-fixes since then.
   Also, Ubuntu 16.04 is really, really out-of-date.




--------------090502080505080902080400
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/09/2020 03:09 PM, Anabel
      Almodovar via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAFPzw1m-mmo1=awxMVoa3mPSQPJ7qD9G-gA=oXTz6k+35XLQHA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hello,
        <div><br>
        </div>
        <div>I am trying to sync two X310 cards with two TwinRXs using
          timed commands as indicated in links <a moz-do-not-send="true"
href="https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD">https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD</a> and <a
            moz-do-not-send="true"
            href="https://files.ettus.com/manual/page_sync.html">https://files.ettus.com/manual/page_sync.html</a>.
          However, when using the "set_comand_time" statement I get a
          timeout error.</div>
        <div><br>
        </div>
        <div><b><i>Unexpected Standard exception from MEX file.<br>
              What() is:ERROR_CODE_TIMEOUT  No packet received,
              implementation timed-out.</i></b><br>
        </div>
        <div><br>
        </div>
        <div> I'm working on Ubuntu 16.04 with UHD 3.12.0.0 and run the
          code in Matlab R2018a.</div>
        <div>Does anyone know why this error may be caused?<br>
        </div>
        <div><br>
        </div>
        <div>Thank you in advance.</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Anabel</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">
</pre>
    </blockquote>
    You should probably upgrade to the most-recent version of UHD that
    MatLab allows, since there have been many updates and bug-fixes
    since then.<br>
      Also, Ubuntu 16.04 is really, really out-of-date.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------090502080505080902080400--


--===============2836907314339289307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2836907314339289307==--

