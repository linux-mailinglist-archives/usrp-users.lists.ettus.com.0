Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D80F60A9
	for <lists+usrp-users@lfdr.de>; Sat,  9 Nov 2019 18:26:45 +0100 (CET)
Received: from [::1] (port=47782 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iTUVW-0000CL-0c; Sat, 09 Nov 2019 12:26:42 -0500
Received: from mail-io1-f54.google.com ([209.85.166.54]:41200)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iTUVS-00006b-Oa
 for usrp-users@lists.ettus.com; Sat, 09 Nov 2019 12:26:38 -0500
Received: by mail-io1-f54.google.com with SMTP id r144so9756666iod.8
 for <usrp-users@lists.ettus.com>; Sat, 09 Nov 2019 09:26:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=DD/q4/d1ojoOtraYUOLyE7bbmpxelmGRDwrxpiUtdHo=;
 b=g2hU6Rd/XwWyEEnQpEILYtqwi1uiEEuqaeFK/pi/LonJFYOtl7vx3RRZEFtkiDejwb
 WMyKG81sELeHf5lf4c5KxiCsn2Vv3brMV03M+DjnAFXythHz649fB8XtxfjJHUdfPLK9
 8ZoiOumhV6bfweTW4LYvdGNc98km8zlvQ8aJcZkWuxRpMFtvqioo/KThOE5gPhe7MZii
 laI+idIvdini32hD+XXAjdFB8yJ95BZpvVr/YKoxuJK2JN03xcGrR4acH5owd3tQb8Sx
 1uiyRQd/AU8rvR8gWDkDCLj/UeTCnbVfZh/ialcsqRtYBa3THpLSB/2yQg83e9JEcbhs
 VX2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=DD/q4/d1ojoOtraYUOLyE7bbmpxelmGRDwrxpiUtdHo=;
 b=X/FoPQ5Q/RY5e67e2HflTRretoQu9T7Ne3jDlJ4UDzF4uQJ+5OMy5zrtTXyCqsivq8
 ikpdKeXasVidjc9znMjtqTZulTlsQcusBeuCTQecEnaSJXIVoBN1fFHqtlihLHz4FFZw
 3Sj6yg/999DuBQyE1Tl4RVsbgOqHSurXH2Kvq5gwwR8gxWjsiW6QujAwZU1mmc4JeRFD
 yhMVsihJQ+gaqUYKV7GMtfKAn4Qih5SY8MTsV3Ghs5g0CMfmZd/D940hndxj0zQpiM8i
 vgozrts08dwiLvgzDE2d9EIqO2f8xIsE+z90dEoVHIakQzi03BRH72lAnxdaaLniu6LL
 0SMw==
X-Gm-Message-State: APjAAAXgczxStcMUzgSKt5gpuhmss4RT1P8j8PQ0CrlTzLT0H4xf9+SO
 +1xj8k3STK3FbP6htTWpv97W2DWSlR8=
X-Google-Smtp-Source: APXvYqyoKYKkr6ieaNJ8b+Ep1upaVQQ3HNqmOYKaHRMQKf3pcRUArDNWFhuIxsa522d76woXaQW8BQ==
X-Received: by 2002:a6b:908a:: with SMTP id
 s132mr17137604iod.118.1573320357731; 
 Sat, 09 Nov 2019 09:25:57 -0800 (PST)
Received: from [192.168.2.62] (cksnon1659w-lp130-06-70-27-5-112.dsl.bell.ca.
 [70.27.5.112])
 by smtp.googlemail.com with ESMTPSA id a12sm698518iok.38.2019.11.09.09.25.56
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 09 Nov 2019 09:25:57 -0800 (PST)
Message-ID: <5DC6F6A4.1040700@gmail.com>
Date: Sat, 09 Nov 2019 12:25:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <978d5f24-1129-7f41-1a63-9e219b0f2fee@novagrid.com>
 <7c38aba6-135f-ac39-b826-d2710cde82a0@novagrid.com>
In-Reply-To: <7c38aba6-135f-ac39-b826-d2710cde82a0@novagrid.com>
Subject: Re: [USRP-users] TwinRx transfert function
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
Content-Type: multipart/mixed; boundary="===============2642204383793660858=="
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
--===============2642204383793660858==
Content-Type: multipart/alternative;
 boundary="------------060701030504040504040401"

This is a multi-part message in MIME format.
--------------060701030504040504040401
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2019 03:56 AM, Olivier Ravard via USRP-users wrote:
>
> Hello,
>
> Is there anyone to answer this question ? Did someone experience the 
> same 4dB fluctuations
> in the 80 MHz bandwidth for acquisitions with TwinRx ?
>
> thanks
>
>
I've sent a note on to Ettus R&D to do some tests.



--------------060701030504040504040401
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/08/2019 03:56 AM, Olivier Ravard
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:7c38aba6-135f-ac39-b826-d2710cde82a0@novagrid.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <p>Hello,</p>
      <p>Is there anyone to answer this question ? Did someone
        experience the same 4dB fluctuations<br>
        in the 80 MHz bandwidth for acquisitions with TwinRx ?</p>
      <p>thanks<br>
      </p>
      <br>
    </blockquote>
    I've sent a note on to Ettus R&amp;D to do some tests.<br>
    <br>
    <br>
  </body>
</html>

--------------060701030504040504040401--


--===============2642204383793660858==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2642204383793660858==--

