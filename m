Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A113469812
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 15:08:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9989384611
	for <lists+usrp-users@lfdr.de>; Mon,  6 Dec 2021 09:08:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n9gJk/p9";
	dkim-atps=neutral
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 435E238474D
	for <usrp-users@lists.ettus.com>; Mon,  6 Dec 2021 09:07:38 -0500 (EST)
Received: by mail-qk1-f171.google.com with SMTP id m186so11168704qkb.4
        for <usrp-users@lists.ettus.com>; Mon, 06 Dec 2021 06:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=RibGW80DfNyJ3DNFemEE66BsyYnsKA4fJw5uR4rvw88=;
        b=n9gJk/p9g+LSICXgtgZkvr48fcwwXGWwD1FcErlA2gmLR2Y7B7fLCxOf3ws3NBpneR
         7EdEat0jmZTJ3NYyWYZW8TacHLxuY2Q51vhJsKxq/CxVlm/JZVlwwgrA8rhrc6kESDS3
         DDBV5/QCZkI7ylwZh5dM0+YSdvrfdf1j8agLTDvdhVCfmdhljMth9dlk1XFlvGTRPcXC
         /Gd5CZ4NIVqpz5fHd0vuL1dltxS71Su7POCmynrDj7LyLGW5C/2d4uBgC2AYxWHXaTIt
         FYwo+VugfxfcbuT+lCaNdsLqCzvRxakiS5p726ilwhSAm5p/kokk4WII7Q7VybynM8ES
         1pVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=RibGW80DfNyJ3DNFemEE66BsyYnsKA4fJw5uR4rvw88=;
        b=RCI743G1EvAckpeFWkqthJTS2zu6A6hyc9bfLTgzvXrgpukrxR/AJCgGqNoc/buJfS
         RkrgxVvdlxarcZ0H2pVuALaWGyyYCDolC8emj/OXvGohkQMfheBDVIbEWDy0hnqEzTOm
         LPpCadDpa5BgazFLZoVelEvlD/j0liRIEonuyK9x50+fvel4D6mV8gaIMpuVc8jtiTYO
         noJJMOvHimSwPJi6ZC2YboRXaFeIROKhS0gnu+M4erT25UGs1x1XlGdh9bCme16E7nB5
         1q6cJkGKdeWBNnBTBpWcLHYQsvcrDi/j28c9ytltog8U+NtE1TigaDND7JRU5UbgcrDV
         IgRA==
X-Gm-Message-State: AOAM531gZ6hpqGc0M583ju7gFyfY6nz4zNUaK7k5FdeA/P5RqSr43X5O
	VIc0vmOL2vW+5HZcyGYRsZqM8NeSHMk=
X-Google-Smtp-Source: ABdhPJwJZROQVjr9Lyaf0yLWjmRRq1UQvxSQ4fhhNUPZ4S95rluMmiwuemzuE67z/64DLl1xH48SKQ==
X-Received: by 2002:a05:620a:20d6:: with SMTP id f22mr33811179qka.342.1638799657286;
        Mon, 06 Dec 2021 06:07:37 -0800 (PST)
Received: from [192.168.2.228] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id az16sm6763942qkb.124.2021.12.06.06.07.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 06:07:36 -0800 (PST)
Message-ID: <d7e58610-0e3a-52aa-c020-294cc979809d@gmail.com>
Date: Mon, 6 Dec 2021 09:07:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BpVo7X6caL6ukImvhcfjzavFJ3ZdwWysdCJHabut5k@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BpVo7X6caL6ukImvhcfjzavFJ3ZdwWysdCJHabut5k@lists.ettus.com>
Message-ID-Hash: 7LAXJTAD4YMHI2MCXREBTTETD2M4ZOCN
X-Message-ID-Hash: 7LAXJTAD4YMHI2MCXREBTTETD2M4ZOCN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: (B210) UHD Error : Exception caught in safe-call
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7LAXJTAD4YMHI2MCXREBTTETD2M4ZOCN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0256675415867684933=="

This is a multi-part message in MIME format.
--===============0256675415867684933==
Content-Type: multipart/alternative;
 boundary="------------7wWa3QjUDxkp03trjRQ4AABI"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7wWa3QjUDxkp03trjRQ4AABI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-12-06 04:17, condicionjohnexekiel@gmail.com wrote:
>
> I am running srsLTE 20.10.1 with UHD 3.15.0.
> I have EPC and ENB and a Front-End.
> Images below are the error code I am experiencing.
> From our previous testing, it runs with the same set-up but after some 
> time it started to log error codes. The problem got resolved from 
> changing B210 cable port to CPU, but it re-occurs after some time. 
> What will likely be the problem of my set-up?
> Thank you so much.
> image
> image
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Does this also happen on another computer or on another USB port?

If so, then it may be the case that srsLTE is provoking a firmware bug 
in the B2xx device, causing something to get "hung up" inside the B2xx.


--------------7wWa3QjUDxkp03trjRQ4AABI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-12-06 04:17,
      <a class="moz-txt-link-abbreviated" href="mailto:condicionjohnexekiel@gmail.com">condicionjohnexekiel@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:BpVo7X6caL6ukImvhcfjzavFJ3ZdwWysdCJHabut5k@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>I am running srsLTE 20.10.1 with UHD 3.15.0.<br>
        I have EPC and ENB and a Front-End.<br>
        Images below are the error code I am experiencing.<br>
        From our previous testing, it runs with the same set-up but
        after some time it started to log error codes. The problem got
        resolved from changing B210 cable port to CPU, but it re-occurs
        after some time. What will likely be the problem of my set-up?<br>
        Thank you so much.<br>
        <img
src="https://user-images.githubusercontent.com/89245337/136517409-7c19a57f-e8f0-49f1-9f47-59a3c476a330.png"
          alt="image" draggable="true" moz-do-not-send="true"
          contenteditable="false"><br>
        <img
src="https://user-images.githubusercontent.com/89245337/136517429-37748936-dcff-4ecb-8a75-43e92aa1b816.png"
          alt="image" draggable="true" class="ProseMirror-selectednode"
          moz-do-not-send="true" contenteditable="false"><br>
      </p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Does this also happen on another computer or on another USB port?<br>
    <br>
    If so, then it may be the case that srsLTE is provoking a firmware
    bug in the B2xx device, causing something to get "hung up" inside
    the B2xx.<br>
    <br>
    <br>
  </body>
</html>
--------------7wWa3QjUDxkp03trjRQ4AABI--

--===============0256675415867684933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0256675415867684933==--
