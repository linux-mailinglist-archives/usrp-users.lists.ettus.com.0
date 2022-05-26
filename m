Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A61853515E
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 17:24:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D78E738431C
	for <lists+usrp-users@lfdr.de>; Thu, 26 May 2022 11:24:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653578672; bh=xvWKobtKT/MyNtUWH2W+DcS7sJ2Ld1ZILIeQzlKPNek=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bCNN3rC/jdE+D6Gdrg/QZAUdlWb3zoSbxnRRHGARUeiRvtFRX2lGrFDfsPg1CF7fz
	 /P8dEfCeViCsUHhvHsco+uUXh547LHWfKAeRPQ3AxHg6yaGgyiw4//X3gG5IcVCmME
	 6Yn6dnIV79J6AdFKo1j+kKt3L/D5kn9Xw0o1aXcGjJJKeZEu/Aa6sdUFfG+SY9uWs6
	 5nR2YE4lM8tIiUfmT2k9m+iolwos8K5E8WUrlQ5H0drFZ6/q4d5kx4giar5ipPtzL4
	 mx0+fepUGi0xyGm3S5N4lUTx6g9VSG5QxOybG3XZcixX9IBjykkdVFFBGPpbRtPar3
	 2Q9vZERG/tRfg==
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id CDE95384D9B
	for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 11:00:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="euVT76P4";
	dkim-atps=neutral
Received: by mail-qk1-f182.google.com with SMTP id v11so1722117qkf.1
        for <usrp-users@lists.ettus.com>; Thu, 26 May 2022 08:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=EVYNwFiWMnCkW1CXn2p+//BYPcBfw2e5BTS0VbegAXA=;
        b=euVT76P4OYSo2bCTk0DUTc0tUIRgtgefj645AoxQJDiwtbWke1z4M7+07jRTOGWvRP
         Z0YKcMkBouWIL1PzxbJBV+/V+Lj8ECG0vHku5rHf6dHEfsmk9wgsIRt+4byyN6656ll7
         sNgolMm9zIbslqwzxqQ5cgS/WLSxzlgOMkYQg8N+3I+W/ySB5bJ7/vo7U9jj8ndBwwEH
         KyvWvul8W0CsNfa9DKvF/ZpLwXus9gC3/rdd5u/EGfeNLV62Yw5MbyU9X7tfRVUDl/oA
         EFtyk8hurzBxbTHZHID+NP2enTtL/G1MgkORoTNRYYZ68xkwQKUIKnE/fchk1Gsewvfb
         TCJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=EVYNwFiWMnCkW1CXn2p+//BYPcBfw2e5BTS0VbegAXA=;
        b=A7fycLIL7G6ZzAAPMSDCmIEg4TVdMTiq1IP4vOaqwTi0ClTahaTYptSRUg8Etsb6qb
         oTG+4y1rJmoFcA9DEW3+mAaztpIPh9Xe/3gmTbrEXFQxydJkUvjwguihVnhzT5UqpceO
         wD2LdIRuinpwkP45WI1+loFOZq6++C/fNFKVLG5qkLtTdb+Oeg5KC9s8RgUMXiEsl5k/
         CitHTnQO8V4RD+sa+ObojYnH5WlgtKeXAqH5za+3ksQwg7NKTyOKLgYPZcGDpCsiMYPV
         hrgaG2xWWVoZ11WbsCRniCBPxGqo4N0r0pQlPbW7WB4DqjV6ZVuaB4sZCzm4LWd0yKEy
         Nfdg==
X-Gm-Message-State: AOAM530+Fg6MOtj5Rdug+80e4P9t/1LYJfRaUK50SE4anKlNlbDYLbPt
	HrIUCdF6sRgGd+29ICdh6BkGrkvql4c=
X-Google-Smtp-Source: ABdhPJxxudicV8g01g2uP3ONQytRWjFHX1cqnylDSfSSLR74S5vjSpnYyNqYqvRI96LVtWX1bO+EFA==
X-Received: by 2002:a05:620a:12f7:b0:6a3:758b:1c3c with SMTP id f23-20020a05620a12f700b006a3758b1c3cmr15911755qkl.699.1653577242812;
        Thu, 26 May 2022 08:00:42 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id w9-20020a05620a148900b006a36dedb53bsm1247546qkj.45.2022.05.26.08.00.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 08:00:42 -0700 (PDT)
Message-ID: <d9dc360b-a6e7-a1ec-528c-1a874949d8cb@gmail.com>
Date: Thu, 26 May 2022 11:00:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com>
Message-ID-Hash: HTC4TXN3LLAOFLX7NTFXMWL2DQ2TGVFH
X-Message-ID-Hash: HTC4TXN3LLAOFLX7NTFXMWL2DQ2TGVFH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X300 DDC - Filter Taps
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HTC4TXN3LLAOFLX7NTFXMWL2DQ2TGVFH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6327926902478547360=="

This is a multi-part message in MIME format.
--===============6327926902478547360==
Content-Type: multipart/alternative;
 boundary="------------UC0LzMjUSytUL6Sa0mq03p0J"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------UC0LzMjUSytUL6Sa0mq03p0J
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-05-26 10:31, luca.vigna@argotecgroup.com wrote:
>
> Hi all!
>
>
> I am starting to look through some of the FPGA code of the USRP X300 
> in order to understand which is the DDC chain configuration in the 
> default image.
>
>
> I have understood that in the DDC chain there is 1 CIC filter + 3 
> Halfband filters. Since I want to characterize the DDC chain I have 
> the following questions:
>
> 1.
>
>     How are they used? I suppose that the halfband filters are used
>     based on the decimation factor we need (max. 1024)
>
> 2.
>
>     Which is the order of the CIC filter?
>
> 3.
>
>     How many taps each halfband filters have? Which are the taps?
>
>
> Thank you in advance,
>
> Luca
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Also:

uhd/fpga-src/usrp3/lib/dsp/hb_dec.v

Appears to have some coefficient settings.


--------------UC0LzMjUSytUL6Sa0mq03p0J
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-05-26 10:31,
      <a class="moz-txt-link-abbreviated" href="mailto:luca.vigna@argotecgroup.com">luca.vigna@argotecgroup.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:lrlDTDkE2cGyZDMRJrwkVF4KpHaPluLMUnA3u3qNqg@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hi all!</p>
      <p><br>
      </p>
      <p>I am starting to look through some of the FPGA code of the USRP
        X300 in order to understand which is the DDC chain configuration
        in the default image.</p>
      <p><br>
      </p>
      <p>I have understood that in the DDC chain there is 1 CIC filter +
        3 Halfband filters. Since I want to characterize the DDC chain I
        have the following questions:</p>
      <ol>
        <li>
          <p>How are they used? I suppose that the halfband filters are
            used based on the decimation factor we need (max. 1024)</p>
        </li>
        <li>
          <p>Which is the order of the CIC filter?</p>
        </li>
        <li>
          <p>How many taps each halfband filters have? Which are the
            taps?</p>
        </li>
      </ol>
      <p><br>
      </p>
      <p>Thank you in advance,</p>
      <p>Luca</p>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Also:<br>
    <br>
    uhd/fpga-src/usrp3/lib/dsp/hb_dec.v<br>
    <br>
    Appears to have some coefficient settings.<br>
    <br>
    <br>
  </body>
</html>

--------------UC0LzMjUSytUL6Sa0mq03p0J--

--===============6327926902478547360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6327926902478547360==--
