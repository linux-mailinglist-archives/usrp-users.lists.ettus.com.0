Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0909D484651
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jan 2022 17:58:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE2E1385372
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jan 2022 11:58:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lgl3rmiQ";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id CFE3838439F
	for <usrp-users@lists.ettus.com>; Tue,  4 Jan 2022 11:57:46 -0500 (EST)
Received: by mail-qk1-f175.google.com with SMTP id 202so31751840qkg.13
        for <usrp-users@lists.ettus.com>; Tue, 04 Jan 2022 08:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=GHjl7pd5iROjJGd0CeBxsylN6UufIe88YjNCx6CWTXI=;
        b=lgl3rmiQwDlVHyYmbYKhhU/x1A1diej1DyJpWAAaL5SNo18YhlHGMKDV0yMNYDLC4c
         vBlVuqgsloL/NCtTduXhxbmn2Eu0VsDx49gdLWMZSbj9BJPGMKgzSq1pFpRdtLq5Cr24
         5e/cAR5cO+fK2yRqxIyIKW9DIqOOj+Y7/4wncPXsaBufs/psEKWPReI0BGuh8W0RkWyt
         6Xr5hROxPBM4kx1JJZBSLxEAdJ3Kg9dKDHV4K4m91cC3FYgr8vooIOBvkPv8avmmx0Vo
         DqXoxqROgMkTRmbaSbQGQt+lRvLbbMzw7wshaw5rAyFu+31RXtnFaBvmO6+Wtu+85n57
         BeiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=GHjl7pd5iROjJGd0CeBxsylN6UufIe88YjNCx6CWTXI=;
        b=pFPaOAc49LLIu1KWJkpV1MtN8huXWKtCD/kr02+emE0IuJPKgesmgJ7Gln9tzDRT8s
         kOFnKJIWh9XvEEuimltz9V34sULQucGcA4ukuvE5RILpu1dgrx4VwUlvSkjvW/UAemBd
         9MIkbgI7HhlZdymEwNQfjzzBn1wWZ7xlSTiJ22SfgCSe3vbah2vtk70GYFYMLLRPRUAs
         Or0NbPufo0Q7/1IVA21M3XhkXKfcVNstvuJ1EeyEbgx3a2pSOi6U6cHaR75cIZQXSxrt
         M4X4JgtpOjy8uW9ByILLuCV1n/7CwZmff66HvrBQ8GdOYfyEhROBX8VgFk2rVKp7N6uy
         fT0Q==
X-Gm-Message-State: AOAM530mN5I41OTTRrXuya5ZhKy47KY7tyyIzNIZ/2c8jILfY0lORbM1
	J2rmlUKvHziBpmhw1SqiURj5VivAWj87IA==
X-Google-Smtp-Source: ABdhPJxNt5nCBfJF34WJJyRVSlYY+PpamBTPUKFR1HaQnhZillmvPrAv/v3ZsJdVbk5aNBZ3eXyKMw==
X-Received: by 2002:a05:620a:2406:: with SMTP id d6mr35017358qkn.713.1641315466088;
        Tue, 04 Jan 2022 08:57:46 -0800 (PST)
Received: from [192.168.2.192] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.gmail.com with ESMTPSA id j20sm33312491qko.117.2022.01.04.08.57.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jan 2022 08:57:45 -0800 (PST)
Message-ID: <b9d136f1-9da8-507e-ac40-914b2861f28f@gmail.com>
Date: Tue, 4 Jan 2022 11:57:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <L801VEKXTsBvRzioQFLqaSttfP4HyEFolaDKvfkFps@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <L801VEKXTsBvRzioQFLqaSttfP4HyEFolaDKvfkFps@lists.ettus.com>
Message-ID-Hash: JJSVJ7MNRDX36VXCALRDA5E3VCEXNP5T
X-Message-ID-Hash: JJSVJ7MNRDX36VXCALRDA5E3VCEXNP5T
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CFR for B210 by using configurations in srslte
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JJSVJ7MNRDX36VXCALRDA5E3VCEXNP5T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8622121375570474828=="

This is a multi-part message in MIME format.
--===============8622121375570474828==
Content-Type: multipart/alternative;
 boundary="------------X4dJ380ZFj3L9uoYx8Xey97F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------X4dJ380ZFj3L9uoYx8Xey97F
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2022-01-04 11:12, constantinetan20@gmail.com wrote:
>
> Hello Community
>
> Is there a way to apply CFR for B210 by using configurations in 
> srslte? What parameters do we need to tweak to be able to do so? 
> Specifically, what are the values do we need to set for those 
> parameters, as well as the corresponding consequences/effects when we 
> change the set values for those parameters.
>
> Thank you.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

You may be better served talking to the srsLTE community, since this 
seems a very srslte-specific question:


https://lists.srsran.com/mailman/listinfo/srsran-users



--------------X4dJ380ZFj3L9uoYx8Xey97F
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022-01-04 11:12,
      <a class="moz-txt-link-abbreviated" href="mailto:constantinetan20@gmail.com">constantinetan20@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:L801VEKXTsBvRzioQFLqaSttfP4HyEFolaDKvfkFps@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hello Community</p>
      <p>Is there a way to apply CFR for B210 by using configurations in
        srslte? What parameters do we need to tweak to be able to do so?
        Specifically, what are the values do we need to set for those
        parameters, as well as the corresponding consequences/effects
        when we change the set values for those parameters.</p>
      <p>Thank you.</p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <p>You may be better served talking to the srsLTE community, since
      this seems a very srslte-specific question:</p>
    <p><br>
    </p>
    <p><a class="moz-txt-link-freetext" href="https://lists.srsran.com/mailman/listinfo/srsran-users">https://lists.srsran.com/mailman/listinfo/srsran-users</a></p>
    <p><br>
    </p>
    <p><br>
    </p>
  </body>
</html>
--------------X4dJ380ZFj3L9uoYx8Xey97F--

--===============8622121375570474828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8622121375570474828==--
