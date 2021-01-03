Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4962E89F7
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jan 2021 03:03:13 +0100 (CET)
Received: from [::1] (port=52732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kvsjg-0003ca-Mi; Sat, 02 Jan 2021 21:03:12 -0500
Received: from mail-qt1-f178.google.com ([209.85.160.178]:34487)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kvsjc-0003XG-G7
 for usrp-users@lists.ettus.com; Sat, 02 Jan 2021 21:03:08 -0500
Received: by mail-qt1-f178.google.com with SMTP id 7so16320261qtp.1
 for <usrp-users@lists.ettus.com>; Sat, 02 Jan 2021 18:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=jMtJ65DKA0rGLuqBUf0X3XN6cH/p5eIuUN08n7t27x4=;
 b=cqTxYWbTI6ZZErodFWRWQDKv9jcFA1+kSh7rFj0BihZIXg/FiwQIWJ5z3MUS7rIvzV
 OtaUzhX1qgiAdjoy1IZWjvAdZqPZCQAjnlmIR39qScK+eOS/90SkolYh1eyfcRQGZzOJ
 8+i0cS5DKHVXy30Dziaeyby+CrMZ5e8/6uTZhTmC9v5V4onUqfbknjXrwHyp+lXZcT05
 bDbTRiIxjk+jDnimjsxwiBiUz8Ij4ajHzNckrdr3aV4OqnuIgDt/66iD0zXl4VbyhW0y
 oLkByBD5oTjkbf8Dgv2dghMskqNm39GWBPEkdyfCbgX7EEKny8UdVD2q+KNEKrySHc1E
 5bVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=jMtJ65DKA0rGLuqBUf0X3XN6cH/p5eIuUN08n7t27x4=;
 b=PxqnetP7WPEMu4JECcHWjHb0cRZecV2BjocrsVNw8VkoHI1WYV9P4AEy9NvfeI98IW
 YDOjBHKdiryG4b0GKyN/SfZZCuBgfK55j8Nbg/Vkltd8oD+XUovof9tXXWIYnVhmVd4E
 Lpq1dcK1ce/OSEXvk129juZWY2PIQbxO54uueqGBZoF05DQajkwujIEpf5vS99+2J8AO
 eXhzFnZya6NEPOh2tjyEycvTTUEfNEUfpCKHRCU6pI5I/iigR0xHsh9lhHNuT5LYpgJ2
 6oKMAhwg3Y1CALf4FdlYAkEnyr2C7gb7qHSHQ/8MsvDqjyRTj/ruZXzWZ2IP3FSUo18E
 EMEg==
X-Gm-Message-State: AOAM530sM5oNjaVxIUItpbC04R8DLlKXAeleppGkvRp50M2hIrJ1rdi1
 CY+Wbh+ksHxkjtNQ+q+bUBgElusQwa8=
X-Google-Smtp-Source: ABdhPJxI9gL7Bvk2sWl7bZwYwEEkM9JkGuVm3yM+M2HzaxA2+u9xnXO5dRYNqcs2P/x1v2e8Lsaq1g==
X-Received: by 2002:ac8:7b38:: with SMTP id l24mr68607385qtu.136.1609639347574; 
 Sat, 02 Jan 2021 18:02:27 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id b65sm18335596qkg.75.2021.01.02.18.02.26
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 02 Jan 2021 18:02:27 -0800 (PST)
Message-ID: <5FF125B2.3090305@gmail.com>
Date: Sat, 02 Jan 2021 21:02:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAG_Bp07GxnZHS7kQbBYgDU=y7PbEyihAm5u=hrYpzD1xMKd-Pg@mail.gmail.com>
In-Reply-To: <CAG_Bp07GxnZHS7kQbBYgDU=y7PbEyihAm5u=hrYpzD1xMKd-Pg@mail.gmail.com>
Subject: Re: [USRP-users] implementation of member functions in gnuradio
 blocks
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
Content-Type: multipart/mixed; boundary="===============4142458414124647218=="
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
--===============4142458414124647218==
Content-Type: multipart/alternative;
 boundary="------------050806090605090102000606"

This is a multi-part message in MIME format.
--------------050806090605090102000606
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/02/2021 08:55 PM, Linda20071 via USRP-users wrote:
>
>
>       I installed gnuradio from source via "gitclone" command. Thus, I
>       would assume all the source files
>
>
>       should be in my computer. However, I am able to find
>       mpsk_receiver_cc.h, but not its
>
>
>       implementation: mpsk_receiver_cc.cc. I am interested in taking a
>       look at the implementation
>
>
>       of a member function mpsk_receiver_cc(...).
>
>
> Does this mean some function implementations are intentionally hidden 
> by the software company? Is there a way to pull this .cc file out?
>
> MATLAB makes all its implementations accessible to its users, which is 
> very convenient.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
This is the kind of question that is best targetted at the 
discuss-gnuradio mailing list, rather than here.

But this issue-tracker issue probably explains what you're seeing:

https://github.com/gnuradio/gnuradio/issues/1083



--------------050806090605090102000606
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/02/2021 08:55 PM, Linda20071 via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAG_Bp07GxnZHS7kQbBYgDU=y7PbEyihAm5u=hrYpzD1xMKd-Pg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <h3 class="gmail-iw"
style="overflow:hidden;white-space:nowrap;font-size:0.75rem;font-weight:inherit;margin:inherit;text-overflow:ellipsis;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;letter-spacing:0.3px;color:rgb(95,99,104);line-height:20px">I
          installed gnuradio from source via "git<span
style="font-family:Arial,Helvetica,sans-serif;font-size:small;letter-spacing:normal;color:rgb(34,34,34)">
            clone" command. Thus, I would assume all the source files </span></h3>
        <h3 class="gmail-iw"
style="overflow:hidden;white-space:nowrap;font-size:0.75rem;font-weight:inherit;margin:inherit;text-overflow:ellipsis;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;letter-spacing:0.3px;color:rgb(95,99,104);line-height:20px"><span
style="font-family:Arial,Helvetica,sans-serif;font-size:small;letter-spacing:normal;color:rgb(34,34,34)">should
            be in my computer. However, I am able to find
            mpsk_receiver_cc.h, but not its </span></h3>
        <h3 class="gmail-iw"
style="overflow:hidden;white-space:nowrap;font-size:0.75rem;font-weight:inherit;margin:inherit;text-overflow:ellipsis;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;letter-spacing:0.3px;color:rgb(95,99,104);line-height:20px"><span
style="font-family:Arial,Helvetica,sans-serif;font-size:small;letter-spacing:normal;color:rgb(34,34,34)">implementation:
            mpsk_receiver_cc.cc. I am interested in taking a look at the
            implementation </span></h3>
        <h3 class="gmail-iw"
style="overflow:hidden;white-space:nowrap;font-size:0.75rem;font-weight:inherit;margin:inherit;text-overflow:ellipsis;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;letter-spacing:0.3px;color:rgb(95,99,104);line-height:20px"><span
style="font-family:Arial,Helvetica,sans-serif;font-size:small;letter-spacing:normal;color:rgb(34,34,34)">of
            a member function mpsk_receiver_cc(...). </span></h3>
        <div><br>
          Does this mean some function implementations are intentionally
          hidden by the software company? Is there a way to pull this
          .cc file out?<br>
          <br>
          MATLAB makes all its implementations accessible to its users,
          which is very convenient.<br>
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
    This is the kind of question that is best targetted at the
    discuss-gnuradio mailing list, rather than here.<br>
    <br>
    But this issue-tracker issue probably explains what you're seeing:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/gnuradio/gnuradio/issues/1083">https://github.com/gnuradio/gnuradio/issues/1083</a><br>
    <br>
    <br>
  </body>
</html>

--------------050806090605090102000606--


--===============4142458414124647218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4142458414124647218==--

