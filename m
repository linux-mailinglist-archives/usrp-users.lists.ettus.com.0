Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92ABB28C3E3
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 23:18:51 +0200 (CEST)
Received: from [::1] (port=38446 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kS5DW-0000NK-LB; Mon, 12 Oct 2020 17:18:50 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:39675)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kS5DT-0000GF-1M
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 17:18:47 -0400
Received: by mail-qk1-f177.google.com with SMTP id k9so4724999qki.6
 for <usrp-users@lists.ettus.com>; Mon, 12 Oct 2020 14:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=lkuDiVFWD7lA9ga85rVHMU/uw6f3ekZE2HZux+VdjzQ=;
 b=jRNsEIGZDrpNfy8paEfc7mVfzvn41JRtWz8FmaPFo7UpxgsMmaMuEeRh0MmH8ykuvw
 JJb9o5kGWVg+OM8mON+zMCpyxtSUUlq6NXDAgIG23Z6obTibJrDocVZeHgMn7xhhrpOL
 RQ8d2xZEV7BBx55XGVhpn6n3jaF0FiSnK+IZMHo4ZHuB01O4NGWK9btqFeLXSFbZDCDV
 qLXJYHVADd93QdlGmvDikf34rj1Zd1u8jySHd5GXUD0mZc2EWRTDDvGQ46B1m93QJiMV
 /C86VN0tU4UYPrQMrliKuG5LmWBeIikd+MOYvS2+UJWeY86tExDDarA66yt6VSQOLjCP
 p5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=lkuDiVFWD7lA9ga85rVHMU/uw6f3ekZE2HZux+VdjzQ=;
 b=ttSx9qc8WNsWymCISr4EPwOet4DusnoEk7hR0sSw3LlRrPZqC1DruQoE3b1FUu72iD
 VNZDetOF79Y9U46RkYyfDdwqsd5vCUPfU07t7+GHkNnhbnnjLPqdEHoYjXF3yaBJ86yK
 oGV+r5Csh8SWOq4SIom3gOg/bXpg1W7DpO+JsGkxiBOXTFa2jS9atF26WN2KG33xqhLp
 WRxgI+OlnyPpmV+UgE0NHBHkOYWBpqOtLdKs8+TM8vkC0F/NSPnRvaDp0s/1YvzTlAR+
 jzzrk2tPG0RvEV4rp3SigtoUuOspX41uTK3g2EQIgczQNt2VxX96tOdoH5MK6LOP6pQD
 BgsA==
X-Gm-Message-State: AOAM531paurknCzwx6nHSYgR5VJWwqlsqhInGYKG24nNfQ1Xr36bPqZR
 V1h6QQ2hI2XKssENGxkQyKu+pDhzzEh5Aw==
X-Google-Smtp-Source: ABdhPJwwgYQDN/GdQrKJGxlcyn8ilnKMkm49Oes+cIZLx0CY3upec/FpqxQC71RZ0HN0J/tK3aAfCQ==
X-Received: by 2002:a05:620a:849:: with SMTP id
 u9mr10780460qku.419.1602537485336; 
 Mon, 12 Oct 2020 14:18:05 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id m18sm13464549qkg.77.2020.10.12.14.18.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Oct 2020 14:18:04 -0700 (PDT)
Message-ID: <5F84C80B.2090107@gmail.com>
Date: Mon, 12 Oct 2020 17:18:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAD-eGGpzQLh5vP3NKpMPmyydJZqX1AkLCEqaK5d6D3CvP_D6yg@mail.gmail.com>
In-Reply-To: <CAD-eGGpzQLh5vP3NKpMPmyydJZqX1AkLCEqaK5d6D3CvP_D6yg@mail.gmail.com>
Subject: Re: [USRP-users] Chip rate and sampling rate.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 10/12/2020 05:12 PM, AKINYELE ITAMAKINDE via USRP-users wrote:
> Is chip rate same as sample rate? Is there any relationship between 
> chip rate and symbol rate? Lastly, how can one arrive at actually usrp 
> transmitter power when transmitting LFSR sequence. Thanks
>
This is MUCH more of a signals and signal processing question than a 
question specific to USRPs.  It would apply to any digital sampled
   radio architecture.

You'd probably be best served on a generic DSP mailing list than here.

Perhaps the right audience is in discuss-gnuradio




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
