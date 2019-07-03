Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B0B5E93D
	for <lists+usrp-users@lfdr.de>; Wed,  3 Jul 2019 18:35:50 +0200 (CEST)
Received: from [::1] (port=45114 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hiiEX-0005z6-FA; Wed, 03 Jul 2019 12:35:49 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:38590)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hiiES-0005ls-PZ
 for usrp-users@lists.ettus.com; Wed, 03 Jul 2019 12:35:44 -0400
Received: by mail-qk1-f174.google.com with SMTP id a27so3272535qkk.5
 for <usrp-users@lists.ettus.com>; Wed, 03 Jul 2019 09:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=OwgUGW2DINmbdMzYCuxl6NDTyn97cHEOJyqQUrkQQ70=;
 b=Ds4TICu98OfMYL1nBepbqRrttWPYbhe4QGg4crUtC+s/DJsR2Uha2abcGfyem5U7h+
 w0MyjblBDV3GintGHwlYQ/SJtdRYTC1MkBJJJURFM/hrK5OESX8qJ98WlQqE9+c2jBlh
 zfK+0fKeQJscs1++lPJsp91kvRcTxDHYgLcf2iyY9PzvwkDTCZdFQ12upMN6yqrW1NQF
 pHCgsHiEdOkS3SbRJZ1EFIXH+y5v+eqXnYUQ2S2PHwX/Cn4wOT/oy6DCnSLQlb1h4oWM
 tJYwpIcZ7cORoY3/83ImYTz88ITq2y11o6YXKhnl8KxRcDxY8OyqZgXzsjicPv1N5pNs
 4lpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=OwgUGW2DINmbdMzYCuxl6NDTyn97cHEOJyqQUrkQQ70=;
 b=Nm9AK7+6V5Gde19KSVfyDDpPopjRU6HuzTDS1KNtOhbci0iPAkHZQa960Gr1VrE0fY
 kX1FrZUSo7uW4gs9Lg4Whu3/v7019XjCt5xRGgzr4ted0QSdQ5RnKYUwPLENdCNw8sqE
 kcxr52tMD7Lj2ET6y+rLsnwNNt7MrN5J5W0aY5k9j8ohAVIdyczjPmrzQP6Ax0fQLBtT
 NdB4VBqiuSa99xkbX8VB2ZhSbcgFruQU4a7vQDqe5Ujawl7PjZ4pjUzZFk1cL/Ae0/56
 05hza+xO7yQnMI6ETEIolXj6gCJyDY9pXQNr7xvq6s/mH8C9lU+xhZGZaXASeYyJK+GA
 PKXg==
X-Gm-Message-State: APjAAAVb4ZffrMKB3g4Rw3JtREqCHXz7S7nZngkKLYuaPoKcj0zZS/39
 NMPb35FtJiO3See1ZV2veShMvm0q
X-Google-Smtp-Source: APXvYqyTYxYltlTAaYnC8Ni9zOyGZrMirn3cPwCwsQzFE+FflbANwt9Pvr5MDjxgoHFbsKFl8qNIBg==
X-Received: by 2002:a37:9042:: with SMTP id s63mr30802831qkd.344.1562171704018; 
 Wed, 03 Jul 2019 09:35:04 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id u7sm1269580qta.82.2019.07.03.09.35.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 09:35:03 -0700 (PDT)
Message-ID: <5D1CD936.6090503@gmail.com>
Date: Wed, 03 Jul 2019 12:35:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1562171506188.95247@av.it.pt>
In-Reply-To: <1562171506188.95247@av.it.pt>
Subject: Re: [USRP-users] Full-duplex issues
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
Content-Type: multipart/mixed; boundary="===============0731628270924610942=="
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
--===============0731628270924610942==
Content-Type: multipart/alternative;
 boundary="------------000105000302060606060408"

This is a multi-part message in MIME format.
--------------000105000302060606060408
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/03/2019 12:31 PM, Diogo Botelho Ribeiro Marinho via USRP-users wrote:
>
> Hello All,
>
>
> After finished the full installation of UHD in the Host and the USRP 
> N310 i used the gnu-radio blocks UHD:source /sink to produce 
> full-duplex in the 4 TX/RX however the message "L"(that means late 
> command on TX). To solve this problem I installed the RFnoC blocks and 
> develop some Gnu-radio examples without success.
>
>
> Can you please provide some examples or any idea to solve this problem?
>
>
> Note: the testbench works fine with full duplex and high sample rate...
>
>
> Thank you in advanced
>
> Diogo Marinho
>
>
For problems like this, including the actual flow-graph is really really 
helpful in helping people try to help you.




--------------000105000302060606060408
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/03/2019 12:31 PM, Diogo Botelho
      Ribeiro Marinho via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:1562171506188.95247@av.it.pt" type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none"><!--P{margin-top:0;margin-bottom:0;} --></style>
      <p>Hello All, </p>
      <p><br>
      </p>
      <p>After finished the full installation of UHD in the Host and the
        USRP N310 i used the gnu-radio blocks UHD:source /sink to
        produce full-duplex in the 4 TX/RX however the message "L"(that
        means late command on TX). To solve this problem I installed the
        RFnoC blocks and develop some Gnu-radio examples without
        success.</p>
      <p><br>
      </p>
      <p>Can you please provide some examples or any idea to solve this
        problem?</p>
      <p><br>
      </p>
      <p>Note: the testbench works fine with full duplex and high sample
        rate...</p>
      <p><br>
      </p>
      <p>Thank you in advanced<br>
      </p>
      <p>Diogo Marinho<br>
      </p>
      <br>
    </blockquote>
    For problems like this, including the actual flow-graph is really
    really helpful in helping people try to help you.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------000105000302060606060408--


--===============0731628270924610942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0731628270924610942==--

