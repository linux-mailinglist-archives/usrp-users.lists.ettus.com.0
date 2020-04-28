Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DE01BBD4D
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2020 14:17:58 +0200 (CEST)
Received: from [::1] (port=50332 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTPBU-0007FG-Pt; Tue, 28 Apr 2020 08:17:56 -0400
Received: from mail-wr1-f45.google.com ([209.85.221.45]:45149)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jTPBQ-00076h-P8
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 08:17:52 -0400
Received: by mail-wr1-f45.google.com with SMTP id t14so24353720wrw.12
 for <usrp-users@lists.ettus.com>; Tue, 28 Apr 2020 05:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=HL3tS3s9qRPW+wCo203z1wv/Sl9qUlYbL3MMHfxGX2Y=;
 b=H6E2WjekyL8kXSWZu5D2D85q/23jqWLTATUQ4uVV5AEzkcu/uj0bKRjgs/eYNy82Tx
 H/HDUJlcGogmPZl3PjqGemp8ApfcNFCmEGdf0z9QnrXjqrE2KvEJ2YudgqnKrvDkJCRu
 7XE+kCtVWUVBJRidmwr/YVKEupJbIzTusu68ohmd4n9DOdIgclpVLTpURqhwahM9gFnu
 PYOjuwUIjRBCS/1446qajwiyUtjoaol0UolLc9JZKCTzCfWQkzcu8TAOcpHWEpKv+Psd
 4uX9nk1KRx0azZ0btF/aOmNsD9ySn31CUY3Ji8u6eByKlxMzktuPNwOSDIeGId7hAAXV
 1L9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HL3tS3s9qRPW+wCo203z1wv/Sl9qUlYbL3MMHfxGX2Y=;
 b=KGYy9E24iK8DvOB1TGe+x3WGkFuGEA8FufyvMmToaR5CMhOVPO9C9cSLRVwi36I6yA
 k54+K8dqbpR62X2XMLTvY5xDM+09JcT85H8tt85krl+o6bWF6SteGD8rU571Y2ESFG7/
 OIGvdOjsY7240cC01GlnPceB3XzKp6O5VsbNFRMxcd/5jsxRckn/y/Qh1LigP7HFl7Jo
 F3JpZOYhFfqs2PPOhKat4qGWjoxyx3tFyIsJjAlQkvag51RGF71Rb01PyX5kazEOt46J
 h9uhYkYoaHNy7c2N8Swb2elZXISrQWWdwd9vPHEOWD2z8xznDQL0kCM9q8pW5Itjdrnf
 uqKQ==
X-Gm-Message-State: AGi0Pub9bvYcHoNeAFUkk2hLD9HdggNBTeL0Js93g75TP4v1gjYMWvYU
 e89GiOU1JBwZVAZj1uCqrB0i/N4vjEihFQ==
X-Google-Smtp-Source: APiQypKPbt9gts93NfhVxu7z0hOwoX2fQ6p1ri3Ye0pqw9j3o/YU8DIaVc7wPbralyrcmGc13Z+7xg==
X-Received: by 2002:adf:fd0a:: with SMTP id e10mr32280231wrr.160.1588076231551; 
 Tue, 28 Apr 2020 05:17:11 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id z8sm23943043wrr.40.2020.04.28.05.17.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Apr 2020 05:17:10 -0700 (PDT)
To: Philip Balister <philip@balister.org>, Joshua Monson <jmonson@isi.edu>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BLAPR16MB39050504D7428A8AEADD2250A7AF0@BLAPR16MB3905.namprd16.prod.outlook.com>
 <fa5ec475-71a0-f82c-2bbf-71355cc96d68@ettus.com>
 <157a69f9-5494-f0f2-befb-e4dfd22d46d6@balister.org>
Message-ID: <4c75832f-1cd8-3f44-8b25-1f5580636578@ettus.com>
Date: Tue, 28 Apr 2020 14:17:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <157a69f9-5494-f0f2-befb-e4dfd22d46d6@balister.org>
Content-Language: en-US
Subject: Re: [USRP-users] Remote Power Cycle of the E310/E312
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

To answer your question in my own words:

On 28.04.20 13:51, Philip Balister wrote:
> Is there a setting you can tweak to change this behavior?

is sneakily answered by:

>> Note that the software is a bit tight on space on the Attiny88 =96 so
>> maybe try to avoid integrating too many features without removing
>> anything ;)

not that I'm aware.

Basically, Attiny88's full after I=B2C, a driver for the bqXXXXX battery
controler, a driver for the LTCsometing power supply IC, power on
sequencing, battery sensing, and temperature control have been
implemented. Ettus put their engineer with the highest GA/ESTU
coefficient=B9 to it, so that it would fit to begin with

Best regards,
Marcus


=B9 German Anger per Embedded Strangeness Tolerance Unit

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
