Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 078E94A7466
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 16:15:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 14FFB3850AA
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 10:15:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="qnhjI+4w";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CDC9384FDE
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 10:14:28 -0500 (EST)
Received: by mail-qk1-f171.google.com with SMTP id c189so18364522qkg.11
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 07:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=KFKilFgBP2/vjC0qn6tNTJbvbj58tr5gMOV2E7RphNQ=;
        b=qnhjI+4wj5IrDB70DcdV0JY56UNzKwrW4VGhhWFthGWtGh8EldrOcEBrGal9j5F1Gp
         Ug/7y0d6YeIIAFs++SViNCiX1MU2G9NsVK6yXRxTd8TJ7WUihIFJHCgBWXFGITYjIdW6
         WQJiOAqvcczG/lAC6jVAHaBsWo9DQBenK/yftXdvjo3LQsGMrVQF1cIl3c/EG3FhcyaV
         U4KRotpqFW3B8IGBI3Z7kROJeQ9tlyIFaj7zI8ScWuHdLLznttA6h2/pns2L8v84QJRX
         kJpUF1dHeU6N8aB1sjno3TOHGzIgmRNtr2rgWDGlRnoYF9qneZxorGeLr+ruedh5czLL
         aQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=KFKilFgBP2/vjC0qn6tNTJbvbj58tr5gMOV2E7RphNQ=;
        b=rTxzz0Rydcw73vMLRb2nThIjdtYn3ehE1PkcKZoda+Ry32BJ33nYhnY5JQxID5VJqz
         F4cXZLJWlHZr5svUn4xLDs2ai2vs4Mj3POv1QyjIw1TBKXcYUBd0O9EY1Qsjq4yuuIBs
         lBHcgHScl5PqyM/ZHQV6wiW059vYPXPjC2mFYv2/+4gLyEweBFJSHS744Ydo5MFr6ibB
         guxsvnUxEPrAQ5jaEJ5YO38EIYznTLxYgw8uoehUgJufa8axNcXLv7HoN6SlAyYd29pk
         QfcBR/VTFOUbUOqz1fN49u84io1y/ckGTG6rXJop5yGzlald3x8OK1XgM05vjqGZWuy8
         CUxg==
X-Gm-Message-State: AOAM533WJYSexr5bWmSgRrklaY2AXC+xT87mVWKvI+wlgbjF7yEahguX
	x08tCsH807/yugByDx0zEPW0HbFcfPspaw==
X-Google-Smtp-Source: ABdhPJyRY7g8//nvtgboDciNZsOGdBpVQH0Ko3gde8qw3KsrmtHLDABUZsxUUGnntLCaqbe4EzJqWA==
X-Received: by 2002:a05:620a:4628:: with SMTP id br40mr18637789qkb.415.1643814867407;
        Wed, 02 Feb 2022 07:14:27 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v2sm11733915qti.32.2022.02.02.07.14.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 07:14:26 -0800 (PST)
Message-ID: <85910436-0707-e41d-c985-f5ec2d4cb095@gmail.com>
Date: Wed, 2 Feb 2022 10:14:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <8f7TlfCAFWfzt9piIg97MbabyC9dsshglGXvLN4e8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <8f7TlfCAFWfzt9piIg97MbabyC9dsshglGXvLN4e8@lists.ettus.com>
Message-ID-Hash: XLTWLEUS547KPBKIAEMFRLSSN7IRJVGL
X-Message-ID-Hash: XLTWLEUS547KPBKIAEMFRLSSN7IRJVGL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XLTWLEUS547KPBKIAEMFRLSSN7IRJVGL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8146990022659897709=="

This is a multi-part message in MIME format.
--===============8146990022659897709==
Content-Type: multipart/alternative;
 boundary="------------0Nj1skreBJ5vsxH9Qy00nB3z"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0Nj1skreBJ5vsxH9Qy00nB3z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-02 08:11, seckinoncu8070@gmail.com wrote:
>
> Hello Marcus,
>
>  *
>
>     I attached the related pictures of error counters. There is no
>     problem caused by NIC.
>
>  *
>
>     There is also problem with 5 Msps sample rate but it took longer
>     time (almost 4 minutes) to give error. When I increase the sample
>     rate it took shorter time to give error.
>
>      o
>
>         TX at 5 Msps gives error after 4 minutes
>
>      o
>
>         TX at 10 Msps gives error after 2.5 minutes
>
>      o
>
>         TX at 20 Msps gives error after 1.5 minutes
>
>      o
>
>         TX at 50 Msps gives error after 50 seconds
>
>  *
>
>     I am running on native hardware. Ubuntu 20.04 and UHD 4.1.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Can you use "htop" to look at the CPU consumption when you're using=20
benchmark_rate at 5Msps?=C2=A0=C2=A0 Just working on a hunch.


--------------0Nj1skreBJ5vsxH9Qy00nB3z
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-02 08:11,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:seckinoncu8070=
@gmail.com">seckinoncu8070@gmail.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:8f7TlfCAFWfzt9piIg97MbabyC9dsshglGXvLN4e8@lists.ettus.c=
om">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello Marcus,</p>
      <ul>
        <li>
          <p>I attached the related pictures of error counters. There is
            no problem caused by NIC. </p>
        </li>
      </ul>
      <ul>
        <li>
          <p>There is also problem with 5 Msps sample rate but it took
            longer time (almost 4 minutes) to give error. When I
            increase the sample rate it took shorter time to give error.
          </p>
          <ul>
            <li>
              <p>TX at 5 Msps gives error after 4 minutes</p>
            </li>
            <li>
              <p>TX at 10 Msps gives error after 2.5 minutes</p>
            </li>
            <li>
              <p>TX at 20 Msps gives error after 1.5 minutes</p>
            </li>
            <li>
              <p>TX at 50 Msps gives error after 50 seconds</p>
            </li>
          </ul>
        </li>
        <li>
          <p>I am running on native hardware. Ubuntu 20.04 and UHD 4.1.</=
p>
        </li>
      </ul>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Can you use "htop" to look at the CPU consumption when you're using
    benchmark_rate at 5Msps?=C2=A0=C2=A0 Just working on a hunch.<br>
    <br>
    <br>
  </body>
</html>

--------------0Nj1skreBJ5vsxH9Qy00nB3z--

--===============8146990022659897709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8146990022659897709==--
