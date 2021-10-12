Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D98F042AC02
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 20:39:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77D13384A03
	for <lists+usrp-users@lfdr.de>; Tue, 12 Oct 2021 14:39:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Rk/O5XZC";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 7CBC53849B8
	for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 14:38:36 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id p4so20319160qki.3
        for <usrp-users@lists.ettus.com>; Tue, 12 Oct 2021 11:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=tgMLromdRt8tbPJaRFeJbEsE/rZVUQWDyAvRvD2comA=;
        b=Rk/O5XZCOFYFROj404S63NZagDJlrjxYMKnoyeq0UG1yda5nWD5SM2lDEeo0XYVbl/
         VbydjcE1hRjoQ1pLOLmejNBexo6lckK7H/s7De63vyzolHGc1nfRLOXvcT4vUv5MR7zM
         7rARfycqnstWGihtayfajkv9Xj7haY7Aigm2oGztYGnufuf6I66PECFCQZgwyjDlPfyD
         9bzHPcxHgVqEg0RSwW3LZ6bJBZ0iYHnbB1Tb5P+eLYiNGGG3RHFHULIsjJmL317OFw/j
         WtiGcZwP06j5PqVLNPwaxVi2wB4WwoYUTfG/XPKzqLP48cNB43ZwR89ZGe+szT9B1Ybm
         ZTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=tgMLromdRt8tbPJaRFeJbEsE/rZVUQWDyAvRvD2comA=;
        b=cejL/I6nFBD8VWr2IwqYfZ6WCLZqm9UrMOUlVES93Q9DFS5sDB2uu68jY2sj8bzlA+
         6uxx6tPbbM0KX4eET90fpInEG3d3Ne3a5H+wE4vNVQAhIaeHQ8rSIYP0IBuBacxwMyTm
         a0BU+M35KmoD92/vdb7JaYgbKin7jM4S+Y9SwP/SQSVJVOCSOssNoVsov7I3aPNB5XCE
         TKiviaL0YL3CEFCPU7mmVJ0ExLcpo0hFuyGVNXOsAzV9P+iSXgTa9N2OeMaNPd0esXpO
         8GojolLrVjK+ehjiMMEmDXqZQ/1VM/a/RD/iNwmtbQ0ug25GqJvsEUOX+lo7Nq+7tj69
         fefw==
X-Gm-Message-State: AOAM531bMvuWQStixz3P5RNITSGamSXlz9QZeUrSa1kY0SiPjPahQdz/
	liw6Zug0dH52UXLW8GoEoKwV5Geb5Z0=
X-Google-Smtp-Source: ABdhPJzGgXVJK7ZCWooBuusAZSAVqZybeO4RW1OcBW6c0kTQ1ghybGsNYqaLnvoQ5tm6laq5brmoUw==
X-Received: by 2002:ae9:dd84:: with SMTP id r126mr20420562qkf.247.1634063915762;
        Tue, 12 Oct 2021 11:38:35 -0700 (PDT)
Received: from [192.168.2.234] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id i13sm6651354qtp.87.2021.10.12.11.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Oct 2021 11:38:35 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>
References: <1552911735.1055946.1634056580695@mail.yahoo.com>
 <85AEED2D-0B70-47B9-9DE5-696466F4A310@gmail.com>
 <279084312.1067344.1634061310152@mail.yahoo.com>
 <2012533350.1050943.1634062837483@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <afc23cc1-6024-9591-afaf-745b50327ce2@gmail.com>
Date: Tue, 12 Oct 2021 14:38:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <2012533350.1050943.1634062837483@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: ALTII6JE2DODMORAZTRG4SQZ4I5RD3BT
X-Message-ID-Hash: ALTII6JE2DODMORAZTRG4SQZ4I5RD3BT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philip Balister <philip@balister.org>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: I2C communication on the USRP N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALTII6JE2DODMORAZTRG4SQZ4I5RD3BT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3764361725300674095=="

This is a multi-part message in MIME format.
--===============3764361725300674095==
Content-Type: multipart/alternative;
 boundary="------------EF1F49C1338A6F3BC3218809"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EF1F49C1338A6F3BC3218809
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-10-12 2:20 p.m., Tellrell White wrote:
> Out of curiosity, when running "systemctl status usrp-hwd" I get a 
> message stating "vendor preset=enabled". Is there anyway possible that 
> mpm is still being started at bootup?
>
> On
What does

ps |grep usrp

Yield?



--------------EF1F49C1338A6F3BC3218809
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-10-12 2:20 p.m., Tellrell White
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:2012533350.1050943.1634062837483@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div class="ydpee2354d5yahoo-style-wrap" style="font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir="ltr" data-setdir="false">Out of curiosity, when
          running "systemctl status usrp-hwd" I get a message stating
          "vendor preset=enabled". Is there anyway possible that mpm is
          still being started at bootup? <br>
        </div>
        <div><br>
        </div>
      </div>
      <div id="yahoo_quoted_4922596405" class="yahoo_quoted">
        <div style="font-family:'Helvetica Neue', Helvetica, Arial,
          sans-serif;font-size:13px;color:#26282a;">
          <div> On<br>
          </div>
        </div>
      </div>
    </blockquote>
    What does<br>
    <br>
    ps |grep usrp<br>
    <br>
    Yield?<br>
    <br>
    <br>
  </body>
</html>

--------------EF1F49C1338A6F3BC3218809--

--===============3764361725300674095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3764361725300674095==--
