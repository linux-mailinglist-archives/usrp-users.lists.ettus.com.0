Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8591A47AF
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2020 16:57:20 +0200 (CEST)
Received: from [::1] (port=43548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jMv5q-0003Lx-1q; Fri, 10 Apr 2020 10:57:18 -0400
Received: from mail-qv1-f42.google.com ([209.85.219.42]:34203)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jMv5m-0003GQ-IM
 for usrp-users@lists.ettus.com; Fri, 10 Apr 2020 10:57:14 -0400
Received: by mail-qv1-f42.google.com with SMTP id s18so1043717qvn.1
 for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2020 07:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=LQf2ZtRhsHkZxU3wyrR4H/9o3K6G1vkLwHJrORU5hrU=;
 b=Kwhj1ZmGgBs86DdiZZDvWZiN/EYDblNDof5cgAGXSuBvRPM9tO/pjY+eCYGCD1k0zg
 YC2SKMZlVVimi6i0b1N4n3UdT75skNQpXoUFI4+INSy5erckHUKEFCdq0TZCFl4HmbLU
 0Phz4YNpZrN4L+CRtSoBcbmpv3uqKJJqutGHII1UN0aDsu5qkog/v2mcCroH4ff1jI3l
 cASRmVCk6OOhPwnDGGgyfkGYX/wQguYv+mGNDI6fJYWUi5wp+proQOHobMMAvnRjwWz5
 EpdAoM4iq4VV4MOzRhulMJAnjV8AGKfybCtcvVMuW6NBr0l3K7V2R/1GzWduUsIT5Cca
 riJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=LQf2ZtRhsHkZxU3wyrR4H/9o3K6G1vkLwHJrORU5hrU=;
 b=GeVgTkXKpTrzVKZDhV3QBhc2pWGHR2n2PwZw0+SctCqn+kJM578UCjYfNDhRWrTgCG
 mkBoTNaOUVj8Ad3I+bOGGY8Z8zItXbZEVvMS+uWZk//1/4S6TjxS6XKo2+Lj0SDoBAJo
 pVPWXKwQ/hTi23AJCSdFgfnTu+2nCld1DSHp34DLnfISrIUf2V17QWxig3OZUbH+4eCF
 L6IjgpXmf7OJaWII6ZoGRpLNiW/s0rpkPozaDTGxnCygTladgHJZqcgSipv9DpM7AzBt
 7AB9F9Wd0Gv/4G2q2pMKdcafO8q0IGLoFE+T+bcSwVuxZ6HCLZXj36nxL+Mw0IzFrc+r
 8zCg==
X-Gm-Message-State: AGi0PubKf+YivqdBVwGWyAdG4b+yp8mIzMlZ2nTSOn47Jwqm0+E9xuXI
 wXFjHOfviHdPO5dR1Adr7bJ/bIRGTOs=
X-Google-Smtp-Source: APiQypLa0B9FIavUReRZoY4YlbV9wUjPZYqs89DlfZuBwA7ZJaci/YzUOOG7/tGz8HdBoeByPwv/TA==
X-Received: by 2002:a0c:e848:: with SMTP id l8mr5585774qvo.82.1586530593760;
 Fri, 10 Apr 2020 07:56:33 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id n63sm1758941qka.80.2020.04.10.07.56.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 07:56:33 -0700 (PDT)
Message-ID: <5E90891F.6060508@gmail.com>
Date: Fri, 10 Apr 2020 10:56:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <MN2PR05MB6158024B384B2167EDE0F3A1CCC10@MN2PR05MB6158.namprd05.prod.outlook.com>
 <BYAPR03MB4678BE943BAAE738CFFB24B4D3C10@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CADBWrHjmRmKZ55Ud33HbENZPb91FtQLsnQywwjK6mE8rqTGtWw@mail.gmail.com>
In-Reply-To: <CADBWrHjmRmKZ55Ud33HbENZPb91FtQLsnQywwjK6mE8rqTGtWw@mail.gmail.com>
Subject: Re: [USRP-users] E312 fails to run uhd_usrp_probe from host
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
Content-Type: multipart/mixed; boundary="===============0883048298541344814=="
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
--===============0883048298541344814==
Content-Type: multipart/alternative;
 boundary="------------080103040201040902030509"

This is a multi-part message in MIME format.
--------------080103040201040902030509
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/10/2020 09:15 AM, Sam Reiter via USRP-users wrote:
> Francisco,
>
> The FPGA update sounds like a good step. I also notice that the 
> 'addr'  argument you pass seems to be interpreted as a 'mgmt_addr' 
> based on the [INFO] output. In newer embedded devices like the N3xx, I 
> wouldn't expect you to be able to successfully run a uhd_usrp_probe 
> over that mgmt address - you can't pass CHDR packets over the mgmt 
> interface. On the N3xx, I'd tell you to connect over the SFP+ port(s) 
> and try again. The E312 obviously doesn't have SFP+ ports, so I think 
> you'd need to set it up to operate in "network mode" to enable this 
> CHDR streaming over the RJ45. I'm not sure what the state of network 
> mode is on the E31x in UHD 3.15.
>
> Alternatively, you could try SSH'ing into your E312 over that mgmt 
> port, and then run the uhd_usrp_probe directly on the device. I'd 
> expect that to work over the mgmt port every time.
>
> -Sam
See:

https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration


The Network Mode is no longer supported on E31x with the MPM-based UHD.


>
>     UHD 3.15.0.HEAD-0-gaea0e2de
>
>     Any clue?
>     Many thanks!
>
>     Francisco
>     _______________________________________________
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


--------------080103040201040902030509
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 04/10/2020 09:15 AM, Sam Reiter via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CADBWrHjmRmKZ55Ud33HbENZPb91FtQLsnQywwjK6mE8rqTGtWw@mail.gmail.com"
      type="cite">
      <div dir="ltr">Francisco,
        <div><br>
        </div>
        <div>The FPGA update sounds like a good step. I also notice that
          the 'addr'  argument you pass seems to be interpreted as a
          'mgmt_addr' based on the [INFO] output. In newer embedded
          devices like the N3xx, I wouldn't expect you to be able to
          successfully run a uhd_usrp_probe over that mgmt address - you
          can't pass CHDR packets over the mgmt interface. On the N3xx,
          I'd tell you to connect over the SFP+ port(s) and try again.
          The E312 obviously doesn't have SFP+ ports, so I think you'd
          need to set it up to operate in "network mode" to enable this
          CHDR streaming over the RJ45. I'm not sure what the state of
          network mode is on the E31x in UHD 3.15. </div>
        <div><br>
        </div>
        <div>Alternatively, you could try SSH'ing into your E312 over
          that mgmt port, and then run the uhd_usrp_probe directly on
          the device. I'd expect that to work over the mgmt port every
          time.</div>
        <div><br>
        </div>
        <div>-Sam</div>
      </div>
    </blockquote>
    See:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration">https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration</a><br>
    <br>
    <br>
    The Network Mode is no longer supported on E31x with the MPM-based
    UHD.<br>
    <br>
    <br>
    <blockquote
cite="mid:CADBWrHjmRmKZ55Ud33HbENZPb91FtQLsnQywwjK6mE8rqTGtWw@mail.gmail.com"
      type="cite"><span><br>
      </span>
      <div class="gmail_quote">
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div dir="ltr">
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><span>
                  <div>UHD 3.15.0.HEAD-0-gaea0e2de<br>
                  </div>
                  <span></span></span><br>
              </div>
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Any
                clue?</div>
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Many
                thanks!</div>
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)"><br>
              </div>
              <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">Francisco</div>
            </div>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
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

--------------080103040201040902030509--


--===============0883048298541344814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0883048298541344814==--

