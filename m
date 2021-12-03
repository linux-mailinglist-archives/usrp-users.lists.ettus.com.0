Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBDF467F4D
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 22:28:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 818CB384E72
	for <lists+usrp-users@lfdr.de>; Fri,  3 Dec 2021 16:28:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rg7+FaSi";
	dkim-atps=neutral
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 32F7E384867
	for <usrp-users@lists.ettus.com>; Fri,  3 Dec 2021 16:27:02 -0500 (EST)
Received: by mail-io1-f52.google.com with SMTP id x6so5387369iol.13
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 13:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=+EdSG/VICNgjoMSBMn/Uj8B0cXwNV7IvQdaLY/xdImE=;
        b=Rg7+FaSiKeECrDHH31O7Aoz69G3xAfp57roUHJZcsuzYRg3jIFlR296iwKMDxuYT3R
         vxnZPGwKOHfAW3ii/Vcr+3E+Rwh9eUns6LUZ6shPTSr7IPy+/9lFWgdYQQfDWh6j+9rl
         lqturZ64iw8xG7vaCswhxa0pS8Ylltw9BJ3qOSqm9RPZoX38XPTAFCOt1IY1Y2HQsMeJ
         SkyCowIPJ63aSMH+JmrtHfwPuvn1l0Fm+eTHLfLOH+XoUcrH4Rxhslg1DDxn9ZvIwX7d
         xLN3JxwsujbBPzDkJwPKfim/ZqZNc22t7AQysgIPamJLPGEsJbQvRyP9D+ijbi1Uu5I7
         3YBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=+EdSG/VICNgjoMSBMn/Uj8B0cXwNV7IvQdaLY/xdImE=;
        b=x89xARsUelUyrX29WEOwJmIggf1JqOXJ4ob28JLyRmdsY8YwZtUFD3FyGnj3jO3POK
         hSf1JSmWYBWK0X+RmQ84nEMcmE+kteegn93MsDlpkRzdbA4eSZNPRMBBb+r2abYFv9HW
         Eb69FvBmqetqx6C7xKvGv+EIWKbf1H1u0B1Co8MBZSRs6cXXjlftjg8CoquHWSfTmzoo
         DE8vKAhMmWnYdbHfcUdI2kuU53wbxwqEquSfKp1zAWo2HgQK1CKrzUdU2RC+Rf4Yl7PP
         0dmQ/mYWbTc2NDbZKnOosDvRo5DSO+2dH42pKaUllfR6lRUYU5aPS9X7bFflTzcxri1K
         CUvg==
X-Gm-Message-State: AOAM530nGbqisQp5DYhVGuMaBw5O4Nm1IcYRhlu0CjgE9vZFf+rjLWOT
	/0jtK/GEVwqDJWUhFOOGYTLgr0s29nE=
X-Google-Smtp-Source: ABdhPJyFXbq2KUnZUFAUvLEYGkQiP7iUJR4IR+UQnINg/KReisVb3rHevH+c/ljlTyFnhfrzYSgONQ==
X-Received: by 2002:a02:ba8b:: with SMTP id g11mr25949700jao.128.1638566821277;
        Fri, 03 Dec 2021 13:27:01 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id i2sm2418048ilv.54.2021.12.03.13.27.00
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 13:27:00 -0800 (PST)
Message-ID: <cc4a2100-7aba-890c-ce5f-b1114e229459@gmail.com>
Date: Fri, 3 Dec 2021 16:27:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAJ49BKijmzkESkp5kijP-xBOczCLrNWdNUnwuR6hz-=QQ2a8Sw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJ49BKijmzkESkp5kijP-xBOczCLrNWdNUnwuR6hz-=QQ2a8Sw@mail.gmail.com>
Message-ID-Hash: 7KZZG5Y5TVZXBR4VA2LEYTRDJZ7GANP5
X-Message-ID-Hash: 7KZZG5Y5TVZXBR4VA2LEYTRDJZ7GANP5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 using designated RF antenna ports pair
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7KZZG5Y5TVZXBR4VA2LEYTRDJZ7GANP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2237415300160692074=="

This is a multi-part message in MIME format.
--===============2237415300160692074==
Content-Type: multipart/alternative;
 boundary="------------WU0b0KTZ6JHwRrh4d4T240AU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WU0b0KTZ6JHwRrh4d4T240AU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-12-03 16:07, ChunChih Lin wrote:
> Hi all,
>
> I'm new to USRP N310.
> I'm trying to use the uhd_fft spectrum monitor command to receive signals.
> Is it possible that I transmit and receive signals while using RF 1 
> instead of the default RF 0?
> What kind of --args should I use?
>
> Many thanks
> Chun-Chih Lin
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_usage_subdevspec

So you'd use the --spec to specify the sub-dev, and then specify "RX2" 
for the --antenna option.

Now, since only a single process can "own" a session with the device, 
you can't TX and RX at the same time with different applications running 
in parallel.


--------------WU0b0KTZ6JHwRrh4d4T240AU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-12-03 16:07, ChunChih Lin
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJ49BKijmzkESkp5kijP-xBOczCLrNWdNUnwuR6hz-=QQ2a8Sw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div dir="ltr">Hi all,
          <div><br>
          </div>
          <div>I'm new to USRP N310.</div>
          <div>I'm trying to use the uhd_fft spectrum monitor command to
            receive signals.<br>
            Is it possible that I transmit and receive signals while
            using RF 1 instead of the default RF 0?<br>
          </div>
          <div>What kind of --args should I use?</div>
          <div><br>
          </div>
          <div>Many thanks</div>
          <div>Chun-Chih Lin</div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_usage_subdevspec">https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_usage_subdevspec</a><br>
    <br>
    So you'd use the --spec to specify the sub-dev, and then specify
    "RX2" for the --antenna option.<br>
    <br>
    Now, since only a single process can "own" a session with the
    device, you can't TX and RX at the same time with different
    applications running in parallel.<br>
    <br>
    <br>
  </body>
</html>
--------------WU0b0KTZ6JHwRrh4d4T240AU--

--===============2237415300160692074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2237415300160692074==--
