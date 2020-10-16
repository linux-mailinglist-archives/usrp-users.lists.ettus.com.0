Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFC72909ED
	for <lists+usrp-users@lfdr.de>; Fri, 16 Oct 2020 18:47:25 +0200 (CEST)
Received: from [::1] (port=51480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kTSt0-0002xB-R6; Fri, 16 Oct 2020 12:47:22 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:41624)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kTSsx-0002rV-2P
 for USRP-users@lists.ettus.com; Fri, 16 Oct 2020 12:47:19 -0400
Received: by mail-qk1-f172.google.com with SMTP id b69so2410828qkg.8
 for <USRP-users@lists.ettus.com>; Fri, 16 Oct 2020 09:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=FTrvPYi/3Vt3EGFBDlYRsG07c4k/cKqiivJ0cyBBEDk=;
 b=Cu8hj9daKu4FNxZG2cOjerqEbI1mrcx+FCzRQ3h6BKgR0sNaEm+LkrkD7I+bkwSVrl
 W/HJmijz5/dQoMpHrlFW+NosstX9l/5Hav0Lb+VDcHQjgozBURnOWAqqTtdHT32r+nBJ
 77/HoZ/dKEFWZw3m/m9n1zrvgSX5TFeZKX7zE6uy/9wTNEl8y0r7hL4lGm64o9Mx9H9m
 jNdPpKC7RDNsZ5M4OeFbdb3J1r1J0kI7MHwL8h14OrDlxywzbOrOwZgi4r7zL8y9oyNd
 Dj/HYcdkLCrVWQdLVGTHCn/Sw8B6Nd3cK+dGiM6u1Q9hZ34ah/d6OrA9qYAlYBQi4e2n
 oC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=FTrvPYi/3Vt3EGFBDlYRsG07c4k/cKqiivJ0cyBBEDk=;
 b=khZnnF4K27t9je8WV3YJZW9sJrNOBMnNqlV5BhmefApeuj3xmeQZl8cKXJzWhULksb
 YnEGn8umD0DGORX0mCQFET92+EfS+RwgMUCLbXpJFSgOB3g4DRt5zF/S42h6BWmI9XEb
 TXv23NXBGqxJr2Hiqi2MEsypXAgzIZPAeRgznJp8U3pJfpULi8K1znip7qWSgYXfCKvd
 psnu/kAfOGw++sOCxushpIB5dMIO4AMmGg3oCcm+0YpYVwKAK8Z9MN/dNWkSHTotX+0l
 pc7lk8fBMlSZjPHL3snefGdTdVUBFcMwBL85GesPq9LRt5dsDURHqFu1FcrrKa7BRpT8
 CgzA==
X-Gm-Message-State: AOAM5326FpyWgwc+RN2GZCDKDRnbAAIRoFWCh41ZSVimy6zxfX27Xvpd
 Ym2ljgwtX3XoMFqA6LzrT6XmYnj6uAJbTw==
X-Google-Smtp-Source: ABdhPJyPo5Oh4kdDpLdUGN3iso6i6TaL8UioqNah7gX/SxVnqf4NZBLiewQlY8ggT5AwMOQ2+UnvTg==
X-Received: by 2002:a05:620a:677:: with SMTP id
 a23mr4421522qkh.428.1602866798387; 
 Fri, 16 Oct 2020 09:46:38 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.googlemail.com with ESMTPSA id x5sm1065487qkf.44.2020.10.16.09.46.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Oct 2020 09:46:37 -0700 (PDT)
Message-ID: <5F89CE6C.4050903@gmail.com>
Date: Fri, 16 Oct 2020 12:46:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: james Thomas <james_ttfun@hotmail.com>, 
 "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <HK0PR03MB50912828D2A5D7837C4F31F89D330@HK0PR03MB5091.apcprd03.prod.outlook.com>,
 <5F741327.5030501@gmail.com>
 <SYAPR01MB28487ADC6FC52070151510CA9D030@SYAPR01MB2848.ausprd01.prod.outlook.com>
In-Reply-To: <SYAPR01MB28487ADC6FC52070151510CA9D030@SYAPR01MB2848.ausprd01.prod.outlook.com>
Subject: Re: [USRP-users] How to build N310 file system image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============7733025522363141632=="
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
--===============7733025522363141632==
Content-Type: multipart/alternative;
 boundary="------------000506060608010309070103"

This is a multi-part message in MIME format.
--------------000506060608010309070103
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/16/2020 03:51 AM, james Thomas wrote:
> Hi Marcus,
> is there more document of how to build this source?
> ------------------------------------------------------------------------
>
If you visit the repository web-page, there's information there about 
building images.



--------------000506060608010309070103
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/16/2020 03:51 AM, james Thomas
      wrote:<br>
    </div>
    <blockquote
cite="mid:SYAPR01MB28487ADC6FC52070151510CA9D030@SYAPR01MB2848.ausprd01.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi Marcus,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        is there more document of how to build this source?<br>
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1"><br>
    </blockquote>
    If you visit the repository web-page, there's information there
    about building images.<br>
    <br>
    <br>
  </body>
</html>

--------------000506060608010309070103--


--===============7733025522363141632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7733025522363141632==--

