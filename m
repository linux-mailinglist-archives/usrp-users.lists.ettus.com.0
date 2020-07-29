Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B0231EBA
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jul 2020 14:43:01 +0200 (CEST)
Received: from [::1] (port=38774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k0lQ8-000598-Nx; Wed, 29 Jul 2020 08:42:56 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:36348)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k0lQ4-00052Y-P3
 for usrp-users@lists.ettus.com; Wed, 29 Jul 2020 08:42:52 -0400
Received: by mail-qt1-f181.google.com with SMTP id t23so14328320qto.3
 for <usrp-users@lists.ettus.com>; Wed, 29 Jul 2020 05:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=GxpMiqoPNy3eVvp31ykxt9x0o5/cz8/9NQW3NDYmG1s=;
 b=AFtZNj1VmOqTnl9QF12VZc/bVSWhO0zz1SGqOfVbuXuVuwFRKLMx0INgmJH0f1H/dv
 4fP2guFjwlLlHUZNsolzux19jQ2Eu4kNWWCUzmo0jUA+Am9V7VG+rzxFeeqHeyzIKqM3
 M+Eddh9UYSPmMP4BxDjjNUoJF2dHgdwfNGLa7rpbKjHnm3970+0kOfDfl043Tk7uatl1
 EnfefW+aoPAPEETiJlAFLnc4MUOwNax+hw0pqyBdrYDI3hoHInj6m7f0sKZ7wV3w7WJ3
 VyWJ6OAOvCvSWuaD0THKGm2KcpsKgo6deNqKlSHxFJ0cXu5Vy+rRIxs9EEbifbPX3W2r
 W4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=GxpMiqoPNy3eVvp31ykxt9x0o5/cz8/9NQW3NDYmG1s=;
 b=Id51BMAwqbRadloBaBZAYKnk7XKVRx322KUu7rbqrXBRdTW8yvotDhZjorRcQ3c1Nn
 BCMxZhqSh3Mcx6csqKvSaUv6HuEDMmBBCkjJUZWppPmjqHCr8K0+vL3ZmIfIRbr47KLb
 XfSDmlVSnGxnxpi0j0voz2JVNVsE9Wf6tKNP5Xy/LAmiufPZsTXVt92GlJTmtNLuPj60
 OBQkclmkZ6zaj9AGnu8zIq7sNpbEuKwQwfglMF1JzbZlL7+yqsjNjmU4Ulb0DI5wq28H
 pzK+6ZynLsspW4sJo/5W9Ci21qkUTWtxBJXYKuIWbcKpiYperEiqW57m66m4A64luYbp
 /0Tw==
X-Gm-Message-State: AOAM531MAJB+Q0AznTqKA7lfc0PMtEQ/ercnep9WfpGRE4CEkDiHI9PB
 kZqTjXjAC/tbWpzmb8Rbg3B5C+67Za4=
X-Google-Smtp-Source: ABdhPJyh+zJqaE44I061BsnHV0WrZjIGVO9QzIZ+2gzI+/ntKyc5dWaO8Lte+VRBuRQlmiuDZE8c3A==
X-Received: by 2002:aed:3789:: with SMTP id j9mr13734644qtb.251.1596026531764; 
 Wed, 29 Jul 2020 05:42:11 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id g11sm1356229qke.128.2020.07.29.05.42.10
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 Jul 2020 05:42:11 -0700 (PDT)
Message-ID: <5F216EA2.2000300@gmail.com>
Date: Wed, 29 Jul 2020 08:42:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAAM_mTRyRd2B7x0ab+K4hT+O+FSWhz-kOsdUGd-ZkZtDZkgKrg@mail.gmail.com>
In-Reply-To: <CAAM_mTRyRd2B7x0ab+K4hT+O+FSWhz-kOsdUGd-ZkZtDZkgKrg@mail.gmail.com>
Subject: Re: [USRP-users] SFP port1 of USRP N310 does not work
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
Content-Type: multipart/mixed; boundary="===============2952503378627583502=="
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
--===============2952503378627583502==
Content-Type: multipart/alternative;
 boundary="------------030907010500090204070102"

