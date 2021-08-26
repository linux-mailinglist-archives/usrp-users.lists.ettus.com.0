Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAB63F8A94
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 16:59:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8D177384237
	for <lists+usrp-users@lfdr.de>; Thu, 26 Aug 2021 10:59:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ohzUNKPG";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 594C8383C37
	for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 10:58:36 -0400 (EDT)
Received: by mail-qk1-f171.google.com with SMTP id 14so3664594qkc.4
        for <usrp-users@lists.ettus.com>; Thu, 26 Aug 2021 07:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=kVWUPWwivnVBl0SWktMV7zgA60HQ+o/s8ep/T7+DZVU=;
        b=ohzUNKPGtkl4Ub872FDGgUDYnN9gdbtrpbMkg4B/J7NVyaehElkGoqlNaD85u0xZxx
         awCZNkAVJ9RQhb2bqQdBV9Cbfr6NEcsA0Y0WLYaniSut7QAPFioL/T9OhEdq2/gv6j0m
         ASRfZZ0l7KLOD7sF1f4EA2AKwDZjB+vPLh/8Iwe7OSfSYq0W0tG8BPiBnA2HXT3rks7a
         vN+8btIbVJ9Cz44MjMw8I9TkGPP09DQyp9huJChTWyfYrupIlhCqjL1ubwEYIXih8TYD
         0upQzTPIGn8kWMh/pPKFsEuD5+PB/iviYIIQQawezhb2+/3DUl55IkuLJ48ZvFHc68jg
         fsuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=kVWUPWwivnVBl0SWktMV7zgA60HQ+o/s8ep/T7+DZVU=;
        b=jCUNX7Gh9BxBf21y/JGz+fZ64/EoPgeGFC0Y7IILowGp6d+eW872Rn3ImoKiRZdM8K
         vG76uzIL4XEJrQ6pXN8TkCWMHhiN399EXMk0Bq9GGr72P5z1PD7n1wGY/Z6wJtiDwwB3
         UJ3YbDLa4ZAjidc7jfYENSDeR+VjG6i+8P2AsbKEyYgyxffS83pdAceGHa62OhJsXBum
         MPxifF7kGgc0jVLXTdXxqt/QqDtsv9THtWq+hsWhvg4zIyTyPUr9vQ1EvlTXTifAtjDH
         Tdt3UvTkz6UPksAcSylAOehOyBGlPuXadD57ReP/4NAy4+jIV5uVojZSDzUUgNcnK3Zv
         4liw==
X-Gm-Message-State: AOAM531eCx2aeklhGZ4R2s4qcztH3Zu9/0svzUASX6/SE2VKzbgCBJZ4
	YoUjw4PbYrCs79n+rGmICAmRGlwGxRM5aQ==
X-Google-Smtp-Source: ABdhPJyxYmhVu1zHE32iCQ9PUbKXs++BdY4rBMFIVoakOFCOuj8+4EYizpSR+hP/HZBCLccdRGs4mg==
X-Received: by 2002:a05:620a:2297:: with SMTP id o23mr4164966qkh.405.1629989915644;
        Thu, 26 Aug 2021 07:58:35 -0700 (PDT)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id s20sm1819180qtw.14.2021.08.26.07.58.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 07:58:35 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <ff7d48dc-f52e-76ed-bb9a-e6ee287d6838@gmail.com>
Date: Thu, 26 Aug 2021 10:58:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: MVHAHAE5I5YJNNQSWDYU4575CGNX2UOQ
X-Message-ID-Hash: MVHAHAE5I5YJNNQSWDYU4575CGNX2UOQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python documentation / interfacing with GPSDO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MVHAHAE5I5YJNNQSWDYU4575CGNX2UOQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6063039626838669997=="

This is a multi-part message in MIME format.
--===============6063039626838669997==
Content-Type: multipart/alternative;
 boundary="------------CBF3865061BD08E862749341"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CBF3865061BD08E862749341
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-08-26 10:10 a.m., thebouleoffools@gmail.com wrote:
>
> In case anyone is searching this in the future for the E320, I managed 
> to get time sync working in the background by cross compiling NTP and 
> configuring ntp.conf to use the loopback address for the GPSDO:
>
>
> |# GPS Serial data reference server 127.127.28.0 minpoll 4 maxpoll 4 
> fudge 127.127.28.0 time1 0.0 refid GPS # GPS PPS reference server 
> 127.127.28.1 minpoll 4 maxpoll 4 prefer fudge 127.127.28.1 refid PPS |
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
It would be super if there were package repos for OE-based systems, but 
alas, there aren't

So for many things, you need to pull the source, and cross-compile. 
Thanks for posting this to the list.

--------------CBF3865061BD08E862749341
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-26 10:10 a.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:thebouleoffool=
s@gmail.com">thebouleoffools@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:XdTYC630llIAfYh8RjEwAvlbMXBzxG8fFbadEsEyc4@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html;
        charset=3Dwindows-1252">
      <p>In case anyone is searching this in the future for the E320, I
        managed to get time sync working in the background by cross
        compiling NTP and configuring ntp.conf to use the loopback
        address for the GPSDO:</p>
      <p><br>
      </p>
      <pre><code># GPS Serial data reference
server 127.127.28.0 minpoll 4 maxpoll 4
fudge 127.127.28.0 time1 0.0 refid GPS

# GPS PPS reference
server 127.127.28.1 minpoll 4 maxpoll 4 prefer
fudge 127.127.28.1 refid PPS


</code></pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    It would be super if there were package repos for OE-based systems,
    but alas, there aren't<br>
    <br>
    So for many things, you need to pull the source, and cross-compile.=A0
    Thanks for posting this to the list.<br>
  </body>
</html>

--------------CBF3865061BD08E862749341--

--===============6063039626838669997==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6063039626838669997==--
