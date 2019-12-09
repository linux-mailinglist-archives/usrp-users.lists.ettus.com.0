Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ED3117613
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 20:45:27 +0100 (CET)
Received: from [::1] (port=51480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieOyB-0004Z8-Vo; Mon, 09 Dec 2019 14:45:23 -0500
Received: from mail-qt1-f171.google.com ([209.85.160.171]:44391)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ieOy8-0004RK-Co
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 14:45:20 -0500
Received: by mail-qt1-f171.google.com with SMTP id g17so288573qtp.11
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 11:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=XpR139bfWG3q4qB0JENYC4LzheVl9NxxhZ/W4/+mmGk=;
 b=cVW4HU13r8G/HQGGWlc8cmATTsnuVrqHrrTvNnPENh58OvknoVaui9rh29tMTXBQ5C
 sXXC56lWqhjtj2tFlTgdn/PPvvG3gvAl9z7bBAKOl6SBCrVEVGICqjHFx+qsxM31IArC
 u4RHdrbhLOIRMHUdZYwv5O3/Pr64BDNoYgsBfEGvUBXH/kdEKyxfnN3CslAEe6/v0oGC
 5oqAW+W8w1ihu95Hsetf/FZFSq+CVtxVzcuNEAPco0VJZQmXaKqyBMlctSDbW0bCEN81
 YtaflPnpyYqu0//mmS59c5Iwr/Ljp1T+9MdkydASi6vR0upnjWVqqoUJq31KTNltUI7+
 zPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=XpR139bfWG3q4qB0JENYC4LzheVl9NxxhZ/W4/+mmGk=;
 b=Gh9ziKgOhMbC1iRLtUHjSheodct6GScD3r24f+bBZQRYf7RTaP2uum096j+vTK+x1s
 Q/YO7woHJCptVctVBGnAqyjq5oJrVXRYgaXBI2+RNROyb8AYACKuEcp/oy2nSUS/wifl
 lUL8lVu5FTZrUKD9037JuYUSylRjW+p78g12HTOuujQynQUt0/DV2dNIiOr6l95ZxElY
 XhmF9e6PpvqWmIs0q+ALDkh+L7969lJQkUtmbfgf2Ihpj94/u+bbxBYKlNBCxzw6NN5U
 DStioNIj/Xm/PLS84hAlURYXp72mw/42rY3ADbPvlXLxkGA7tod7LOGgozbMVUVC5I2z
 nwhQ==
X-Gm-Message-State: APjAAAWbBm4ISj05aQisnX4TXOEP8MkQiwzEzdTrlBXNkebDRq3x39o3
 MXkfCDJw9ruFIbMZmDqpRK/Y02M1
X-Google-Smtp-Source: APXvYqzyIvpSO5EIStxshlJI11Ayas7tIvIGK9lNk1nhIfQZw1z0wwVbXbr2XhNDGg2UsfD8quGqfQ==
X-Received: by 2002:aed:3c12:: with SMTP id t18mr1638575qte.140.1575920679576; 
 Mon, 09 Dec 2019 11:44:39 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id e2sm151720qkb.112.2019.12.09.11.44.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 11:44:39 -0800 (PST)
Message-ID: <5DEEA426.1020108@gmail.com>
Date: Mon, 09 Dec 2019 14:44:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
In-Reply-To: <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

On 12/09/2019 02:38 PM, Lukas Haase wrote:
>
> Precicely.
>
>> What frequencies are involved here?
> Example: Transmit 900 Mhz (USRP Sink).
> Receive 1800 MHz (USRP Source).
>
> The received signal will have arbitrary phase phi1.
To make sure we're on the same page, you're measuring the phase offset 
between the two RX channels, correct?


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
