Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5255A491E1
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 23:01:11 +0200 (CEST)
Received: from [::1] (port=53048 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcykY-0002np-BA; Mon, 17 Jun 2019 17:01:10 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:36649)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hcykT-0002f7-Vl
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 17:01:06 -0400
Received: by mail-qk1-f173.google.com with SMTP id g18so7156300qkl.3
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 14:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=p7P4PmzGJlT0hjdxppq6F9mza2P7qoMygItPWgmQq9c=;
 b=J9Kp89cOh9XW75H/4EGkwlCJDZQr0mn5hMucWFE8dxvFbEqjbN1AEI+w0eDZcDgXNd
 9RTwLUg9leHRlQizd48jAq1QVIiqV2Y7vzRwZl/XQL34qQSX9li8qufUXTdr7Sx1TIkT
 FI2IjYFx+uDKBGRWC2LbY82yPOJsAVNVdnSineUcpfQIEvjtGB2pnqmFywXvSt8wwD6o
 /hv2nhjpixIBa1uh0vfUPOZWMpZRdowJ2jE1wcp7SQZKs+OI5QbiBrJTjqaXZnK1XIIJ
 VXS9im+SlGnU4ObgyEYo3V0f9DCmDzmQ1H9Ky7vEw/SRTnoPx2F0Fb3V2OJu2D+LYGyD
 xXGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=p7P4PmzGJlT0hjdxppq6F9mza2P7qoMygItPWgmQq9c=;
 b=mroNQcCG6WLFxOHK8g+uGnyp7ZMPaHHeBEnHThO+/IoUUZYcHjNgHgvMnD4tvTGMEo
 I3/sqChvEjtOEV5n6hYQIEDm/HAU9fSVOLSmu5wFV/PdKxl2U6Ywk+e/aWg30cOAVbcz
 OAkXLdc/7mMh3SNlgEV2hkDOSH/vHeIq/Zj0IFxZ7p1jySFqMWezyTynborlmHBBy7M5
 ln3A2H2Y8uLR5YiHfQl22a6kywsjdRFLegzw9hNFczPUCzkP4a1VHRAjSwolxY7ZJSEj
 zx1j/QwGIV1HUxnbjXC9hy8chFD4LsYeGPMirhwDJvL1e6s3XiI9QdHu7mCJF7asKaXi
 wWIA==
X-Gm-Message-State: APjAAAUvR21Wp9ip/KTqMK9QIRIxw5QY1VaSXP8LWfiCGDhG2oxF030l
 0CDiyAXU/IWSsluJuyEdN11CJpHr
X-Google-Smtp-Source: APXvYqxmrwVBRgB26EeiST35P4fH5rIhwvq64J67dPTbRoH9jqSHNJKPlAA4I41dcjy2aoRxjb+gZA==
X-Received: by 2002:a37:ad0f:: with SMTP id f15mr92435993qkm.68.1560805225450; 
 Mon, 17 Jun 2019 14:00:25 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id d31sm9161518qta.39.2019.06.17.14.00.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 14:00:25 -0700 (PDT)
Message-ID: <5D07FF68.9080804@gmail.com>
Date: Mon, 17 Jun 2019 17:00:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
In-Reply-To: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
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

On 06/17/2019 04:52 PM, Donnie C via USRP-users wrote:
> Hello,
>
> I'm currently trying to get the E310 to boot with the most recent 
> image release ( 
> http://files.ettus.com/e3xx_images/e3xx-release-4/ettus-e3xx-sg1/sdimage-gnuradio-demo.direct.xz 
> ) which I burned onto an microSD card using bitmap, but I cannot 
> serial connect into it and the device has all the antennae LEDs on. I 
> cannot find what the LEDs mean or why the E310 wont boot
>
>
I'm going to guess that either something went wrong when you burned the 
card image, or you're using the wrong image--make sure it matches
   the speed-grade of the hardware.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
