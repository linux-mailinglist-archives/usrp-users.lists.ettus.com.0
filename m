Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C93449FC6A
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 16:06:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39338384883
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jan 2022 10:06:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kr1TZSKF";
	dkim-atps=neutral
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 245893846D6
	for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 10:05:15 -0500 (EST)
Received: by mail-qv1-f48.google.com with SMTP id a7so6085323qvl.1
        for <usrp-users@lists.ettus.com>; Fri, 28 Jan 2022 07:05:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=qOZu3kRdoiSHgiM3CEopQHXxUkIqx5WN9Es0V2BISzw=;
        b=kr1TZSKFwHOD2+hsECmzVLaw5X+wyUKZICXjnMz9uoQDWpW5P65+IWxkSpwF+SNWZa
         8lh+edo2hLXxexzagU90KyMluMCwyWXByQdZbPxeC1nYsSbePhS5fO6IwbIClgAEGSAs
         /75zuolBt63ITKETKl4XkVDQMhm5Pl0pckqe5k5o1Wcrnj6W/hWKUx5CBJxXyzQtEWt1
         9agfFOM6TLd54Respm5W1e6Ot/XHeuUGBhJ2g7NvfP54sf9ja1Mw0MjY6Ec3PrSs63UU
         AWrQnmtqQD5Lbn8sjZLELQ8Dtn/uxFTZV/IUueYYQ15E4tvIHtcF6KcEFLs70sISAGnm
         zbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=qOZu3kRdoiSHgiM3CEopQHXxUkIqx5WN9Es0V2BISzw=;
        b=F9KjiqKZ+6wflhld1N3VE+NH9VVGN5U8nzQXgSkYr42To7fpcW6Lfk9pJVUbNPVkuv
         BNeYRWolNCGgRlSG2m7rDLM5mV6ratEkUAYlaG8tHw+BdJkcEKRHK3tehY0sPU3uRN9C
         iLDL36NRu4tIdqhGsO2B5WOYspI0Maiqrr4hG15gf5XPG2TLeo8cimMJdPgcemiMTfMf
         N0E/UxvCM4B1rw+j+9CY1FCWi9ceKV6ceTdvLqxrAWbCuIht8dGKKd5KK4eTqTxjrhsh
         rkIp76ktfNBufh7q5Hyo1QwFu5luZvX8iZK1ulr9IiJ7QIjKrVEc+vo9PN3kZFc5LA+F
         15CQ==
X-Gm-Message-State: AOAM531FWXr9eLZ3KNMl7vnAxSYK3RT8icKiSXcZ4jWaLewjRneF1Ljw
	ckvvm0fGP0/EZLBeLuURGenYoXN01iQ+Jg==
X-Google-Smtp-Source: ABdhPJwvNFnGCcJ3CKGgbjKXDVktfRo+kcnXhs70VULzhr6+0uX4lS/bsiiyyHlOEjMtW+1HwbGTkg==
X-Received: by 2002:a05:6214:2628:: with SMTP id gv8mr7823227qvb.44.1643382315375;
        Fri, 28 Jan 2022 07:05:15 -0800 (PST)
Received: from [192.168.2.237] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id f14sm3260928qko.48.2022.01.28.07.05.14
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jan 2022 07:05:14 -0800 (PST)
Message-ID: <ddfb1310-2581-9d6d-2a71-289c9e0c7d56@gmail.com>
Date: Fri, 28 Jan 2022 10:05:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <TKlq4ITgD9PeON3bRdFsb1qdZ7t3RqXK2rHoVD5Sds@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <TKlq4ITgD9PeON3bRdFsb1qdZ7t3RqXK2rHoVD5Sds@lists.ettus.com>
Message-ID-Hash: RWLL5HTKY65E32YTBFC2S5FSRTA5XQCN
X-Message-ID-Hash: RWLL5HTKY65E32YTBFC2S5FSRTA5XQCN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RWLL5HTKY65E32YTBFC2S5FSRTA5XQCN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3082036843313310123=="

This is a multi-part message in MIME format.
--===============3082036843313310123==
Content-Type: multipart/alternative;
 boundary="------------XUaxffKMajxFGaO8ZrDzFzMt"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------XUaxffKMajxFGaO8ZrDzFzMt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-01-28 05:53, seckinoncu8070@gmail.com wrote:
>
> Hi Marcus,
>
>  *
>
>     I connected two null sources and it gave me the same error after
>     50 seconds at 20 Msps sample rate. This problem occurs in two
>     channels only. After a while it stops transmitting when sample
>     rate >= 20 Msps .
>
>  *
>
>     When I connected one file or null source, I can use 100 Msps
>     without any error.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
what version of UHD are you using?

What MTU are you using on your 10GiG network link?


--------------XUaxffKMajxFGaO8ZrDzFzMt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-01-28 05:53,
      <a class="moz-txt-link-abbreviated" href="mailto:seckinoncu8070@gmail.com">seckinoncu8070@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:TKlq4ITgD9PeON3bRdFsb1qdZ7t3RqXK2rHoVD5Sds@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hi Marcus,</p>
      <ul>
        <li>
          <p>I connected two null sources and it gave me the same error
            after 50 seconds at 20 Msps sample rate. This problem occurs
            in two channels only. After a while it stops transmitting
            when sample rate &gt;= 20 Msps .</p>
        </li>
      </ul>
      <ul>
        <li>
          <p>When I connected one file or null source, I can use 100
            Msps without any error.</p>
          <p><br>
          </p>
        </li>
      </ul>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    what version of UHD are you using?<br>
    <br>
    What MTU are you using on your 10GiG network link?<br>
    <br>
    <br>
  </body>
</html>

--------------XUaxffKMajxFGaO8ZrDzFzMt--

--===============3082036843313310123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3082036843313310123==--
