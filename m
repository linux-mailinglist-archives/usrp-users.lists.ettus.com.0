Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A18D21ED47
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jul 2020 11:54:17 +0200 (CEST)
Received: from [::1] (port=47928 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvHdd-00078H-Vy; Tue, 14 Jul 2020 05:54:13 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:34302)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jvHdZ-0006zj-CW
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 05:54:09 -0400
Received: by mail-ed1-f54.google.com with SMTP id a8so16409776edy.1
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 02:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=ZTIkYn3nbk30+/qXyJ2GDnJXEtTBPLmrao4guUW3eTI=;
 b=OZyIMINifHRwZvSX7dURFeFHyX9Dv/sfowb1FIarHaqeDO5ll+P57+wUYp4sY0K4YB
 koki42+cPDPdHOt4DQH+tPiupP0WZcd9njfLz9ShL8XlKkwbbeVoXTfuD6UqaiANtTY4
 m7mErJ7I73ZLLFr9S7V9iYtadDauPi8NT8AS8uTNWN7nzm8mM72m9ZKmeIY1GALZzwZp
 U3KplSER0yoTW9rNq9vDC08PbycLHQMcAuGROQnnx4o8XPoOQHnN3HRIIA7jz2yUXkEf
 s0fco0Ft9ev+6LQ/XSYwRiP43H2BOEj43N+EgDHlEuqZqYboNGiUJKcIJ+CnrazATjp0
 4hDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZTIkYn3nbk30+/qXyJ2GDnJXEtTBPLmrao4guUW3eTI=;
 b=liz5Iws50O5QMHW02YUsIV299CjwtFuByxuAquBL4sZH8FC2InqE/PtjGL4Yo14upW
 KwsQsEVLYdxWDa4Xi0perricXWM3oto0XB+WFZjivCqF+S3A70dhdmSEj7B7u3AHK7da
 25CvzdVf5k+FJvoqR+N2Q6UButffcSgxneuBLCxEH6iEYonaBn220yxhJRlL9yeI6H76
 XtQoKsSFk0PqcuQz43o3M92wDBKzembPNlYhJdinmVNOxkl7DRu5LM7FVDVbhQRmbDtq
 yT52G9i0AMO+mJDAiAOFGhcBVjEpnfJlPp78yjpFpbT684WCVoPdanGkjAgDYfHQtYM9
 1TpQ==
X-Gm-Message-State: AOAM531S2ujJMRLMOv5Tfj1lSkyk1e1BTbYfZ6xMtcNm5ECiNC9Df2Bw
 JbXg8XEa90XDR4FThFAZT1BDeB3V/7f4GA==
X-Google-Smtp-Source: ABdhPJxO2t+vspq1xo4W8+A6qscXzGxDByWnyk+Sv2XuCpd2yxLz6AQGR+JXbJ85/MdO7cXHKXJHxA==
X-Received: by 2002:aa7:c656:: with SMTP id z22mr3729709edr.101.1594720408082; 
 Tue, 14 Jul 2020 02:53:28 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id se16sm12129638ejb.93.2020.07.14.02.53.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 02:53:27 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CANzM3hxAfQDHM4xfJiWO9mdaRUbOP3c-+sksV85wgD=ZwzX6bw@mail.gmail.com>
Message-ID: <071c37d5-a9d9-1332-de7e-14c64660f329@ettus.com>
Date: Tue, 14 Jul 2020 11:53:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CANzM3hxAfQDHM4xfJiWO9mdaRUbOP3c-+sksV85wgD=ZwzX6bw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] USRP X310
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

SGkgQXJhc2gsCgpUaGUgaW5wdXQgcG93ZXIgaXMgbm90IGRlZmluZWQgYnkgdGhlIG1vdGhlcmJv
YXJkIChYMzEwKSB5b3UncmUgdXNpbmcsCmJ1dCBieSB0aGUgYW5hbG9nIGZyb250ZW5kIGRhdWdo
dGVyYm9hcmQgKGxpa2UgVHdpblJYLCBVQlgtMTYwLCBTQlgs4oCmKQp5b3UndmUgcGx1Z2dlZCBp
biB0byB0aGVzZS4KCk9uIDE0LjA3LjIwIDExOjM4LCBBcmFzaCBKYWZhcmkgdmlhIFVTUlAtdXNl
cnMgd3JvdGU6Cj4gTmF0aW9uYWwgSW5zdHJ1bWVudCBjb25ncmF0dWxhdGlvbiEhIHZlcnkgYmFk
IGRvY3VtZW50YXRpb24uCgrigKYKCkJlc3QgcmVnYXJkcywKTWFyY3VzIE3DvGxsZXIKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
