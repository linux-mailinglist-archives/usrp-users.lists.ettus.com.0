Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA76213D71
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2020 18:18:21 +0200 (CEST)
Received: from [::1] (port=46802 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jrOOG-0000cv-9F; Fri, 03 Jul 2020 12:18:16 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:39042)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jrOOB-0000Vt-Tz
 for usrp-users@lists.ettus.com; Fri, 03 Jul 2020 12:18:11 -0400
Received: by mail-qt1-f176.google.com with SMTP id o38so24239034qtf.6
 for <usrp-users@lists.ettus.com>; Fri, 03 Jul 2020 09:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=24gH1sWfB9dd1sCCpc3NVMRiSB9p7DkexK3GLsspcws=;
 b=Te8Nl/BRWxLghTQ4gyp/f0fQSV/4QQYE0mupEXvYP3MqWkD+oriqUA5UE6EKUgyBY4
 PvixBd1pflVG0h6zoItda0sM1Fv4crNmzF33OQSDr7zPyFr/F8yim8lJHMVAREgnAZju
 Q602Pwtk70tHtHUX8xpKJuR936bN7R/55we+elPVFECDm5wXcU1CX7UXUPjZE+RxLq5o
 8K8DmjBBD+Heo71DJuAT6fPHODhogFGDOBd2rsvAo51Ta0XTvz8NJ+kvfCf4ewc6xr2U
 qehHeoN1zYDjimxI1GGxEimNaEgCH+kSGkSntzHqeShE7Z+WgnrjCGsifJ2ta7NbUVXv
 5IoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=24gH1sWfB9dd1sCCpc3NVMRiSB9p7DkexK3GLsspcws=;
 b=HSp+OBayWIcK7rMfoU+dkF4y62jXPOugXibJo27505SJL3CgbHLgRfNv35ufRZpnAP
 noNsK/2Q1XaFqzfwU/H/LXqS+VXX8jkzg6xpLmL6fk96ugNyHjwrB96R+M33rQLeMB1Y
 qtO6cDHt9RCon5V+rSl8hR8R78JkVDPP0xkdYZe+iPkDCT6t3O8KrKlII+wcdlIAk2Hz
 PYO9asqZwSkDG4f1aAT2qhJ+Efq/wRuTXjWYw+PaBWU1SnnPwH/1d1O6FsM1uNjUfQqK
 qDLDJ3PONJ0QN6j350vDmSU0aYmds9e9kZi3Hqzttu11FxJ0KD0Z7tgAOcdaYwpayoiK
 SNzw==
X-Gm-Message-State: AOAM530Y1NnNkTZTZWGg70L2b7ovjVHeieoy6uLVbCY5g6kRHJloajHi
 Pv8pw3EsOuZrXZt/kkPVbTTFLWfk
X-Google-Smtp-Source: ABdhPJy5nfbb1KcUL+6XJu+CouGhY+DZfa9ouN5h2bT7RiJS2gKxmCYQmolEk9/0WH9Sbv74/ieXNQ==
X-Received: by 2002:ac8:1a0f:: with SMTP id v15mr37779754qtj.136.1593793051213; 
 Fri, 03 Jul 2020 09:17:31 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id r2sm10985522qtn.27.2020.07.03.09.17.30
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Jul 2020 09:17:30 -0700 (PDT)
Message-ID: <5EFF5A19.3090906@gmail.com>
Date: Fri, 03 Jul 2020 12:17:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAE0dfYYGNGZqh0YQPvmk1XfXY323Z93MmESUX9vJyTt79GrNYA@mail.gmail.com>
In-Reply-To: <CAE0dfYYGNGZqh0YQPvmk1XfXY323Z93MmESUX9vJyTt79GrNYA@mail.gmail.com>
Subject: Re: [USRP-users] How to use a Ham It Up with the USRP B210
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
Content-Type: multipart/mixed; boundary="===============3664155163112784073=="
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
--===============3664155163112784073==
Content-Type: multipart/alternative;
 boundary="------------050601010105050400090401"