This is a multi-part message in MIME format.
--------------030907010500090204070102
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/29/2020 08:14 AM, Heng Zhang via USRP-users wrote:
> Dear community,
>
> I follow this guide 
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide  
> and now I can connect to N310 by RJ45 port. And I also can connect to 
> SFP port0. However, when I  try to use SFP port1, it does not work. I 
> found that the green LED above SFP port 1 does not even illuminate 
> after connecting the PC to it. The network interface configuration of 
> PC is shown as follows
>
> enp1s0    Link encap:Ethernet  HWaddr d4:5d:64:9c:d1:86
>           inet addr:192.168.20.1  Bcast:192.168.20.255  Mask:255.255.255.0
>           inet6 addr: fe80::3ac5:ee40:457b:3554/64 Scope:Link
>           UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1
>           RX packets:1311 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:1937 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:191173 (191.1 KB)  TX bytes:249297 (249.2 KB)
>
> How can I use 10 Gb SFP port1? Any advice would be appreciated.
>
> Regards,
> Heng
>
My guess is that you have a problem with your cabling, or the SFP+ 
module that you plugged in to the USRP.

What SFP+ module are you using?  What type of wiring/optical?



--------------030907010500090204070102
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/29/2020 08:14 AM, Heng Zhang via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAAM_mTRyRd2B7x0ab+K4hT+O+FSWhz-kOsdUGd-ZkZtDZkgKrg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Dear community,
        <div><br>
        </div>
        <div><span style="font-family:Arial;font-size:14px">I follow
            this guide </span><a moz-do-not-send="true"
href="https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide"
            target="_blank"
            style="color:rgb(6,73,119);font-family:Arial;font-size:14px">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide</a><span
            style="font-family:Arial;font-size:14px">  and now I can
            connect to N310 by RJ45 port. And I also can connect to SFP
            port0. However, when I  try to use SFP port1, it does not
            work. I found that the green LED above SFP port 1 does not
            even illuminate after connecting the PC to it. The network
            interface configuration of PC is shown as follows</span></div>
        <div><span style="font-family:Arial;font-size:14px"><br>
          </span></div>
        <div>enp1s0    Link encap:Ethernet  HWaddr d4:5d:64:9c:d1:86  <br>
                    inet addr:192.168.20.1  Bcast:192.168.20.255
           Mask:255.255.255.0<br>
                    inet6 addr: fe80::3ac5:ee40:457b:3554/64 Scope:Link<br>
                    UP BROADCAST RUNNING MULTICAST  MTU:9000  Metric:1<br>
                    RX packets:1311 errors:0 dropped:0 overruns:0
          frame:0<br>
                    TX packets:1937 errors:0 dropped:0 overruns:0
          carrier:0<br>
                    collisions:0 txqueuelen:1000 <br>
                    RX bytes:191173 (191.1 KB)  TX bytes:249297 (249.2
          KB)<span style="font-family:Arial;font-size:14px"><br>
          </span></div>
        <div><span style="font-family:Arial;font-size:14px"><br>
          </span></div>
        <div><font color="#000000" face="Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style="font-size:14px">How can I
              use 10 Gb SFP port1? Any advice would be appreciated.</span></font></div>
        <div><font color="#000000" face="Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style="font-size:14px"><br>
            </span></font></div>
        <div><font color="#000000" face="Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style="font-size:14px">Regards,</span></font></div>
        <div><font color="#000000" face="Lucida Sans Unicode, Lucida
            Grande, sans-serif"><span style="font-size:14px">Heng</span></font></div>
      </div>
      <br>
    </blockquote>
    My guess is that you have a problem with your cabling, or the SFP+
    module that you plugged in to the USRP.<br>
    <br>
    What SFP+ module are you using?  What type of wiring/optical?<br>
    <br>
    <br>
  </body>
</html>

--------------030907010500090204070102--


--===============2952503378627583502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2952503378627583502==--

