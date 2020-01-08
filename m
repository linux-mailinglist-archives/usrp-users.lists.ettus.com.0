Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3FE134DDD
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 21:47:51 +0100 (CET)
Received: from [::1] (port=38582 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipIF4-0003VS-Et; Wed, 08 Jan 2020 15:47:50 -0500
Received: from mail-il1-f171.google.com ([209.85.166.171]:35151)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ipIF1-0003ND-AS
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 15:47:47 -0500
Received: by mail-il1-f171.google.com with SMTP id g12so3849686ild.2
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 12:47:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=rNBjZncbkLMIfKVJgDQpjZM1orZGVYri1dljiKN3WWQ=;
 b=iuxYbYhehqQjuxveRBP7qsjMlSA7Me4K+zcN4Rlvi6llArvyxD2LwxDd3J2gukBiso
 EYeKrTULlBPJncxbGG9vnblCKOWyr/iZsIM06tttsztJWDR3oTRcQIKFu6HhUflQuSha
 a5bhreavCZ9zWRh77IqpZQoo8nc55RusIuX0FBq5uW2yroAm8ZX5gVccL6NJGZNAksXQ
 tYzBA3T1peJYmkvqZ5ycLSLmBpCzuuxasaQy0FYfyXOkN6B3XtuDGPZtweN1fsqnL2Th
 GAyaSRerxBGEQ6q28bo3PHrocX3BE1IHjZHVYerD8pxtTbHLr5AJXLfWcb9iQF+Qq7PR
 5rvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=rNBjZncbkLMIfKVJgDQpjZM1orZGVYri1dljiKN3WWQ=;
 b=Rs1OFqcCUegXK+v+0gYPQquAEHPHaIpCtr8sQSOOnaMmCA1niA8JZ/NVv+mU7JBxcY
 GlrWNF83n5Ma44lRZ/0V+e3K/75AVYYqtXeBjNCcvT3aRhx6OEWw8F9MY8uBP1xo8sZ3
 7JOlxzu8S0BfIciUlrIwd5c3r33OwRdIEQRqfyKDbgfRpR3/IAEEvpzT1ruwJD3Qsjnu
 e0Kjsvi1+fSo9V0WfgP8jyvGXfXTUQo18lm2wOXWtohnU7xiIw//jWSmBay3c4JYr5Kv
 2WN5vbLkFbnwt5IkTvcVHDM954VhAkhDoKLrUDC2H+e3Y4XlFgxufLqQWPURCCDCoZdv
 pLZA==
X-Gm-Message-State: APjAAAWQJXtjzF1VyN3mUXreskHuWsZ8mAJM0a4WRXD1nYxEiyW6OvLh
 ssrY9q0Y2gNNhiRnfzxm4s6NuoSVX7o=
X-Google-Smtp-Source: APXvYqw/gTkDqligBRpW2teP7Rv11ohnkoj09GXYzqGWS1L+bQLhB8yCPEwSUBp95hrDfKLYdDOrcw==
X-Received: by 2002:a92:8c54:: with SMTP id o81mr5565055ild.163.1578516426484; 
 Wed, 08 Jan 2020 12:47:06 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id n17sm1266571ile.68.2020.01.08.12.47.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 12:47:05 -0800 (PST)
Message-ID: <5E163FC9.4000802@gmail.com>
Date: Wed, 08 Jan 2020 15:47:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: voonna santosh <santu_voonna@yahoo.com>
References: <1258262887.8487449.1578490158766@mail.yahoo.com>
 <12EB7A0E-F5F7-4FC8-A6CD-92A42E52F6B0@gmail.com>
 <900064020.8665629.1578507448504@mail.yahoo.com> <5E163E65.70104@gmail.com>
 <1693583403.8730630.1578516321483@mail.yahoo.com>
In-Reply-To: <1693583403.8730630.1578516321483@mail.yahoo.com>
Subject: Re: [USRP-users] tx_samples_from_file : Issue with repeat option
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0270438958520369333=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============0270438958520369333==
Content-Type: multipart/alternative;
 boundary="------------080709090806000104010203"

This is a multi-part message in MIME format.
--------------080709090806000104010203
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/08/2020 03:45 PM, voonna santosh wrote:
> Hi Marcus,
>   Which version would you suggest? Also can you please confirm whether 
> it would work on 3.10.1.0 ?
> BR,
> Santosh
>
>
It should work, but my recollection is that there are issues with TX for 
X300 that have been fixed since 3.10.1.0.

Something recent, like 3.14.1.1  should be tried.



--------------080709090806000104010203
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 01/08/2020 03:45 PM, voonna santosh
      wrote:<br>
    </div>
    <blockquote
      cite="mid:1693583403.8730630.1578516321483@mail.yahoo.com"
      type="cite">
      <div class="ydp27ebd4ceyahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">Hi Marcus,</div>
        <div dir="ltr" data-setdir="false">  Which version would you
          suggest? Also can you please confirm whether it would work on
          3.10.1.0 ?</div>
        <div dir="ltr" data-setdir="false">BR,</div>
        <div dir="ltr" data-setdir="false">Santosh<br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
    </blockquote>
    It should work, but my recollection is that there are issues with TX
    for X300 that have been fixed since 3.10.1.0.<br>
    <br>
    Something recent, like 3.14.1.1  should be tried.<br>
    <br>
    <br>
  </body>
</html>

--------------080709090806000104010203--


--===============0270438958520369333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0270438958520369333==--

