Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A71863D80
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jul 2019 23:47:20 +0200 (CEST)
Received: from [::1] (port=59866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hkxxG-0000LC-Gi; Tue, 09 Jul 2019 17:47:18 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:37632)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hkxxD-0000FM-57
 for usrp-users@lists.ettus.com; Tue, 09 Jul 2019 17:47:15 -0400
Received: by mail-qk1-f174.google.com with SMTP id d15so325907qkl.4
 for <usrp-users@lists.ettus.com>; Tue, 09 Jul 2019 14:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=APglK7AY0df5yvZIZgyAFr8IfZddDakQ+L0MfINa9DY=;
 b=hs4cqBNiyQmiNP9cop1VSbUBb1wPVWCEt9UMbOGENzGineRZxvqdz55Gljgi/BxYGr
 /6gLif+3EC30LeuIreicYsXLE1jd4EMJXTzWzXyy96F1e5UOOCZ1B+Hyd32mz5QmiHSN
 4xKVXd3rKt1Jmn9rFkfyMCU/UMz45Bd0CUV8kaC4noo3ep54x9idx3F9TzeaAk5zCoXn
 gNIhD1Suq6n5hZr/9I5krcDZD9ozVLEW6Tnk2aZpRD0gTv3KZL3ViAW12bKQjmHZDrvu
 xL1Zj6LmjshqkVN3hj2Ml4ZJPMwDQM7nX9Wxh2EnPlq8OLLxn77EVGSC6ykt8zd86T/g
 QrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=APglK7AY0df5yvZIZgyAFr8IfZddDakQ+L0MfINa9DY=;
 b=D0zmMl3lP6KB2xn2e+t8g8hGDq1FsE3bR1EmmGGKHnrYsn7WHzJHVpt8MrHqtGgCkF
 JTy1+2ZNFLVF8NxEK9lw0sAyzr8e1bkJkCdnssSoi6uSXz7BJZ5qzU7GixC5qb0wGlNY
 3a2sltnLFljoLTxljAveoK5L+61Qyui3BNGAOjXWWF7AEZat64upXyouzc4xKjE/D9w+
 1Q7xMID/jWvB4vCMDaBkNUNRor8I9JjLdAeKhVHzW/QBtQD98B+qKBvHdCkns6CfDufJ
 HNYCGQzre5JGzDvoVjxZuUcb2WUB3EhJIiQTl+3SZppp6avKoQTFSqFapYAQsNNfAn1j
 xqZg==
X-Gm-Message-State: APjAAAWljztBTEn/0mIwff884GC68C0tYsghTyQhJvcQ80dBmyuI8KWp
 XEwSSmeuP+GouhP1k9GNV7id4yoD
X-Google-Smtp-Source: APXvYqy1RLW1x+vofO2JyP/Xcb/aQPoZWmD6O9kmeRaivgjLdVV4TKwG7NJVH9p3czux24kV8py6hA==
X-Received: by 2002:a05:620a:44:: with SMTP id
 t4mr20689375qkt.189.1562708794419; 
 Tue, 09 Jul 2019 14:46:34 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id s25sm110180qkm.130.2019.07.09.14.46.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 14:46:33 -0700 (PDT)
Message-ID: <5D250B39.5030201@gmail.com>
Date: Tue, 09 Jul 2019 17:46:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANQ3h38pXPO0OYEEYQ=NjKmbvnepaKJJiVHUyGAqtHntYMM3rA@mail.gmail.com>
 <CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com>
In-Reply-To: <CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com>
Subject: Re: [USRP-users] Command uhd_fft throwing seg fault (core dumped)
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
Content-Type: multipart/mixed; boundary="===============2716510105050503974=="
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
--===============2716510105050503974==
Content-Type: multipart/alternative;
 boundary="------------030308050909050702030502"

This is a multi-part message in MIME format.
--------------030308050909050702030502
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/09/2019 04:41 PM, Saeid Hashemi via USRP-users wrote:
> To include context, the uhd_config_info command shows the following:
>
> linux; GNU C++ version 4.8.4; Boost_105400; UHD_003.010.002.000-release
>
> And uname -a:
>
> Linux nuc03 3.19.0-61-lowlatency #69~14.04.1-Ubuntu SMP PREEMPT Thu 
> Jun 9 10:15:00 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
>
> The command line output from uhd_fft only shows the following:
>
> Segmentation fault (core dumped)
>
>
My guess is that your uhd_fft was linked against a different version of 
the UHD library than you currently have on your system.


>
> On Tue, Jul 9, 2019 at 4:10 PM Saeid Hashemi <saeidh@gmail.com 
> <mailto:saeidh@gmail.com>> wrote:
>
>     Hi all,
>
>     Running the command "uhd_fft" has been giving this result for me,
>     would anyone have a recommendation on how to fix the issue?
>
>     Thanks and regards,
>     Saeid
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------030308050909050702030502
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/09/2019 04:41 PM, Saeid Hashemi
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>To include context, the uhd_config_info command shows the
          following:</div>
        <div><br>
        </div>
        <div style="margin-left:40px">linux; GNU C++ version 4.8.4;
          Boost_105400; UHD_003.010.002.000-release<br>
        </div>
        <div><br>
        </div>
        <div>And uname -a:</div>
        <div><br>
        </div>
        <div style="margin-left:40px">Linux nuc03 3.19.0-61-lowlatency
          #69~14.04.1-Ubuntu SMP PREEMPT Thu Jun 9 10:15:00 UTC 2016
          x86_64 x86_64 x86_64 GNU/Linux</div>
        <div style="margin-left:40px"><br>
        </div>
        <div>The command line output from uhd_fft only shows the
          following:</div>
        <div><br>
        </div>
        <div style="margin-left:40px">Segmentation fault (core dumped)</div>
        <div style="margin-left:40px"><br>
        </div>
        <div style="margin-left:40px"><br>
        </div>
      </div>
    </blockquote>
    My guess is that your uhd_fft was linked against a different version
    of the UHD library than you currently have on your system.<br>
    <br>
    <br>
    <blockquote
cite="mid:CANQ3h38XTqxTTqKqCc376Q2gAygR4QAiX1V6CrJg8YOM-jm5gA@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Jul 9, 2019 at 4:10 PM
          Saeid Hashemi &lt;<a moz-do-not-send="true"
            href="mailto:saeidh@gmail.com">saeidh@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">Hi all,
            <div><br>
            </div>
            <div>Running the command "uhd_fft" has been giving this
              result for me, would anyone have a recommendation on how
              to fix the issue?</div>
            <div><br>
            </div>
            <div>Thanks and regards,</div>
            <div>Saeid</div>
          </div>
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

--------------030308050909050702030502--


--===============2716510105050503974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2716510105050503974==--

