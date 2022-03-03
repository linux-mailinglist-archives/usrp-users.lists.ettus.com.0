Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4FC4CC098
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 16:02:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E10BE38411E
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 10:02:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YhOT0IsH";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 88B1C383D0A
	for <usrp-users@lists.ettus.com>; Thu,  3 Mar 2022 10:01:51 -0500 (EST)
Received: by mail-qt1-f179.google.com with SMTP id n11so4769462qtk.8
        for <usrp-users@lists.ettus.com>; Thu, 03 Mar 2022 07:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=OR6QWHjDd+qc2Nh7etNEloO3fFdRk53bm0d5WJVeD0E=;
        b=YhOT0IsHuyEcSKiag2nJAJGdiZnosaT4lr5NH5OILgPekwbgiZaISTWNfiZQBEE3/c
         HSlAMUwipeuli0dvcHe8MEDi7p0LaOTidffA2WqndDNWk0ouU74XHXvTAL7Dh7u1MIpa
         LJDH8aLXk4DrRe/nwg/o9jHcw/4PP8OcYEcg4U8tEyCZgomQ5Eu2j6Yo0zNXvwe/VyrS
         ne57Ty9fOM5EIozrgEfGOXMJ6boWA/Puoo7FS52K8FypxxJP/gqXC7aL4usHmIIoQggE
         Q76jgQS7cREZkYFbUE11kLMEr40Fs9njvmn3XZXyXaWgDExLy2DxXLiILvQx1FCgfKvN
         Loew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=OR6QWHjDd+qc2Nh7etNEloO3fFdRk53bm0d5WJVeD0E=;
        b=dzi6GAscoEm0Bdw82XHItDMNGzZISkiyqarMviuDp1d0eez64bNRPQ9aLaKMARpS6A
         cBhvyB4gK1mmbZ8hM3pLyjJ3b27XW7YQFAa7K5DWkGbmVyD4ZGDxfGWfyJCBk9V5OzS6
         RWTlKAIMtAESVke6qYWLsPdg2Cmvbl+t4V/kcU1Pg8FeXsuWHs39CclugBF3i8oq8+H4
         oZpPGr69qlital0+21kk6dedWzCvv+8EwS3vQTT6KQ9tOpmtDR4TKWXc1a0npd5qIwPN
         npDPjxT8wmK4mepMCAUqZvooK27ypuWkHP6TxdR6GaPC38FBuAouxvZupaODgKak2Uc8
         ecuQ==
X-Gm-Message-State: AOAM5309XFCcgJpgLlhZEIhSi7WguSJKHcNfddPk+I7z6yNpr8tQJagM
	ktOg4J+6l6GyQ9JYfDZW0XrsedlFU4YhsA==
X-Google-Smtp-Source: ABdhPJwU+DN+mYW1mmLvQIhyP70xv6GBb3y7PLMNklUnl2ZjFgVMALnw/kYJI5BmItwbg1sTcqPJ8g==
X-Received: by 2002:ac8:5b56:0:b0:2dc:e6b8:90c6 with SMTP id n22-20020ac85b56000000b002dce6b890c6mr27659734qtw.170.1646319710393;
        Thu, 03 Mar 2022 07:01:50 -0800 (PST)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id x6-20020ac86b46000000b002e02be9c0easm1450929qts.69.2022.03.03.07.01.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 07:01:49 -0800 (PST)
Message-ID: <ec7815ca-5d91-82d2-79a1-28cf72c66355@gmail.com>
Date: Thu, 3 Mar 2022 10:01:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <SG2PR02MB340107BACBCC4DBD4C25147FB7049@SG2PR02MB3401.apcprd02.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SG2PR02MB340107BACBCC4DBD4C25147FB7049@SG2PR02MB3401.apcprd02.prod.outlook.com>
Message-ID-Hash: ME32ZZULLM3AJOJKWWS4PFG6HKQ3X4NQ
X-Message-ID-Hash: ME32ZZULLM3AJOJKWWS4PFG6HKQ3X4NQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Technical information about USRP SDR products
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ME32ZZULLM3AJOJKWWS4PFG6HKQ3X4NQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5249745899770726309=="

This is a multi-part message in MIME format.
--===============5249745899770726309==
Content-Type: multipart/alternative;
 boundary="------------eJQza1kQZGr08EquG0l00HFr"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------eJQza1kQZGr08EquG0l00HFr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-03-02 23:21, Ramagiddaiah Eediga wrote:
