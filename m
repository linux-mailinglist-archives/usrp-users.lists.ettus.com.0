Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E514CFEB6
	for <lists+usrp-users@lfdr.de>; Tue,  8 Oct 2019 18:15:27 +0200 (CEST)
Received: from [::1] (port=38618 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHs8x-0005ew-2j; Tue, 08 Oct 2019 12:15:23 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:34947)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iHs8u-0005X9-25
 for usrp-users@lists.ettus.com; Tue, 08 Oct 2019 12:15:20 -0400
Received: by mail-qk1-f170.google.com with SMTP id w2so17315351qkf.2
 for <usrp-users@lists.ettus.com>; Tue, 08 Oct 2019 09:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=UY19EgUig4ZDBbmin7BrWT5oShO7WV/Xcoew5FYONXY=;
 b=qt5WvNo2IOzQkDl5bNXjQVzijw72Zu5GlwKsakIwavsx+Fi78a8v6MeVAO+gO6hAWp
 WQ+NVjtFVTrytnzVw569NfGbKHt/tVkr4hKvrCn0IfXv5rTIaWqfLodIzWKdTENN9P3/
 2SraUAXMZVpFkndIr5agcFh+qxwkQYBhq0XcUTSJvWuTuYz0oXaDwoFylUAg//3a+QK6
 FkWkobBS+IJzLBmeUbHZ01WbjK65XrG50BVnh/drfmdmmhZuIs047zJamnwln4FwhPhq
 j9LjjiBq7emdZh/PvRULf5Ms8jZfs+TZIYG+4cIGs0ejrJRlk8sNeQiZX5kgCmE/HiZf
 lSZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=UY19EgUig4ZDBbmin7BrWT5oShO7WV/Xcoew5FYONXY=;
 b=EFEyOGpsnksgAVxIkyerQl9Q/86H+W+YVC+InO49aGHFZMKkaWHrqYMExAuwl6MQr8
 ZYzRYS8VcJ9OvdDUWqmvkSR/dSc/5ZmE1BKXlmshsAqj8geP9X+WCpfF1iPOgkrWXnwt
 DbypK2tae35a1GCusQUzkWxAP8t0t5CiXzX0F6C4aC7xVLv83gVIx4luJ5WtuWIZOFMs
 PhiqO9glFaXlUpPrmJvADGM4z9B/EAc3b2iZsNz+GbaM5PLOhzKbKzYoASTqNM0I9itI
 uJwmWA4dJ2oj6RidhpzdMtehiLR536eki/ABd71456gxv1K7WkqoGEdr5y4FpkIfurPZ
 lU4A==
X-Gm-Message-State: APjAAAXx3GsIow9KqSmM2jzbD5vFr2mzsVQb1A8IVhyh6r/c2f246g4b
 /HAKLVVhMVRH9DFbuYApqrSA5OHJAI8=
X-Google-Smtp-Source: APXvYqySWio67URrEcWf4/7038Yviny9TJgLBGkNbLJ6fqwV5/NzWvVN6gTJVrylaioFRgGkWiWfeA==
X-Received: by 2002:a37:6554:: with SMTP id z81mr12744108qkb.107.1570551279170; 
 Tue, 08 Oct 2019 09:14:39 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id c26sm13227402qtk.93.2019.10.08.09.14.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 08 Oct 2019 09:14:38 -0700 (PDT)
Message-ID: <5D9CB5ED.6050909@gmail.com>
Date: Tue, 08 Oct 2019 12:14:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.49.1569945602.10837.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQFykWcec6GXO7h5m_TEo3D2gxYPAQaHDq_ULjqGxiMOGQ@mail.gmail.com>
In-Reply-To: <CALSxwQFykWcec6GXO7h5m_TEo3D2gxYPAQaHDq_ULjqGxiMOGQ@mail.gmail.com>
Subject: Re: [USRP-users] USRP-users Digest, Vol 110, Issue 1
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

On 10/08/2019 09:01 AM, Simona Sibio via USRP-users wrote:
> Hi everyone,
>
> I am writing to you regarding Synchronization and MIMO capabilities 
> with USRP Devices.
> I am using two N200s with UBX-40.
> I would like to implement the same example in GNU radio that there is 
> in the following link:
> https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Devices 
>
>
> I would like to calibrate the phase using the phase shift module.
> But, I did not find this module in GNU radio WX widgets.
> Could you help me?
> Thank you for your time.
> Sorry for the previous email, but I had not added every mail address.
> Best Regards,
>
One wouldn't expect there to be a "phase shift" module among the WX 
widgets, since those are just graphical controls that
   don't do any signal processing.

You can effect a phase-shift with the multiply-const block, where the 
constant is:

complex(math.cos(shift-in-radians),math.sin(shift-in-radians))

Just tie that to the variable created by a 'slider' widget or similar

I'd also like to add that Gnu Radio-centric questions belong on the 
discuss-gnuradio mailing list.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
