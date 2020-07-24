Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FEE22CC33
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 19:29:48 +0200 (CEST)
Received: from [::1] (port=46248 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jz1Vz-0004Hz-Is; Fri, 24 Jul 2020 13:29:47 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:45521)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jz1Vw-0004Ar-58
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 13:29:44 -0400
Received: by mail-qt1-f182.google.com with SMTP id s23so7414087qtq.12
 for <usrp-users@lists.ettus.com>; Fri, 24 Jul 2020 10:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=+isj9X11QB1bn/WG7m0aYBrr/CZbWISKv4SrvoK3s9g=;
 b=Us5+XwwuXb0hV0forbPxD/csi+3TTYw+oFv7Xy4ecmxXtvYahar571/lwkpaa+64j4
 jCXYS3d4azuGRiZdf97bq1kaHqW3bE8DUpux1h0mlCNAdpc3MuX2P60GSr5vlWRbdHf1
 +auCTcBYebGzvdP3vu+hhvdKqnvI+IqCTLbZYIN4gHae0Ksptm1gxP+YZdP3bytFUkyU
 GK7S/OVSKljc+hiJpz25TQ8S8XVcMLOR6t/NcYqJKAzkXzuyf4y7Vaqw73yPTI9qd0NK
 7JyGK9jZsJ1Bknfg1uWd9hi2l4g3ySGg56MOvmJdcYIHymQPVT881Eq8p/Z/G3Ji9xnY
 yLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=+isj9X11QB1bn/WG7m0aYBrr/CZbWISKv4SrvoK3s9g=;
 b=LEZcCmS3HsWDVvZ3nmSD01tXEL6dxAS6fSGjP21DeDD3dAMpJMZdyPUTSQI72PrDh0
 WLxFMPkRClrcyHIphd1KOEAy29UDwqtOiPt72ti6kRpw5G1eurLuOtdH9vym5jJUizkN
 a4+O6c6B/OjXGiD05rCFLwKL1GGhpGCSHnm22Sozn7yDDZ2CXk5a28kos++fpgVX0xha
 MrTAeACIcwsbT2FCdgtgg3iwvWvSh7L2h0Q31y7CxH8xDqG36xJZ204OjewcjuwbnlbM
 /1Rl2tm/6NLVwu2z1T1HrP+ZQDZtb5ZE9Hf9Lvd4Sy3j5x0oHko2kYvG8sJBMpzqPWjP
 8L9A==
X-Gm-Message-State: AOAM531H0xjdRdJeBgHkPQuZfTR2gjbV+Ks7fszj8AIgkn56Gyhk/54k
 oQFnb2yEZ5aXDafxUDvgvq09AAZcv+M=
X-Google-Smtp-Source: ABdhPJwxxEX9ZG03IgHOEBNAwFMZcmSfwI3AQdDw8y+jPnQukdHvD09G7K3YeaFXEvs++eTvewPIcg==
X-Received: by 2002:ac8:6989:: with SMTP id o9mr10831889qtq.50.1595611743411; 
 Fri, 24 Jul 2020 10:29:03 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id o37sm2228166qte.9.2020.07.24.10.29.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jul 2020 10:29:03 -0700 (PDT)
Message-ID: <5F1B1A5E.4050000@gmail.com>
Date: Fri, 24 Jul 2020 13:29:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BM1PR01MB257714D4AD3404AE8779C8E990770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB257714D4AD3404AE8779C8E990770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] Error in grc but running on terminal
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
Content-Type: multipart/mixed; boundary="===============3247382175393581725=="
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
--===============3247382175393581725==
Content-Type: multipart/alternative;
 boundary="------------010506040606080003000109"

This is a multi-part message in MIME format.
--------------010506040606080003000109
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/24/2020 01:22 PM, Koyel Das (Vehere) via USRP-users wrote:
> Hi,
>
> I am using USRP 2955. I am using the code in c++ given in github to 
> acquire data. I don’t know data is correct or not but the green light 
> below one antenna is glowing. However, when I run a grc flowgraph I 
> get fpga image incompatibility error. Why this different behaviour 
> while running from terminal and while running using grc?
>
> Regards,
> Koyel
>
>
My guess is that your C++ code is linked against a version of UHD that 
is compatible with the FPGA, and your Gnu Radio environment is linked
   against some *other* version.

You haven't said *which* C++ code you're using, and given that GitHub 
hosts 10s-of-thousands of different applications and codebases, it's
   impossible for us to guess which you might be talking about. Please 
help us help you...


--------------010506040606080003000109
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/24/2020 01:22 PM, Koyel Das
      (Vehere) via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BM1PR01MB257714D4AD3404AE8779C8E990770@BM1PR01MB2577.INDPRD01.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <div dir="ltr">
        <div>
          <div>Hi,</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">I am using USRP 2955. I am using the code in
            c++ given in github to acquire data. I don’t know data is
            correct or not but the green light below one antenna is
            glowing. However, when I run a grc flowgraph I get fpga
            image incompatibility error. Why this different behaviour
            while running from terminal and while running using grc?</div>
          <div dir="ltr"><br>
          </div>
          <div dir="ltr">Regards,</div>
          <div dir="ltr">Koyel </div>
          <div><br>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    My guess is that your C++ code is linked against a version of UHD
    that is compatible with the FPGA, and your Gnu Radio environment is
    linked<br>
      against some *other* version.<br>
    <br>
    You haven't said *which* C++ code you're using, and given that
    GitHub hosts 10s-of-thousands of different applications and
    codebases, it's<br>
      impossible for us to guess which you might be talking about.
    Please help us help you...<br>
    <br>
  </body>
</html>

--------------010506040606080003000109--


--===============3247382175393581725==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3247382175393581725==--

