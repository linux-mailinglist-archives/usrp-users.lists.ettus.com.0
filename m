Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF476426C4E
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 16:03:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C61E13843D4
	for <lists+usrp-users@lfdr.de>; Fri,  8 Oct 2021 10:03:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NjRyoE4Z";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 6FA8C384848
	for <usrp-users@lists.ettus.com>; Fri,  8 Oct 2021 10:02:40 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id b12so1495621qtq.3
        for <usrp-users@lists.ettus.com>; Fri, 08 Oct 2021 07:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=mCmaMM+IP9SQqmvksPf1S6LyN26sno2THWrZVrFcFsE=;
        b=NjRyoE4ZatbQIJXlWCwmWLiKhx3Ti5UZd1STzX+YEXwRGAjXzu1/9i9PyOy4Dxx+Vz
         9BvljF8PPc/S8mOxaHqFQd05ZtFPf9SqCPcjQmCZ2xJRoJcops/4cqPr7vuBsE1cKCuP
         bncIvPENpHqYjCUlCeszTN08Jaj+7JJYDalus0tqVM1LRvmOziELKmHO9lDO1bYwCzFE
         vSqvD2bj+zJeOeyCwUOhOj/aviy+42uvhYYP8dQxrB9UcNyC+ey0ZSeCxn1mAGisJ6Y8
         FRTe75M3dUb7sGl5HqRYVHEIua5/tNFtyHziu0DTgeHm/f2vqwDlYgribVqrvVeWExEj
         Lqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=mCmaMM+IP9SQqmvksPf1S6LyN26sno2THWrZVrFcFsE=;
        b=VK521RTL4HKCTFKtQL3NjnxnTPtzGhyJS2URG7UzChZCqBpoIn/EsoLz3XJkYgrowH
         +1SujFvYm/U+pgMvFnyquLzswq1ym6eRaF7217clmf/loyIHqcmMaJFKICEHigMmEMJv
         TuaS0myP4xBB5ew26FvQjgpTG/Qyy94/ZDecCt2ZXy4k2QIxKJyUsHSNy2NyMlQCJc41
         whxvHoEpj+j/ELq2/5gheNZ8dsXgc21BKKxxxi2HaHEk/PJyJ6P/VTWuGyj+o56JcAHz
         NCUNrA4/XUa2Ui4AT7KW6WFQgTtjhvMAmkBk1hypAkzs5FEHVKK91T+cYTSqkc2yCBhr
         YDkg==
X-Gm-Message-State: AOAM532GFSgr2lIxnuDAetZht8uDG/LBSWI/J5qT3l8cpK+rSZnAeGtX
	jHOVEITkHpUa2e4WeKWvQT4BZk2OJuo=
X-Google-Smtp-Source: ABdhPJzhjLQGvOij2NrAlWsqewdiZJqVcmiLtW60IsKEPi69YPOOjr2RcrdtuSO64jtSQGn0WeCr8Q==
X-Received: by 2002:ac8:5905:: with SMTP id 5mr11756233qty.391.1633701759794;
        Fri, 08 Oct 2021 07:02:39 -0700 (PDT)
Received: from [192.168.2.253] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id l28sm2197987qtn.1.2021.10.08.07.02.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 07:02:39 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <bac1bf04-d98e-8d2d-66e9-c72fe6bdf456@gmail.com>
Date: Fri, 8 Oct 2021 10:02:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 5LHCHZASUR4VGRDZVSIRO27UPTOWAQ3F
X-Message-ID-Hash: 5LHCHZASUR4VGRDZVSIRO27UPTOWAQ3F
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Set RX power reference using a power calibration database
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5LHCHZASUR4VGRDZVSIRO27UPTOWAQ3F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7658535896662749598=="

This is a multi-part message in MIME format.
--===============7658535896662749598==
Content-Type: multipart/alternative;
 boundary="------------344852031D282EFDF934B990"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------344852031D282EFDF934B990
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-10-08 6:11 a.m., arjan.feta@unifi.it wrote:
>
> I have found some other methods in the python API but probably passing 
> the wrong arguments to them:
>
> |radio_block.get_rx_power_ref_keys()|
>
> |Out[9]: ['x3xx_pwr_twinrx_rx_rx1', '31F94F0#0']|
>
>
> |uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')|
>
> |Traceback (most recent call last):|
>
> |File "<ipython-input-10-19835987c39e>", line 1, in <module>|
>
> |uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')|
>
> |RuntimeError: LookupError: KeyError: Calibration Data not found for: 
> key=31F94F0#0, serial=x3xx_pwr_twinrx_rx|
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Looks like you have the serial and key reversed in the read_cal_data call



--------------344852031D282EFDF934B990
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-10-08 6:11 a.m.,
      <a class="moz-txt-link-abbreviated" href="mailto:arjan.feta@unifi.it">arjan.feta@unifi.it</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:nbiZqHiok17KnekP8pw8lbSwWznJd7w2NZWwItqi6Y@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p>I have found some other methods in the python API but probably
        passing the wrong arguments to them:</p>
      <p><code>radio_block.get_rx_power_ref_keys()</code></p>
      <p><code>Out[9]: ['x3xx_pwr_twinrx_rx_rx1', '31F94F0#0']</code></p>
      <p><br>
      </p>
      <p><code>uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')</code></p>
      <p><code>Traceback (most recent call last):</code></p>
      <p><code> File "&lt;ipython-input-10-19835987c39e&gt;", line 1, in
          &lt;module&gt;</code></p>
      <p><code>
          uhd.usrp.cal.database.read_cal_data('31F94F0#0','x3xx_pwr_twinrx_rx')</code></p>
      <p><code>RuntimeError: LookupError: KeyError: Calibration Data not
          found for: key=31F94F0#0, serial=x3xx_pwr_twinrx_rx</code></p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    Looks like you have the serial and key reversed in the read_cal_data
    call<br>
    <br>
    <br>
  </body>
</html>

--------------344852031D282EFDF934B990--

--===============7658535896662749598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7658535896662749598==--
