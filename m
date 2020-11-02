Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 645AE2A2D67
	for <lists+usrp-users@lfdr.de>; Mon,  2 Nov 2020 15:53:23 +0100 (CET)
Received: from [::1] (port=40560 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kZbCy-0003e5-N2; Mon, 02 Nov 2020 09:53:20 -0500
Received: from mail-wr1-f43.google.com ([209.85.221.43]:45735)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1kZbCu-0003XV-Hn
 for USRP-users@lists.ettus.com; Mon, 02 Nov 2020 09:53:16 -0500
Received: by mail-wr1-f43.google.com with SMTP id a9so14914325wrg.12
 for <USRP-users@lists.ettus.com>; Mon, 02 Nov 2020 06:52:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=ZczzIh2l0m9BRNsMDyvcx5nlApk/Kx5jZK9z+ogr6PA=;
 b=seaF8Bjdj6ah8LnpfiLgsTK2k1omIfOK9Ew5au/8ArplBmYZbA/ghxtK5Sy+Rb8fZ5
 U6hXtDEB3jkbKAAfsIkvSimnkzWSD4qieNdpqrBFNUJ3lLs2n+MOCAAUsBgu4ZeFMgyW
 q5PsUlw5AN9volZ//vfFXQnJkeZJNiPi3Mvjo9hPY98vSog1F6OMQJ2fmuM/O5dAX+ou
 YOivfybQZAD9mQwZfiXZP4EuvMQssPQ7IqSIXd1537dC7nENPiBhUzpWLTS8b9SObwG4
 y7C3ciw/IDMkpg8CJrwRDHzu2NLSQBKAfao4LehABisnN5JFrxdZ0ybyp6BPFa8ZumJF
 g6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=ZczzIh2l0m9BRNsMDyvcx5nlApk/Kx5jZK9z+ogr6PA=;
 b=Uj8xoFZ+tnY2616m60M7Qpi2yRsjQ0sOnViTnJGTnnud36jtk3g9DlB0oOpOgYhQaa
 XHVqHHpoQTeZh4dFN3ER0cju6HWOodbp84UJDeMOWBc6mG1PrAR7dBLysfmtxJqMgkH6
 y9hNfc33bFNNXwx1SoHxRaT+6X/q6pNvp7RZ7oDmvDZLILYaZjvFmrhzsMpHrrJh6IgP
 U1Cg3aWQ3Xvra+aSIX0xPfbPI3+YtYY8ztWVRuzLykXMd5tfHQMIcGHRSS8b7Zhjnvy4
 bM/D2GQDPpUrDVUN1TCkzP8/upqTbXsxpPeWwd1rAxzqvePtalwKXYCHU942bX0MnGZH
 gYDA==
X-Gm-Message-State: AOAM531gxpAmEm6zoygFHQo+s7V4ULyOHNKnqPoxyMgkaFrhOmXFITp9
 mRtsQV7R+tJd2G6417Upkf7YpX8HHSOcfyem
X-Google-Smtp-Source: ABdhPJxO4pmKMHrlMMVAUB1khkBFwJN9qGi1xZXpjoFGgVUpDvswguh62lEXMIDnE54xGj1lU5CFOg==
X-Received: by 2002:adf:f4ca:: with SMTP id h10mr20112268wrp.89.1604328755291; 
 Mon, 02 Nov 2020 06:52:35 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id y4sm22293736wrp.74.2020.11.02.06.52.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Nov 2020 06:52:34 -0800 (PST)
To: ALAIN.JOYAL@forces.gc.ca, USRP-users@lists.ettus.com
References: <b6148bdffe2f484ca10dcf50791e5799@forces.gc.ca>
Message-ID: <eb361645-268d-bf4b-06bb-7d5e9b94bb2a@ettus.com>
Date: Mon, 2 Nov 2020 15:52:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <b6148bdffe2f484ca10dcf50791e5799@forces.gc.ca>
Content-Language: en-US
Subject: Re: [USRP-users] Unsubscribe
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

Hi!

a) please do tell your administation that this happens to you. Often,
closed tickets are a currency in which improvement is measured, and
honestly, I don't see why it's you spending time working around that to
open an obviously non-malicious link on a PC on which you're allowed to
read and send email.
b) in absence of success in spending your administrator's time instead
of yours:
It's rather simple to self-serve this mailing list via an Email service
bot. Send an email with nothing but the subject line "unsubscribe" to
usrp-users-request@lists.ettus.com
You'll get an email asking you to confirm by replying with a special
message.

Best regards,
Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.  If our understanding is incorrect, please=
 notify us immediately because a specific authorization may be required fro=
m the U.S. Commerce Department before the transaction may proceed further.

On 02.11.20 14:23, Alain Joyal via USRP-users wrote:
>
> Please remove email address alain.joyal@forces.gc.ca
> <mailto:alain.joyal@forces.gc.ca> from the distribution list.=A0 Any
> incoming links to do so are blocked by our email manager.
>
> =A0
>
> Thanks,
>
> Alain Joyal
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
