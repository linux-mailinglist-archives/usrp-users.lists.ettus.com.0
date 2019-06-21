Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABDE4EFF5
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jun 2019 22:19:15 +0200 (CEST)
Received: from [::1] (port=33230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1heQ0A-00073f-5R; Fri, 21 Jun 2019 16:19:14 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:32941)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1heQ06-0006sj-Qn
 for usrp-users@lists.ettus.com; Fri, 21 Jun 2019 16:19:10 -0400
Received: by mail-qt1-f180.google.com with SMTP id x2so8281872qtr.0
 for <usrp-users@lists.ettus.com>; Fri, 21 Jun 2019 13:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=/nfA3wekqzb7ctg0UEMqHGt345AhH/fPH4HFRzQplrk=;
 b=o6S/Gcs3N5l210YaXeJ5xXr8U5NpvtxiFDBx12kgKoFx93cd9K9m0F9sRImttj1yDV
 rlZcyGDJ7M20DhYZRY07ez68E+MnP585rFvtUbE81RUNu16uSO8Pq/p3OkqZ6e6cHo43
 4jCDmgoxwBzie6onV34SRkk4IVPDp8Pegwddgh7LA7r1lk/9frPtJjhmqkReGfLfotKA
 pGHlEaN3/L1oNlrko+0n75TjT2Qygfj7iS5f5PmyI+BzS/v9wzeYqSf2SVZzoaUzBsAV
 kJsnF1KiLRWdIuoKPVYEs5gZ3iWrVL6jgG3fkOhgUPpYLEFG7OxgskgJm6HPn9C/YDGF
 j96A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=/nfA3wekqzb7ctg0UEMqHGt345AhH/fPH4HFRzQplrk=;
 b=SXNIpWD8qFuwRUjmmkxXKa8zsUqXu8jbfRE/37ttg0oBhh3d4JrPogZqlOiQlfc+Nb
 4/qAlE4R6gIUlMLTMv0Im678MiaVLA5hnbzgIkhICUR0cY7r15oWSZgeSEhyDtYnZvvE
 I7aWxwhIDJSBJKOB4qTVKySmVs9t4UE2FEhaQ1oggkm6jeB6Ko73KdjRXgSo/dh8EON9
 ixAuk2L9DvPuKuepgkH9D3Pk/UT+8SY4Q4FNNHZSn86z+p3WcxgWDpAfYp/TP/VSPqhl
 q/Vjt4s75QJEZIdaUYT3VJX2PA+NW5s0ckS3epCaFJE8/fLclPwG7cqkrBNig3si/4jc
 vENg==
X-Gm-Message-State: APjAAAVuj/h0LsONWzuav2JbdfQ/aPisaqTrchkLxGYtkxNohuzla6F2
 w3LzSJp40ts9rU87UM2du+HXd2YU
X-Google-Smtp-Source: APXvYqwo+neyiTo/SLmNhQiDT0Di6o1QAoyYjzQSf8aB8xODzX/jrtS7tW2DhU1+lORW/1SKuF8YYA==
X-Received: by 2002:a0c:e6a2:: with SMTP id j2mr44110991qvn.190.1561148310317; 
 Fri, 21 Jun 2019 13:18:30 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id c45sm2091781qte.70.2019.06.21.13.18.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 13:18:29 -0700 (PDT)
Message-ID: <5D0D3B95.6070006@gmail.com>
Date: Fri, 21 Jun 2019 16:18:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CY4PR02MB264708D827A2DD842CE243F8AAE70@CY4PR02MB2647.namprd02.prod.outlook.com>
In-Reply-To: <CY4PR02MB264708D827A2DD842CE243F8AAE70@CY4PR02MB2647.namprd02.prod.outlook.com>
Subject: Re: [USRP-users] AGC in USRP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============0374803769349457182=="
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
--===============0374803769349457182==
Content-Type: multipart/alternative;
 boundary="------------030001070006050400060107"

This is a multi-part message in MIME format.
--------------030001070006050400060107
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/21/2019 03:43 PM, Jiang, Fengyang via USRP-users wrote:
> Hi,
>
> I'm using USRP to transmit and receive some signals. Can I use 
> correlation to compare the strength of received signals across 
> different experiments? Each time I will increase the distance between 
> the transmitter and the receiver by a little, and is there an AGC or 
> other modules which will affect the received data (for example, when 
> the signal is too weak, will it automaticaly adjust the gain)? I'm 
> using USRP N210, SBX daughterboards. Thank you for your help!
>
> Best,
> Fengyang
>
There is no AGC in that configuration, it stays at whatever gain setting 
you set.



--------------030001070006050400060107
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/21/2019 03:43 PM, Jiang, Fengyang
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CY4PR02MB264708D827A2DD842CE243F8AAE70@CY4PR02MB2647.namprd02.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I'm using USRP to transmit and receive some signals. Can I use
        correlation to compare the strength of received signals across
        different experiments? Each time I will increase the distance
        between the transmitter and the receiver by a little, and is
        there an AGC or other modules which will affect the received
        data (for example, when the signal is too weak, will it
        automaticaly adjust the gain)? I'm using USRP N210, SBX
        daughterboards. Thank you for your help!</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Best,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Fengyang</div>
      <br>
    </blockquote>
    There is no AGC in that configuration, it stays at whatever gain
    setting you set.<br>
    <br>
    <br>
  </body>
</html>

--------------030001070006050400060107--


--===============0374803769349457182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0374803769349457182==--

