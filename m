Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A52154936
	for <lists+usrp-users@lfdr.de>; Thu,  6 Feb 2020 17:30:10 +0100 (CET)
Received: from [::1] (port=59286 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1izk2b-0001Mv-5g; Thu, 06 Feb 2020 11:30:09 -0500
Received: from mail-qk1-f179.google.com ([209.85.222.179]:43368)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1izk2X-0001E3-OX
 for usrp-users@lists.ettus.com; Thu, 06 Feb 2020 11:30:05 -0500
Received: by mail-qk1-f179.google.com with SMTP id j20so6107930qka.10
 for <usrp-users@lists.ettus.com>; Thu, 06 Feb 2020 08:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=y8iBtqfpjUq6Fqz/pAYMrEihB9XUmPIZyfeyNBMfwHY=;
 b=mWWDOeIBYE9aKZx+WjElDiFDURy4AOWYBZenxms9Z/NBBQ5d5UcFcdRjqG6nRkbjJ1
 Aqm1G2Q4mP9pqqQliIcRU6NeDiiGXUqbck/Jqx2iDIeQb4jgcD6F6pK8ZciGxFGYMVeQ
 2PowvRCLEIc7o1wGQ1hO/JIOEokogyCBqrXVuHmusKOJdnPLya8sCrxh1pXQz4wJ8c8w
 pvRRKoWDug2dcN/0UZdr/9tS8teIctdPLK06whg5YOI770O6RaSGXFkcepc5vAzEGmJr
 +cSwcMUEn5KPoqbfiPx7XopZruSUyOr/q+jogFAy+Iw48R8dwIpaifXuxlGw/EjWTLsy
 7vIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=y8iBtqfpjUq6Fqz/pAYMrEihB9XUmPIZyfeyNBMfwHY=;
 b=hR4h5CbcpeaaP13+vNDFeab22Yq2xR+8FpMYNtL8LeZxhpW3Cm21objRC5Wsxwgfaj
 BNMla/jnY4Zs3IordoZYxBiQjQ7rVDJUcCN59XT0lAJdxt8L2MM+rN4s8G0hx2KOJ6+W
 qj+LscAqXmTDMjxOiBq+PU3Nrwd3ZAxHE3N7P8a3ItM4bsSGAamKZf3p1LyAOiuikEoE
 H1ODQLBeJXR0To5iVtJinFzRffx07KOy08PMDEKSVoELkIgJ1TM7b2O7NOOWsjYwGrs2
 AaSlBwurA/g2CtsgrTys1aAxUZlW/o5uQbMLyoXkziRc0QfO2bS5+hiFLkhTxhpJY7E7
 dglA==
X-Gm-Message-State: APjAAAX2aC0O70Z8jA2ofwyEJNtoWb7x3nNqUHaSBx6VYrTvzMMlqFbr
 Yf3EermkYDYRyx4IR+xpP3MKNn9k
X-Google-Smtp-Source: APXvYqwiu6UHGMFONKT8X5MWHdRv0FIKofEUCj7Sg+OrMnpzW43AmY+hFmz4cL0R0aBu7iNFTAzOUw==
X-Received: by 2002:a05:620a:911:: with SMTP id
 v17mr3360910qkv.94.1581006565011; 
 Thu, 06 Feb 2020 08:29:25 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id g6sm1883125qtp.53.2020.02.06.08.29.24
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Feb 2020 08:29:24 -0800 (PST)
Message-ID: <5E3C3EE3.5060200@gmail.com>
Date: Thu, 06 Feb 2020 11:29:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <86368074.393649.1581004383613.ref@mail.yahoo.com>
 <86368074.393649.1581004383613@mail.yahoo.com>
In-Reply-To: <86368074.393649.1581004383613@mail.yahoo.com>
Subject: Re: [USRP-users] Getting time from USRP X300
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
Content-Type: multipart/mixed; boundary="===============0470436968074173430=="
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
--===============0470436968074173430==
Content-Type: multipart/alternative;
 boundary="------------080101090404090302070000"

This is a multi-part message in MIME format.
--------------080101090404090302070000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/06/2020 10:53 AM, voonna santosh via USRP-users wrote:
> Hi There,
>    I would like to connect external GPS antenna to X300 and get the 
> time once GPS is locked. Can you please throw pointers on following 
> things:
>
>   * Does X300 support specific GPS antennas? If so can you please let
>     me know ?
>
Any of the dozens of active GPS antenna on the market will work just fine.

>   * How do I know that X300's GPS is locked? Is there any API to query
>     for GPS lock status?
>   * Once GPS is locked what is the API to get the time?
>
The 'query_gpsdo_sensors' utility will show you how to use the GPSDO API.


>   * Is it possible to use X300 as NTP server? If so how could I
>     achieve it?
>
No, it has no NTP support.   GPS-based NTP servers are now quite cheap, 
so you should probably look into one of those.



>
> BR,
> Santosh
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------080101090404090302070000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/06/2020 10:53 AM, voonna santosh
      via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:86368074.393649.1581004383613@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">Hi There,</div>
        <div dir="ltr" data-setdir="false">   I would like to connect
          external GPS antenna to X300 and get the time once GPS is
          locked. Can you please throw pointers on following things:</div>
        <div dir="ltr" data-setdir="false">
          <ul>
            <li>Does X300 support specific GPS antennas? If so can you
              please let me know ?</li>
          </ul>
        </div>
      </div>
    </blockquote>
    Any of the dozens of active GPS antenna on the market will work just
    fine.<br>
    <br>
    <blockquote cite="mid:86368074.393649.1581004383613@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">
          <ul>
            <li>How do I know that X300's GPS is locked? Is there any
              API to query for GPS lock status?</li>
            <li>Once GPS is locked what is the API to get the time? <br>
            </li>
          </ul>
        </div>
      </div>
    </blockquote>
    The 'query_gpsdo_sensors' utility will show you how to use the GPSDO
    API.<br>
    <br>
    <br>
    <blockquote cite="mid:86368074.393649.1581004383613@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">
          <ul>
            <li>Is it possible to use X300 as NTP server? If so how
              could I achieve it?</li>
          </ul>
        </div>
      </div>
    </blockquote>
    No, it has no NTP support.   GPS-based NTP servers are now quite
    cheap, so you should probably look into one of those.<br>
    <br>
    <br>
    <br>
    <blockquote cite="mid:86368074.393649.1581004383613@mail.yahoo.com"
      type="cite">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">BR,</div>
        <div dir="ltr" data-setdir="false">Santosh</div>
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

--------------080101090404090302070000--


--===============0470436968074173430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0470436968074173430==--