This is a multi-part message in MIME format.
--------------050601010105050400090401
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/03/2020 12:03 PM, Alex Humberstone via USRP-users wrote:
> Just a quick and basic question. I want to receive down at like 
> between 1MHz and 10MHz. I have a USRP B210. I knwo that the USRP B210 
> only goes down to 70MHz. So I bought a Ham It Up 
> (https://www.nooelec.com/store/ham-it-up.html) upconverter to get down 
> to like 1MHz and 3 MHz. So how does this all work? Does the Ham It Up 
> upconvert the frequency range from 100KHz to 65MHz up to a center 
> frequency of 125MHz? So then isn't it true that if I tune the USRP 
> B210 to 125MHz, I would see my two 1MHz and 3MHz input tones appearing 
> up at 33.5MHz and 35.5MHz? Just want to clarify this in my mind. 
> Thanks a LOT for your help everyone!
>
>
>
> -- 
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University
> Las Cruces, New Mexico
>
>
Not quite.

An upconverter conceptually *ADDS* the incoming frequency to the LO 
frequency.  In the case of the HamItUp, the LO frequency is 125Mhz.
   So, to "see" 1MHz signals, you'd tune the B210 to 125MHz + 1Mhz == 
126MHz.  For a 20Mhz input signal, 125MHz + 20MHz = 145MHz, etc.



--------------050601010105050400090401
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/03/2020 12:03 PM, Alex
      Humberstone via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAE0dfYYGNGZqh0YQPvmk1XfXY323Z93MmESUX9vJyTt79GrNYA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_default"
          style="font-family:monospace;font-size:large">Just a quick and
          basic question. I want to receive down at like between 1MHz
          and 10MHz. I have a USRP B210. I knwo that the USRP B210 only
          goes down to 70MHz. So I bought a Ham It Up (<a
            moz-do-not-send="true"
            href="https://www.nooelec.com/store/ham-it-up.html">https://www.nooelec.com/store/ham-it-up.html</a>)
          upconverter to get down to like 1MHz and 3 MHz. So how does
          this all work? Does the Ham It Up upconvert the frequency
          range from 100KHz to 65MHz up to a center frequency of 125MHz?
          So then isn't it true that if I tune the USRP B210 to 125MHz,
          I would see my two 1MHz and 3MHz input tones appearing up at
          33.5MHz and 35.5MHz? Just want to clarify this in my mind.
          Thanks a LOT for your help everyone!<br>
        </div>
        <div class="gmail_default"
          style="font-family:monospace;font-size:large"><br>
        </div>
        <div class="gmail_default"
          style="font-family:monospace;font-size:large"><br clear="all">
        </div>
        <br>
        -- <br>
        <div dir="ltr" class="gmail_signature"
          data-smartmail="gmail_signature">
          <div dir="ltr"><font size="4"><span
                style="font-family:monospace">Sincerely,<br>
              </span></font>
            <div><font size="4"><span style="font-family:monospace">Alex-M-Humberstone</span></font></div>
            <div><font size="4"><span style="font-family:monospace">PhD
                  Student</span></font></div>
            <div><font size="4"><span style="font-family:monospace">Klipsch
                  School of Electrical Engineering<br>
                </span></font></div>
            <div><font size="4"><span style="font-family:monospace">New
                  Mexico State University<br>
                  <span><span>Las Cruces, </span></span>New Mexico</span></font></div>
            <div><font size="4"><span style="font-family:monospace"><br>
                </span></font></div>
            <div><font size="4"><span style="font-family:monospace"></span></font></div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Not quite.<br>
    <br>
    An upconverter conceptually *ADDS* the incoming frequency to the LO
    frequency.  In the case of the HamItUp, the LO frequency is 125Mhz.<br>
      So, to "see" 1MHz signals, you'd tune the B210 to 125MHz + 1Mhz ==
    126MHz.  For a 20Mhz input signal, 125MHz + 20MHz = 145MHz, etc.<br>
    <br>
    <br>
  </body>
</html>

--------------050601010105050400090401--


--===============3664155163112784073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3664155163112784073==--