> Hi,
>
> I am Ramagiddaiah from Innominds Software Private Ltd, Bangalore. I 
> would like to know more details about your USRP SDR product (Bus 
> series, Network series, etc). Could you please help us with the below 
> info.
>
>  1. Does USRP SDR product will support to O-RAN Specifications?
>  2. Does RF Front End card include with SDR product or should we need
>     to purchase seperately?
>
>
> Regards
> Ramagiddaiah
> Mob: 9110691844
>
>
These are really sales type questions, and I'd suggest contacting 
sales@ettus.com



--------------eJQza1kQZGr08EquG0l00HFr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-03-02 23:21, Ramagiddaiah
      Eediga wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:SG2PR02MB340107BACBCC4DBD4C25147FB7049@SG2PR02MB3401.apcprd02.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span style="margin:0px;font-size:12pt;background-color:rgb(255,
          255, 255)">Hi,</span><span style="background-color:rgb(255,
          255, 255);display:inline !important"></span>
        <div style="margin:0px;font-size:12pt;background-color:rgb(255,
          255, 255)"><br>
        </div>
        <div style="margin:0px;font-size:12pt;background-color:rgb(255,
          255, 255)"><span
            style="margin:0px;font-size:14.6667px;font-family:Calibri,
            sans-serif;color:rgb(32, 31, 30);background-color:rgb(255,
            255, 255);display:inline !important">I am Ramagiddaiah from
            Innominds Software Private Ltd, Bangalore. I would like to
            know more details about your USRP SDR product (Bus series,
            Network series, etc). Could you please help us with the
            below info.</span></div>
        <div style="margin:0px;font-size:12pt;background-color:rgb(255,
          255, 255)"><span
            style="margin:0px;font-size:14.6667px;font-family:Calibri,
            sans-serif;color:rgb(32, 31, 30);background-color:rgb(255,
            255, 255);display:inline !important"><br>
          </span></div>
        <div style="margin:0px;font-size:12pt;background-color:rgb(255,
          255, 255)">
          <ol>
            <li><span style="margin:0px"><span
                  style="margin:0px;font-size:14.6667px;font-family:Calibri,
                  sans-serif;color:rgb(32, 31,
                  30);background-color:rgb(255, 255, 255);display:inline
                  !important">Does USRP SDR product will support to
                  O-RAN Specifications?</span><br>
              </span></li>
            <li style="font-size:14.6667px;font-family:Calibri,
              sans-serif;color:rgb(32, 31, 30)">
              <span style="margin:0px"><span
                  style="margin:0px;background-color:rgb(255, 255,
                  255);display:inline !important">Does RF Front End card
                  include with SDR product or should we need to purchase
                  seperately?</span></span></li>
          </ol>
          <div style="margin:0px"><span style="margin:0px"><span
                style="margin:0px;font-size:14.6667px;font-family:Calibri,
                sans-serif;color:rgb(32, 31,
                30);background-color:rgb(255, 255, 255);display:inline
                !important"><br>
              </span></span></div>
          <div style="margin:0px"><span style="margin:0px"><span
                style="margin:0px;font-size:14.6667px;font-family:Calibri,
                sans-serif;color:rgb(32, 31,
                30);background-color:rgb(255, 255, 255);display:inline
                !important">Regards</span></span></div>
          <div style="margin:0px"><span style="margin:0px"><span
                style="margin:0px;font-size:14.6667px;font-family:Calibri,
                sans-serif;color:rgb(32, 31,
                30);background-color:rgb(255, 255, 255);display:inline
                !important">Ramagiddaiah</span></span></div>
          <span style="margin:0px"><span style="margin:0px"><span
                style="margin:0px;font-size:14.6667px;font-family:Calibri,
                sans-serif;color:rgb(32, 31,
                30);background-color:rgb(255, 255, 255);display:inline
                !important">Mob: 9110691844</span></span></span></div>
        <br>
      </div>
      <br>
    </blockquote>
    These are really sales type questions, and I'd suggest contacting
    <a class="moz-txt-link-abbreviated" href="mailto:sales@ettus.com">sales@ettus.com</a><br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------eJQza1kQZGr08EquG0l00HFr--

--===============5249745899770726309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5249745899770726309==--
